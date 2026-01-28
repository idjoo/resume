---
geometry: margin=2cm
output: pdf_document
---

**{{ .Values.name }}** 

{{ .Values.address }}  
{{ .Values.phone }}  
[{{ .Values.email }}](mailto:{{ .Values.email }})  
[{{ .Values.website }}]({{ .Values.website }})

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

  {{- range .descriptions }}
  - {{ . }}
  {{- end }}
{{- end }}

## Technical Skills

{{- $skills := list }}
{{- range .Values.technicalSkills }}
    {{ $skills = printf "%s (%s)" .name .level | append $skills }}
{{- end }}
{{ join ", " $skills }}

## Certifications

{{- range .Values.certifications }}
- {{ .date }}, {{ .name }}
{{- end }}

## Trainings

{{- range .Values.trainings }}
- {{ .date }}, {{ .name }}
{{- end }}
