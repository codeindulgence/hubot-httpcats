# Description
#   Gives you a cat from http.cat when an HTTP error code is mentioned.
#
# Author:
#   Nick Butler <nick@codeindulgence.com>

module.exports = (robot) ->
  codes = [100, 101, 200, 201, 202, 204, 206, 207, 300, 301, 302, 303, 304, 305,
           307, 400, 401, 402, 403, 404, 405, 406, 408, 409, 410, 411, 412, 413,
           414, 415, 416, 417, 418, 422, 423, 424, 425, 426, 429, 431, 444, 450,
           451, 500, 502, 503, 506, 507, 508, 509, 599]

  robot.hear /\b(\d{3})(\b|ing|e?d)?/, (res) ->
    code = parseInt res.match[1]
    if code in codes
      res.send "https://http.cat/#{code}"
