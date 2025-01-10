<Container
  id="container11"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle11"
      value="#### PIs to QBOs mapping"
      verticalAlign="center"
    />
  </Header>
  <View id="59e76" viewKey="View 1">
    <Select
      id="select24"
      data="{{ getQBONamesTransformer.value }}"
      emptyMessage="No options"
      label="Filter by QBO"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="select23"
      data="{{ getQPINamesTransformer.value }}"
      emptyMessage="No options"
      label="Filter by PI"
      labelPosition="top"
      labels="{{ item }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Table
      id="table6"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ readQPIs2QBOsQuery.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "711c2" },
            { columnId: "c8f9e" },
            { operator: "is" },
            { value: "{{ select23.value }}" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "3de17" },
            { columnId: "2d0f5" },
            { operator: "is" },
            { value: "{{ select24.value }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[
        { object: { columnId: "201f1", direction: "asc" } },
        { object: { columnId: "2d0f5", direction: "asc" } },
      ]}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="c05f1"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c05f1"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="QPI_QBO_Mapping_ID"
        label="Qpi qbo mapping id"
        placeholder="Enter value"
        position="center"
        size={260.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="c8f9e"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="QPI_Name"
        label="PI name"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getQPINamesTransformer.value }}",
          valueByIndex: "{{ item }}",
          labelByIndex: "{{ item }}",
        }}
        placeholder="Select option"
        position="center"
        size={305.125}
        summaryAggregationMode="none"
      />
      <Column
        id="9e865"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="PI Target"
        placeholder="Enter value"
        position="center"
        referenceId="piTarget"
        size={75.8125}
        summaryAggregationMode="none"
        valueOverride="{{ 
  table9.data.find(row => row.QPI_Name === currentSourceRow.QPI_Name)?.QPI_Target 
}}"
      />
      <Column
        id="2d0f5"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="QBO_Name"
        label="QBO name"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getQBONamesTransformer.value }}",
          valueByIndex: "{{ item }}",
          labelByIndex: "{{ item }}",
        }}
        placeholder="Select option"
        position="center"
        size={224.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="296ea"
        alignment="right"
        editable="false"
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="QBO Target"
        placeholder="Enter value"
        position="center"
        referenceId="qboTarget"
        size={99.96875}
        summaryAggregationMode="none"
        valueOverride="{{ 
  table3.data.find(row => row.QBO_Name === currentSourceRow.QBO_Name)?.QBO_Target 
}}"
      />
      <Column
        id="9201d"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Expected_QBO_Impact"
        label="QBO impact"
        placeholder="Enter value"
        position="center"
        size={83.875}
        summaryAggregationMode="none"
        tooltip="Expected QBO impact"
      />
      <Column
        id="f5860"
        alignment="left"
        editable="true"
        format="multilineString"
        groupAggregationMode="none"
        key="QPI2QBO_Notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action id="f4000" icon="bold/interface-delete-bin-2" label="Delete">
        <Event
          event="clickAction"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteQPIs2QBOsQuery"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
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
          pluginId="table6"
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
          pluginId="table6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="b4899"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateQPIs2QBOsQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Form
      id="form8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData=""
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle8"
          value="#### Map PI to QBO"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select30"
          data="{{ getQPINamesTransformer.value }}"
          emptyMessage="No options"
          formDataKey="QPI_Name"
          label="PI name"
          labelPosition="top"
          labels="{{ item }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <NumberInput
          id="numberInput23"
          currency="USD"
          formDataKey=""
          inputValue={0}
          label="PI Target"
          labelCaption="Automatically computed"
          labelPosition="top"
          placeholder="Enter value"
          readOnly="true"
          showSeparators={true}
          showStepper={true}
          value="{{ table9.data.find(row => row.QPI_Name === select30.value)?.QPI_Target }}"
        />
        <Select
          id="select31"
          data="{{ getQBONamesTransformer.value }}"
          emptyMessage="No options"
          formDataKey="QBO_Name"
          label="QBO name"
          labelPosition="top"
          labels="{{ item }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <NumberInput
          id="numberInput24"
          currency="USD"
          formDataKey=""
          inputValue={0}
          label="QBO Target"
          labelCaption="Automatically computed"
          labelPosition="top"
          placeholder="Enter value"
          readOnly="true"
          showSeparators={true}
          showStepper={true}
          value="{{ table3.data.find(row => row.QBO_Name === select31.value)?.QBO_Target }}"
        />
        <NumberInput
          id="numberInput25"
          currency="USD"
          formDataKey="Expected_QBO_Impact"
          inputValue={0}
          label="QBO impact"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextArea
          id="textArea13"
          autoResize={true}
          formDataKey="QPI2QBO_Notes"
          label="Notes"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton8"
          submit={true}
          submitTargetId="form8"
          text="Map PI to QBO"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addQPIsQ2QBOsQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <Event
    event="click"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="addQPIsQ2QBOsQuery"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</Container>
