<SplitPaneFrame
  id="splitPaneFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooterBorder={false}
  showHeaderBorder={false}
  style={{ map: { background: "surfacePrimary" } }}
  width="{{ set_width.value }}"
>
  <HTML
    id="html1"
    css={include("../lib/html1.css", "string")}
    html={include("../lib/html1.html", "string")}
  >
    <Event
      event="click"
      method="openPage"
      params={{
        options: { map: { passDataWith: "urlParams" } },
        pageName: "home",
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </HTML>
  <Icon id="icon1" icon="line/interface-setting-menu-1">
    <Event
      enabled="{{set_width.value !== expand_width.value}}"
      event="click"
      method="setValue"
      params={{ map: { value: "{{ expand_width.value }}" } }}
      pluginId="set_width"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{set_width.value === expand_width.value}}"
      event="click"
      method="setValue"
      params={{ map: { value: "{{ collapse_width.value }}" } }}
      pluginId="set_width"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </Icon>
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
    retoolFileObject={{}}
    screenTargetByIndex=""
    screenTargetIdByIndex=""
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
      id="739c9"
      disabled={false}
      hidden={false}
      icon="line/interface-user-square-alternate"
      iconPosition="left"
      itemType="app"
      label="Team"
    />
    <Option
      id="d2f2b"
      disabled={false}
      hidden={false}
      icon="line/interface-security-shield-2"
      iconPosition="left"
      itemType="app"
      label="Roles"
    />
    <Option
      id="f4c6e"
      disabled={false}
      hidden={false}
      icon="line/interface-setting-cog"
      iconPosition="left"
      itemType="app"
      label="Config"
    />
    <Option
      id="38651"
      disabled={false}
      hidden={false}
      icon="line/money-graph-bar"
      iconPosition="left"
      itemType="app"
      label="Usage"
    />
    <Option
      id="825b9"
      disabled={false}
      hidden={false}
      icon="line/money-atm-card-1"
      iconPosition="left"
      itemType="app"
      label="Billing"
    />
    <Option
      id="38405"
      disabled={false}
      hidden={false}
      icon="line/shopping-building"
      iconPosition="left"
      itemType="app"
      label="Jobs"
    />
    <Option
      id="7610f"
      disabled={false}
      hidden={false}
      icon="line/interface-content-note-pad-text"
      iconPosition="left"
      itemType="app"
      label="Audit Logs"
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
</SplitPaneFrame>
