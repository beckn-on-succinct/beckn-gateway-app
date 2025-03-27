package in.succinct.standalone.configuration;

import com.venky.swf.configuration.Installer;
import com.venky.swf.db.Database;

public class AppInstaller implements Installer{

  public void install() {
    Database.getInstance().resetIdGeneration();
  }
}

