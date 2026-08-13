# GitHub Copilot Instructions

## Red-Green Test-Driven Development

When making code changes in this repository, follow a red-green TDD workflow:

1. **Red**: Write or update a test that captures the desired behavior or reproduces the bug. Run the test (locally or let CI run it) and confirm it **fails**.
2. **Green**: Write the minimal code change needed to make the failing test pass. Re-run the test (locally or in CI) and confirm it now **passes**.
3. **Refactor**: With the passing test as a safety net, clean up the implementation as needed, re-running tests to ensure they remain green.

Do not write the fix before the failing test exists. This ensures every change is backed by a test that would have caught the issue, and that the fix is verifiably correct.