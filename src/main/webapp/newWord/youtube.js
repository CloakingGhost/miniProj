$(document).ready(function () {
  let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
  let video = "";
  let search = "%= word%>";
  console.log(search);
  //videoSearch(API_KEY, search, 3);

  // $(document).ready(function () {
  //   let API_KEY = "AIzaSyDAd9oVE_UUmSSUZD2KjJabNmi4cRXOyxI";
  //   let video = "";
  //   $("#form").submit(function (event) {
  //     event.preventDefault();
  //     alert("submit OK");

  //     let search = $("#search").val();

  //     videoSearch(API_KEY, search, 3);
  //   });

//  function videoSearch(key, search, maxResults) {
//    $(".row>.col-md-12>#videos").empty();
//    $.get(
//      "https://www.googleapis.com/youtube/v3/search?part=snippet&key=" +
//        key +
//        "&maxResults=" +
//        maxResults +
//        "&type=video&q=" +
//        search,
//      function (data) {
//        console.log(data);
//        data.items.forEach((item) => {
//          video = `
//            <iframe width="560" height="315" src="//www.youtube.com/embed/${item.id.videoId}"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
//            `;
//          $("#videos").append(video);
//        });
//      }
//    );
//  }
  
});
