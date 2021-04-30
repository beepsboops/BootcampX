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

pool
  .query(
    `SELECT teachers.name as teacher, cohorts.name as cohort
    FROM assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
    JOIN teachers ON teachers.id = teacher_id
    WHERE cohorts.name = '${selectedCohort}'
    GROUP BY teacher, cohort
    ORDER BY teacher;`
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  });
