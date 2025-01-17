{{flutter_js}}
{{flutter_build_config}}

const loading = document.createElement('div');
const loadingText = "Just a sec..";
document.body.appendChild(loading);
loading.textContent = loadingText;
_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    loading.textContent = loadingText;
    const appRunner = await engineInitializer.initializeEngine({
        useColorEmoji: true,
    });

    loading.textContent = loadingText;
    await appRunner.runApp();
  }
});