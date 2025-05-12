<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
	<head>
		<title>ユーザー情報新規登録画面</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/Site.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<style>
			.row {
				min-height:35px;
				padding-bottom:3px;
			}

			td {
				border:1px solid #69A4D8;
			}
			
			.TEXTBOX {
				width:300px;
			}
			
			.TEXTAREA {
				width:300px;
				height:100px;
			}
			
			.PARENTCONTAINER
			{
				width:1000px; /* 白い背景の枠の幅：1000px */
				height:auto; /* 白い背景の枠の高さ：ウィンドウのサイズに合わせる */
				min-height:calc(100% - 58px); /* 白い背景の枠の高さ：ウィンドウのサイズに合わせる */
				margin:0 auto; /* 白い背景の枠の位置：全画面の均等割付 */
				display:block; /* 白い背景の枠の位置：全画面の均等割付 */
				background-color:white; /* 背景色：ホワイト */
			}
		</style>
	</head>
<body>
	<div class="row">
				<div class="col-xs-12 TOPBAR">
					ユーザー情報新規登録
					<div class="TOPBAR"> </div>
				</div>
			</div>
	<div class="PARENTCONTAINER">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 TITLE">
					基本情報新規登録確認
					<div class="TITLELINE"> </div>
				</div>
			</div>
			<form action="UserInfoRegister" method="post" id="Form1" >
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">ユーザーID</div>
				<div class="col-xs-8">
					<input required name="userId" id="txtユーザーID" class="TEXTBOX" data-type="alphanumeric" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">メールアドレス</div>
				<div class="col-xs-8">
					<input required name="email" id="txtメール" class="TEXTBOX" data-type="email" value="">
				</div>
			</div>
            <div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">パスワード</div>
				<div class="col-xs-8">
					<input required name="password" id="txtパスワード" class="TEXTBOX" data-type="alphanumeric" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">パスワード確認</div>
				<div class="col-xs-8">
					<input required name="checkPassword" id="txtパスワード確認" class="TEXTBOX" data-type="alphanumeric" value="">
				</div>
			</div>
                        <div class="row">
				<div class="col-xs-12 TITLE">
					プロファイル新規登録確認
					<div class="TITLELINE"> </div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">ニックネーム</div>
				<div class="col-xs-8">
					<input required name="nickName" id="txtニックネーム" class="TEXTBOX" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">氏名</div>
				<div class="col-xs-8">
					<input required name="userName" id="txt氏名" class="TEXTBOX" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">性別</div>

				<div class="col-xs-8">
					<input required name="sex" id="txt" type="radio" value="1"><span>男</span></input>
					<input required name="sex" type="radio" value="2"><span>女</span></input>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">生年月日</div>
				<div class="col-xs-8">
					<select required name="birthday1" id="txt生年" class="SELECT" style="width:80px">
						<option selected=""></option>
						    <option value="1925">1925</option>
                            <option value="1926">1926</option>
                            <option value="1927">1927</option>
                            <option value="1928">1928</option>
                            <option value="1929">1929</option>
                            <option value="1930">1930</option>
                            <option value="1931">1931</option>
                            <option value="1932">1932</option>
                            <option value="1933">1933</option>
                            <option value="1934">1934</option>
                            <option value="1935">1935</option>
                            <option value="1936">1936</option>
                            <option value="1937">1937</option>
                            <option value="1938">1938</option>
                            <option value="1939">1939</option>
                            <option value="1940">1940</option>
                            <option value="1941">1941</option>
                            <option value="1942">1942</option>
                            <option value="1943">1943</option>
                            <option value="1944">1944</option>
                            <option value="1945">1945</option>
                            <option value="1946">1946</option>
                            <option value="1947">1947</option>
						    <option value="1948">1948</option>
							<option value="1949">1949</option>
							<option value="1950">1950</option>
							<option value="1951">1951</option>
							<option value="1952">1952</option>
							<option value="1953">1953</option>
							<option value="1954">1954</option>
							<option value="1955">1955</option>
							<option value="1956">1956</option>
							<option value="1957">1957</option>
							<option value="1958">1958</option>
							<option value="1959">1959</option>
							<option value="1960">1960</option>
							<option value="1961">1961</option>
							<option value="1962">1962</option>
							<option value="1963">1963</option>
							<option value="1964">1964</option>
							<option value="1965">1965</option>
							<option value="1966">1966</option>
							<option value="1967">1967</option>
							<option value="1968">1968</option>
							<option value="1969">1969</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
					</select>

					<select required name="birthday2" id="txt生月" class="SELECT" style="width:50px">
						<option value="">  </option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>

					<select required name="birthday3" id="txt生日" class="SELECT" style="width:50px">
						<option value="">  </option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">電話番号</div>
				<div class="col-xs-8">
					<input required maxlength="3" name="tel1" id="txt電話番号1" class="TEXTBOX" data-type="numeric" style="width:60px">
                    <input required maxlength="4" name="tel2" id="txt電話番号2" class="TEXTBOX" data-type="numeric" style="width:120px">
                    <input required maxlength="4" name="tel3" id="txt電話番号3" class="TEXTBOX" type=data-type="numeric" style="width:120px">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">郵便番号</div>
				<div class="col-xs-8">
					<input required maxlength="3" name="postCode1" id="txt郵便番号1" class="TEXTBOX" data-type="numeric" style="width:70px">
                    <input required maxlength="4" name="postCode2" id="txt郵便番号2" class="TEXTBOX" data-type="numeric" style="width:120px"> 
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">住所</div>
				<div class="col-xs-8">
					<input required name="address" id="txt住所1" class="TEXTBOX" type="text" value="">
				</div>
			</div>
                        <div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3"></div>
				<div class="col-xs-8">
					<input name="addressLine" id="txt住所2" class="TEXTBOX" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">入社日</div>
				<div class="col-xs-8">
					<select required name="hireDate1" id="txt入社年" class="SELECT" style="width:80px">
						<option selected=""></option>
						 <option value="1925">1925</option>
                            <option value="1926">1926</option>
                            <option value="1927">1927</option>
                            <option value="1928">1928</option>
                            <option value="1929">1929</option>
                            <option value="1930">1930</option>
                            <option value="1931">1931</option>
                            <option value="1932">1932</option>
                            <option value="1933">1933</option>
                            <option value="1934">1934</option>
                            <option value="1935">1935</option>
                            <option value="1936">1936</option>
                            <option value="1937">1937</option>
                            <option value="1938">1938</option>
                            <option value="1939">1939</option>
                            <option value="1940">1940</option>
                            <option value="1941">1941</option>
                            <option value="1942">1942</option>
                            <option value="1943">1943</option>
                            <option value="1944">1944</option>
                            <option value="1945">1945</option>
                            <option value="1946">1946</option>
                            <option value="1947">1947</option>
						    <option value="1948">1948</option>
							<option value="1949">1949</option>
							<option value="1950">1950</option>
							<option value="1951">1951</option>
							<option value="1952">1952</option>
							<option value="1953">1953</option>
							<option value="1954">1954</option>
							<option value="1955">1955</option>
							<option value="1956">1956</option>
							<option value="1957">1957</option>
							<option value="1958">1958</option>
							<option value="1959">1959</option>
							<option value="1960">1960</option>
							<option value="1961">1961</option>
							<option value="1962">1962</option>
							<option value="1963">1963</option>
							<option value="1964">1964</option>
							<option value="1965">1965</option>
							<option value="1966">1966</option>
							<option value="1967">1967</option>
							<option value="1968">1968</option>
							<option value="1969">1969</option>
							<option value="1970">1970</option>
							<option value="1971">1971</option>
							<option value="1972">1972</option>
							<option value="1973">1973</option>
							<option value="1974">1974</option>
							<option value="1975">1975</option>
							<option value="1976">1976</option>
							<option value="1977">1977</option>
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
							<option value="2001">2001</option>
							<option value="2002">2002</option>
							<option value="2003">2003</option>
							<option value="2004">2004</option>
							<option value="2005">2005</option>
							<option value="2006">2006</option>
							<option value="2007">2007</option>
							<option value="2008">2008</option>
							<option value="2009">2009</option>
							<option value="2010">2010</option>
							<option value="2011">2011</option>
							<option value="2012">2012</option>
							<option value="2013">2013</option>
							<option value="2014">2014</option>
							<option value="2015">2015</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
					</select>

					<select name="hireDate2" id="txt入社月" class="SELECT" style="width:50px">
						<option value=""></option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>

					<select name="hireDate3" id="txt入社日" class="SELECT" style="width:50px">
						<option value=""></option>
						<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">所属</div>
				<div class="col-xs-8">
					<select required name="affiliation" id="cbx所属" class="SELECT" style="width:100px">
						<option selected=""></option>
						<option value="営業部">営業部</option>
						<option value="技術部">技術部</option>
					</select>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">役職</div>
				<div class="col-xs-8">
					<input required class="TEXTBOX" name="position" id="txt役職" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">趣味</div>
				<div class="col-xs-8">
					<input name="hobby" id="txt趣味" class="TEXTBOX" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3">特技</div>
				<div class="col-xs-8">
					<input name="specialSkill" id="txt特技" class="TEXTBOX" type="text" value="">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-1"></div>
				<div class="col-xs-3" style="vertical-align:top;padding-top:3px">
					座右銘
				</div>
				<div class="col-xs-8">
					<textarea name="comment" id="txt座右銘" class="TEXTAREA" cols="20" id="txt座右銘" name="座右銘" rows="2"></textarea> 
				</div>
			</div>
			<div class="row">
                                <div class="col-xs-2"></div>
				<div class="col-xs-4">
					<input type="button" class="BUTTON" value="登録" style="width:180px" onclick="submitForm()">
				</div>
				<div class="col-xs-6">
					<input type="button" class="BUTTON" value="キャンセル" style="width:180px;" onclick="location.href='/OfficeSystem_Hibernate/Login'">
				</div>
			</div>
		    </form>
		</div>
	</div>
