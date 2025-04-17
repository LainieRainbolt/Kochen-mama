function create_dialog(_messages){
	if(instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0,0,0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Michael de Leone": c_yellow,
	"Hildegard": c_aqua,
	"Koch": c_red,
	"Schoepfkelle" : c_red
}

welcome_dialog = [
{
	name: "Michael de Leone",
	msg: "Willkommen nach Wuerzburg"
}, 
{
	name: "Hildegard",
	msg: "Danke Schoen!"
}, 
{
	name: "Michael de Leone",
	msg: "Du musst Zutaten sammeln. Du wirst in der Kueche gebraucht."
}, 
{
	name: "Hildegard",
	msg: "Aber ich weiss nicht, wie zu kochen!"
},
{
	name: "Michael de Leone",
	msg: "Keine Angst. Es gibt das buch von guter spise." 
},
{
	name: "Michael de Leone",
	msg: "Dies buch sagt von guter spise. Das macht die unbewandert koche wise." 
}
]

chef_diag1 = [
{
	name: "Koch",
	msg: "Willkommen im Loewenhof!"
},
{
	name: "Hildegard",
	msg: "Wie kann ich helfen?"
},
{
	name: "Koch",
	msg: "Lesen Sie das Buch und sammeln Sie die Zutaten ausserhalb des Hauses."
}
]

ladle_diag = [
{
	name: "Schoepfkelle",
	msg: "Druecken Sie \"C\", um das ausgewaehlte Rezept zu kochen"
}
]