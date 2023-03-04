import { Router } from "express";
const router = Router();

const users = [{
    id: 1,
    name: "John Doe"
}]

const fakeSpacecraft = [
    {id: 1, name: "Enterprise"},
    {id: 2, name: "Enterprise2"}
]

/**
 * @openapi
 * /api/users:
 *   get:
 *     description: Get all users
 *     responses:
 *       200:
 *         description: Returns all users.
 */


router.get("/api/users", (req, res) => {
    res.send({ data: users});
});

/**
 * @openapi
 * /api/users:
 *   post:
 *     description: Create a new user
 *     responses:
 *       200:
 *         description: Returns the user that was created.
 */
router.post("/api/users", (req, res) => {
    const user = req.body;
    users.push(user);
    res.send({ data: user})
})


router.get("/api/spacecrafts/:spacecraftid", (req, res) => {
    const { spacecraftid } = req.params;

    res.send(fakeSpacecraft.find(spacecraft => spacecraft.id === parseInt(spacecraftid)))


});

export default router;