</body>
<script>
    function submitForm() {
        // エラーメッセージを格納する配列
        var errors = [];


        // フォームの各入力要素をチェック
        $('input, select').each(function() {
            var element = $(this);
            var value = element.val().trim();  // 値の前後の空白を削除
            var dataType = element.data('type');  // 要素のデータタイプ属性を取得
            var name = element.attr('name');  // 要素の名前属性を取得


            // 必須フィールドのチェック
            if (element.prop('required') && value === '') {
                errors.push(name + 'は必須です。');
            }


            // 半角数字のチェック
            if (dataType === 'numeric' && !/^\d+$/.test(value)) {
                errors.push(name + 'は半角数字で入力してください。');
            }


            // 半角英数字のチェック
            if (dataType === 'alphanumeric' && !/^[a-zA-Z0-9]+$/.test(value)) {
                errors.push(name + 'は半角英数で入力してください。');
            }


            // メールアドレスの形式チェック
            if (dataType === 'email' && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)) {
                errors.push(name + 'は有効なメールアドレスを入力してください。');
            }
        });

        if($('input[name="password"]').val() != $('input[name="checkPassword"]').val()){
        	errors.push("パスワードが一致していません。");
        }

        var date = new Date($('select[name="birthday1"]').val() + '-' + ($('select[name="birthday2"]').val()) + '-' +$('select[name="birthday3"]').val());
        var month = date.getMonth() + 1;

        if($('select[name="birthday2"]').val() != month){
        	errors.push("生年月日は不正な日付です。");
        }

        date = new Date($('select[name="hireDate1"]').val() + '-' +$('select[name="hireDate2"]').val() + '-' +$('select[name="hireDate3"]').val());
        var month = date.getMonth() + 1;

        if($('select[name="hireDate2"]').val() != month){
            errors.push("入社日は不正な日付です。");
        }
        

        // エラーがあれば、アラートで表示し、フォームの送信を中止
        if (errors.length > 0) {
            alert(errors.join('\n'));
            return;
        }

        // AJAXリクエストの送信
        $.ajax({
            type: 'POST',
            url: '/OfficeSystem_Hibernate//UserInfoRegister',
            data: $("#Form1").serialize(),
            success: function(data) {
                // 成功時の処理：リダイレクトまたはメッセージ表示
                if (data != "") {
                	window.location.href = "${pageContext.request.contextPath}/RegistrationSuccess";
                } else {
                	alert("入力したユーザーID及びメールアドレスが既に利用されているため、別のユーザーID、メールアドレスを利用してください。");
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                // エラー時の処理
                alert('エラーが発生しました: ' + textStatus);
            } 
        });
    }
</script>

</html>
