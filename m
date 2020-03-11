Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKW2UTZQKGQEW3QWB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B99751820B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 19:25:47 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id p5sf4505601ywg.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 11:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583951146; cv=pass;
        d=google.com; s=arc-20160816;
        b=qXpopGtQ8tM7wpeOS/y9JVBVMfMN1WAOCxtSGNdEIVU82PUc549lsivSM7e3p6GbS2
         A35YKcD51yle3Oyya+RPP0PI5sqHtoWqmThWwnhWtXdhoZprp5KkkqkoEp4XaA9M15Pi
         goWAtQAi+u6rR46PvjEPKoQESz318J0rlh6xWb6BvO1dPEbUgKiRmwgPYWXFi+qkjL6V
         WNLY2WsKCKrpkwOkNQWW8Qb+VjGWZI4Mf22fn14MhnlB+149T+0KM2yzkazGqWpWBj9e
         rdMBy6unnEvA6KGqGkkVcOMxf509+aUpcsFV/D/04qUsaX/kBJC148hZ4aU/zPttKudQ
         xIGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ZkMLG6g2+qarpcCeX/snJJ+1cLHHz+XKndvjpEh1uL8=;
        b=i/dlUVjwVvQkJkCTMXUukVrEnqm9FTeVsnNH/4oDyo2OQk7xbyeDf2V0usmPwCW0II
         vt3ZDKqdQfzySlX0gzkLHD9tQrWMLO46zW3uuFRwQaGGITo/S/WsJxzyvUuhcJRObnk8
         UjHHtqLw+ZNE7unA2H8sv0inopUHBzYB9AmpJfPw8DCFlisQ+21Wb/5FCWH0eSDI1E2t
         XLUkF6pvlsQz6Hdq6gfg42305fIpy240nLW3BjvMCHZaDVV3WhW4722wcwPOJ9SGN+hC
         GKJKrNBw6ULFUzG7KRTt7xJK+NHbm/KJX2GjX/V+6hrpIIxWAejbz0c/aoYQ7JxpiS6x
         sj7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZkMLG6g2+qarpcCeX/snJJ+1cLHHz+XKndvjpEh1uL8=;
        b=Lct65ADRBe71M83t7zOCGTGdx60OYE6lbKrPfPLzAuaeTadLhKPa45B/oK7VNzufQo
         iE1RT4SotsxkBU6P/7lIjsLu6Yh/GdZEbB0h9KZM4/2toGQ9Yuj9To17uiBkczZoAFQn
         i4aNIzZNf/Nmi3BtYanfD0sNg3EQuNBX0g6/Lyfr2Cl1M/kLkGLbRAZVKiLIQgcl1OAd
         MI4SneaoQVlR1RiAl4PNiUBsTr41iWFdX/pCa0KqXAdJGjMOWb7PVy1tv4hMsMJrAN+B
         FUG4QLV8TULb9Pbz0CDtUtaWWzDOLymCYQq9DmAIIFXDbjEs1SJ3IjbcTH6YoRAJXLtx
         ivVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZkMLG6g2+qarpcCeX/snJJ+1cLHHz+XKndvjpEh1uL8=;
        b=jPKMEHzMIw2jj5NAgWW0lpNfkfpI45D7zNWTsAxUYPcQcMLz7TOqJn9YEyQqO5bWVO
         q9a46d5oDvOrWWjo9kmV03f589YzRoE3k6IAT29j/J6koJQC42uhEcmzhe0vMgZCcIOC
         QdSNmYxlJV88aYRN6SmI+ZGFr9C0mNic9DVmeE2KNKvg7Q7mQzrNSzzD/8QbpiF1LhFY
         6F57qqRxEU4zESFaHLWiP+g82vHJNslPLzJqdgr8cpC4uDBfo1YI0qEJb8dHa3C0X9/s
         +g+bdhK1h0w3Ewew0WSg8B6l4aDx6ekl2+RpdfJ4HMIYUM8L82Uz2SHFFzIQ6kJr0J7i
         SYxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ayJdNIdEds1QnVMqDMeNAArFSUjKHNc9ku9vNwH+9oewV0zDd
	Vp8t0gjkuqpXHC4Ag5wRQqc=
X-Google-Smtp-Source: ADFU+vvUWV/YipHiMMitJpSkhJRZzr1CnLsxPQz8QCUYjkT+RWCf6kTqH89b8Ep2ejq9+c6dPs6vBw==
X-Received: by 2002:a81:30a:: with SMTP id 10mr4390021ywd.162.1583951146619;
        Wed, 11 Mar 2020 11:25:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f983:: with SMTP id j125ls431488ywf.7.gmail; Wed, 11 Mar
 2020 11:25:46 -0700 (PDT)
