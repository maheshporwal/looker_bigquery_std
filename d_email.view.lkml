view: d_email {
  sql_table_name: rca_perf_pilot_dataproc.d_email ;;

  dimension: email_id {
    type: number
    sql: ${TABLE}.email_id ;;
  }

  dimension: email_name {
    type: string
    sql: ${TABLE}.email_name ;;
  }

  dimension: email_template {
    type: string
    sql: ${TABLE}.email_template ;;
  }

  dimension: from_email_address {
    type: string
    sql: ${TABLE}.from_email_address ;;
  }

  dimension_group: source_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.source_created_at ;;
  }

  dimension_group: source_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: count {
    type: count
    drill_fields: [email_name]
  }
}
