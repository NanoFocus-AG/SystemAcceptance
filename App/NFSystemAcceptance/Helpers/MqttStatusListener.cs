using System;
using System.Text;
using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;


namespace SystemAcceptance
{
    public delegate void OnNewFileEventHandler(string fullFile);

    class MqttStatusListener
    {
        public event OnNewFileEventHandler OnNewFileEvent;
        string topic = "nf/+/metrology/Status/Measurement/Filename";
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
                    Unsubscribe();
                    MQTTClient.MqttMsgPublishReceived -= client_MqttMsgPublishReceived;
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

        public bool Connected
        {

            get
            {
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
                    MQTTClient.MqttMsgPublishReceived += client_MqttMsgPublishReceived;
                    isConnected = true;
                    //MQTTClient.MqttMsgPublishReceived += new MqttClient.MqttMsgPublishEventHandler(client_MqttMsgPublishReceived);
                    MQTTClient.Subscribe(new string[] { topic }, new byte[] { MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE });
                    System.Diagnostics.Debug.WriteLine("Connected: " + isConnected + "  to Topic:" + topic);
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
            //System.Diagnostics.Debug.WriteLine("PublishReceived");
            if (e.Topic.Contains("/metrology/Status/Measurement/Filename"))
            {
                //System.Diagnostics.Debug.WriteLine(e.Topic);
                string msg = Encoding.UTF8.GetString(e.Message);

                string fullFile = msg;
                //System.Diagnostics.Debug.WriteLine(fullFile);
                if (null != OnNewFileEvent)
                {
                    //System.Diagnostics.Debug.WriteLine(fullFile);
                    OnNewFileEvent(fullFile);
                }
            }
        }

       
        void Unsubscribe()
        {
            string[] topics = { topic };
            MQTTClient.Unsubscribe(topics);
        }

        private MqttClient MQTTClient;
        private bool isConnected;

    }
}
