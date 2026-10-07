#!/usr/bin/env bash
# Announce a lane assignment on the coordinating issue.
# Usage: lane-claim.sh <issue> <lane> <clone>
#   lane: fe | be        clone: 1-prime-swapmeet | 2-prime-swapmeet
set -euo pipefail

issue="${1:?usage: lane-claim.sh <issue> <lane> <clone>}"
lane="${2:?usage: lane-claim.sh <issue> <lane> <clone>}"
clone="${3:?usage: lane-claim.sh <issue> <lane> <clone>}"

gh issue comment "$issue" --body "[coord] lane ${lane} -> ${clone}"
echo "assigned lane ${lane} to ${clone} on #${issue}"
