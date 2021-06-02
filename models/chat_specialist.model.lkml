connection: "elt_connector"

include: "*.view"

explore: scores {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${scores.specialistempcode} = ${primarylink.employee_code};;
  }
}

explore: topbar {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${topbar.chatspecialistempcode} = ${primarylink.employee_code};;
  }
}

datagroup: chat_specialist_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chat_specialist_default_datagroup
