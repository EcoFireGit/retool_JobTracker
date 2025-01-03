<Container
  id="container10"
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
    <Text
      id="containerTitle10"
      value="#### Filter jobs"
      verticalAlign="center"
    />
    <TextInput
      id="textInput25"
      iconBefore="bold/interface-search"
      label="Search jobs"
      labelPosition="top"
      placeholder="Search keyword"
      showClear={true}
    />
    <Select
      id="select22"
      data="{{ getOwnersTransformer.value }}"
      emptyMessage="No options"
      label="Owner (next step)"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Date
      id="date6"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Do Date (next step)"
      labelPosition="top"
      showClear={true}
    />
    <NumberInput
      id="numberInput7"
      currency="USD"
      inputValue={0}
      label="Hrs reqd (next step)"
      labelPosition="top"
      placeholder="Hrs reqd"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <Select
      id="select20"
      data="{{ returnHMLTransformer.value }}"
      emptyMessage="No options"
      label="Focus reqd (next step)"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="select21"
      data="{{ returnHMLTransformer.value }}"
      emptyMessage="No options"
      label="Joy level (next step)"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
  </Header>
  <View id="682d2" viewKey="View 1" />
</Container>
