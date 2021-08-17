
let qtotal=0;

//상품 상세 이미지 변경----------------------------------------------------------------------------------------
var $mainProduct = $('.main_product'),
    $bigImg = $mainProduct.find('.big_img');
    $subImgList = $mainProduct.find('.sub_img li');

$subImgList.click(function(){
    $(this).addClass('active').siblings().removeClass('active'); //클릭한 것은 추가 다른것은 active를 삭제해줌
    var ImgPath = $(this).find('img').attr('src');  //클릭된 이미지 경로를 가져옴

    $bigImg.attr('src',ImgPath); //경로를 메인 이미지에 넣어줌

});


/* + - 버튼 선택시 수량 업다운 구간---------------------------------------------------------------------  */
var $quantitydiv=$('.quantity'),
    $unitprice = $quantitydiv.attr('data-unitprice'),
    $qBtn=$quantitydiv.find('span'),
    $quyInput=$quantitydiv.find('input'),
    $tagetTotal=$('.total_price .price');

$qBtn.click(function(){
    var currentCount=$quyInput.val();

    if($(this).hasClass('plus')){
        // currentCount++;
        // $quyInput.val(currentCount);
        $quyInput.val(++currentCount);
    }else{
        if(currentCount>1) //수량이 1보다는 커야 주문이 가능함으로
            $quyInput.val(--currentCount);
    }      
});


/* 상품 추가 / 삭제 부분 ---------------------------------------------------------------------  */
var $orderClick = $('.order_click'),  //클릭버튼 있는 구간 등록
    $clickBtn = $orderClick.find('span'), //span을 버튼으로 등록
    $selectProduct = $('.select_product'),  //데이터를 넣을 위치의 구간 등록
    $showData =$selectProduct.find('.show_data'), //데이터를 넣을 위치
    $productName=$('.product_specs .product_option h2 label'),      //상품명/컬러/사이즈/수량(위에서 만든 $quyInput.val()로 처리) 가져오기
    $productColor=$('.color select[name="option_1"]'),  //컬러 경로
    $dataRow=$showData.find('.show_data_row'), //데이터 행 경로
    $delBtn=$dataRow.find('span');  //데이터 삭제 버튼 경로



//상품 추가 버튼 클릭 시 (필요한것: 상품명/컬러/사이즈/수량)
$clickBtn.click(function(){
    var Name=$productName.text(), //ok
        Color=$productColor.val(),  //ok
        Size=$("input[name='size']:checked").val(), //ok
        quantity=$quyInput.val();  //ok
    
    $('.select_product').css("display","block");
    
    if(Color=="" || Size==null){
        alert("color 또는 size를 선택해주세요");
    }else{
        //새로운 행 추가
        $showData.append('<p class="show_data_row">'+ Name +'/'+ Color+'/'+Size+'/'+ quantity+ '<span class="delete">x</span></p>');
        $quyInput.val("1"); //수량 값 초기화
        $productColor.val("");  //select값 초기화
        qtotal+=parseInt(quantity); //사용자가 입력한 수량을 총수량 변수에 넣어줌
        priceShow(qtotal); //수량변경에 따른 가격변경을 위한 함수 호출 (인자로 넘김)
    }    
});

//상품 삭제 버튼이 존재한다면 / 그리고 클릭한다면
$delBtn.live('click',function(){
    var text=$(this).parentsUntil("div").text(); //버튼을 통해 선택된 행의 텍스트를 가져옴
    var quantity = parseInt(text.charAt(text.length-2)); //텍스트를 문자로 잘라 수량부분만 가져와서 int형으로 변환 후 넣어줌
    $(this).parentsUntil("div").remove();  //부모 요소중 div를 만나기 전까지 삭제시킴 즉, 행삭제
    $(this).remove(); //자기자신 (버튼)까지 삭제
    qtotal-=quantity;  //총 수량에서 삭제되는 수량까지 삭제
    priceShow(qtotal); //삭제에 따른 가격변동을 보여주기위해 함수 호출
    
    if(qtotal=="0"){
        $('.select_product').css("display","none");
        
    }
    
});


//총 가격을 보여주는 함수 - 데이터 삭제 또는 추가 시 호출
function priceShow(qtotal){
    var lastqTotal=qtotal;  //인자로 받아온 값을 새로 넣어줌
    var TotalPrice=($unitprice * qtotal).toLocaleString('en');  //총 가격을 구하기위해서 제품의 기본 가격을 가져와서 곱함 (.toLocaleString)을 통해서 3자리 ,컴마 구분
    $tagetTotal.text(TotalPrice+'원');  //생성된 가격을 총가격이 표시되는 위치에 텍스트로 넣어줌
}




//----------마우스 이벤트--------------------//

$('.favorite').hover(function(){
    $('.favorite').find('img').attr('src',"/jsp_leopard/images/favorite2.png");
},function(){
    $('.favorite').find('img').attr('src',"/jsp_leopard/images/favorite1.png");
});


$('.basket').hover(function(){
    $('.basket').find('img').attr('src',"/jsp_leopard/images/basket2.png");
},function(){
    $('.basket').find('img').attr('src',"/jsp_leopard/images/basket1.png");
});

$('.orderBtn').hover(function(){
    $('.orderBtn').find('img').attr('src',"/jsp_leopard/images/order2.png");
},function(){
    $('.orderBtn').find('img').attr('src',"/jsp_leopard/images/order1.png");
})


       