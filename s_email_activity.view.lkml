view: s_email_activity {
  sql_table_name: rca_perf_pilot_dataproc.s_email_activity ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: click {
    hidden: yes
    sql: ${TABLE}.click ;;
  }

  dimension: delivered_date {
    type: string
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

  dimension: opened_date {
    type: string
    sql: ${TABLE}.opened_date ;;
  }

  dimension: sent_ali_id {
    type: number
    sql: ${TABLE}.sent_ali_id ;;
  }

  dimension: sent_date {
    type: string
    sql: ${TABLE}.sent_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: s_email_activity__click {
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }
}
