# Copyright © 2020, Oracle and/or its affiliates. 
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

module "adb_prd" {
  count           = terraform.workspace == "default" ? 1 : 0
  source          = "./modules/adb"
  db_version      = var.db_version
  is_always_free  = var.is_always_free
  license_model   = var.license_model
  adb_compartment = "ocid1.compartment.oc1..aaaaaaaapvmart3bd66whzrvefbjcrbv4grnvmqfbzcqxa4blc2r57fvwhia"
  adb_name        = upper(format("%sPRD", random_pet.prefix[0].id))
}

module "adb_dev" {
  count           = terraform.workspace == "default" ? 0 : 1
  source          = "./modules/adb"
  db_version      = var.db_version
  is_always_free  = var.is_always_free
  license_model   = var.license_model
  adb_compartment = "ocid1.compartment.oc1..aaaaaaaaxuczsrb3zug4ftp3oec4nwmxdgzgzjoaed436s62fezhaifzjazq"
  adb_name        = format("%s%s", replace("POSSUMPRD", "PRD", "DEV"), replace(terraform.workspace, "/-.*/", ""))
  adb_source      = var.db_clone_source
  adb_source_id   = "ocid1.autonomousdatabase.oc1.eu-frankfurt-1.antheljreicj2tiaahq75srsxvnakxh53jgnyvnbvcvcqewnf7osfo54g5lq"
  adb_clone_type  = "FULL"
}
