const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

commandLineInput = process.argv.slice(2);
console.log("commandLineInput:", commandLineInput);
const selectedCohort = commandLineInput[0];
const selectedLimit = commandLineInput[1];
const values = [`%${selectedCohort}%`, selectedLimit]; // For sanitization - array values will replace $1 & $2 in query string below

pool
  .query(
    `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`,
    values // sanitized values passed in here
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`
      );
    });
  });
