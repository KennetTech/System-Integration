import express from 'express';
import swaggerUi from 'swagger-ui-express';
import swaggerJSDoc from 'swagger-jsdoc';

const app = express();

app.use(express.json());


const swaggerDefinition = {
    openAPI: "3.0.0",
    info: {
        title: "OpenAPI example API",
        version: "1.0.0",
        description: "A simple Express API that utilizes OpenAPI",
    },
};
const options = {
    swaggerDefinition,
    apis: ["./routers/*.js"],
}

app.use("/api/docs", swaggerUi.serve, swaggerUi.setup(swaggerJSDoc(options)));

import usersRouter from "./routers/usersRouter.js";
app.use(usersRouter);

app.listen(8080, () => console.log("Server is running on port", 8080));
