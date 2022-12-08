# Adding and Editing Courses

2. Data from the spreadsheet is pulled in by the site and parsed into a YAML file for the Jekyll to use. 

## Steps

1. Find the Courses Google Sheet (in `NYU DH Website > Site Data`)
2. Edit and/or add new courses in the sheet following the [rules below](#schema-rules-and-behavior).
3. When you're ready, pull the updated spreadsheet data into the site build. (See: [Pulling Data](pull-data-from-google-sheets.md))


## Schema Rules and Behavior


| Column        | Required? | Expects | Notes |
| :------------ | :-------- | :------ | :---- |
| `pid`         | ✅ | unique string | The persistent ID (pid) for the course.<br>SHOULD be the `course number` + `season (abbv)` + `year (abbv)` |
| `done`        | ✅ | `true` or `false` | The course will only be published on the site if done is `true`. |
| `number`      | ✅ | string | The formal number (e.g. DHSS-GA.1121) of course's home dept (don't bother with cross-listed course numbers); `DEPT-SCHOOL.####` |
| `title`       | ✅ | string | The course title. Nothing fancy. |
| `semester`    | ✅ | string | The season and year when course is offered (e.g. Fall 2022) |
| `program`     | ✅ | string | The department where course is offered. Also serves as filter for 'core course' vs. 'elective course' (i.e. DHSS = core; anything else = elective)|
| `faculty`     | ✅ | string | First Name Last Name (e.g. Zach Coble). Use preferred name |
| `day`         | ✅ | string | Day of the week of the course (e.g. Monday) |
| `time`        | ✅ | string | Semi-unstructured; hh:mm-hh:mm am|pm |
| `description` | ❌ | string | What the course is about; Try to keep under 150 words |
| `url`         | ❌ | string | Link to course site; use https |
