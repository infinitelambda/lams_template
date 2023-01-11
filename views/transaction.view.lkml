view: transaction {
  sql_table_name: "SOURCE_DATA"."TRANSACTION"
    ;;

  dimension: pk1_receipt_id {
    label: "Receipt ID"
    description: "ID of the receipt, unique identifier of the transaction"
    primary_key: yes
    # hidden: yes
    type: number
    sql: ${TABLE}."RECEIPT_ID" ;;
  }

  dimension: amount {
    label: "Transaction Amount"
    description: "Amount of the transaction"
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  dimension_group: date {
    label: "Transaction"
    description: "Date at which the transaction occurred"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: product_barcode {
    label: "Product Barcode"
    description: "Product barcode, used to identify the product of the transaction"
    type: number
    sql: ${TABLE}."PRODUCT_BARCODE" ;;
  }

  dimension: store_id {
    label: "Store ID"
    description: "ID of the store the transaction occurred into"
    type: number
    sql: ${TABLE}."STORE_ID" ;;
  }

  dimension: week {
    label: "Transaction Week"
    description: "Week at which the transaction occurred"
    type: number
    sql: ${TABLE}."WEEK" ;;
  }

  dimension: month {
    label: "Transaction Month"
    description: "Month at which the transaction occurred"
    type: number
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: year {
    label: "Transaction Year"
    description: "Year at which the transaction occurred"
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: transaction_count {
    label: "Transaction Count"
    type: count
    description: "Number of transactions"
    drill_fields: [detail*]
    filters: [pk1_receipt_id: "NOT NULL"]
    value_format_name: decimal_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      store_id,
      store.subregion_name,
      store.province_name,
      store.region_name,
      store.store_format_name,
      store.city_name
    ]
  }
}
