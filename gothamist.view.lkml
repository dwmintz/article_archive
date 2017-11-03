explore: article_archive {}

view: article_archive {
  sql_table_name: test.gothamist ;;

  dimension: authors {
    type: string
    sql: ${TABLE}.Authors ;;
  }

  dimension: publication {
    type: string
    sql: ${TABLE}.Publication ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
    html: <a href="{{ article_archive.url._value }}" target="_blank">{{value}}</a> ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
