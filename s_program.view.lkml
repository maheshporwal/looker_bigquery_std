view: s_program {
  sql_table_name: rca_perf_pilot_dataproc.s_program ;;

  dimension: analytics_option {
    type: string
    sql: ${TABLE}.analytics_option ;;
  }

  dimension: channel_name {
    type: string
    sql: ${TABLE}.channel_name ;;
  }

  dimension: channel_option {
    type: string
    sql: ${TABLE}.channel_option ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: etl_id {
    type: string
    sql: ${TABLE}.etl_id ;;
  }

  dimension: has_cost {
    type: yesno
    sql: ${TABLE}.has_cost ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_qualified {
    type: yesno
    sql: ${TABLE}.is_qualified ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: program_id {
    type: number
    sql: ${TABLE}.program_id ;;
  }

  dimension: progression_type {
    type: string
    sql: ${TABLE}.progression_type ;;
  }

  dimension: source_created_at {
    type: string
    sql: ${TABLE}.source_created_at ;;
  }

  dimension: source_updated_at {
    type: string
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  dimension: workspace_id {
    type: number
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [channel_name, name]
  }
}
