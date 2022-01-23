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