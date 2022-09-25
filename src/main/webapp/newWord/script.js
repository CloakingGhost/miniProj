$(document).ready(function() {

	// select word
	let words = new Set();
	$("#btn1").on("click", function() {
		let wd = $("#word").text().trim();
		// ajax
		$.ajax({
			type: "post",
			url: "select.do",
			dataType: "text",
			success: function(str) {
				var newStr = JSON.parse(str);

				for (i in newStr) {
					$("#word").text(i)
					$("#mean").replaceWith(
						'<div id="mean">' + newStr[i]
						+ '</div>');
					$("#saveWord").attr("value", i);
					words.add(i);
				}
			},
			error: function() {
				alert("다시확인");
			}
		})// ajax end
	})// select word end

	//send words
	$("#btn2").on("click", function() {
		var form = document.form;
		let wordsArr = Array.from(words);
		$("#saveArr").attr("value", wordsArr);
		form.submit();
	})//send words end

	// show mean of word
	$("#showBtn").on("click", function() {
		$('#mean').show()
	})
	// show mean of word end


	//youtube link
	let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
	let video = "";
	let wordOfForm = document.getWord.word.value; // .value 를 붙히면 원하는 값임
	let maxResults = 4

	videoSearch(wordOfForm, API_KEY, maxResults);


	function videoSearch(word, key, maxResults) {

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
	// youtube end
	// connect to youtube by word
	$(document).on('click', '.wd', function() {
		let text = $(this).text();
		$('#videos').empty()
		videoSearch(text, API_KEY, maxResults)
	})
	// connect to youtube by word end
});


