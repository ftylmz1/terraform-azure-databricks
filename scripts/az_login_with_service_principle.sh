# IF YOU SET ENVIRONMENT PROPERTIES PROPERLY, YOU DON'T NEED TO LOGIN SCRIPT 
# OR IF YOU DON'T RUN AZ CLI COMMANDS LOCALLY 
# FOR EXAMPLE:
# az datafactory trigger create...
# LOGIN WITH SERVICE PRINCIPLE
az login --service-principal -u "$ARM_CLIENT_ID" -p "$ARM_CLIENT_SECRET" --tenant "$ARM_TENANT_ID"
