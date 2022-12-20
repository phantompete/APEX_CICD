# Copyright © 2020, Oracle and/or its affiliates. 
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

// Basic Hidden not public
variable "tenancy_ocid" {}
variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaaloz66dt42pkajyv3qmmx7xlgqwkt5scsapqbbg2zuuvt6clxhfbq"
}

variable "region" {
  default = "eu-frankfurt-1"
}

// Extra Hidden
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaxz4il24t4htkhg7xn7762rqihhuogtllp5d6vx2asmtugfibpzia"
}

variable "current_user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaxz4il24t4htkhg7xn7762rqihhuogtllp5d6vx2asmtugfibpzia"
}

variable "fingerprint" {
  default = ""
}
variable "private_key_path" {
  default = ""
}
variable "private_key" {
  default = ""
}

// General Configuration
variable "db_clone_source" {
  // DATABASE | NONE
  default = "NONE"
}

variable "apex_user" {
  default = "DEMO"
}

// ADB Configuration
variable "db_version" {
  default = "19c"
}
variable "is_always_free" {
  default = false
}
variable "license_model" {
  default = "BRING_YOUR_OWN_LICENSE"
}
