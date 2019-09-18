Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB46UQ3WAKGQESTMELUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DDDB5A2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 05:54:29 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id x25sf6642861qtq.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 20:54:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568778868; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9mR2UwSgqrWOZ4PMWsKXZ2Q0F47nTFRPP6FeYxdmeWZvXpO7ioygdq6U759/55BGm
         DJKoXYJwko2tlK9PfpkqI0LeDlr1LtkOpTX++l7NC9XfjC0KcMC6wdWsXg8n6yqMCLBS
         9BWnhbDoXzAi4riodnF9MtX6s+TK8VQavh4OB0pybZIUNcfMgjCmXeHr+iDcb6XWVCHs
         5NobHGhD41b9njAzFpbWUP251K/74emqeZWBpm3A+afwiWCHat6zO8IRg2cAlW7XWeQc
         0flSoCTA/8xGdk1g7qE7qsPAreZbrhLnVhvuv8Hjca1NAjTo0xOtYCgka/BGmshQx+D0
         8KSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NMwZUmdrhOMz57Hbo0gviWbsPYQSaeRgqta41F+UA+c=;
        b=FOYamQ5akY+0eWWP6gp4QQjKSVqgepinlI6V87eCv9lcRk2eJzk0rqGsjltiBNyyrD
         +8h8AMDAzm+bEqemBg+WlLMfGbgpyPdkNMpKuX11/D1MQpknSwJUKDeXrkByC4vRsLfy
         aoYDwyiKz7ATLc+26yuquTzIczILX1tY5/cZweynlJROwKJA8VlK6rLBRy/zdL2hZXmM
         p3X3TuDvOfW96CpmZTaM1wt5VfwBgT7M7nTRQwdptt6poqwMyLExedZ4QqN0RLik2O99
         pl2cWrjlzr/idmYJ5sDY1GDzL+KuadASnQ6Dl5lLjx2L0EGmKr9Ml1SxOjxgZwgx+e7w
         VWNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMwZUmdrhOMz57Hbo0gviWbsPYQSaeRgqta41F+UA+c=;
        b=jrKUZRQE/Y27GSlNBHT7UZMIrtoxpAK4fp/PjwK4IpzWsGx0MyRLKeoqc0lovyLX7Q
         2ucd6ClAPjdetXZ+mWv0JdgZA6+um7ps0OVRqEz7StkoujJ4RHECpLssKNJdiFfKGPxI
         GVoz7Pg1WWrdKZpVPyjDKZzUBLDwxzkkQReCQikJ7QsESUUJJeVhh4Sv04Y3Lq0RyLnn
         QTL6MgCaIyeX94j4rIm81FkC63mrxzQa7TeLCfeZydEKMNVvqRIFkVBX+aFCKnXyea8h
         RJhj1CmlyljTZMBepVDl4HnvgKhvqs41N6cUTTdCdI2UukKqPkGGgV8Zg166n7hpxu3J
         k6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NMwZUmdrhOMz57Hbo0gviWbsPYQSaeRgqta41F+UA+c=;
        b=p3smhMqKuS/PsrDTVsc9mO4HLDe6ZG4VJyszyMHlPBfpGuaJUNm6wo6jaSZVWlwxBS
         ySVsUC9CLSE4DhvKtbctb0+61Jz/zq0XZGwWj24JTzUQvrcKernAvkjgHcbsxDLHokEn
         1kkJga7xVFhRy0lfW9CRXUcLYVChnzBTf0DxmTqJyGgNtQm18mM199RUcJrT/8xEQFeQ
         XuB4eKXaN80U3uAnwox7QYZmLMp+HoXjcVJh4ni6SqiXWjbppHDCB9hZJuX8u7Lzs7uP
         SA65HQ5u7SNipl7/dMl0gICggpWhBANRt8Tf00bD2XORpBWNUXLtf4ljbfgrVr9hfhci
         JitQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjLPUq+3/0kMkFN+Yz+QTPlcX1DVYt/VGYLNeDMuxbdyzIxO/d
	9EJO/5V1RELyvL36O59gXyk=