X-Received: by 2002:a81:4e14:: with SMTP id c20mr4913364ywb.29.1583951146072;
        Wed, 11 Mar 2020 11:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583951146; cv=none;
        d=google.com; s=arc-20160816;
        b=aJkxBLGZjvfDX0gqlz5poVJZUoARcQtre02/jDYI2YxqBDFT5jRu9t9ry78hJWqUnv
         W96px9RngtFEAfYyCgIXPRUgpWdKyi7IuT+C07BKT8fsev4jefx9aCvpRCDzJ8vS/wwh
         tc6QupoT0G0VN9i0DpPqqJHGk09moviPzE7S0ny3Fa+pMrOGO86DYFFRmtBq6S0hOO3i
         0MN/JBHjYJX/0W88pXqfJDzP5sX7ROSpIlA9azpM3d8jRgWy8qq8ai5RogVr4Ia+biLQ
         46MDCWphj6aGh2ROVMoU7QOZFMDVe8YnDzdGqvDTJqZuI11o05MSNQDcTjoPO9WxXXeI
         n2Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=rwxRuQeQGRrTuWOeDKtDshuIy4R0X0/+NgX7WqLEZoU=;
        b=OJqUlQE/jIn8NHiJi402BRKevGosrAwIG4LvC0tTt16xjhY+7PGq97JpozTwrqU2+A
         XOH0o/U3/yQeDZ+K5ceq2+63IUi52UnXWq0NjvF0GuLbOWTLMPE2C42GJuAx5C06i6tL
         hcbu0DZHj6DpprJLvLSJxn4C+wSXNaFlBKRgHgF7sHFQ8KJKuYF1tMp7w+Kdxt1q5ulA
         QwSwiOUJJQRoweRQabpqiccFjdVqbMu8dnTKVdXJ7RBgim9pIcenHRF13/Zof70A2wGJ
         CJalerOs2FBKR9xYIzfKc80a+fw4cUu9B81zVFVjKD7bU1dR1/0ZFC4xOQXJBLtZo0Xx
         W9tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e124si135103ywb.4.2020.03.11.11.25.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 11:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; 
   d="gz'50?scan'50,208,50";a="236539539"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 11 Mar 2020 11:25:41 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jC632-0009zx-Mu; Thu, 12 Mar 2020 02:25:40 +0800
Date: Thu, 12 Mar 2020 02:24:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:remove-dma-mask-indirection 2/2]
 drivers/net/ethernet/broadcom/tg3.c:17979:13: error: no member named
 'dma_mask' in 'struct pci_dev'
Message-ID: <202003120220.F5y6rXEa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   git://git.infradead.org/users/hch/block.git remove-dma-mask-indirec=
tion
head:   7f0f0d04b7c2d957bee8220cf37362ed7b956a3b
commit: 7f0f0d04b7c2d957bee8220cf37362ed7b956a3b [2/2] device.h: make dma_m=
ask a scalar instead of a pointer
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac=
1947c891525cf30521be0a79b7)
reproduce:
        # FIXME the reproduce steps for clang is not ready yet

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/broadcom/tg3.c:17979:13: error: no member named 'dm=
a_mask' in 'struct pci_dev'
                       pdev->dma_mask =3D=3D DMA_BIT_MASK(32) ? 32 :
                       ~~~~  ^
   drivers/net/ethernet/broadcom/tg3.c:17980:19: error: no member named 'dm=
a_mask' in 'struct pci_dev'
                       ((u64)pdev->dma_mask) =3D=3D DMA_BIT_MASK(40) ? 40 :=
 64);
                             ~~~~  ^
   drivers/net/ethernet/broadcom/tg3.c:17765:33: warning: shift count >=3D =
width of type [-Wshift-count-overflow]
                   persist_dma_mask =3D dma_mask =3D DMA_BIT_MASK(64);
                                                 ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_M=
ASK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 2 errors generated.

vim +17979 drivers/net/ethernet/broadcom/tg3.c

