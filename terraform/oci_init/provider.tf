# Copyright © 2020, Oracle and/or its affiliates. 
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = "ocid1.user.oc1..aaaaaaaaxz4il24t4htkhg7xn7762rqihhuogtllp5d6vx2asmtugfibpzia"
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
}
