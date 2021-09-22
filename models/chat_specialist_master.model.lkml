connection: "elt_connector"

include: "*.view"

explore: chat_scorecard_rollup {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${chat_scorecard_rollup.chatspecialistempcode} = ${primarylink.employee_code};;
  }
}

explore: topbar {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${topbar.employeeid} = ${primarylink.employeeid};;
  }
}

explore: avail {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${avail.employeeid} = ${primarylink.employeeid};;
  }
}

explore: brb {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${brb.employeeid} = ${primarylink.employeeid};;
  }
}

explore: wrapping_up {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${wrapping_up.employeeid} = ${primarylink.employeeid};;
  }
}

explore: recognitions_given {
  join: primarylink {
    relationship: one_to_one
    type: left_outer
    sql_on: ${recognitions_given.creator_emp_id} = ${primarylink.employee_code};;
  }
}

explore: recognitions_received {
  join: primarylink {
    relationship: many_to_one
    type: left_outer
    sql_on: ${recognitions_received.recipient_emp_id} = ${primarylink.employee_code};;
  }
}

explore: status_by_day {}

datagroup: chat_specialist_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chat_specialist_default_datagroup
