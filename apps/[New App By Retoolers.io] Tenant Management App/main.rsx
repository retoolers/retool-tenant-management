<App>
  <Include src="./src/home.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./src/users.rsx" />
  <Include src="./sidebar.rsx" />
</App>
