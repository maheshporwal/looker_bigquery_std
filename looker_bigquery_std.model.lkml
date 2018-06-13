connection: "bigquery_standard_sql_conn"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: looker_bigquery_std_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_bigquery_std_default_datagroup

explore: d_company {}

explore: d_email {}

explore: d_lead {}

explore: d_program {}

explore: s_company {}

explore: s_email {}

explore: s_lead {}

explore: s_program {}

explore: s_email_activity {
  join: s_email_activity__click {
    view_label: "S Email Activity: Click"
    sql: LEFT JOIN UNNEST(${s_email_activity.click}) as s_email_activity__click ;;
    relationship: one_to_many
  }
}

explore: f_email_activity {
  join: f_email_activity__click {
    view_label: "F Email Activity: Click"
    sql: LEFT JOIN UNNEST(${f_email_activity.click}) as f_email_activity__click ;;
    relationship: one_to_many
  }
}
