{{flutter_js}}
{{flutter_build_config}}

const loading = document.createElement('div');
document.body.appendChild(loading);
loading.textContent = "Just a sec..";
_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    loading.textContent = "Just a sec..";
    const appRunner = await engineInitializer.initializeEngine({
        useColorEmoji: true,
    });

    loading.textContent = "Just a sec..";
    await appRunner.runApp();
  }
});