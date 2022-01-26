// Validate form input elements
const validateLib = require('./ValidationLib');

/**
 * Validate form data
 * @param data
 * @returns {boolean|{msg: string, isNotValid: boolean}|{isNotValid}|*}
 */
function validateFormData(data) {

    // Check required fields
    let result = validateLib.checkRequired("firstName", data.firstName);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("email", data.email);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("surname", data.surname);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("feedback", data.feedback);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("canton", data.canton);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("postalcode", data.postalcode);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("country", data.country);
    if (result.isNotValid) { return result; }

    result = validateLib.checkRequired("date", data.date);
    if (result.isNotValid) { return result; }


    //check length
    result = validateLib.checkLength("firstName", data.firstName, 3, 25);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("surname", data.surname, 3, 25);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("feedback", data.feedback, 3, 200);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("canton", data.canton, 3, 25);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("country", data.country, 3, 25);
    if (result.isNotValid) { return result; }

    result = validateLib.checkLength("date", data.date, 6, 25);
    if (result.isNotValid) { return result; }

    //check email syntax
    result = validateLib.checkEmail("email", data.email);
    if (result.isNotValid) { return result; }


    //all inputs are valid and isNotValid=false
    return false;
}

/**
 *  Export validation functions for further usage.
 *  function to export WITHOUT brackets!
 */
module.exports = {
    validateContact: validateFormData
}
