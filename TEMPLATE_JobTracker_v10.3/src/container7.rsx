<Container
  id="container7"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle7"
      value="#### Mission progress"
      verticalAlign="center"
    />
    <Chart
      id="barChart2"
      barGap={0.4}
      barMode="group"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title="PI % Progress"
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisGrid={true}
      yAxisRangeMax="1"
      yAxisRangeMin="0"
      yAxisRangeMode="manual"
      yAxisScale="linear"
      yAxisShowTickLabels={true}
      yAxisTickFormat=".0%"
      yAxisTickFormatMode="gui"
    >
      <Series
        id="1"
        aggregationType="none"
        colorArray={{ array: [] }}
        colorArrayDropDown={{ array: [] }}
        colorInputMode="gradientColorArray"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="manual"
        decreasingBorderColor="#000000"
        decreasingColor="#000000"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{ array: [] }}
        groupBy={{ array: [] }}
        groupByDropdownType="manual"
        groupByStyles={{}}
        hoverTemplateMode="manual"
        increasingBorderColor="#000000"
        increasingColor="#000000"
        lineColor="#000000"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor="#ffffff"
        markerBorderWidth={1}
        markerColor="rgba(11, 95, 241, 1)"
        markerSize={6}
        markerSymbol="circle"
        name="QPI % Progress"
        showMarkers={false}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={{ array: [] }}
        waterfallMeasuresMode="source"
        xData="{{ Object.values(getQPICurrentPercentProgressTransformer.value).map(r => r[0]) }}"
        xDataMode="manual"
        yAxis="y"
        yData="{{ Object.values(getQPICurrentPercentProgressTransformer.value).map(r => r[1]) }}"
        yDataMode="manual"
        zData="[1, 2, 3, 4, 5]"
        zDataMode="manual"
      />
    </Chart>
    <Chart
      id="barChart1"
      barGap={0.4}
      barMode="overlay"
      legendPosition="none"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title="QBO % Progress"
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxisGrid={true}
      yAxisRangeMax="1"
      yAxisRangeMin="0"
      yAxisRangeMode="manual"
      yAxisScale="linear"
      yAxisShowTickLabels={true}
      yAxisTickFormat=".0%"
      yAxisTickFormatMode="gui"
    >
      <Series
        id="1"
        aggregationType="none"
        colorArray={{ array: [] }}
        colorArrayDropDown={{ array: [] }}
        colorInputMode="gradientColorArray"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="manual"
        decreasingBorderColor="#000000"
        decreasingColor="#000000"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{ array: [] }}
        groupBy={{ array: [] }}
        groupByDropdownType="manual"
        groupByStyles={{}}
        hoverTemplateMode="manual"
        increasingBorderColor="#000000"
        increasingColor="#000000"
        lineColor="#000000"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor="#ffffff"
        markerBorderWidth={1}
        markerColor="rgba(237, 160, 12, 1)"
        markerSize={6}
        markerSymbol="circle"
        name="QBOsCurrentProgress"
        showMarkers={false}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={{ array: [] }}
        waterfallMeasuresMode="source"
        xData="{{ Object.keys(getQBOCurrentPercentProgressTransformer.value) }}"
        xDataMode="manual"
        yAxis="y"
        yData="{{ Object.values(getQBOCurrentPercentProgressTransformer.value) }}"
        yDataMode="manual"
        zData="[1, 2, 3, 4, 5]"
        zDataMode="manual"
      />
      <Series
        id="2"
        aggregationType="none"
        colorArray={{ array: [] }}
        colorArrayDropDown={{ array: [] }}
        colorInputMode="gradientColorArray"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasourceMode="manual"
        decreasingBorderColor="#000000"
        decreasingColor="#000000"
        filteredGroups={null}
        filteredGroupsMode="source"
        gradientColorArray={{ array: [] }}
        groupBy={{ array: [] }}
        groupByDropdownType="manual"
        groupByStyles={{}}
        hoverTemplateMode="manual"
        increasingBorderColor="#000000"
        increasingColor="#000000"
        lineColor="#000000"
        lineDash="solid"
        lineShape="linear"
        lineUnderFillMode="none"
        lineWidth={2}
        markerBorderColor="#ffffff"
        markerBorderWidth={1}
        markerColor="rgba(232, 190, 42, 0.47)"
        markerSize={6}
        markerSymbol="circle"
        name="QBOsExpectedProgress"
        showMarkers={false}
        textTemplateMode="manual"
        type="bar"
        waterfallBase={0}
        waterfallMeasures={{ array: [] }}
        waterfallMeasuresMode="source"
        xData="{{ Object.values(getQBOExpectedPercentProgressTransformer.value).map(r => r[0]) }}"
        xDataMode="manual"
        yAxis="y"
        yData="{{ Object.values(getQBOExpectedPercentProgressTransformer.value).map(r => r[1]) }}"
        yDataMode="manual"
        zData="[1, 2, 3, 4, 5]"
        zDataMode="manual"
      />
    </Chart>
  </Header>
  <View id="e471e" viewKey="View 1">
    <Date
      id="date7"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Filter done jobs by date"
      labelPosition="top"
      showClear={true}
      value="{{ new Date() }}"
    />
    <TextInput
      id="textInput35"
      iconBefore="bold/interface-search"
      label="Search job"
      labelPosition="top"
      placeholder="Search keyword"
      showClear={true}
    />
    <Table
      id="table7"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getDoneJobsTransformer.value }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "cca9d" },
            { columnId: "b5e88" },
            { operator: "is" },
            { value: "{{ date7.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="bb434"
      rowHeight="small"
      searchTerm="{{ textInput35.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      showSummaryRow={true}
      toolbarPosition="bottom"
    >
      <Column
        id="bb434"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Job_ID"
        label="Job id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e0c83"
        alignment="left"
        editable="true"
        format="boolean"
        groupAggregationMode="none"
        key="Job_Done"
        label="Job done?"
        placeholder="Enter value"
        position="center"
        size={78}
        summaryAggregationMode="none"
      />
      <Column
        id="d7317"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Job_Title"
        label="Job to be done"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b5e88"
        alignment="left"
        editable="true"
        format="date"
        groupAggregationMode="none"
        hidden="false"
        key="Deadline_Job_NextStep"
        label="Done date"
        placeholder="Enter value"
        position="center"
        size={108}
        summaryAggregationMode="none"
      />
      <Column
        id="e1985"
        alignment="left"
        cellTooltipMode="overflow"
        editable="true"
        format="multilineString"
        groupAggregationMode="none"
        hidden="false"
        key="Key_Steps"
        label="Job notes"
        placeholder="Enter value"
        position="center"
        size={140}
        summaryAggregationMode="none"
      />
      <Column
        id="2aad1"
        alignment="left"
        editable="true"
        format="string"
        groupAggregationMode="none"
        hidden="false"
        key="Next_Actionable_Step"
        label="Next actionable step"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="01612"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Owner_NextStep"
        label="Owner next step"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="11459"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="JoyLevel_NextStep"
        label="Joy level next step"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="45c7f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="true"
        key="HrsReqd_NextStep"
        label="Hrs reqd next step"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="a32a5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="FocusLevelReqd_NextStep"
        label="Focus level reqd next step"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="66ba5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="Impact"
        placeholder="Enter value"
        position="center"
        referenceId="Job_Points"
        size={100}
        summaryAggregationMode="sum"
        valueOverride="{{ getJobPtsTransformer.value[currentSourceRow.Job_ID] }}"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table7"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="undoDoneJobQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
