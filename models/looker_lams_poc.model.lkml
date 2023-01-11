connection: "looker_lams_poc"

# include all the views
include: "/views/**/*.view"

datagroup: looker_lams_poc_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# persist_with: looker_lams_poc_default_datagroup

explore: transaction {
  group_label: "LAMS POC Group Label"

  join: store {
    type: left_outer
    sql_on: ${transaction.store_id} = ${store.pk1_store_id} ;;
    relationship: many_to_one
  }

  join: product {
    type: left_outer
    sql_on: ${transaction.product_barcode} = ${product.pk1_product_id} ;;
    relationship: many_to_one
  }
}
