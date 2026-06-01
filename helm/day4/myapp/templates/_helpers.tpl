{{- define "mychart.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "mychart.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "mychart.labels" -}}
app: {{ include "mychart.name" . }}
{{- end }}

{{- define "trimmed-name"}}
trim: {{ trimPrefix "{{ .Release.Name }}" "{{mychart.fullname}}" }}
{{- end }}