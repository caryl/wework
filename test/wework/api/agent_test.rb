require 'test_helper'

class Wework::Api::AgentTest < Minitest::Test

  attr_reader :agent

  def setup
    @agent = Wework::Api::Agent.new(ENV['CORP_ID'], ENV['APP_ID'], ENV['APP_SECRET'])
    # @image_media_id = '1t7ArQ9p2kkebFgIhl5AV0R0GW0Um14sF8LhF1WQ_ZyDIx_5gunSGsI-OZWMc3-cC'
    # @file_media_id = '1gzwVHjceHuh-n6YljtcTmmENyxIBh16BVRRFH4yu9Ss'
    # @voice_media_id = '1_ESizV0Qiw1LQAxt-LWYJK23-5u5RDKYXQQ9M5fDBV5PNoWGMGsea5A9vOVWgmGi'
    # @video_media_id = '1KPqSJKKdQ7qmTeoK4Nhd80P7loOaiPoI29xrXuF-e4ywY-HHzIHKFHvH7b4N0gaA'
  end

  def test_authorize_url
    assert agent.authorize_url('https://zhiren.com')
  end

  def test_jsapi_ticket
    assert agent.jsapi_ticket
  end

  # def test_jssign_package
  #   package = agent.get_jssign_package('https://zhiren.com')
  #   assert_instance_of Hash, package
  #   assert_includes package.keys, 'signature'
  #   assert_equal ENV['CORP_ID'], package['appId']
  # end

  # def test_access_token
  #   assert agent.access_token
  # end

  # def test_get_info
  #   puts agent.get_info
  # end

  # def test_set_info
  #   result = agent.media_upload('image', File.join(File.dirname(__FILE__), '../../fixtures/zhiren.png'))
  #   p result
  #   puts agent.set_info(name: '知人v2', redirect_domain: 'zhirenhr.com', description: '智能人力资源管理专家', logo_mediaid: result.media_id)
  # end

  # def test_menu_create
  #   menu = {
  #     button: [
  #       {
  #         type: 'view',
  #         name: '自助服务',
  #         url: 'https://zhiren.com'
  #       }
  #     ]
  #   }

  #   puts agent.menu_create(menu)
  # end

  # def test_menu_delete
  #   puts agent.menu_delete
  # end

  # def test_media_upload
  #   puts agent.media_upload('image', File.join(File.dirname(__FILE__), '../../fixtures/zhiren.png'))
  #   puts agent.media_upload('image', File.join(File.dirname(__FILE__), '../../fixtures/sample.txt'))
  #   puts agent.media_upload('voice', File.join(File.dirname(__FILE__), '../../fixtures/sample.amr'))
  #   puts agent.media_upload('video', File.join(File.dirname(__FILE__), '../../fixtures/sample.mp4'))
  # end

  # def test_media_get
  #   puts agent.media_get @image_media_id
  # end

  # def test_text_message_send
  #   puts agent.text_message_send('@all', '', '这是一条来自API的测试消息')
  # end

  # def test_image_message_send
  #   puts agent.image_message_send '@all', '', @image_media_id
  # end
  #
  # def test_voice_message_send
  #   puts agent.voice_message_send '@all', '', @voice_media_id
  # end

  # def test_video_message_send
  #   puts agent.video_message_send '@all', '', {media_id: @video_media_id, title: '测试', description: '来自API的测试视频'}
  # end

  # def test_file_message_send
  #   puts agent.file_message_send '@all', '', @file_media_id
  # end
  #
  # def test_textcard_message_send
  #   text_card = {
  #     title: "测试通知",
  #     description: "<div class=\"gray\">2016年9月26日</div><br/><br/><br/><br/><div class=\"normal\">大字体呀</div><div class=\"highlight\">我是居中的...</div>",
  #     url: 'https://zhiren.com',
  #     btn: '查看详情'
  #   }
  #   p agent.textcard_message_send '@all', '', text_card
  # end

  # def test_news_message_send
  #   news = [
  #     {
  #       title: "中秋节礼品领取",
  #       description: "今年中秋节公司有豪礼相送",
  #       url: "https://zhiren.com",
  #       picurl: "http://res.mail.qq.com/node/ww/wwopenmng/images/independent/doc/test_pic_msg1.png"
  #      }
  #   ]
  #   puts agent.news_message_send '@all', '', news
  # end
end
