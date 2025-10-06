<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showHeader={true}
  showHeaderBorder={false}
  width="72px"
>
  <Header>
    <HTML
      id="html1"
      css={include("./lib/html1.css", "string")}
      html={include("./lib/html1.html", "string")}
    />
  </Header>
  <Body>
    <Navigation
      id="navigation1"
      appTargetByIndex=""
      captionByIndex=""
      data=""
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels=""
      orientation="vertical"
      parentKeyByIndex=""
      persistUrlParamsByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      style={{
        fontSize: "12px",
        fontWeight: "400",
        fontFamily: "Open Sans",
        highlightBackground: "rgba(85, 237, 225, 0.4)",
        highlightText: "primary",
      }}
      tooltipByIndex=""
    >
      <Option
        id="00030"
        icon="line/interface-home-3"
        iconPosition="left"
        itemType="page"
        label="Home"
        screenTargetId="home"
      />
      <Option
        id="00031"
        icon="line/interface-user-multiple"
        iconPosition="left"
        itemType="page"
        label="Users"
        screenTargetId="users"
      />
      <Option
        id="00032"
        icon="line/money-graph-arrow-user-increase"
        iconPosition="left"
        itemType="page"
        label="Teams"
      />
      <Event
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
    <HTML
      id="html2"
      css={include("./lib/html2.css", "string")}
      html={include("./lib/html2.html", "string")}
    />
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
