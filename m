Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI7542BAMGQEIW3VF6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F129345BB3
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:10:45 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id r10sf1413579iod.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 03:10:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616494244; cv=pass;
        d=google.com; s=arc-20160816;
        b=cKciBaOHCk/h1xxSZEqXZjNjlK2yWVQG3IBlPAZNwZAYZyU37adUir3GSL7K87/KiM
         7K+6oI0r6M6OsoIOx4xRiokudkAO0wV5wopssUwUEMMB9R4N5rLDmXSyk/pSo2hkorI/
         SOjd+GqOtF3YNZpLFlSgedIRp5adhHLtG72+i3alkqQMbKnqMq+DT9vY5Y/01l6DSqqL
         LCjuf4KNZ0hnIg7W2CymC9GP0MuSvMjFFW8MqF6oGVL80QsI7Vrzc84mTgQFCS/r2yzt
         M1X+HIX1maaPJp9Z3nTWxB4iB0pB3WyQSm2GXcIlEexc4kf3eSMpnWy2Ln7SS+9qTX/7
         xumA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UD2fOLFHPv128AsnJBHsPQ1H0se8FORp1C3cSJOxZ5Q=;
        b=V8pUBsBwYTAEu20Z0Fjfnpg2u1XOUnaAs2sZCtGSix2qEmjHpSRKru5fREGqHDnXr+
         fJ1HO2thbCifKr74g6as31X4yC9YW5VH0/+rV6EoC+csgRue94hv6LHTysP8bHqVGvJD
         wN+q3wCHbjy0fbSi6dB7fJ1us9QAw1eRfy3refRdi/n8Z5hKKDipEz0oXwcCzzDDA6tL
         JNTszWgDvVJTY8fx1R/cLWW27Wvy8dXBUnGVpLg08YZyZJWqt7Dt6ywij7r1Td2Xn7KN
         C0oiT8Mqf8OLiUYsUVN325UbwpUZx5Hpk3bi83sRGENcbXayUqnT52a61xCwK7cuQC2F
         k1Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UD2fOLFHPv128AsnJBHsPQ1H0se8FORp1C3cSJOxZ5Q=;
        b=er3lL0v9jR/6wDRUK8Sl3zwcLLt3fRQgqjfBz9Gj1AGlsb4bWmOOuINr494QmFeD1H
         TWyfS17IwSepcZ/8W4i89y/nlq/032feBJVCM90Gr3i0l3843Vu5LMlsb/hh7L7fPiPN
         jBS7uahk9wU5dlh8OOfgEt4EWUlV7WBGxb/2cMrg0T7ewoZ7M09taw4hIjykqJdkuRrD
         u70hOfq5AvfgxoJff85VzQDNMfmwf7hLCr1RmHU6QXjuAwab/4Rg4J+UfRnUJzWfwjbM
         joHdHbF+C/18Sf+slv4hfH9ULQQX8wWKVO2ACkRbn+sRhyMgANk+eAqfOGxs1P4wtjD7
         B0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UD2fOLFHPv128AsnJBHsPQ1H0se8FORp1C3cSJOxZ5Q=;
        b=rt8uiiYu2HHbsWk7L4OlwVxFFhiBuvcgYypZIH1BBGvK0sLuyATCKXk5WgR17VTvHg
         G6wYE1yLJxuIDRbTW5uipA2UeddDgsou8jcF01cX+kgjLs8b0nE2rWEDFMaEy0jTGau3
         yumyKGwwni/JlzqeT+4FzmS7EyppVRbh9+o0078/u2VjbJH7w1jC3jLKcqhNyoKoxq1L
         ItF6jTxIuqZNSHLHY6q9wb/GzrQ36OQxAgU4ZwCkWz+Gv1+HiMmst0YXr/40PMl3H2EM
         esiPofBybpkVy3flK2eiLoWRYFnmJ4NoKj974DkSLZBUgguJrMKRsV0LtiqYGrWiOjiJ
         iStA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tAtT8UXj2RFs4pKsn0GubdKjkjSQEcYwHq//mwq8nWNBvb1Qp
	TXgz8c56YHQXqLOfjCkjz1M=
