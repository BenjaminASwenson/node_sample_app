- why is the code where is weakest?
- how to set up localhost - port on 3000
- what is hack code is for?
- what are the dependencies required?
- how to run the env tests written in Ruby?  

- How to transfer/send data from our localhost to our VM?
- Run the Ruby tests to ensure the dev env has everything needed to deploy the app?
- Integration testing - yes/no?

gem is a package manager for ruby

we need bundler for testing and using the files  
`local$ cd environment/spec-tests`
`local$ gem install bundler`
`# local$ bundle` should show `>>>Using rake ...`

    To copy a file from the host to vagrant:

    `scp -P 2222 /path/to/file vagrant@127.0.0.1:.`
    By default The vagrant instance uses port 2222 and ip 127.0.0.1. The password for vagrant is 'vagrant'. The file will be copied to the home of vagrant.
    To copy a file from vagrant to host machine:

    `scp -P 2222 vagrant@127.0.0.1:/path/to/file`

cd into spec-test, to run test
- `local$ rake spec` to run test
    - Failed tests, so go do something to pass them
        - For nginx
            `vm$ sudo apt-get install nginx -y`
            `# vm$ sudo systemctl status nginx)`
            `vm$ sudo systemctl start nginx`
            `vm$ sudo systemctl enable nginx`
        - For nodejs
            `# $ sudo apt-get install nodejs -y` won't get us the specified version
            - For specific v6.
                `# vm$ sudo apt-get install nodejs=** -y` - (should not work)
                `vm$ sudo apt-get install python-software-properties -y`
                `vm$ curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -`, refer to https://github.com/nodesource/distributions/blob/master/README.md
                `vm$ sudo apt-get install nodejs -y` | `$ sudo apt-get install -y nodejs` (check)
        - cd app/app, or wherever the deepest app folder is (for now)
            `vm$ npm install`
            `vm$ npm start`
            - get the port num
            {IP}:{port_num}
            e.g. `192.168.10.100:3000`