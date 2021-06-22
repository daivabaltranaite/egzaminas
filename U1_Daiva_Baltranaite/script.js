function validateForm() {
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    if (name && email) {
        const success = document.getElementById('success')
        success.innerText = `Ačiū! Sėkmingai užregistravote naujienlaiškį el. paštu: ${email}.`
        success.className = 'success'
    } else {
        alert('Būtina užpildyti visus laukus!');
    }
}


window.validateForm = validateForm;
