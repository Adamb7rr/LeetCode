/**
 * @param {string} val
 * @return {Object}
 */
function expect(val) {
    return {
    toBe(expectedVal) {
      if (val === expectedVal) {
        return true;
      } else {
        throw new Error("Not Equal");
      }
    },
    notToBe(expectedVal) {
      if (val !== expectedVal) {
        return true;
      } else {
        throw new Error("Equal");
      }
    }
    }
}

/**
 * expect(5).toBe(5); // true
 * expect(5).notToBe(5); // throws "Equal"
 */