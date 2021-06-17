view: chat_scorecard_rollup {
  sql_table_name: "CHAT"."CHAT_SCORECARD_ROLLUP"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: chatspecialistempcode {
    type: number
    sql: ${TABLE}."CHATSPECIALISTEMPCODE" ;;
  }

  dimension: chatspecialistname {
    type: string
    sql: ${TABLE}."CHATSPECIALISTNAME" ;;
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

  dimension: q_count {
    type: number
    sql: ${TABLE}."Q_COUNT" ;;
  }

  dimension: q_id {
    type: string
    sql: ${TABLE}."Q_ID" ;;
  }

  dimension: q_score {
    type: number
    sql: ${TABLE}."Q_SCORE" ;;
  }

  dimension: scorecard_id {
    type: number
    sql: ${TABLE}."SCORECARD_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, chatspecialistname]
  }
}
