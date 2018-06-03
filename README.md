# ansible-centos7-jupyter
Ansible Playbook for setting up PostgreSQL + Jupyter Notebook on CentOS 7

This sets up:

* Anaconda3 Python
* Datadog Agent
* Papertrail
* Local instance of Postgreql10 Server
* Jupyter Notebook Server secured with a LetsEncrypt certificate

It is tested and works on CentOS 7 but may work on other flavours of RedHat/Fedora. 

You will need to specify a datadog api key, the domain name of the server you are
running this on and a password for the notebook server. Once run, the notebook 
server will be accessible at https://<yourdomain>:8443

To run use
```
ansible-playbook -u root -i <ip address>, jupyter.yml \
  -e datadog_api_key=EnterYourDatadogApiKeyHere \ 
  -e cert_cn=EnterYourLetsEncryptDomainHere \
  -e notebook_password=EnterThePasswordForYourJupyterNotebookHere
  -e papertrail_host=EnterYourPapertrailHostHere \
  -e papertrail_port=EnterYourPapertrailPortHere
```
