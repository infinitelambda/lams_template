view: product {
  sql_table_name: "SOURCE_DATA"."PRODUCT"
    ;;

  dimension: product_id {
    label: "Product ID"
    primary_key: yes
    # hidden: yes
    description: "Barcode of the product, unique ID of the product"
    type: number
    sql: ${TABLE}."PRODUCT_BARCODE" ;;
  }

  dimension: product_brand {
    label: "Product Brand"
    description: "Brand of the product"
    type: string
    sql: ${TABLE}."PRODUCT_BRAND" ;;
  }

  dimension: product_category {
    label: "Product Category"
    description: "Category of the product"
    type: string
    sql: ${TABLE}."PRODUCT_CATEGORY" ;;
  }

  dimension: product_manufacturer {
    label: "Product Manufacturer"
    description: "Manufacturer of the product"
    type: string
    sql: ${TABLE}."PRODUCT_MANUFACTURER" ;;
  }

  dimension: product_name {
    label: "Product Name"
    description: "Name of the product"
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: product_pack_size {
    label: "Product Pack Size"
    description: "Packt size of the product"
    type: string
    sql: ${TABLE}."PRODUCT_PACK_SIZE" ;;
  }

  dimension: product_pack_type {
    label: "Product Pack Type"
    description: "Pack type of the product"
    type: string
    sql: ${TABLE}."PRODUCT_PACK_TYPE" ;;
  }

  measure: product_count {
    label: "Product Count"
    type: count
    description: "Number of products"
    drill_fields: [product_name]
    filters: [product_id: "NOT NULL"]
    value_format: "#,##0"
  }
}
