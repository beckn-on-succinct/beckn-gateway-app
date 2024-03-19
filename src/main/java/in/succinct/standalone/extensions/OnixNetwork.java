package in.succinct.standalone.extensions;

import com.venky.swf.routing.Config;
import in.succinct.onet.boc.extensions.BocRegistry;
import in.succinct.onet.core.adaptor.NetworkAdaptorFactory;

public class OnixNetwork extends BocRegistry {

    static {
        NetworkAdaptorFactory.getInstance().registerAdaptor(new OnixNetwork());
    }

    public OnixNetwork() {
        super(Config.instance().getProperty("in.succinct.onet.name","beckn_open"));
    }

}
