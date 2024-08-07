// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import dateFormat, { masks } from "dateformat"

console.log('%cconsole.log', 'color: pink;')

document.addEventListener("turbo:frame-missing", (event) => {
  const { detail: { response, visit } } = event
  event.preventDefault()
  visit(response)
})
