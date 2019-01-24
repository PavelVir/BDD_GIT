#!groovy

  stage('BDD тестирование'){

    def command = """vrunner vanessa --settings //Sql01/gitrep/Avtotest/BI/Dev_BIOuts_avto.json --path //Sql01/gitrep/BI_GIT/features/ERP_ПроверкаЗагрузкиКенмл""";

    def errors = []
    timestamps {
        try{
            cmd(command, isUnix)
        } catch (e) {
            errors << "BDD status : ${e}"
        }
    }

    showErrors(errors)
 
  }