<ModalFrame
  id="modalFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle6" value="### Edit User" verticalAlign="center" />
    <Button
      id="modalCloseButton6"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="run"
        params={{ map: { src: "table1.selectRow(currentRow.index)" } }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text7"
      value="Update user information and settings"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Form
      id="form4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="5px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
    >
      <Header>
        <Text id="formTitle4" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput2"
          label="Full Name"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table1.selectedRow.user }}"
        />
        <TextInput
          id="textInput3"
          label="Email Address"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ table1.selectedRow.email }}"
        />
        <Select
          id="select4"
          captionByIndex=""
          colorByIndex=""
          data=""
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Role"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ table1.selectedRow.role }}"
          values=""
        >
          <Option
            id="492ef"
            disabled={false}
            hidden={false}
            label="Viewer"
            value="Viewer"
          />
          <Option
            id="1ebd7"
            disabled={false}
            hidden={false}
            label="Editor"
            value="Editor"
          />
          <Option
            id="24daf"
            disabled={false}
            hidden={false}
            label="Admin"
            value="Admin"
          />
        </Select>
        <Select
          id="select5"
          data="{{ api_get_group_list.data.value }}"
          emptyMessage="No options"
          label="Teams"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.id }}"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="api_update_user_profile"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button id="button10" styleVariant="outline" text="Cancel" />
    <Button
      id="formButton4"
      submit={true}
      submitTargetId="form4"
      text="Save Changes"
    />
  </Footer>
</ModalFrame>
