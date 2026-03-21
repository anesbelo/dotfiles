# load .profile if it exists
if [[ -r "${HOME}/.profile" ]]; then
	. "${HOME}/.profile"
fi
