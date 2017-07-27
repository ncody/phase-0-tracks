weekly_to_do = {
monday: ["laundry", "groceries", "water plants"],
tuesday: ["dust"],
wednesday: ["vacuum", "swiffer"],
thursday: ["Call Mom", "water plants"],
friday: {
  dinner: "Katie",
  drinks: "Sarah"
}
}


 puts weekly_to_do[:monday][1]
 puts weekly_to_do[:friday][:dinner]

 weekly_to_do[:wednesday][1] = "mop"
 puts weekly_to_do

 weekly_to_do[:thursday][0].upcase!
 puts weekly_to_do[:thursday][0]
