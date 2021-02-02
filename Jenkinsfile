pipeline{
    agent { docker { image 'ruby:latest' } }
    environment {
        PATH="$PATH:/usr/local/rvm/gems/ruby-2.6.3/bin:/usr/local/rvm/rubies/ruby-2.6.3/bin"
    }
    stages {
        stage('Setup') {
                steps {
                    checkout([$class: 'GitSCM', branches: [[name: "$BRANCH"]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '7700364274', url: 'http://bitbucket.viavarejo.com.br/scm/mat/aut-mktp-rest-finan.git']]])
                    sh 'gem install bundler --force'
                    sh 'bundle install'
                    echo "Branch: $BRANCH"
                }
        }
        stage('Executando testes') {
                steps {
                    script {
                            try {
                                //sh 'bundle exec cucumber -t @$TAGS -p $AMBIENTE'
                                sh 'cucumber -t $TAGS -p $AMBIENTE'
                                currentBuild.result = 'SUCCESS'
                            } 
                            catch (Exception e) {
                                currentBuild.result = 'FAILURE'
                            }
                    }
                }
        }
    }  
}