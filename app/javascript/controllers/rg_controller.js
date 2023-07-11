import { Controller } from '@hotwired/stimulus'
import Inputmask from 'inputmask'

export default class extends Controller {

  connect() {
    let valor = this.element.innerHTML
    if (valor == '--' || valor == '') {
    } else {
      Inputmask('99.999.999-9', {
        removeMaskOnSubmit: true
      }).mask(this.element) 
    }
    if(!this.element.innerHTML){
      this.element.innerHTML = '--'
    }
  }
}
