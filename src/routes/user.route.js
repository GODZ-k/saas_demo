import { Router } from "express";
import { createSubdomain } from "../controller/user.controller.js";

const router = Router()


router.route('/create/subdomain').post(createSubdomain)


export default router