X-Google-Smtp-Source: ABdhPJyFS0HIN0OS4MDUNAoHTjrb5lZQ7F3YqE/OrJBl80jqBk+9q6SkVLCcb7lJdNiXqAAolgCvlQ==
X-Received: by 2002:a02:ccb2:: with SMTP id t18mr3658378jap.123.1616494243764;
        Tue, 23 Mar 2021 03:10:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:88:: with SMTP id h8ls2107237iob.3.gmail; Tue, 23
 Mar 2021 03:10:43 -0700 (PDT)
X-Received: by 2002:a5e:a90b:: with SMTP id c11mr3642403iod.71.1616494243273;
        Tue, 23 Mar 2021 03:10:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616494243; cv=none;
        d=google.com; s=arc-20160816;
        b=hypvycIl+9u0aVTpuG8GTW7K0Hh+sAvKN0CWWFvEwGtWLXo2tV5cnT37K7YnnqxSNm
         LQkdN5TFtcC9mF6Sb2A47BoSoKf3u2Gw197trsFNo2vExwJR2H2OtytiTJzzG7Bapy6f
         yLdD9w9RrsmCdbBkjaP9vT6wVXKdkX3QzVFLHHRgWu+oWnJyU5xUmthzGevewlPOmvGu
         B0pWUuTIb/aHMMl5IYXW2H32H4j40GcnAiHRaFt2POw2Uj5rkLURjeZREcMtzfNhIeB+
         xO1m0ALQjeXsyNPRU5eAiHEKh51stXd5hi+0xWQHlXrjFsj0Rf+hD8bBqL3lYZVIqu/y
         OgCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TaLKrFtMR2mT2c9imRbtNJgEyjIPGoZtbhcAb6PtgR0=;
        b=KJoHuCFaPvWNjq27IWwN/JEOqh4oDFZJ1PCuN/2MZjwr5B2LC0LbDbB4EVe7LHR1y9
         g+XQIg+bIEzOg6Vx74U8vCuXR8J2RgyU+OBZEjcgC5MqNSdANHbfUu9ygKDNliKj4uwa
         AbJOTY9RxfhOJQdEBokfzMthUue2ZnQodWGAY/t+mS9CZiuJvCOhL7uSE5s0oN/yloWp
         Zb+oAdwNQ1hruYv0+0b1WhY3Kv7C9ah+U88n0sgEejA8ruU+FOgtqFx8oFpoVCV27uzI
         40wGRsaMpfKb3UyX03Xgj8miTurAhXePwb9Opxe2+cBBbh/h+21R0e5RwNjFCRN0FG8D
         mwhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id y8si998196iom.1.2021.03.23.03.10.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 03:10:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: VcKVw3zW65jRxL92WY1Aa1Fop0jP6ZkCSB0xfl0JYd0EhP8UROvaSQjAsUwWLpnwpQIxwp4b1W
 hble5GBNPyuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="189847116"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="189847116"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 03:10:41 -0700
IronPort-SDR: vxlBK1EYBavg1tLHs12y5f8fM7+XOqvvF82acmfhbqlQp7LX9bP1eZnqdaxchL3v1Fnu7/km2M
 nMv/iBbG7cPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="513687809"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 23 Mar 2021 03:10:39 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lOdzi-0000We-Js; Tue, 23 Mar 2021 10:10:38 +0000
Date: Tue, 23 Mar 2021 18:10:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Voon Weifeng <weifeng.voon@intel.com>,
	Ong Boon Leong <boon.leong.ong@intel.com>
Subject: drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:1948:12: warning:
 stack frame size of 1048 bytes in function 'stmmac_tx_clean'
Message-ID: <202103231816.XMhD6pts-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   84196390620ac0e5070ae36af84c137c6216a7dc
commit: aa042f60e4961d4bec57e3268624df1f3a6befa4 net: stmmac: Add support to Ethtool get/set ring parameters
date:   6 months ago
config: mips-randconfig-r023-20210322 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aa042f60e4961d4bec57e3268624df1f3a6befa4
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout aa042f60e4961d4bec57e3268624df1f3a6befa4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:3677:12: warning: stack frame size of 1664 bytes in function 'stmmac_rx' [-Wframe-larger-than=]
   static int stmmac_rx(struct stmmac_priv *priv, int limit, u32 queue)
              ^
