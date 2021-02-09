@Library(['terraform-pipeline-manheim@v5.14']) _


TerraformDirectoryPlugin.withDirectory('./terraform/').init()

CredentialsPlugin.withBuildCredentials('cox-auto-artifactory').init()

TerraformDirectoryPlugin.withDirectory('./terraform/').init()

Jenkinsfile.init(this)

def validate = new TerraformValidateStage()
def qa = new TerraformEnvironmentStage('qa')

validate
    .then(qa)
    .build()

