require ("minitest/autorun")
require ("minitest/rg")

require_relative("../library")

class TestLibrary < MiniTest::Test
 def setup

   @collection = [{
   title: "lord_of_the_rings",
   rental_details: {
    student_name: "Jeff",
    date: "01/12/16"
   }
 },{
 title: "lord_of_the_flies",
 rental_details: {
  student_name: "Josh",
  date: "02/02/19"
 }
},{
title: "Americanah",
rental_details: {
 student_name: "Fidelma",
 date: "09/08/19"
}
}, ]

end

def test_book_details
  library = Library.new(@collection)
  assert_equal({
  title: "lord_of_the_rings",
  rental_details: {
   student_name: "Jeff",
   date: "01/12/16"
  }
},library.find_book("lord_of_the_rings"))
end

def test_rental_details
  library = Library.new(@collection)
  assert_equal({
   student_name: "Jeff",
   date: "01/12/16"
  },library.find_rental("lord_of_the_rings"))
end

def test_add_book
  library = Library.new(@collection)
  library.add_book("My_new_book")
  assert_equal(4, library.books.length)
end

def test_change_rental_details
  library = Library.new(@collection)
  library.update_rental("Americanah", "Paulie", "20/01/2019")
  assert_equal({
   student_name: "Paulie",
   date: "20/01/2019"
  }, library.find_rental("Americanah"))
end

end
