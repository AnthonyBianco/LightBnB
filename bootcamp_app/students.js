const { Client } = require('pg');
const limit = process.argv[3] || 5;

const cohort = process.argv[2]

// pool.query(queryString, values); use this in client query

const client = new Client({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// client.connect(() => {
//   client.query(`
//     SELECT *
//     FROM students;
//   `)
//   .then(function(res) {
//     console.log(res)
//   })
// });

client.connect(() => {
  client.query(`
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name = $1
  LIMIT $2;
  `,[cohort,limit])
  //   client.query(`
  //   SELECT *
  //   FROM students;
  // `)
  .then(res => {
    // console.log(res);
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    })  
  })
  .catch(err => console.error('query error', err.stack));
});


// console.log(res.rows);

  // WHERE cohorts.name = ${cohort}