15f9850d3c2d46 drivers/net/tg3.c                   David S. Miller         =
2005-05-18  17616 =20
229b1ad1cb1a71 drivers/net/ethernet/broadcom/tg3.c Bill Pemberton          =
2012-12-03  17617  static int tg3_init_one(struct pci_dev *pdev,
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17618  				  const struct pci_device_id *ent)
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17619  {
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17620  	struct net_device *dev;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17621  	struct tg3 *tp;
5865fc1b6a99bc drivers/net/ethernet/broadcom/tg3.c Yijing Wang             =
2013-06-02  17622  	int i, err;
646c9eddcffd20 drivers/net/tg3.c                   Matt Carlson            =
2009-09-01  17623  	u32 sndmbx, rcvmbx, intmbx;
f9804ddbeec2ea drivers/net/tg3.c                   Michael Chan            =
2005-09-27  17624  	char str[40];
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17625  	u64 dma_mask, persist_dma_mask;
c8f44affb7244f drivers/net/ethernet/broadcom/tg3.c Micha=C5=82 Miros=C5=82a=
w         2011-11-15  17626  	netdev_features_t features =3D 0;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17627 =20
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17628  	printk_once(KERN_INFO "%s\n", version);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17629 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17630  	err =3D pci_enable_device(pdev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17631  	if (err) {
2445e461ce8c5a drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17632  		dev_err(&pdev->dev, "Cannot enable PCI device, abortin=
g\n");
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17633  		return err;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17634  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17635 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17636  	err =3D pci_request_regions(pdev, DRV_MODULE_NAME);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17637  	if (err) {
2445e461ce8c5a drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17638  		dev_err(&pdev->dev, "Cannot obtain PCI resources, abor=
ting\n");
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17639  		goto err_out_disable_pdev;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17640  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17641 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17642  	pci_set_master(pdev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17643 =20
fe5f5787f0866e drivers/net/tg3.c                   Matt Carlson            =
2009-09-01  17644  	dev =3D alloc_etherdev_mq(sizeof(*tp), TG3_IRQ_MAX_VECS=
);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17645  	if (!dev) {
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17646  		err =3D -ENOMEM;
5865fc1b6a99bc drivers/net/ethernet/broadcom/tg3.c Yijing Wang             =
2013-06-02  17647  		goto err_out_free_res;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17648  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17649 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17650  	SET_NETDEV_DEV(dev, &pdev->dev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17651 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17652  	tp =3D netdev_priv(dev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17653  	tp->pdev =3D pdev;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17654  	tp->dev =3D dev;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17655  	tp->rx_mode =3D TG3_DEF_RX_MODE;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17656  	tp->tx_mode =3D TG3_DEF_TX_MODE;
9c13cb8bb477a8 drivers/net/ethernet/broadcom/tg3.c Nithin Nayak Sujir      =
2013-01-14  17657  	tp->irq_sync =3D 1;
0486a063b1ffce drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2014-09-01  17658  	tp->pcierr_recovery =3D false;
8ef214288622bf drivers/net/tg3.c                   Matt Carlson            =
2008-05-02  17659 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17660  	if (tg3_debug > 0)
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17661  		tp->msg_enable =3D tg3_debug;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17662  	else
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17663  		tp->msg_enable =3D TG3_DEF_MSG_ENABLE;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17664 =20
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17665  	if (pdev_is_ssb_gige_core(pdev)) {
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17666  		tg3_flag_set(tp, IS_SSB_CORE);
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17667  		if (ssb_gige_must_flush_posted_writes(pdev))
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17668  			tg3_flag_set(tp, FLUSH_POSTED_WRITES);
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17669  		if (ssb_gige_one_dma_at_once(pdev))
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17670  			tg3_flag_set(tp, ONE_DMA_AT_ONCE);
ee002b64ec81db drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-09-28  17671  		if (ssb_gige_have_roboswitch(pdev)) {
ee002b64ec81db drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-09-28  17672  			tg3_flag_set(tp, USE_PHYLIB);
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17673  			tg3_flag_set(tp, ROBOSWITCH);
ee002b64ec81db drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-09-28  17674  		}
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17675  		if (ssb_gige_is_rgmii(pdev))
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17676  			tg3_flag_set(tp, RGMII_MODE);
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17677  	}
7e6c63f03d9427 drivers/net/ethernet/broadcom/tg3.c Hauke Mehrtens          =
2013-02-07  17678 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17679  	/* The word/byte swap controls here control register ac=
cess byte
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17680  	 * swapping.  DMA data byte swapping is controlled in t=
he GRC_MODE
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17681  	 * setting below.
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17682  	 */
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17683  	tp->misc_host_ctrl =3D
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17684  		MISC_HOST_CTRL_MASK_PCI_INT |
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17685  		MISC_HOST_CTRL_WORD_SWAP |
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17686  		MISC_HOST_CTRL_INDIR_ACCESS |
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17687  		MISC_HOST_CTRL_PCISTATE_RW;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17688 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17689  	/* The NONFRM (non-frame) byte/word swap controls take =
effect
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17690  	 * on descriptor entries, anything which isn't packet d=
ata.
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17691  	 *
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17692  	 * The StrongARM chips on the board (one for tx, one fo=
r rx)
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17693  	 * are running in big-endian mode.
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17694  	 */
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17695  	tp->grc_mode =3D (GRC_MODE_WSWAP_DATA | GRC_MODE_BSWAP_=
DATA |
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17696  			GRC_MODE_WSWAP_NONFRM_DATA);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17697  #ifdef __BIG_ENDIAN
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17698  	tp->grc_mode |=3D GRC_MODE_BSWAP_NONFRM_DATA;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17699  #endif
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17700  	spin_lock_init(&tp->lock);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17701  	spin_lock_init(&tp->indirect_lock);
c4028958b6ecad drivers/net/tg3.c                   David Howells           =
2006-11-22  17702  	INIT_WORK(&tp->reset_task, tg3_reset_task);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17703 =20
d5fe488a7b59e4 drivers/net/tg3.c                   Matt Carlson            =
2008-11-21  17704  	tp->regs =3D pci_ioremap_bar(pdev, BAR_0);
ab0049b4a2f660 drivers/net/tg3.c                   Andy Gospodarek         =
2007-09-06  17705  	if (!tp->regs) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17706  		dev_err(&pdev->dev, "Cannot map device registers, abor=
ting\n");
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17707  		err =3D -ENOMEM;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17708  		goto err_out_free_dev;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17709  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17710 =20
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17711  	if (tp->pdev->device =3D=3D PCI_DEVICE_ID_TIGON3_5761 |=
|
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17712  	    tp->pdev->device =3D=3D PCI_DEVICE_ID_TIGON3_5761E =
||
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17713  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5761S =
||
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17714  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5761SE=
 ||
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17715  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5717 |=
|
79d4969535f1d5 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2012-11-05  17716  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5717_C=
 ||
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17717  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5718 |=
|
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17718  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5719 |=
|
c65a17f4f51231 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2013-01-06  17719  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5720 |=
|
68273712a19e91 drivers/net/ethernet/broadcom/tg3.c Nithin Sujir            =
2013-09-20  17720  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_57767 =
||
68273712a19e91 drivers/net/ethernet/broadcom/tg3.c Nithin Sujir            =
2013-09-20  17721  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_57764 =
||
c65a17f4f51231 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2013-01-06  17722  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5762 |=
|
c65a17f4f51231 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2013-01-06  17723  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5725 |=
|
68273712a19e91 drivers/net/ethernet/broadcom/tg3.c Nithin Sujir            =
2013-09-20  17724  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_5727 |=
|
68273712a19e91 drivers/net/ethernet/broadcom/tg3.c Nithin Sujir            =
2013-09-20  17725  	    tp->pdev->device =3D=3D TG3PCI_DEVICE_TIGON3_57787)=
 {
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17726  		tg3_flag_set(tp, ENABLE_APE);
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17727  		tp->aperegs =3D pci_ioremap_bar(pdev, BAR_2);
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17728  		if (!tp->aperegs) {
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17729  			dev_err(&pdev->dev,
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17730  				"Cannot map APE registers, aborting\n");
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17731  			err =3D -ENOMEM;
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17732  			goto err_out_iounmap;
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17733  		}
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17734  	}
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17735 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17736  	tp->rx_pending =3D TG3_DEF_RX_RING_PENDING;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17737  	tp->rx_jumbo_pending =3D TG3_DEF_RX_JUMBO_RING_PENDING;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17738 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17739  	dev->ethtool_ops =3D &tg3_ethtool_ops;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17740  	dev->watchdog_timeo =3D TG3_TX_TIMEOUT;
2ffcc981d823a0 drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17741  	dev->netdev_ops =3D &tg3_netdev_ops;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17742  	dev->irq =3D pdev->irq;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17743 =20
3d567e0e291c4f drivers/net/ethernet/broadcom/tg3.c Nithin Nayak Sujir      =
2012-11-14  17744  	err =3D tg3_get_invariants(tp, ent);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17745  	if (err) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17746  		dev_err(&pdev->dev,
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17747  			"Problem fetching invariants of chip, aborting\n");
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17748  		goto err_out_apeunmap;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17749  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17750 =20
4a29cc2e503b33 drivers/net/tg3.c                   Michael Chan            =
2006-03-19  17751  	/* The EPB bridge inside 5714, 5715, and 5780 and any
4a29cc2e503b33 drivers/net/tg3.c                   Michael Chan            =
2006-03-19  17752  	 * device behind the EPB cannot support DMA addresses >=
 40-bit.
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17753  	 * On 64-bit systems with IOMMU, use 40-bit dma_mask.
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17754  	 * On 64-bit systems without IOMMU, use 64-bit dma_mask=
 and
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17755  	 * do DMA address check in tg3_start_xmit().
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17756  	 */
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17757  	if (tg3_flag(tp, IS_5788))
284901a90a9e0b drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17758  		persist_dma_mask =3D dma_mask =3D DMA_BIT_MASK(32);
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17759  	else if (tg3_flag(tp, 40BIT_DMA_BUG)) {
50cf156af7dc68 drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17760  		persist_dma_mask =3D dma_mask =3D DMA_BIT_MASK(40);
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17761  #ifdef CONFIG_HIGHMEM
6a35528a8346f6 drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17762  		dma_mask =3D DMA_BIT_MASK(64);
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17763  #endif
4a29cc2e503b33 drivers/net/tg3.c                   Michael Chan            =
2006-03-19  17764  	} else
6a35528a8346f6 drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17765  		persist_dma_mask =3D dma_mask =3D DMA_BIT_MASK(64);
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17766 =20
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17767  	/* Configure DMA attributes. */
284901a90a9e0b drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17768  	if (dma_mask > DMA_BIT_MASK(32)) {
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17769  		err =3D pci_set_dma_mask(pdev, dma_mask);
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17770  		if (!err) {
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17771  			features |=3D NETIF_F_HIGHDMA;
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17772  			err =3D pci_set_consistent_dma_mask(pdev,
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17773  							  persist_dma_mask);
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17774  			if (err < 0) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17775  				dev_err(&pdev->dev, "Unable to obtain 64 bit "
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17776  					"DMA for consistent allocations\n");
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17777  				goto err_out_apeunmap;
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17778  			}
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17779  		}
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17780  	}
284901a90a9e0b drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17781  	if (err || dma_mask =3D=3D DMA_BIT_MASK(32)) {
284901a90a9e0b drivers/net/tg3.c                   Yang Hongyang           =
2009-04-06  17782  		err =3D pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17783  		if (err) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17784  			dev_err(&pdev->dev,
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17785  				"No usable DMA configuration, aborting\n");
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17786  			goto err_out_apeunmap;
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17787  		}
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17788  	}
72f2afb8a6858e drivers/net/tg3.c                   Michael Chan            =
2006-03-06  17789 =20
fdfec1726b14b4 drivers/net/tg3.c                   Michael Chan            =
2005-07-25  17790  	tg3_init_bufmgr_config(tp);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17791 =20
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17792  	/* 5700 B0 chips do not support checksumming correctly =
due
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17793  	 * to hardware bugs.
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17794  	 */
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17795  	if (tg3_chip_rev_id(tp) !=3D CHIPREV_ID_5700_B0) {
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17796  		features |=3D NETIF_F_SG | NETIF_F_IP_CSUM | NETIF_F_R=
XCSUM;
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17797 =20
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17798  		if (tg3_flag(tp, 5755_PLUS))
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17799  			features |=3D NETIF_F_IPV6_CSUM;
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17800  	}
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17801 =20
4e3a7aaa28db95 drivers/net/tg3.c                   Michael Chan            =
2006-03-20  17802  	/* TSO is on by default on chips that support hardware =
TSO.
4e3a7aaa28db95 drivers/net/tg3.c                   Michael Chan            =
2006-03-20  17803  	 * Firmware TSO on older chips gives lower performance,=
 so it
4e3a7aaa28db95 drivers/net/tg3.c                   Michael Chan            =
2006-03-20  17804  	 * is off by default, but can be enabled using ethtool.
4e3a7aaa28db95 drivers/net/tg3.c                   Michael Chan            =
2006-03-20  17805  	 */
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17806  	if ((tg3_flag(tp, HW_TSO_1) ||
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17807  	     tg3_flag(tp, HW_TSO_2) ||
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17808  	     tg3_flag(tp, HW_TSO_3)) &&
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17809  	    (features & NETIF_F_IP_CSUM))
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17810  		features |=3D NETIF_F_TSO;
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17811  	if (tg3_flag(tp, HW_TSO_2) || tg3_flag(tp, HW_TSO_3)) {
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17812  		if (features & NETIF_F_IPV6_CSUM)
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17813  			features |=3D NETIF_F_TSO6;
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17814  		if (tg3_flag(tp, HW_TSO_3) ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17815  		    tg3_asic_rev(tp) =3D=3D ASIC_REV_5761 ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17816  		    (tg3_asic_rev(tp) =3D=3D ASIC_REV_5784 &&
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17817  		     tg3_chip_rev(tp) !=3D CHIPREV_5784_AX) ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17818  		    tg3_asic_rev(tp) =3D=3D ASIC_REV_5785 ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17819  		    tg3_asic_rev(tp) =3D=3D ASIC_REV_57780)
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17820  			features |=3D NETIF_F_TSO_ECN;
b0026624f1aa3e drivers/net/tg3.c                   Michael Chan            =
2006-07-03  17821  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17822 =20
51dfe7b944998e drivers/net/ethernet/broadcom/tg3.c Vlad Yasevich           =
2014-03-24  17823  	dev->features |=3D features | NETIF_F_HW_VLAN_CTAG_TX |
51dfe7b944998e drivers/net/ethernet/broadcom/tg3.c Vlad Yasevich           =
2014-03-24  17824  			 NETIF_F_HW_VLAN_CTAG_RX;
d542fe27c86ecf drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17825  	dev->vlan_features |=3D features;
d542fe27c86ecf drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17826 =20
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17827  	/*
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17828  	 * Add loopback capability only for a subset of devices=
 that support
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17829  	 * MAC-LOOPBACK. Eventually this need to be enhanced to=
 allow INT-PHY
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17830  	 * loopback for the remaining devices.
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17831  	 */
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17832  	if (tg3_asic_rev(tp) !=3D ASIC_REV_5780 &&
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17833  	    !tg3_flag(tp, CPMU_PRESENT))
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17834  		/* Add the loopback capability */
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17835  		features |=3D NETIF_F_LOOPBACK;
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17836 =20
0da0606f493c5c drivers/net/tg3.c                   Matt Carlson            =
2011-05-19  17837  	dev->hw_features |=3D features;
e565eec31d9d5b drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2014-01-03  17838  	dev->priv_flags |=3D IFF_UNICAST_FLT;
06c03c02ea528a drivers/net/tg3.c                   Mahesh Bandewar         =
2011-05-08  17839 =20
e1c6dccaf3af29 drivers/net/ethernet/broadcom/tg3.c Jarod Wilson            =
2016-10-17  17840  	/* MTU range: 60 - 9000 or 1500, depending on hardware =
*/
e1c6dccaf3af29 drivers/net/ethernet/broadcom/tg3.c Jarod Wilson            =
2016-10-17  17841  	dev->min_mtu =3D TG3_MIN_MTU;
e1c6dccaf3af29 drivers/net/ethernet/broadcom/tg3.c Jarod Wilson            =
2016-10-17  17842  	dev->max_mtu =3D TG3_MAX_MTU(tp);
e1c6dccaf3af29 drivers/net/ethernet/broadcom/tg3.c Jarod Wilson            =
2016-10-17  17843 =20
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17844  	if (tg3_chip_rev_id(tp) =3D=3D CHIPREV_ID_5705_A1 &&
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17845  	    !tg3_flag(tp, TSO_CAPABLE) &&
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17846  	    !(tr32(TG3PCI_PCISTATE) & PCISTATE_BUS_SPEED_HIGH))=
 {
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17847  		tg3_flag_set(tp, MAX_RXPEND_64);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17848  		tp->rx_pending =3D 63;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17849  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17850 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17851  	err =3D tg3_get_device_address(tp);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17852  	if (err) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17853  		dev_err(&pdev->dev,
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17854  			"Could not obtain valid ethernet address, aborting\n"=
);
c9cab24e954867 drivers/net/tg3.c                   Matt Carlson            =
2011-07-13  17855  		goto err_out_apeunmap;
c88864df27590b drivers/net/tg3.c                   Matt Carlson            =
2007-11-12  17856  	}
c88864df27590b drivers/net/tg3.c                   Matt Carlson            =
2007-11-12  17857 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17858  	intmbx =3D MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17859  	rcvmbx =3D MAILBOX_RCVRET_CON_IDX_0 + TG3_64BIT_REG_LOW=
;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17860  	sndmbx =3D MAILBOX_SNDHOST_PROD_IDX_0 + TG3_64BIT_REG_L=
OW;
6fd45cb8147097 drivers/net/tg3.c                   Matt Carlson            =
2010-09-15  17861  	for (i =3D 0; i < tp->irq_max; i++) {
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17862  		struct tg3_napi *tnapi =3D &tp->napi[i];
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17863 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17864  		tnapi->tp =3D tp;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17865  		tnapi->tx_pending =3D TG3_DEF_TX_RING_PENDING;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17866 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17867  		tnapi->int_mbox =3D intmbx;
93a700a9d20b05 drivers/net/ethernet/broadcom/tg3.c Matt Carlson            =
2011-08-31  17868  		if (i <=3D 4)
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17869  			intmbx +=3D 0x8;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17870  		else
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17871  			intmbx +=3D 0x4;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17872 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17873  		tnapi->consmbox =3D rcvmbx;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17874  		tnapi->prodmbox =3D sndmbx;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17875 =20
66cfd1bd05a7a1 drivers/net/tg3.c                   Matt Carlson            =
2010-09-30  17876  		if (i)
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17877  			tnapi->coal_now =3D HOSTCC_MODE_COAL_VEC1_NOW << (i -=
 1);
66cfd1bd05a7a1 drivers/net/tg3.c                   Matt Carlson            =
2010-09-30  17878  		else
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17879  			tnapi->coal_now =3D HOSTCC_MODE_NOW;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17880 =20
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17881  		if (!tg3_flag(tp, SUPPORT_MSIX))
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17882  			break;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17883 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17884  		/*
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17885  		 * If we support MSIX, we'll be using RSS.  If we're u=
sing
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17886  		 * RSS, the first vector only handles link interrupts =
and the
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17887  		 * remaining vectors handle rx and tx interrupts.  Reu=
se the
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17888  		 * mailbox values for the next iteration.  The values =
we setup
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17889  		 * above are still useful for the single vectored mode=
.
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17890  		 */
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17891  		if (!i)
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17892  			continue;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17893 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17894  		rcvmbx +=3D 0x8;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17895 =20
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17896  		if (sndmbx & 0x4)
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17897  			sndmbx -=3D 0x4;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17898  		else
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17899  			sndmbx +=3D 0xc;
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17900  	}
78f90dcf184b82 drivers/net/tg3.c                   Matt Carlson            =
2009-11-13  17901 =20
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17902  	/*
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17903  	 * Reset chip in case UNDI or EFI driver did not shutdo=
wn
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17904  	 * DMA self test will enable WDMAC and we'll see (spuri=
ous)
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17905  	 * pending DMA on the PCI bus at that point.
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17906  	 */
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17907  	if ((tr32(HOSTCC_MODE) & HOSTCC_MODE_ENABLE) ||
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17908  	    (tr32(WDMAC_MODE) & WDMAC_MODE_ENABLE)) {
d0af71a3573f12 drivers/net/ethernet/broadcom/tg3.c Jun'ichi Nomura \(NEC\  =
2015-02-12  17909) 		tg3_full_lock(tp, 0);
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17910  		tw32(MEMARB_MODE, MEMARB_MODE_ENABLE);
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17911  		tg3_halt(tp, RESET_KIND_SHUTDOWN, 1);
d0af71a3573f12 drivers/net/ethernet/broadcom/tg3.c Jun'ichi Nomura \(NEC\  =
2015-02-12  17912) 		tg3_full_unlock(tp);
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17913  	}
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17914 =20
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17915  	err =3D tg3_test_dma(tp);
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17916  	if (err) {
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17917  		dev_err(&pdev->dev, "DMA engine test failed, aborting\=
n");
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17918  		goto err_out_apeunmap;
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17919  	}
05b0aa579397b7 drivers/net/ethernet/broadcom/tg3.c Prashant Sreedharan     =
2014-12-20  17920 =20
15f9850d3c2d46 drivers/net/tg3.c                   David S. Miller         =
2005-05-18  17921  	tg3_init_coal(tp);
15f9850d3c2d46 drivers/net/tg3.c                   David S. Miller         =
2005-05-18  17922 =20
c49a1561ee4b66 drivers/net/tg3.c                   Michael Chan            =
2006-12-17  17923  	pci_set_drvdata(pdev, dev);
c49a1561ee4b66 drivers/net/tg3.c                   Michael Chan            =
2006-12-17  17924 =20
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17925  	if (tg3_asic_rev(tp) =3D=3D ASIC_REV_5719 ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17926  	    tg3_asic_rev(tp) =3D=3D ASIC_REV_5720 ||
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17927  	    tg3_asic_rev(tp) =3D=3D ASIC_REV_5762)
fb4ce8ad8036e6 drivers/net/ethernet/broadcom/tg3.c Matt Carlson            =
2012-12-03  17928  		tg3_flag_set(tp, PTP_CAPABLE);
fb4ce8ad8036e6 drivers/net/ethernet/broadcom/tg3.c Matt Carlson            =
2012-12-03  17929 =20
21f7638e6f05c3 drivers/net/ethernet/broadcom/tg3.c Matt Carlson            =
2012-02-22  17930  	tg3_timer_init(tp);
21f7638e6f05c3 drivers/net/ethernet/broadcom/tg3.c Matt Carlson            =
2012-02-22  17931 =20
402e1398a39800 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2013-02-14  17932  	tg3_carrier_off(tp);
402e1398a39800 drivers/net/ethernet/broadcom/tg3.c Michael Chan            =
2013-02-14  17933 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17934  	err =3D register_netdev(dev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17935  	if (err) {
ab96b241fd82ec drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17936  		dev_err(&pdev->dev, "Cannot register net device, abort=
ing\n");
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17937  		goto err_out_apeunmap;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17938  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17939 =20
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17940  	if (tg3_flag(tp, PTP_CAPABLE)) {
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17941  		tg3_ptp_init(tp);
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17942  		tp->ptp_clock =3D ptp_clock_register(&tp->ptp_info,
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17943  						   &tp->pdev->dev);
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17944  		if (IS_ERR(tp->ptp_clock))
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17945  			tp->ptp_clock =3D NULL;
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17946  	}
20d14a5d377a62 drivers/net/ethernet/broadcom/tg3.c Ivan Vecera             =
2015-01-08  17947 =20
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17948  	netdev_info(dev, "Tigon3 [partno(%s) rev %04x] (%s) MAC=
 address %pM\n",
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17949  		    tp->board_part_number,
4153577a8d318a drivers/net/ethernet/broadcom/tg3.c Joe Perches             =
2013-02-16  17950  		    tg3_chip_rev_id(tp),
f9804ddbeec2ea drivers/net/tg3.c                   Michael Chan            =
2005-09-27  17951  		    tg3_bus_string(tp, str),
df59c940355739 drivers/net/tg3.c                   Matt Carlson            =
2008-11-03  17952  		    dev->dev_addr);
df59c940355739 drivers/net/tg3.c                   Matt Carlson            =
2008-11-03  17953 =20
2220943a21e26d drivers/net/ethernet/broadcom/tg3.c Andrew Lunn             =
2016-01-06  17954  	if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED)) {
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17955  		char *ethtype;
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17956 =20
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17957  		if (tp->phy_flags & TG3_PHYFLG_10_100_ONLY)
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17958  			ethtype =3D "10/100Base-TX";
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17959  		else if (tp->phy_flags & TG3_PHYFLG_ANY_SERDES)
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17960  			ethtype =3D "1000Base-SX";
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17961  		else
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17962  			ethtype =3D "10/100/1000Base-T";
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17963 =20
5129c3a3faf8c5 drivers/net/tg3.c                   Matt Carlson            =
2010-04-05  17964  		netdev_info(dev, "attached PHY is %s (%s Ethernet) "
470078312515f1 drivers/net/tg3.c                   Matt Carlson            =
2011-04-20  17965  			    "(WireSpeed[%d], EEE[%d])\n",
470078312515f1 drivers/net/tg3.c                   Matt Carlson            =
2011-04-20  17966  			    tg3_phy_string(tp), ethtype,
470078312515f1 drivers/net/tg3.c                   Matt Carlson            =
2011-04-20  17967  			    (tp->phy_flags & TG3_PHYFLG_NO_ETH_WIRE_SPEED) =
=3D=3D 0,
470078312515f1 drivers/net/tg3.c                   Matt Carlson            =
2011-04-20  17968  			    (tp->phy_flags & TG3_PHYFLG_EEE_CAP) !=3D 0);
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17969  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17970 =20
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17971  	netdev_info(dev, "RXcsums[%d] LinkChgREG[%d] MIirq[%d] =
ASF[%d] TSOcap[%d]\n",
dc668910f4eaa2 drivers/net/tg3.c                   Micha=C5=82 Miros=C5=82a=
w         2011-04-07  17972  		    (dev->features & NETIF_F_RXCSUM) !=3D 0,
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17973  		    tg3_flag(tp, USE_LINKCHG_REG) !=3D 0,
f07e9af31e6e1b drivers/net/tg3.c                   Matt Carlson            =
2010-08-02  17974  		    (tp->phy_flags & TG3_PHYFLG_USE_MI_INTERRUPT) !=3D=
 0,
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17975  		    tg3_flag(tp, ENABLE_ASF) !=3D 0,
63c3a66fe6c827 drivers/net/tg3.c                   Joe Perches             =
2011-04-26  17976  		    tg3_flag(tp, TSO_CAPABLE) !=3D 0);
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17977  	netdev_info(dev, "dma_rwctrl[%08x] dma_mask[%d-bit]\n",
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17978  		    tp->dma_rwctrl,
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17 @17979  		    pdev->dma_mask =3D=3D DMA_BIT_MASK(32) ? 32 :
05dbe005386e75 drivers/net/tg3.c                   Joe Perches             =
2010-02-17  17980  		    ((u64)pdev->dma_mask) =3D=3D DMA_BIT_MASK(40) ? 40=
 : 64);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17981 =20
b45aa2f6192e34 drivers/net/tg3.c                   Matt Carlson            =
2011-04-25  17982  	pci_save_state(pdev);
b45aa2f6192e34 drivers/net/tg3.c                   Matt Carlson            =
2011-04-25  17983 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17984  	return 0;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17985 =20
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17986  err_out_apeunmap:
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17987  	if (tp->aperegs) {
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17988  		iounmap(tp->aperegs);
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17989  		tp->aperegs =3D NULL;
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17990  	}
0d3031d9e674cd drivers/net/tg3.c                   Matt Carlson            =
2007-10-10  17991 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17992  err_out_iounmap:
6892914fb7980d drivers/net/tg3.c                   Michael Chan            =
2005-08-09  17993  	if (tp->regs) {
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17994  		iounmap(tp->regs);
22abe310bc4b0c drivers/net/tg3.c                   Peter Hagervall         =
2005-09-16  17995  		tp->regs =3D NULL;
6892914fb7980d drivers/net/tg3.c                   Michael Chan            =
2005-08-09  17996  	}
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17997 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17998  err_out_free_dev:
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  17999  	free_netdev(dev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18000 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18001  err_out_free_res:
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18002  	pci_release_regions(pdev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18003 =20
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18004  err_out_disable_pdev:
c80dc13dda73db drivers/net/ethernet/broadcom/tg3.c Gavin Shan              =
2013-07-24  18005  	if (pci_is_enabled(pdev))
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18006  		pci_disable_device(pdev);
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18007  	return err;
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18008  }
^1da177e4c3f41 drivers/net/tg3.c                   Linus Torvalds          =
2005-04-16  18009 =20

:::::: The code at line 17979 was first introduced by commit
:::::: 05dbe005386e7521153dce6c5ad95c98b73b80c7 drivers/net/tg3.c: Use (pr|=
netdev)_<level> macro helpers

:::::: TO: Joe Perches <joe@perches.com>
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
clang-built-linux/202003120220.F5y6rXEa%25lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
v4qj5gEA

--SUOF0GtieIMvvwua--
