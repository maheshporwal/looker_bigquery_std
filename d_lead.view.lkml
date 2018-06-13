view: d_lead {
  sql_table_name: rca_perf_pilot_dataproc.d_lead ;;

  dimension: abm_account_id {
    type: number
    sql: ${TABLE}.abm_account_id ;;
  }

  dimension_group: acquisition_date {
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
    sql: ${TABLE}.acquisition_date_time ;;
  }

  dimension: acquisition_program_id {
    type: number
    sql: ${TABLE}.acquisition_program_id ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: etl_id {
    type: string
    sql: ${TABLE}.etl_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_black_listed {
    type: yesno
    sql: ${TABLE}.is_black_listed ;;
  }

  dimension: is_converted_to_opportunity {
    type: yesno
    sql: ${TABLE}.is_converted_to_opportunity ;;
  }

  dimension: is_email_invalid {
    type: yesno
    sql: ${TABLE}.is_email_invalid ;;
  }

  dimension: is_email_opt_out {
    type: yesno
    sql: ${TABLE}.is_email_opt_out ;;
  }

  dimension: is_marketing_suspended {
    type: yesno
    sql: ${TABLE}.is_marketing_suspended ;;
  }

  dimension: is_phone_opt_out {
    type: yesno
    sql: ${TABLE}.is_phone_opt_out ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }

  dimension_group: lead_created_date {
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
    sql: ${TABLE}.lead_created_date_time ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: lead_owner_id {
    type: number
    sql: ${TABLE}.lead_owner_id ;;
  }

  dimension: lead_partition_id {
    type: number
    sql: ${TABLE}.lead_partition_id ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.lead_source ;;
  }

  dimension: lead_status {
    type: string
    sql: ${TABLE}.lead_status ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: opportunity_created {
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
    sql: ${TABLE}.opportunity_created_date ;;
  }

  dimension: original_source_info {
    type: string
    sql: ${TABLE}.original_source_info ;;
  }

  dimension: original_source_type {
    type: string
    sql: ${TABLE}.original_source_type ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: register_source_info {
    type: string
    sql: ${TABLE}.register_source_info ;;
  }

  dimension: register_source_type {
    type: string
    sql: ${TABLE}.register_source_type ;;
  }

  dimension: relative_score {
    type: number
    sql: ${TABLE}.relative_score ;;
  }

  dimension: revenue_stage_id {
    type: number
    sql: ${TABLE}.revenue_stage_id ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
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

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension: urgency {
    type: number
    sql: ${TABLE}.urgency ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
