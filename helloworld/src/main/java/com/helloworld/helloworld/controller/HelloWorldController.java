package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello-world")
public class HelloWorldController {
	
	@GetMapping
	public String helloWorld() {
		return "Hello world!";
	}
	
	@GetMapping("/bsm")
	public String bsm() {
		return "BSMs <br>"
				+ "- Persistência <br>"
				+ "- Mentalidade de Crescimento <br>"
				+ "- Orientação ao Futuro <br>"
				+ "- Responsabilidade Pessoal <br>"
				+ "- Trabalho em Equipe <br>"
				+ "- Comunicação <br>"
				+ "- Comunicação Não Violenta <br>"
				+ "- Atenção para Detalhes <br>"
				+ "- Proatividade";
	}
	
	@GetMapping("/aprendizagem")
	public String objetivosAprendizagem() {
		
		return "Meu objetivo é melhorar na Otimização do tempo. <br>E mais e mais Spring Boot!";
	}
}
