const {
  Pool,
  Client
} = require("pg");
const cors = require('cors');
const express = require("express"),
  PORT = process.env.port || 5000;
//Contains the username:dbms and password:dbms @ a localhost server with a certain port no.
const connectionString =
  "postgressql://postgres:root@localhost:5432/hospital_bill_system";

const client = new Client({
  connectionString: connectionString,
});
client.connect();

const app = express();
app.use(cors());
app.use(express.json());

//Creating a client instance, making it constant and calling for the
//connectionString and mapping it to the earlier declared connectionString

app.post("/", async (request, response) => {
  try {
    const {
      query
    } = request.body;
    const data = await client.query(query);
    response.send(data);
  } catch (err) {
    console.log(err);
    response.send("ERROR");
  }
});

app.listen(PORT, () => {
  console.log("started");
});