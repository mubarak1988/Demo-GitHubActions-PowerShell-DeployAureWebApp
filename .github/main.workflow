workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Azure"]
}


action "Deploy to Azure" {
  uses = "./.github/azdeploy"
  secrets = ["SERVICE_PASS"]
  env = {
    SERVICE_PRINCIPAL = "ServicePrincipalName",
    TENANT_ID="e7a7f48b-4187-49ce-b6fc-14f712cf7ef0",
    APPID="myWebappTest"
  }
}
