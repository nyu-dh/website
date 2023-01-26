# Adding and Editing People

## Steps

1. Find the Courses Google Sheet (in `NYU DH Website > Site Data`)
2. Edit and/or add new courses in the sheet following the [rules below](#schema-rules-and-behavior).
3. Add people image files (as needed!) to the site's `source/media/people` folder. The actual file should be named as the person's `pid`, e.g., `nyrop.jpg`
4. When you're ready, pull the updated spreadsheet data into the site build. (See: [Pulling Data](pull-data-from-google-sheets.md))


## Schema Rules and Behavior

| Column           | Required | Expects                        | Notes                                                                                                                                                                                                                                                                                           |
| :--------------- | :------- | :----------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `pid`            | ✅       | unique string                  | The persistent ID (pid) for the person.<br>SHOULD be their last name.<br>SHOULD Use '-' for spaces or hyphens in names                                                                                                                                                                          |
| `done`           | ✅       | `true` or `false`              | The person will only be published on the site if done is `true`                                                                                                                                                                                                                                 |
| `name`           | ✅       | string                         | The person's name. Nothing fancy.                                                                                                                                                                                                                                                               |
| `titles`         | ✅       | string                         | This field should be the person's "`TITLE`, `SCHOOL` or `DIVISION`"<br>DO NOT include unit (e.g., Data Services) unless the unit is _part_ of the person's title (e.g., "Manager of Data Services").<br>Add "Former NYU" to the front of any position where the person has left the institution |
| `site_roles`     | ❌       | `; ` separated list of strings | Options are `exec_com`, `affil_fac`, `proj_pi` and `fellow`                                                                                                                                                                                                                                     |
| `link`           | ❌       | https url                      | link to person's homepage, perferably on an nyu site                                                                                                                                                                                                                                            |
| `local_image`    | ❌       | unique file                    | name of the local image file within `source/media/people`.<br>MUST be `.jpg` since it will be converted                                                                                                                                                                                         |
| `original_image` | ❌       | url                            | where the downloaded local image came from, if anywhere                                                                                                                                                                                                                                         |
