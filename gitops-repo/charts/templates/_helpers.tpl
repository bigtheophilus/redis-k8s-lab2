{{- define "redis-api.name" -}}
redis-api
{{- end }}

{{- define "redis-api.labels" -}}
app.kubernetes.io/name: {{ include "redis-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

