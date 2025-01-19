# Dynamics 365 OData Fetch with PowerShell

This repository contains a PowerShell script to query and retrieve data from a Dynamics 365 environment using OData. The script is designed to fetch worker details, including their personnel number, name, type, status, and email.

---

## Prerequisites

Before using the script, ensure you have the following:

1. **Dynamics 365 Access**:
   - Ensure you have a Dynamics 365 instance and proper permissions to query the OData endpoint.

2. **OAuth 2.0 Bearer Token**:
   - A valid token for authentication. You can generate this token from your organization's Azure Active Directory.

3. **PowerShell Installed**:
   - PowerShell is available by default on Windows. If you’re using another OS, download it from [PowerShell Documentation](https://learn.microsoft.com/en-us/powershell/).

---

## Script Overview

The PowerShell script performs the following:

1. **Authorization**:
   - It uses a bearer token to authenticate with the Dynamics 365 environment.

2. **OData Query**:
   - Queries the `Workers` entity and selects specific fields: `PersonnelNumber`, `Name`, `WorkerType`, `WorkerStatus`, and `IdentityEmail`.

3. **API Request**:
   - Sends a GET request to fetch data.

4. **JSON Parsing**:
   - Converts the JSON response into a usable format.

5. **Data Display**:
   - Extracts and displays the worker names from the response.

---

## How to Use

### Clone the Repository

```bash
git clone https://github.com/your-username/dynamics365-odata-fetch.git
cd dynamics365-odata-fetch
