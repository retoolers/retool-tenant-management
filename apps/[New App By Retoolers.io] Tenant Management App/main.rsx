<App>
  <Include src="./functions.rsx" />
  <Include src="./src/home.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./src/users.rsx" />
  <Include src="./src/splitPaneFrame1.rsx" />
</App>
