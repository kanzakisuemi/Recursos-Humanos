import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import CpfController from "./cpf_controller"
application.register("cpf", CpfController)

import RgController from "./rg_controller"
application.register("rg", RgController)

import PisController from "./pis_controller"
application.register("pis", PisController)
