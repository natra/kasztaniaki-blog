require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
  	@post = Post.new(title: "Co z tym Aguero?", content: "Początek traktatu czasu być cnotorodne. Kto dobre sprawowanie się pod nieme stworzenie. Skoroby kłamstwo dla tego ideału, są pragmatyczne kary. Nagrody cnotorodne mają z niczym inszym niema go wynagrodził i najwyższey doskonałości bez względu na taki idteał jako sprawiedliwego Sędziego. Świętość ustawy moralności; to potrzeba przystąpić do dobrego. Zło niema go znowu wykonywał, lecz zły czyn powinien utraciłyby swoją kulturę, wyjść z niej oznaczyć, o najrealniejszej czyli samoistne. Ale to jest moralne i żądanie lepszego objaśnienia materyi w samym używaniu hojnym będącą. Ludzie chcący być odwiecznym prawidłem w reszcie niemamy żadnego przedmiotu niemoże od nikogo jako jedyne gdzie jedynie prawdziwe dobro. Więc wyraz rum zamiast przestrzeń, pochodziły z moim własnym chceniem, więc są apodyktycznie pewne; bo to przedstawiać nogrody jak gdy rozum tylko szczęśliwości, a żądza ludzi chce uszczęśliwić, skądże się nie czynię więcej wzrasta, więc uważam nietylko działalnym lub niedostatkiem i oraz zwierzęce instynkta; on w sobie Dobra jako jedyne gdzie uczynki przemieniłyby się musiał od myta, czyli pozaświatową t. i żąda, jako najpierwszą Istność Ze wszystkiego, jako najwyższy stopień moralności powzięty stąd, ie np. w jego rozum i.")
  end

  test "should be valid" do 
  	assert @post.valid?
  end

  test "title should be present" do
  	@post.title = "    "
  	assert_not @post.valid?
  end

  test "content should be present" do
  	@post.content = "     "
  	assert_not @post.valid?
  end

  test "title should not be too long" do
  	@post.title = "a" * 61
  	assert_not @post.valid?
	end

	test "order should be most recent first" do
		assert_equal posts(:most_recent), Post.first
	end

end
