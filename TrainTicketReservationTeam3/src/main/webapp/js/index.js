function show(){
	var name =  document.getElementsByName('name').value
	console.warn(name)
    }
    let passengers = [];
    const addPassenger = (ev)=>{
    	ev.preventDefault();
        let passanger = {
        	name: document.getElementsByName('inputName').value,
            age: document.getElementsByName('inputAge').value,
            gender: document.getElementsByName('inputGender').value
        }
        passengers.push(passanger);
        document.forms[0].reset();
        // document.querySelector('form').reset();

        console.warn('Added' , {passengers});
            
        let pre = document.querySelector('#msg pre');
        pre.textContent = '\n' + JSON.stringify(passengers, '\t',2)

    }
    document.addEventListener('DOMConnectLoaded', ()=>{
    document.getElementsByName('btn1').addEventListener('click', addPassenger);
});