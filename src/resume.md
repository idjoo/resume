---
geometry: margin=2cm
output: pdf_document

header-includes:
- \pagenumbering{gobble}
---

# {{ .Values.name }}

::: columns
{{ .Values.address }}\
{{ .Values.phone }}\
[{{ .Values.email }}](mailto:{{ .Values.email }})\
[{{ .Values.website }}]({{ .Values.website }})\
[https://github.com/{{ .Values.github }}](https://github.com/{{ .Values.github }})\
[https://gitlab.com/{{ .Values.gitlab }}](https://gitlab.com/{{ .Values.gitlab }})\
[https://www.linkedin.com/in/{{ .Values.linkedin }}](https://www.linkedin.com/in/{{ .Values.linkedin }})
:::

{{ .Values.summary }}

## Educations

{{- range .Values.educations }}
- {{ .date }}, **{{ .school }}**, {{ .degree }}

  {{- range .descriptions }}
  - {{ . }}
  {{- end }}
{{- end }}

## Work Experiences

{{- range .Values.workExperiences }}
- {{ .date }}, **{{ .jobTitle }}** at {{ .company }}

  ::: columns
  {{- range .descriptions }}
  - {{ . }}
  {{- end }}
  :::
{{- end }}

## Technical Skills

::: three-columns
{{- range .Values.technicalSkills }}
- {{ . }}
{{- end }}
:::

## Certifications

{{- range .Values.certifications }}
- {{ .date }}, {{ .name }}
{{- end }}

## Trainings

{{- range .Values.trainings }}
- {{ .date }}, {{ .name }}
{{- end }}
