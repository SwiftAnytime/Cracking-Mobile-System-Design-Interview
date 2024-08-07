

protocol Validator {
    var next: Validator? {get set}
    func validate(_ text: String) -> Bool
}

class NonEmptyValidator: Validator {
    var next: Validator?
    
    func validate(_ text: String) -> Bool {
        if text.isEmpty {
            print("Validation failed: The field is empty.")
            return false
        } else {
            return next?.validate(text) ?? true
        }
    }
}

class PasswordStrengthValidator: Validator {
    var next: Validator?
    
    func validate(_ text: String) -> Bool {
        // Simple strength check: at least 8 characters
        if text.count < 8 {
            print("Validation failed: Password is too short.")
            return false
        } else {
            return true
        }
    }
}

let password = "Passwod12334"


let nonEmptyValidate = NonEmptyValidator()
let passStrengthValidate = PasswordStrengthValidator()

nonEmptyValidate.next = passStrengthValidate
passStrengthValidate.next = nil

func validateTheValue(text: String, validator: Validator) -> Bool {
    return validator.validate(text)
}

let isValidPassword = validateTheValue(text: password, validator: nonEmptyValidate)
print(isValidPassword)

