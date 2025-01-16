<GlobalFunctions>
  <GoogleSheetsQuery
    id="readMissionStatementQuery"
    enableTransformer={true}
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="MissionStatement"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  />
  <GoogleSheetsQuery
    id="updateMissionStatementQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="Mission_ID"
    bulkUpdateRows="{{ table1.changesetArray }}"
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="MissionStatement"
    sheetUpdate="{{ table1.changesetArray }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readMissionStatementQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="readQPIsQuery"
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="QPIs"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  />
  <GoogleSheetsQuery
    id="updateQPIsQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="QPI_ID"
    bulkUpdateRows="{{  table9.changesetArray }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="addQPIsQuery"
    actionType="append"
    enableTransformer={true}
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs"
    sheetUpdate="{{ {...form7.data,'QPI_ID':uuid.v4()} }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="returnHMLTransformer"
    funcBody={include("./lib/returnHMLTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="readJobListQuery"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="JobList"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  />
  <GoogleSheetsQuery
    id="updateJobListQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="Job_ID"
    bulkUpdateRows="{{ table5.changesetArray }}"
    confirmationMessage=""
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="JobList"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJobListQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="getJobTitlesTransformer"
    funcBody={include("./lib/getJobTitlesTransformer.js", "string")}
  />
  <Function
    id="getQBONamesTransformer"
    funcBody={include("./lib/getQBONamesTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="deleteQPIQuery"
    actionType="delete"
    confirmationMessage={'Delete QPI "{{ table9.selectedRow.QPI_Name }}"'}
    filterBy={
      '[{"key":"QPI_ID","value":"{{ table9.selectedRow.QPI_ID }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteJobQuery"
    actionType="delete"
    confirmationMessage={'Delete Job "{{ table5.selectedRow.Job_Title }}"'}
    filterBy={
      '[{"key":"Job_ID","value":"{{ table5.selectedRow.Job_ID }}","operation":"="}]'
    }
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="JobList"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJobListQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="addJobQuery"
    actionType="append"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="JobList"
    sheetUpdate="{{ {...form4.data,'Job_ID':uuid.v4()} }}"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJobListQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="getOwnersTransformer"
    funcBody={include("./lib/getOwnersTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="readJob2QPIsQuery"
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="Job2QPIs"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  />
  <GoogleSheetsQuery
    id="updateJob2QPIsQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="Job_QPI_Mapping_ID"
    bulkUpdateRows="{{ table10.changesetArray }}"
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Job2QPIs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJob2QPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteJob2QPIsQuery"
    actionType="delete"
    confirmationMessage={
      'Delete mapping "{{ table5.data.find(row => row.Job_ID === table10.selectedRow.Job_Title)?.Job_Title }} <--> {{ table9.data.find(row => row.QPI_ID === table10.selectedRow.QPI_Name)?.QPI_Name }}" ?'
    }
    filterBy={
      '[{"key":"Job_QPI_Mapping_ID","value":"{{ table10.selectedRow.Job_QPI_Mapping_ID }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Job2QPIs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJob2QPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="addJob2QPIsQuery"
    actionType="append"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Job2QPIs"
    sheetUpdate="{{ {...form5.data,'Job_QPI_Mapping_ID':uuid.v4()} }}"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJob2QPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="getJobPtsTransformer"
    funcBody={include("./lib/getJobPtsTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="listAllGoogleSheetsQuery"
    actionType="listSpreadsheets"
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    resourceTypeOverride=""
    spreadsheetId="1D31L858r7jocNXIURdsdGuix1183xSvv5zGo-tzYjZg"
  />
  <Function
    id="getDoneJobsTransformer"
    funcBody={include("./lib/getDoneJobsTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="undoDoneJobQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="Job_ID"
    bulkUpdateRows="{{ table7.changesetArray }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="JobList"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJobListQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="getQPICurrentPercentProgressTransformer"
    funcBody={include(
      "./lib/getQPICurrentPercentProgressTransformer.js",
      "string"
    )}
  />
  <GoogleSheetsQuery
    id="readOwnersQuery"
    enableTransformer={true}
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="Owners"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  />
  <GoogleSheetsQuery
    id="updateOwnersQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="Owner_ID"
    bulkUpdateRows="{{ table8.changesetArray }}"
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Owners"
    sheetUpdate="{{ table1.changesetArray }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readOwnersQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="addOwnerssQuery"
    actionType="append"
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Owners"
    sheetUpdate="{{ {...form6.data,'Owner_ID':uuid.v4()} }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readOwnersQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteOwnerQuery"
    actionType="delete"
    confirmationMessage={'Delete Owner "{{ table8.selectedRow.Owner_Name }}"'}
    filterBy={
      '[{"key":"Owner_ID","value":"{{ table8.selectedRow.Owner_ID }}","operation":"="}]'
    }
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Owners"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readOwnersQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <RetoolAIQuery
    id="chat2_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat2.messageHistory }}"
    chatInput="{{ chat2.lastMessage }}"
    customTemperature="0.5"
    defaultModelInitialized={true}
    isMultiplayerEdited={false}
    model="chatgpt-4o-latest"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    systemMessage={
      'You are an elite business strategy consultant with decades of experience across multiple industries, specializing in guiding startups and small businesses from ideation through scaling. You are advising an entrepreneur whose business mission statement is "{{ table1.data[0].Mission_Statement }}" based on cross-industry best practices. This entrepreneur has a list of jobs to be done given in the form of comma-separated values as follows: {{ getUndoneJobsTransformer.value.map(i => i.Job_Title) }}.'
    }
  />
  <GoogleSheetsQuery
    id="readQBOsQuery"
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="QBOs"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  />
  <GoogleSheetsQuery
    id="updateQBOsQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="QBO_ID"
    bulkUpdateRows="{{  table3.changesetArray }}"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QBOs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteQBOQuery"
    actionType="delete"
    confirmationMessage={'Delete QBO "{{ table3.selectedRow.QBO_Name }}"'}
    filterBy={
      '[{"key":"QBO_ID","value":"{{ table3.selectedRow.QBO_ID }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QBOs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateQBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="addQBOQuery"
    actionType="append"
    enableTransformer={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QBOs"
    sheetUpdate="{{ {...form2.data,'QBO_ID':uuid.v4()} }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="readQPIs2QBOsQuery"
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    sheetName="QPIs2QBOs"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  />
  <Function
    id="getQPINamesTransformer"
    funcBody={include("./lib/getQPINamesTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="addQPIsQ2QBOsQuery"
    actionType="append"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs2QBOs"
    sheetUpdate="{{ {...form8.data,'QPI_QBO_Mapping_ID':uuid.v4()} }}"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIs2QBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="updateQPIs2QBOsQuery"
    actionType="bulkUpdate"
    bulkUpdatePrimaryKey="QPI_QBO_Mapping_ID"
    bulkUpdateRows="{{ table6.changesetArray }}"
    notificationDuration={4.5}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs2QBOs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIs2QBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="deleteQPIs2QBOsQuery"
    actionType="delete"
    confirmationMessage={
      'Delete mapping "{{ table9.data.find(row=> row.QPI_ID === table6.selectedRow.QPI_Name)?.QPI_Name }} <--> {{ table3.data.find(row => row.QBO_ID === table6.selectedRow.QBO_Name)?.QBO_Name }}?" ?'
    }
    filterBy={
      '[{"key":"QPI_QBO_Mapping_ID","value":"{{ table6.selectedRow.QPI_QBO_Mapping_ID }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QPIs2QBOs"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQPIs2QBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <GoogleSheetsQuery
    id="updateQBOValueQuery"
    actionType="update"
    enableTransformer={true}
    filterBy={
      '[{"key":"QBO_Name","value":"{{ form9.data.QBO_Name }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="QBOs"
    sheetUpdate="{{ form9.data }}"
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
    valueFormatting="unformatted"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readQBOsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="getQBOCurrentPercentProgressTransformer"
    funcBody={include(
      "./lib/getQBOCurrentPercentProgressTransformer.js",
      "string"
    )}
  />
  <Function
    id="getQBOExpectedPercentProgressTransformer"
    funcBody={include(
      "./lib/getQBOExpectedPercentProgressTransformer.js",
      "string"
    )}
  />
  <Function
    id="getUndoneJobsTransformer"
    funcBody={include("./lib/getUndoneJobsTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="duplicateJobQuery"
    actionType="append"
    confirmationMessage={'Duplicate Job "{{ table5.selectedRow.Job_Title }}"?'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="JobList"
    sheetUpdate="{{ duplicateJobTransformer.value }}"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJobListQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="duplicateJob2QPIQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <Function
    id="duplicateJobTransformer"
    funcBody={include("./lib/duplicateJobTransformer.js", "string")}
  />
  <Function
    id="getPIsTransformer"
    funcBody={include("./lib/getPIsTransformer.js", "string")}
  />
  <Function
    id="getQBOsTransformer"
    funcBody={include("./lib/getQBOsTransformer.js", "string")}
  />
  <Function
    id="duplicateJob2QPIMappingTransformer"
    funcBody={include("./lib/duplicateJob2QPIMappingTransformer.js", "string")}
  />
  <GoogleSheetsQuery
    id="duplicateJob2QPIQuery"
    actionType="append"
    confirmationMessage={
      'Duplicate Job 2 PI mapping "{{ table5.selectedRow.Job_Title }}"?'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="SK29_Gmail"
    resourceName="1b213b36-0ff0-4716-8db0-ed0204d65e0c"
    runWhenModelUpdates={false}
    sheetName="Job2QPIs"
    sheetUpdate="{{ duplicateJob2QPIMappingTransformer.value }}"
    showSuccessToaster={false}
    spreadsheetId="{{ select16.value }}"
    transformer=""
    useRawSpreadsheetId={true}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="readJob2QPIsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </GoogleSheetsQuery>
  <State id="JobToBeDuplicatedIDVariable" />
  <State id="DuplicatedJobIDVariable" />
  <State id="JobToBeDeletedIDVariable" />
</GlobalFunctions>
