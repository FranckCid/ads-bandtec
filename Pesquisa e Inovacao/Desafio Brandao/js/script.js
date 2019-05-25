const app = {
    medicines: [],

    add() {
        const name = document.getElementById('name').value
        const from = document.getElementById('from').value
        const to = document.getElementById('to').value
        const hour = document.getElementById('hour').value
        const days = {
            dom: document.getElementById('dom').checked,
            seg: document.getElementById('seg').checked,
            ter: document.getElementById('ter').checked,
            qua: document.getElementById('qua').checked,
            qui: document.getElementById('qui').checked,
            sex: document.getElementById('sex').checked,
            sab: document.getElementById('sab').checked,
        }

        const getMed = {
            name,
            from,
            to,
            hour,
            days,
        }

        const validation = validate('empty', Object.values(getMed))

        if (validation) {
            this.medicines.push(getMed)
            this.list();
        } else {
            this.error('Não deixe campos em branco.')
        }

    },

    list() {
        const medParent = document.getElementById('med-parent')
        medParent.innerHTML = ''
        this.medicines.reverse().forEach(m => medParent.innerHTML += Medicine(m))
    },

    error(msg) {
        const message = document.getElementById('error-message')
        message.innerHTML = `${msg}`
    },

    remove(medName){
        const index = this.medicines.indexOf(medName)
        console.log(index)
        this.medicines.splice(index, 1)
        this.list()
    }
}