X-Google-Smtp-Source: APXvYqzrNDeCfni2Yp0cslknsS6kQGZW6G0S4uoI7ipgGFeavmYyVy+KyAfr3EB2mLk53IRdN+hqcQ==
X-Received: by 2002:a37:a00d:: with SMTP id j13mr2063495qke.2.1568778867815;
        Tue, 17 Sep 2019 20:54:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5fd:: with SMTP id z29ls2345429qkg.4.gmail; Tue, 17
 Sep 2019 20:54:27 -0700 (PDT)
X-Received: by 2002:a37:642:: with SMTP id 63mr1951488qkg.29.1568778867496;
        Tue, 17 Sep 2019 20:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568778867; cv=none;
        d=google.com; s=arc-20160816;
        b=qgVEyY/3lbMIeBBiWhW0lyVbQFBR3xbTAhnFEfj3DAqFYV621WBqzMkUjs96oo/7mo
         wg+0YtlJLJooChVXPPgHYRcyzYn7DziWLDKK67Szcjzu81KxXy3kT9azzfHmRp1HWNbd
         WOtelal3vg5DbMDmK3Rp/Ojy6FEQgn+La4IVeowvtQDXY4XCr07bIe+o4rPybCGw8YHt
         +tRqs3so0QzyvkhNdSndSiCJ96velVWIsI8mZdjlO0ezaN7hNboVNySHDnHIRjhRH1pQ
         Xai/ujrPs1P+PsqDR0A6QylqI++2ro3Jf4bg3saFGKoaX7ENehME9GtFNr9R6MRowsKp
         jZkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=tkcJkJXnSC9BW5ihELwNEqhbGwNaDJ4+FlmuBncJXDM=;
        b=V54ugmDQSKhYiv+HJzFgKNfjGHvUBikckezkWZaXjF3VhUYpCyFoKZ8ko1mQW4+MiZ
         FhCXScX1vqx6Mq06W1eJFx2hTp+gycd6F4X0KtCJ3dzr/qBKGyWJmQaR8NVH3IL51zNE
         o5M2kzr3aMZzD/TOTWMIhYfB/rSICAUtg32QR7/onQI/R0mSZQKGWiNqiUV7n0J7Ro5J
         jo+2zWd6NaoucbjSNLZ1+FNuowK+sLf1riPDqSVuj6AiYsH7XnteiHIAyRbvd3mR61Qc
         YzaNi/r2B+P8KvVmkWtuLKKi3Mc/Q+RDqNbbBaDlmUbYaStpFGGN1xZZjUUzJJYf0pI2
         lvLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id t186si518929qkf.3.2019.09.17.20.54.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 20:54:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Sep 2019 20:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,519,1559545200"; 
   d="gz'50?scan'50,208,50";a="187649444"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 17 Sep 2019 20:54:24 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAR2t-0005OE-Ob; Wed, 18 Sep 2019 11:54:23 +0800
Date: Wed, 18 Sep 2019 11:53:42 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ethernet/intel:  release the local packet buffer
Message-ID: <201909181105.Sp19mv8f%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d4sade3fc5lp4crl"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--d4sade3fc5lp4crl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@01.org
In-Reply-To: <20190918000013.32083-1-navid.emamdoost@gmail.com>
References: <20190918000013.32083-1-navid.emamdoost@gmail.com>
TO: Navid Emamdoost <navid.emamdoost@gmail.com>
CC: emamd001@umn.edu, smccaman@umn.edu, kjlu@umn.edu, Navid Emamdoost <navi=
d.emamdoost@gmail.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "David =
S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org, netdev@=
vger.kernel.org, linux-kernel@vger.kernel.org
CC: emamd001@umn.edu, smccaman@umn.edu, kjlu@umn.edu, Navid Emamdoost <navi=
d.emamdoost@gmail.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "David =
S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org, netdev@=
vger.kernel.org, linux-kernel@vger.kernel.org

Hi Navid,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.3 next-20190917]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp improve the system]

url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/ethernet-i=
ntel-release-the-local-packet-buffer/20190918-080148
config: x86_64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f=
77a08968c99a8172cbf2ccdd0f)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/e100.c:2364:6: warning: variable 'skb' is use=
d uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if ((err =3D e100_hw_init(nic)))
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/e100.c:2397:16: note: uninitialized use occur=
s here
           dev_kfree_skb(skb);
                         ^~~
   include/linux/skbuff.h:1149:38: note: expanded from macro 'dev_kfree_skb=
'
   #define dev_kfree_skb(a)        consume_skb(a)
                                               ^
   drivers/net/ethernet/intel/e100.c:2364:2: note: remove the 'if' if its c=
