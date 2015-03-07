package im.actor.model.network.mtp.entity.rpc;

import im.actor.model.network.mtp.entity.ProtoStruct;
import im.actor.model.util.DataInput;
import im.actor.model.util.DataOutput;

import java.io.IOException;


/**
 * Created by ex3ndr on 03.09.14.
 */
public class RpcFloodWait extends ProtoStruct {
    public static final byte HEADER = (byte) 0x03;

    private int delay;

    public RpcFloodWait(DataInput stream) throws IOException {
        super(stream);
    }

    public RpcFloodWait(int delay) {
        this.delay = delay;
    }

    public int getDelay() {
        return delay;
    }

    @Override
    protected byte getHeader() {
        return HEADER;
    }

    @Override
    protected void writeBody(DataOutput bs) throws IOException {
        bs.writeInt(delay);
    }

    @Override
    protected void readBody(DataInput bs) throws IOException {
        delay = bs.readInt();
    }
}