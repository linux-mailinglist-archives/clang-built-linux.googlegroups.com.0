Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXFTQCCAMGQE3T2XBIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB51366AB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 14:26:05 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf10179317pgb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 05:26:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619007964; cv=pass;
        d=google.com; s=arc-20160816;
        b=QllNqAMyGjvOeoRYIRh2WzeOQNPiJnTeugq2UBPOzI39csxi1oQzj6EgrdRcaTQ0NX
         otApHJaV+mxfrOI6DW2mcBnXo8dFxQwv3/qc8PyL4+FbuMIaAorxVdHAJ+sfg/aVoEmN
         GDEi++D2EhCJEbcgUD7mv59jLOGh+OwviADkwocMybZD6hXUxTj24qyhWwwzYUhMH724
         IHQe2Xj9yP0CExjokm55Lr7Oj3hKI3oRtKzH3nGZonbAZpY75eXktEqva1YTIUo5JEJ1
         17yBAxVkjK32sVkkWbTzxVXJj14QFU2jeBNEFF9bHnf3EAZN+EFYHkO4/75G/o5Pxt9c
         KohA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=/HV1vtb4QtGdmkWwgANCVTES0eNHytu7mrqlkPDT9Og=;
        b=No1/zAZFYLBRh9pkNJiIyXQ0obzOXs1755av9qXQTz+5HV9biuhr+W3VVoi60qpgTM
         Z7D/cw2fdV0a6dMsiCEMwnzycfpi8VbEjs6Hjh5anizIx3OkQZv6FLcBWEzICKbsx2Cw
         vj6LO68/QAh4p9xo08frdpNEyPTpaAi0Q3nH0Zsf0bgVxmYVAy+Kex43cBXTkIwWoNx5
         fcbVqsTZrYu2NGQqjfFwxrbXv6sY5UNrcZ1ZA2RymmblDV7cijFPKGeoxnYBUYohUFT8
         617IieAfKGFVMiX9YQwqvO92gB1DsNGKoxsKsd+ekxVM1G4+DN3bm2FM8dARsOtFE9An
         OJzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HV1vtb4QtGdmkWwgANCVTES0eNHytu7mrqlkPDT9Og=;
        b=LVhrkXE2hND8U4EgujRR140Ei2QMaBEVEtbvCIhfWRfgB5LzOuWG86sr6qVMi7B93H
         a/Xmehl1zDI4kWBu+sUzOwSnt//MyjFkRBmzddfHurH57f+rdicaf5LC0MEkGo4XWAmK
         bOXrFuSvXDfXqYq0EBBnpBGKQ8ZGwd4MhRZPo5NgmH/qhgOMmjj8zOc4tMU1RxYo8EFw
         5SoQJZ3LtOrc2lo6Ory5uEU9dGM/mcYfi+WnWHFQ9C3KgTYvD+ajOhWisH50yznQ0vlf
         /+Mj4pXaDILI+Exs/M7V+jGoc8ThI3aqXouubOp7NfE4RItSKXzYgaK3G10HHcfk3KB1
         EAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HV1vtb4QtGdmkWwgANCVTES0eNHytu7mrqlkPDT9Og=;
        b=AhUAuinv4vE/57OE3AOEi3VqQ3Z6DHSxNKbHgrBOzmD/ST9tQytUa53AmstgmwREKt
         zuEDrGv5JBHEm4H47Vn7GKixWsBQHpTO9R6BUm6NyT2fey6Yu6fIWrs4LJxugbcxj7Z8
         5gW1k6FMlCO7IkWYRFLpQ/EMGB9GGLgdSHp8fD2BQ4c5cx3vu6kNv90K8SpY1uUFESBp
         k2lCufzbxtpYACRm8L8JVUaXYgGKY38c9SKsLMATcRpkH716dY3Nq7iSAJE3/V1srN7w
         Za5c/HgmQ6sG3SrnEouJDJ8KMSYSyNngRtQ/wtlmSylo4rUAaozhBeP806W9GO45Wc0D
         +MAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qLtAK/xy788k5nDKP2qgXrO/6rpibgcs2U//SYaOdXyuCb6V+
	T2BFYnSjLAFdETb2zXTZ03c=
X-Google-Smtp-Source: ABdhPJxT4BmlS9+LWKri7wgQtQD11yswwUYCh0rfz49TSx/Eaqnti3OI/D87MHpuZ/czf+YIEnmGPw==
X-Received: by 2002:a05:6a00:883:b029:247:562:f8f9 with SMTP id q3-20020a056a000883b02902470562f8f9mr29140160pfj.34.1619007964198;
        Wed, 21 Apr 2021 05:26:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad8c:: with SMTP id s12ls1399086pjq.3.gmail; Wed, 21
 Apr 2021 05:26:03 -0700 (PDT)
X-Received: by 2002:a17:90a:3183:: with SMTP id j3mr10576956pjb.228.1619007963465;
        Wed, 21 Apr 2021 05:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619007963; cv=none;
        d=google.com; s=arc-20160816;
        b=qKUoL673EbzRwAvcwRvgppDGzhG/z2q+78l2TKJ8ClFsbR8MidKM7FJNs6BMO/tgBp
         /E05JNgDjW9io17983vwLB3dAex/fbg2Yu2DrXMU5WQOH4DRb8sA9ZHeAhVonZ7Zvhjq
         2CeArdfw91jEin7GVTk9JYkxejvl6cgpq31J2mhqqkVXnEsjwM9CLyRQf6pmJMDazn0b
         Wy9/UN6p5MvVYT35kr8mpM+y8anOx8urK3ZejlPEOy1Jvz6xP+qjIfkkwW7xVn1fJHtj
         DmA7ndygZ3o67APMzQgNkKQeviBcXNsUMDpgpm2kwkCg77JBkb4zw8XC5d/2l9P7wDqQ
         cTmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=WwIfQNWT72bCuBI0NAJ7RGLu2uHUCzyuw7gkCAOMG2E=;
        b=QMD2zm6ul7zELzhmRxRFysQvlwt6g0jk4qtd8+ZZK6Vcz0NFveSAC8uDCUTEnszsNh
         YCynCrAl58TPRcnHZwrSKq1EVk8YF+fyc74UxWOwBURMo8JzLyRxrATqzBkjT85lI/0/
         0zUJMxHdrAS7JhBPEKOkDSPHTnoyEafMvcrejgUSfx5WlitPoefLPqpJI6DL+L22OOqE
         YBQ/py/+7t3f+13O2jNiNgWfcDY3yjkbuwA2sbtlD0P87iAQ9Z7fA6w/aRk3+ryO1s3e
         88Q35bT5KhZSaf9YAdHiZltAi01mJ/ip+dz6t66+id6meah595u8dWuFe6J9HJqWBsTf
         u8BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id i17si728003pjl.0.2021.04.21.05.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 05:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: djZRHXAEGcZxi3PJzkadmSYmoaXF4tzhlTzobIY1olTDoDS54w1W0TssP2YcW/AUUq0KpStnBY
 rJPDJy1GQITQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="259641593"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; 
   d="gz'50?scan'50,208,50";a="259641593"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 05:26:02 -0700
IronPort-SDR: zzT2BzcImPxCeOY2i1AvLG68w57QEoJ9qVfvGenuWzeGJ+hMqgp6QcIM7KN5O0qZoGQ6qYYdKO
 5Nhe9dRbqgkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; 
   d="gz'50?scan'50,208,50";a="452926461"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2021 05:25:59 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZBvb-0003Yo-6y; Wed, 21 Apr 2021 12:25:59 +0000
Date: Wed, 21 Apr 2021 20:25:40 +0800
From: kernel test robot <lkp@intel.com>
To: Adam Ford <aford173@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [linux-next:master 11414/14048]
 drivers/net/ethernet/renesas/ravb_main.c:2086:6: warning: variable 'priv' is
 used uninitialized whenever 'if' condition is true
Message-ID: <202104212028.roGLigjX-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Adam,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
 master
