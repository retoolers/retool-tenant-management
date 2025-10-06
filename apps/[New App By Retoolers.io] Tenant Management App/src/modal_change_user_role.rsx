<ModalFrame
  id="modal_change_user_role"
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
    <Text
      id="modalTitle3"
      value="### Change User Role"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
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
        pluginId="modal_change_user_role"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text5"
      value="Change role for {{ table1.selectedRows.length }} selected user{s}"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Form
      id="form3"
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
        <Text id="formTitle3" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="select3"
          data="{{ api_get_roles.data }}"
          emptyMessage="No options"
          label="New Role"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        />
      </Body>
      <Footer>
        <Button id="button7" styleVariant="outline" text="Cancel" />
        <Button
          id="formButton3"
          submit={true}
          submitTargetId="form3"
          text="Change Role"
        />
      </Footer>
    </Form>
  </Body>
</ModalFrame>
