<ModalFrame
  id="modal_add_user_to_team"
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
    <Text
      id="modalTitle2"
      value="### Add Users to team"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
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
        pluginId="modal_add_user_to_team"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text2"
      value="Add {{ table1.selectedRows.length }} selected user(s) to a team"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Form
      id="form2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="select2"
          data="{{ api_get_group_list.data.value }}"
          emptyMessage="No options"
          label="Select Team"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Choose a team"
          showSelectionIndicator={true}
          values="{{ item.id }}"
        />
        <Text
          id="text4"
          value="Selected Users ({{ table1.selectedRows.length }})"
          verticalAlign="center"
        />
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ table1.selectedRows }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="a860c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="user"
            label="User"
            placeholder="Enter value"
            position="center"
            size={200}
            summaryAggregationMode="none"
          />
          <Column
            id="610c0"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="email"
            label="Email"
            position="center"
            size={252}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ map: { url: "mailto:{{ item }}" } }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="242f6"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="role"
            label="Role"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="2f5d6"
            alignment="left"
            format="button"
            formatOptions={{
              variant: "solid",
              iconBefore: "line/interface-delete-1",
              buttonColor: "rgba(255, 0, 0, 0)",
            }}
            groupAggregationMode="none"
            headerTextColor="rgba(255, 0, 0, 0)"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride=" "
          >
            <Event
              event="clickCell"
              method="run"
              params={{ map: { src: "table1.clearSelection()" } }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="0221a"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
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
              pluginId="table2"
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
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
        <Text
          id="text3"
          value="{{ table1.selectedRows }}"
          verticalAlign="center"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{}}
        pluginId="api_add_member_to_team"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button id="button11" styleVariant="outline" text="Cancel">
      <Event
        event="click"
        method="setHidden"
        params={{}}
        pluginId="modal_add_user_to_team"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton2"
      disabled="{{ table2.selectedRows.length === 0 }}"
      submitTargetId=""
      text="Add to Team"
    >
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="api_add_member_to_team"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
