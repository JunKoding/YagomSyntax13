import Cocoa

// class 클래스

// 정의

// class 이름 {
//    구현부
// }




// 프로퍼티 및 메소드

class Sample {
    var mutableProperty: Int = 100 // 인스턴스 가변 프로퍼티
    let immutableProperty: Int = 100 // 인스턴스 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    func instanceMethod() {
        print("instance Method.")
    }
    // 인스턴스 메소드
    
    static func typeMethod() {
        print("type Method.")
    }
    // 타입 메소드
    // 재정의 불가 타입 메소드 - static
    
    class func classMethod() {
        print("type Method - class")
    }
    // 재정의 가능 타입 메소드 - class
}





// class 사용

var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
// 오류) mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200 // var, let 상관없이 내부 mutableProperty값은 바꿀 수 있다.
// 오류) immutableReference.immutableProperty = 200
// 오류) immutableReference = mutableReference

// 타입 프로퍼티 및 메소드

Sample.typeProperty = 300
Sample.typeMethod() // type Method

// 오류) mutableReference.typeProperty = 400
// 오류) mutableReference.typeMethod()





// 학생 class

class Student {
    var name: String = "Unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var jun: Student = Student()
jun.name = "jun"
jun.class = "스위프트"
jun.selfIntroduce()

let yuri: Student = Student()
yuri.name = "yuri"
yuri.class = "스위프트"
yuri.selfIntroduce()
// 가변 프로퍼티를 let으로 설정했음에도 불구하고 struct와 달리 변경 가능하다.
