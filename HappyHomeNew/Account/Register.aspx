<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="HappyHomeNew.Account.Register" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<script src="../Scripts/CountryStateCity.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <%--    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" OnCreatedUser="RegisterUser_CreatedUser">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>

                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>--%>
    <div id="userRegistration">
                        <h2>
                      Registeration Page
                    </h2>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                        ValidationGroup="RegisterUserValidationGroup" />
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>User Type</legend>
                            <table>
                                <tr>
                                    <td>
                                        <label id="lblUserType" runat="server">
                                            User Type :
                                        </label>
                                    </td>
                                    <td class="radiostyle">
                                        <asp:RadioButtonList ClientIDMode="Static" ID="rbtnUserType" runat="server" RepeatDirection="Horizontal" 
                                            CellPadding="1" CellSpacing="5">
                                            <asp:ListItem Text="Individual" Value="individualinfo" Selected="True" />
                                            <asp:ListItem Text="Agent" Value="Agentinfo" />
                                            <asp:ListItem Text="Builder"  Value="Buiderinfo"/>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <fieldset>
                            <legend class="register">Personal Information </legend>
                            <table id="individualinfo" style="display:none">
                                <tr>
                                    <td class="style3">
                                        Name
                                    </td>
                                    <td>
                                        <input type="text" name="country"  id="txtName" runat="server" />
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Country
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlCountry" runat="server">
                                            <asp:ListItem Text="India" Value="01"></asp:ListItem>
                                            <asp:ListItem Text="US" Value="01"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        City
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ddlCity" runat="server">
                                            <asp:ListItem Text="Nagpur" Value="01"></asp:ListItem>
                                            <asp:ListItem Text="Pune" Value="02"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Locality
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Mobile No
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMobNo" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table id="Agentinfo" style="display:none">
                                 <tr>
                                    <td class="style3">
                                        Name
                                    </td>
                                    <td>
                                        <input type="text" name="country" pattern="[A-z]{}" id="Text1" runat="server" />
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Company Name
                                    </td>
                                    <td>
                                     <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        Company Address
                                    </td>
                                    <td>
                                      <textarea rows="2" ></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Country
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <%--<asp:TextBox ID="txtName" runat="server" Width="232px"></asp:TextBox>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                       Contact No
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                             <table id="Buiderinfo" style="display:none">
                    <tr>
                        <td class="style3">
                            Name
                        </td>
                        <td>
                            <input type="text" name="Name" pattern="[A-z]{}" id="Text2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Company Name
                        </td>
                        <td>
                            <input type="text" name="Company" id="Text3" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Company Address
                        </td>
                        <td>
                            <input type="text" name="Company" id="Text4" runat="server" />
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="style3">
                            Country
                        </td>
                        <td>
                            <select id="country" name="country" style="width: 200px">
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            State
                        </td>
                        <td>
                            <select name="state" id="state" style="width: 200px">
                            </select>
                            <script language="javascript">
                                populateCountries("country", "state");
                            </script>
                        </td>
                    </tr>--%>
                   
                   			<script>
                   			    function manageFocus(obj, defaultval) {
                   			        if (screen.width == '800' && obj.value == defaultval) {
                   			            obj.value = '';
                   			        }
                   			    }
                   			    function manageBlur(obj, defaultval) {
                   			        if (screen.width == '800' && obj.value == '') {
                   			            obj.value = defaultval;
                   			        }
                   			    }
                   			    function checkselect() {
                   			        var haschecked = false;
                   			        for (i = 0; i <= 2; i++) {
                   			            if (document.registration_frm.member_type[i].checked == true)
                   			                haschecked = true;
                   			        }

                   			        if (!haschecked) {
                   			            document.getElementById('div_msg1').innerHTML = "<img src='" + ALERT_IMG + "' width='10' height='10' align='absmiddle' vspace='3' border=0>&nbsp;Please select your profile.";
                   			        }
                   			    }
							</script>
												
							<tr id = "countrycorporate"  style="height:27px;">
								<td align='left'><span id='s5'>Country </span></td>
								<td align='left'>
								<select name = "country_name2" style="width:175px;"  class="textcontrol" 
                                onchange = "javascript:makeajaxrequest('/ssi/ajax/display-locations.php?page=reg&mid=1&countryid='+this.value,'div_city_combo2');
		changecountrycode(this.value,'registration_frm','country_code');" >
     <%--   <option value = "0">--Select Country--</option--%>><option value = "91|1" selected>India</option><%--<option value = "1|7">USA</option><option value = "44|6">UK</option><option value = "971|5">UAE</option><option value = "1|14">Canada</option><option value = "61|2">Australia</option><option value = "92|10">Pakistan</option><option value = "966|185">Saudi Arabia</option><option value = "965|117">Kuwait</option><option value = "27|195">South Africa</option><optgroup label='---------------------------------------'></optgroup><option value = "93|15">Afghanistan</option><option value = "355|16">Albania</option><option value = "213|17">Algeria</option><option value = "684|18">American Samoa</option><option value = "376|19">Andorra</option><option value = "244|20">Angola</option><option value = "1|21">Anguilla</option><option value = "1|22">Antigua &amp; Barbuda</option><option value = "54|23">Argentina</option><option value = "374|24">Armenia</option><option value = "43|26">Austria</option><option value = "994|27">Azerbaijan</option><option value = "1|28">Bahamas</option><option value = "973|29">Bahrain</option><option value = "880|30">Bangladesh</option><option value = "1|31">Barbados</option><option value = "375|32">Belarus</option><option value = "32|33">Belgium</option><option value = "501|34">Belize</option><option value = "|235">Benin</option><option value = "1|35">Bermuda</option><option value = "975|36">Bhutan</option><option value = "591|37">Bolivia</option><option value = "387|38">Bosnia</option><option value = "267|39">Botswana</option><option value = "55|40">Brazil</option><option value = "673|42">Brunei</option><option value = "359|43">Bulgaria</option><option value = "226|44">Burkina Faso</option><option value = "257|45">Burundi</option><option value = "855|47">Cambodia</option><option value = "237|48">Cameroon</option><option value = "238|49">Cape Verde</option><option value = "1|50">Cayman Islands</option><option value = "236|51">Central African Republic</option><option value = "235|52">Chad</option><option value = "56|53">Chile</option><option value = "86|54">China</option><option value = "57|55">Colombia</option><option value = "269|56">Comoros</option><option value = "242|57">Congo</option><option value = "243|65">Congo (DRC)</option><option value = "682|58">Cook Islands</option><option value = "506|59">Costa Rica</option><option value = "225|46">Cote dIvoire</option><option value = "|237">Croatia</option><option value = "385|60">Croatia (Hrvatska)</option><option value = "53|61">Cuba</option><option value = "357|62">Cyprus</option><option value = "420|63">Czech Republic</option><option value = "45|66">Denmark</option><option value = "253|67">Djibouti</option><option value = "1|68">Dominica</option><option value = "1|69">Dominican Republic</option><option value = "670|70">East Timor</option><option value = "593|71">Ecuador</option><option value = "20|72">Egypt</option><option value = "503|73">El Salvador</option><option value = "240|74">Equatorial Guinea</option><option value = "291|75">Eritrea</option><option value = "372|76">Estonia</option><option value = "251|77">Ethiopia</option><option value = "500|78">Falkland Islands</option><option value = "298|79">Faroe Islands</option><option value = "|238">Fiji</option><option value = "679|80">Fiji Islands</option><option value = "358|81">Finland</option><option value = "33|8">France</option><option value = "594|83">French Guiana</option><option value = "689|84">French Polynesia</option><option value = "241|85">Gabon</option><option value = "220|86">Gambia</option><option value = "|239">Gaza Strip</option><option value = "995|87">Georgia</option><option value = "49|9">Germany</option><option value = "233|88">Ghana</option><option value = "350|89">Gibraltar</option><option value = "30|90">Greece</option><option value = "299|91">Greenland</option><option value = "1|92">Grenada</option><option value = "590|93">Guadeloupe</option><option value = "1|94">Guam</option><option value = "502|95">Guatemala</option><option value = "224|96">Guinea</option><option value = "245|97">Guinea-Bissau</option><option value = "592|98">Guyana</option><option value = "509|99">Haiti</option><option value = "504|100">Honduras</option><option value = "|240">Hong Kong</option><option value = "852|101">Hong Kong SAR</option><option value = "36|102">Hungary</option><option value = "354|103">Iceland</option><option value = "62|104">Indonesia</option><option value = "98|105">Iran</option><option value = "964|106">Iraq</option><option value = "353|107">Ireland</option><option value = "972|108">Israel</option><option value = "39|109">Italy</option><option value = "|236">Ivory Coast</option><option value = "1|110">Jamaica</option><option value = "81|111">Japan</option><option value = "962|112">Jordan</option><option value = "7|113">Kazakhstan</option><option value = "|241">Kazakstan</option><option value = "254|114">Kenya</option><option value = "686|115">Kiribati</option><option value = "82|116">Korea</option><option value = "996|118">Kyrgyzstan</option><option value = "856|119">Laos</option><option value = "371|120">Latvia</option><option value = "961|121">Lebanon</option><option value = "266|122">Lesotho</option><option value = "231|123">Liberia</option><option value = "218|124">Libya</option><option value = "423|125">Liechtenstein</option><option value = "370|126">Lithuania</option><option value = "352|127">Luxembourg</option><option value = "|242">Macao</option><option value = "853|128">Macao SAR</option><option value = "|243">Macedonia</option><option value = "261|129">Madagascar</option><option value = "265|130">Malawi</option><option value = "60|3">Malaysia</option><option value = "960|132">Maldives</option><option value = "223|133">Mali</option><option value = "356|134">Malta</option><option value = "|244">Marshall Islands</option><option value = "596|135">Martinique</option><option value = "222|136">Mauritania</option><option value = "230|137">Mauritius</option><option value = "269|138">Mayotte</option><option value = "52|139">Mexico</option><option value = "691|140">Micronesia</option><option value = "373|141">Moldova</option><option value = "377|142">Monaco</option><option value = "976|143">Mongolia</option><option value = "687|153">Mongolia</option><option value = "|245">Montenegro</option><option value = "1|144">Montserrat</option><option value = "212|145">Morocco</option><option value = "258|146">Mozambique</option><option value = "95|147">Myanmar</option><option value = "|246">Namibia</option><option value = "264|148">Nauru</option><option value = "674|149">Nepal</option><option value = "977|150">Netherlands</option><option value = "31|151">Netherlands Antilles</option><option value = "599|152">New Caledonia</option><option value = "64|4">New Zealand</option><option value = "505|155">Nicaragua</option><option value = "227|156">Niger</option><option value = "234|157">Nigeria</option><option value = "683|158">Niue</option><option value = "672|159">Norfolk Island</option><option value = "850|64">North Korea</option><option value = "47|160">Norway</option><option value = "968|161">Oman</option><option value = "|247">Palau</option><option value = "507|163">Panama</option><option value = "675|164">Papua New Guinea</option><option value = "595|165">Paraguay</option><option value = "51|166">Peru</option><option value = "63|167">Philippines</option><option value = "672|168">Pitcairn Islands</option><option value = "48|169">Poland</option><option value = "351|170">Portugal</option><option value = "1|171">Puerto Rico</option><option value = "974|172">Qatar</option><option value = "|248">Republic of Macedonia</option><option value = "262|173">Reunion</option><option value = "|249">Reunion (French)</option><option value = "40|174">Romania</option><option value = "7|175">Russia</option><option value = "250|176">Rwanda</option><option value = "685|182">Samoa</option><option value = "378|183">San Marino</option><option value = "239|184">Sao Tome and Principe</option><option value = "221|186">Senegal</option><option value = "|250">Serbia</option><option value = "381|187">Serbia and Montenegro</option><option value = "248|188">Seychelles</option><option value = "232|189">Sierra Leone</option><option value = "65|11">Singapore</option><option value = "421|191">Slovakia</option><option value = "386|192">Slovenia</option><option value = "677|193">Solomon Islands</option><option value = "252|194">Somalia</option><option value = "|234">South Korea</option><option value = "34|196">Spain</option><option value = "94|12">Sri Lanka</option><option value = "290|177">St. Helena</option><option value = "1|178">St. Kitts and Nevis</option><option value = "1|179">St. Lucia</option><option value = "508|180">St. Pierre and Miquelon</option><option value = "1|181">St. Vincent &amp; Grenadines</option><option value = "249|198">Sudan</option><option value = "597|199">Suriname</option><option value = "268|200">Swaziland</option><option value = "46|201">Sweden</option><option value = "41|202">Switzerland</option><option value = "963|203">Syria</option><option value = "886|204">Taiwan</option><option value = "992|205">Tajikistan</option><option value = "255|206">Tanzania</option><option value = "66|13">Thailand</option><option value = "|251">Timor</option><option value = "228|209">Togo</option><option value = "690|210">Tokelau</option><option value = "676|211">Tonga</option><option value = "1|212">Trinidad and Tobago</option><option value = "216|213">Tunisia</option><option value = "90|214">Turkey</option><option value = "993|215">Turkmenistan</option><option value = "1|216">Turks and Caicos Islands</option><option value = "688|217">Tuvalu</option><option value = "256|218">Uganda</option><option value = "380|219">Ukraine</option><option value = "598|223">Uruguay</option><option value = "998|225">Uzbekistan</option><option value = "678|226">Vanuatu</option><option value = "|252">Vatican City State</option><option value = "58|227">Venezuela</option><option value = "84|228">Vietnam</option><option value = "1|222">Virgin Islands</option><option value = "1|41">Virgin Islands (British)</option><option value = "|253">Wallis &amp; Futuna</option><option value = "681|229">Wallis and Futuna</option><option value = "|254">West Bank</option><option value = "967|230">Yemen</option><option value = "381|231">Yugoslavia</option><option value = "260|232">Zambia</option><option value = "263|233">Zimbabwe</option></select>						--%>
        		</td>
							</tr>
							<tr id = "cityall" style="height:27px;">
								<td align='left'><span id='s6'>City </span></td>
								<td align='left'>
					<div id="div_city_combo">
					<select name="city" id="city" class="textcontrol" style="width:175px;" onChange="callajax(this.value);check_other_city(this.value,'tr_city_other','tr_location_other');">
					<script>

					    function callajax(city) {
					        var ajxObj = createAjaxObject('2');
					        var serverPage = '/ssi/ajax/search-locations.php?call=pr&width=1&type=new&multiple=1&fieldname=locality_id&cityid=' + city;

					        ajxObj.open("GET", serverPage, true);
					        ajxObj.onreadystatechange = function () {
					            if (ajxObj.readyState == 4) {

					                var text = ajxObj.responseText;
					                document.getElementById('div_loc').innerHTML = text;

					            }
					            else {
					                document.getElementById('div_loc').innerHTML = '<table width="100%"><tr><td height="10" valign="center" align="center" class="text" style="color:000000;"><font style="font-size:9px">Loading</font>&nbsp;&nbsp;<input type="image" name="imageField" src="' + IMG_SERVER + '/images/loading.gif"/></td></tr></table>';
					            }
					        }
					        ajxObj.send(null);
					    }
					</script>
						<option value="">-- Select City --</option>
						</optgroup><optgroup label="Ahmedabad (All)" style="background:#FDF6B5"><option value = "S48" style="background:#ffffff">Ahmedabad Central</option><option value = "S46" style="background:#ffffff">Ahmedabad East</option><option value = "S44" style="background:#ffffff">Ahmedabad North</option><option value = "S45" style="background:#ffffff">Ahmedabad South</option><option value = "S47" style="background:#ffffff">Ahmedabad West</option><option value = "other_S49" style="background:#ffffff">Ahmedabad Other</option></optgroup><optgroup label="Bangalore (All)" style="background:#FDF6B5"><option value = "S27" style="background:#ffffff">Bangalore Central</option><option value = "S25" style="background:#ffffff">Bangalore East</option><option value = "S23" style="background:#ffffff">Bangalore North</option><option value = "S24" style="background:#ffffff">Bangalore South</option><option value = "S26" style="background:#ffffff">Bangalore West</option><option value = "other_S28" style="background:#ffffff">Bangalore Other</option></optgroup><optgroup label="Chandigarh" style="background:#FDF6B5"><option value = "S50" style="background:#ffffff">Chandigarh</option><option value = "S170" style="background:#ffffff">Mohali</option><option value = "S103" style="background:#ffffff">Panchkula</option><option value = "S318" style="background:#ffffff">Zirakpur</option><option value = "S356" style="background:#ffffff">Kharar</option></optgroup><optgroup label="Chennai (All)" style="background:#FDF6B5"><option value = "S38" style="background:#ffffff">Chennai Central</option><option value = "S35" style="background:#ffffff">Chennai North</option><option value = "S36" style="background:#ffffff">Chennai South</option><option value = "S37" style="background:#ffffff">Chennai West</option><option value = "other_S39" style="background:#ffffff">Chennai Other</option></optgroup><optgroup label="Delhi / NCR" style="background:#FDF6B5"><option value = "S5" style="background:#ffffff">Delhi Central</option><option value = "S3" style="background:#ffffff">Delhi East</option><option value = "S1" style="background:#ffffff">Delhi North</option><option value = "S2" style="background:#ffffff">Delhi South</option><option value = "S4" style="background:#ffffff">Delhi West</option><option value = "S6" style="background:#ffffff">Dwarka</option><option value = "S11" style="background:#ffffff">Faridabad</option><option value = "S10" style="background:#ffffff">Ghaziabad</option><option value = "S8" style="background:#ffffff">Greater Noida</option><option value = "S9" style="background:#ffffff">Gurgaon</option><option value = "S7" style="background:#ffffff">Noida</option><option value = "other_S12" style="background:#ffffff">Delhi Other</option></optgroup><optgroup label="Hyderabad (All)" style="background:#FDF6B5"><option value = "S42" style="background:#ffffff">Gr. Hyderabad</option><option value = "S40" style="background:#ffffff">Hyderabad</option><option value = "S41" style="background:#ffffff">Secunderabad</option><option value = "other_S43" style="background:#ffffff">Hyderabad Other</option></optgroup><optgroup label="Kolkata (All)" style="background:#FDF6B5"><option value = "S33" style="background:#ffffff">Kolkata Central</option><option value = "S31" style="background:#ffffff">Kolkata East</option><option value = "S29" style="background:#ffffff">Kolkata North</option><option value = "S30" style="background:#ffffff">Kolkata South</option><option value = "S32" style="background:#ffffff">Kolkata West</option><option value = "other_S34" style="background:#ffffff">Kolkata Other</option></optgroup><optgroup label="Mumbai (All)" style="background:#FDF6B5"><option value = "S283" style="background:#ffffff">Mumbai Andheri-Dahisar</option><option value = "S290" style="background:#ffffff">Mumbai Beyond Thane</option><option value = "S284" style="background:#ffffff">Mumbai - Central Line</option><option value = "S285" style="background:#ffffff">Mumbai Harbour</option><option value = "S286" style="background:#ffffff">Mumbai Navi</option><option value = "S287" style="background:#ffffff">Mumbai South</option><option value = "S288" style="background:#ffffff">Mumbai South West</option><option value = "S289" style="background:#ffffff">Mumbai Thane</option><option value = "S291" style="background:#ffffff">Mumbai Mira Road and Beyond</option><option value = "other_S292" style="background:#ffffff">Mumbai Other</option></optgroup><optgroup label="Other Major Cities" style="background:#FDF6B5"><option value = "S51" style="background:#ffffff">Indore</option><option value = "S53" style="background:#ffffff">Kochi</option><option value = "S54" style="background:#ffffff">Ludhiana</option><option value = "S52" style="background:#ffffff">Jaipur</option><option value = "S299" style="background:#ffffff">Pune</option></optgroup><optgroup label="Andhra Pradesh" style="background:#FDF6B5"><option value = "S387" style="background:#ffffff">Kakinada</option><option value = "S56" style="background:#ffffff">Anantapur</option><option value = "S353" style="background:#ffffff">Ongole</option><option value = "S42" style="background:#ffffff">Gr. Hyderabad</option><option value = "S57" style="background:#ffffff">Guntakal</option><option value = "S58" style="background:#ffffff">Guntur</option><option value = "S40" style="background:#ffffff">Hyderabad</option><option value = "S59" style="background:#ffffff">Kurnool</option><option value = "S60" style="background:#ffffff">Nellore</option><option value = "S380" style="background:#ffffff">Nalgonda</option><option value = "S381" style="background:#ffffff">Etcherla</option><option value = "S382" style="background:#ffffff">Khamman</option><option value = "S383" style="background:#ffffff">Kamareddy</option><option value = "S61" style="background:#ffffff">Nizamabad</option><option value = "S62" style="background:#ffffff">Razahmundry</option><option value = "S41" style="background:#ffffff">Secunderabad</option><option value = "S63" style="background:#ffffff">Tirupati</option><option value = "S64" style="background:#ffffff">Vijayawada</option><option value = "S384" style="background:#ffffff">Vetapallem</option><option value = "S65" style="background:#ffffff">Vishakhapatnam</option><option value = "S66" style="background:#ffffff">Warangal</option><option value = "other_S67" style="background:#ffffff">Andhra Other</option><option value = "other_S43" style="background:#ffffff">Hyderabad Other</option><option value = "S395" style="background:#ffffff">Proddatur</option></optgroup><optgroup label="Arunachal Pradesh" style="background:#FDF6B5"><option value = "S68" style="background:#ffffff">Itanagar</option><option value = "other_S69" style="background:#ffffff">Arunachal Other</option></optgroup><optgroup label="Assam" style="background:#FDF6B5"><option value = "S70" style="background:#ffffff">Guwahati</option><option value = "S71" style="background:#ffffff">Silchar</option><option value = "other_S72" style="background:#ffffff">Assam Other</option></optgroup><optgroup label="Bihar" style="background:#FDF6B5"><option value = "S73" style="background:#ffffff">Bhagalpur</option><option value = "S74" style="background:#ffffff">Patna</option><option value = "S397" style="background:#ffffff">Muzaffarpur</option><option value = "S398" style="background:#ffffff">Motihari</option><option value = "S399" style="background:#ffffff">Aurangbad</option><option value = "S400" style="background:#ffffff">Siwan</option><option value = "S401" style="background:#ffffff">Arrah</option><option value = "other_S75" style="background:#ffffff">Bihar Other</option></optgroup><optgroup label="Chattisgarh" style="background:#FDF6B5"><option value = "S76" style="background:#ffffff">Bhillai</option><option value = "S77" style="background:#ffffff">Raipur</option><option value = "other_S78" style="background:#ffffff">Chattisgarh Other</option></optgroup><optgroup label="Delhi" style="background:#FDF6B5"><option value = "S5" style="background:#ffffff">Delhi Central</option><option value = "S3" style="background:#ffffff">Delhi East</option><option value = "S1" style="background:#ffffff">Delhi North</option><option value = "S2" style="background:#ffffff">Delhi South</option><option value = "S4" style="background:#ffffff">Delhi West</option><option value = "S6" style="background:#ffffff">Dwarka</option><option value = "other_S12" style="background:#ffffff">Delhi Other</option></optgroup><optgroup label="Goa" style="background:#FDF6B5"><option value = "S331" style="background:#ffffff">Aldona</option><option value = "S327" style="background:#ffffff">Anjuna</option><option value = "S330" style="background:#ffffff">Bagmalo</option><option value = "S326" style="background:#ffffff">Calangute</option><option value = "S332" style="background:#ffffff">Merces</option><option value = "S338" style="background:#ffffff">Mapusa</option><option value = "S79" style="background:#ffffff">Panaji</option><option value = "S80" style="background:#ffffff">Panjim</option><option value = "S329" style="background:#ffffff">Porvorim</option><option value = "S328" style="background:#ffffff">Vagator</option><option value = "S337" style="background:#ffffff">Siolim</option><option value = "S81" style="background:#ffffff">Vasco Da Gama</option><option value = "other_S82" style="background:#ffffff">Goa Other</option></optgroup><optgroup label="Gujarat" style="background:#FDF6B5"><option value = "S48" style="background:#ffffff">Ahmedabad Central</option><option value = "S46" style="background:#ffffff">Ahmedabad East</option><option value = "S44" style="background:#ffffff">Ahmedabad North</option><option value = "S45" style="background:#ffffff">Ahmedabad South</option><option value = "S47" style="background:#ffffff">Ahmedabad West</option><option value = "S83" style="background:#ffffff">Anand</option><option value = "S85" style="background:#ffffff">Bharuch</option><option value = "S86" style="background:#ffffff">Bhavnagar</option><option value = "S87" style="background:#ffffff">Bhuj</option><option value = "S88" style="background:#ffffff">Gandhinagar</option><option value = "S89" style="background:#ffffff">Gir</option><option value = "S90" style="background:#ffffff">Jamnagar</option><option value = "S91" style="background:#ffffff">Kandla</option><option value = "S92" style="background:#ffffff">Porbandar</option><option value = "S93" style="background:#ffffff">Rajkot</option><option value = "S94" style="background:#ffffff">Surat</option><option value = "S95" style="background:#ffffff">Vadodara</option><option value = "other_S49" style="background:#ffffff">Ahmedabad Other</option><option value = "S378" style="background:#ffffff">Vapi</option><option value = "other_S96" style="background:#ffffff">Gujarat Other</option></optgroup><optgroup label="Haryana" style="background:#FDF6B5"><option value = "S97" style="background:#ffffff">Ambala</option><option value = "S379" style="background:#ffffff">Bahadurgarh</option><option value = "S345" style="background:#ffffff">Dharuhera</option><option value = "S11" style="background:#ffffff">Faridabad</option><option value = "S9" style="background:#ffffff">Gurgaon</option><option value = "S98" style="background:#ffffff">Karnal</option><option value = "S99" style="background:#ffffff">Kurukshetra</option><option value = "S343" style="background:#ffffff">Palwal</option><option value = "S354" style="background:#ffffff">Kundli</option><option value = "S103" style="background:#ffffff">Panchkula</option><option value = "S341" style="background:#ffffff">Rewari</option><option value = "S100" style="background:#ffffff">Panipat</option><option value = "S101" style="background:#ffffff">Rohtak</option><option value = "S102" style="background:#ffffff">Sonipat</option><option value = "other_S104" style="background:#ffffff">Haryana Other</option></optgroup><optgroup label="Himachal Pradesh" style="background:#FDF6B5"><option value = "S333" style="background:#ffffff">Baddi</option><option value = "S105" style="background:#ffffff">Dalhousie</option><option value = "S319" style="background:#ffffff">Chail</option><option value = "S106" style="background:#ffffff">Dharamsala</option><option value = "S321" style="background:#ffffff">Kasauli</option><option value = "S322" style="background:#ffffff">Kufri</option><option value = "S107" style="background:#ffffff">Kulu</option><option value = "S108" style="background:#ffffff">Manali</option><option value = "S323" style="background:#ffffff">Rajghar</option><option value = "S109" style="background:#ffffff">Shimla</option><option value = "S320" style="background:#ffffff">Solan</option><option value = "other_S110" style="background:#ffffff">HP Other</option></optgroup><optgroup label="Jammu &amp; Kashmir" style="background:#FDF6B5"><option value = "S111" style="background:#ffffff">Jammu</option><option value = "S112" style="background:#ffffff">Srinagar</option><option value = "other_S113" style="background:#ffffff">J&amp;K Other</option></optgroup><optgroup label="Jharkhand" style="background:#FDF6B5"><option value = "S114" style="background:#ffffff">Bokaro</option><option value = "S115" style="background:#ffffff">Dhanbad</option><option value = "S116" style="background:#ffffff">Jamshedpur</option><option value = "S117" style="background:#ffffff">Ranchi</option><option value = "other_S118" style="background:#ffffff">Jharkhand Other</option></optgroup><optgroup label="Karnataka" style="background:#FDF6B5"><option value = "S396" style="background:#ffffff">Coorg</option><option value = "S27" style="background:#ffffff">Bangalore Central</option><option value = "S25" style="background:#ffffff">Bangalore East</option><option value = "S23" style="background:#ffffff">Bangalore North</option><option value = "S24" style="background:#ffffff">Bangalore South</option><option value = "S26" style="background:#ffffff">Bangalore West</option><option value = "S119" style="background:#ffffff">Belgaum</option><option value = "S120" style="background:#ffffff">Bellary</option><option value = "S121" style="background:#ffffff">Bidar</option><option value = "S122" style="background:#ffffff">Dharwad</option><option value = "S123" style="background:#ffffff">Gulbarga</option><option value = "S124" style="background:#ffffff">Hubli</option><option value = "S125" style="background:#ffffff">Kolar</option><option value = "S126" style="background:#ffffff">Mangalore</option><option value = "S127" style="background:#ffffff">Mysore</option><option value = "other_S28" style="background:#ffffff">Bangalore Other</option><option value = "S392" style="background:#ffffff">Hassan</option><option value = "other_S128" style="background:#ffffff">Karnataka Other</option><option value = "S394" style="background:#ffffff">Shimoga</option></optgroup><optgroup label="Kerala" style="background:#FDF6B5"><option value = "S129" style="background:#ffffff">Alappuzha</option><option value = "S130" style="background:#ffffff">Calicut</option><option value = "S131" style="background:#ffffff">Ernakulam</option><option value = "S53" style="background:#ffffff">Kochi</option><option value = "S132" style="background:#ffffff">Kollam</option><option value = "S133" style="background:#ffffff">Kottayam</option><option value = "S134" style="background:#ffffff">Palakkad</option><option value = "S135" style="background:#ffffff">Palghat</option><option value = "S136" style="background:#ffffff">Thrissur</option><option value = "S137" style="background:#ffffff">Trivandrum</option><option value = "S138" style="background:#ffffff">Wayanad</option><option value = "other_S139" style="background:#ffffff">Kerala Other</option></optgroup><optgroup label="Madhya Pradesh" style="background:#FDF6B5"><option value = "S140" style="background:#ffffff">Bhopal</option><option value = "S141" style="background:#ffffff">Gwalior</option><option value = "S51" style="background:#ffffff">Indore</option><option value = "S142" style="background:#ffffff">Jabalpur</option><option value = "S143" style="background:#ffffff">Ujjain</option><option value = "other_S144" style="background:#ffffff">MP Other</option></optgroup><optgroup label="Maharashtra" style="background:#FDF6B5"><option value = "S388" style="background:#ffffff">Vikramgad</option><option value = "S267" style="background:#ffffff">Ahmednagar</option><option value = "S355" style="background:#ffffff">Baramati</option><option value = "S268" style="background:#ffffff">Akola</option><option value = "S357" style="background:#ffffff">Alibaug</option><option value = "S269" style="background:#ffffff">Amravati</option><option value = "S270" style="background:#ffffff">Aurangabad</option><option value = "S271" style="background:#ffffff">Bhandara</option><option value = "S272" style="background:#ffffff">Bid</option><option value = "S273" style="background:#ffffff">Buldana</option><option value = "S274" style="background:#ffffff">Chandrapur</option><option value = "S275" style="background:#ffffff">Dhule</option><option value = "S276" style="background:#ffffff">Gadchiroli</option><option value = "S277" style="background:#ffffff">Hingoli</option><option value = "S278" style="background:#ffffff">Jalgaon</option><option value = "S279" style="background:#ffffff">Jalna</option><option value = "S280" style="background:#ffffff">Kolhapur</option><option value = "S281" style="background:#ffffff">Konkan</option><option value = "S282" style="background:#ffffff">Latur</option><option value = "S283" style="background:#ffffff">Mumbai Andheri-Dahisar</option><option value = "S290" style="background:#ffffff">Mumbai Beyond Thane</option><option value = "S284" style="background:#ffffff">Mumbai - Central Line</option><option value = "S285" style="background:#ffffff">Mumbai Harbour</option><option value = "S286" style="background:#ffffff">Mumbai Navi</option><option value = "S287" style="background:#ffffff">Mumbai South</option><option value = "S288" style="background:#ffffff">Mumbai South West</option><option value = "S289" style="background:#ffffff">Mumbai Thane</option><option value = "S291" style="background:#ffffff">Mumbai Mira Road and Beyond</option><option value = "S293" style="background:#ffffff">Nagpur</option><option value = "S294" style="background:#ffffff">Nanded</option><option value = "S295" style="background:#ffffff">Nandurbar</option><option value = "S296" style="background:#ffffff">Nasik</option><option value = "S297" style="background:#ffffff">Osmanabad</option><option value = "S298" style="background:#ffffff">Parbhani</option><option value = "S299" style="background:#ffffff">Pune</option><option value = "S300" style="background:#ffffff">Raigarh</option><option value = "S301" style="background:#ffffff">Ratnagiri</option><option value = "S302" style="background:#ffffff">Sangli</option><option value = "S303" style="background:#ffffff">Satara</option><option value = "S316" style="background:#ffffff">Shirdi</option><option value = "S304" style="background:#ffffff">Sholapur</option><option value = "S305" style="background:#ffffff">Sindhudurg</option><option value = "S306" style="background:#ffffff">Wardha</option><option value = "S307" style="background:#ffffff">Washim</option><option value = "S308" style="background:#ffffff">Yavatmal</option><option value = "S309" style="background:#ffffff">Maharashtra Other</option><option value = "other_S292" style="background:#ffffff">Mumbai Other</option></optgroup><optgroup label="Manipur" style="background:#FDF6B5"><option value = "S154" style="background:#ffffff">Imphal</option><option value = "other_S155" style="background:#ffffff">Manipur Other</option></optgroup><optgroup label="Meghalya" style="background:#FDF6B5"><option value = "S156" style="background:#ffffff">Shillong</option><option value = "other_S157" style="background:#ffffff">Meghalaya Other</option></optgroup><optgroup label="Mizoram" style="background:#FDF6B5"><option value = "S158" style="background:#ffffff">Aizwal</option><option value = "other_S159" style="background:#ffffff">Mizoram Other</option></optgroup><optgroup label="Nagaland" style="background:#FDF6B5"><option value = "S160" style="background:#ffffff">Dimapur</option><option value = "other_S161" style="background:#ffffff">Nagaland Other</option></optgroup><optgroup label="Orissa" style="background:#FDF6B5"><option value = "S162" style="background:#ffffff">Bhubaneshwar</option><option value = "S163" style="background:#ffffff">Cuttack</option><option value = "S164" style="background:#ffffff">Paradeep</option><option value = "S165" style="background:#ffffff">Puri</option><option value = "S166" style="background:#ffffff">Rourkela</option><option value = "other_S167" style="background:#ffffff">Orissa Other</option></optgroup><optgroup label="Punjab" style="background:#FDF6B5"><option value = "S168" style="background:#ffffff">Amritsar</option><option value = "S169" style="background:#ffffff">Jalandhar</option><option value = "S54" style="background:#ffffff">Ludhiana</option><option value = "S170" style="background:#ffffff">Mohali</option><option value = "S171" style="background:#ffffff">Pathankot</option><option value = "S172" style="background:#ffffff">Patiala</option><option value = "other_S173" style="background:#ffffff">Punjab Other</option><option value = "S318" style="background:#ffffff">Zirakpur</option><option value = "S356" style="background:#ffffff">Kharar</option></optgroup><optgroup label="Rajasthan" style="background:#FDF6B5"><option value = "S174" style="background:#ffffff">Ajmer</option><option value = "S175" style="background:#ffffff">Alwar</option><option value = "S342" style="background:#ffffff">Behror</option><option value = "S176" style="background:#ffffff">Bhilwara</option><option value = "S317" style="background:#ffffff">Bhiwadi</option><option value = "S179" style="background:#ffffff">Kota</option><option value = "S52" style="background:#ffffff">Jaipur</option><option value = "S177" style="background:#ffffff">Jaisalmer</option><option value = "S178" style="background:#ffffff">Jodhpur</option><option value = "S340" style="background:#ffffff">Neemrana</option><option value = "S344" style="background:#ffffff">Shahjapur</option><option value = "S180" style="background:#ffffff">Udaipur</option><option value = "other_S181" style="background:#ffffff">Rajasthan Other</option></optgroup><optgroup label="Sikkim" style="background:#FDF6B5"><option value = "S182" style="background:#ffffff">Gangtok</option><option value = "other_S183" style="background:#ffffff">Sikkim Other</option></optgroup><optgroup label="Tamil Nadu" style="background:#FDF6B5"><option value = "S386" style="background:#ffffff">Kutralam</option><option value = "S38" style="background:#ffffff">Chennai Central</option><option value = "S35" style="background:#ffffff">Chennai North</option><option value = "S36" style="background:#ffffff">Chennai South</option><option value = "S37" style="background:#ffffff">Chennai West</option><option value = "S184" style="background:#ffffff">Coimbatore</option><option value = "S185" style="background:#ffffff">Erode</option><option value = "S186" style="background:#ffffff">Hosur</option><option value = "S310" style="background:#ffffff">Kancheepuram</option><option value = "S311" style="background:#ffffff">Kodaikanal</option><option value = "S352" style="background:#ffffff">Karur</option><option value = "S187" style="background:#ffffff">Madurai</option><option value = "S312" style="background:#ffffff">Mamandur</option><option value = "S188" style="background:#ffffff">Ooty</option><option value = "S189" style="background:#ffffff">Salem</option><option value = "S313" style="background:#ffffff">Samayaparam</option><option value = "S314" style="background:#ffffff">Thiruporur</option><option value = "S190" style="background:#ffffff">Tirunelveli</option><option value = "S191" style="background:#ffffff">Trichy</option><option value = "S315" style="background:#ffffff">Uthiramerur</option><option value = "S391" style="background:#ffffff">Nagercoil</option><option value = "S192" style="background:#ffffff">Vellore</option><option value = "other_S39" style="background:#ffffff">Chennai Other</option><option value = "other_S193" style="background:#ffffff">TN Other</option><option value = "S393" style="background:#ffffff">Tiruvallur</option></optgroup><optgroup label="Tripura" style="background:#FDF6B5"><option value = "S194" style="background:#ffffff">Agartala</option><option value = "other_S195" style="background:#ffffff">Tripura Other</option></optgroup><optgroup label="Uttar Pradesh" style="background:#FDF6B5"><option value = "S196" style="background:#ffffff">Agra</option><option value = "S197" style="background:#ffffff">Aligarh</option><option value = "S373" style="background:#ffffff">Azamgarh</option><option value = "S375" style="background:#ffffff">Amethi</option><option value = "S198" style="background:#ffffff">Allahabad</option><option value = "S199" style="background:#ffffff">Bareilly</option><option value = "S368" style="background:#ffffff">Basti</option><option value = "S370" style="background:#ffffff">Bhadohi</option><option value = "S371" style="background:#ffffff">Budaun</option><option value = "S377" style="background:#ffffff">Barabanki</option><option value = "S200" style="background:#ffffff">Faizabad</option><option value = "S363" style="background:#ffffff">Firozabad</option><option value = "S365" style="background:#ffffff">Etawah</option><option value = "S366" style="background:#ffffff">Hapur</option><option value = "S10" style="background:#ffffff">Ghaziabad</option><option value = "S201" style="background:#ffffff">Gorakhpur</option><option value = "S367" style="background:#ffffff">Gonda</option><option value = "S374" style="background:#ffffff">Ghazipur</option><option value = "S8" style="background:#ffffff">Greater Noida</option><option value = "S202" style="background:#ffffff">Kanpur</option><option value = "S360" style="background:#ffffff">Hardoi</option><option value = "S361" style="background:#ffffff">Jhansi</option><option value = "S203" style="background:#ffffff">Lucknow</option><option value = "S204" style="background:#ffffff">Mathura</option><option value = "S205" style="background:#ffffff">Meerut</option><option value = "S358" style="background:#ffffff">Muzaffarnagar</option><option value = "S362" style="background:#ffffff">Moradabad</option><option value = "S369" style="background:#ffffff">Mirzapur</option><option value = "S372" style="background:#ffffff">Mau</option><option value = "S7" style="background:#ffffff">Noida</option><option value = "S364" style="background:#ffffff">Rampur</option><option value = "S376" style="background:#ffffff">Rai Bareilly</option><option value = "S206" style="background:#ffffff">Shahjanpur</option><option value = "S359" style="background:#ffffff">Saharanpur</option><option value = "S207" style="background:#ffffff">Varanasi</option><option value = "S208" style="background:#ffffff">Vrindavan</option><option value = "other_S209" style="background:#ffffff">UP Other</option></optgroup><optgroup label="Uttarakhand" style="background:#FDF6B5"><option value = "S210" style="background:#ffffff">Dehradun</option><option value = "S211" style="background:#ffffff">Haridwar</option><option value = "S212" style="background:#ffffff">Mukteswar</option><option value = "S213" style="background:#ffffff">Nainital</option><option value = "S339" style="background:#ffffff">Rishikesh</option><option value = "S214" style="background:#ffffff">Roorkee</option><option value = "S215" style="background:#ffffff">Rudrapur</option><option value = "other_S216" style="background:#ffffff">Uttarakhand Other</option><option value = "S389" style="background:#ffffff">Lansdowne</option></optgroup><optgroup label="West Bengal" style="background:#FDF6B5"><option value = "S217" style="background:#ffffff">Durgapur</option><option value = "S218" style="background:#ffffff">Kharagpur</option><option value = "S402" style="background:#ffffff">Hoogly</option><option value = "S334" style="background:#ffffff">Haldia</option><option value = "S33" style="background:#ffffff">Kolkata Central</option><option value = "S31" style="background:#ffffff">Kolkata East</option><option value = "S29" style="background:#ffffff">Kolkata North</option><option value = "S30" style="background:#ffffff">Kolkata South</option><option value = "S32" style="background:#ffffff">Kolkata West</option><option value = "S336" style="background:#ffffff">Sonarpur</option><option value = "S335" style="background:#ffffff">Uttarpara</option><option value = "other_S34" style="background:#ffffff">Kolkata Other</option><option value = "other_S219" style="background:#ffffff">WB Other</option></optgroup><optgroup label="Union Territory" style="background:#FDF6B5"><option value = "S50" style="background:#ffffff">Chandigarh</option><option value = "S220" style="background:#ffffff">D&amp;N Haveli</option><option value = "S221" style="background:#ffffff">Daman &amp; Diu</option><option value = "S222" style="background:#ffffff">Pondicherry</option></optgroup><optgroup label="Uttranchal" style="background:#FDF6B5"></optgroup><optgroup label="Other" style="background:#FDF6B5"><option value="other">Other Cities</option>					</select>
					</div>
								</td>
							</tr>

                </table>  
                        </fieldset>
                        <fieldset>
                            <legend class="register">Login Infromation </legend>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                            CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                            CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                            CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                                            ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                            Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                                            runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                            ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                            ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Register"
                                ValidationGroup="RegisterUserValidationGroup" 
                                onclick="CreateUserButton_Click" />
                        </p>
                    </div>
                    <div class="registerbenefit" >
                 

                    </div>
                    </div>
</asp:Content>
