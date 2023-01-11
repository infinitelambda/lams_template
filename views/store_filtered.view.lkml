view: store_filtered {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
      select
        store_id
        , city_name
        , count(store_id) as store_count

      from DBT_DEMO_POC.SOURCE_DATA.STORE

      where region_name = 'East Java'
      group by 1,2
      order by store_count desc
    ;;
  }

  dimension: store_id {
    description: "ID of the store, unique key"
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: city_name {
    description: "Name of the City"
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: store_count {
    description: "Number of stores"
    type: string
    sql: ${TABLE}.store_count ;;
  }
}
