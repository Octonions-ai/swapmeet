#!/usr/bin/env bash
# Post a prefixed comment to the coordinating issue.
# Usage: gh-post.sh <issue> <prefix> <message...>
#   prefix is one of: "[coord]" "[lane:fe]" "[lane:be]"
set -euo pipefail

issue="${1:?usage: gh-post.sh <issue> <prefix> <message>}"
prefix="${2:?usage: gh-post.sh <issue> <prefix> <message>}"
shift 2
message="${*:?message required}"

body="${prefix} ${message}"
gh issue comment "$issue" --body "$body"
echo "posted to #${issue}: ${body}"
