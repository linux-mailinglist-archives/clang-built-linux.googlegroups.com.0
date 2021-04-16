Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV6F42BQMGQEHWSLYVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id C600A3622B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:44:40 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id i8-20020a170902c948b02900eb1ba0a72dsf7648465pla.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 07:44:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618584279; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4VixDLdzUc76xO1O3B8h9pfnE107RuSN96upAfuq78lkVfxaAPbxjKs0FHnSGem1Q
         Oq/Gfv0mWuAcPdia/YY+xRnwbldJ5tlbSc5ezI+V3bmqvaoAa16ReX3S+1bOplFSL4x1
         pSpQPXIoPfby+Fs0/InXQG+DetI0skzgtuBDO8FKlCa5YaaF4S4Ammd0klK2ba4Ah8Kd
         4Iq3hAagcWTKFDkbGP9vE5fnwcS9jIp32NesaH+/JcTrMIBKFQK6J3eVMQK+ZEp0feCA
         2+ttr6Oyp4wm/p/AHDtiASnlWFmlHiztDLQe2B1mxlEYAFweEcq2WV48249Beu3318/+
         kpyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=5I9dttO9CVQmGwEcIeuzu2yV28JXMcXVqrJns7qeiJA=;
        b=fDoAqWJG9Ji3Y/Htw3f52R6m4mUfBA2NES/9YsWuyX1hCmWGYhDAmjya/Vk+YTBQin
         oDx3nama8KttO3OEwyUc/WRHiMGMPw1XSN7b/82iqz81J+rmgqTOne//n0Z63nUrvZrB
         +55T23twlxpSNMjTkHb5PfzAFI/pBbMan+ByxynmmopaaJVWCfRDA4heeGj+e8U7leyj
         zhkZNyg2JmMosBaDd95R5bbfJfaTZWHYFeuNvPQkJTFqF22M6HixRNABw2BLH4iT35sE
         fdmdaGNgtkqnAbONzAVfeiV2+IKyQdhSMKePP/Y5DqPgG29EVk27hP+FFWCTrKC+kl9u
         tfRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5I9dttO9CVQmGwEcIeuzu2yV28JXMcXVqrJns7qeiJA=;
        b=BJZCzdulr6UW+QmsSyDehyHWrii3dkLV7lG9FICRU/AJcCPJDpbXXt5jDg6bzAAYEe
         QREHxr50zecOkWzfY30L0zO7FDO5X67cVpcev6ss0ti+iTnFvmgeTJSQ9VWn7ooVGV7s
         e3BWWwOQ57LVQtmXyChyG8dl8OiS2cdUDrSB0s74eRBKaQW9+z7PpIvtZr/pE3iepSzp
         EJmRcXSY9+jryY9AG4C+6S0ynpVBrBMWJ7N4CkIRkkL50iUl3gbQX1XQ1vIiIIHXy+o7
         Z+Uky+pD2wUCrOuYvguNZoA9nqdeq5mDsWq49/Y/BkB48ldsehJ28CzZt/ZC1mojJF9C
         w2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5I9dttO9CVQmGwEcIeuzu2yV28JXMcXVqrJns7qeiJA=;
        b=S6H9J/UYPWiNbU2XbB3ZQNrN0JYW3rJycLVj09Mf0sZvDLaVp56grWafHdwZBOgQEk
         1lWnOAk2m+S7WGUn6O8wcVUNnn6f+Fm7pVqioxCNXUylwTt24VEl3r9QyLjss7aMzcbK
         Y44l7a3vSmmhdwmkjG+pOCDWwIRMctrk1z9U2kk0EzpNxOPLqBwnbe2v1A36/+phCaNR
         26z8Px3FDr23HzjsTKNIWstXBzop8+6Pe+1HSEkDFlTvVJotebN7PTID381pi55er1mu
         SzKNjYYsLCDGeFqhoLfZgP8PtFgVk7gyMTNBtQDIsIvrqAz3Yl1QIvsL7/3hzFk5nlja
         gAaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d4YrcHmohdFe3/3Qu6QC9giOxz2JfZokni6teS8uZ/0P5TVnD
	tThBoSQNJpV+KptIcshNtLo=
