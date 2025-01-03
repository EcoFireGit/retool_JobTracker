<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="0"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
  width="small"
>
  <Header>
    <Image
      id="image1"
      altText="EcoF:re"
      horizontalAlign="center"
      retoolStorageFileId="7356b3e0-cd36-4910-b93a-3bcc3eb1a706"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolStorageFileId"
      tooltipText="www.ecofire.life"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            { url: "https://www.ecofire.life" },
            { options: { ordered: [{ newTab: true }] } },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Image>
  </Header>
  <Body>
    <Navigation
      id="navigation2"
      itemMode="static"
      orientation="vertical"
      retoolFileObject={{ ordered: [] }}
    >
      <Option
        id="65066"
        icon="bold/interface-setting-tool-box"
        iconPosition="left"
        itemType="custom"
        label="Jobs"
        tooltip="Jobs"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              { src: "container10.scrollIntoView({'behavior':'smooth'})" },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="d75a1"
        caption="Mission Progress"
        disabled={false}
        hidden={false}
        icon="bold/shopping-business-startup"
        iconPosition="left"
        itemType="custom"
        label="Mission Progress"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              { src: "container7.scrollIntoView({'behavior':'smooth'})" },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="8fa63"
        disabled={false}
        hidden={false}
        icon="bold/interface-setting-cog"
        iconPosition="left"
        itemType="custom"
        label="Settings"
        tooltip="Settings"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              { src: "container9.scrollIntoView({'behavior':'smooth'})" },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="c915e"
        icon="bold/travel-map-flag"
        iconPosition="left"
        itemType="custom"
        label="Mission"
        tooltip="Mission"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              { src: "container1.scrollIntoView({'behavior':'smooth'})" },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="93d26"
        icon="bold/programming-web-steps-number"
        iconPosition="left"
        itemType="custom"
        label="QBOs & PIs"
        tooltip="QBOs & PIs"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              { src: "container3.scrollIntoView({'behavior':'smooth'})" },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="ef790"
        disabled={false}
        hidden={false}
        icon="bold/mail-chat-bubble-oval-alternate"
        iconPosition="left"
        itemType="custom"
        label="Jija"
        tooltip="Jija"
      >
        <Event
          event="click"
          method="run"
          params={{ ordered: [{ src: "drawerFrame1.show()" }] }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </Navigation>
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
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
