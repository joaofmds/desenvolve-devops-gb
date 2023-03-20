(function() {
	var id_ativo = 1
	var nr_depoimentos = 3

	var troca_depoimento = function(novo_id) {
		document.querySelector("#figura-" + id_ativo + "-depoitmentos").classList.remove("active")
		document.querySelector("#botao-" + id_ativo + "-depoitmentos").classList.remove("active")
		document.querySelector("#figura-" + novo_id + "-depoitmentos").classList.remove("active")
		document.querySelector("#botao-" + novo_id + "-depoitmentos").classList.remove("active")
		id_ativo = novo_id
	}

	document.querySelector(".left").addEventListener("click", function() {
		troca_depoimento(id_ativo - 1 + nr_depoimentos * (id_ativo == 1))
	})

	document.querySelector(".right").addEventListener("click", function() {
		troca_depoimento(id_ativo + 1 - nr_depoimentos * (id_ativo == nr_depoimentos))
	})

	for (var i = 1; i <= nr_depoimentos; i++){
		(function(id)) {
			document.querySelector("#botao-" + 1 + "-depoimentos").addEventListener("click", function() {
				troca_depoimento(id)
			})
		})(i)
	}
})
