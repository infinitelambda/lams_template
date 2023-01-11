view: store {
  sql_table_name: "SOURCE_DATA"."STORE"
    ;;

  #LAMS
  #rule_exemptions: {
  # K4: "No need to hide primary keys"
  #}

  dimension: pk1_store_id {
    label: "Store ID"
    description: "ID of the store"
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: city_name {
    label: "City Name"
    description: "Name of the city the store is located at"
    type: string
    sql: ${TABLE}."CITY_NAME" ;;
  }

  dimension: province_name {
    label: "Province Name"
    description: "Name of the province the store is located at"
    type: string
    sql: ${TABLE}."PROVINCE_NAME" ;;
  }

  dimension: region_name {
    label: "Region Name"
    description: "Name of the region the store is located at"
    type: string
    sql: ${TABLE}."REGION_NAME" ;;
  }

  dimension: store_format_name {
    label: "Store Format Name"
    description: "Name of the store format"
    type: string
    sql: ${TABLE}."STORE_FORMAT_NAME" ;;
  }

  dimension: subregion_name {
    label: "Subregion Name"
    description: "Name of the subregion the store is located at"
    type: string
    sql: ${TABLE}."SUBREGION_NAME" ;;
  }

  measure: store_count {
    label: "Stoure Count"
    type: count
    description: "Number of stores"
    drill_fields: [detail*]
    filters: [pk1_store_id: "NOT NULL"]
    value_format_name: decimal_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      pk1_store_id,
      subregion_name,
      province_name,
      region_name,
      store_format_name,
      city_name,
      transaction.count
    ]
  }
}
