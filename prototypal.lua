-- Think as JavaScript object in lua

local function Person(name,age)
    return {
        name,
        age,
        getName = function (self)
            return self.name;
        end,
        getAge = function (self)
          return self.age;
        end
    }
end


local function Student(name,age,school_id)
    local student = Person(name,age)
    student.school_id = school_id
    student.introduce = function (self)
        print(string.format("Hello, I'm %s and my student ID number is %s",self:getName(),self.school_id))
    end
    return student;
end

local student = Student("Mg Mg",20,12345)
student:introduce()
