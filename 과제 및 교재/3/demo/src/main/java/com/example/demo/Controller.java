package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller<F> {
	@SuppressWarnings("rawtypes")
	List<Capital> list = new ArrayList<Capital>();

	@RequestMapping(value = "/post", method = RequestMethod.POST)
	public void detail(@RequestParam String nation, @RequestParam String city) {

		@SuppressWarnings("rawtypes")
		Capital capital = new Capital(nation, city);
		list.add(capital);
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/capital", method = RequestMethod.GET)
	public List<Capital> test() {
		return list;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/capital/{city}", method = RequestMethod.GET)
	public <S> Capital<F, S> detail(@PathVariable("city") String city) {

		@SuppressWarnings("rawtypes")
		Capital capital = new Capital();

		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getSecond().equals(city)) {
				capital = list.get(i);
			}
		}
		return capital;
	}

}
