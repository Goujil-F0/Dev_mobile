import express from "express"
import data from "./data/eshop_data.json" with {type: "json"}


const app = express();
app.use("/images", express.static("./images"))

app.get("/categories", (req, res) => {
    res.send(data)
})

app.get("/categories/:id", (req, res) => {
    const category = data.find((c) => c.id == req.params.id);
    res.send(category);
})

app.listen(4040, () => console.log("Server Started on PORT 4040"))
