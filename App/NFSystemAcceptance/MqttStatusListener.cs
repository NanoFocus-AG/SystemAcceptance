using System;
using System.Text;
using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;


namespace NFSystemAcceptance
{
    public delegate void OnNewFileEventHandler(string  fullFile);

    class MqttStatusListener
    {
        public event OnNewFileEventHandler OnNewFileEvent;

        public MqttStatusListener()
        {
            string ip = "127.0.0.1";
            InitMqttConnect(ip);

        }

        public void Close()
        {
            try
            {
                if (isConnected)
                {
                    MQTTClient.Disconnect();
                }
                 isConnected = false;
            }
            catch (ApplicationException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());

            }

            catch (uPLibrary.Networking.M2Mqtt.Exceptions.MqttClientException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());

            }

            catch (uPLibrary.Networking.M2Mqtt.Exceptions.MqttConnectionException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());

            }

        }

        public bool  Connected
        {

            get{
                return isConnected;
            }
        }
      

        private void InitMqttConnect(string ipAdress)
        {
            try
            {

                MQTTClient = new MqttClient(ipAdress);
                byte code = MQTTClient.Connect(Guid.NewGuid().ToString());

                if (code == 0)
                {
                    isConnected = true;
                    MQTTClient.MqttMsgPublishReceived += new MqttClient.MqttMsgPublishEventHandler(client_MqttMsgPublishReceived);

                    MQTTClient.Subscribe(new string[] { "Metrology/Status/Measurement/Filename", "jjj" },
                                                         new byte[] { 0, MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE });
                }
                else
                {
                    System.Collections.Generic.List<string> reason = new System.Collections.Generic.List<string> {
                        "Connection accepted",
                        "Connection refused, unacceptable protocol version",
                          "Connection refused, identifier rejected",
                          "Connection refused, server unavailable",
                           "Connection refused, bad user name or password",
                          "Connection refused, not authorized"
                    };



                    System.Diagnostics.Debug.WriteLine("  MQTTClient connection failed reason " + reason[code]);
                   
                }


            }
            catch (ApplicationException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
               
            }

            catch (uPLibrary.Networking.M2Mqtt.Exceptions.MqttClientException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
              
            }

            catch (uPLibrary.Networking.M2Mqtt.Exceptions.MqttConnectionException ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
             
            }

        }

        void client_MqttMsgPublishReceived(object sender, MqttMsgPublishEventArgs e)
        {
            if (e.Topic == "Metrology/Status/Measurement/Filename")
            {
                string msg = Encoding.UTF8.GetString(e.Message);

                string fullFile = msg;

                if (null != OnNewFileEvent)
                {
                    OnNewFileEvent(fullFile);
                }
            }

        }


  private MqttClient MQTTClient;
        private bool isConnected;

    }
}
