view: f_email_activity {
  sql_table_name: rca_perf_pilot_dataproc.f_email_activity ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: click {
    hidden: yes
    sql: ${TABLE}.click ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}.delivered_date ;;
  }

  dimension: email_id {
    type: number
    sql: ${TABLE}.email_id ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension_group: opened {
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
    sql: ${TABLE}.opened_date ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: f_email_activity__click {
  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }
}
