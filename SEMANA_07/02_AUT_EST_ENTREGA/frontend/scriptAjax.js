function mostraEndereco() {
    fetch('/endereco')
      .then(response => response.json())
      .then(data => {
        const enderecoDiv = document.getElementById('dados-endereco');
        enderecoDiv.innerHTML = ''; // Limpa o conteúdo anterior
  
        data.forEach(item => {
          const { pais, estado, cidade, bairro, rua, complemento, cep } = item;
          let html = `
            <p>PAÍS: ${pais}</p>
            <p>ESTADO: ${estado}</p>
            <p>CIDADE: ${cidade}</p>
            <p>BAIRRO: ${bairro}</p>
            <p>RUA: ${rua}</p>
            <p>COMPLEMENTO: ${complemento}</p>
            <p>CEP: ${cep}</p>
          `;
  
          enderecoDiv.innerHTML += html;
        });
      })
      .catch(error => {
        console.error('Ocorreu um erro:', error);
      });
  }
  