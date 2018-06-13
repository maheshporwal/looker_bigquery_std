view: s_company {
  sql_table_name: rca_perf_pilot_dataproc.s_company ;;

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }

  dimension: etl_id {
    type: string
    sql: ${TABLE}.etl_id ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}.is_private ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: sfdc_account_id {
    type: string
    sql: ${TABLE}.sfdc_account_id ;;
  }

  dimension: sfdc_is_deleted {
    type: yesno
    sql: ${TABLE}.sfdc_is_deleted ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.sic_code ;;
  }

  dimension: source_created_at {
    type: string
    sql: ${TABLE}.source_created_at ;;
  }

  dimension: source_updated_at {
    type: string
    sql: ${TABLE}.source_updated_at ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
