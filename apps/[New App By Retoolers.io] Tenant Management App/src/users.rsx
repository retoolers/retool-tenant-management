<Screen
  id="users"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle={null}
  title="Users"
  urlSlug={null}
  uuid="9ef32fad-5c57-4acd-bc81-7f61268c9cf8"
>
  <Folder id="GET">
    <RESTQuery
      id="api_get_user"
      notificationDuration={4.5}
      query="userprofile/list"
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="api_get_group_list"
      query="groups/list"
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
    />
    <RESTQuery
      id="api_get_roles"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="roles/list"
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="POST">
    <RESTQuery
      id="api_post_invite_user"
      body={
        '[{"key":"fullNameOwner","value":"{{ name_input.value }}"},{"key":"email","value":"{{ email_input.value }}"},{"key":"role","value":"{{ role_select.value }}"}]'
      }
      bodyType="json"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="userprofile/invite"
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      type="POST"
    >
      <Event
        event="success"
        method="setHidden"
        params={{}}
        pluginId="modal_add_user"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="api_add_member_to_team"
      body={
        '[{"key":"MemberIds","value":"{{ table1.selectedRows.map(row => row.id) }}"}]'
      }
      bodyType="json"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="groups/{{ select2.value }}/add-members"
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        event="success"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "success",
              title: "Success",
              description:
                "Added {{ table1.selectedRows.length }} selected user(s) to a team",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setHidden"
        params={{}}
        pluginId="modal_add_user_to_team"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{}}
        pluginId="api_get_user"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="PATCH">
    <RESTQuery
      id="api_update_user_profile"
      bodyType="json"
      notificationDuration={4.5}
      resourceDisplayName="AirFusion Tenant Configuration API"
      resourceName="1fb0010c-aa81-44d6-8cd9-ba529aa9a123"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PATCH"
    />
  </Folder>
  <Function
    id="_userdata"
    funcBody={include("../lib/_userdata.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="transformer2"
    funcBody={include("../lib/transformer2.js", "string")}
    runBehavior="debounced"
  />
  <Include src="./modal_add_user.rsx" />
  <Include src="./modal_add_user_to_team.rsx" />
  <Include src="./modal_archive_user.rsx" />
  <Include src="./modal_change_user_role.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Include src="./modalFrame2.rsx" />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Breadcrumbs
      id="breadcrumbs1"
      itemMode="static"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="00030"
        icon="line/interface-home-3"
        iconPosition="right"
        itemType="page"
        label=" "
        screenTargetId="home"
      />
      <Option id="00032" itemType="page" label="Users" screenTargetId="users" />
    </Breadcrumbs>
    <Button
      id="btn_invite_user"
      iconBefore="line/interface-user-add"
      text="Invite a user"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modal_add_user"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="btn_add_user_team"
      disabled="{{ !table1.selectedRow }}"
      iconBefore="line/interface-user-multiple"
      styleVariant="outline"
      text="Add to team"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modal_add_user_to_team"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="btn_change_user_role"
      disabled="{{ !table1.selectedRow }}"
      iconBefore="line/interface-security-shield-2"
      styleVariant="outline"
      text="Change user role"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modal_change_user_role"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="btn_archive_user"
      disabled="{{ !table1.selectedRow }}"
      iconBefore="line/interface-content-archive"
      styleVariant="outline"
      text="Archive a user"
    >
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="modal_archive_user"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="btn_reset_password"
      disabled="{{ !table1.selectedRow }}"
      iconBefore="line/interface-login-key"
      styleVariant="outline"
      text="Reset password"
    />
    <TextInput
      id="textInput1"
      iconBefore="line/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search users..."
    />
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="00030" label="All Status" value="All Status" />
      <Option id="00031" label="Active" value="active" />
      <Option id="00032" label="Inactive" value="inactive" />
    </Select>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ _userdata.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="78fc2"
      rowHeight="small"
      rowSelection="multiple"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="a418d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="user"
        label="User"
        placeholder="Enter value"
        position="center"
        size={110.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="bad48"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={203.875}
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
        id="7744b"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="role"
        label="Role"
        placeholder="Select option"
        position="center"
        size={126}
        summaryAggregationMode="none"
      />
      <Column
        id="ed9d5"
        alignment="left"
        cellTooltip={'{{ item == true ? "In  Active" : "Active" }}'}
        cellTooltipMode="custom"
        editable="false"
        format="boolean"
        formatOptions={{
          trueIcon: "bold/interface-geometric-circle",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-geometric-circle",
          falseColor: "{{ theme.surfaceSecondary }}",
        }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Enter value"
        position="center"
        size={91}
        summaryAggregationMode="none"
      />
      <Column
        id="007de"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="40782"
        alignment="left"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="teams"
        label="Teams"
        placeholder="Select options"
        position="center"
        size={153}
        summaryAggregationMode="none"
      />
      <Column
        id="752f7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastActive"
        label="Last active"
        placeholder="Enter value"
        position="center"
        size={191}
        summaryAggregationMode="none"
      />
      <Column
        id="8e5bd"
        alignment="center"
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-edit-write-2",
          buttonColor: "rgba(135, 76, 76, 0)",
        }}
        groupAggregationMode="none"
        label="Edit"
        placeholder="Enter value"
        position="center"
        referenceId="edit"
        size={100}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          event="clickCell"
          method="show"
          pluginId="modalFrame2"
          type="widget"
          waitMs={0}
          waitType="debounce"
        />
      </Column>
      <Column
        id="69221"
        alignment="center"
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-security-shield-2",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        label="Change Role"
        placeholder="Enter value"
        position="center"
        referenceId="changeRole"
        size={235}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          event="clickCell"
          method="show"
          pluginId="modal_change_user_role"
          type="widget"
          waitMs={0}
          waitType="debounce"
        />
      </Column>
      <Column
        id="7cab7"
        alignment="center"
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-login-key",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        label="Reset Password"
        placeholder="Enter value"
        position="center"
        referenceId="resetPassword"
        size={147}
        summaryAggregationMode="none"
        valueOverride=" "
      />
      <Column
        id="16381"
        alignment="center"
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-content-archive",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        label="Archive"
        placeholder="Enter value"
        position="center"
        referenceId="archive"
        size={100}
        summaryAggregationMode="none"
        textColor="rgba(255, 0, 0, 1)"
        valueOverride=" "
      />
      <Column
        id="78fc2"
        alignment="left"
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
          pluginId="table1"
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
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
