$(document).ready(function() {
	//youtube link
	let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
	let video = "";
	let wordOfForm = document.getWord.word.value; // .value 를 붙히면 원하는 값임
	let maxResults = 4
	
	videoSearch(API_KEY, wordOfForm, maxResults);


	function videoSearch(key, word, maxResults) {

		console.log(word)
		$.get(
			"https://www.googleapis.com/youtube/v3/search?part=snippet&key=" +
			key +
			"&maxResults=" +
			maxResults +
			"&type=video&q=" +
			word,
			function(data) {
				console.log(data);
				data.items.forEach((item) => {
					video = `
            <iframe width="560" height="315" src="//www.youtube.com/embed/${item.id.videoId}"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            `;
					$("#videos").append(video);
				});
			}
		);


	}
	//youtube end
});


