//aba de informações extras
$(document).ready(function(){
    var toggle = true
    $("#flip").click(function(){
    if (toggle) {
        $("#panel").slideDown(5000);
        toggle = !toggle
    } else {
        $("#panel").slideUp(5000);
        toggle = !toggle  
    }
    });
    $("#stop").click(function(){
    $("#panel").stop();
    });
});

//pop-up de informações
$(document).ready(function(){
    $("#nome").mouseenter(function(){
        alert("Este é o currículo de Davi Motta! Para entrar em contato, mande um email para o endereço: davi.motta@sou.inteli.edu.br");
    });
});
