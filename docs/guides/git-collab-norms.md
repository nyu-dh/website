# GitHub Collaboration Norms

The following norms are *highly recommended where possible*. One-off exceptions can of course be made especially if team-members agree. These best practices can also be edited over time with group consensus. Any updates to this doc should be made via Pull Request so that changes in process expectations are documented.

- [Issues](#issues)
- [Branches](#branches)
- [Pull Requests](#pull-requests)
- [Project Boards](#project-boards)

## Issues
### ✨ Do: Use at least one issue label.
> E.g., `bug`, `content`, `enhancement`. The available labels for this project and their descriptions are available [here](https://github.com/nyu-dh/nyu-dh.github.io/labels).

### ✨ Do: Create task lists within issues.
> This can be done by creating a markdown check box list on the issue ticket. (See: [#30](https://github.com/nyu-dh/nyu-dh.github.io/issues/30#issue-1179701978)). E.g., 
``` txt
- [ ] Unchecked list item
- [x] Checked list item
```
> Items can be checked off directly in the GUI after the list is made; you do not need to edit the original comment.

### ✨ Do: Assign and reassign issues when possible.
> Prioritize assigning issue tickets to team members. If an issue is complex and needs further discussion, assign a point-person to keep the ticket in mind and initaite check-ins. Reassign the ticket to team members for direct work once triage is complete.

### ✨ Do: Associate issues to projects.
> This will add them to the appropriate project board (see below).

## Branches

### ✨ Do: Scope the branch to a specific issue.

### ✨ Do: Include the primary issue label and issue number in the branch name.
> The convention should be `label/short-description-issue-number`.  
> E.g., 
>  - ✅ `bug/div-mobile-width-21`
>  - ✅ `content/seed-grant-update-30`
>  - ✅ `feature/news-carousel-15`
>  - ✅ `chore/dev-dependency-upgrade-63`
>  - ❌ `fix-stuff-october`

### ✨ Do: Remove branches when changes have been merged into `main`
> Note: this is done automatically if changes are merged via Pull Request.

## Pull Requests

### ✨ Do: Reference issue numbers and commit hashes.
> Your PR should concisely describe what the changes do and should link directly to relevants issues and specific commits where possible. This makes the review process much easier.

### ✨ Do: Use closing keywords.
> For example, if a PR description says `Closes #22`, Issue #22 will automatically be closed by GitHub when the PR is merged into `main`. This automation should be used whenever it's appropriate.
> (See: [GitHub Docs](https://docs.github.com/en/enterprise-cloud@latest/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword))

### ✨ Do: Consider making 'Draft' Pull Requests for review.
> This helps to collect commits for team members to look at and comment on without signaling that they are ready to be merged into the `main` branch. (See: [GitHub Instructions](https://github.blog/2019-02-14-introducing-draft-pull-requests/))

## Project Boards

### ✨ Do: Scope project boards to specific release candidates and/or sprint periods.
> E.g., "Project Name Sprint Date Start - Date End" or "Project Name v2.1.0 RC"
