project_name: "looker_lams_poc"

#LAMS
#rule_exemptions: {
# F3: "Measures do not need a filter"
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

#rule: tests {
#  description: "The project should contain tests"
#  match: "$.model.*"
#  expr_rule: (!== ::match:test undefined) ;;
#}
