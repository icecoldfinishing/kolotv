gemini --model=gemini-2.5-flash

(Invoke-RestMethod "https://generativelanguage.googleapis.com/v1beta/models?key=$env:GEMINI_API_KEY").models | Select-Object -ExpandProperty name
