require "test_helper"

class EstudianteControllerTest < ActionDispatch::IntegrationTest
  test "should get estudiante1" do
    get estudiante_estudiante1_url
    assert_response :success
  end

  test "should get estudiante2" do
    get estudiante_estudiante2_url
    assert_response :success
  end
end
