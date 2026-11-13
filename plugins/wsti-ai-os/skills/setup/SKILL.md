---
name: setup
description: Connects Claude Code to the WSTI board. Use when someone asks to set up, connect or sign in to the WSTI board, or when a board tool says it needs sign-in.
---

# Set up the WSTI board

Take the person through these steps one at a time, in plain words. Wait for each step to finish before the next.

1. **Install.** Skip this if you are reading this skill, since the plugin is already installed. Otherwise, in Claude Code type:
   - `/plugin marketplace add wsti-studio/wsti-plugins`
   - `/plugin install wsti-ai-os@wsti`

   Then close Claude Code and open it again.
2. **Sign in.** Type `/mcp`, pick `plugin:wsti-ai-os:board`, and choose to sign in. A browser page opens: sign in with your wsti.org.au Google account and click Allow. Come back to Claude Code.
3. **Test.** Ask "anything for me?". Claude checks the board and says what is waiting, or that nothing is.

Once you have dealt with an item, say "dismiss it" and Claude takes it off your list (the `dismiss` tool, the same as Dismiss in Needs me on the web board).

If step 3 says the board needs sign-in, repeat step 2. If it cannot reach the board at all, tell Gylles.
