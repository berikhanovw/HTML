let random = [];

let min = 0;
let max = 99;
let count = 30;

for (let i = 0; i < count; i++) {
  let n = Math.floor(Math.random() * (max - min + 1)) + min;
  random.push(n);
}

let table = document.getElementById("table");
let count1 = 0
for (let i = 0; i < 5; i++) {
  let tr = document.createElement("tr");

  for (let i = 0; i < 6; i++) {
    let td = document.createElement("td");
    tr.appendChild(td);
    table.appendChild(tr);
    td.textContent = random[count1++]

    if (td.innerHTML >= 50) {
        td.style.backgroundColor = "orange";
      }
  }
}

function foo() {
    let table = document.getElementById("table");
    let rows = table.querySelectorAll("tr")
    let firstRow = rows[0];
    let LastRow = rows[4]
    let number = Math.floor(Math.random() * 100);
    let secondCellContent = (firstRow.cells[0].innerHTML = number)
    let secondCellContent1 = (LastRow.cells[5].innerHTML = number)
}