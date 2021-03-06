package im.actor.server.persist

import java.time.{ LocalDateTime, ZonedDateTime }

import com.github.tototoshi.slick.PostgresJodaSupport._
import org.joda.time.DateTime
import slick.dbio.Effect.Write
import slick.profile.FixedSqlAction

import im.actor.server.models
import im.actor.server.db.ActorPostgresDriver.api._

class GroupUsersTable(tag: Tag) extends Table[models.GroupUser](tag, "group_users") {
  def groupId = column[Int]("group_id", O.PrimaryKey)

  def userId = column[Int]("user_id", O.PrimaryKey)

  def inviterUserId = column[Int]("inviter_user_id")

  def invitedAt = column[DateTime]("invited_at")

  def joinedAt = column[Option[LocalDateTime]]("joined_at")

  def * = (groupId, userId, inviterUserId, invitedAt, joinedAt) <> (models.GroupUser.tupled, models.GroupUser.unapply)
}

object GroupUser {

  val groupUsers = TableQuery[GroupUsersTable]
  val groupUsersC = Compiled(groupUsers)

  def byPK(groupId: Rep[Int], userId: Rep[Int]) = groupUsers filter (g ⇒ g.groupId === groupId && g.userId === userId)
  def byGroupId(groupId: Rep[Int]) = groupUsers filter (_.groupId === groupId)
  def byUserId(userId: Rep[Int]) = groupUsers filter (_.userId === userId)

  def joinedAtByPK(groupId: Rep[Int], userId: Rep[Int]) = byPK(groupId, userId) map (_.joinedAt)
  def userIdByGroupId(groupId: Rep[Int]) = byGroupId(groupId) map (_.userId)

  val byPKC = Compiled(byPK _)
  val byGroupIdC = Compiled(byGroupId _)
  val byUserIdC = Compiled(byUserId _)

  val userIdByGroupIdC = Compiled(userIdByGroupId _)
  val joinedAtByPKC = Compiled(joinedAtByPK _)

  def create(groupId: Int, userId: Int, inviterUserId: Int, invitedAt: DateTime, joinedAt: Option[LocalDateTime]) =
    groupUsersC += models.GroupUser(groupId, userId, inviterUserId, invitedAt, joinedAt)

  def create(groupId: Int, userIds: Set[Int], inviterUserId: Int, invitedAt: DateTime, joinedAt: Option[LocalDateTime]) =
    groupUsersC ++= userIds.map(models.GroupUser(groupId, _, inviterUserId, invitedAt, joinedAt))

  def find(groupId: Int) =
    byGroupIdC(groupId).result

  def find(groupId: Int, userId: Int) =
    byPKC((groupId, userId)).result.headOption

  def isJoined(groupId: Int, userId: Int) =
    byPKC.applied((groupId, userId)).map(_.joinedAt.isDefined).result.headOption

  def findByUserId(userId: Int) =
    byUserIdC(userId).result

  def findUserIds(groupId: Int) =
    userIdByGroupIdC(groupId).result

  def findUserIds(groupIds: Set[Int]) =
    groupUsers.filter(_.groupId inSetBind groupIds).map(_.userId).result

  def setJoined(groupId: Int, userId: Int, date: LocalDateTime) =
    joinedAtByPKC((groupId, userId)).update(Some(date))

  def delete(groupId: Int, userId: Int): FixedSqlAction[Int, NoStream, Write] =
    byPKC.applied((groupId, userId)).delete
}
