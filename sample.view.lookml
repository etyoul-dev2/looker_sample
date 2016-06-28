- view: sample
  sql_table_name: public.nasdaq
  fields:

  - dimension: close
    type: number
    sql: ${TABLE}.close

  - dimension: high
    type: number
    sql: ${TABLE}.high

  - dimension: low
    type: number
    sql: ${TABLE}.low

  - dimension: open
    type: number
    sql: ${TABLE}.open

  - dimension: symbol
    type: string
    sql: ${TABLE}.symbol

  - dimension: time
    type: number
    sql: ${TABLE}.time
  
  - dimension: datetime
    type: date
    sql: ${TABLE}.datetime

  - dimension: volume
    type: number
    sql: ${TABLE}.volume

  - measure: count
    type: count
    drill_fields: [symbol, count]

  - measure: total_volume
    type : sum
    sql : ${TABLE}.volume
    drill_fields: [symbol, total_volume]

  - measure: avg_open
    type : avg
    sql : ${TABLE}.open
    drill_fields: [symbol, open, close]

  - measure: avg_close
    type : avg
    sql : ${TABLE}.close
    drill_fields: [symbol, open, close]

  - measure: avg_low
    type : avg
    sql : ${TABLE}.low
    drill_fields: [symbol, low, high]

  - measure: avg_high
    type : avg
    sql : ${TABLE}.high
    drill_fields: [symbol, low, high]