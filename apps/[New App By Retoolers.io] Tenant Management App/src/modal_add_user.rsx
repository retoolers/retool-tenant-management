<ModalFrame
  id="modal_add_user"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle1" value="### Invite New User" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
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
        pluginId="modal_add_user"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      value="Send an invitation to add a new user to your organization"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
      showFooterBorder={false}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="name_input"
          formDataKey="fullNameOwner"
          label="Full Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <TextInput
          id="email_input"
          formDataKey="email"
          label="Email Address"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="role_select"
          emptyMessage="No options"
          formDataKey="role"
          itemMode="static"
          label="Role"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="00030" value="Option 1" />
          <Option id="00031" value="Option 2" />
          <Option id="00032" value="Option 3" />
        </Select>
        <Multiselect
          id="team_multiselect"
          emptyMessage="No options"
          formDataKey="team"
          itemMode="static"
          label="Team (Optional)"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select options"
          showSelectionIndicator={true}
          wrapTags={true}
        >
          <Option id="00030" value="Option 1" />
          <Option id="00031" value="Option 2" />
          <Option id="00032" value="Option 3" />
        </Multiselect>
        <Switch id="switch1" formDataKey="status" label="Active" />
      </Body>
      <Footer>
        <Button id="button6" styleVariant="outline" text="Cancel" />
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Send Invitation"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="api_post_invite_user"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
