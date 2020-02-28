class Book
    @@array_of_book=[]
    attr_accessor :name, :author, :page_no, :issued_status, :quantity

    def initialize
        @name
        @author
        @page_no
        @issued_status
        @quantity
    end

    def add_book
        @@array_of_book.push(self)
    end

    def get_all_book
        i=1
        @@array_of_book.each do |var|
            puts "\n#{i}\n name is #{var.name}\n author name : #{var.author}\n page no:#{var.page_no}\n issued status #{var.issued_status}\n remaining quantity #{var.quantity}"
            i += 1
        end
    end
    def find_element(booknumber)
        bk_no = booknumber.to_i - 1
        temp_book = Book.new
        temp_book = @@array_of_book.fetch(bk_no)
        temp_quant = temp_book.quantity.to_i-1
        temp_book.quantity=temp_quant
    end

    def find_book(booknumber)
        bk_no = booknumber.to_i - 1
        temp_book = Book.new
        temp_book = @@array_of_book.fetch(bk_no)
        temp_book.name
    end
end

class Member
    @@array_of_members=[]
    attr_accessor :id, :name, :gender, :total_book_array
    def initialize
        @id
        @name
        @gender
        @total_book_array = []
    end

    def add_member
        @@array_of_members.push(self)
    end

    def borrow_book
            member_temp = Member.new
         
          puts "\nenter username"
          username = gets.chomp
          i = -1
          @@array_of_members.each do |var|
          member_temp = @@array_of_members.at(i)
        
            if(var.name == username)
                puts Book.new.get_all_book
                puts "\nenter book number you want to buy"
                booknumber =gets.chomp
                Book.new.find_element(booknumber)
                bookname = Book.new.find_book(booknumber)
                var.total_book_array.push(bookname)
                puts "\nyou have successfully borroowed book\n"
                break
            end
            i += 1
          end
    end

    def get_member_detail
        i=1
        @@array_of_members.each do |var|
            puts "\n#{i}\n id is #{var.id}\n  name : #{var.name}\n gender :#{var.gender}\n borrowed books #{var.total_book_array}"
            i += 1
        end
    end
end

book = Book.new
book.name="wings of fire"
book.author="dr. apj kalam"
book.page_no="200"
book.issued_status="issued"
book.quantity=10
book.add_book
book = Book.new
book.name="different path"
book.author="dr. hadim ansari"
book.page_no="400"
book.issued_status="issued"
book.quantity=10
book.add_book
#book.get_all_book


j=1
while(j!=3) do 
    member = Member.new
    puts "enter id"
    id = gets.chomp
    member.id=id
    puts "enter name"
    name = gets.chomp
    member.name=name
    puts "enter gender"
    gender = gets.chomp
    member.gender=gender
    member.add_member
    j += 1
end


i=1
while(i!=8) do
    puts "\n 1.borrow book\n 2.show book\n 3.get member details\n press any key to exit"
    no = gets.chomp.to_i

if no == 1
    member.borrow_book
elsif no ==2
book.get_all_book
elsif no ==3
member.get_member_detail
else
    break
end
end

