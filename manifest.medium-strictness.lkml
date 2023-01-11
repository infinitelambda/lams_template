project_name: "looker_lams_poc"

#LAMS
#rule_exemptions: {
#K2: "Primary Key Dimensions do not need to be named like pk{n}_{key_name}"
#K5: "No need for Distribution Key Dimension"
#K6: "No need for Sort/Cluster Key Dimension"
#T3: "No need to alias Primary Key columns in PDT like 'AS pk{n}_{key_name}'"
#T7: "No need to add 'ROW_NUMBER, if...' after the PK"
#T8: "No need to en PK column with '---' on its own line"
#}

#rule: field_label {
#  description: "All fields should have a label"
#  match: "$.model.*.view.*['dimension','measure'].*"
#  expr_rule: (!== ::match:label undefined) ;;
#}

#rule: date_description {
#  description: "All date fields descriptions should start with 'Date'"
#  match: "$.model.*.view.*.dimension_group[?(@.timeframes)]"
#  expr_rule: ($boolean ($match
#  "^Date"
#  ::match:description
#  )) ;;
#}

#rule: value_format {
#  description: "All measures should declare a value_format or a value_format_name"
#  match: "$.model.*.view.*.measure.*"
#  expr_rule: ($any
#    (!== ::match:value_format undefined)
#    (!== ::match:value_format_name undefined)
#  ) ;;
#}

#rule: join_relationship {
#  description: "All joins in an explore should declare a relationship"
#  match: "$.model.*.explore.*.join.*"
#  expr_rule: (!== ::match:relationship undefined) ;;
#}

#rule: datagroup {
#  description: "Model should declare a datagroup"
#  match: "$.model.*"
#  expr_rule: (!== ::match:datagroup undefined) ;;
#}

#rule: tests {
#  description: "The project should contain tests"
#  match: "$.model.*"
#  expr_rule: (!== ::match:test undefined) ;;
#}
