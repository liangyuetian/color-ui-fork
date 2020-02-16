// 接口数据来自于 https://lab.isaaclin.cn/nCoV/

class API {
  static String base = 'https://lab.isaaclin.cn';

  // 返回自爬虫运行开始（2020年1月24日下午4:00）至今，病毒研究情况以及全国疫情概览，可指定返回数据为最新发布数据或时间序列数据。
  static String overviewUrl = base + '/nCoV/api/overall';
}
