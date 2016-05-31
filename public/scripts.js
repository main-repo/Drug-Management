function edit_box() {
    document.getElementById("update").innerHTML = " edit box here";
}

function editDrug(drug) {
  console.log(drug.parentNode.parentNode.children[1])
  // alert("Drug");
}
function add_drugs(drug){
	console.log(drug.parentNode.parentNode.children[1])
}
