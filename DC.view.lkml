view: dc {
  sql_table_name: PUBLIC.DISTRIBUTION_CENTERS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
    }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, products.count]
  }

  measure: total_cnt {
    type: sum
    sql: ${products.count} ;;
  }

  set: dc_set {
    fields: [id,latitude,longitude,name]
  }

 }
