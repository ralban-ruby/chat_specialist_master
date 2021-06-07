view: status_by_day {
  sql_table_name: "CHAT"."STATUS_BY_DAY"
    ;;

  dimension: avail_status_minutes {
    type: number
    sql: ${TABLE}."AVAIL_STATUS_MINUTES" ;;
  }

  dimension: employeeid {
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension_group: nominaldate {
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
    sql: ${TABLE}."NOMINALDATE" ;;
  }

  dimension: statuskey {
    type: string
    sql: ${TABLE}."STATUSKEY" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
