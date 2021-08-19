##############################
### Network Variables#########
infravnet = "vnet-infra-eastus-001"
#corevnet = "vnet-core-westeu-001"
#vnet = "10.33.80.0/20"
vnet = "10.1.0.0/16"

#subnet = ["10.33.84.0/24", "10.33.80.0/24", "10.33.81.0/24", "10.33.82.0/24", "10.33.83.0/24", "10.33.88.0/24", "10.33.89.0/24", "10.33.90.0/24"]
subnet = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]

#subnetname = ["snet-core-addns-westeu-001", "snet-core-wan-fw-mgmt-westeu-001", "snet-core-wan-fw-trust-westeu-001", "snet-core-wan-fw-untrust-westeu-001", "snet-core-wan-fw-sync-westeu-001", "snet-core-ext-fw-mgmt-westeu-001", "snet-core-ext-fw-trust-westeu-001", "snet-core-ext-fw-untrust-westeu-001"]
subnetname = ["snet-infra-ad-eastus-001", "snet-infra-app-eastus-001", "snet-infra-dmz-eastus-001"]

subnet_ipmap = {
    snet-infra-ad-eastus-001 = "10.1.1.0/24"
    snet-infra-app-eastus-001 = "10.1.2.0/24"
    snet-infra-dmz-eastus-001 = "10.1.3.0/24"
    }

#########################
### TAGS ###################

environment = "Infra"
createdby = "NitinB"
owner = "NitinB"

################ subnet2 variable #############
dbvnet = "vnet-db-eastus-001"
dbvnet1 = "10.2.0.0/16"
dbsubnet = ["10.2.1.0/24", "10.2.2.0/24"]
dbsubnetname = ["snet-db-sql-eastus-001", "snet-db-oracle-eastus-001"]
dbsubnet_ipmap = {
    snet-db-sql-eastus-001 = "10.2.1.0/24"
    snet-db-oracle-eastus-001 = "10.2.2.0/24"
    }
    ####################