// function ajax(option) {
//     let ajax = new XMLHttpRequest();
//     option.type = (option.type || 'get').toLowerCase();
//     if (!option.url) {
//         throw new Error('接口地址有误');
//     }
//     if (option.async === 'false' || option.async === false) {
//         option.async = false;
//     } else {
//         option.async = true;
//     }

//     function objtostring(obj) {
//         let objarr = [];
//         for (let i in obj) {
//             objarr.push(i + '=' + obj[i]);
//         }
//         return objarr.join('&');
//     }
//     if (option.data) {
//         if (Object.prototype.toString.call(option.data) === '[object Object]') {
//             option.data = objtostring(option.data);
//         }
//     }
//     if (option.data && option.type === 'get') {
//         option.url += '?' + option.data;
//     }
//     ajax.open(option.type, option.url, option.async);
//     if (option.data && option.type === 'post') {
//         ajax.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
//         ajax.send(option.data);
//     } else {
//         ajax.send();
//     }
//     if (option.async) {
//         ajax.onreadystatechange = function() {
//             if (ajax.readyState === 4) {
//                 if (ajax.status === 200) {
//                     let data = ajax.responseText;
//                     if (option.dataType === 'json') {
//                         data = JSON.parse(data);
//                     }
//                     option.success && typeof option.success === 'function' && option.success(data);
//                 } else {
//                     option.error && typeof option.error === 'function' && option.error('接口地址有误' + ajax.status);
//                 }
//             }
//         }
//     } else {
//         if (ajax.status === 200) {
//             option.success && typeof option.success === 'function' && option.success(ajax.responseText);
//         } else {
//             throw new Error('接口地址有误' + ajax.status);
//         }
//     }
// }
// function ajax(option) {
//     let ajax = new XMLHttpRequest();
//     option.type = (option.type || 'get').toLowerCase();
//     if (!option.url) {
//         throw new Error('接口地址有误');
//     }
//     if (option.async === 'false' || option.async === false) {
//         option.async = false;
//     } else {
//         option.async = true;
//     }

//     function objtostring(obj) {
//         let objarr = [];
//         for (let i in obj) {
//             objarr.push(i + '=' + obj[i]);
//         }
//         return objarr.join('&');
//     }

//     if (option.data) {
//         if (Object.prototype.toString.call(option.data) === '[object Object]') {
//             option.data = objtostring(option.data);
//         }
//     }

//     if (option.data && option.type === 'get') {
//         option.url += '?' + option.data;
//     }

//     ajax.open(option.type, option.url, option.async);

//     if (option.data && option.type === 'post') {
//         ajax.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
//         ajax.send(option.data);
//     } else {
//         ajax.send();
//     }

//     if (option.async) {
//         ajax.onreadystatechange = function() {
//             if (ajax.readyState === 4) {
//                 if (ajax.status === 200) {
//                     let data = ajax.responseText;
//                     if (option.dataType === 'json') {
//                         data = JSON.parse(data);
//                     }
//                     option.success && typeof option.success === 'function' && option.success(data);
//                 } else {
//                     option.error && typeof option.error === 'function' && option.error('接口地址有误' + ajax.status);
//                 }
//             }
//         }
//     } else {
//         if (ajax.status === 200) {
//             option.success && typeof option.success === 'function' && option.success(ajax.responseText);
//         } else {
//             throw new Error('接口地址有误' + ajax.status);
//         }
//     }
// }
function ajax(option) {
    let ajax = new XMLHttpRequest();
    option.type = (option.type || 'get').toLowerCase();
    if (!option.url) {
        throw new Error('接口地址有误');
    }
    if (option.async === 'false' || option.async === false) {
        option.async = false;
    } else {
        option.async = true;
    }

    function objtostring(obj) {
        let objarr = [];
        for (let i in obj) {
            objarr.push(i + '=' + obj[i]);
        }
        return objarr.join('&');
    }
    if (option.data) {
        if (Object.prototype.toString.call(option.data) === '[object Object]') {
            option.data = objtostring(option.data);
        }
    }
    if (option.data && option.type === 'get') {
        option.url += '?' + option.data;
    }
    ajax.open(option.type, option.url, option.async);
    if (option.data && option.type === 'post') {
        ajax.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        ajax.send(option.data);
    } else {
        ajax.send();
    }
    if (option.async) {
        ajax.onreadystatechange = function() {
            if (ajax.readyState === 4) {
                if (ajax.status === 200) {
                    let data = ajax.responseText;
                    if (option.dataType === 'json') {
                        data = JSON.parse(data);
                    }
                    option.success && typeof option.success == 'function' && option.success(data);
                } else {
                    option.error && typeof option.error === 'function' && option.error(data);
                }
            }
        }
    } else {
        if (ajax.status === 200) {
            option.success && typeof option.success === 'function' && option.success(ajax.responseText);
        } else {
            throw new Error('接口地址有误' + ajax.status);
        }
    }
}