# Set plugins installation directory for path of script
PLUGINS_DIR="$(cd "$(dirname "$0")" && pwd)/plugins"

# Set plugins to install with their branch or revision to clone
PLUGINS="catppuccin/tmux:--branch=v2.3.1"
PLUGINS="tmux-plugins/tmux-sensible:--revision=25cb91f42d020f675bb0a2ce3fbd3a5d96119efa ${PLUGINS}"
PLUGINS="tmux-plugins/tmux-cpu:--revision=bcb110d754ab2417de824c464730c412a3eb2769 ${PLUGINS}"
PLUGINS="tmux-plugins/tmux-battery:--branch=v2.0.0 ${PLUGINS}"
PLUGINS="tmux-plugins/tmux-copycat:--revision=d7f7e6c1de0bc0d6915f4beea5be6a8a42045c09 ${PLUGINS}"
PLUGINS="tmux-plugins/tmux-yank:--revision=acfd36e4fcba99f8310a7dfb432111c242fe7392 ${PLUGINS}"
PLUGINS="tmux-plugins/tmux-pain-control:--revision=32b760f6652f2305dfef0acd444afc311cf5c077 ${PLUGINS}"

main() {
  for plugin in ${PLUGINS}; do
    IFS=':' read -r repository branch_or_revision <<EOF
$plugin
EOF
    mkdir -p "${PLUGINS_DIR}/$(dirname "${repository}")"
    git clone --depth=1 --filter=tree:0 ${branch_or_revision} \
      "https://github.com/${repository}.git" "${PLUGINS_DIR}/${repository}" \
      2>&1 | tee | head -1
  done
}

main

exit $?
