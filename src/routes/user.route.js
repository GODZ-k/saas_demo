import { Router } from "express";
import { createSubdomain, deployRestaurant } from "../controller/user.controller.js";

const router = Router()


router.route('/create/subdomain').post(createSubdomain)
router.route('/generate/restartant').post(deployRestaurant)


export default router