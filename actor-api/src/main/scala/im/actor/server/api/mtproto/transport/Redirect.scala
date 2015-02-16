package im.actor.server.api.mtproto.transport

@SerialVersionUID(1L)
case class Redirect(hostname: String, port: Int, timeout: Int) extends MTProto

object Redirect {
  val header = 0x4
}