ondition is always false
           if ((err =3D e100_hw_init(nic)))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/e100.c:2356:6: warning: variable 'skb' is use=
d uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if ((err =3D e100_alloc_cbs(nic)))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/e100.c:2397:16: note: uninitialized use occur=
s here
           dev_kfree_skb(skb);
                         ^~~
   include/linux/skbuff.h:1149:38: note: expanded from macro 'dev_kfree_skb=
'
   #define dev_kfree_skb(a)        consume_skb(a)
                                               ^
   drivers/net/ethernet/intel/e100.c:2356:2: note: remove the 'if' if its c=
ondition is always false
           if ((err =3D e100_alloc_cbs(nic)))
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/e100.c:2347:21: note: initialize the variable=
 'skb' to silence this warning
           struct sk_buff *skb;
                              ^
                               =3D NULL
   2 warnings generated.

vim +2364 drivers/net/ethernet/intel/e100.c

^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2343 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2344  static int e100_loopback_test(struct nic *nic, enum loopback loopb=
ack_mode)
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2345  {
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2346  	int err;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2347  	struct sk_buff *skb;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2348 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2349  	/* Use driver resources to perform internal MAC or PHY
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2350  	 * loopback test.  A single packet is prepared and transmitted
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2351  	 * in loopback mode, and the test passes if the received
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2352  	 * packet compares byte-for-byte to the transmitted packet. */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2353 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2354  	if ((err =3D e100_rx_alloc_list(nic)))
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2355  		return err;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2356  	if ((err =3D e100_alloc_cbs(nic)))
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2357  		goto err_clean_rx;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2358 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2359  	/* ICH PHY loopback is broken so do MAC loopback instead */
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2360  	if (nic->flags & ich && loopback_mode =3D=3D lb_phy)
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2361  		loopback_mode =3D lb_mac;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2362 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2363  	nic->loopback =3D loopback_mode;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6 @2364  	if ((err =3D e100_hw_init(nic)))
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2365  		goto err_loopback_none;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2366 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2367  	if (loopback_mode =3D=3D lb_phy)
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2368  		mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR,
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2369  			BMCR_LOOPBACK);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2370 =20
ca93ca428b8e09 drivers/net/e100.c                Jeff Garzik      2007-06-1=
2  2371  	e100_start_receiver(nic, NULL);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2372 =20
4187592b6d2230 drivers/net/e100.c                Auke Kok         2006-08-3=
1  2373  	if (!(skb =3D netdev_alloc_skb(nic->netdev, ETH_DATA_LEN))) {
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2374  		err =3D -ENOMEM;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2375  		goto err_loopback_none;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2376  	}
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2377  	skb_put(skb, ETH_DATA_LEN);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2378  	memset(skb->data, 0xFF, ETH_DATA_LEN);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2379  	e100_xmit_frame(skb, nic->netdev);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2380 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2381  	msleep(10);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2382 =20
aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03-1=
5  2383  	pci_dma_sync_single_for_cpu(nic->pdev, nic->rx_to_clean->dma_addr=
,
773c9c1f771744 drivers/net/e100.c                Jesse Brandeburg 2008-11-1=
4  2384  			RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);
aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03-1=
5  2385 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2386  	if (memcmp(nic->rx_to_clean->skb->data + sizeof(struct rfd),
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2387  	   skb->data, ETH_DATA_LEN))
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2388  		err =3D -EAGAIN;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2389 =20
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2390  err_loopback_none:
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2391  	mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR, 0);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2392  	nic->loopback =3D lb_none;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2393  	e100_clean_cbs(nic);
aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03-1=
5  2394  	e100_hw_reset(nic);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2395  err_clean_rx:
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2396  	e100_rx_clean_list(nic);
89cd8b48e07522 drivers/net/ethernet/intel/e100.c Navid Emamdoost  2019-09-1=
7  2397  	dev_kfree_skb(skb);
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2398  	return err;
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2399  }
^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04-1=
6  2400 =20

:::::: The code at line 2364 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201909181105.Sp19mv8f%25lkp%40intel.com.

--d4sade3fc5lp4crl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
0ZX7stbUumO5eBkjSZGJ5ms8cf4PvWlrLiTfAQA=

--d4sade3fc5lp4crl--
