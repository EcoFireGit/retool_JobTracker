<App>
  <Include src="./functions.rsx" />
  <Include src="./src/drawerFrame1.rsx" />
  <Include src="./src/drawerFrame2.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text1"
      horizontalAlign="center"
      imageWidth="fill"
      value="# EcoF:re Mission-Driven Impact Framework"
      verticalAlign="center"
    />
    <Text
      id="text2"
      horizontalAlign="center"
      value="### Hello {{ current_user.firstName || 'friend' }}! 👋"
      verticalAlign="center"
    />
    <Include src="./src/container10.rsx" />
    <Container
      id="container2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="containerTitle2" value="#### Jobs" verticalAlign="center" />
      </Header>
      <View id="cc2c6" viewKey="View 1">
        <Table
          id="table5"
          actionsOverflowPosition={2}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readJobListQuery.data }}"
          defaultFilters={{
            0: {
              ordered: [
                { id: "eb25e" },
                { columnId: "9e8e8" },
                { operator: "isFalse" },
                { value: "" },
                { disabled: false },
              ],
            },
            1: {
              ordered: [
                { id: "edd5d" },
                { columnId: "ef505" },
                { operator: "is" },
                { value: "{{ select20.value }}" },
                { disabled: false },
              ],
            },
            2: {
              ordered: [
                { id: "e55ae" },
                { columnId: "3ead8" },
                { operator: "is" },
                { value: "{{ select21.value }}" },
                { disabled: false },
              ],
            },
            3: {
              ordered: [
                { id: "2d39f" },
                { columnId: "6aec8" },
                { operator: "<=" },
                {
                  value:
                    "{{ numberInput7.value > 0? numberInput7.value : 10000 }}",
                },
                { disabled: false },
              ],
            },
            4: {
              ordered: [
                { id: "fcbac" },
                { columnId: "74e29" },
                { operator: "is" },
                { value: "{{ select22.value }}" },
                { disabled: false },
              ],
            },
            5: {
              ordered: [
                { id: "3088d" },
                { columnId: "c2953" },
                { operator: "<=" },
                {
                  value:
                    "{{ moment(date6.value).add(1,\"days\").format('YYYY-MM-DD') }}",
                },
                { disabled: false },
              ],
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[
            { object: { columnId: "c2953", direction: "asc" } },
            { object: { columnId: "72820", direction: "desc" } },
            { object: { columnId: "be82a", direction: "asc" } },
          ]}
          dynamicRowHeights={true}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          hidden=""
          overflowType="pagination"
          primaryKeyColumnId="91d96"
          rowBackgroundColor={
            '{{ currentRow.Next_Actionable_Step.includes("WAITING") ? "#e2de4b" : \'#ffffff\' }}'
          }
          rowHeight="small"
          searchTerm="{{ textInput25.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{}}
          toolbarPosition="bottom"
        >
          <Column
            id="91d96"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Job_ID"
            label="Job id"
            placeholder="Enter value"
            position="center"
            size={80.09375}
          />
          <Column
            id="9e8e8"
            alignment="left"
            editable="true"
            editableOptions={{ alwaysShowCheckboxes: true }}
            format="boolean"
            groupAggregationMode="none"
            key="Job_Done"
            label="Job done?"
            placeholder="Enter value"
            position="center"
            size={80}
            summaryAggregationMode="none"
            tooltip="Mark job as done"
          >
            <Event
              event="clickCell"
              method="confetti"
              params={{ ordered: [] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="be82a"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="Job_Title"
            label="Job to be done"
            placeholder="Enter value"
            position="center"
            size={103.890625}
            summaryAggregationMode="none"
            tooltip="Envisioned outcome"
          />
          <Column
            id="e5bab"
            alignment="left"
            cellTooltipMode="overflow"
            editable="true"
            editableOptions={{ object: {} }}
            format="multilineString"
            groupAggregationMode="none"
            key="Key_Steps"
            label="Job notes"
            placeholder="Enter value"
            position="center"
            size={255.953125}
            summaryAggregationMode="none"
            tooltip="Key steps, deadlines, misc. notes"
          />
          <Column
            id="cee96"
            alignment="left"
            editable="true"
            format="string"
            groupAggregationMode="none"
            key="Next_Actionable_Step"
            label="Next step"
            placeholder="Enter value"
            position="center"
            size={106.328125}
            summaryAggregationMode="none"
            tooltip="Next actionable step"
          />
          <Column
            id="74e29"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="Owner_NextStep"
            label="Owner"
            optionList={{
              manualData: [
                { ordered: [{ value: "Urvashi Batra" }] },
                { ordered: [{ value: "Shrikant Kshirsagar" }] },
              ],
              mode: "mapped",
              mappedData: "{{ getOwnersTransformer.value }}",
              valueByIndex: "{{ item }}",
              labelByIndex: "{{ _.startCase(item) }}",
            }}
            placeholder="Select option"
            position="center"
            size={93.671875}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="72820"
            alignment="right"
            editable="false"
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            label="Impact"
            placeholder="Enter value"
            position="center"
            referenceId="Job_Points"
            size={85.59375}
            summaryAggregationMode="none"
            tooltip="How much does this job contribute towards realizing your mission?"
            valueOverride="{{ getJobPtsTransformer.value[currentSourceRow.Job_ID] }}"
          />
          <Column
            id="c2953"
            alignment="left"
            editable="true"
            format="date"
            groupAggregationMode="none"
            key="Deadline_Job_NextStep"
            label="Do date"
            placeholder="Enter value"
            position="center"
            size={107.671875}
            summaryAggregationMode="none"
            tooltip="Date on which you intend to do the next step"
          />
          <Column
            id="6aec8"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="HrsReqd_NextStep"
            label="Hrs reqd"
            placeholder="Enter value"
            position="center"
            size={109.3125}
            summaryAggregationMode="none"
            tooltip="For next step"
          />
          <Column
            id="ef505"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="FocusLevelReqd_NextStep"
            label="Focus reqd"
            optionList={{
              mode: "mapped",
              mappedData: "{{ returnHMLTransformer.value }}",
              valueByIndex: "{{ item }}",
              labelByIndex: "{{ _.startCase(item) }}",
            }}
            placeholder="Select option"
            position="center"
            size={103.640625}
            summaryAggregationMode="none"
            tooltip="For next step"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="3ead8"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="JoyLevel_NextStep"
            label="Joy level"
            optionList={{
              mode: "mapped",
              mappedData: "{{ returnHMLTransformer.value }}",
              valueByIndex: "{{ item }}",
              labelByIndex: "{{ _.startCase(item) }}",
            }}
            placeholder="Select option"
            position="center"
            size={111.703125}
            summaryAggregationMode="none"
            tooltip="For next step"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Action id="83650" icon="bold/interface-edit-copy" label="Duplicate">
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{ currentSourceRow.Job_ID}}" }] }}
              pluginId="JobToBeDuplicatedIDVariable"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "{{  uuid.v4() }}" }] }}
              pluginId="DuplicatedJobIDVariable"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="duplicateJobQuery"
              type="datasource"
              waitMs="100"
              waitType="debounce"
            />
          </Action>
          <Action id="ac78a" icon="bold/interface-delete-bin-2" label="Delete">
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteJobQuery"
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
              pluginId="table5"
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
              pluginId="table5"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="25ada"
            icon="bold/interface-text-formatting-list-bullets"
            label="Group by"
            type="groupBy"
          />
          <ToolbarButton
            id="49f07"
            icon="bold/interface-arrows-data-trasnfer-vertical"
            label="Sort"
            type="sort"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateJobListQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Form
      id="form5"
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
          id="formTitle5"
          tooltipText="1 job can map to multiple PIs and vice versa."
          value="#### Map Job to PI"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select32"
          data="{{ getUndoneJobsTransformer.value }}"
          emptyMessage="No options"
          formDataKey="Job_Title"
          label="Job to be done"
          labelCaption="Select job to map to a PI"
          labelPosition="top"
          labels="{{ item.Job_Title }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.Job_ID }}"
        />
        <Select
          id="select33"
          data="{{ getPIsTransformer.value }}"
          emptyMessage="No options"
          formDataKey="QPI_Name"
          label="PI name"
          labelCaption="Select PI that the job will impact"
          labelPosition="top"
          labels="{{ item.QPI_Name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.QPI_ID }}"
        />
        <NumberInput
          id="numberInput27"
          currency="USD"
          formDataKey="QPI_Impact"
          inputValue={0}
          label="PI improvement"
          labelCaption="How much will this PI change if job is completed?"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <NumberInput
          id="numberInput26"
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
          value="{{ 
  table9.data.find(row => row.QPI_ID === select33.value)?.QPI_Target 
}}"
        />
        <TextInput
          id="textInput34"
          formDataKey="Job2QPI_Notes"
          label="Mapping notes"
          labelPosition="top"
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton5"
          submit={true}
          submitTargetId="form5"
          text="Map Job to PI"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addJob2QPIsQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Form
      id="form4"
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
        <Text id="formTitle4" value="#### Add a job" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput18"
          formDataKey="Job_Title"
          label="Job to be done"
          labelCaption="Envisioned outcome"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea10"
          autoResize={true}
          formDataKey="Key_Steps"
          label="Job notes"
          labelCaption="Key steps, deadlines, misc. notes"
          minLines={2}
          placeholder="Enter value"
        />
        <TextInput
          id="textInput20"
          formDataKey="Next_Actionable_Step"
          label="Next step (actionable)"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select10"
          data="{{ getOwnersTransformer.value }}"
          emptyMessage="No options"
          formDataKey="Owner_NextStep"
          label="Owner for next step"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <Date
          id="date4"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="Deadline_Job_NextStep"
          iconBefore="bold/interface-calendar"
          label="Do date (next step)"
          labelCaption="Date on which you intend to do the next step"
          labelPosition="top"
        />
        <NumberInput
          id="numberInput1"
          currency="USD"
          formDataKey="HrsReqd_NextStep"
          inputValue={0}
          label="Hrs reqd (next step)"
          labelPosition="top"
          placeholder="Enter value"
          showStepper={true}
          value={0}
        />
        <Select
          id="select12"
          data="{{ returnHMLTransformer.value }}"
          emptyMessage="No options"
          formDataKey="FocusLevelReqd_NextStep"
          label="Focus reqd (next step)"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <Select
          id="select11"
          data="{{ returnHMLTransformer.value }}"
          emptyMessage="No options"
          formDataKey="JoyLevel_NextStep"
          label="Joy level (next step)"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton4"
          submit={true}
          submitTargetId="form4"
          text="Add Job"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addJobQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Form
      id="form9"
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
          id="formTitle9"
          value="#### Update QBO current value"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select29"
          data="{{ getQBONamesTransformer.value }}"
          emptyMessage="No options"
          formDataKey="QBO_Name"
          label="QBO name"
          labelPosition="top"
          labels="{{ _.startCase(item) }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item }}"
        />
        <NumberInput
          id="numberInput16"
          currency="USD"
          formDataKey="QBO_Current_Value"
          inputValue={0}
          label="Current value"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value="{{ table3.data.find(row => row.QBO_Name === select29.value)?.QBO_Current_Value }}"
        />
      </Body>
      <Footer>
        <Button id="formButton9" submitTargetId="form9" text="Submit Update">
          <Event
            event="click"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateQBOValueQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateQBOValueQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Include src="./src/container7.rsx" />
    <Container
      id="container9"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle9"
          value="#### Basic Settings"
          verticalAlign="center"
        />
      </Header>
      <View id="85d55" viewKey="View 1">
        <Table
          id="table8"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readOwnersQuery.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="1dc69"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="1dc69"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Owner_ID"
            label="Owner id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="f6fc7"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="Owner_Name"
            label="Owner name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action id="e30c0" icon="bold/interface-delete-bin-2" label="Delete">
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteOwnerQuery"
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
              pluginId="table8"
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
              pluginId="table8"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateOwnersQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Select
          id="select16"
          captionByIndex=""
          colorByIndex=""
          data="{{ listAllGoogleSheetsQuery.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Select a Google Sheet to store your data"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="1XZBmoWHSZE26I0qb72orPrIInwBdnf2fdRQHNsTgUpg"
          values="{{ item.id }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="listAllGoogleSheetsQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Form
          id="form6"
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
              id="formTitle6"
              value="#### Add an owner"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextInput
              id="textInput24"
              formDataKey="Owner_Name"
              inputTooltip="Enter letters and numbers only"
              label="Owner name"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
            />
          </Body>
          <Footer>
            <Button
              id="formButton6"
              submit={true}
              submitTargetId="form6"
              text="Add Owner"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addOwnerssQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="### Mission Statement"
          verticalAlign="center"
        />
      </Header>
      <View id="19b64" viewKey="View 1">
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readMissionStatementQuery.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          dynamicColumnProperties={{ formatByIndex: "auto" }}
          dynamicRowHeights={true}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="304fa"
          rowHeight="small"
          showFooter={true}
          showHeader={true}
          style={{}}
          toolbarPosition="bottom"
        >
          <Column
            id="304fa"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Mission_ID"
            label="Mission ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="c0193"
            alignment="left"
            editable="true"
            format="multilineString"
            groupAggregationMode="none"
            key="Mission_Statement"
            label="Mission"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            tooltip="A company's mission statement is a concise declaration of its purpose and the reason for its existence. It can outline its goals and values to guide decision-making and inspire employees and stakeholders."
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateMissionStatementQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Spacer id="spacer1" />
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          tooltipText="Quantificable Progress Indicators"
          value="#### QBOs"
          verticalAlign="center"
        />
      </Header>
      <View id="cc2c6" viewKey="View 1">
        <Table
          id="table3"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readQBOsQuery.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[
            { object: { columnId: "71523", direction: "desc" } },
            { object: { columnId: "2bd96", direction: "asc" } },
            { object: { columnId: "73c5a", direction: "asc" } },
            { object: { columnId: "7ba31", direction: "desc" } },
          ]}
          dynamicColumnProperties={{ formatByIndex: "auto" }}
          dynamicRowHeights={true}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="48f23"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          showSummaryRow={true}
          toolbarPosition="bottom"
        >
          <Column
            id="48f23"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="QBO_ID"
            label="Qbo id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="912fa"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            groupAggregationMode="none"
            key="QBO_Name"
            label="QBO name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="1df41"
            alignment="left"
            editable="true"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="QBO_Unit"
            label="QBO unit"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="aedb4"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="QBO_Beginning_Value"
            label="Beginning value"
            placeholder="Enter value"
            position="center"
            size={125}
            summaryAggregationMode="none"
          />
          <Column
            id="ece7d"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="false"
            key="QBO_Current_Value"
            label="Current value"
            placeholder="Enter value"
            position="center"
            size={156}
            summaryAggregationMode="none"
          />
          <Column
            id="92713"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="QBO_Target"
            label="Target value"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="73c5a"
            alignment="left"
            editable="true"
            format="date"
            groupAggregationMode="none"
            key="QBO_Deadline"
            label="Deadline"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="7ba31"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="false"
            key="QBO_Points"
            label="QBO points"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="sum"
          />
          <Column
            id="5e877"
            alignment="left"
            editable="true"
            format="multilineString"
            groupAggregationMode="none"
            hidden="false"
            key="QBO_Notes"
            label="Notes"
            placeholder="Enter value"
            position="center"
            size={134}
            summaryAggregationMode="none"
          />
          <Column
            id="d55ab"
            alignment="right"
            editable="false"
            format="percent"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="average"
            hidden="false"
            label="Current % Progress"
            placeholder="Enter value"
            position="center"
            referenceId="progress"
            size={115}
            summaryAggregationMode="average"
            valueOverride="{{ (currentSourceRow.QBO_Current_Value-currentSourceRow.QBO_Beginning_Value)/(currentSourceRow.QBO_Target-currentSourceRow.QBO_Beginning_Value) }}"
          />
          <Column
            id="01922"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="percent"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="average"
            hidden="false"
            label="Expected % Progress"
            placeholder="Enter value"
            position="center"
            referenceId="expectedProgress"
            size={100}
            summaryAggregationMode="average"
            valueOverride="{{ getQBOExpectedPercentProgressTransformer.value[currentSourceRow.QBO_ID][1] }}"
          />
          <Action id="0a578" icon="bold/interface-delete-bin-2" label="Delete">
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteQBOQuery"
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
              pluginId="table3"
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
              pluginId="table3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="9231c"
            icon="bold/interface-arrows-data-trasnfer-vertical"
            label="Sort"
            type="sort"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateQBOsQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Form
          id="form2"
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
            <Text id="formTitle2" value="#### Add QBO" verticalAlign="center" />
          </Header>
          <Body>
            <TextInput
              id="textInput30"
              formDataKey="QBO_Name"
              label="QBO name"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
            />
            <TextInput
              id="textInput31"
              formDataKey="QBO_Unit"
              label="QBO unit"
              labelPosition="top"
              placeholder="Enter value"
            />
            <NumberInput
              id="numberInput17"
              currency="USD"
              formDataKey="QBO_Beginning_Value"
              inputValue={0}
              label="Beginning value"
              labelPosition="top"
              placeholder="Enter value"
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <NumberInput
              id="numberInput18"
              currency="USD"
              formDataKey="QBO_Current_Value"
              inputValue={0}
              label="Current value"
              labelPosition="top"
              placeholder="Enter value"
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <NumberInput
              id="numberInput19"
              currency="USD"
              formDataKey="QBO_Target"
              inputValue={0}
              label="QBO target"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <Date
              id="date10"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              formDataKey="QBO_Deadline"
              iconBefore="bold/interface-calendar"
              label="QBO Deadline"
              labelPosition="top"
              required={true}
            />
            <NumberInput
              id="numberInput20"
              currency="USD"
              formDataKey="QBO_Points"
              inputValue={0}
              label="QBO points"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <TextArea
              id="textArea11"
              autoResize={true}
              formDataKey="QBO_Notes"
              label="QBO notes"
              minLines={2}
              placeholder="Enter value"
            />
          </Body>
          <Footer>
            <Button
              id="formButton2"
              submit={true}
              submitTargetId="form2"
              text="Add QBO"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addQBOQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
        <Chart
          id="chart1"
          chartType="pie"
          colorArray={[
            "#11B5AE",
            "#4046CA",
            "#F68512",
            "#DE3C82",
            "#7E84FA",
            "#72E06A",
          ]}
          colorArrayDropDown={[
            "#11B5AE",
            "#4046CA",
            "#F68512",
            "#DE3C82",
            "#7E84FA",
            "#72E06A",
          ]}
          colorInputMode="colorArrayDropDown"
          datasource=""
          datasourceMode="source"
          gradientColorArray={[
            ["0.0", "{{ theme.canvas }}"],
            ["1.0", "{{ theme.primary }}"],
          ]}
          hoverTemplate="%{percent}<extra></extra>"
          hoverTemplateMode="source"
          labelData="{{table3.data.map(item => item.QBO_Name)}}"
          legendPosition="none"
          lineColor="{{ theme.surfacePrimary }}"
          lineWidth={2}
          pieDataHole={0.4}
          selectedPoints="[]"
          textTemplate="%{label}"
          textTemplateMode="source"
          textTemplatePosition="outside"
          title="QBO Point distribution"
          valueData="{{table3.data.map(item => item.QBO_Points)}}
