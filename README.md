# platform-org

Reusable GitHub Actions workflows and IssueOps automation owned by the
platform team. Service repos call these by reference — they do not copy them.

## What's here (v1)

- `.github/workflows/reusable-ci.yml` — build, lint, test. Guardrails
  (SAST, secret scanning, dependency review, container scan, policy-as-code)
  land here in the next iteration.

## Versioning

While this is being stood up, service repos pin to `@main`. Once stable,
we'll cut a `v1` tag and services pin to `@v1` instead, so a platform change
doesn't land on every service the instant it merges.
