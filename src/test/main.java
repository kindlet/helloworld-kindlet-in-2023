package test;


import com.amazon.kindle.kindlet.AbstractKindlet;
import com.amazon.kindle.kindlet.KindletContext;
import com.amazon.kindle.kindlet.ui.KTextArea;

public class Main  extends AbstractKindlet {
        
        private KindletContext ctx;

        public void create(KindletContext context) {
                this.ctx = context;
        }

        public void start() {
                try {
                        ctx.getRootContainer().add(new KTextArea("Hello World!"));
                } catch (Throwable t) {
                        t.printStackTrace();
                }
        }
}