>> drivers/net/ethernet/stmicro/stmmac/stmmac_main.c:1948:12: warning: stack frame size of 1048 bytes in function 'stmmac_tx_clean' [-Wframe-larger-than=]
   static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
              ^
   2 warnings generated.


vim +/stmmac_tx_clean +1948 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c

47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1941  
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1942  /**
732fdf0e5253e9 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2014-11-18  1943   * stmmac_tx_clean - to manage the transmission completion
32ceabcad3c8ab drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-04-08  1944   * @priv: driver private structure
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1945   * @queue: TX queue index
732fdf0e5253e9 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2014-11-18  1946   * Description: it reclaims the transmit resources after transmission completes.
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1947   */
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17 @1948  static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1949  {
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1950  	struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];
3897957494d979 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Beniamino Galvani  2015-01-21  1951  	unsigned int bytes_compl = 0, pkts_compl = 0;
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  1952  	unsigned int entry, count = 0;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1953  
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  1954  	__netif_tx_lock_bh(netdev_get_tx_queue(priv->dev, queue));
a9097a9666fd7b drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2011-10-18  1955  
9125cdd1be1199 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-11-25  1956  	priv->xstats.tx_clean++;
9125cdd1be1199 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-11-25  1957  
8d5f4b07174976 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Bernd Edlinger     2017-10-21  1958  	entry = tx_q->dirty_tx;
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  1959  	while ((entry != tx_q->cur_tx) && (count < budget)) {
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1960  		struct sk_buff *skb = tx_q->tx_skbuff[entry];
c24602ef866493 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-03-26  1961  		struct dma_desc *p;
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1962  		int status;
c24602ef866493 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-03-26  1963  
c24602ef866493 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-03-26  1964  		if (priv->extend_desc)
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1965  			p = (struct dma_desc *)(tx_q->dma_etx + entry);
579a25a854d482 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2020-01-13  1966  		else if (tx_q->tbs & STMMAC_TBS_AVAIL)
579a25a854d482 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2020-01-13  1967  			p = &tx_q->dma_entx[entry].basic;
c24602ef866493 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-03-26  1968  		else
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1969  			p = tx_q->dma_tx + entry;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1970  
42de047d60bc5d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-04-16  1971  		status = stmmac_tx_status(priv, &priv->dev->stats,
42de047d60bc5d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-04-16  1972  				&priv->xstats, p, priv->ioaddr);
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1973  		/* Check if the descriptor is owned by the DMA */
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1974  		if (unlikely(status & tx_dma_own))
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1975  			break;
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1976  
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  1977  		count++;
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  1978  
a6b25da5e7ba21 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Niklas Cassel      2018-02-26  1979  		/* Make sure descriptor fields are read after reading
a6b25da5e7ba21 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Niklas Cassel      2018-02-26  1980  		 * the own bit.
a6b25da5e7ba21 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Niklas Cassel      2018-02-26  1981  		 */
a6b25da5e7ba21 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Niklas Cassel      2018-02-26  1982  		dma_rmb();
a6b25da5e7ba21 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Niklas Cassel      2018-02-26  1983  
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1984  		/* Just consider the last segment and ...*/
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1985  		if (likely(!(status & tx_not_ls))) {
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1986  			/* ... verify the status error condition */
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1987  			if (unlikely(status & tx_err)) {
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1988  				priv->dev->stats.tx_errors++;
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1989  			} else {
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1990  				priv->dev->stats.tx_packets++;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1991  				priv->xstats.tx_pkt_n++;
c363b6586cd424 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Fabrice Gasnier    2016-02-29  1992  			}
ba1ffd74df74a9 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2016-11-14  1993  			stmmac_get_tx_hwtstamp(priv, p, skb);
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1994  		}
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  1995  
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1996  		if (likely(tx_q->tx_skbuff_dma[entry].buf)) {
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1997  			if (tx_q->tx_skbuff_dma[entry].map_as_page)
362b37be01edc7 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2014-08-27  1998  				dma_unmap_page(priv->device,
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  1999  					       tx_q->tx_skbuff_dma[entry].buf,
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2000  					       tx_q->tx_skbuff_dma[entry].len,
362b37be01edc7 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2014-08-27  2001  					       DMA_TO_DEVICE);
362b37be01edc7 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2014-08-27  2002  			else
cf32deec16e4e8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Rayagond Kokatanur 2013-03-26  2003  				dma_unmap_single(priv->device,
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2004  						 tx_q->tx_skbuff_dma[entry].buf,
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2005  						 tx_q->tx_skbuff_dma[entry].len,
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2006  						 DMA_TO_DEVICE);
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2007  			tx_q->tx_skbuff_dma[entry].buf = 0;
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2008  			tx_q->tx_skbuff_dma[entry].len = 0;
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2009  			tx_q->tx_skbuff_dma[entry].map_as_page = false;
cf32deec16e4e8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Rayagond Kokatanur 2013-03-26  2010  		}
f748be531d7012 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Alexandre TORGUE   2016-04-01  2011  
2c520b1c9cfa7d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-04-16  2012  		stmmac_clean_desc3(priv, tx_q, p);
f748be531d7012 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Alexandre TORGUE   2016-04-01  2013  
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2014  		tx_q->tx_skbuff_dma[entry].last_segment = false;
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2015  		tx_q->tx_skbuff_dma[entry].is_jumbo = false;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2016  
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2017  		if (likely(skb != NULL)) {
3897957494d979 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Beniamino Galvani  2015-01-21  2018  			pkts_compl++;
3897957494d979 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Beniamino Galvani  2015-01-21  2019  			bytes_compl += skb->len;
7c565c33464798 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Eric W. Biederman  2014-03-15  2020  			dev_consume_skb_any(skb);
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2021  			tx_q->tx_skbuff[entry] = NULL;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2022  		}
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2023  
42de047d60bc5d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-04-16  2024  		stmmac_release_tx_desc(priv, p, priv->mode);
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2025  
aa042f60e4961d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Song, Yoong Siang  2020-09-16  2026  		entry = STMMAC_GET_ENTRY(entry, priv->dma_tx_size);
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2027  	}
ce736788e8a92c drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2028  	tx_q->dirty_tx = entry;
3897957494d979 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Beniamino Galvani  2015-01-21  2029  
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2030  	netdev_tx_completed_queue(netdev_get_tx_queue(priv->dev, queue),
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2031  				  pkts_compl, bytes_compl);
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2032  
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2033  	if (unlikely(netif_tx_queue_stopped(netdev_get_tx_queue(priv->dev,
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2034  								queue))) &&
aa042f60e4961d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Song, Yoong Siang  2020-09-16  2035  	    stmmac_tx_avail(priv, queue) > STMMAC_TX_THRESH(priv)) {
3897957494d979 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Beniamino Galvani  2015-01-21  2036  
b3e51069627e2b drivers/net/ethernet/stmicro/stmmac/stmmac_main.c LABBE Corentin     2016-11-16  2037  		netif_dbg(priv, tx_done, priv->dev,
b3e51069627e2b drivers/net/ethernet/stmicro/stmmac/stmmac_main.c LABBE Corentin     2016-11-16  2038  			  "%s: restart transmit\n", __func__);
c22a3f48ef99ea drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Joao Pinto         2017-04-06  2039  		netif_tx_wake_queue(netdev_get_tx_queue(priv->dev, queue));
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2040  	}
d765955d2ae0b8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-06-27  2041  
d765955d2ae0b8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-06-27  2042  	if ((priv->eee_enabled) && (!priv->tx_path_in_lpi_mode)) {
d765955d2ae0b8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-06-27  2043  		stmmac_enable_eee_mode(priv);
f5351ef73e476d drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2013-06-18  2044  		mod_timer(&priv->eee_ctrl_timer, STMMAC_LPI_T(eee_timer));
d765955d2ae0b8 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Giuseppe CAVALLARO 2012-06-27  2045  	}
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  2046  
4ccb45857c2c07 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2019-02-19  2047  	/* We still have pending packets, let's call for a new scheduling */
4ccb45857c2c07 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2019-02-19  2048  	if (tx_q->dirty_tx != tx_q->cur_tx)
3755b21b04b096 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2019-12-18  2049  		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(priv->tx_coal_timer));
4ccb45857c2c07 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2019-02-19  2050  
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  2051  	__netif_tx_unlock_bh(netdev_get_tx_queue(priv->dev, queue));
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  2052  
8fce3331702316 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c Jose Abreu         2018-09-17  2053  	return count;
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2054  }
47dd7a540b8a0c drivers/net/stmmac/stmmac_main.c                  Giuseppe Cavallaro 2009-10-14  2055  

