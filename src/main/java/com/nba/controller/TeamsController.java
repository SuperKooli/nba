package com.nba.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.nba.entity.Teams;
import com.nba.service.TeamsService;

@RestController
@RequestMapping("/teams")
public class TeamsController {
	
	@Autowired
	private TeamsService teamsService;
	
	@GetMapping("/all")
	public List<Teams> getAllTeams() {
		return teamsService.getAllTeams();
	}
	
	@GetMapping("team")
	public Teams getTeamById(@PathParam(value="teamId") Integer teamId) {
		return teamsService.getTeamById(teamId);
	}

}
