const express = require("express");

const app = express();

app.get("/", async (req, res) => {
  res.json({ message: "Hello world new people" });
});

module.exports = app;
