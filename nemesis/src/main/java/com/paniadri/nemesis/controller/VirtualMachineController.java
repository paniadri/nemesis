package com.paniadri.nemesis.controller;


import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.paniadri.nemesis.model.VirtualMachineModel;
import com.paniadri.nemesis.service.VirtualMachineService;

@Controller
@RequestMapping("/")
public class VirtualMachineController{
	
	private static Log log = LogFactory.getLog(VirtualMachineController.class);
	
	@Autowired
	private VirtualMachineService virtualMachineService;
	
	//Aquí además estamos diciendo que el método usado es por petición GET.
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) {
	
	  //la función del método es rellenar las variables libros y libro, una con la lista de libros 
	  //sacados de la base de datos, y libro para que pueda ser rellenada con los datos del formulario.
		
		try {
			log.info("Leyendo lista de VMs");
			
			List<VirtualMachineModel> listaVms = virtualMachineService.listVMs();
			model.addAttribute("vms", listaVms);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		model.addAttribute("vm", new VirtualMachineModel());
		return "index";
	  }
	  
//	@RequestMapping("/addBook")
//	public String addBook(@ModelAttribute("libro") Libro libro) {
//		libro.setId(num);
//		num++;
//		libroService.insert(libro);
//		return "redirect:/";
//  }
}