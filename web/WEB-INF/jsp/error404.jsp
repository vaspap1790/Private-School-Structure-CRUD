<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Area | Trainers</title>
        <style><%@include file="/css/bootstrap.min.css"%></style>
        <style><%@include file="/css/style.css"%></style>
        <link rel="shortcut icon" href="https://i.ibb.co/NYjrFJC/keyboard.png" type="image/x-icon">  
    </head>

    <body>

        <jsp:include page="navbar.jsp" />

        <header id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1> Admin Area <small>404 Page not found Error</small></h1>
                    </div>
                </div>
            </div>
        </header>

        <section id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAABL1BMVEX////Y2NjYycLGxsb/8OtMTEyon5r4cnm2WGbZ2dnDw8Pd3d37+/ve3t739/cAAADk5OTq6upraWry8vJlY2TKysrn5+dta2zR0dH/9fD/dXyXlZaPjo6ura5JSUnfz8h0cnN8e3yioaKqqqpcWlsqKirSxL1BQUG4uLizp6E5OTmLiYqUioXDtrAmJiZ6eHkxMTGFfHi9sKpfWFWQiIR3b2uhmJQnJycTExNxaWZsaWvq29bn2dSUgIGSa22IUlSDPD+QMTfeV16iP0ZpW1u2SE9wVFVqSEpnOTvOVFx6QUOEMzjpZWxvRUi3wcGuREpdKy8uCRKaSEu0U1fJXWLjaW+CamlhIS2jT12QRlK/WWlkTU0ZGhp9OURiQESpUl8/IydJKC0zPDsHHx2DLDusV4W4AAATmklEQVR4nO2dCXvaWJaGJSuQ0mrtEpEwkpCxQGCMjUmcZGZSU2vXpJeZ6ZmupJ2uqer+/79hzrn3amHzkrZjk+h7nmBsScB5dbZ7dUU4rlGjRo0aNWrUqFGjRo0aNWrUqFGjRo0aNWrUqFGjRo0aNWrU6EFkSYJfPNe7YdjVlzYbkiR/8s/00AptO2RPuzbItLv1zVPT7j/Ap3pQSbbnBfRp1zYTmQ9NO6s2983I624+8rOVa0YBYyLbJoEReLZVbBbtPDa/NCax7QQmZZJ7U/LT8rwiWrTIlvMvjUnXjLmQMrGYm6CjxGxzYIbcl+Ynsm3rBRPHNFnFkUwWPI5tWl8aEyXCdMqYdF9GGv0zb5o8/rRs2+E2MFEMq/rFYAe55FEzjNqOhnIvH/teFZg5VzIJWDqBLsU2HfyZmwm3zkQL7NSeYkuj2X0lTzNwJ1GMUoDhQl23IxKBoi2401T8ZKbclRzbwxPOmIRlFjFsU4IfmT3F87zCRIvMTHWmNniSYiehmTucb2dmlFvAwez6Qmzjy6l25kX5cvu3A9JMmzSwW5jopk1MWmESpCqHtQmcSnkZTRGq/9JDh1I8m3S8sS2gr0Uht3vKTVpyy9gpmLi2KWADK5HflplYNi3cCQBTTJsEh29G6FCSnZBNvB2T+KslnV0R+Lsog9Tcy1XR4pIyn6im6UMDG6u4WZ56CW5mcuzEQQXgY8pLjyRRn3IKbDZuwpDU7ZjbPcWeZxN5kWenEjDymOXOS9sFw9jmCDeXo8TsJf2zByVJMSPyN586SG6z9BHZyCT/tObciYKQaRpNw9zHCqzSLV0Pzn9ebI68OMzV4ijJzhSNiFtlEtpsAG2au8qkFMsnEAksccTFoJD+tpRPeJY0yBHLTPps7OjaU+4zYQJJlqYH3rT92uZlJtDmlV3ZChMoNaR/C3Cy4TNhYpgelk8j8pbS40otduzI0TiNF9eYQC3KXU7rk7bmM2GCUylRPzE9b6mKrvaxjp2i4Bgl9chf/JTFUx863DTN0Vv0dKeZ5OU8mx9hSQmXG4todZ5N8bPMISVGpEnVEl22yRIyiQ18xJ3rYesiNYRJdnxjbfMOjuQeUA2tVWXpgXTdPoa90zF0QylFoVZTR9Gu3BVkpF8CE8lmT7LoBnvvFBPL4lyf1giR/dR8mdNI0ZH9ovYYnMKzll330Twr8+hcmpXElkWOJr+S+Tb8g6FwIl8cYVm7xCRMkijGxsJK85A0GE46jeMgwOYtD1KaKayWYMdpDLnUmnqhGVvY7UYe2g9PYAwg2nFIepUWhlQMz7wsmpKJAiVPczPZpXySYCvGo+kWpgadc/G5g83INMO/kLOv2TGO52BLDE2MEkMjJnnFK8Q4nZJhHu1C/4ZM8gCnlHROi+BJEFk4MNwlJhE+BqTbNPTU4fqko4/7MMzDJxFxFC3FmVkwVU4xvnh4LJngARn5pRvVmaDPdafwF4GjtHdGCaGBeTKzo9B2iD1gVZ/LTFRKOnqNmBqGQAJ7EQt+XfITytRPrYrJtEtfVycUdyrHUiZwPjMTogTcISyYgNE4P0L6sYqJiTnESPkVJsS5HFvbxETndo1JhI/g6DEOZ4BJhnlR8/oQJlV7XzJxyZMs1YBO8QoxFmYy8w98U5w8iZKKCUemU4SdYmKGhpWA+cHU0gJb4JQo9v08AkJhJFoGucJTMeECUwR/yDCnOLR0IxNlGhtKlspYhng3iGp+wnVtyXKm5i4xyR0zxQswVp56fgAZVevHgRGi13S91KRjZS3CViPBtJl56RSzJhfYNHq6GGxaYqdkZlILU9ORYMcQ3UPCyMzMNDR26RpPsnl+I7p2BPMZa52JrGAN2sGrMnemZO36i23Gnsk/xGd5LNLWHcLd7bmxRo0aNWrUqFGjRo0abVVz7XNdoXv9Pl+aguihP8HjU/Bqp1fW3IuCziS7fq8vS2GnM2/mVJYVdp48iZrisyRk8moXF4nfo3Jg0hkUa/yEL3n+uhQyedIZ0wUo/dkXdRPcNhEmTzrnmFLyAddEEVcwwZSiea87nTa9kKxL/SDJnBv1uI8sQYv/fGceUyadvXz6BJ6+7pMlW13f4hTX6cZh/9pC/dhu7J/muXSL86RZhmEtp1HGBPIsDaKY6+b1NcVuP+5fmXj7vpRctf2TKz/g/DBUr98RJAd5kPT7SRDEgVP+tWDyhPnLInZWD9SDePs78AHHZY8KSnSGa9C6cXJtDPFRt3IozcnzYP4v//pvb75+IxVQqF6xuxUUy9Vdw2LHdKf++kuifLoW6jFBSecX5MNa4OFXYglY0CuaplA7o39/RvRNtgSlQ5e/+RKTI9PIyeJNyxH6DMZjCp/WfHhW3CUOWLbmwxjv/lRc3xGInb4MKePi7VPUs2+6dSidBWRXRxJKIRbyFk6crNy8IFfe84igHIzbi6j8zeiG8caUG+DtSSLBwYuyLPqOJGnctwzKH/t1KL0uh0gcp46FLjA2kjwoKWhZTBs8yye32T4aKEfjdnuGYaGorDj4QR5KK/4SSuQLghy1VkAUeF5A+W5RgwKVx5IEJw9qUAALW6GhSWEeoOKE5l2FB2L4RAq4xyFk0j5DBJogiOwLFRS+m+dJ34EcaRi6FOSQaVSJgdIMXZVVnawTV75/SqH8LuzUgseAls2cTJeYCFK99JS+qKiCJLAzIDwSKIRJO8WnkAQkwS9dwdL9bj9Jkq5I7lOTJNyg6I5Uytc57YdnDMq8gtLLONl7xZnLTARp9U4ovPsLwgrXPlkE2COBQpmMSa1QHBL6kq8aa/eX8ASJTrdamqZZlqH7Bqf9WECZdarg6UIsdebCiqTqVS1V11Uf3kxQ0WVU9sVdjwMKZdI+p3XSKVIimC7raHu5o0scSdBXM7D1UwHlvGzehtjSdhbZKhShOpjH9xB44jquUH6XmfMYoLTmhEn7jIRMvYay7qLaFTb6LN9gSilyiltAeXtROgqZPpj0nVUmtb4NBgkEOIlGXyu+OOYxQElnlMmC3oW01FgQMpUZDi0dSylFgPDR36xBoWklX2Mi1ZYHWiBDxdaOJ7f4SMJjgeIxJu05aw/WoJSeYpDVwHKVUiCpQE6xOPU/CijfL0GJ15gItSKvUE90SDTqQlHWOOfBvxMlPmdMhmfsS3wg0rdAUXCcU0spSvGEZ1Cevv3hSa0me5SJk9USi1R1OAqUdFL8FSTCK8X3LfkPDSW4aBc6YyaSArkRCvRizPsN2ScGY5MPLu98zaA8/eFVVX7mOrazUny2lFhqJQ2/9wJKPoaPhrfVsRd/aCjJWclkXE0bwgelnr0MRaH1QZFxI/DgeR+bfEg5f/imgPL7EkqnbfiOk5+/Ol0qQLWsrUq18IGgFFgH88BQslbJpH3Oruf5dCQLyUL06aDPYS6ko0HQpJQdL5EFJ/kPf2RQnv1YQOlMRC4xB53OYikYa1mb031f1NFxNExTVaPrP+jlVv9wWEE5K74Eh6TRymqlvPUefvplL46TbobFZkiyEspPrzvFTEp+CmW5M1tp8mvfq4opSbFUp2zeGH0/Vx5ultbYrzFpF7cFa4bo0OiAfhM6Tt4p7fAlh2QEg3eqgozO3/+ugPKmx6CMScbtnK82+bWJGsjZJHxcctucUzZvfCTL7rV3a9+PtBc1JO05aw4MNFKzXFWGjAHiRTYxBMNaqaidpNUFuRBieHqT35VQHDYPSR8jyqQguFx8eABPjbcg2TrlFj5SeZ7XrU/uLtCQjlgj217gwwULdj4T5PVBD0oz6GhRXJ93DkooXwv1CRXsU6C0GBqLE6He5Bcv68JrOvVRohypIlDh5U/57Yfw+WRZ94oGZUFGPq2iIMsYGo4Igx464nOrDGgJpBnnyLyBLIo4MiKHhSWUbyadJSaSWBlm8UtDBoNXZaxe0uo3iMiRTKDwvPqJvEXTeV4MPPOoVSSUOXrKgn0BGykGhsr7VdYo+nINLMSfllhr8iUHmeUVlGo+8lXsSMWFMJqey06EiKeHr3tlBQWC6P5ziyWjV3YvDw4O9sdlLa4XZEic5cdQloqA4uNZ1nwygwJNvqKQJp/c2DN9W0Cp5iNfxeTCupGfj4fD8Tm5+c+ozzBZ1hY/KMKHSL7fq/MWfSdROG61WqMqy16QHp9Np2HXhgObWkkunmikSXHW54g4LiqhfNfuFFNMaE1yPuj19vbg3wy/TEm50WVTNZL5ShtS2F3JKt9HDg4ByvFRET2L83LSDaW5osM6Vtq7VY1FORO5JjaZX03SYuvGKdEpAKHqDS4wcm5ioeJ161Duy1cUvfYeOqSTVmv/ooAywyI0Zp21Ts6kAnHhutCkuLWLoq60YSKR6dsSCp2P7AyBnjnZq6k3wwBdm55aUzIbJUtM4BPfQ7a1lt5BFI8OWq2D/aIeDy8WtYLsSM62QuhfcWH8rxUUnI/ElQbmYG9JvTlCufqkK8nFpHf6fIUJz9+5q7grbyALz8FRjqqUYpOUwrIr6WYlnxVknIGtodD7wfTi4hx0cRHlQZLJzHWKyXw2H9lpK+Hp3t4mKFeccyMAIrDfviSuQrnjNcr66uvzaoIp5fAIs8miSCmLUb8IDcUiBZl2oTCoLaBI3ngCSbPQ3mByupjPoiCDarUMpbPw571VJnu98VXzaX48G9BjzoI1R+HvdJXlqpcQKFGZUsYIZT6Df6PJbLp6HXOpHseL3gY7e73B6XgWh/0/0SvJz54+e/stN4vWd4WdT+0taw304HyxRw45HU4Wqbr+me/QU6z1V4eUolYpZbYgD8OzGZg3mZ0HW9YCcPlkk5kFmL3h/D9/evPmzX/995///D9v//dkLXKKTBuvvb7ih+djLNrwIovFAMiNNjC5w5yyFpkUioPRc7S/KLq2WXvUptYNFud5X12Pemm8FQkz9y/vv/rqq19+fvfhw4e/nG3bube3uAgktxgmqFkSzdokIAft8ZhWqsmhuOFj39l3nW90E5Dcxzx7Mipb2cX+oPrYk/EsSoR6o2kFG/LDirV/+qrU+28h2wy27TgYzuezaTSdzWfjU8oDwm8xocEDR176m07lXTmKsYUJr8YjgPLCHhYp9nJwOhwUCQPDaDibxXGeZFnWz+PZ9sApTf3b+wrKX3u99lX71oT+MR6yhhfcdNyevNjIZGt3dEutF51CeusA8yxe1hjDw6wF8QzhPNwrEyn9xJNTUmuuIwK7f/9VnclVSEoNJsP2kL08uM8YvAVqT28zk7sqPZuqDpXoVyllPh5enJPPtQdODCdt7yYQlq0bDr+tM5lMrj+mpskpOOxkQKNnb3Ps3FXl2ZZPeBwhk5RC5mZni9aiDBsI99k5ePDWhLBZvYsak79NgOrp7biUGjzn7zOfbKk7RGp+AlAuzxDK+KQNQVKLmsFpezwfQ0s3HELw3IjJ7JeKye8hMSw+Esne5lp8d//HxhWOwqtpmVLax9BQTKDFn1RRc6MswjQZQqtVZzIcfiQQ0PDgfvuTK7IsOGiVUlgphjw3X4DP3zqfwKHzdxWTn/Zu/wKFemNvA5M7be43MWeSM5xgOjlGJuUnImEzhp5/JWQG1+SX3umHGpPTIehmQbf2Qhcbxjs3W+F8Y13hKWpIUkprWDFhYBANmnV6OoFkO7gGyAB3mtSZDG7pJ7WG5fVRsHYe7/xGu62NG0CxyWhwNtz/qFNagwIEa0w+bMuvvSWh901AUIkX4/lsdn5x1jo62T9OVqDcVbtWk7bui0wij+3swf7i+GOLRM3cH+tMlk3fI64GmXixGIPxxPbRycnzy8sX+0QvLo+Pnx+enIxGRzA+fb7kKfL9zN9vLT+ydIlz1oejG/WdV57517S5J9Xnw5iceLD9rHVwdHLMLEfbwXhmO1h/gJVvg47DCsr9zVJvCyA1wJTyfH923bB3RZhDTiFgwHb0eTD+6P8Ikv2f4fEdMZ7YjsZvsfwKHebyvYVNncrm/k31MKW8GPU22Y4+vx7wzy9fvHhRO/FgO554wuTX1iF4yrujW1NY0QiZiPdLBGVt7A95OsE0xDOPw+Qi4A8g4g8vK9urgEef33DqTzBofmsd/ApMfruh6fhKBxhGRyPIL4XgTRKZV+/3ilchZYOzyAKmlCNmOpz3y3rA3+LUnoCDkOnvH9//vMzkgIlafnj4/Bg87fL5yVErtaNoGsd5GCTdLMskyXF8UVVV+ZNeRtfc1SpE56xvH/PrTN7/Sk7639/98ncw/fgY0+kIwihN8b/CAsuTpN/vZpLg82pdMpOIwtP06ZehaMYyFjUa3cb2ytvhrB+CwKvQpX775V0KlodBYP4jBssdsowFolPeYPqWlI9ANi/4uH8pll59LFHcECMHZaiXgY7mj9DfPfB2dHfwd3Id1fF5UdWlf9g6M3wUqPSkX23+enJ7gAU5W7iIzuWIRvrxJeaTk9FBKzW9KMJIT/rdLol0XNW16u1yZbjo7BdzQaKwYcjy6HkUUiwX1zaIQgKhTvxdZMZuiPSrz7joVBd6b+UceHHFfSQ8SiGY+hn/WH3MoY8QRyXFMvQr5hXuQapuPF4cNeEyC139J3zlBhJVstTpoU29tRRcUaDKdwlHxLt/ti3Z2ikpuN7C1ZHP7QGJyIGs7NlBt7iZFLK0z7LIqmFcx4TrrQvRX1287RQYWHjr+ufKoVGjRo0aNWrUqFGjRo0aNWrUqFGjRo0aNWrUqFGjRo0aNWq0i/p/tXJJDFmUdJcAAAAASUVORK5CYII=">

                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp" />              

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://use.fontawesome.com/releases/v5.9.0/js/all.js"></script>
        <script><%@include file="/js/custom.js"%></script>
        <script><%@include file="/js/bootstrap.min.js"%></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    </body>
</html> 