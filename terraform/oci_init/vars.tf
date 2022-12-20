# Copyright © 2022, Oracle and/or its affiliates. 
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {default="ocid1.tenancy.oc1..aaaaaaaajlqw7qs62agvha73f25ivmhatqin2fmrdppma2mh4kf7pjqe6vqa"}
variable "compartment_ocid" {default="ocid1.compartment.oc1..aaaaaaaaloz66dt42pkajyv3qmmx7xlgqwkt5scsapqbbg2zuuvt6clxhfbq"}
variable "region" {default="eu-frankfurt-1"}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaaxz4il24t4htkhg7xn7762rqihhuogtllp5d6vx2asmtugfibpzia"
}
variable "identity_provider_id" {
  default = ""
}
variable "fingerprint" {
  default = ""
}
variable "private_key_path" {
  default = ""
}
