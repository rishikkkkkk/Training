# Helm Chart Structure

A Helm chart is a collection of files that define, configure, and deploy Kubernetes applications. Each file has a specific purpose in the chart.

## Chart.yaml

The `Chart.yaml` file contains metadata about the Helm chart, such as:

- Chart name
- Version
- Description
- Application version

Helm uses this file to identify and manage the chart.

---

## values.yaml

The `values.yaml` file stores configurable values used throughout the chart.

Examples include:

- Replica count
- Container image
- Service type
- Port numbers

These values can be overridden during installation without modifying the templates.

---

## templates/

The `templates/` directory contains Kubernetes resource templates that Helm renders into actual manifests.

Common resources stored in this directory include:

- Deployment
- Service
- Ingress
- ConfigMap
- Secret
- ServiceAccount
- HPA (Horizontal Pod Autoscaler)

During installation, Helm combines these templates with values from `values.yaml` to generate the final Kubernetes YAML files.

---

## _helpers.tpl

The `_helpers.tpl` file contains reusable template functions and snippets.

It is commonly used for:

- Resource naming
- Labels
- Annotations
- Common template logic

This helps reduce duplication and improves maintainability across multiple templates.

---

## Helm Chart Workflow

```text
Chart.yaml
      +
values.yaml
      +
templates/
      +
_helpers.tpl
      ↓
Helm Template Rendering
      ↓
Generated Kubernetes Manifests
      ↓
Deployment to Kubernetes Cluster