// string example
  Title value : ${title}

// entity object
  ${exampleObject.name} by ${exampleObject.developer}

// list example

    <#list systems as system>
      ${system_index + 1}. ${system.name} from ${system.developer}
    </#list>


//case 1 : no value in input map, then set print default value of mouse is "No mouse"
${mouse_var!"No mouse default value."}

//case 2 : value present, here we set value as "Jerry"
<#assign mouse_var="Jerry">
//access value
${mouse_var!"No mouse."}

//----step 5:  call method and pass argument , and it will execute logic
${my_template_class("met", "something")}
${my_template_class("foo", "something")}



<@my_directive>
directive convert all string to upper case
hariom
yadav
</@my_directive>



//empty body to directive
<@my_directive>

</@my_directive>

//null check, use ! to check null value, :https://stackoverflow.com/questions/13950289/handling-null-values-in-freemarker/27614219
null value : ${my_null_value!}
null value : ${my_null_value!"my default value"}

//null check using if block
<#if my_null_value??>
this block used my_null_value so if null then fail, so checking before and then using
null value so this will not execute ${my_null_value}
</#if>


//To check if the value exists and is not empty:
<#if userName?has_content>
    Hi ${userName}, How are you?
</#if>

//if present then use that key, name will print if present else noting will print
Hi ${userName?if_exists}, How are you?

//if not present then set default value ,
Hi ${userName!"Omprakash"}, How are you?

"someUrl?id=" + id?c
"someUrl?myid=${id?c}"
"someUrl?myid=${(id)?c}"
"someUrl?myid=${(id!)?c}"


//for loop , list of users
<#list user_list as user>
${user}
</#list>

//add comma
<#list user_list as user>
${user} <#sep>, <#sep>
</#list>
