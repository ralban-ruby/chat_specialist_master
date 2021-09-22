- dashboard: chat_dashboard_v0
  title: Chat Dashboard v0
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Summary
    name: Summary
    model: ruby
    explore: pc_quality_scorecard_factv2
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [count_of_id, pc_quality_scorecard_factv2.score]
    limit: 500
    dynamic_fields: [{measure: count_of_id, based_on: pc_quality_scorecard_factv2.id,
        expression: '', label: Count of ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '10'
    orientation: auto
    style_count_of_id: "#3A4245"
    show_title_count_of_id: true
    title_override_count_of_id: Scorecards
    title_placement_count_of_id: above
    value_format_count_of_id: ''
    style_pc_quality_scorecard_factv2.score: "#3A4245"
    show_title_pc_quality_scorecard_factv2.score: true
    title_override_pc_quality_scorecard_factv2.score: Average Score
    title_placement_pc_quality_scorecard_factv2.score: above
    value_format_pc_quality_scorecard_factv2.score: ''
    show_comparison_pc_quality_scorecard_factv2.score: false
    series_types: {}
    defaults_version: 0
    listen:
      Name: employee_lookup_all.name
      Date: pc_quality_scorecard_factv2.submittime_date
    row: 0
    col: 0
    width: 11
    height: 5
  - title: Wrapping Up
    name: Wrapping Up
    model: chat_specialist_master
    explore: wrapping_up
    type: looker_column
    fields: [wrapping_up.nominaldate_date, sum_of_avail, sum_of_total]
    fill_fields: [wrapping_up.nominaldate_date]
    sorts: [wrapping_up.nominaldate_date desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: wrapping_up, _type_hint: number,
        category: table_calculation, expression: "${sum_of_avail}/${sum_of_total}",
        label: Wrapping Up, value_format: !!null '', value_format_name: percent_1},
      {measure: sum_of_avail, based_on: wrapping_up.avail, expression: '', label: Sum
          of Avail, type: sum, _kind_hint: measure, _type_hint: number}, {measure: sum_of_total,
        based_on: wrapping_up.total, expression: '', label: Sum of Total, type: sum,
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: wrapping_up, id: wrapping_up,
            name: Wrapping Up}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_colors:
      wrapping_up: "#BBCAF2"
    label_color: ["#b22577"]
    defaults_version: 1
    hidden_fields: [sum_of_avail, sum_of_total]
    listen:
      Name: wrapping_up.name
      Date: wrapping_up.nominaldate_date
    row: 5
    col: 11
    width: 13
    height: 6
  - title: Agent Positivity
    name: Agent Positivity
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [employee_lookup_all.name, prochats_chat_agent_stats.avg_rate]
    filters:
      prochats_chat_agent_stats.avg_rate: NOT NULL
    sorts: [prochats_chat_agent_stats.avg_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size_main: '10'
    orientation: auto
    style_employee_lookup_all.name: "#3A4245"
    show_title_employee_lookup_all.name: true
    title_override_employee_lookup_all.name: "."
    title_placement_employee_lookup_all.name: above
    value_format_employee_lookup_all.name: ''
    style_prochats_chat_agent_stats.avg_rate: "#3A4245"
    show_title_prochats_chat_agent_stats.avg_rate: true
    title_override_prochats_chat_agent_stats.avg_rate: "."
    title_placement_prochats_chat_agent_stats.avg_rate: above
    value_format_prochats_chat_agent_stats.avg_rate: ''
    show_comparison_prochats_chat_agent_stats.avg_rate: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    series_types: {}
    defaults_version: 1
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 16
    col: 4
    width: 3
    height: 5
  - title: Positivity - All Chat
    name: Positivity - All Chat
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_chat_agent_stats.avg_rate]
    filters:
      prochats_chat_agent_stats.avg_rate: NOT NULL
      employee_lookup_all.team: "-NULL,-Learning & Development"
    sorts: [prochats_chat_agent_stats.avg_rate desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: All Chat Agent Positivity
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: aspect_superstatehours_fact.nominal_date
    row: 21
    col: 4
    width: 3
    height: 5
  - title: All Agent Conversion
    name: All Agent Conversion
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_opportunitytags_fact.conversion]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: aspect_superstatehours_fact.nominal_date
    row: 21
    col: 8
    width: 3
    height: 5
  - title: Agent Conversion
    name: Agent Conversion
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_opportunitytags_fact.conversion]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 16
    col: 8
    width: 3
    height: 5
  - title: All Agent First Response Time
    name: All Agent First Response Time
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_chat_agent_stats.avg_first_response]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: aspect_superstatehours_fact.nominal_date
    row: 21
    col: 12
    width: 3
    height: 5
  - title: All Agent Average Response Time
    name: All Agent Average Response Time
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_chat_agent_stats.avg_response]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Date: aspect_superstatehours_fact.nominal_date
    row: 21
    col: 16
    width: 3
    height: 5
  - title: Agent Average Response Time
    name: Agent Average Response Time
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_chat_agent_stats.avg_response]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 16
    col: 16
    width: 3
    height: 5
  - title: Agent First Response Time
    name: Agent First Response Time
    model: ruby
    explore: prochats_opportunity_fact
    type: single_value
    fields: [prochats_chat_agent_stats.avg_first_response]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 16
    col: 12
    width: 3
    height: 5
  - title: Conversion by Day
    name: Conversion by Day
    model: ruby
    explore: prochats_opportunity_fact
    type: looker_column
    fields: [aspect_superstatehours_fact.nominal_date, prochats_opportunitytags_fact.conversion]
    fill_fields: [aspect_superstatehours_fact.nominal_date]
    filters: {}
    sorts: [aspect_superstatehours_fact.nominal_date]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: meets_goal, _type_hint: number,
        category: table_calculation, expression: 'if(${prochats_opportunitytags_fact.conversion}>=0.30,
          ${prochats_opportunitytags_fact.conversion}, null)', label: Meets Goal,
        value_format: !!null '', value_format_name: percent_0}, {_kind_hint: measure,
        table_calculation: below_goal, _type_hint: number, category: table_calculation,
        expression: 'if(${prochats_opportunitytags_fact.conversion}< 0.30, ${prochats_opportunitytags_fact.conversion},null)',
        label: Below Goal, value_format: !!null '', value_format_name: percent_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: meets_goal, id: meets_goal,
            name: Meets Goal}, {axisId: below_goal, id: below_goal, name: Below Goal}],
        showLabels: false, showValues: false, maxValue: 0.8, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_colors:
      meets_goal: "#BBCAF2"
      below_goal: "#DDD9E1"
    label_color: ["#b22577"]
    x_axis_datetime_label: "%b %e"
    reference_lines: [{reference_type: range, line_value: mean, range_start: max,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#acabad", range_end: ".30", label: Goal}]
    defaults_version: 1
    hidden_fields: [prochats_opportunitytags_fact.conversion]
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 26
    col: 8
    width: 8
    height: 9
  - title: Average Response Time by Day
    name: Average Response Time by Day
    model: ruby
    explore: prochats_opportunity_fact
    type: looker_column
    fields: [aspect_superstatehours_fact.nominal_date, prochats_chat_agent_stats.avg_response]
    fill_fields: [aspect_superstatehours_fact.nominal_date]
    filters: {}
    sorts: [aspect_superstatehours_fact.nominal_date]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: meets_goal, _type_hint: number,
        category: table_calculation, expression: 'if(${prochats_chat_agent_stats.avg_response}
          <= 30, ${prochats_chat_agent_stats.avg_response}, null)', label: Meets Goal,
        value_format: !!null '', value_format_name: decimal_0}, {_kind_hint: measure,
        table_calculation: below_goal, _type_hint: number, category: table_calculation,
        expression: 'if(${prochats_chat_agent_stats.avg_response} > 30, ${prochats_chat_agent_stats.avg_response},null)',
        label: Below Goal, value_format: !!null '', value_format_name: decimal_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: meets_goal, id: meets_goal,
            name: Meets Goal}, {axisId: below_goal, id: below_goal, name: Below Goal}],
        showLabels: false, showValues: false, maxValue: 55, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_colors:
      meets_goal: "#BBCAF2"
      below_goal: "#DDD9E1"
    label_color: ["#b22577"]
    x_axis_datetime_label: "%b %e"
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#a6a4a8",
        range_end: '30', range_start: '0', label: Goal}]
    trend_lines: []
    defaults_version: 1
    hidden_fields: [prochats_chat_agent_stats.avg_response]
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 26
    col: 16
    width: 8
    height: 9
  - title: Positivity by Day
    name: Positivity by Day
    model: ruby
    explore: prochats_opportunity_fact
    type: looker_column
    fields: [aspect_superstatehours_fact.nominal_date, prochats_chat_agent_stats.avg_rate]
    fill_fields: [aspect_superstatehours_fact.nominal_date]
    filters: {}
    sorts: [aspect_superstatehours_fact.nominal_date]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: meets_goal, _type_hint: number,
        category: table_calculation, expression: 'if(${prochats_chat_agent_stats.avg_rate}
          >= 0.90, ${prochats_chat_agent_stats.avg_rate},null)', label: Meets Goal,
        value_format: !!null '', value_format_name: percent_0}, {_kind_hint: measure,
        table_calculation: below_goal, _type_hint: number, category: table_calculation,
        expression: 'if(${prochats_chat_agent_stats.avg_rate} < 0.90, ${prochats_chat_agent_stats.avg_rate},
          null)', label: Below Goal, value_format: !!null '', value_format_name: percent_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: meets_goal, id: meets_goal,
            name: Meets Goal}, {axisId: below_goal, id: below_goal, name: Below Goal}],
        showLabels: false, showValues: false, maxValue: 1.2, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    series_types: {}
    series_colors:
      meets_goal: "#BBCAF2"
      below_goal: "#DDD9E1"
    label_color: ["#b22577"]
    x_axis_datetime_label: "%b %e"
    reference_lines: [{reference_type: range, line_value: mean, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#a6a4a8",
        range_end: '1', label: Goal, range_start: ".90"}]
    defaults_version: 1
    hidden_fields: [prochats_chat_agent_stats.avg_rate]
    listen:
      Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    row: 26
    col: 0
    width: 8
    height: 9
  - name: Average Response Time - Team
    title: Average Response Time - Team
    merged_queries:
    - model: ruby
      explore: prochats_opportunity_fact
      type: table
      fields: [employee_lookup_all.name, employee_lookup_all.team]
      sorts: [employee_lookup_all.name]
      limit: 500
      query_timezone: US/Pacific
      join_fields: []
    - model: ruby
      explore: prochats_opportunity_fact
      type: looker_grid
      fields: [employee_lookup_all.team, prochats_chat_agent_stats.avg_response]
      filters:
        employee_lookup_all.team: Auroras,Charms,The Chatting Nuggets,The Goal Diggers,The
          Mad Chatters,The Night Owls,The Ruby Rebels,Explorers
      sorts: [prochats_chat_agent_stats.avg_response desc]
      limit: 500
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: unstyled
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        prochats_chat_agent_stats.avg_response: Time (sec.)
      series_column_widths:
        employee_lookup_all.team: 154
        prochats_chat_agent_stats.avg_response: 140
      series_cell_visualizations:
        prochats_chat_agent_stats.avg_response:
          is_active: false
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: employee_lookup_all.team
        source_field_name: employee_lookup_all.team
    font_size_main: '10'
    orientation: auto
    style_employee_lookup_all.team: "#3A4245"
    show_title_employee_lookup_all.team: false
    title_placement_employee_lookup_all.team: above
    value_format_employee_lookup_all.team: ''
    style_prochats_chat_agent_stats.avg_response: "#3A4245"
    show_title_prochats_chat_agent_stats.avg_response: true
    title_override_prochats_chat_agent_stats.avg_response: Average Response Time
    title_placement_prochats_chat_agent_stats.avg_response: above
    value_format_prochats_chat_agent_stats.avg_response: ''
    show_comparison_prochats_chat_agent_stats.avg_response: false
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    hidden_fields: [employee_lookup_all.name]
    series_types: {}
    sorts: [employee_lookup_all.team desc]
    listen:
    - Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    -
    row: 11
    col: 16
    width: 3
    height: 5
  - name: Average First Response Time - Team
    title: Average First Response Time - Team
    merged_queries:
    - model: ruby
      explore: prochats_opportunity_fact
      type: looker_column
      fields: [employee_lookup_all.name, employee_lookup_all.team]
      sorts: [employee_lookup_all.name]
      limit: 500
      query_timezone: US/Pacific
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields: []
    - model: ruby
      explore: prochats_opportunity_fact
      type: looker_grid
      fields: [employee_lookup_all.team, prochats_chat_agent_stats.avg_first_response]
      filters:
        employee_lookup_all.team: Auroras,Explorers,The Night Owls,The Mad Chatters,The
          Goal Diggers,The Chatting Nuggets,The Ruby Rebels,Charms,-NULL
      sorts: [prochats_chat_agent_stats.avg_first_response desc]
      limit: 500
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: unstyled
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        prochats_chat_agent_stats.avg_first_response: Time (Sec.)
      series_column_widths:
        employee_lookup_all.team: 154
        prochats_chat_agent_stats.avg_first_response: 141
      series_cell_visualizations:
        prochats_chat_agent_stats.avg_first_response:
          is_active: false
      series_text_format:
        prochats_chat_agent_stats.avg_first_response:
          align: right
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: employee_lookup_all.team
        source_field_name: employee_lookup_all.team
    font_size_main: '10'
    orientation: auto
    show_title_employee_lookup_all.team: false
    title_override_prochats_chat_agent_stats.avg_first_response: Average First Response
      Time
    series_types: {}
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    hidden_fields: [employee_lookup_all.name]
    listen:
    - Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    -
    row: 11
    col: 12
    width: 3
    height: 5
  - name: Conversion - Team
    title: Conversion - Team
    merged_queries:
    - model: ruby
      explore: prochats_opportunity_fact
      type: table
      fields: [employee_lookup_all.name, employee_lookup_all.team]
      sorts: [employee_lookup_all.name]
      limit: 500
      query_timezone: US/Pacific
      join_fields: []
    - model: ruby
      explore: prochats_opportunity_fact
      type: looker_grid
      fields: [employee_lookup_all.team, prochats_opportunitytags_fact.conversion]
      filters:
        employee_lookup_all.team: Explorers,The Goal Diggers,The Ruby Rebels,Charms,The
          Chatting Nuggets,Auroras,The Night Owls,The Mad Chatters,-NULL
        aspect_superstatehours_fact.nominal_date: 30 days
      sorts: [prochats_opportunitytags_fact.conversion desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: unstyled
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_column_widths:
        employee_lookup_all.team: 168
        prochats_opportunitytags_fact.conversion: 140
      series_cell_visualizations:
        prochats_opportunitytags_fact.conversion:
          is_active: false
      series_types: {}
      defaults_version: 1
      join_fields:
      - field_name: employee_lookup_all.team
        source_field_name: employee_lookup_all.team
    font_size_main: '10'
    orientation: auto
    show_title_employee_lookup_all.team: false
    title_override_prochats_opportunitytags_fact.conversion: Team Conversion
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    hidden_fields: [employee_lookup_all.name]
    series_types: {}
    listen:
    - Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    -
    row: 11
    col: 8
    width: 3
    height: 5
  - name: Positivity - Team
    title: Positivity - Team
    merged_queries:
    - model: ruby
      explore: prochats_opportunity_fact
      type: table
      fields: [employee_lookup_all.name, employee_lookup_all.team]
      limit: 500
      query_timezone: US/Pacific
      join_fields: []
    - model: ruby
      explore: prochats_opportunity_fact
      type: looker_grid
      fields: [employee_lookup_all.team, prochats_chat_agent_stats.avg_rate]
      filters:
        employee_lookup_all.team: "-NULL,-Learning & Development"
        prochats_chat_agent_stats.avg_rate: NOT NULL
        employee_lookup_all.title: "%Chat%"
        aspect_superstatehours_fact.nominal_date: 30 days
      sorts: [prochats_chat_agent_stats.avg_rate desc]
      limit: 500
      column_limit: 50
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: unstyled
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      series_labels:
        prochats_chat_agent_stats.avg_rate: Positivity
      series_column_widths:
        employee_lookup_all.team: 154
        prochats_chat_agent_stats.avg_rate: 136
      series_cell_visualizations:
        prochats_chat_agent_stats.avg_rate:
          is_active: false
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: '1'
      font_size_main: '10'
      orientation: auto
      style_employee_lookup_all.team: "#3A4245"
      show_title_employee_lookup_all.team: true
      title_override_employee_lookup_all.team: "."
      title_placement_employee_lookup_all.team: above
      value_format_employee_lookup_all.team: ''
      show_comparison_prochats_chat_agent_stats.avg_rate: false
      comparison_style_prochats_chat_agent_stats.avg_rate: value
      comparison_show_label_prochats_chat_agent_stats.avg_rate: true
      comparison_label_placement_prochats_chat_agent_stats.avg_rate: below
      comp_value_format_prochats_chat_agent_stats.avg_rate: ''
      style_prochats_chat_agent_stats.avg_rate: "#3A4245"
      show_title_prochats_chat_agent_stats.avg_rate: true
      title_override_prochats_chat_agent_stats.avg_rate: "."
      title_placement_prochats_chat_agent_stats.avg_rate: above
      value_format_prochats_chat_agent_stats.avg_rate: ''
      hidden_fields: []
      hidden_points_if_no: []
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      series_types: {}
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: false
      comparison_type: value
      comparison_reverse_colors: false
      show_comparison_label: true
      join_fields:
      - field_name: employee_lookup_all.team
        source_field_name: employee_lookup_all.team
    font_size_main: '10'
    orientation: auto
    show_title_employee_lookup_all.team: false
    title_override_prochats_chat_agent_stats.avg_rate: Team Positivity
    hidden_fields: [employee_lookup_all.name]
    series_types: {}
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    listen:
    - Name: employee_lookup_all.name
      Date: aspect_superstatehours_fact.nominal_date
    -
    row: 11
    col: 4
    width: 3
    height: 5
  - title: Average Rate Per Item
    name: Average Rate Per Item
    model: chat_specialist_master
    explore: chat_scorecard_rollup
    type: looker_column
    fields: [chat_scorecard_rollup.q_id, sum_of_q_score, sum_of_q_count]
    sorts: [chat_scorecard_rollup.q_id]
    limit: 500
    dynamic_fields: [{measure: sum_of_q_score, based_on: chat_scorecard_rollup.q_score,
        expression: '', label: Sum of Q Score, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: sum_of_q_count, based_on: chat_scorecard_rollup.q_count, expression: '',
        label: Sum of Q Count, type: sum, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: percentage, _type_hint: number, category: table_calculation,
        expression: "${sum_of_q_score}/${sum_of_q_count}", label: Percentage, value_format: !!null '',
        value_format_name: percent_0}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percentage, id: percentage,
            name: Percentage}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: 'Question #'
    series_types: {}
    series_colors:
      percentage: "#BBCAF2"
    label_color: ["#b22577"]
    defaults_version: 1
    hidden_fields: [sum_of_q_score, sum_of_q_count]
    listen:
      Name: primarylink.name
      Date: chat_scorecard_rollup.date_date
    row: 0
    col: 11
    width: 13
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 11
    height: 6
  filters:
  - name: Name
    title: Name
    type: field_filter
    default_value: Jordan Hoffhines
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: chat_specialist_master
    explore: topbar
    listens_to_filters: []
    field: primarylink.name
  - name: Date
    title: Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: chat_specialist_master
    explore: chat_scorecard_rollup
    listens_to_filters: []
    field: chat_scorecard_rollup.date_date
