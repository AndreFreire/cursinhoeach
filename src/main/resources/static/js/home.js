var i = 0;
window.onload = (function() {
	var elements = document.getElementById('home').children;
	window.setInterval(function() {
		elements[i].style.display = "none";
		i++;
		if (i == elements.length) {
			i = 0;
		}
		elements[i].style.display = "block";
		
	}, 7000);
});