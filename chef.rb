require "sqlite3"

class Chef

  def initialize(first_name, last_name, birthday, email, phone)
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
    @email = email
    @phone = phone
    # @created_at = created_at
    # @updated_at = updated_at
    Chef.db.execute("
      INSERT INTO chefs
        (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
        ('#{@first_name}', '#{@last_name}', '#{@birthday}', '#{@email}', '#{@phone}', DATETIME('now'), DATETIME('now'))
    ")
  end

  def self.all
    Chef.db.execute("SELECT * FROM chefs;")      
  end

  def self.where(column, value)
    # query = "SELECT * FROM chefs WHERE #{column} = \'#{value}\'"
#   value = params[:value]
    
    Chef.db.execute(
        # SELECT * FROM chefs WHERE #{column} = #{value}
      # <<-SQL
        "SELECT * FROM chefs WHERE #{column} = ?", value).first #parámetros a la claúsula WHERE. El ? se llama placeholder y sirve para evitar ataques de SQL injection
        #{column} = ?", value
      # SQL
      
     #{?}
  end
def self.find(value)
    Chef.db.execute("SELECT * FROM chefs WHERE id = ?", value).first
  end

  def self.delete(value)
    Chef.db.execute("DELETE FROM chefs WHERE #{column} = ?" ,value)
  end

  def self.create_table
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  
  def self.seed
    Chef.db.execute(
      <<-SQL
       INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Ferran', 'Adriá', '1985-02-09', 'ferran.adria@elbulli.com', '42381093238', DATETIME('now'), DATETIME('now')),
          ('Juan', 'Castillo', '1991-06-91', 'juma@elbulli.com', '42381093239', DATETIME('now'), DATETIME('now')),
          ('Jesus', 'Romero', '1992-07-99', 'jesus@elbulli.com', '10381093239', DATETIME('now'), DATETIME('now')),
          ('Luis', 'Perez', '1989-01-89', 'frank@elbulli.com', '11381093239', DATETIME('now'), DATETIME('now'));
      SQL
    )
  end

  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end



# Chef.all.each{|x| puts x[0]}
puts "Chef.all"
p Chef.all
puts "Chef.where"
p Chef.where('id', 3)

        
  
