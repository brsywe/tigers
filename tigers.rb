# -*- coding: utf-8 -*-
Plugin.create(:tigers) do
  command(:tigers,
          name: "六甲颪",
          condition: Plugin::Command[:CanReplyAll],
          visible: true,
          role: :timeline ) do |m|
    m.messages.map do |msg|
      tigers(msg.message)
    end
  end

  def tigers(message)
    str = [ "六甲颪に　颯爽と　蒼天翔ける　日輪の　青春の覇気　美しく　輝く我が名ぞ　阪神タイガース オウオウオウオウ　阪神タイガース　フレ　フレフレフレ",
            "闘志溌剌　起つや今　熱血既に　敵を衝く 獣王の意気　高らかに　無敵の我等ぞ　阪神タイガース　オウオウオウオウ　阪神タイガース　フレ　フレフレフレ",
            "鉄腕強打　幾千度び 鍛えてここに　甲子園  勝利に燃ゆる　栄冠は　輝く我等ぞ　阪神タイガース　オウオウオウオウ　阪神タイガース　フレ　フレフレフレ"
          ]
    id=message.idname
    Post.primary_service.update(:message => "@#{id} #{str.sample}",:replyto => message)
  end

end
