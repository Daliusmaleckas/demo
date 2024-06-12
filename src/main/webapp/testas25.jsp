<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Geriausi 2022 metu siaubo filmai</title>
    <style>

        /* Pagrindinis puslapis */

        body {


            background: linear-gradient(to right, rgb(60, 255, 0), rgb(34, 132, 220));
            background-size: 125%
        }


        .div1 {

            display: inline-block;
            margin: 0;
            padding: 0;
            margin-left: 400px;
            color:white;
            background-color: transparent



        }

        .loginas {

            display: inline-block;
            margin: 0;
            padding: 0;
            margin-top: 80px;
            padding-top: 20px;
            padding-left: 20px;
            padding-right: 20px;
            padding-bottom: 20px;
            border-top: 4px solid cyan;
            border-left: 4px solid cyan;
            border-bottom: 4px solid cyan;
            border-right: 4px solid cyan;
            border-radius: 20px;
            background: linear-gradient(to right,  rgb(113, 130, 149), rgb(78, 205, 196), rgb(113, 130, 149));
            box-shadow: 5px 4px 35px 0px rgb(117, 226, 226)

        }

        .buttonlogin {

            margin-top: 40px;
            width: 177px;
            height: 35px;
            border: 3px solid white;
            border-radius: 15px;
            color: white;
            cursor: pointer;
            background-color: transparent;


        }

        .buttonregister {

            margin-top: 3px;
            width: 177px;
            height: 35px;
            border: 3px solid white;
            border-radius: 15px;
            color: white;
            cursor: pointer;
            background-color: transparent;


        }


        .buttonlogin:active, .buttonregister:active {

            border: 3px solid rgb(223, 217, 217);
            color: rgb(223, 217, 217);
        }

        .buttonlogin:hover, .buttonregister:hover {
            border: 3px solid rgb(223, 217, 217);
            color: rgb(223, 217, 217);
        }

        .inputs {

            height: 22px;
            border: none;
            background-color: azure;
            border-radius: 5px;
            outline: none;
            border-bottom: 3px solid cyan;
            border-radius: 0px;



        }

        input:-webkit-autofill,
        input:-webkit-autofill:hover,
        input:-webkit-autofill:focus,
        input:-webkit-autofill:active {
            transition: background-color 5000s ease-in-out 0s;
            -webkit-text-fill-color: cyan ;

        }

        .inputs[type="text"],[type="password"], textarea {

            background: transparent;
            color:rgb(149, 243, 243);

        }

        ::placeholder {
            color: rgb(255, 255, 255);
            font-size: 15px;
        }

        input, select, textarea{
            color: rgb(255, 255, 255);
            font-size: 15px;
        }

        .chooseGenre {
            background: transparent;
            margin-top: 20px;
            padding-left: 33px;
            padding-right: 23px;
            text-align: left;
            border-top: 2px solid white;
            border-left: 2px solid white;
            border-right: 2px solid white;
            border-bottom: 2px solid white;
            border-radius: 15px;

        }



    </style>
</head>
<body>

<p style="color: white;">admin: admin, 123456</p>
<p style="color: white;">Klientas: Vardas478, 123456</p>

<div class="div1">

</div>

<div class="loginas">
    <p style="margin-bottom: 0px; text-align: center; font-size: 30px;"> <strong> <u style="color:white">Prisijungti:</u> </strong></p> <br>
    <input id="vardas" class="inputs" style="margin-bottom: 15px;" minlength="3" maxlength="15" required placeholder="Prisjungimo Vardas" type="text"> <br>
    <input id="slaptazodis" class="inputs" minlength="7" maxlength="15" required placeholder="Slaptazodis" type="password"> <br>

    <button onclick="prisijungti()" id="loginas" type="reset" class="buttonlogin"> <strong> Prisijungti </strong> </button> <br>
    <button onclick="registruotis()" id="register" type="reset" class="buttonregister"> <strong> Registruotis</strong> </button> <br>

    <select class="chooseGenre" id="">
        <option style="background-color: black;" id="ktg">-Kategorija-</option>
        <option style="background-color: black;" id="Siaubo" value="Siaubo">Siaubo filmai</option>  <br>
        <option style="background-color: #000000;" id="Veiksmo" value="Veiksmo">Veiksmo filmai</option>
    </select>

</div>



<script>

    function prisijungti() {

        const vardas = document.getElementById('vardas').value;
        const slaptazodis = document.getElementById('slaptazodis').value

        if ( vardas == "Vardas478" && slaptazodis == "123456"  && document.getElementById('Siaubo').selected) {
            window.location = "svetaine2.html";
            return false; }

        else  if ( vardas == "Vardas478" && slaptazodis == "123456"  && document.getElementById('Veiksmo').selected) {
            window.location = "svetaine2Veiksmo.html";
            return false; }

        else if (vardas == "admin" && slaptazodis == "123456" && document.getElementById('Siaubo').selected) {
            window.location = "svetaine2admin.html";
            return false;
        }

        else if (vardas == "admin" && slaptazodis == "123456" && document.getElementById('Veiksmo').selected) {
            window.location = "svetaine2Veiksmo.html";
            return false;
        }

        else if (vardas == "admin" && slaptazodis == "123456" && document.getElementById('ktg').selected) {
            alert("Jus nepasirinkote kategorijos.")
            return false;
        }

        else if (vardas == "Vardas478" && slaptazodis == "123456" && document.getElementById('ktg').selected) {
            alert("Jus nepasirinkote kategorijos.")
            return false;
        }

        else {
            alert('Slaptazodis arba prisijungimo vardas neteisingas!')
        }


    }

    function registruotis() {

        window.location = "svetaineReg.html";



    }




</script>




</body>
</html>