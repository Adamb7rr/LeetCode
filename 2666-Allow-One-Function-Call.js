/**
 * @param {Function} fn
 * @return {Function}
 */
var once = function(fn) {
    
    let hasBeenCalled = false;
    let res;

    return function() {
        if (!hasBeenCalled) {
        hasBeenCalled = true;
        res = fn.apply(this, arguments);
        return res;
        } else {
        return undefined;
        }
    };
};

/**
 * let fn = (a,b,c) => (a + b + c)
 * let onceFn = once(fn)
 *
 * onceFn(1,2,3); // 6
 * onceFn(2,3,6); // returns undefined without calling fn
 */
