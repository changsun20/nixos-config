#!/usr/bin/env nu

# Cleans up historical generations and garbage for Nix/NixOS system and user profiles.
#
# Parameters:
#   days (string): The number of days of historical generations to keep.
export def main [
    days: string # The number of days to keep, e.g., "7"
] {
    # Construct the duration string for the --older-than flag, e.g., "7d"
    let duration = $"($days)d"

    print $"--- 1. Wiping system profile history, keeping last ($duration) ---"
    # Wipe system profile history as root
    sudo nix profile wipe-history --older-than $duration --profile /nix/var/nix/profiles/system
    print $"--- System history wiped ---"
    print ""

    print $"--- 2. Collecting system garbage as root ---"
    # Run garbage collection as root to delete all unused packages
    sudo nix-collect-garbage --delete-old
    print $"--- System garbage collected ---"
    print ""

    print $"--- 3. Collecting user garbage ---"
    # Run garbage collection as the current user for home-manager profiles
    nix-collect-garbage --delete-old
    print $"--- User garbage collected ---"
    print ""

    print "✅ Cleanup complete!"
}
