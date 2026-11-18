#!/bin/sh
# SessionStart: warns when the board is not signed in. Signed out, the list_new_for_me hook fails without a word, so
# new DMs and mentions go unseen (18 Nov 2026). Prints nothing when the board is connected or claude is not found.
command -v claude >/dev/null 2>&1 || exit 0
status=$(claude mcp get plugin:wsti-ai-os:board 2>/dev/null)
case "$status" in
  *"Needs authentication"*)
    printf '%s\n' '{"systemMessage":"WSTI board is not signed in, so new DMs and mentions will not show. Type /mcp, pick plugin:wsti-ai-os:board and sign in.","hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"The WSTI board is not signed in, so new DMs and mentions cannot reach this session. If the person asks about the board, tell them to type /mcp, pick plugin:wsti-ai-os:board and sign in."}}'
    ;;
esac
exit 0