head:   593ef1658ecf61d3619885bdbbcfffa3d1417891
commit: 8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2 [11414/14048] net: etherne=
t: ravb: Enable optional refclk
config: mips-randconfig-r031-20210421 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d87b9b=
81ccb95217181ce75515c6c68bbb408ca4)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it/commit/?id=3D8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kern=
el/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 ARCH=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/renesas/ravb_main.c:2086:6: warning: variable 'priv=
' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninit=
ialized]
           if (irq < 0) {
               ^~~~~~~
   drivers/net/ethernet/renesas/ravb_main.c:2254:24: note: uninitialized us=
e occurs here
           clk_disable_unprepare(priv->refclk);
                                 ^~~~
   drivers/net/ethernet/renesas/ravb_main.c:2086:2: note: remove the 'if' i=
f its condition is always false
           if (irq < 0) {
           ^~~~~~~~~~~~~~
   drivers/net/ethernet/renesas/ravb_main.c:2046:27: note: initialize the v=
ariable 'priv' to silence this warning
           struct ravb_private *priv;
                                    ^
                                     =3D NULL
   1 warning generated.


vim +2086 drivers/net/ethernet/renesas/ravb_main.c

61fccb2d6274f7 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2017-01-27  2042 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2043  static int ravb_probe(struct platform_device *pdev)
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2044  {
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2045  	struct device_node *np =3D pdev->dev.of_node;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2046  	struct ravb_private *priv;
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2047  	enum ravb_chip_id chip_id;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2048  	struct net_device *ndev;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2049  	int error, irq, q;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2050  	struct resource *res;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2051  	int i;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2052 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2053  	if (!np) {
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2054  		dev_err(&pdev->dev,
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2055  			"this driver is required to be instantiated from devic=
e tree\n");
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2056  		return -EINVAL;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2057  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2058 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2059  	/* Get base address */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2060  	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2061  	if (!res) {
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2062  		dev_err(&pdev->dev, "invalid resource\n");
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2063  		return -EINVAL;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2064  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2065 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2066  	ndev =3D alloc_etherdev_mqs(sizeof(struct ravb_private),
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2067  				  NUM_TX_QUEUE, NUM_RX_QUEUE);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2068  	if (!ndev)
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2069  		return -ENOMEM;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2070 =20
4d86d381862714 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2017-10-04  2071  	ndev->features =3D NETIF_F_RXCSUM;
4d86d381862714 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2017-10-04  2072  	ndev->hw_features =3D NETIF_F_RXCSUM;
4d86d381862714 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2017-10-04  2073 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2074  	pm_runtime_enable(&pdev->dev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2075  	pm_runtime_get_sync(&pdev->dev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2076 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2077  	/* The Ether-specific entries in the device structure. *=
/
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2078  	ndev->base_addr =3D res->start;
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2079 =20
e866863066a4e6 drivers/net/ethernet/renesas/ravb_main.c Wolfram Sang       =
2016-03-01  2080  	chip_id =3D (enum ravb_chip_id)of_device_get_match_data(=
&pdev->dev);
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2081 =20
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2082  	if (chip_id =3D=3D RCAR_GEN3)
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2083  		irq =3D platform_get_irq_byname(pdev, "ch22");
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2084  	else
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2085  		irq =3D platform_get_irq(pdev, 0);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11 @2086  	if (irq < 0) {
f375339e497582 drivers/net/ethernet/renesas/ravb_main.c Sergei Shtylyov    =
2015-08-28  2087  		error =3D irq;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2088  		goto out_release;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2089  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2090  	ndev->irq =3D irq;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2091 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2092  	SET_NETDEV_DEV(ndev, &pdev->dev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2093 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2094  	priv =3D netdev_priv(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2095  	priv->ndev =3D ndev;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2096  	priv->pdev =3D pdev;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2097  	priv->num_tx_ring[RAVB_BE] =3D BE_TX_RING_SIZE;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2098  	priv->num_rx_ring[RAVB_BE] =3D BE_RX_RING_SIZE;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2099  	priv->num_tx_ring[RAVB_NC] =3D NC_TX_RING_SIZE;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2100  	priv->num_rx_ring[RAVB_NC] =3D NC_RX_RING_SIZE;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2101  	priv->addr =3D devm_ioremap_resource(&pdev->dev, res);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2102  	if (IS_ERR(priv->addr)) {
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2103  		error =3D PTR_ERR(priv->addr);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2104  		goto out_release;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2105  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2106 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2107  	spin_lock_init(&priv->lock);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2108  	INIT_WORK(&priv->work, ravb_tx_timeout_work);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2109 =20
0c65b2b90d13c1 drivers/net/ethernet/renesas/ravb_main.c Andrew Lunn        =
2019-11-04  2110  	error =3D of_get_phy_mode(np, &priv->phy_interface);
0c65b2b90d13c1 drivers/net/ethernet/renesas/ravb_main.c Andrew Lunn        =
2019-11-04  2111  	if (error && error !=3D -ENODEV)
0c65b2b90d13c1 drivers/net/ethernet/renesas/ravb_main.c Andrew Lunn        =
2019-11-04  2112  		goto out_release;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2113 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2114  	priv->no_avb_link =3D of_property_read_bool(np, "renesas=
,no-ether-link");
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2115  	priv->avb_link_active_low =3D
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2116  		of_property_read_bool(np, "renesas,ether-link-active-lo=
w");
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2117 =20
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2118  	if (chip_id =3D=3D RCAR_GEN3) {
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2119  		irq =3D platform_get_irq_byname(pdev, "ch24");
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2120  		if (irq < 0) {
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2121  			error =3D irq;
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2122  			goto out_release;
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2123  		}
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2124  		priv->emac_irq =3D irq;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2125  		for (i =3D 0; i < NUM_RX_QUEUE; i++) {
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2126  			irq =3D platform_get_irq_byname(pdev, ravb_rx_irqs[i])=
;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2127  			if (irq < 0) {
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2128  				error =3D irq;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2129  				goto out_release;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2130  			}
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2131  			priv->rx_irqs[i] =3D irq;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2132  		}
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2133  		for (i =3D 0; i < NUM_TX_QUEUE; i++) {
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2134  			irq =3D platform_get_irq_byname(pdev, ravb_tx_irqs[i])=
;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2135  			if (irq < 0) {
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2136  				error =3D irq;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2137  				goto out_release;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2138  			}
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2139  			priv->tx_irqs[i] =3D irq;
f51bdc236b6c58 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2016-04-03  2140  		}
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2141  	}
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2142 =20
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2143  	priv->chip_id =3D chip_id;
22d4df8ff3a3cc drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2144 =20
3e3d647715d401 drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2017-08-01  2145  	priv->clk =3D devm_clk_get(&pdev->dev, NULL);
ab104615e01c2c drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2017-10-12  2146  	if (IS_ERR(priv->clk)) {
ab104615e01c2c drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2017-10-12  2147  		error =3D PTR_ERR(priv->clk);
ab104615e01c2c drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2017-10-12  2148  		goto out_release;
ab104615e01c2c drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2017-10-12  2149  	}
3e3d647715d401 drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2017-08-01  2150 =20
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2151  	priv->refclk =3D devm_clk_get_optional(&pdev->dev, "refc=
lk");
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2152  	if (IS_ERR(priv->refclk)) {
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2153  		error =3D PTR_ERR(priv->refclk);
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2154  		goto out_release;
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2155  	}
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2156  	clk_prepare_enable(priv->refclk);
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2157 =20
75efa06f457bbe drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2018-02-16  2158  	ndev->max_mtu =3D 2048 - (ETH_HLEN + VLAN_HLEN + ET=
H_FCS_LEN);
75efa06f457bbe drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2018-02-16  2159  	ndev->min_mtu =3D ETH_MIN_MTU;
75efa06f457bbe drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2018-02-16  2160 =20
f543305da9b5a5 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2018-09-19  2161  	priv->num_tx_desc =3D chip_id =3D=3D RCAR_GEN2 ?
f543305da9b5a5 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2018-09-19  2162  		NUM_TX_DESC_GEN2 : NUM_TX_DESC_GEN3;
f543305da9b5a5 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2018-09-19  2163 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2164  	/* Set function */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2165  	ndev->netdev_ops =3D &ravb_netdev_ops;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2166  	ndev->ethtool_ops =3D &ravb_ethtool_ops;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2167 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2168  	/* Set AVB config mode */
0184165b2f42c4 drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2016-08-03  2169  	ravb_set_config_mode(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2170 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2171  	/* Set GTI value */
b3d39a8805c510 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2015-11-20  2172  	error =3D ravb_set_gti(ndev);
b3d39a8805c510 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2015-11-20  2173  	if (error)
b3d39a8805c510 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2015-11-20  2174  		goto out_release;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2175 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2176  	/* Request GTI loading */
568b3ce7a8efdc drivers/net/ethernet/renesas/ravb_main.c Sergei Shtylyov    =
2016-02-10  2177  	ravb_modify(ndev, GCCR, GCCR_LTI, GCCR_LTI);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2178 =20
ce19a9eb53be2f drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-10-01  2179  	if (priv->chip_id !=3D RCAR_GEN2) {
a6f51f2efa742d drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-10-01  2180  		ravb_parse_delay_mode(np, ndev);
61fccb2d6274f7 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2017-01-27  2181  		ravb_set_delay_mode(ndev);
ce19a9eb53be2f drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-10-01  2182  	}
61fccb2d6274f7 drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2017-01-27  2183 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2184  	/* Allocate descriptor base address table */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2185  	priv->desc_bat_size =3D sizeof(struct ravb_desc) * DBAT_=
ENTRY_NUM;
e2dbb33ad9545d drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2186  	priv->desc_bat =3D dma_alloc_coherent(ndev->dev.parent, =
priv->desc_bat_size,
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2187  					    &priv->desc_bat_dma, GFP_KERNEL);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2188  	if (!priv->desc_bat) {
c451113291c193 drivers/net/ethernet/renesas/ravb_main.c Simon Horman       =
2015-11-02  2189  		dev_err(&pdev->dev,
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2190  			"Cannot allocate desc base address table (size %d byte=
s)\n",
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2191  			priv->desc_bat_size);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2192  		error =3D -ENOMEM;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2193  		goto out_release;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2194  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2195  	for (q =3D RAVB_BE; q < DBAT_ENTRY_NUM; q++)
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2196  		priv->desc_bat[q].die_dt =3D DT_EOS;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2197  	ravb_write(ndev, priv->desc_bat_dma, DBAT);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2198 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2199  	/* Initialise HW timestamp list */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2200  	INIT_LIST_HEAD(&priv->ts_skb_list);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2201 =20
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2202  	/* Initialise PTP Clock driver */
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2203  	if (chip_id !=3D RCAR_GEN2)
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2204  		ravb_ptp_init(ndev, pdev);
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2205 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2206  	/* Debug message level */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2207  	priv->msg_enable =3D RAVB_DEF_MSG_ENABLE;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2208 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2209  	/* Read and set MAC address */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2210  	ravb_read_mac_address(ndev, of_get_mac_address(np));
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2211  	if (!is_valid_ether_addr(ndev->dev_addr)) {
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2212  		dev_warn(&pdev->dev,
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2213  			 "no valid MAC address supplied, using a random one\n"=
);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2214  		eth_hw_addr_random(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2215  	}
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2216 =20
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2217  	/* MDIO bus init */
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2218  	error =3D ravb_mdio_init(priv);
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2219  	if (error) {
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2220  		dev_err(&pdev->dev, "failed to initialize MDIO\n");
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2221  		goto out_dma_free;
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2222  	}
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2223 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2224  	netif_napi_add(ndev, &priv->napi[RAVB_BE], ravb_poll, 64=
);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2225  	netif_napi_add(ndev, &priv->napi[RAVB_NC], ravb_poll, 64=
);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2226 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2227  	/* Network device register */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2228  	error =3D register_netdev(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2229  	if (error)
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2230  		goto out_napi_del;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2231 =20
3e3d647715d401 drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2017-08-01  2232  	device_set_wakeup_capable(&pdev->dev, 1);
3e3d647715d401 drivers/net/ethernet/renesas/ravb_main.c Niklas S=C3=B6derlu=
nd   2017-08-01  2233 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2234  	/* Print device information */
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2235  	netdev_info(ndev, "Base address at %#x, %pM, IRQ %d.\n",
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2236  		    (u32)ndev->base_addr, ndev->dev_addr, ndev->irq);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2237 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2238  	platform_set_drvdata(pdev, ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2239 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2240  	return 0;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2241 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2242  out_napi_del:
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2243  	netif_napi_del(&priv->napi[RAVB_NC]);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2244  	netif_napi_del(&priv->napi[RAVB_BE]);
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2245  	ravb_mdio_release(priv);
77972b55fb9d35 drivers/net/ethernet/renesas/ravb_main.c Geert Uytterhoeven =
2020-09-22  2246  out_dma_free:
e2dbb33ad9545d drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-09-30  2247  	dma_free_coherent(ndev->dev.parent, priv->desc_bat_size,=
 priv->desc_bat,
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2248  			  priv->desc_bat_dma);
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2249 =20
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2250  	/* Stop PTP Clock driver */
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2251  	if (chip_id !=3D RCAR_GEN2)
f5d7837f96e53a drivers/net/ethernet/renesas/ravb_main.c Kazuya Mizuguchi   =
2015-12-02  2252  		ravb_ptp_stop(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2253  out_release:
8ef7adc6beb2ef drivers/net/ethernet/renesas/ravb_main.c Adam Ford          =
2021-04-12  2254  	clk_disable_unprepare(priv->refclk);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2255  	free_netdev(ndev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2256 =20
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2257  	pm_runtime_put(&pdev->dev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2258  	pm_runtime_disable(&pdev->dev);
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2259  	return error;
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2260  }
c156633f135326 drivers/net/ethernet/renesas/ravb.c      Sergei Shtylyov    =
2015-06-11  2261 =20

:::::: The code at line 2086 was first introduced by commit
:::::: c156633f1353264634135dea86ffcae74f2122fc Renesas Ethernet AVB driver=
 proper

:::::: TO: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104212028.roGLigjX-lkp%40intel.com.

--oyUTqETQ0mS9luUI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMAPgGAAAy5jb25maWcAjDxZk9s20u/5FSrnJalK4jlle7+aB4gEJVgkwQCg5nhhjcey
M1/mcGk0yfrfbzd4AWCT8j6so+5GA2j0DXB+/unnGXvdPz/e7u/vbh8evs++bp+2u9v99vPs
y/3D9v9msZzl0sx4LMwfQJzeP73+9+3j/beX2fkfxyd/HP2+u5vP1tvd0/ZhFj0/fbn/+grD
75+ffvr5p0jmiVhWUVRtuNJC5pXhV+bizd3D7dPX2T/b3QvQzY5P/zj642j2y9f7/X/evoX/
f7zf7Z53bx8e/nmsvu2e/397t599fv/u04dP74/v7j59OD85fncM/7l9d35+fH43v5u///Tp
09nR+7vbs1/ftLMu+2kvjpylCF1FKcuXF987IP7saI9Pj+B/LS6Nh0wABkzSNO5ZpA6dzwBm
XDFdMZ1VS2mkM6uPqGRpitKQeJGnIuc9Sqg/q0up1j1kUYo0NiLjlWGLlFdaKmQFZ/DzbGlP
9GH2st2/futPZaHkmucVHIrOCod3LkzF803FFGxLZMJcnJ50a5JZIYC94dpZaSojlra7f/PG
W1OlWWoc4IpteLXmKudptbwRzsQuZgGYExqV3mSMxlzdjI2QY4gzGnGjjXO2/mp/nvlgu9TZ
/cvs6XmPIh4Q4IKn8Fc306PlNPpsCo0bcfENNuYJK1Njz9o5mxa8ktrkLOMXb355en7agkl1
fPW13ogiIucspBZXVfZnyUtOElwyE62qcXykpNZVxjOpritmDItWxOJLzVOx6I+HleCaWl0H
y5i9vH56+f6y3z72ur7kOVcisoZTKLlwbMlF6ZW8pDE8SXhkBKgIS5IqY3pN04n8I9KBHZDo
aOVqPEJimTGR+zAtMoqoWgmumIpW1yNzF8JV5zwGQ21GAtrnmEgV8bgyK8VZLFxn6HKM+aJc
Jtpq/fbp8+z5SyDg3oPKaK1lCUzrU44lwdL6pw2oELiLdIi2TPiG50YTyEzqqixiZnh71ub+
ESIIddyrm6qAUTIWkWuxuUSMALkQagX/YHCqjGLRupZIr5gBrhYfqcN2DhKzEstVpbi2YlDa
p2mkO9iSY12K86wwMEFOLb9Fb2Ra5oapa3f9DXJiWCRhVCvYqCjfmtuXv2d7WM7sFpb2sr/d
v8xu7+6eX5/2909fe1FvhILRRVmxyPIIJGdEtA7QxCoIJnjwLiNUR6s/k4wWOkb7jjj4ESB0
YlSIqTanPdKAPWvDjPaWDkCwgJRd2wHEbJbiqpnHHyfkyEL7M9GCVIEfEL6jmCAzoWXK0OW4
7Ow5qqic6aF1wJKuK8D1+4cfFb8Ck3EEpj0KOyYAodDs0MZGCdQAVMacgqNhtQhPkA6qQldV
ZQtSav5WO0+3rv/DU6R1p/oyIg5VrFcwDxjo0AfpaAU+07qp1lT03V/bz68P293sy/Z2/7rb
vlhwsyoC27mbpZJl4UxSsCWvzZCrHgrBMFoGP6s1/OO5J8urXh4dWGuCQsR6Cq/ikUylwSfg
LG64opxnTRDzjYg4sTTQ0xEbaggWReJkvi03iD6OQkp0JQ2KGScJxFxFF6AmjjhLo6vcs2fI
GxSAaGMUcYBqWXNTs2mXtuLRupAiN+jKjVTebmsFYaWRdpkEPwh+iYadgd+NIJQ5WWaIqTZO
AqzQDTnOLEXPtLH5m3J42N8sAz51LMbcrlucim0KS+4fcON5LCBHc1jAjeSvdhSdu1rUGSEd
QPip90JKjE2NDfeFkSwgFogbjoEYQz38k7E8UL2ATMN/EHPavB/qlBi9SyTBP6FyVRxLn5w1
qVzHdJKQ4A70UhWQjEFapHLvtCOTgtONeGFsYYxuztm4aw+ha84gSReozg6/JTeYlVaD7KrW
qx7cbSWpU8SJVJ5KVDrnCSawJlFgtIQgeJqA0JS7RabhYMpgUSUkWiRbXsg0JTFaLHOWJrTr
s3tIqCLIZpqJa4Gr2q+2dYVwykaI56UKchsWbwRsoREt5T2A34IpJdyTWiPtdaaHkMo7tw5q
5YQOAMsPT0OoU0W1sFUcued1lHk1rNL8T1ra2YLHMad4WINBm6vCXN0CYQHVJoNVSSchKKLj
o7M2ZjbNomK7+/K8e7x9utvO+D/bJ8hxGITNCLMcSILrTNRhXM9GRv8f5Ngz3GQ1uzbgjoRF
mRXMVAu1pjx5yhae70/LBa2eqRxDsAWoiIK431TeI9PYwJsKDTEHTFY6OupjV0zFkKrE3rJW
ZZJAIWjTC3sqDKIWWQnIRKStijeC9VtHnVoLN3HBX04KaM8tu7376/5pC+Metnd+M9Alb9oU
7notmqUQSLNrUmpMvaPhZnVyPoZ594F2Ve5iaIooO3t3RXskwM1PR3CWcSQXzD/UHs+iFZx6
hFVHEDl8mo/sho6vFgvHxXPMTCW9/JRBAUJbuB2fSpkvtcxP6cjv0Zzw5DDRnG5HWZoCdBT+
FXRSYCUGfsPQiUbDIZpa6UadHY+dB+JziFkcDGhkkYqB+tMxzQ6H+iM1fF0pMxKHlqKCHIpe
YIOkdbdBvp9Anh5NIUfmFItrA0WFWomcjvMtBVMZHwuuLQ85zeMggYYMKJsiSIUxKdelmuQC
XltqWkcakoVYjjLJRTWyCHvE5ur0w5QGmauzUbxYK2kEqMfifOQ8IrYRZVbJyHDsuo/YbJ5m
1VWqIPcFdz5BUQwpWqvnSxZd12jduuR0+/X27vsMO7q/lyvxFv9NhPl1tni+3X32wq07HgTO
4tMDk8CWeCrd5oGMqg2me0I4PclMY07ektoZYQVvYTX9Ito8UJhKZBizkhgisIRSy8vDfXwu
jucfzs5o9++TXok0KZaM2JBPF+7Ix6bl5Ho+smXJ1MnBSSBX2zAv/NXibNw6uR3bK6vJIBuI
ViWZEQ0DcNjMWF1ysVw5O+w6reAGFwpK0Lr55RyqrW5lBltIoMqEnALrYDe3teWaYk4PPeIb
gJw53fJIq8iH1LESuypEcxj73ZUui0Iqgw1gbN47yUecMeyIRnLFFc9dDbzW9vqMM5VeN+WK
j+2YQm6NWRHem3n1Y1GiK6kgYghG1XZIUPushmaEf89khGCESS6b+hC0xqvoLlmBBYlteQRi
TI/h/OCcIO8TianeTaIv3nX9XipTw/3hqNOTSh2HkmkRI57OoZhPUszPgPlBiulZkGJOHJAn
5BtUzqF+hJucQJ9Mo+fjaLvJafQEc7s9Nyv3z2t4XI6xNTB3dsOg4gAvpBlo/ubimJTW6ckC
zLxLzymS+RlFgjMe4IJlCuQCzU2RdSJdlGoquf33b9teES2boFOK3ZzqbO2VYD3ieL6ma66e
ZH7mk7QOGm92INhfVTeQz0goqNTFcSejJiRaGwodGG48QCAMT7JQPOGwVx/TOty4zIrKpIuA
YVK0gvSHge8EXDkE1pbtMfIOzLaN3Bu/oFopyBaGRWWDzUahQ8g5jzX6LJ0xZSyVVEAdKYk/
Rg0Y5dMNGfGyHRdCs0/s1dBGjKK4GB6Ivs6jYEtMi7hxi0dDBCigvnjvX+ZlPBtZbyfyhmzk
QKaxnVDGjnMolABf6GPHKdlImqTMwJQQa5pwNzYS1cE94tVNdUKXTYA5oysXwBwf0XULokbq
HZzpfHTUyTnl6euZjoIFHx+dUF1mb69MoYtauU9Hbi6QV89pza84nYtFiumVtd8xy5EQGZIC
PPjAlLFPJp0mL2TBlR+i8P2MEXkVm8XAWMHOWFFAxgAZGeDHpseuq0s34APJ2iijsL1mnXKX
/kO6FnPCRWGNv64v7Qa4Ylm/Tkr5hqf64sS3M8ipqyLJQSqJ5l2FsHh9mT1/w0j3MvuliMRv
syLKIsF+m3EIYb/N7P+Z6Nc+XABRFSuBD5KGV5NZVgYmkWWQTqm8tnFYSg52PoFnVxfH5zRB
2y88wMcjq9l1ov7h3XbRXLG46YB3QbR4/ne7mz3ePt1+3T5un/Ytx15EdkErsYDIbPtP2PCH
6tn1CE3irVE3CHSDGQDaS0KvB9mg9FoU1vVS7ces0innzusYgKBKtNA+hGeQOKy5fXFCMgqI
7TUiPWOUrr35uohsX804jvXyTxDBJVf4DkhEAjvHTct2ajyxo5DCeoDu9EcPrkvTa4qsowBE
hxOfH7ZuGW8fBwxueJwcsh7gQgbs6yL9fvf47+1uO4t39//UrflOSeDYokw00gkfM9XoYoB2
ymaV2VQQYhKYx1QLtso3UHSSFEspl+BVWmaDdxBm+3V3O/vS7uKz3YV7Tz9C0KIH+2/3h7V4
CeXyDfOffNW1Flg6yyvsKVabWMsAHYMpoy9sUN5LzdsdVO97yO9fd9vfP2+/wTpIMwY3WSWO
mn7ETDJlCy9nxw4zdtox6kE88J9uWivHUNQGmwVWl26uvuFQayqOzguKbxOg1mFBXkMVNyQi
z0QAsQuw4WIl5TpAYnUPv41YlrKkHmTAdlHDm3dswbYw0YN03ojkur0PHxLgFCjGMrfpc8ij
rmAgIlXhzvFdbibj5tlruFHFlxDR0OdhOMS3QPbhURFuHy/gApC97MLxFNw+Yqh5YtpBCZNS
Aou4ZOC2RBFBEaTwkq55sEuw0DzCIDWBwpaE1/oZDBkjtKzsDlCdeGSkHys8DNV3hCwB38AF
HFFNgud7LhqUAEatwhfC4w/PPP0fvj0LKEARGvEUPBKJm3B0HPgValJev/DEXRLaiPlafccH
JSolfi8ZCQjsBKQl+KPeD7WifflrZBHLy7wekLJr6T1IT0Hs1QJWftk0lsOb0tpaUFRj98Z2
yuYVuaqcgti2/5w72XBzulbapj9Y5YpS7rHXFq58sSvdrLdzu5Hc/P7p9mX7efZ3nep+2z1/
uX+oHzr2YQbImmYGsb1uDktW36byqr2db+9TJ2bytosfLxRpuRS59/r2BwNEywqUO8MHFa4f
ts8JNF7QXzg1DihwmXK6Sl/g2VA71rnTVirz+isFOCkII2XevJIL44x9/R1bIpvBjZOoy4Cg
zyztqfD/bu9e97efHrb2S5WZvfrfO9FxIfIkM3jmwSQ9wkZHx9Aa/XB0HrXFNmhaE8FR/QvB
Xkg1Tx0pQT60bfCZ0JHPvXHj3RGPbau+V98+Pu++OwnaMCdoKnxHbAAA3xfbJAsKjtCtJ0yb
alkWgZDWkLraByz+QeoiBRMvjLVX8Jz64ixwA9HohbZtvimONeHEO2Dw7ws32K+1s5n2FKyD
ghqrYnGsLs6OPsxbCuxDYay0bn2due6Ls7xt0PVLzqi7oJtCSid83ixKx6XenCYy9R5Z3Oj6
wQu5a5ug2K23sYkWDle2dYTPkIkVwQFVROpmu4t4LYpxh3m+ZlxXelG5dft6ARHE8LxNZ6zC
5dv9v8+7v8E/DTUNjnrNvb4s/obEli09t3Dl/8KCIYD4Q0zqv8NOdfOwlBALIo10DPYqUZn/
C7O3VLox0UJZupTuNBaI6RV5OhZrb7sSNvLy35LocgHFTiqia2KxliITS1X7nGAk5ukaUnXq
9OsVr4ItcF0EEMjuvCQMn69C5j8AOKsIGMIeIzeLy7xGL/y0h0UtMS7sE13uv6J3wGMjhaeH
oqgb1RHTPpTFG3ziCYEBshI3oxSYZC7AugSvBq/4W3ZF2nwaR4kXiCzThpSZVcCixkLGvJCa
UsOOJEqZ1iL2FlfkRfi7ildREcyBYGwA0lVwQ6CYonqNeKyiEMHJi2KJ0Ytn5VWIqEyZe5cy
Hb27qp7JQoEF4ZHQm8+a3csscyuKDkOAwmMJpSEyKLA2x/R8Dda7NMtherkWbq5Tr39jhA8q
Y3r/iSzD3QOolxapOkjFfH1BEJgSfY71mtBMx7h1S/MHhdbTO8iowPJn2VkI5SdbmqhcuNVJ
l/g3+Is3d6+f7u/euOOy+Fy7769BonP/V2OS9p7LP8cWB1tI6HdflqZ+qI3er4oZ/egFZTAH
SY9Ibe57ww409P4dKnB1NTz0oHZ5mSjCHYuUhUOtCw31qkYNoMjC00sL0cIMxAewak4+87Ho
PIaM0qZ35rrgAT9y2qUKyWq99zY8ZZu4qHJhIBunfSmOH1h9BzzIu7XtMd6aL+dVeknuzeJW
GYsouPemvlbNIiU4ZYWnF/ZnoPQ1bF3it9KYlenAb+DH2dgByZiiHxS2NMXq2tbLELegJiaT
YiANeygdqDN5p75TIoZc0x1VF7HPuy2mc1BU7Le7waf67soa3rAcxfXIVzENDfwXNjippSUs
E+l1s54JAohoFLbhXIWf1w0pBh8Uj1Km7lepQ7TUjoLk+L1Cntuc3YMCE2xDjPDCMe3HlASn
CjXC246LxCcHpLxdIvxuLdGjPIbP5Ckq1Lm6uUNz6XTyECPbaBysxthesaziKBrj0JJ47shF
6MgUY3whgkMZSh66uziWsTxmo5tMRnItj2h1ekI9f/RohIpGjrvLm0bwoDgLIbX3jZlHoHMv
n/cUoRgKqB/HyM+EfRoxxtokpghPpTf14Eha82l0aszfBca2TEtIGKl8ErjmzBcY/O4P0weH
skdYuDGEDbaEQMVjoXg0nCxjGtyKYjHpuSDZBD28uvaGDcNZB7RZAL3ThgDwUOP6g0GyZbbk
1NNDRAZuMek+Zhmjh9Ot/55HMAw82ciQltwBoWBCBlaKIyyCkzTDxBtgcvGxzhwd2J+l9L7x
tPN85NSusZc7Ysj4UYymckZEJe6fkUCA3zxASF26BqvVwVLNQBkMrSJxWfQn7RCPwZPLeAjv
tPCq0zgbv69s0/Bldvf8+On+aft59viM3x47DRt3aBuIKBRqyiBOuQTa12Zv+v3t7ut2PzZr
8/iw/ZsdEyR1JZ1cjy6ipWsWO5kAOOQHpl1Nbrx9Oxmn3H5YeMDX9SNSsiojKem8oieYODjf
2IixOX4lWhzaXp4ELuEA9eEEzKGWYUZFEGFryut1kkRD301Ka8qR93Qw4QGC5gPdSVlAVZD5
GbNnG4+3+7u/JiwS/zwONrT9Uo4g8koZAl9/Jj9NkpZ6pKjoaWSWea/qSZo8x89u9EGq9k6a
lqBDh1HnkDr15JMG25NZtftBrkXYBwopwrx2kpZvBn8NYJJe0znzkJJH+aTQvY4IgcfQGIZ4
goqnxQE9WR061tGGF0mrWE5XjB1NemKmt5byfGlW0yQHd+71EUj8qCduCGyrw3sCSVDlif+n
aggSP+Ug8Jf5gSOqLyWmSVbXejTVaGnW5qBzCjO3IcW0f29oOEuzAxTRIefU1JATBGF+R5D4
V8QjFLZ5ecAKtFFjt38E9TCWTFIHjy6maMvw+8T2BeBUi6hvnFU6uK/RNs5eXZycz70ePsIX
AjOOauTvjoREYHF0w9+h8u2pwaErq0QxBg9jhI9FjuPTOkTjEyA2vMby5o/Gpp/csqUAvpPs
awTJHFB05UnwH2UuEu87swZr/+KAHky9GWY/ovjPROPRqY54opjtzDp/lhHgtY0O4XXZRcCb
mjuAt/UjgcD6awjFS8Ux5n7TMiE52E5hSIiwAaG/MLd/YLsZeVbgsx1BKUpD0/SC+nMAuCjI
m7U8aTPN1ZhNdiSQYdDK01GoImxOu1hj0uHs9YBRvk0qPSyga7RX43gjvFQ/mNOrfw5N7VQW
A6nkS/KvB9bo+tPXYAxowPDiuf97ihPG0VjPP/Mp+3G1pbcU+qNLz2jGSTr7oT616ZV9Huhq
r8WjrBvtp/GimLtqOyKuKWmQzmTeNkhiHj1t9z/gi4Awt4VttVRsUaasfaPaLOIQo6G7GFyC
JKa9qMm4Ge9Q1zTUc7Lmliep+KKzch8HCGw/e/dwDsoMXuZ6SM/MHMz/KHuSLbdxJH8ljz2H
7hG1Uoc6QCQlwcktCUqifOHLtj1T+cZj17NdM/35gwBAMgIMKGv8nm0xIrBvgUAs8WLZr1iM
KCpqVYhxrNYCIqCudQmCm4SIwGPjEYay5wgxMbFciSrwKoBIrjlrEE4b3GR1fmfLT0OdCzXu
eRS3J+FKlwERKO4pVs6LCIzchxRQP9qr4RI8ri24ECeJTH+GFpVL0APR0vfth5ErbwudEEFT
noGqPTZJb50DT4s1VLOp3s6+7fz66b88ld8h41nBNHsvA8wpkQsIfPXp4QQC76QkY2lRThvD
KrKYh2zQvmAHNphAnQWnNROkp8r0hswrf1bPv1CcVRCfPvqWKjwBiOlVh209H9MOLFrsn60F
Ay7Mkg8QsI6UnqczwOX8mxigDs1yG6/9BBaqxzG4DKggAr6Q02QMxe5mDYDueAaUtdxLhcIl
FJid9E8Vt5TlSfOLqqyqmhgqOCzsXW7r59C2AH/7SI6cqbPRSlL0qg8Afeqd4KCIXniUaPar
VcTjDk1SzPTIfIIHSa1bmgcEsC8Tw0VMcc7yPGmy7JlHn9TN17EbUPD/o2oH+ykLYoo2UI1n
9ZFHNG2+7gO5+Q5t5rhHQ/aSBLLVs2m/Wqx4pPogomix4ZGawwEjEB7ZNWq3WCC1RTNthwqO
03OC9qcry2MgiuKKF49l8nBmju2zumzcWs+ROFB/LOl2IXJe1aejbumG9KKmvivAfRZ3U9/m
1a0WxGrSgYadJpyoL88Jl1CDdWJWmROTAAdN5f8Ye65qHkFVpTCmqA4yl+09VCfoel4JClNd
Uqbgk0aA/dc5bfianR6lhNOCqzTONbUSy1nFMQ302IPaY1JfQy7LMpimG3IITdC+zN0P4w1W
wrgIzg4JJfGFmwjFzCp9mFtkSIz4wMF0mnAuCNISnCupCmKDoINGn6wCDDeuHGz4GUDm5K6E
MGmI/51IWLtzhC+ong7O3HGrY66VPkKu+jBo2QgVV0YP/vqOEvyIz/W5fSAvpGAVIyucK4/g
zh+jakPNK4o699UVDUyfbryGrrkLs0oUZ+Vt37ZL/EeEPl+BcAZk0AT10rQN/epVkXqQ9lJ6
kOIs/fqXCfWm71DOWzhQ1A1254sQM419cwZ0YIN0h1cTpKpyeMEf4H+3bTJRWHvaUdHSmcw8
/fryk4ZKMNV4bofABu4CMSP3ENj0Zux3UTQilaPdeK0vHl9+PTWvn9++g0Xhr++fvn/FZvr6
DCKHlf7WKwZMn3NxDTzdN9jRbFOpMe6G6P6hj7Rvrt6fv/zP26fBZp64ESyeZeD9Ylt7b7Ho
xvmiuWD2+D2Iu57g4DOvP6YdXqcj/MzA9eDQLcNAs5q/5N99FwNuMB62eZxVdEMF6/9G3Lh5
qTGHpPCJTyHaD9F+tUezV4Okqtrx9q0BT6mt08xFAxBfE+xXzkA6prIqTwRvuZcYbuP6AKc3
SGelxQvumCqiQeE4EXHUy7CpEc81QDwOYwKb4Dt6B1Vkgxvx4ftm0z0LTkFHJ33G1w1/wTsw
vBQ0FyKEu8km0wAGAhwAgmZG4QorwRoQaPl6IFXfZ0QSbafJ8QQHOL5YGZ4hMirqRUXl4gM1
jJrm/sFiEoymNfvFeuEaqJMMHCrIxLqNqcqLYjNtspeLbq/xTAMmW9kp5TgERA++IvP8kgu9
jJ1HOC5bGwuhM1d8Xv0KNcwKO3i3YhPVFONo1tgmFYMXo0d53MiQEjCwa+RxLZcHb5QGiC7u
Xrc6VR3EJUkRRrbPkkPOmBfH6HFSmwEFT9rD82Rn/OVhY/Hm+CxzjveEE27vq5dpiONUginm
dUyEPHI9ntXnnkT/GiBwr2/buydXHLFgV+6xo0jizjokUkJzRXNzuCN3XCIjkkmk42DAKXDM
sWp7z12gZkrMIvAs2Ezgk0JRtUBYttTywpgYU7vlo75hV4T51odrq0mQMrcVgwYOD+t4JCH8
lv7kuitJBA5FYt1W+d89mGL1iZxcVSV///T64/PTP3+8ff5Poxk3OcJ5++Qq9FT5pscX6ynC
V00i4N7YceLodte2qLFgboDoeykx2NCTv0xFbuWiU7sbm/vos8jEN5y9do/Ogr5+f/1s3AwN
g3EzrSfnxgAyg5fqHEnUj7YRY2moIVMq4w1m7ISxpiyBngx5fgjxXVMSUNTyzX4wmZmz7BHv
txydwLm+bpqINYPHA25BWB7COG6jYhnHWzSsbYxFwwnn0uo1XlQ4UkZd9C+VQtZaE8rCXLra
j2s5ekQGBzGXtvIiB4KTa+KpQJ9OxL2C/e7lMpnBFPYE5GC3aAYqCnxrGfLDwfym/HpxLbCn
BODuz3rmmGl1xNMOUMesTDKk1IodjMwX3uiJz3K+ngcwsIsHc/Kq6bHKFohbVXvoT1IdwM8i
YcPbqBc176PV4DpukymqrsUCjbNUMpf6o8+pQ9IXw+MfJGdEqCTs6zAryOAV4H+RAaCzCfno
G/phPGgqvdU7X0bjfqHnxyycYUl504KPz9miGYOdRFZHcJjQ0mmqgeASJ20PigDB8QdYaRKg
9YfNop6rwwcCSO+lKGRCS0rThrC1GkYmpP4mmkoVKAaAo3M9EYlfEouA05hIVo49nFi54Bwo
aL7bMVPTrmxBesLE8W7PvRUPFNEyRlo3A7SsNIM4xi0pr0X2pP7844/vP35hB3EEbj2xvP38
NF8NKitV1YBHb7XKr4sldsSUbpabrk9rLIRHQLpNYATZK/TmWdy9eJ6J2q+War0gTrrBC0ze
K8XxNnrt60vSBfhzPTCSBE4zSyepZAmciAcGVzENXWmiTtVe84yCt45X+XK/wM8DFrJcoG3U
9VmrMZsNgzico92OgZui9/iR4Fwk29UGeQVIVbSN0TdMe93cPkvq1RRXbHrc9DwMOnAHcXE0
G5weMxzT6FqLknj60ruR/gfca1wU2e2SpX+DsB6MMr1HFE8/x/k2DI+B6xFcogk7ATcz4Pjo
NZboEJp738Y77v3BEexXSbed5bdfdd16DpZp28f7c52pbobLsmixWONt0mud88T4r9efT/Lb
z18//vxvE6Dp5++aY/j89OvH67efQPf0FcIWfNar6+0P+InDVvZOAD96bfx/Z8atU7e+pkmA
cXpRcmIBeD0VwCfWhOXPknMouI1K+qZVHcwMJkOIjkjOYbK9EG5cpqMgToHU08miZpMIkODW
C+fKJbBKZlmWPUWr/frpb5qL+3LTf/8NZTnxf/pOD3IMXjfrUSbo6uLEROiklZ6DDi9QXFXS
EMVmD6SCFYi3kTKg+c0yezEeO3kzSWMIJLz3ZYBATyIvKCGCRl8kUs0lyjJI4UXwolhhYkwD
l36ZXaMnKuDUDyIHw3/+Dg+Pnt6N/9oG9B7NA2m+QsNhYeS7xWzttSNo4JJJYDrNc9qHtrH8
U8s6yBaJyqiFhf6lOYKMg825EaO3nHs+XABinEE2+gdmesk7QkuN4DSuv5qJZyKQB4IiXnn9
DPcKQ5ieMicPMcBKeo/Nokn4917QO3HeqxE7AEA66wHUIgWsN70Nvv3zz196/1P/+/br0+9P
AjkJRPL5YZg2WI1vY7bB6faF4EWqW8ci4OLBIfQxemAucgaVNSnv4sA9/h+SolfHJR1UQMC7
GAM1Ac5CihlFu9usFgz8GsfZdrHlUOBVH8K0g5ZFUKODUO3Xu91fIKEMXpjMO45YQs3q8lph
tIUdjVXl00A4JqU349xbcQY7KunM8nZaHQ/Ld/ob/vkZpINJ9qCqL4mIGWWYISKbKuQcqXT7
wuopGOtGZt5QTPNODa9SX8rAq65Kdpp7mhfoEVCuPkRUa4YVYtviQ/yvrvSRQYP3tNIzctKb
mT6Hmn6V4MPICelWyWa35qDxns1EH0VJo2uOA5w4FqlVMwnqkKgQHwN+IglVwG667+DcodUx
IOsVjM1Ln/x6t+D8PWIq7E9Cf/QZaDlSjmQAE74CyPQKfYY1+rgIy0bgjj+sidoHuDzfL2J9
T8sCWg0JOIZgz4/DiZgtmk88jwb28K7arJjZJg5VTESalSS6lEgOlDIReZelegmfvJ4g2UDE
u8e9kRh3oEhUfMoKWUpm3qbF3gvyYSEuaM8g2Dnbd3tWIYUewqgW2Ud/3Diqo2hEKvjApJgM
fGPp/gm8rI9klw+yVZfZSjsW1w9R3LEDY33ds6hRGoavpN3mnC57OifMRfXoT2Dd/MU6oIN6
LpXZAFEexOW5Ruvt60ghWbi3zxdxy+R73QhyRT4qJSIqRHPNgq9RA5GmEGWFurTIO3UblvXE
KI/Q/nwr2IjeloSc5RYEk7YQOQEfb4EOgNOcdSPt0ZgTH122y2QZf8B8ywDpb7ADa47LusyY
sN1yrdELdsaYElRW8DEanTYPfW+b4wMtLEULOT9uolEzKauCn9AlZYQkbPBggiX0DgEvMYEd
MK+T2dzT0zoUbnMqr9Y3f7ievUcHN0jgDB+3rdF1UAJHZzpDNabvRlwPgc6DcyTsXWSgUqJQ
l5DPuJEoy14CpehrlWiO+m/QcnikLNS7vaeqRFZl1gVcN4xkrZl1qFvaAo4o0jUONsSrUDMM
YYyG3f0GmPSWmOcefiOzNLOoQBasZ1ZDIiJYsKxf4sW2mxelJ5repjkW2+KLLJWixcrkA1zR
6KEWXHWlYF+4DNY+abRn3bZ50gd8hyXQgwNhT/2aqFbOM9NdvOIeThz2UnZyls+ljGdAWXTx
PHezqZvxCxZxlUp/t7Nr0DCD7mVVa/7lvQl5lXyYYERykx/5PQTRWOkvrouTB8MB6nuh82lE
Jw1dWKqc532b+Z4mprIbyyei13fDIgBiySq2mHkia/z0fr57mgIAwFECbxoyfeZZCs6UTyd4
E8WIo+zAtzoGqeMogSikfNK4BwqBmpmH1LyEFNZEf+pyn2JIm8qSFj2w8w6KlBvNS9AhkNHA
fNPMNEO9WUfrxQy6NdcwD7jrRiBmyeN1HEfBFgLBzqYL4fvkfiovKlRzTWBEXMPwTe8LUvPr
Ipiz47AD2aaaR5/1h0zq3FYEl5N3bSATu6q7m7jTfHIFjHy0iKLEz8wxboEMB2y0OIUSxnG3
1H/CU8rwWKH8R3EKqe8EbiMGAxyNXx0bQU2ECio7nRdITPx5JNp4sfJgL6iAgUtwMg6vVMdd
BAodzgNvsYI8w8tH3wKjRcdffOAGryecTELFpHW8iu0IkI1eg9skjmZrASdbx1yyeLt7lGi7
py0a5CUE6DbWk96Qls2JPC64KfGs4v1+U6A90go5zcOEByQ6AdXRuwYN6RrqZsGA9aG4ZrUY
AOmJLwxMqDrDrnxt+bI9CPz6YaEJbPJER3SEX+Ae4iPsTdwDnupZW8jdECM8GZmBFVfvOctD
w11B9z8ftc2SVJ1gdSsNtkrajHJKtir1y3oR7cO5Wo6NGLLYIwpkeMWfX3+9/fH1y7+IOHwY
6946y6f5OfhwSEVLnrEgtObs2PIhTn1CO5ShXhgImdEaK+Z8andYFE8pCojidvpt1LtT84N6
ZDFU3+l/sFxC9fndMUFDrMJ5DiM5scqta/rRH1TqfKxPXE1tbJM1U8hzU4AP2uACsqixUyoD
gS7x+J66rogJMQBIspZWtXLmvaQeIhTBsrbBLfu2xXsu6QuVnxOKG/XtMhJRxqBMBGC2Pwza
vAXCL07rRS9MK1X2n5IAkQisYASQZ3HLaNQLgNbZSagLx2UCtmnzOMIKGxNwSYG5KHcxFooD
UP8l0r2hxsC/RbvOr8uE2vfRLuakuANZkiZGeMhloXF9xgZuxhQlCVHjEFZohfBs5sUhsN+N
I1Lstws+5P1Aopr9jgZOnhPEVBI6YvSmu9uwl1JMst90bA+f8u1y8ahvS+Dm4sW8d4BfPMzB
RaJ28YqhbyByQX+uFDMFoB/V5QBupvxA1XMSvxkil32x2bJXWIMvl7vlrO8OWf4s+ecIk6gp
9F5yCXVrVuuDYRnHsbeqkmW0Z9r+UVyai2Ia1cXLVbTomaUI6GeRF+zzxUDwopnH2w0/zg8Y
zZ9voi7yc5X1mZeTAFLJrGlEP1uk15zIE8fKn/dLfk6KlyRizQ2mDWPVZ3jJ3TwFBvgeH2jS
QvPD7EgRspZ3b0VpioCAGVMNN0amAZgsAakFYu8laPMr2iYi2Q6jGiURFtYIidpmvifNcCzD
p6h5zFxKh6un98uCMrEWAkZGis3Doo0+OCiGQ2jLknoXd8IKS8kaDRg8BC9rG8ydVo0sq6Tq
yZaCe8ndAdFFE4JZt1jcOkBoJiM04UgVYe4nMH2SH+Fhg7KRRDecn4fFTR5l1r07+wYh4vuE
w9X1nXnaCN+NP8Ha6+Z7eSjJjws1kceYln/uwSQf76ngpXqYyoh9srLkeXA3pRpxZwOpOfQt
X20W0XwPs4fSjeg3maCEMFioxRh/TnP6jqa/A3afA8rf4A3c7B+hRMeGFki5agPpsGKoZguT
PlXL7WZJnsORCwDHGYZEpPpSq2ToiQMZFk1Zq5Scn1ax8Nsff/4K6ijKssYBZs0niB+VDzse
QXec2lNajI0L+0zsLiymEG0jO4cxlbn8/PLj66u+vrx9+/Xlx3+8EtVtl6i6aE4cG6lTOJiF
4WhqHlaB85iy736LFsv1Y5r7b7ttTEk+VHem6OzqRYYYwN7eg/p7Zs7lpX3O7odK8EGlpsqi
myR86qYvGZDmt2rFwQ93cqOZEHl1kvr/gAX2RKcvU6IOBERkqDRfe6DWqBNRcg/bNE1Uxude
XekT+B3CDNTOsiSwsU9Vy+CYl/zLGSq2uiTnZ9bl+UR0rBLYmLGKDSqooJYrBqGyRpLnaAMV
dZ1npsR5T4EQfL9bB+uR3AV+V7BA6IuZcIhggkpgHplpRbDwq+q6Toh5MSAWeZD9ND94XW6f
ylPdH1cm+HfmjkVLYHwwkrPPQuzlIckS1rwc08javhRyGZxFqY8c7qEXET2DI8hpdBDGXeNn
ODtD9Gmmmdu1v+2YOWL3KpRwAoJ9Uw3G4JRpxBQi1Xe/Ne/sk9Lt4t2Oa51PtOerYnFUKYPB
E5U7ig8lbPRGHj3I2BjZFNj6m0X37WoX7KVL1deyS9gQOpjwcFlGi2jFF2WQy0D/AFcIsdtl
UsarKA7VJLnHSVuIaL14d8gs6SmK/gpp26raKNW800BLufaU7TiK4IAMBMGhBi3yGqsfYORZ
FLU6y1DpWdYGctULLBfdI9xsOyYkXbJa4Ds1Rk5aYmz3nqoqlZxcgjRMphl2K4BxMpd66nSh
/GeiaZZKbdV9t+Xu+KSul/JjqG+f2+MyWgZXSca7XKUkgWE1G1x/ixeY5Z8TBCdVIbooiql5
HcEnarNg5XWEqlBRtA6UkOVHuCzKeh0sxHy8OxCy6LaXvG8D+jqEtMy6wNFJCn7eRZwsjZwF
WTnY0POjl2oevt10i/cPg0aoWt+dm3st+yN3iSJ1kydscotR5ncjT+dgpczvW0DoRwhlL4rV
atP53cr1hNnJA9MsbY0GQHCi3Qq9PQe2ESO3r4q6UrINrKGiU33eBA+zwvMC5eduN6p3e8Nw
FKL8wDKsPuGqCLdGtg+QWXtpDoH1DPhhKwlWMS0SGK7ovWVpatIMHHGIILVikQf1AZUyzUzN
WOsZYdVWnIjGp/sADtOSh+OVc+KCGdUycGYB8uMd9C9lYMLYcYCoVuuNxxb7ZH9tKzEZCnWf
bWWh1SnbZYjhadXaewKh2MScuO/1kKZbgv1JmOWwFMFt2aI5C9s5VfBwc+hevlvfOhGBYxxi
TysepWSeiTRUuJKzqxFP10ZLP3AMS1Yc2fizhAhUIwKVvTQQb2QVZuFUF2834QGp1Xaz2L3H
EX3M2u1yGZhbH41BQaCfq3PhuO1AavmiNl1gF/8IInJJmC0ncZHs0dIU0ueHDYj6FAEI9Shi
IMXBgxyxJdQAsevEgy9TZwft02PHVQ6y9CH4uc9B1jMIuclb2IYTPTjUZhDinV9/fDZeZuS/
V08gTiTuF0hLzCf8S81cLLgWzfMh9aG5PBAxl4V6cT0s0Fk4aXKm1q4MtQQ1BCZtkzxMKGpX
DS9dBbrtolbcAeJaCyurZxODoMQvFb3V+bvliDqJIvP9F4xqINxwjAbhnPDXSiN/f/3x+gki
Z8xcaBDtiSvpu8RZAreNKFVu1O64jebaDpQ4ozG1yslV6HxD1GNRmn5C9AdpLNC5F8xSdvu4
r9s7kYJYhwwGzCTKU3AHAB6FwJJ7mNjqy4+3169zdRwnpTGOWxKqDeVQ8XJDuBzryuT7t78b
xE+br/GHwJj0uzxmT6EU/XxK9SGPDUUcIslrtYsw0+oh5mPhCJz1QgjeX0TTqn79GP/betaS
Ae/KDbdJX+tWEb51E3jHdLS+XIWz00g8SBQJlc0J4+4hgt00EpSNa3I0bzJEuuPf1xzFWYG1
wmrJKoYMI0aOmf9j7UuaI8eVNP+KrA8zr836zQvujBmrA4NkRLDETQRjUV5oKmVUlqyUUrak
7K6aXz9wACSxOBg6zKFKGf45sToAB+Bwl4hm2caBob6/F58wC3SqD5vCMiHYkBvrUmyLI24F
Jjj4m+8lDpKm9dk2RzLcCQsCWzG0zhOMFW/6FD9ONtgM7yIM74uKbnKzxOJqQHAJ+/MlFrEK
/don4O/CYi2msF5jg11kco1J2Ni25HpycEGhM2kF61KkiWCNvDqGgYkODFiesIGxJVRc2uXc
U3i0REVqyIpdkdIpuUMKYzJdLxvph4RgNePAJxJouwz7nJI/k3vluaZoA3Vh9FXHfHO40l3N
yRzzlGadwaiYYzQrf1WUm5yujlQn0bU5HRUd7y/y2PKBWRVqagWY81ObaE1MSE/MDnfUNV0v
Ztp35WjWq6df02SZH0r0mrYedkT2InOAZ0RqYAXm249OpzV2a7U/poiHDpE13FLjV3E0C7AH
quXIJDONqj3HvPwlHBFGVXMo2wXJbVvl+ls4VjG6r2irAq7EslINOwgvJ6hWCKEAEp0Onrq4
Mz5l6zVjC7FZGRd/G8Cts2B/it0EAh8pjAwgjL2N/QRhErNmp5e3OeVds91q5NuUDJtK9k/A
XgwwOmNQwLplL5UsqPiUhVjTMUrZGDVWVObJjdFswzISWShaupeoUCvbmW2T+Kp/kRmyugue
WUDb6updipRKn/pmYHx4aQKyQM/k/HxfNwRDoG0x+m1+T3rNceyMpnTAW4RsZjqDUWanWDcJ
k30wXbp5tG+dwPqcBXxIVXfWdAqBSBa+dkeBMPjYaSlJO9eXbV5aybm59B7AUrw5HypRmlDI
0K0N61P6X2txzFfea0YfI21otuiUbG49pWMIIcDdgS7Rm6bpuU9c08qGqn6mMZN8JAP2DMzE
pqi3yuwOABzjo89fGbinXylWQJTIH6XwNyzz8xVWjvSPpx9oYcDlKt/z0yRLCIie6wUZX5Xg
097EUKF2zyNe9qnvrUKjwHBWuQ58xwb8hZWmLWpYFBey449YJGKWSx+amVXlOW1LxQ3eYhOq
ZRK+k2GvbinTaHszCUby/O317enjj+/vWneUu2Yjh6ociW26xYiJXGQt4Smz6fgFnNKiUiBc
gMglfP/7/ePy/eY38GPLNZObf3x/ff94/vvm8v23y9evl683/xJc/3x9+ecjbZ9/V6zIWCF7
bZaSwfElm/pJv8ZuiBl0PsvewtnwSSs39gI9kaXnUiN+29R6YtwXsUpMYZrQ1S8mUsmRihO+
oeYiB3ENmIX16IjAUhp5TyGR8yo/uhqJrTWBSlSffI2Ugcc14OEu9KT3xW5Pd8iKn3FmhFXt
dAIdu60xaxVNq/ivAtqvX/xIfvMBtNu8GoeVRC3b1EWtpFzE7QEj9iH+WoWDUejqE8gx9M/q
1pyRz6j/WYoINUj/oIGtP24RyGAtTrQKnmwzFB22iLMlhlRUAluNVmsN3Z4TvZyUZI3SAzj3
15sWakLyGYySXFcUtpHT3XpacYiXur6jdTwEhYA4brlGLirtvpJR2w6PGMZA/OCAQ1SF2+Kh
yGYcsxlj6KEOqRLtnrRWoQrS3YGqsp1eTOa/fNi0qGN6YDjUVCsr9DE1UgdtAge76qQvSmPB
PVW2Zd/0MsGoJRp7lyHtWh+mXZpMUajyv6iK80L3nhT4F12j6Fz/8PXhB9N7ELNgNlU1YIl5
sFwFMlnkTrNt8tNsmn57+PJlaOiORy1an4BLlqM2JvqiHn0ls9I0H3/wJVmUWFqh1EVtXtTl
6byDPNJhCsUhYVuxL5OWU3TpVKQFRp0h0EAUTo/t0smYwHMNeGtfWEYgdIHFMG5mAHXAWKEY
om3Sleoh+oyHHlhq55PgBdQSZhkwHsdN/0JT3fl9RlvcVA/vIjz6x9vr8zP9pxFihEUuYLqE
nih4oPTR82oA+z2zBtW+qMAPhoc/nuSfVbJocNLaoUKoHgSNrPDaJEOaCPy6wF+qVRe15QyX
wkKHsRRGoMqDAkEPlTVYIg57otz0Cmi4M6m64wBGPPSwnZcDkwPZcPcnEaUmkMH53keTnVE1
slQ6b9fe2fhsi8bv4wgc4Rr5AxktGHNgQLZ0EjaaEFxxbMv8bHyjqllAodoS/bstdKqW4q/a
/QEllVW0Gsqy1WtYtnHsO0PXWwYhr6jilkcQEfEDMlTdNkiZnwL6rzRVk5uArQ4wNUynqdoX
p90OtaxysnalGtawLQ4ItUUKL3z24qEJgKHhK4OaHChkrq+XsS8QyQfWwVmtbjWycO6lFIa2
EfpSeMIGcqclTzUyVy/H6HBFo7apvBAyEtIgdwf0rgoQTI0DgGpmoAZbJx6SOnFBwpWtaqDE
kYKFFlG/QyOQ8w/2SNHN2zoZZMtg1buR3lzGzYaggZsnW2LafcZIQvqf9CBcvpGBxR+LwEI9
FUlZlEfAuUj1lJn66DorNiNZcmA8igHw/OWKTlhlQvZ4uit4zYee4gOPpJkq3551D4UqytRN
O1zaJPLcg5NE+kd1JwfQF9pgY28oqQFQtcPuzj5jJdVsBwF6g3RCg9ksQD+oh1LTp60Ifyp0
j3f9O/qfLZIla/IyD92zTX0YVUJDyOHMG6NzN7ujQ3qVY3ZoL5Wgwk8d9uj62Mov7+iPQQt/
V/et4OEnyC25eXx+4qEyzFaFBNKyAM+at+wMHy2JxMXsWK4x2fcMEpNYgKdSfoMwVA8fr29y
QTnat7QOr49/ojWg9XWCOKbJNupjLb4nenn47flyw/2n3cBD0DrvT03HnGuxLiR9UrVwD/Tx
Sj+73ND9CN02fX2CKFh0L8Uyfv9fkqscJUO6+9/LuwyzrNN3+mnlGGpMAAOLTyx3blFXspoo
8cMh5/ZAPwNzKOUL+BeehQLwvYRRpLEoybl1V4qqPSFUc6Ydh+/SJ6YKPwAY8U3lxDE23kaG
LImD1dAe2swsW5asV6Fr0oVnThOo0tb1yCpWT+sNVFlSdBRrCkKFBr/THBnOTqDaFE1IX22x
Xc6It0lZJQT7kuZJVQPLCBQ83W2MWiePOHfli1R2coRH9BPS6VP0FGzqd+MIWEWGHWbtqfME
iDwKKMTSZlsqBz1QVFjUc+WpQVnMNv1GRGMSPhqV4Thi+gDktFbbYMyIq7sbkz/Cr12mauRd
KYeZmZvHi1Zo07APhs3OT9HZeMx5Oi7V5fCcoEQ3wJndCK1ZhToTGVGm8BKyoVq2tjROwyWN
nXiFqy4TT0U7eGlOKdsE4rywUc6Who4uOO8P7zc/nl4eP94QK8xpPOlenac890O7ReYUTrdI
AAVh6jYuIaZm3Iq7gqX5gfJ0cRJF6zUq1DO+PFFL6Sw13cQWoWvCnMqnElkHqKxKOO4pyywN
7mnPTND7VLGc5VKFePQThPFzrRA6yBCaUGSBm0H5XsZE8algxhPcIsBgRA0DdC4v8bHcui8J
du0nwUsV9K9UwV9a3WauxSy85RyWFqqZK71SzvyTkuwnn2XcLDN2X+rrKZF95K68T7GF19qB
Ma3xhqZY5FpElWGurfUA9a5PXcAWRJ9ii6+PXsaGP1bV2Lzk2tBg1fMWqo6OGo6eta4ROwvb
cmWsL5ONvZE+v29eXkbh+m9RlxLHUOg6Dcc5JF3Hi1PgeKqDacVwAeiur3289UN0IRI3hD4a
ElblwWSWQXs+NWBQ1TpBhOXbF0PRZHlpiRIzso3HNsYmtbp8fXroL3/aVZG8oDtmxWJt0q0s
xOGITH9Arxrl/FqG6L69QHcdcJ5n8V85s0ShuzypMJalzq362PEQ9R/oboTR3chBqxlGIZpO
GEVIxwN9jaZPC4yKKpQoxK6iZYYIESSgxxY6tuhTeuCg2x5aaG8doVOFVZ7MVEq64auTXYI6
2R1zAoM4ZCOQEj8qHaSdGRDbgDWyJHAAqb8UF0IfdFV7jKIVklh+dyjKYtMpzq9B3VauWgSB
BThukx5i3lRF/0vguCNHs9VU+PGTortTD/75cYrJDGeBW6LRUs2310QcjpjOxGAjegmj6sHn
GbFKzpG3mm0HL99f3/6++f7w48fl6w3b5xqzC/suopP6GHxeLZtp9qXhbHd+DeeHCrYKjne7
SvUktxD5uTXKNZp92dIE/Lwjk9N07WtuHmb7eL4e1TpKXILavstOSatJGZ290/H6QyFr4jls
e/izclZGrtNBnt30jPN1iBDC9aiR4r48YdcWDCsaXajAf1t6NBvRHg5nhD1X1RW4jG7ikET4
hp4ztGmMR7LksHZNyYlns3y4iRh/FVvB8wC8Z5RzDy6L3M5GTb3LrLJHtbAkyFw6JzWbgz4p
sAs0g9iY7URqOC+nw9yajXapxol9y8JyWD+6hzlVy5/dOxlJ8RusGFOoOD56ZJCJpuEUI5tT
OSPzCI6qqwkOGPdVClrqMgqhZrbqafzC5DdZxjLq5a8fDy9fzUkxydogkF08y1RYBwykNuep
3YmOW+tg4/O13oaM6p5xqshYzYVZWHsLY4oxRJhmLuBtHER6jn1bpG6MzEi059f62wLJFElr
Vb4UbbNPtLarNwVVSr8oxr18+s6iVeDqPbPJaBWd6nTU6KblqpifvLWPnQ4JNI48c1ACOQix
IwjRR6q2NHUcVUnNZuQn/ba0ujToA1ld5OO3dGPVFI73SOoF8drsQBIGrqM3FCPHIcq9dvQu
EGRXJ99V5zg06sRdGtkF8WQ7qh3R9dpXRrEpN9PVryFPalZUqXFC/CBh7BfPWdtXcz44HaOK
Vep5+BUW79WCNESf/84duNnzzLSac6/HfB3fEpo15F5tyQarufgKQRl8fHr7+PnwvKQEJrsd
XW0SxcJcFHKKTy9yQVMbvzkpTXZy4Dbc2PY6//zvJ2GLOV/cz59ws0PwaOyvV1pyEhZjB+Uz
C9cKkC+dU4UnalFTZwayUwxLkWrI1SPPD/91UWsm7AfAR7pSNmE/UOUYGeq6CmxArNVFhsDB
d7ZJUFemCqvsd0lNI7QAruWL2FpS2VGMCjg2wFYqz6O6UWqtuBdfqS+/nEUA5eGDClgKGecr
34Y4ESItQiqkDTk8/6Q9RdDYhBwlh7aVzThl6mQHoqUoUFto2xZiyAGjNN7FXiPJ0mGTgO2o
HBItOcdrN9C/4VP+AEJ2aA0ywgzX+yoVTKd1GjyMg5CEoBis5AsTUa4hSft47QeJiaSq26yJ
fHJX8pHFSIfOlWPsyvTYRlcmOQXB5qSRocx3dO939MxExeW+CZANMRtFIfIQuRpx/HxzB+Z4
Zyug+3LW4X2Gu97Q+bJ+OFCBoj051Edsjzr1J9iXnLEsOYLmxiEuIkjaAFOdfHvIy2GXHHa5
WV1w6hmtfKQ7BeJaEFd2djNWgirMVCjl2WlENNkbyQVpIRO52iPEhpXlTmbkAb3Txc4cRwZ1
6z8nzSTDBMreCwMHo6e+E7olltTZ8YMoMpEs79m7NM4SBiH68agCawg3AKg2GxOikuU7wRlr
MgatLa+bJR43WGoz4IjkM2cJCJwA6XYA4jVSDQD41SxWjiBEjzOmwVxtPD/CvhUKPH7NNUop
E3joOXftY4eIE19TZtuC7E057/pghcly19P5FWkfkrqR+pZ/HnkMXKzuISXOauUijahv62Zg
vV4Hsk+5OuhDJ9aXDLbQaT+HY5HpJPEQhx/jcu9ZDx9UicWccYFTPAIexT1HtTCeEd/BdxkK
C26vMLNU4Hn8Ezzo4xKFQxp/KrC2AGpXypCDummXONauPKPOQB+dHQvg2QBfPWlQIUywFY7Q
tX6MnnuoHAFSpH2PllS3t5qBFA4ml7I6F8M2qRHr4CkJNSDoRO/PrWOSNxCz9thbgSEpk64i
Jp7S/yUFrFVKYHYNbVUn5COckdBdalC6u1KfkQg6RG45I+28jRy6Y9jiQOxudxgSeFGAVGxH
UoS7pzu3Qw+qCfJFGTix7FpHAtwVqbAW2FFtEb8SkThwt4sTAzvyR12cjyz7Yh86HiKBxaZK
cqTElN7mZ6zABZz565sAk6uPl0b7r6msIo1UOgN3juuiI6Is6pyqH4uZLt1BTjxsaUNEhwOR
FVCtfnVQfUcig2u8OgzCnXhOHFRjQWQfANcJLKn6rrssLYzHx61YFB7U9kLlQOd65vF+cY4F
DtVbv4yEK/RMVGFxkOWHAWFsS1a/4jZZPKqfL/UIZ8FGEUVCdJ5igLe2lCkM/eW+YjwBrpoq
PJ+qHGpVObGkrbdy0Q7t0xD1rjvhLXG9OMSq30V04vNMIMlS5VnXKFVViDDDq0iUivPiI6Na
1D4oHGOJxWjGMZpxjE0qVYzNKNUaTXeNzImUiua2DlzPtwA+2o0cWhpabRpHXogUDQDfRWpS
9yk/fiyIctQ74WlPh6SHFQegKFoqDuWI4hXSJgCsV6gGLSzQF0dDTRLPXR5UTZoObWx10ykx
rQeyyc0iNmmKFY/dja0tBlB6CCvz61Olr/MGj2zrYDurm7So+f7HSIdsevxZ9YhTjRYReEpG
9bV97/2FklOEO6tyOs8i4pZXqbj5MAHXsQAhnNQheVck9aMKHSojtrhAc6aNt0YKStI97NPB
W1elevSVcGxAMcBDdl2k70mEqQOkqsIQ23JkqePGWewgExsLruXagAjJJaHtGOPLQ1En7gqz
xpMZdH+4E+K5V3aqfRot74j7fZWit4ATQ9U6K3RHxxD8sExhwS4AJAYfky+gW9bTqg0c7LJ4
ZDj2jusgSZ5iL4o8ZA8DQOwgmz0A1g46wBnkoi+OZQ507mbIsgpJWcooDtBoDipPWOM1ouNj
j+zkOJLvt2jBjBtjhCFANXIWVnmonBW4s1zY4bDlLsFer5n+OEfK6Cp6vl8agbo5JffNAbuq
mXi4u1LmU1CENM+QLJqWRRuqcpraLysDHg0I2QnV6eHj8Y+vr99u2rfLx9P3y+vPj5vd639d
3l5elbvT8eO2y0XKw645IpmrDLRNy+tMdSNbh9m42qRW33JhjFnOvZqNyS61puWzMR+1fYxg
qKPQNNte7u9ZmmRAygs/dOVnlBM/ygTPVAMX5ZE5AkT82AtXDy0nf/y6lCq3oTDSVMjgQnvP
IneniezMvcrrrevAOELGBL/Kw4FghQDCXzhWjS9F0cH96EI9RiUH/X5y+nM+L6WREKqbh1jZ
4BlzV0Hwejx9CpOkWi+mzk38fCT10YuOiWz7U9avHKxIwvEaJg8nhMh96qClZ75QFoWzrc/+
anVVgplHxGWmW2/o+is840n9IhM51Gc8HcEwujZGWo6uzB7cP3Y9JrncRhEFItfShLA79yzC
JTNFUeiulkpdVGcXgsDNuVJKdChblUgnnANSwqo5g7txhZX0YFaLVYc5tDPp7HpNSYK7BNqd
NxssTwZidB6UHhPQyUG+iQkLYbSVxcNaKBwuOALvviQayzTAmWU5JhJg3uuguU4e/JaFts8c
58oEAM+dzLxHO1d8oUkDEBhLhbmZog6Py05a+WwAyF0Jbjr9lUqjP4aqP6tKbLG57+mMZJko
u0gkMetL5/PaXhB4Ta9/MZrj27+KVl6sf1VUuzZLLd9wb0xK5Tgpq2RxbqFRtUZgPkPDlZ5d
BdF3XceS36Eq5V4bbe3++dvD++XrrF6kD29fFVtDytOmS5IC8RMbQjtBiUlANsqPgfvT3jfM
EGbinvtQYbFkQ7KiWUxhZLB9r8WsBRqPGgChSokKTC6MTOb83Ct+sGZENVOgYpEgbQNkTbiS
gdWLWELTMg6ppFeZdlWSDmmFbxcUxtbiLpsz6Z4TZ5fdv/98eQQ3MmM8LONqudpmxh4DaKNZ
E9JHDCZe5DjGR5SKHoSzlw6GbTX7JOndOFppIXEYgnhI5HTwkAge9VI1FsAM7ss0Q6OuUw4W
bn4lnyEzqmm1zZIbrYQMmhF8HtpRuALVPD1JHLpl9kzD0hMI7r+KZTg9f1PLAWTU/+OEykfO
E3G9woiu2ct0ArQcRBYp2yBYHgHA12JXolUKY7GFh5xYbDXU/fNMNE+vCqU6llsSBpc1Js0A
wYuR24239lZ6mvyJM3f2Yfl4R7UY8AA1XhWrvZ46TJVcaqGRZ6mJqtbF37oy0Azay8luQJVS
g74vQp8uWcI7igoEwVkD9j047QUpUWm0tNqZMSRR3JHQxU5eAJxeTUi0OG4r5cnPTDSGAiOH
K1vykjmZNvK4Xm3/TDMkm6nqa4SZjroAmeDYN2STG+Rhd08T6hr1ZWTLnd6MY6eSDO1D5RZn
pK3NBhr36UhK+ZezFjGWTSaCpCRzLNq8YxErLCWCXYmajmnzOFIGRWwnqrrYsySq+KwvALrx
GaPpb18Y8TZexRqJ7y5VIslTdGElhR+FZ5v/Zc5BZT7nY8PVxht28cLoVbDCLs4ZdnsfUynX
JkRuIKeN3GRzDlYro9zJBkIWGmVWS0C3wNYacc/onRy9htG1Z4BAU8KeGxMRfy6l1x7sUmOb
UPfgHVcXIsO7Gdg4OqsADeDLYvvKVlhjtF+9HJxu8eAxM6DX6RPsOpHRItM7MJMchNpSbj63
mqjKa6uJqjy2kqguTjWFckI0L5wCo3O1h9/U9KfSX3kLgkUZwpVvMkgZnErHjTxEfywrL9BH
tPFAjRHHN2Tyx6NBkKb7TQ8BVY2Iky23vjKHYu0z6ViurxJPVeCsXJPmGMoGe6pmWyMYGOvJ
xL6+dvKDVYyGaaUCsWul002JQTNFR3pqp8wlJz9Gb2PYdMtiYWeR6mtRRoT9rpLm/JWLG8GK
SYxu7cvWcERq8DAOomYvjnx0YrU1JopTmlm8zDOlZ59kCRjWHAxBS+HpAkzRuU3SlNuoX+Q3
jEv7wTGFLt8dSvXx3UTS/bzOwLY453Qxb8o+kR89zAwQWu3AA1qSQ6W6DZ65IBo0aSF+4Mhn
OZMbP6Da3Y7Oade5QF9E2mvmge1uLM+kEpQF3jrGS5zU9A92aSSx8A0umrKxiZYw4xWKwSLt
ZJEExDBYTkEfRDI0b4iR1Jk2t5i22Azjn/Md2uL304YNQxzZVERBXAdtaoag32yTOvCCIMAL
ylD8me3MpGqYM53vmuzIMfDQwvJNFYYUpKQ7TlRMKRS6kZNgGF0KQw9NEFnnJJAqW5FFPhm2
3IPstRCeq6bOqIitL+yv3iUevsKjSVMojEIMMl8VqVgQ2z5ju0S8uOMm8crsBDuy0Mf26RpP
aM/Hsk/UeFxLuzIwwO1J9epYdFudDd3sakyxalmjoy7m8UNiSluHNq6L9ksb+KrHKhmL4+BK
a1OWEJXOqr2L1i46ZmGbjE8wgLiepTQUC5bnaH1PriKxFVmj0jxtfExkU6g7IglKk7WPGkop
PC2a7Lxdx1LexmdLeFCZ6fAld64s4O2RztJ4OzEIbygGrXHoVGFkdpXZtdUer5B4SJgBy5Vq
cVbN9T7OdSCb4ahFHJ1ZZMPNvjmke5J2OVwy9RDPZDF144RDgtRzDgnQTzskiOrYKL3345Vl
IeEHL8ul7KujbZYlbtUm6NGHykNsihYJqjhCHelJPONLQxMxzlYkrNzRbdwKlS6+idg0jR7X
Smc5dvl2c8AiOeuc7QldxI1NiQyxbdZwrCqLnkZo7VYhdgmk8MQ8Ui+eQOxGmCnxzNO3JHBC
D21DOFpwLfMfP0xxUemVTmhwzPEsqw/22NXGhA4CjtkaZDyHuZ78GtdkzcMZaQOFRGWRNmHg
mvDKpLTgOEdluqrX8IOGxWqam39t3iuTTbHB/ON15tkqJdmCZ5ZFh1+TdHBXlzYZ3Xba8WOR
5thFTjof8AoKs09hdNUnyEwHVxh4WBLOI3A9SUGm++xSmy5GfJN1RxYvmORlrnran/27jpv+
j79/XBTjAVHApGLXjWYZNUa66y2b3dAfP8ELhjk93fl/irlLMnAudZWPZN3Vphz9FNralDn7
mDHVc6naUuOHxyLLm0EJky1armFPact8CoR5fPp6efXLp5eff928/oATF+nOnadz9EtpEM80
9ZBMokMv57SX5SNEDifZ0XS+wiF+NFMVNVMU6h0qyiz5vRtKx5CMVOWVS/9Tq8yQ7ammw0Yr
B12nwHULQs0q3kjFTm5qrJEkaX2c4zcaTai3O5057g7Qo8kcXaF9vjy8X6CurCv/ePhgkXUu
LB7PVzOT7vKfPy/vHzcJP9nMz23eFVVeU/GVfVtZCycPtMnMghGFFfDN70/PH5c3mvfDO23+
58vjB/z74+Z/bhlw813++H+aIxT0QLvcj63tatPSTEdEjtFpHzeyYc2MKB1nplclZdno0jp9
SHaK1MxDklu1EFNaq6oV05CtfmbQSIU8pKRwu/MS2p/NfEdD02NbUGEtSGtzpI2w041Pf7Dc
Xwj2KvT9cEhxo5SRxwsCxoKUrvLCYChIgamBeok2+VgBvRFYLMPhCPbrx267scPG9KI5BOBU
sgdmY6YqDJISs2bOyzMrysimOZPGxaK8/GVtCh6aOqmILtBg3wyAbBQmAKZAZ2llzKyj/Wea
G9Uagy8ypzpGitwFvjAG8YfCKMyMGG+9RBJBS2fvCpEHQKoCwqGSAp3OpQxYElQD6o0RMxaA
MSyVr+WzABdzszRJ5XsR3US026UxYHWlKhozTTo2Oo1WBuBYGK3DDb0KgjTPCGEba9GAEJMR
sjPanF1Up6qzYg71EJoWV59hbpuWSj61WfmY2oEyqfqH7COWkx5eHp+enx/e/jaN+HgJi06o
Duyj5OfXp1eqxzy+gvvF/7j58fb6eHl/h+B2EIPu+9NfSBL9MTlkqv9tAWRJ5KMhSyd8HctO
WAQ5T0LfCQx9htHVLb2YK0jr+ZYTITGVE89Dn9WNcODJThpmaum5iVGO8ui5q6RIXc+YDw9Z
4ni+a5aRblu058cIg4edMYopsnUjUrXGpEia+n7Y9NuBY5NEfK4neUCpjEyMsvowTkoJ3XvG
qNgpX84qrJyarnKCxxREE42U6AIz2Y+RhReAcIX5CJjx2DdmBUGGPZUObSCMAUKUHYJNxNAg
3pKVEuhBiGUZh7SgoQHQJo20a3kZwHfSQvbgpiJCff+Og7ENHB9pNAZYNuATR7RCw/AK/OTG
srvIkbper4y+Y9QQKQWlO9gGf5Tys+e6hoBUyXntsusUSchAjB8UKdfFjTVnhLRFenaD2Me9
QGsSLGV4eVnIxux+Ro6NWYUJe4R0Pgewm6oZ93x0lHhrRC8CIEAdo4z42ovXxgyW3MaxY0wz
/Z7E7mplbMTmRpEa6uk7nW3+6/L98vJx8/jH0w+jxQ5tFvorzzGmVg4IDw5KPmaa84L1L87y
+Ep56BwHlgpotjCVRYG7J8ZEaU2BO2zOupuPny90rzUmO3s61iC+9D69P17oqvtyef35fvPH
5fmH8qnesJG3so/nKnCjtTEgkN0+1RBAvcvEBdmoGNiLMvmi1gqopLojThgqKRpfSNoGYMnX
hx8fmmdnBGVw//r6/A4BbL9e/uvy/Prj5uXy3ze/v9FdMv0QScHUZhjP7u3hxx9Pj2ik4KI6
D0V7OHp2e7FMjUvB5YrS+HGOUgyZzOjbt4fvl5vffv7+O22PTPpApL3FDiJhwwrbLelESFDU
QyEdVO3AKLVNaqq09m2zP+4SuZPQYrFybR4e/3x++vbHx83/uCnTbDyzQlqOokNaQvBJfpyJ
VAT85pbFbt8rjHMZZ/y2z9zAwxDd4m5GWtXT9QyIi+nFAvHXg6Ua1nWGF46sZybx9uQ6V4xH
DtN4ZHseqZaGabL0mW4GpDRb6K0SvHYMXF8pd9nGQXCtCcarqsXaSRaoWPswg6XFBPSYolIh
j7QDohI/op/ZNlnorGyuRqeCdOk5rbFrJSk/ITBiHF0ZLeP3+6yaDhDT15f31+fLzden9x/P
D+NMhQ0wOmaZzVqDRmPODlV1P+KzBChk+rc8VDX5JV7heNecyC9uMFfoWulGPmNKHdMnzaFW
HXzUmTF77otMqvDYSIXyHf05+4nuu7ze9XukGShbl5zm+h/2ik9UmsgcY4qvaD8uj08Pz6wM
xp4X+BO/z9O9mkaSpgd2C66TOzXm8UQcttixGoPbVn28OBEL3DKR4eSAnckw6NDl7GGj2nJ5
eVvgTwA53DetvYybYrfJa4rryaZ7MAmwfJXuC/rr3vimYT43bR81B8VQDGhVAv4b7lViyk6r
NVrrOvKlJaPR5ugLiDewWQXy4QED79suJ0QvIhWhXVN3BcEVAGDJK2Jvr7xMajUjuDBrKp3W
aIQvt7nRXLu82hTo0xWGbjst1V3ZdEVzMOq0b8o+x0IjsI+aZkeH/z6pqlxr/GNxTMqs0DLp
w9jTGGnZkSFxe5+rhEPKgmypxFNS9rK7FZ5xfiJNrbPu7jvan+wkU6lfAcfvlurxg0mF/ddk
g57/A9afinqv9+BtXpOCTjpmzmVq89XO0Fybf8q8bo5az0OTmLPMSB2yXy0A/dEq750mBJVN
QLtDtSnzNslcPp4laLf2V9ogB/Jpn+elLu1KC1QJ7dGKCp2tAyrav53ZclVyz15WW77qcj4Q
tdmgAKvfZttrZKoJ512uzRLVoeyLUSyVvOseO7rlSCffRAGp6ejY0VOg2jR4W6LjDQ8KyHjy
mrZLjd2kcbhPyvv6rObWgpeJNEOJs+6Bw1TcjKE/YunCitLSKQu6qEjxY2XBc096Nvps9ekK
qmzr+Xc5Tdk6OLsmTROtNnSBQBpc3HdYywdnm3YQrpfKorZNgaTPE20qpSQq+FRZyI0mpeVo
S+sa3FX6fAm2cgmR16uJhCyrpEq6/tfmfiELuqQ1+md0CiVahEoZ3dPpS6thv+8OpOfxfuTU
ZLp9mTuAqjW0xFMTPbjbL3mnzXCnRHtIz4hFUTW9fZE9F3T0WFHIRG8hleE+o8qXxVEaa2fm
XG3YH7BdN1Omytbo+opqGYZXwPGwA1Emp0hWqJYLt+2GitrKBMExRlOVgl/JCU5x/tBcKMDn
MWnGn2mw/GeFch2gp6R/NBlGCX6MFwre7NMCLgZ7ql3kNVXYarViht0MEKeryqndgUpntgFm
ZrQ3geFQtsVgc1LK061rW9grwJm7sH1Chn2qtr9avKSu6ZSe5kOdn0bTrXE3oZ6fQScZViWQ
xOjarc07UpBer+qWJgxuy9jMWaDWNCyV+zoBZwjM8IboiTS9vakoRufqJjukfVkQ3Apq5MsK
Ak79wNNJ3tVJqQ8XvZMI6yUW/YJsLFYkrBnBkOxAp+WaKtwQVPwXV4a5BMyD5/X9A3ajoz2M
4fOOdXAYnVcro/uGM0ghpyqlZfRss0stNn0TT0v/E7f0ltpwNmF7guVOm3mD0JW45jP1mG8O
aGnhqtpaVnusX0DzuRV0agfOG2m/Dn2PoH0Pok7oZg/7dktKhErzGV2ZWVDYphiDfEKpXKCO
8lWmvrAmAJ5drA3FuFS908S5ccIyT3W0zzY1Ye4zgO9aRXDBac4H11ntW0x0wR7ECc8AWRIH
Di90zR7f0lFN08VSBU/s4IPDnmpjGUrNZzquWei4GeMOAu1z0sgooi5fZ1wUhYmL2QVdZxNG
UNcZCbENxIZLH9oCV4RuFKrGLlQNIlTqOul47kIPkzJ2HKyLJ4CKlm0J5TypsRh1cRKGwTrS
81WZhB0U/feeLJQQiqA7zhrp9lYHlBnGVIpRqZGxvOoIB6vp88P7u3k6yFax1GhfugmCrail
GKdMG+V9NZ1F1lQZ/t83rB37poN4Il8vP+Bq6+b15YakpLj57efHzaa8BbVjINnN94e/R/PP
h+f315vfLjcvl8vXy9f/Q7O9KCntL88/bn5/fbv5/vp2uXl6+f11/BIqWnx/+Pb08k26w5Jn
hSxVXOFQWtFq9p+cdsSWmJk+gDpAfokRsKZqOBUbR4XAE5qR1kE1X+RUw55PHjRZTSyaJiBG
Jozs6d3KiMMuyXZo6MqZxZLeIIcEn6lFpS2QVX8w8gbaYPFmN+G8aOinGbyL7/CLg5lJfXnP
6GzgZF2KkRtTcWWA2UQmD1ogYVD98EHF9PvN7vnn5aZ8+PvypkkjGzT0f+FKtYmZEyetTU1j
+AH8z6Bfjs4/jVJVbDaoEjp6vl4Um2k24otmaOoSP3yYcgQLR5smf5LdWI0UtIkZcKWJGc9n
m5hr0jcE25myhGBhRArHVyoEuM3v6aRT5wgkPLI6spHcnM9WeCVCMEs7wK3tcivQ4RVXmBMB
weEi6brGUONmAw9fv10+/pX9fHj+5xtcioEs3Lxd/vPn09uFb/Y4y7gTBkuF36a3AEbLurD9
K9p93qn3NROM9iDCtjD1MYa+S9JbukskJIdDsq2xOoOFcZHlNulkAT1DdQEYiaZ6OQHgxbJr
1MstmYEL8XIFR167MEOzs8ZGl+cDIZGrlXxy/alqN4yKXbBibOIS8Robl2ebrsR5koLu6Ta6
1I9gd+s56jNzCTVv9ZAK7T014I6EnfZFn+/zxLasCDZ4XgVXnnmZTw+ZkIxauqnAjK9lHn7f
NlQxWtu8avMdimz7jKrM6q2/BB+pRmrfFgumok3ulotXdHixqJyauoMGDuaWZix77LioVbPK
E3hnSwK7pKssl7dK9U5XWQ6HaywwebdJDQGzP8m6XLHbkhRou902m4IOkBRv1Srth4MrP9eV
QbhPwJGGRJFrrO0y6gRDm3TWt38au2b1iTCdDwtjok6OlSUiksTVlq5nifMicTV9EcaoHweJ
6S5NDme0ae7oDAoHqyhI2rSNz4GlFiSxvLpQZrq865JT0dFJAnVJKvPeV5umRAui68jTvLHJ
u1/pKoaip5NxrCyarBU3xQhU1UWd48IHn6WW785wZzBU+Ienguw3XPNB24gcHMuzA7mj+itz
xaHNoni7UkL9ySXEJ7FRu58WTfWoGl0986oIDQWJElG3KYAl2aE35e9I9FkdYsP3IqCxen5s
3fSPS0d6H6WhuTm7Z4Fv7HpEZrueBpStLqrRBqsNWOEY79wYdai2EOCW9Dxus9HhBaF/jjv7
HFra6kmVtTrNj8WmEx7S1Ho0p6TrioXFDo44Fs4sCdW42CnItjhbXxRyzQsumbcnSzHv6bf6
ye4X1pZnbdKGY2X61w2cs3YAvidFCv/wgpWHI36oxtFjLVfUtwPtEYgZnlt3xLRfGqKZ08Dx
+MD3a7XtGT/r99408IUR0/7x9/vT48Mz35XiQ6bdK1mOe6ERQ0pbNy1Dz2leSC+ghX9S+gsM
fIHDwGh6Kh2SYRFwhB8XQe6T/bERnPMV70jkivrmfryUWjpOliOJcWGDWBy8zrLWXbaFSWEW
PfpiCYEdopXeNMo1p6XZlUqPRx8GzXyyLmFH8AtsnRXkBMArQk7sGQxbHISOGJhFooug4mxu
qA/VsDlst/BceebTtiTy3N1e3p5+/HF5o40y34mpgihOx7Wjfxht5tnHeCNwQN8OswJ3wyHT
ToHGM13jrFc5xrWnKfFpw589vjW04eq4kBiAnrYTJTVySsmoNB12PG5kARWyLb8b+pHRCFSH
cN3IWCQFWT/ywYTQ+miVFYhdyKwG88xzDApzXLqO5da9xpm7PLhQSVIEqdhQvbFtiPK8l4mN
OP1WSHSJLrUpaZRknZrDmm18j7Buh2ajrzbboTYzzxFSbhbxsCH6bLEdujoriE7UhzX/p42K
Fn4CkauCCYP6LdktcC5aY9tyN7LkC5lQTNT9WipIW8yp6A06IVva8wOxfScaEy/aFqxKrjfA
djgc7YcuEhtyBzNNnuKQ7sfbBd5vvULIm8fXl9+fvv18e0BsNVRbJqbo9HuDMDWZqm9RgLaX
bVIVIozMClvbFmp7qFPY1JhtOSOQrbWRJDZW5Kv5SAbzStnxY7TdleuvNAOHRvN0on2sSYGC
ZZtda34BVJ4nZtkn8djKe8o3aWLrIjBwk+5VpInzuhRJutZ9i7pSZjnAuwtyKnrZ+lfzldae
OpLf0Z0XGgpBoCSLIzmc90jWjtQhLtJwUAPeVClTpUcNg/7+F8n+BZzX7W7gY+3mCEgk26eq
n/aRSBfefovv1GYe4llijswcup2BwjOGfrvCUJ1Zap/hQq3GGA8LXqdXlQUn3OMX+azJTDMC
uYrqy70U2sMgDPsT782iuzNamsK4oduIZlWiSUBFk9J8jQmy0bVYzxYQaQGSRZ2GjzxsbgAr
MmDUUxldy9lbDT/iZKnv4Q/qvQZgHkBOrcjxIJRhuQhkbxYLSh7SgYqGVIC8Iaijmk56x+Vf
Iu3JnUoQAeZUomIQxiTppIQurUhfpIpp9Eizhei6fH99+5t8PD3+iUTmGr891HDKR3VycIk+
TQTSp1cnArCGFNbngsKMAdlLT7m4M3UwjP8xJmbCz8IuIq3P+DYdHFXUcDpEhwTd+dc7ZqnG
6kA5zGqzz5LaW7nBOtEKnHSFHB+Y0yBIu6cRafeFnhymfKYGOtUITMOp3Wrl+I6DuaZgDHnp
BO7KW6lbNgaxd7CYQM6oqxVCfzo7EkMf4QzX7tnIlLsZtmXKLLfkLSevZLNJyn64O2xyswE4
1qEXM4wD3AIHqhtNmW4z52U8qst0XjEI7eKbjUnJ6KNVgQYro1qUGJzPiK3yhLrYI9YZNTqC
EkOjI9o4kA9dRmIsX8fODRKYXSboiw0FPKFnfjtG4eiTHn2IMDEFemmyJHVcn6xkfxY8K9nj
MaPI0SDU7DeZG6P+RXgr9F6g+rHgQ9V8hC3DNTFliW7Wz5sCu0Ln5sxpAm5etWL3ZRqsHUMs
pKhd5ngNMIdiDG16d6W3YUE8Z1t6zlrPQwCukbkIt7Qp+8mkbJ7+mPHXb89PL3/+w/l3psJ2
uw3DaZl+vnwFGxDz+cLNP+a3I/+uTaAbOIqtjJrygEtWWYMIavr0WJXnLt8ZKUGsDvvyQMDc
/77Hju94D7GYTIbjs3mC07sUiG7k663dsosW7r7h+eH9D+ZJpn99e/xDW1ymBu/fnr59Mxcc
YRdvroajwbwREQZna+hSt2+wTbzCtqcKcr/J1VMuhWN6S3YtqbQ96OIvkITuEo9Ff2+BkSl4
hMY3ELOd/9OPD7CUeb/54O03C2Z9+eBuLcUe6+Yf0MwfD290C6ZL5dSYXVKTIq97S/7cBaS1
bdqktth3KGx07tAicdqSg6fr1lExNafwjIZWiLXyJGQbGMqKA45pTCK5gPkGBJ8tSt5Z01eJ
49xTDSopyjLHrF/GR/IPf/78Aa3P3AG8/7hcHv+QM4ft2O1Bu1OZX0VhX49FK+j/62KT1NLx
7UxjkwBEKZULrcO8dmgvSKxJlgmxQBpI4oNAQmJ/NCXTMV+jBXYdJn1ZtE2xQWvBkEE+njRA
bReN43Rl7eXwKz34XdyohCp1/DB2YhMxlHEg7tO+oXM22nqAE7jC2mO7OkCN+xUg1scqN+/Q
KHLz9EJH8e8Pio0xfEH3hVvIaWsUjyFtZwmHPHHg8XBZCbujcrwBb9ugKPPEraQG7DyaE+o/
XXAkm03wJZefPs5I3nxZY/RzLIf5Heni0Y4JZMTxZLVDpQ8pndoO3T2OR77ejDNiCQouMYXq
hcaI7O+rOAjRMAqCg2o/4VoJRjADED/GArgBCoyBTjVEDxoxkkmQenjBC1I67gqPyKbyoIGl
NRakSGdKR+rQpttYUfQVQI08JSOeFVEtHxQoXuwY3+ljrF8YXY8eP4mmPbzXyHHnubdIWfUI
MOMwNAJEKogajWDsVyN8iASEDjLSCN3mrleJCWwrz/GwLOjIVG3JJSSI0cAf0qdazCOB5JW3
ctEID+OnR8qACTKlK4EqJnocr5B2IEGF5U8yOkvE5lLeFtdmPxCKNW6PprBgxxbKJIVUgtGR
oQJ0HxVuhiy1IzCs8TknXDvYBLKO5D313JU+7WvLxOIjHcVnO3TGoSPSddCTkunjtI3WWkPA
62pY78nsXx66C/Yb5qJltILnemhZODLsTxW6K1OLjEzRTE7XKZo2x8y0kYEUOuqjPvUpwmLd
0qpBJhPa764aCFtCNE+WKEuw1D+wDMbBsE2qosQX2TBGxz1DcGdqEkvkxrh3X5nH/wRP/Jl0
lla1jLi+7KZ1ouuxEcd5pb91oj7BxoMf99iCDXQPW+IpPVhjbViRKnR9S7S4aenxtdMhU+ja
IMXDNgkGkF503l8KUSOx4PHKxoZipzFIA8LNlWXSYK79FtL8cl/fVa2Z5hwIkw2r15d/0i37
tXk+IdXaRT0RzjLAbqlQMS921lP5ab0lYLlfDUmZyG+bp16G2zULeTh2fYrl21R4TNBp7U/N
FPN27WE9cex8B6PDg+GOtg2myQJGkgpRO+Z7cqPQx56qe4uyAj7hEVERF0vmAMGPHKZCdnTD
nHjx0g7GiHEx9VpP/7XCVDEIv44LrsWacmTgt28LhSlb7epAAtSDzinPKj5jdGaSiDbZ2bqF
5ehwRPQVUh+RpWe689XpvRs5SCpTrESzVH0ULm46ziBWyKIceZgOw4JMINODfv00JdNnjrNe
3OiOcTkmT43k8vL++ra8Yu+aMtsW6hv3jMqkGeiKx66pEog/Z/hKIfd1ykwv5yqRE6POhAP/
eCbw37SPjvlQN32xvddKwYIFWeN/CAaSl1s4NcDOigTLPk9U90AynR2b5JqdgzgQ06o7ndEd
zoa1OdiXq77AMt+P4pVxrC3oyilZRdMkaVFYzOop1ZWEWzyL4V6CZTI4DRbgLyuN3DWsewKV
zO9gYSYnSrBujm7A28iI/du/zQUWlR025dBY3M3JLJg2K+HsdlnLWxIb+ZyV/hhaMYdzawoJ
yCDkBga03UGJ/7IFy2vKtc1UotwnjKluCtp7B6T4DMYcNzAgqTZozCL5Iwggcs6z5LyrkhTu
82VLR5UzqbLzbpMvM23SalvmZ/ovjK0a3VLpRLsTaH66OgVnkqhyj/DfVEpqxQ+OIG8gJBTa
/4KhqFs1xBBPrcKyYHYvFfiGyyV3TnOWWYvb8B6Z4TyU0LS5eHp8e31//f3jZv/3j8vbP483
31jUL9mr7+RxfZl1LO2uy+8Vq35BGHIiTfikT3ZFrZzHtl1BKhdszbDh0sCTd2m6Yb/1o+iJ
ym9s2PRYfMmH280v7sqPF9joFlnmXGmsVUFSUxYEuGnkGwFBFAe5KnGcnHQ6IVQO69agFyQZ
kPBgY2ppiTuglnDXNwsB5BAly2dOMzmWNQWZjCYSs0CgZlkrjxbGXtikakvaxEVDlVmot5E0
Z6Dqlxcu46GH4nQMKc5BZLJZvyxJUSrdM1cOUj+KrGLI115D9jGWJFYsYLbQQx8rWe/Gsp4l
kR0L2ZQMRg6w2gGAuyGXOFxMPRvxiup76g2vQLZl4GB65ditsJwUjeMOsdnlMIEWXTOoD8/H
wcPcobmrW/xCRnCl4Rl2iJjJyTj22zREhlGS3TnuxiDXFOmHxHUCs/ME1uCAMudrgBNmSA0p
WiabNl2WOzr0EnN+otQscVx8qFZL7UHxA1JUZv525yEJkgB9hzknlxaJdXJNN3zgcF9N2KBD
gBqwuyGiU4kdhbnGt+C8WXGMLcMmcndIuA/k5K7VHEsJDvbQxQx2pjLFbmDKGiUGKHFAJrpb
/le5U0Um2aUJFm9pa0NhQI9Lc9ccem3d72K6FcXf+zdpnzc1f39T56ank4LK6fuH8Ailmrck
j4+X58vb6/fLh7LxS+jOxQld+X5CkHwlCpD2PU/z5eH59RuL6/L07enj4RksBWimeg5RrE5I
lEJnZ3SHtZiknOkI//b0z69Pb5fHDxbLB82+jzx5oREE1VZ7JPKAO3pxrmXGD+kefjw8UrYX
iCdraRK5CRz0EJICkR/KZbieLt+Ks4LRPxwmf798/HF5f9JyXceoRwsG+HKu1uS4w7PLx3+/
vv3J2ufv/3t5+4+b4vuPy1dWxtRS4WDteWiffzIxIcYfVKzpl5e3b3/fMGEEYS9SucPzKA58
VeAYCXoXrTxHuUBIEm/LihtFXN5fn8E87xN97RLH1T0jjqH1riQzOfZFhva0p2Wv++VDNbGd
GLRYCzzW0555DMep3O+SBRuDmqobOxanqjrzvNCdHYtvxQ+HMzMmHxwM+2aSUwRV+Abfx41R
Oc+4V0f+yPmYmWZRycvXt9enr0onkX1lOfUZuSWjKdG8myZBIzzsyLBtdwmcl0gnD3VB7glp
5SgZFexE2bOqOq97ogG16hWO0VilsecMAGZF5WppKBHEbkmk3ZePm1Eoatdgr6lGjm3RVadE
fmUyIoob7JGoubqfyM0Oy75smhaMGhfyb3W3EyPQJfjjkhEfXTIsMm26ItvlmeWp/8gFjqYV
Y/hNWvEe0YOOjXv4wmeG+8IP2fuflw8s3JiGjF+fi3JIzgW0/VY5jNoWeZmxF+oWE8YTuPPH
yrO/p93lhdFKdUBQFS2RInBPhymjSkKieJUPSdoqlxrjYTF6nEelKZ+SlNXD6cZLJUxLr0bu
2orgB74jB2mx51gj2nZNrzRelZdlUjfnqXC4qlVShffc4IEa98kxH9JSMqChP+DwjMrx7UGO
hyIYaSnyVhk8/BhYS2SiiXvMUXLS59fpERAzB4f4dN3l98vbBRbJr3Rh/vairDlFinrYgKRJ
GzuKavfJ1OU09iRTnjJJJR/tv3CVXuJa+3GA1l2zE5OQfRHypxImRHh8bqxEJG3xBULmKQLP
xy0PNK7AcsIk8WhHCRLiWxE1UqiEbSonjjFNUeJJszSPViGaNmCKoZ6MEbrxoXvC1pI3uwcu
87NlhKmMJCnQTHZ5VdS2vuG3VFfb3a1aYjEMkRM7F/B3l6MXDJThrukK5cklEEvirNw4odNB
mVmiFEh5sGu95cYom3RfJzvVVkDCuZHdchrKcxuJ3pzrhKDIMcX7uKpaVzdPl8WLbkTiMz6m
tsWZLoni8F1ps4S9MUfrAGid0HV+U/RkOHW0WSmxduN9m+rJbJLiFpyHoUMK8LRyI8cZsmNr
fMrfYNo/HELFdECmDrtEdokxQrdNnaDtUIAVM1KAIb3f1egDq5Fh37lmPjXBagMvnHDhEzjB
LDbYfEkH0QbiubW2UUaX/MAJ06Nn8WKms+JWUCpXGH4mLappLAs65YnWcXp0V7YJkE76Lvou
jN1rQYAGW7U3DfhwwpTlcypWXqWV2d4H04EnsFZ7kzupRWh348pdvHy7vDw93pDXFPHVRvcQ
eV3Qsuyk507zGi6hpiGGlc0NcL8yOl/0ueTQtUdmOjvaM1cVjL3lfPr0AO2G7rzQ1kOEyPRc
3BfiOZvoZ1yNYtGG+8ufkMHcK/LkKfxK23Sd3o1WV5clblxynSuMQnQ+U3miNT7NM4hO1rTa
1tIylqLaaa9G7KxtfjW5NKlsj1BMZtjLfzbzY16nV3Ovtrt0i70ANVnpGric3Np6ozNzWYx+
dB5bHwEEx7dLBWE8+2L7qVaNHXwNVHnCyFIegOaGsXJwkVni4P2wyLEomYwFkQ4bd4SbuWtc
6NMKlScw7spUULQOOj0tzyfSlDP6FWebq+/Pr9/onPZDWFArBwGfYZd2sqRPOvr/1HO8oaKK
1rU20d2uy0oEd+qmL4l5lR/takn3JbGpbl1E1q561sTIcRJ5CXrvLVDF28dMdLGUIh/t4AkN
sJQiNP3EwTPYWKb3iSFFFZwJzh0ktyjGiGuEuEZbMLLExZlxdJKaUB/LCWusdYg11jrEKrUO
A7ysFkVjZsC3txO8RsuwtuSWWBOjULhbeYYkkT0VSetXaQLPqHfqm8wJoTqMCzAOeRYI3KrS
X016C+aKGoPwrgh5VoR0S2jf4mhWHPHDABGJU24B4qWhPznEMFWxkS1oj+Bq8gobDy4xeG5g
Y1UZffUgTE8nsKdjsoafZvWtFdEZ3dVyAZOuCv1PpQXrCGGdkMrmnwKl9ObQa/3iXi0nZ3LR
00SG+R5+0sgOnbbFMcdoQ9upbwdI22XLBWEf60bvE5HLum2jzFnajnk55Ob0SBIjHqNHUQbb
Wq0AL0WKmW5Kw6MHMxa6juolWPRvBQzlroLtDopzP6HDEc18fyJtUUPrSIfGE00L4SIBsJLL
pZQgUnRo4FeJg3an7WOwQ8e+Jnk1HGIef0fSbMjrzzc4I9Z3tswjhhK2lFPartmoMke61Dhi
Eoc7C341xvMak0UwiBcwHJ8znF6/GMBpSNrNRJ2vWvq+6lZ0HNrLUpxbmEBtJWE3n6GZcnMq
FxLtMnvdqDT7Rs0oMShoP2lkfglqZM4ftizkL2JALnCIdyhD36cLXOKt0lI6XAayDYu1BOMX
HaVlSyLHOZtVqc7E2lI1FewuN78Bb3Y7ditIe936tShZW1A9O90bp6CA0RnDcy0TIuBsPA1l
a4p8qzo0SjrRitgsSVcZMX5IG8tv/ihwjCr2ZEFzLpf0FZj5F9gtEMfU0ExjebmCAOfPaGeN
L8Ps3clOqIeutXdK1d8awgsLjNFLoky/wuWqpSpkLxomlUM7TNSqP8ivaoR61NBeQZj7SjFZ
z6c27y3XR7x4YL+W9AUaLmjsbLhe3cmuWEfROksnzvvYgyFZdYrB8ER1QrQUAm/xxYfXAMwz
wMlj2i+IOenh0ZYkW31K29wZZ4kZmE7ucDLNSAt/NiKNJcJBVaRdw2w9aIahrx1fKltjbb2R
0kiKctNgd97syQYd5tLtFCfNkQX59TxY+tCdNn/i0T58uzCvRmaANf41vLXY9WoAKB3h45Nc
ZZgeLf0iXcteK4+aJrP8V52wjIAIWZ0Q0u+75rDD7uubLWdXFihwhWp78DKZ54yfScvQqtCp
QstdoOpPF4i3prpvejKLxZCFksH0Mn4kLLW+v35cfry9PqKPanMIZW/6qZnss4yPeaI/vr9/
Q97RgbWCXFpGYK+bsEZkYC1bWjDK9KhmLoaS3dRIzaHOIHbPWFU6PF6+np7eLiIC6mT+SWj1
/kH+fv+4fL9pXm7SP55+/Dv4c3p8+p2KWGY2C2gnbTVkVAiK2nz4Nx5LkVfkMSG39UqT+ijf
VQoqO1VPyEHxVyu8/tIKpUW9bRBkLouy9jM4zy1FVbgqOfnZuAupCK8hv5lGKyhc+IOJCJ1S
pQ28BJC6aVoDad0E/wQrmlmCeW5eO/DJUCiK/EQmW9OF+ubt9eHr4+t3rUqG0s0MrbCltkm5
k1TF0BCIuiMkwWWabIHW3lb4/I4Wjxubntt/bd8ul/fHBzr93b2+FXe2OtwdijQd8npX1HiE
nKxNEtguI8ECR2vUK7lxj3f/qzrjogFL7a5Nj64qsVJzjRaWU45GYvzmkO4q/vrLVlGx57ir
dlhXCbRuczkfJEWWZM7iXN6UTx8XXo7Nz6dn8N43zQ+mH96il+M6sJ+scpQAYW9KWTEQ6GHT
5Tv2/uwXfy7U5zMXno3nE3asXWDyT6vsDtczehaAOWktjsNh4ai3XYLfKAHcUlVlOHXqm2wA
SNri91oziAoEwPPNyPi0EKskq+Xdz4dnOkb0MTxKf9pU7DgDfNFk0oBkAOhgVNHQqWSjnJQw
YlmmmKE0w+4qusvMy1Z5nMIQunbtjaSA2GI2siPaZloypJIDVQhSBqwII/Nxq9eJVMTg1RcW
Rj2lNSHjfKyWO2k7dHpAe0Ae3vNFyrikQzjVVLb6hZtplIQcbEsAdmsif7fCkpNvFSRmlFe+
ApCojqU86G21jK9sH2KXRhLuWr7T34yYHJarBokDPejneAWRLXOsCZQ7I4ls6SmLAxyJAbu2
kuAUzy639ISP3sJJ+Eb2ODEq7rtuqyiqs0LPZ6klpR/XxpjmwQ8QLPoDO3VxV8OxKXsIoJU2
h1ZZKyYmD2NScuqxg2AesHvSjNikeX56fnoxV1IxoDF0coD6Ka15zLtlltPbLp+sf8TPm90r
ZXx5ledqAQ275ihCfQxNneUV96Y66ysSG51ywVwZwgxiB54yJyheJJFP92UYXK+SNkktMOwU
+c2AUgkjcACcSoktnLBFF3WXcFCHrCA/mzSguR2H/Kj4AVbIY951k7ZXWNpW3UKqTJNUZ1tM
pPJzn86+jvO/Ph5fX8T2Cts4cfYhydLhV+1Fg86zJcnaRy8/BYPwwqx/VyVnxw8izLfezOF5
8hvJmR5FseqvT0BWq9QR7+tAecQr6Hx5pYoRcwpgwF0fryMvMeikCgL53bYgj5EQMSA13w7I
YA/x6OSY4VQ9aGQ/q1kmTTTiDDTrEjVkD6fnG0wSxEaHbiK26iuQ3hlKuqvocQMMuFXKKzTC
CYUAmYvFzlx2rVqmiWgNGV8dKQBizT1NKMe1cHpa5/2QYgUAhmKr5MaN/oY6R4MWMX22ks7S
siSmWw3atrT65lFr16Zy9fhx+LZKXWhiZUYXB89opoUsEAX4EWFBFzHakCrRMiXAFtJPZTH3
jiYbBCuhO8hDpRfhFh7qDIpTIyALR+B0l4+Vm/9TDk0nfWOwslwJrAUTi6vWhZzsPlwEjiY+
l3KcdfGHw/NQEU+HMeVjxCTtM8nOpSeb5AiC+kRtJGqvcykxcg3C9GRTI+PvPDdV4si+dOlv
11V/+yvjt1o8QdPy3VQpnRqZN/MSW5oTV843SzzZBwUVui6TH29wwlojyH7dbs8kU/wvMoLl
IRTH1HeA5/TXW4dHxpm3sannooFp6H6SqrqKritIloYeUS0aVhKFsjkRJcR+4CqEdRA4gx7L
ilF1gvRevTqntE8ChRAqHgJImohYPNM8dBt7shsXIGyS4P/bk3eq0+0q0G1K2et7kkWrtdMp
YyByZGca8HutCHrkhqH6e+1ovzX+daz89iP1+3Bl/KZLANUGwR1PUpa5shlWGHABgyfrWhmj
MB7UUkbyCIDfWi2iteKBIIrjSCvG2sVtPgHy13i51uuzmsraD3Er3wQ8PpzB/gN9Is4PaZNM
uR9bO4KiHcAmVRJkri2pc+uuzsaHlBrHlk/g2JS9QVELkKZgee9oRPAYqJLy+piXTQtOsvo8
5QF7Jv2J2ybJ7HCfXnagvypk0BSqsxuo1H1BtUlJnvfnSJ7bxps/rbZ0VxBllsqWbQoPkvRP
hD9J/aMZ71PXj3CzSIZZ3O0ybI1frXIMU7NBA1+5ioQCyXFQZ6EckkYlEFzf0T/3UB/98FQy
lBu1Sluq5yqCDSTfxY8dAFtbHs+N7xuYo8twZekSmYtuO8DfoSox7H6FJJ1CrZNDFKtetsGo
xNqDfANC9Vy8EGyfcUx4GFLFgyJDuFvR4dwoZeCGmPddo0ptV4MH+liXsWkjyKuCnWHwQE3a
d8wxsKXtCJPzoWqyKViWogvzCskL3kTXSdmWZBXKzBGtVMyYLV3FDt7cI4yae42gT1auJHmc
7Pw/zq6kuXEdSf8VR51mIupFi9p16ANFUhKfuZmkbNkXhctWlRVtSx4v01396ycTC4UEEvLr
uVhmfkkAxJLIxJLZDwZTh9ib4j1Kl3fa9EYueRw0Y9PpmiBDAsHIpk1mptEpadMBjQWnqOMp
F/JAJS2imtkv5WAlOzLlhLdZNBzRcXq9GAfOOLHP+m0c/D91b7N4Ox4+LpLDI931ATW9TkCb
8exduS+rzdrX5/3PvaWiTAfmpL3Ko6GKh9DtjHZvyTI87V72D+gLRviRNdNqMxi41WrbJEVD
48FJKLkrFcaq5cmYquX4bKvdgkYUyihqpC+3U/WEVx4/DE0UD3r20BE0y+sAljKtUxRny8pz
c62pGg9yfTedbdiWcSpPeuXdP2qvvOjfJTq+vBwP5uIkz2BabXmjarZRnyK3+5tKv2ckarwG
DOo9Jwy9Xvt0kiBGZGtly2OkwSxMtYZyXiRHAwyMe9mHebV61Btbjn1GA9YROgJU4xwN+wF9
HlpOqYDCX3wFaDTre843Ijbg+jUi5KxePBr3h7Vt2Y5IrBz57Nq1o/FsbFtbJjwZcZsxAiDW
wGgyDqznofVMSzOZ9GpKsBT3AXUdNiVuF+OqbNF3pPkxcTMcUs+XppIndL+YjUUM6lhALEjU
z8b0Pkc+7g8GHj0o3IwCjzI3mvapNhZVeJGWYwZk1ieWo5iBQ3e6Du2ZvZV+NKd9Gl9Tkkej
CSmCpE4GrEdTBY5NE1bOTLqyOzdeZwZW5zPu8fPl5bfa/jDFj4PJYIpvu//53B0efndewf6N
ASfjuPlblWX6xJE8rycOsd1/HN/+Fu/fP972Pz7Rd5o5pGcy0JJ1zs/znow98nT/vvsjA7bd
40V2PL5e/Bfk+98XP7tyvRvlMvNaDEnEU0FQta5y/0/T1u99USdEyP36/XZ8fzi+7qBF7ZlU
LJv1qORCkgx/ZC29gcHgX3obkzQ2ddOf2ZThiEy7y2DsPNvTsKARCbbYhE0f7B6T70Sj7xt0
ujZUrQc9szCKYM/OagYRCv0APSNxS5ztcqCdCViDwK14OQvv7p8/ngy1RlPfPi7q+4/dRX48
7D9oOy2S4ZAIPkEwRCnuwPQCejFe0frsfMvmZ4BmEWUBP1/2j/uP30wvyvsDU5GOV61pP65Q
Wzcj2gGhb/kFW7VNn42DvGrX5jzapBOy9IbPfVL5TjGVXwSQQRiy9mV3//75tnvZgcb6CZ/t
DIZhj+n5Q4/zCYWyTpsURlXN1OrzKdPnU6bPl810Yi4oaordYzt64/FBdJlv2OMQaXG9TaN8
COPYyMakOoPDxPiVOmSBoTUWQ4tuLRKIXdU1OTi9LmvycdxsfHRWT9SY5XrxTO8wE8AWpfcy
Tepps0WGXt3/evrgJO6f8bYZUEMijNe4vuPpYxkOYq6DZaB6mOHrwipuZgOz/QTFOhgTNpNB
n53l56tgQiNSI8VzCiYCnSNgQ94hYgYXgeeBGdwQnsfmGMbnsbnivqz6YdUzjXtJgY/t9cgh
kvQKzPoAaoK/xN+ZDE0Gs1HAB3akTGwUQwEFNHzfn00Y9FnP2XVV90ZEaKkcMLT3wAzn3tY0
aPs1NPTQ9G0MEhzEvNmiimLs1hRlSEPllVULnYB0sArK2u8hla+CNAhsZ6kGNGQPXrWXg0FA
9ji26+u0MV1/dSQ6GE9kMq7bqBkMTV9mgmBuw+mKbKE9rBCXgjTlvwGxyYRdd2qy4WhAqmrd
jIJpn3cRdh0VGTYHk5KEzKXp6yTPxj3Tpb+kUM9r19k48IywO2jIft9uMiWyqHiRZ1Xvfx12
H3L7yBA8p4F/OZ1NuEN9AjA3iS57s5k5g6v9xjxcEodBBtm7BXrioBpYuAQZSLWVPBqM+mz0
JyW9RTJCD3MEuy7DORjjwFuw7lCrPBrJYyo8YPVfCyRfpsE6HwRkC5DQuXUgA+Wn09swD1ch
/DSjAdF52JaXfeLz+WP/+rz7Fz00jgs56w1JwmRUKtPD8/7AdKdu0mRwwaDD2l/8gS6ED49g
Bx52NPdVre7AdScDiNKN9yXrel21msHbKeR1Rzsxh+UMQ4ueY9EhrOd9jDVNyqm+n/9KNfcf
QLsW8TjvD78+n+H/1+P7XrjxdjQCMYcNt1VJzmT/lSSIlfd6/ACtZc84XB/1abTjGENb8JIS
lyaG7Aq9QKb2FhKQ+O1NXLbwTbiIBQNOc0BEimOTlYSYa6usF6hdHsvcsmqArR1oKVPlz/Jq
1rkT8yQnX5ErAW+7d9QPGbVuXvXGvXxpysyqT3V/fLZ1fUEj8iPOVjBJGIfU46oZWMZS5Wm+
NKqwttg9wSoLTBtNPtPiKJplKmcD+mIzGlPtVVJ8ZzMkSNME2mBiD1P0Wdu4oltQWWVeItbS
ZTsaeipnVfV7Y35B864KQWMdsxOt0+Yn7f6AztG5ibYZzAYj/7RN3lMd6/iv/QtarTjgH/fv
0v2+KytQEaU6YxqHtbjyQsIS5vOA6OCVDPqgNdQFev03FeymXpirCc1mRnW7zWxEJjNgJ5tb
qP4MeqzbxOtsNMh6GzvUwRef/P/weT/jF+bRGT4d4V8kK+ew3csrrgiyo12I7F4Is1NiumPE
9eHZlB5yAn0j32L8jLyU58q5MZJtZr1xQHYaJI3fLM3BOCJ7CYLCC+IW5i+P1i+gPndXBheO
gumIhIXgKqTrXab3WHiQkyYxQG7yM6EUERUHYZmydBiYA3M7ye6kiudF182qouLNQyexpM5S
Pjq1gOVpXE9O2l+Enag6QuxNVYac9SSqvB/Yaa7S+TXnnACxNF/a7Gm+4SZbBdFTJYoI0yzv
j0HgoJxl6ILGl6gcHXay3tiuCGbVYGbq35Imd2eaqHUAFeuVZAAt0Jx3so5c4vCIH8Ure2nD
RQ6WL3f+OU3qxunr4gh1nPtcUiBLFYWzsbkvI4gbq6/Sa1uCoo46t9XaAphwGWIwuldkKC6c
MHlKCRPONKqy2BrfKjQ1IdU2U5vaBBJ0tiMRfyWCig5n7M8Qtzc8pWzTJAqtRIC2qh3JJB3R
6EW6tL66eHjavxoBF7WIr69UXeqJBIai6VEDg9TW4ZYE+4QH6Xsjqsj9jz+FR5Ew5cWAblAY
VxEmUfF3oTQXFMxMuzv5fhcGAuSXcVQzikzYhZDhFK1S82sMLyLGsu3Jiy5Wnr+cq6n8IlPt
i6JtGSVZ2brVpl1eQS3FNAyJjvoAOgz/bSivIImmTXwOk5ChaMHiZWHtFgJKEZX5PC08yWAk
0SWePKsipzDdJ+pPO5nJdhfrvroKo8stCdXZJHUK/SytyqgNye0G9DwND6e7zkb7Ixa2qwl/
mEDhmyboeeLUCwZxh55d6FO4mBzdjJlZkedQB4m8GagQD4SG5zYdmph9ljc2/bJPIpELWhYW
bXrlUOW8YpPtKPMnonRnvw3ruQ3jAUO3TjoHTmdqRV76LRtuS9HgqKwTgwIxHLCfyQEjVHgT
l1cA7c8R0jivgtHEzbQpI4wxdC5Db2QkiXc+sr2l0kLAzb0TD8tszXtakHx3twUnlJTPPe3B
fUCOdVjgWF7SkHbZ6vai+fzxLq5kniYHjMlQgxQE+JSMQUTRmYLhbsJI1hoN3jor2yUFrQDu
yINu/pxEpDc2Ek5HkcepL2PhoJB9B53n4EU2CohuP50Lx6EMsl1uMj8W9MMvwQHGBk04jnCz
PIuJL0QGFfbhLJ9bE9pXCJRhRREZXIHJWwZDoLXX+QMUrlW5XLZFw9TCCSBmIkJF0xeZcyqO
gmUEy9hKUnigDM17Hx3ZaXH1Le5Hdt71yromd2BNUFUnKbbGGhidvH5mMoXZdUnTFjcCRQwD
t7R5ugFZ72lJOVLVS6RIcoB7IllLBpyQcLJnUm1SmGOKUjceSVmrP/6k5ZSzva43GEhZ1TNJ
Q3HUoEFhFtyaRQ3KZTiYjMRF02wNmk29Zapezsmi7T2lURxuxYr7m5AFlHHd0khGJj4Vfnr5
IGXIB+bKtj8twCRtTN2YQO4gQMgtUl4NPFQ3ceHSz2k7pK7Ni42auGmY2kNgFbNzpIZlz2uc
6pGXXqxOQBMPq2pVFsk2j3Poi6zZC2xKGwa9L6bB5BEUOt2ZriYUhLS6GvaCGTcMpAIBPZA/
n9ixXOXVFwyeftoxoFxqCrAWFknelnIh0k0GuVaN6BRfJmY1ov7UaW+8cTtJHUInv2TonVts
d4Y7XcIXT5ueXeSTfwoUBnZHOcN6prIoI3QsV6qdXF44IrqD2tsqsQaEsmHiSoYHtD9GwaI/
+yI6Gnxu3vq69HrhdNMOsr6bKYAQaDEbwhKZOiWPE70myF1bIjzuB5zsy1WUWt/WyvWMYBD0
sIoc5anDhx48XQ17E24IyuUNAOCBXaMEHrGuEcyG26q/tt+Xl939IiDOpwE3IsJ8jAFmWbHy
56QfJNub9I5JUyxbKTuTajWgvFdplThaizTHLpMkn4fQzDl7n95lZOqqW1YUE7Ovh564MC9L
g5a3YdAGyCvTBqdqvJEt+i0BUe7ZpvRYtSHjnrAL8Kqn8CKuSzNOqSJs52kRo4dU4vmUYOYE
Zr2lA2V++7E/PO7evj/9U/3zv4dH+d83f36s088u1qx6LQ4Nu7i4Jq6xxGO3tE+IYoUlJabw
CSijsuUWVJXjh2SxbhL3TW0rJegrk5swKFtpxiaQEF4sFXkbS1Awqev8FEnOcAvMxDCHtai1
mDs6kx2q1lZ2qsaEEMD4pEYOnTyycpCvyLP1OrVTl9SOJcVL3jppiusGKmZZmbf/5E1CKzfh
B5ktQS1LK0/+3lx8vN0/iF1Le52UujZucxn/dDsPic52AtAxXUuBeJ3nt5TUlOs6SrTfRBZb
gURu50loef5F6dCu6MDVJ4Pdz9Dp4sqGmQ4+b/Nlza16eFi2obn+FGYtrg5XOPKsWxkOJPYs
TniXsGZ09rg7DpR026/Kp6QiPVCsQRAnQ/uwscbyMFptyj6DyujFZpFUWRd1ktwlCmcKpcpS
oShj3GyJxOtkmXp2aAQeL3i3N6RW8spbL1Sdh8dtkQgXJtuijLlCI0seCiOMugoygNV6bqeq
kDMRR5Gr4UMkCWieqEDMBrGM6KXbhN1QXmdtCpW7OR1HNs53sX4s13gtdTmZ9bk6U2gTDOmu
P9KxSjyvdGEW3DNmjivDCoRnZYjOJi039En49aIN0GRpThfQgaDcUhKnt+I8GfxfJOZeoknF
mcqPTPPcFjMU5vury8ctThIuUfiygYlt4CnOKaYOh0pF+wTCKEOYiNDuPFxUtDagz9IRCN1G
XSVG66BL/qt1GMemHXJyq95G8y2oVS11uiy9tBtP0iKMc4sawVg0u43l+0zeCds/7y6kPmec
y7gO8ThMm8BIQecijfndSCqbFDpyZHSMZIMu2alRo2nbuYyJUnFr9Is0SzDy7iU5WIPu9PDW
/a2NG2N+mxRRfVu1XiHXoIv/tOXWXBZNUbbpwnQyZhNSSRBO90jGoQTYPK/WJbuGFK7bctEM
t0QnFbQtrTNUIYDEmRTwMVl4S5I40UDax2mNHRd+zAQ5ljC7CUF9WJRZVt6czWqLWu+GzTBP
2jAqq1stGKP7h6cdkYWLJoKZj7/xrrjl5sD77vPxePETuqLTE4X3FMtWRtKlfWGcwrg/4vHq
JvAK/VPmZZG27NV2wQMjMIvrxNjKukzqwqx+S4Vv88p55MaKBDZh2xrDCtTERbyN6oSGOBY/
p16i7TC3xozJJG0iMWwwukiSc32pSNqbsr40uQy9VWdnPNOVKEHhDwcKiL8kXJdlizhXngXG
PmtEZIV1XBkRHk4MMX2CAlhFQhJWtK9csVUwhSxr4UIJJEVpZIESx36E92mt2A5N5MdvQdOD
FpC+lo3Osi5q01iVz9uluUQHhCYRtO1lPR85zLqO0gLYYFJAEYiLWOY8lVQra8Ao0qkrsjUU
pWzTRGUcUrHlyCyk+M+kdegWSmx5kuiYZhUv9IrM7IhZo6Ni/P3b/v04nY5mfwTfTBhKm4ix
PTTPxRJk4kfMuxsEmdLbXBbGr9ZZTNyJAItl4s/Dc23SYuJOp1ksfd8X0ltAFsYPaIvp6y80
XRRYyMyb+4y9LE1ZzjTPjD36SVmGM1+5JkOKpE2JvW479bwQ9M3b0DYU2KUMmyjl9k3MrJyX
NOD7Lo07DaoBTgqa+Mj3oq8hND7hK8tp2+7TuPVnwuCp/sAp4mWZTreeiGga5oLOIAj2Oa4q
hQXNDMlRAgZgZGcmETAH1jVnsnUsdRm2KZvsbZ1mmbmwo5FlmGR8hss6SXivxJojhdKC3nye
p1iz8bhIPbBlBiPkMm1WFFi3C2MoxFlOHrrYQF0x1kUa8YsDabm9Iee9iGUinePsHj7f8KD7
8RWv7xhaIsaRN9W0W1R2r9YJGkGogp4wDH+QgsJTtMhWg1FhvDh3klImRhJrevcl8LyNV2DU
JHWIJojv4ixMemCCbOM8acTZmrZOIz6aluY9C7Kz5Cq8TuBPHScFlBQNFlTMQc0HtUX5LusS
ctg46wh0LzR95Aqh+TZGbRDb9ngOP06kjsOkoINXnb7f9LOSNfnfvz3fHx7RZch3/PN4/Ofh
++/7l3t4un983R++v9//3EGC+8fv+8PH7he2+/cfrz+/ya5wuXs77J4vnu7fHnfiFsipS6hw
Iy/Ht98X+8Mer6Pv/31PvZdEoJ6FjbDAwNatYVSkGGirBQPf6Pks111Smz6NkYSH1C63RVmQ
qjIgaAidumd5g7BiFn4+PJaDDdvVscf81cy4lOjl7QKXsNWlYX9td06n7KHZ1SEOn7KzEd9+
v34cLx6Ob7uL49vF0+75VTmuIexgl7BrBQoNsyWJCkfIfZeehDFLdFmbyyitVqbWbgHuK9BD
VizRZa3NFY4TjWXsFF2n4N6ShL7CX1aVy31pLhLqFPCMissKM0K4ZNJVdPcFe8mE8ndWDO6h
nWlmzZ5sWoyEisxOTstF0J/m68wBinXGE93Sih+mh6zbFYh/5juwKP5iS0fkusdXnz+e9w9/
/GP3++JBdP5fb/evT7+ZPl833MKRAmO3jyVRxNDiFVPgJKrjc6k3OVMr6/o66Y9GwUx/Svj5
8YQXOR/uP3aPF8lBfA9eo/3n/uPpInx/Pz7sBRTff9wbslalF+Vu6zG0aAUTdtjvVWV2S90x
dCN3mTbQ6u4YTa7Sa6ZKViGIwmv9FXPhpurl+Lh7d8s4d6s0WsxdWusOhojpnQm9aKWoWc2t
uSmwXHCvVFAy/zsbJmtQT+xwV7r+YlDv2jW3WaKLjWFEdH2t7t+fuuqy04py1uGbloJ56Nbn
RlayndK1lZK+dLx7/3CbqY4GfaalkOzmt2El9DwLL5O+27SS7tYnJN4GvdiMiaA7MZu+t/tq
QNwKcUVqPGRobip5Ct1aHOl066HOY+IcSQ+PVRhwxP5ozJFHATM9rsKBS8wZWgtKx7x0p7ub
SqYr+9L+9Ylcse9GuFsxQNu27pw/z8qbRcq2rwScNTrdnmGegAUWMgAaDb6XmtZtC6S6VWgd
GNKKjfj1Dxkt/ZhXYU6twGw5J8WHzGvtTYn14Iyt6PjyijeyqV6sy77I5DK0I7vueM1UwdMh
tyjRvev2baCt3B5817RdEKgazITjy0Xx+fJj96bdC+6pY1TdR4om3UZVzUax0p9Wz3GtvVi7
DYaIEll2yhILGy4Cr8nCTQwIOMQ/U7QGEjwfVt06KOpPKvCxXRINfVGajs2r0XYcnFZqgtC/
r7l5pONBVfpcp+gYk0KofeUcz6K0/O5NJ0DC1j0dpsyH5/2Pt3swV96Onx/7AzOPoxMxTogI
eh0x3RC9jknJr6+fnONhMTl0z74uWXioU7fOp2BqZS4cez66m3RqEcazbwvXOlrJRQST+XxK
50p5NoUvFTxk8sxLqxtGzl6jPXyTFgXTyxFt1sUU5AInzkzYG6OJ42XnfMJRceOKcLTnORq3
KU3QXVvjmGxheJbZFikcszrY/FeSHfHHQc12E+4IlKF1vuYVK9O/T2jLz7knBuhVfyWXlFEu
Tyhnd5Es+r1h6CnGFRvciTBgcNXC165pvmyT6KuZCBjV0S1ffXVxyplmCxfJJkpc4xnBKAK9
jkXEdZ8m8VRNnpXLNMLbbr72OXH8pXEY9te+pPTJ6DJqhNYIatFX/dB8ZRWtWfawuc3zBFdv
xdIv7rq68xN6v/wpDOT3i5/Ht4v3/a+D9PTx8LR7+Mf+8MtUW+TOO04q0WWWNt2KNH9g4i+k
rTzq+GbHLC0w3kUdFkuzX+D1aXL4Zp6C+n6d1OZhVn0pEwPSrdvU3JaNyjom94rqNE+2xTqf
k1DDcpncvI3dXfSM0m2KJ+ZdyCI3LXRqeXjb7GgRdExQqAgpGNP+EW2l/cZ2LMioXW9pAtSW
hEd67psiGZRofsu5vCQMQ+bVsL4JvcoQcszZDRvAxkSRoWpNZOzFwYTqmsyRsYBi28h4Tbs1
ZnjjyH4Rl7lRFUzB7nD+TgttQZjU/6vsWnrjtoHwXwlyaoE22KRBmosPXD28ykrimpK8ti+C
6ywMI7Vj2OsiP7/zDSmJpEZuetvljPgczosz5GRXDD27+sh5ceGFVWwUyOUc7hqXw1wQ0LlY
wr+46m283TguW9JffJZOOB2Qcxx20meF+iQdqTqoMpXwDZW2G9oi4ro7nGZHitlyxevkSzym
3pGnK5wGP5hU0fbyT4gcqM0u2iaDRiiV9Vv/nibV4Hlu2tekOSpjlGfJ4OCkCCP1bRHievpg
U6M8rTy1uMaTXVQCtPidcKeq8hf93uC6LnfXhDdsfsAtKZUBcJOFebhjDU3WdjtG1r4nZoJf
1gmDc21mTEfGSvyrZIKu0irshM4AVOt6AOCNvF0IheE0U/UCQN/Iutgwg2tSrsiuNVuBlJrT
0hKB1+iZz6JLvQ7/+VxwWK8yDGUbqavVVRFyqfKqb5V/77M5g7XgtVjtiuBm6LSogv/0J0+9
xpGbg0j3pjUB+RFJDv04Txs9791p1iJCV+epT7cNcjnKws/bRhZxcGGHXn9Rp/Kc43i3PhXZ
o3d1XSSg456xmdpsyrT4Y95tBzSLwPI1YFLtUv+IzId1IzA8Yh30Fi59fLp7OH6zV83dH55v
52fxic016UmhK0mLKMeTrD8XMc66ImtPPo4kQAwLETOzGkYM0sXWmkRqnxlTq8qadm56F3s4
ur3u/j78fry7d4rTM6Pe2PKn+XhyQw30e2Xqk/erDx/DtSYVu0EqlxhlaTKVsseDcHz62WS4
8gixtcTcSvHhUbuvswQqEwI6K9X6DDmGcPd6XZdBcrathfgSGZt5V9tPVFng8t8PsuTxP9ln
asvv1RJXk1XSn51Lnnl23d3dDHSVHv56ub3FYXLx8Hx8esFV8d6sVwrmAGnIwUVKU+F4om2d
SierH+8lLHsRkFyDuySoQaBITbz97dtw+sMgx6GM2eW+j9ZtjoZDTsaskDiwuMZjhS58wOdf
VuCeph73m/8bhpGMKV5TiArAS4esDETDdou10WERg7eplC87yrVu3SjcmlAXbXGVYRx+DQyV
Gk7w1TbR5/3a6G1W+5v3p4gknEEEZYdPn9pyhEHPLDQX6DDW65tjHKVHmg5eEhPv1rH1Am0Q
mVGTI2hwdToilePQ0Zze1/K9dgDudNHoOsp7sC2RCCIWIK2rYx2lL2WZmtxskUpW0sb2lcSf
KUd8OnVI036BB/H9p9VqtYA5xprk+WJtHFPTJH6cmes4R8F04P/+qJtkQzqhBWY1afubLJGD
4Ww159LxpqMLfl2ew2PEGeJGkOeQ0+6Yz3wAluwyGzS0VaDyuZPUQhF8Dz2h1tPuSVNnpcRR
OROxzvqyia6Os6emwH+jvz8+//YGDyK9PFq2vLl+uPUzKxQuYCGJoAP1NyhGIlBHqx0CWW3q
2pOVtz46bxEjD4XaPVa7sDoA9hvcc9CqRl7C/RnJM5JqqZZdIa8P0IYKkjj6+gIZ5G/1gJgG
pTooJLtVR2V8FOEvi1R3SGKYoG2WubuCrVcGUQcTO/vl+fHuAZEINIT7l+Phx4F+HI437969
+9Vz2CBtiqs8Za1yzIrwk1nOx/QogRq5Bowg3mcwwjqy63xHkCMq6jY+i8sn9IgK93sLI6aj
9zsVJw2Hze4bOSPFgrm7kT3CqRfZbt6uAyxWZs0P6lXmZ9xN32JK+YjMKetN2CZucELiXWRT
T6Od2UFNkscfTUr//1j/sKu0xfNS+WGqzIJapK143YICiODBrm7IfCZStr6a+bRtrexYYBvf
rOD9en28fgOJewMPYxD64SawiK2bUBL+B3zJZGUg59cVpCGLOCz+6j5VrYLrEY8bzDIAA0ax
MKRwlhNDk1a3pEk1w5Y1SSdxD5kscAsVv+8qlC9/YbI8/GrytOE7LLFkVxAsO2tiDsZd4PDi
OKdpurA7GFI4A8R1rd5vIj8GXHZ1ctnqXSQvR5uCO2qWoNSZ3UbGSS/JeqM9mkfUbCvgwr7i
zFuaKviZIxSk+YHoGZPUpdrfxIyRuA9tLZ5Li75Y4Kn50rw3Cnc9+huRC4YdNdDN/R3JI4lw
eDjDdp7nuGXKlJfwntftVi7tPwfpJUgVHQz4V9CSKoXnv1+T9jYr9ayeAQ/KjSnSbM46rqiK
hdh1JzSWYiNtJqitJkxljGbLdz20h+cjmCVke/L9n8PT9a33+sm2CzQ4/us1EBSHO8+WZRd2
9SQY01QoEgamBJeDRiz4F2uDB9K4ktHEKdM5k+Zy5XLepr1fQUCfumrVb7+HI6AonWUwUTuV
WXOD5a7Y1ahCMXVgEXmwc1+zJGENzpRkUo1hJNpt42dOOuzJVgWas7jg8FYGdpMsPRgXjhfT
VXC4yv4Xi2XOqIeZshbP6gcerPJUXkP8BAddoBNwEgQVCVWRuRHrAq+Rt6cFQ6KTEdug8lQn
3F95UFb4rwtLD40oCyN33r9lT5dCrYECAA==

--oyUTqETQ0mS9luUI--