"
        />
      </View>
    </Container>
    <Container
      id="container12"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="containerTitle12" value="#### PIs" verticalAlign="center" />
      </Header>
      <View id="4e7b0" viewKey="View 1">
        <Table
          id="table9"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readQPIsQuery.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "e0433", direction: "asc" } }]}
          dynamicRowHeights={true}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="4ddb7"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          showSummaryRow={true}
          toolbarPosition="bottom"
        >
          <Column
            id="4ddb7"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="QPI_ID"
            label="Qpi id"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="38028"
            alignment="left"
            editable="true"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="QPI_Name"
            label="PI name"
            placeholder="Enter value"
            position="center"
            size={272}
            summaryAggregationMode="none"
          />
          <Column
            id="33682"
            alignment="left"
            editable="true"
            format="string"
            groupAggregationMode="none"
            key="QPI_Unit"
            label="PI unit"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="a947e"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="QPI_Beginning_Value"
            label="Beginning value"
            placeholder="Enter value"
            position="center"
            size={129}
          />
          <Column
            id="5bdd6"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="QPI_Target"
            label="Target value"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="e0433"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="date"
            groupAggregationMode="none"
            key="QPI_Deadline"
            label="Deadline"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="65702"
            alignment="left"
            editable="true"
            format="multilineString"
            groupAggregationMode="none"
            key="QPI_Notes"
            label="Notes"
            placeholder="Enter value"
            position="center"
            size={99}
            summaryAggregationMode="none"
          />
          <Column
            id="8b903"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="percent"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="average"
            label="Current % Progress"
            placeholder="Enter value"
            position="center"
            referenceId="currentProgress"
            size={100}
            summaryAggregationMode="average"
            valueOverride="{{ getQPICurrentPercentProgressTransformer.value[currentSourceRow.QPI_ID][1] }}"
          />
          <Action id="fc896" icon="bold/interface-delete-bin-2" label="Delete">
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteQPIQuery"
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
              pluginId="table9"
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
              pluginId="table9"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="ef25b"
            icon="bold/interface-arrows-data-trasnfer-vertical"
            label="Sort"
            type="sort"
          />
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateQPIsQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Form
          id="form7"
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
            <Text id="formTitle7" value="#### Add PI" verticalAlign="center" />
          </Header>
          <Body>
            <TextInput
              id="textInput32"
              formDataKey="QPI_Name"
              label="PI name"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
            />
            <TextInput
              id="textInput33"
              formDataKey="QPI_Unit"
              label="PI unit"
              labelPosition="top"
              placeholder="Enter value"
            />
            <NumberInput
              id="numberInput21"
              currency="USD"
              formDataKey="QPI_Beginning_Value"
              inputValue={0}
              label="Beginning value"
              labelPosition="top"
              placeholder="Enter value"
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <NumberInput
              id="numberInput22"
              currency="USD"
              formDataKey="QPI_Target"
              inputValue={0}
              label="Target value"
              labelPosition="top"
              placeholder="Enter value"
              required={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <Date
              id="date11"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              formDataKey="QPI_Deadline"
              iconBefore="bold/interface-calendar"
              label="PI deadline"
              labelPosition="top"
              required={true}
            />
            <TextArea
              id="textArea12"
              autoResize={true}
              formDataKey="QPI_Notes"
              label="Notes"
              minLines={2}
              placeholder="Enter value"
            />
          </Body>
          <Footer>
            <Button
              id="formButton7"
              submit={true}
              submitTargetId="form7"
              text="Add PI"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addQPIsQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Include src="./src/container11.rsx" />
    <Container
      id="container13"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle13"
          value="#### Jobs to PIs mapping"
          verticalAlign="center"
        />
      </Header>
      <View id="59e76" viewKey="View 1">
        <Select
          id="select25"
          data="{{ getUndoneJobsTransformer.value }}"
          emptyMessage="No options"
          label="Filter by job"
          labelPosition="top"
          labels="{{ item.Job_Title }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showClear={true}
          showSelectionIndicator={true}
          values="{{ item.Job_ID }}"
        />
        <Select
          id="select26"
          data="{{ getPIsTransformer.value }}"
          emptyMessage="No options"
          label="Filter by PI"
          labelPosition="top"
          labels="{{ item.QPI_Name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showClear={true}
          showSelectionIndicator={true}
          values="{{ item.QPI_ID }}"
        />
        <Table
          id="table10"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ readJob2QPIsQuery.data }}"
          defaultFilters={{
            0: {
              ordered: [
                { id: "a2430" },
                { columnId: "dd61b" },
                { operator: "is" },
                { value: "{{ select26.value }}" },
                { disabled: false },
              ],
            },
            1: {
              ordered: [
                { id: "8153d" },
                { columnId: "94824" },
                { operator: "is" },
                { value: "{{ select25.value }}" },
                { disabled: false },
              ],
            },
            2: {
              ordered: [
                { id: "4573d" },
                { columnId: "d2854" },
                { operator: "isFalse" },
                { value: "" },
                { disabled: false },
              ],
            },
          }}
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[
            { object: { columnId: "201f1", direction: "asc" } },
            { object: { columnId: "dd61b", direction: "asc" } },
          ]}
          dynamicRowHeights={true}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="41fc7"
          rowHeight="small"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="41fc7"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Job_QPI_Mapping_ID"
            label="Job qpi mapping id"
            placeholder="Enter value"
            position="center"
            size={124.015625}
            summaryAggregationMode="none"
          />
          <Column
            id="94824"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="false"
            key="Job_Title"
            label="Job to be done"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getUndoneJobsTransformer.value }}",
              valueByIndex: "{{ item.Job_ID }}",
              labelByIndex: "{{ item.Job_Title }}",
            }}
            placeholder="Select option"
            position="center"
            size={334.75}
            summaryAggregationMode="none"
          />
          <Column
            id="dd61b"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="QPI_Name"
            label="PI name"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getPIsTransformer.value }}",
              valueByIndex: "{{ item.QPI_ID }}",
              labelByIndex: "{{ item.QPI_Name }}",
            }}
            placeholder="Select option"
            position="center"
            size={348.515625}
            summaryAggregationMode="none"
          />
          <Column
            id="296ea"
            alignment="right"
            editable="false"
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            label="PI Target"
            placeholder="Enter value"
            position="center"
            referenceId="piTarget"
            size={174.8125}
            summaryAggregationMode="none"
            valueOverride="{{ 
  table9.data.find(row => row.QPI_ID === currentSourceRow.QPI_Name)?.QPI_Target 
}}"
          />
          <Column
            id="9e865"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            label="PI Unit"
            placeholder="Enter value"
            position="center"
            referenceId="piUnit"
            size={178.4375}
            summaryAggregationMode="none"
            valueOverride="{{ 
  table9.data.find(row => row.QPI_Name === currentSourceRow.QPI_Name)?.QPI_Unit 
}}"
          />
          <Column
            id="d2854"
            alignment="left"
            editable="true"
            format="boolean"
            groupAggregationMode="none"
            hidden="true"
            label="Job Done"
            placeholder="Enter value"
            position="center"
            referenceId="jobDone"
            size={70.296875}
            summaryAggregationMode="none"
            valueOverride="{{ table5.data.find(row => row.Job_ID === currentSourceRow.Job_Title).Job_Done }}"
          />
          <Column
            id="b8dc9"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="QPI_Impact"
            label="PI impact"
            placeholder="Enter value"
            position="center"
            size={176.71875}
            summaryAggregationMode="none"
          />
          <Column
            id="575a0"
            alignment="left"
            editable="true"
            format="multilineString"
            groupAggregationMode="none"
            key="Job2QPI_Notes"
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
              pluginId="deleteJob2QPIsQuery"
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
              pluginId="table10"
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
              pluginId="table10"
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
            pluginId="updateJob2QPIsQuery"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
  </Frame>
</App>
