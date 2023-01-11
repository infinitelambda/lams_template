project_name: "looker_lams_poc"

#LAMS
#rule_exemptions: {
#K2: "Primary Key Dimensions do not need to be named like pk{n}_{key_name}"
#K3: "Primary Key Dimensions can be defined in any position in the view"
#K5: "No need for Distribution Key Dimension"
#K6: "No need for Sort/Cluster Key Dimension"
#F1: "Fields in a view can reference other views..."
#F3: "Type:count measures do not need a filter"
#F5: "ID fields that do not have a business usage must not be hidden"
#F6: "ID fields that DO have a business usage must not be hidden when they are a foreign key"
#T1: "Triggered PDTs must not use datagroups"
#T2: "Queries, derived tables, CTEs, or subqueries must not SELECT a set of primary key columns following rules T3-T8"
#T3: "No need to alias Primary Key columns in PDT like 'AS pk{n}_{key_name}'"
#T4: "Primary key columns must not be the first columns in the SELECT clause"
#T5: "For grouped queries, the PK must not start with the grouped columns"
#T6: "For ungrouped queries, the PK must not start with the PK's from the many-joined tables"
#T7: "No need to add 'ROW_NUMBER, if...' after the PK"
#T8: "No need to en PK column with '---' on its own line"
#T11: "Aggregates which should produce a single value must not be asserted"
#T13: "First/last values can be selected via an ORDER BY and not only via an aggregate function"
#T14: "Persisted derived tables can use liquid or 'dynamic SQL'"
#E3: "Joins must not use distribution keys and sort/cluster keys"
#E4: "Explores must not declare `always_filter` on the base table's sort key / parition column / clustered index"
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
