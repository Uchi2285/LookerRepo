view: dc1 {
  sql_table_name: PUBLIC.DISTRIBUTION_CENTERS ;;

  dimension: dcid {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
    }

  dimension: dclatitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: dclongitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: dcname {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  measure: dccount {
    type: count
    drill_fields: [dcid, dcname, products.count]
  }

    set: dcset {
    fields: [dcid,dclatitude,dclongitude,dcname]
  }

 }