X-Google-Smtp-Source: ABdhPJz0BUn2TE6wxikQfAfbsfcMrSZg0Y5/+mqXo0FlEWphdoPRk2IpUZey8QQwdndKIbBve+eCHw==
X-Received: by 2002:a63:3d48:: with SMTP id k69mr8268165pga.239.1618584279416;
        Fri, 16 Apr 2021 07:44:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c5:: with SMTP id e5ls5203048plh.6.gmail; Fri, 16
 Apr 2021 07:44:38 -0700 (PDT)
X-Received: by 2002:a17:90a:d184:: with SMTP id fu4mr9879111pjb.79.1618584278676;
        Fri, 16 Apr 2021 07:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618584278; cv=none;
        d=google.com; s=arc-20160816;
        b=chF1jNPBO8AnJDhUZI/YH8Ex9LYp/I+uNYPlWz03ToX6lEFIrF1S/y2X8C7GKC71HT
         94aj1N4ruD/NIqV6GfEIEn9bzDtvxI7oKbHn1jpmSqJwL2eS7j0HVfuxuT0f2Dqmev0V
         /HsouVS6LVyUtMwB/Uz8Cr786Jt+YGnjiABW0RmaiAEiEDlDAY08Kdv+ZCSilpXNVcy4
         AV6BzWqjTmq0ALwktJ75y/WMtXiZGJjHZTEitdFIzHtt0DEPBpzmexYs44p8lF7T8YNu
         aJ5AscJs/xeGkg5jbn16MZDH9TvJBSldT+PsB8MoJsFgYBDgUJ1pvyYHbqVNsBlbisgz
         ksWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=5w51ZpOrdclwTKYdJo6TTdomZIX7XYJnwJ+ZK67NA70=;
        b=pFYx9srYoO2+cNAvoNiMLlT6PS0c4yYO4aOkOFDxPeEe0997fdRNb9UrC83IrKR1We
         efNy3/nGLWAwmMg7qANsXymwUnkfiBXtAIdvXKASdOaWAEO0yh/iRgHs272GoWiR+yfr
         3L2AlrasKR0Mp9QszQgW+eK4ooyORHVAc93BhGNCsfvV2kojYxA/GGDFEIn1x9+Maa3c
         T5fj9nwFASpTiKN89i/45xJzv7BqHKoptbQmhib3nDMa7Ol/Q5PxEFgQ0iprTv9kL7J8
         yA66rc14RNQNIUQPtSSsDCeeyBlcBGl5taRAWB44paOT5OU+wSmqPQs8qbKfh/Ehg8B7
         ol9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id i18si1252713pju.2.2021.04.16.07.44.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 07:44:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: WQ8xryBjiUcqPKJhB0KKov+eZry4nif78kG/EhKiwuQDzerUYIHwVZZyIFyQMMAbvYkiNq25sE
 +QqrILZfvN/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="175155632"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="gz'50?scan'50,208,50";a="175155632"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 07:44:37 -0700
IronPort-SDR: LvhomBshP213HQ5EYuNj4vAESgpq28gqRKvJ5kRAGl2HOtcEbqmyx6PuZtSzJjOO6xrxeN58rN
 4yY6KOqsGeyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="gz'50?scan'50,208,50";a="383073719"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 16 Apr 2021 07:44:34 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXPhy-0000K1-31; Fri, 16 Apr 2021 14:44:34 +0000
Date: Fri, 16 Apr 2021 22:44:25 +0800
From: kernel test robot <lkp@intel.com>
To: Adam Ford <aford173@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [linux-next:master 11519/13394]
 drivers/net/ethernet/renesas/ravb_main.c:2086:6: warning: variable 'priv' is
 used uninitialized whenever 'if' condition is true
Message-ID: <202104162213.AWX3Fd5p-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
 master
head:   18250b538735142307082e4e99e3ae5c12d44013
commit: 8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2 [11519/13394] net: etherne=
t: ravb: Enable optional refclk
config: riscv-randconfig-r031-20210416 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6a18cc=
23efad410db48a3ccfc233d215de7d4cb9)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it/commit/?id=3D8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kern=
el/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 8ef7adc6beb2ef0bce83513dc9e4505e7b21e8c2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 ARCH=3Driscv=20

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
clang-built-linux/202104162213.AWX3Fd5p-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--45Z9DzgjV8m4Oswq--
