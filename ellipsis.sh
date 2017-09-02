#!/usr/bin/env bash
#
# tbjers/dot-pantheon-terminal ellipsis package

pkg.install() {
  case $(os.platform) in
    linux)
      if utils.cmd_exists gsettings; then
        gsettings set org.pantheon.terminal.settings palette "#000000:#E06C75:#98c379:#d19a66:#61aeee:#c678dd:#56b6c2:#abb2bf:#5c6370:#e06c75:#98c379:#d19a66:#62afee:#c678dd:#56b6c2:#ffffff"
        gsettings set org.pantheon.terminal.settings foreground "#abb2bf"
        gsettings set org.pantheon.terminal.settings background "#282c34"
        gsettings set org.pantheon.terminal.settings follow-last-tab "true"
      fi
      ;;
  esac
}
