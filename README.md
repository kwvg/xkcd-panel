# xkcd-panel

Arch Linux package that modifies `xfce4-panel` to allow build-time user-defined tray spacing

### Build Instructions

```
git clone https://github.com/sartbimpson/xkcd-panel
cd xkcd-panel
chmod +x updatepkg.sh && ./updatepkg.sh # To ensure that you are running on top of the latest xfce4-panel
makepkg -s
```

### Change default spacing

Default spacing is `8` and is used when `_XKCD_SPACING_VALUE` is not set. To set your own preferred value, run.

```
export _XKCD_SPACING_VALUE=n
```

### What does this have to do with xkcd?

Nothing ;)
