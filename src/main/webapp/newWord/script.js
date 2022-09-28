$(document).ready(function() {
	// #page1
	// select word
	let words = new Set();
	$("#btn1").on("click", function() {
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
						'<span id="mean">' + newStr[i]
						+ '</span>');
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

	// #page2
	//youtube link
	let API_KEY = "AIzaSyCuwW3MULuG7iX3RIUQuwqCsgN9KhzoD1k";
	let video = "";
	let wordOfForm = document.getWord.word.value; // .value 를 붙히면 원하는 값임
	let maxResults = 7

	videoSearch(wordOfForm, API_KEY, maxResults);


	function videoSearch(word, key, maxResults) {

		$.get(
			"https://www.googleapis.com/youtube/v3/search?part=snippet&key=" +
			key +
			"&videoEmbeddable=true&maxResults=" +

			maxResults +
			"&type=video&q=" +
			word,
			function(data) {
				console.log(data);
				let items = data.items
				$.each(items, function(index, item) {
					video = `
			            <iframe width="600" height="400" src="//www.youtube.com/embed/${item.id.videoId}"
			            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			            `;
					$('#video' + (index + 1)).append(
						'<div class="videos">' +
						video + '</div>'
					);
				})
			}

		);
	}
	// youtube end
	// connect to youtube by word
	$(document).on('click', '.words', function() {
		let text = $(this).text();
		$('.swiper-slide').empty();
		videoSearch(text, API_KEY, maxResults);
	})
	// connect to youtube by word end



});