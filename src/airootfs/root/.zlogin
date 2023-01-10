# fix for screen readers
if grep -Fq 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh # Default Arch boot script

#region File permissions

chmod +x /usr/local/bin/paru

#endregion

startx