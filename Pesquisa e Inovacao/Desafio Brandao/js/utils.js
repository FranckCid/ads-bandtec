function validate(type, fields) {
    var valid = true
    if (type == 'empty') {
        fields.forEach(f => {
            if (f == '')
                valid = false
        })
    }

    return valid
}