<ModalFrame
  id="modal_archive_user"
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
    <Text id="modalTitle4" value="### Archive Users" verticalAlign="center" />
    <Button
      id="modalCloseButton4"
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
        pluginId="modal_archive_user"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text6"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="Are you sure you want to archive {{ table1.selectedRows.length }} user(s)? Archived users will lose access to the system but their data will be retained."
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button id="button9" styleVariant="outline" text="Cancel" />
    <Button id="button8" text="Archive Users" />
  </Footer>
</ModalFrame>
