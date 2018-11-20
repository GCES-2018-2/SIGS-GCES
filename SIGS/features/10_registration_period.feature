Feature: Registration Period
	To use application resources
	As a system user
	I would like to registrate a period

	Background:
		Given I am logged in as assistant administrative
		When click on link 'Período'

	Scenario: Show periods of halfyear
		Then the 'Período' page should load with periods information

	Scenario: Edit period 'Alocação' with valid
		And I press 'Icon edit' button
		And I fill in 'initial_date' with '2018-01-15'
		And I fill in 'final_date' with '2018-02-10'
		When I press 'Salvar' button
		Then the 'Período' page should load with 'Dados do período atualizados com sucesso'

	Scenario: Edit period 'Alocação' with invalid
		And I press 'Icon edit' button
		And I fill in 'initial_date' with '2018-10-15'
		And I fill in 'final_date' with '2018-03-10'
		When I press 'Salvar' button
		Then the 'Editando Período' page should load with 'Dados do período não foram atualizados'
