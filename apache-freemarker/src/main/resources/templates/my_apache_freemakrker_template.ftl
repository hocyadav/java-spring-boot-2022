// string example
  Title value : ${title}

// entity object
  ${exampleObject.name} by ${exampleObject.developer}

// list example

    <#list systems as system>
      ${system_index + 1}. ${system.name} from ${system.developer}
    </#list>
