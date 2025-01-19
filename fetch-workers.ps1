# Authorization header with bearer token
$headers = @{
    "Authorization" = "Bearer YOUR_ACCESS_TOKEN_HERE"
}

# OData endpoint to fetch worker data
$url = "https://your-dynamics-instance-url/data/Workers?$select=PersonnelNumber,Name,WorkerType,WorkerStatus,IdentityEmail"

# Make the API request
$response = Invoke-WebRequest -Uri $url -Method GET -Headers $headers

# Parse the JSON content from the response
$data = $response.Content | ConvertFrom-Json

# Extract and display the worker names
$data.value | ForEach-Object { $_.Name }