:::::: The code at line 1948 was first introduced by commit
:::::: 8fce3331702316d4bcfeb0771c09ac75d2192bbc net: stmmac: Rework coalesce timer and fix multi-queue races

:::::: TO: Jose Abreu <Jose.Abreu@synopsys.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103231816.XMhD6pts-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jvt1i6/Pr1KjRvT/cHu+x5+hCekr40MwI77AdgsfZ9czXS7Y7lYHXy3LmbEj+DPJS757hoLd
ODc337PNPp8buZw/o6yRNuZG28xKwmfQ1SpyW4z0HERe5B62Yl8imBsysNY6Qq0B+1A1HQvd
Mw9hSdUG7lvNhyw3ruVK8Xr+/v35x4Lyofb69eHzZfFbVkZeEPj/Ut/ZInvz47LmzZkzNb6f
7NpREOm3z89PbxAOm4+Hy9Pzy+LH5f9mbOKuKO77XYbm47pmKBLZvz68/PX4+Q15D7AnPWnU
pz2SIB4J7+tOPBC+lqIprFYlnKbu/Y83GRSyPCV4ffh+Wfz58+tX3sipfViwi9F6oZ+J7+KH
z38/PX77653PqnmSju/7kYcZnCsfAcMLdYrGS45JcpfT/aHVgOqu5RUhXe6hknAF1ScsDtWV
f3U/hHws3Eic8gx7XXtFmW7orhySguccz8lae3i+oxPaW3UbPNrMlk44rVJDfxmsLcqpN1F0
djS78EE1myfmCvTKdXlgv+ZwjAJvndf453HKTXBcxVeat0nOSYk5cLliBjd3jlqal7eHcXBL
2kecNdSn+9ZVV6qhKIx/+pZqLu2AVCeFTkgLkpV7WmY263BKs1onNeRU0JTqxD94TdWaA61i
DGIBII02lAIrnOWqQOHB5JWQJmUfwkDPavSeUuWp6SxDw9VNlfQ79N465x7B1S/jrdDQsr0z
yjW42DBJ40dm5ZM2748kp6kVCkHNUMaINb9l4I6iTFA3MKId6m7JDbaOqL5SRIvXedjnNNap
JNmue3FD3sxo5hq/6CFqfkBSf7NBA48Bs6X0bAiLpPXcsswMyeJWwEaLWznQAoQWmrRTYJYs
bl37PKI3iOc7QtQKdkHx+AqiUc/3+6y0m1XSdVrClsHGt2grLdjZROvL7NSn+pQhuVEURu6X
AFK+zju3nKekyYnD3Ab+XoQncrJzcm9+biW+NEst0kRDj00pWt8UVYk9SBQsSvQ2y5JDFRpD
kJYp3VdmqpI603gSkOJmiJoCGhlHScDo1qxkfqivwlcyGp2Ic3fFRnf8MBHleXl07uMKD3gK
E7SUH2kdPv/4r3cwvr5d3kH9fPjyhatYj0/vvz/+WHx9fP0Oz3+ldQafDcqkEoR3SK+wGjTJ
/LWzb/lkmeWbs2d2jaQaw/6uavZ+oLpnFuJR5UZv5+fVcrXMmCUx9Ewaxytuzi6LIMI8Ksr5
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

--5mCyUwZo2JvN/JJP--
