view: scores {
  sql_table_name: "CHAT"."SCORES"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: chatid {
    type: string
    sql: ${TABLE}."CHATID" ;;
  }

  dimension_group: date {
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

  dimension: score {
    type: number
    sql: ${TABLE}."SCORE" ;;
  }

  dimension: specialistempcode {
    type: string
    sql: ${TABLE}."SPECIALISTEMPCODE" ;;
  }

  dimension: specialistname {
    type: string
    sql: ${TABLE}."SPECIALISTNAME" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, specialistname]
  }
}
