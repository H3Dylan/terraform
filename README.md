## ⚙️ Prérequis

Avant de commencer, assurez-vous d’avoir :
- ✅ Un compte Azure avec une subscription ID.
- ✅ Terraform installé : [Installer Terraform](https://developer.hashicorp.com/terraform/downloads)
- ✅ Une clé SSH pour accéder à la VM.
- ✅ Azure CLI installé (facultatif mais recommandé) : [Installer Azure CLI](https://learn.microsoft.com/fr-fr/cli/azure/install-azure-cli)

## 🔐 Configuration initiale

1. Cloner le dépôt
   
git clone <url-du-repo>
cd <nom-du-dossier>

2. Renseigner vos valeurs dans terraform.tfvars :

resource_group_name = "rg-flask-tf"
location            = "westeurope"
storage_account_prefix = "flaskstor"
container_name         = "staticfiles"
admin_username         = "azureuser"
admin_ssh_key_path     = "~/.ssh/id_rsa.pub"
vm_name                = "flaskvm"

Déploiement de l'infrastructure : 

Initialiser Terraform :

  terraform init

Vérifier le plan d’exécution :

  terraform plan

Appliquer le déploiement: 

  terraform apply

À la fin, Terraform vous affichera l’IP publique de votre VM.
Accéder à l’application Flask
Une fois le provisioning terminé, l’application Flask est automatiquement lancée.

Ouvrir un navigateur :

  http://<IP_PUBLIQUE_VM>:5000
