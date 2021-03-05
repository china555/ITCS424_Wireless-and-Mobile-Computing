const express = require("express");
const cors = require("cors");
const bodyParse = require("body-parser");
const app = express();

app.use(
  express.urlencoded({
    extended: true,
  })
);
app.use(cors());

app.get("/", async (req, res) => {
  res.send({ name: "china" });
});

app.listen(8000, () => {
  console.log("listen at Port 8000");
});
