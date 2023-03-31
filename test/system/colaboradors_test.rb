require "application_system_test_case"

class ColaboradorsTest < ApplicationSystemTestCase
  setup do
    @colaborador = colaboradors(:one)
  end

  test "visiting the index" do
    visit colaboradors_url
    assert_selector "h1", text: "Colaboradors"
  end

  test "should create colaborador" do
    visit colaboradors_url
    click_on "New colaborador"

    fill_in "Pis", with: @colaborador.PIS
    check "Afastado" if @colaborador.afastado
    fill_in "Carga horaria", with: @colaborador.carga_horaria
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Data de nascimento", with: @colaborador.data_de_nascimento
    check "Deficiencia" if @colaborador.deficiencia
    fill_in "Etnia", with: @colaborador.etnia
    fill_in "Nome", with: @colaborador.nome
    check "Outra agencia" if @colaborador.outra_agencia
    fill_in "Rg", with: @colaborador.rg
    fill_in "Sexo", with: @colaborador.sexo
    click_on "Create Colaborador"

    assert_text "Colaborador was successfully created"
    click_on "Back"
  end

  test "should update Colaborador" do
    visit colaborador_url(@colaborador)
    click_on "Edit this colaborador", match: :first

    fill_in "Pis", with: @colaborador.PIS
    check "Afastado" if @colaborador.afastado
    fill_in "Carga horaria", with: @colaborador.carga_horaria
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Data de nascimento", with: @colaborador.data_de_nascimento
    check "Deficiencia" if @colaborador.deficiencia
    fill_in "Etnia", with: @colaborador.etnia
    fill_in "Nome", with: @colaborador.nome
    check "Outra agencia" if @colaborador.outra_agencia
    fill_in "Rg", with: @colaborador.rg
    fill_in "Sexo", with: @colaborador.sexo
    click_on "Update Colaborador"

    assert_text "Colaborador was successfully updated"
    click_on "Back"
  end

  test "should destroy Colaborador" do
    visit colaborador_url(@colaborador)
    click_on "Destroy this colaborador", match: :first

    assert_text "Colaborador was successfully destroyed"
  end
end
