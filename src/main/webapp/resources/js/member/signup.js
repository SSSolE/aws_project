/**
 * 
 */
 
$(".choise-opt").on("click", function() {
	let $img = $(this).find(".image-view img");
	let imgSrc = $img.attr("src");
	
	let imgNumber = 1;
	imgNumber = imgSrc.indexOf("img2") != -1 ? 2 : imgNumber;
	imgNumber = imgSrc.indexOf("img3") != -1 ? 3 : imgNumber;
	if(imgNumber == 1 || imgNumber == 2) {
		$(".profile-image > .image-view img").attr("src", imgSrc);
		$("input[name=profileImage]").val("");
		$("input[name=profileImageType]").val(imgNumber);
	}
});

$(".choise-list .choise-opt:last-child").on("click", function() {
	$("input[name=profileImage]").click();
});

$("input[name=profileImage]").on("change", function(e) {
	let input_file_tag = e.target;
	
	if(input_file_tag.files && input_file_tag.files[0])  {
		$("input[name=profileImageType]").val(3);
		
		var reader = new FileReader();
		
		reader.onload = function(e) {
			$(".profile-image > .image-view img").attr("src", e.target.result);
		}
		
		reader.readAsDataURL(input_file_tag.files[0]);
	}
});