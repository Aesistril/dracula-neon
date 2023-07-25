# Dracula Neon
A set of patches and build files to make popular themes compatible with my new slightly modified color scheme Dracula Neon
# Installation
1. Clone this repository
```
git clone --depth 1 https://github.com/Aesistril/dracula-neon
```
2. Run `build.sh` which downloads all the themes and applies Dracula Neon patches
3. All the theme files are inside the newly created "build" directory. Directory and file names are pretty self explanatory and everything you need to do after this step can be done in the GUI
4. You also need to install [Dracula KDE](https://store.kde.org/p/1370871) as your Plasma style
## Additional installation
- If you want the merging titlebar please make sure to install the [Window Title Applet](https://store.kde.org/p/1274218) and the [Window Buttons Applet](https://store.kde.org/p/1272871) then add `build/startup-scripts/kwin-fullscreen-borders.sh` as a login script in Settings > Startup and Shutdown > Autostart
# Upstreaming
I'm currently daily driving this theme and I'm still making changes to it whenever I see something which doesn't fit in. But when everything eventually settles down I'm planning to open a pull request in vinceliuice/Graphite-kde-theme
# Issues
- No GTK theme (yet)
- A really stupid way of patching things
- Right click menu background being #3D3D3D instead of #282A36 (I couldn't figure it out help me)
