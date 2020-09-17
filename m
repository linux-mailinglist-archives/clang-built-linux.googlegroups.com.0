Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWUXRX5QKGQEOUOGQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id CA96026DA94
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 13:43:23 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id x124sf862642oif.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 04:43:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600343002; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNzHKW0IOpppSoqTjCFAtamGaYY8EYt9BhuDbSvXLwYzflEZQ6hTUsOUyB7Pc+F4K1
         b3j8Fgwd0YsgthZkhq6IV8G12o1vLcYhwn81CFlDuZrgLPKFH4LHpxKqHn/ixPo6YGrP
         MB8knO09q+OpAKF9nYOurUIPtZR0jWiZUOz6dglKjN0WvwvedJR5Pps0KvHl8TtFBkWt
         vsdeWc/r1nU92zn0UpXsSW3wM8znRkRDBCHW0Ldd8F44FZT5cmklAlUWp0cyetfDet2Z
         +lekChom+6nWuYztLmJABPCKl031SicmldLbh4XNbr6EX8+SeOxRyWko5i10Ww6Tt10k
         Fv0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=8C1KR1C5F4fkwu4Lmoj6HpEAzBOj12w30WUBGU/z0xo=;
        b=bwtUdP69nMLyHwm/yjkPZgF/sBAGh9JpIKPBUImjrl0I5+PkvzvwEXWs6PhOW9Fn45
         LesDC2XvyucRK8HNFRICKLx/TnpBX0yiJhUARfPK3ve5YFYuifxAKgp7FU2d82AJjdh/
         FOGl5GcoIX8uCPe40q+Jq3KXt+JC6Vaea0qbrf0rm0zcgNiiwYpU0TnS9SzLCZXQM5Xv
         DtNxX9001eDqZ077jda6qXpn1CNgf8cAI9mDZ5OcS1VFU78/iijgwbOAYZQDfNAxeQa2
         HEbWEUwwaCvpqAEYn8Si/jH1Du0kBeWuJV4K/nBpYCz5q+wNvjgSS4K0p0XApnZs2AFX
         bPiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8C1KR1C5F4fkwu4Lmoj6HpEAzBOj12w30WUBGU/z0xo=;
        b=kQjIqME3MLBAb95Yq4eG513oG49cP2LJVUDnIhpLW23RZrQlubHBCjpI8wG1cvjWmQ
         rOEbxoOPR2UWnW5URAaYwDCkN5FA/acoPL1gVx8sySS7+okslH+fQMGKQR6TQvy2AK2Q
         hm8UVobRTmSExBSPubp7aaU7P+AciBT1AUCP/Am9wAgy/Wo+OvO17JZdPIxSqEPlHz2c
         hUKj6KhWRl5c/62/dH7uv1TKu5Bj6qQMmcvsTDMo3KxT5F3/QD0iRW/Ifw8NkMRtGLNb
         ogc0gHr16D7D+YMBWKtZw4ubn+9svw3X7OSw8PZTO65Jmc6qDwmM5fUdt/A1g8TQZilm
         wuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8C1KR1C5F4fkwu4Lmoj6HpEAzBOj12w30WUBGU/z0xo=;
        b=kLHDMItyMJJUta0uRjEiS4Gaw6oGqGXfc4aE36fnSKpWf9LZ+R9v5rLWXvXsXTchGx
         ccnSrHdrRCefXzH8mfY45dhuYYQ4ejBUKs3zW6r3ssKMOim8cRIn56db1IV8B0IUdoiE
         nftGf8COemWLezg7/LNmpHQoaCjyTw0D3YrF0fj3ttJIwVYiFKCurxE6Atc+ZUxMg1V/
         2Fy8ktUfDo/5a7onbZ63KaSL1z/lr7P3X18js5f1C6rA3Nly5GW/MFWdnRNWOvA6w+/n
         NPWNyiy2IZXOyLHubsnBUbPtvP6wK19GGjcV1egopkonHx8SWhGxvEpKmFVLHGZW6Tx5
         HDHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327LYC5nk6nvxkA4XuoaujF900TH0Zu5SotgeFHmwg5dABaa8mD
	GPynVZuuDWe25aZd+bzQTos=
X-Google-Smtp-Source: ABdhPJzByh6M7fxoLapujoXJodfXyTCWnIylqSpV4JOn87Y2xHDKV6RQa4SeNCa6YLvl1IIf+Y6Nsg==
X-Received: by 2002:aca:2819:: with SMTP id 25mr6162909oix.4.1600343002545;
        Thu, 17 Sep 2020 04:43:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec08:: with SMTP id k8ls266543oih.0.gmail; Thu, 17 Sep
 2020 04:43:22 -0700 (PDT)
X-Received: by 2002:aca:7544:: with SMTP id q65mr6147164oic.77.1600343001994;
        Thu, 17 Sep 2020 04:43:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600343001; cv=none;
        d=google.com; s=arc-20160816;
        b=FIWyrsL3+ayoLsG/mReSzp6fs1yAGamKeHkXIiQoDIpLLsmSymNE6eX9T5L7suEMsv
         DpoB46qnv24eqIvlPD6dS7xL1Qpzy/qdZMtlxAbzBPdh3NEqLTPwGXifHj1hvda93k4e
         EwYi6DEliW+9jA0aFCtnOG9TVKVCDT27zLIhDDwnScn2TC48Tl+YgXXJbvnE8y5sL/jV
         DTwGMl8cqu6qlX5yrKv+wtCXF9Sr2RRytL6ZA9v8Nff3uA1b5lum4VRilsfUvgHDUPhl
         pNjrnUbc7JfFsjO34C9p/H4ZY/EwCqR0SzTrA5hlS5dH9pCzTlFhanp8NRtRAu57W77F
         h0Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=qTTOMjbU+Oi/qPVne3BFzhzCu5hV8fgA4hpPQYDByb0=;
        b=RrkcpBqvGuuQsyDsHuWkJzRkWH6yXCPFIykFsQUIRNckl2lRb2Ex5H+Bey6WJR1/u9
         OSrp4ps74+SmI82y7MGGXUGCDJ2DXkfUxujLzACEZRwgu+BwhNO10aMX1kM6q2gvrEoe
         uTPL4uMqbcoRVf6th5P2gQ21fm0dVU38z0c99/UE4vEvRrgArUPiY1BqHEG4G97cHo+A
         QMyvR36LWqaySZPOXdQw8sbqvyj3xRGzkiJYqd7oM4hJusdwlbDiM7sZ3RYk0Hwc77tY
         wz+G2eTrFknsh8YgQFGv//8uHnXX1+Zd+XXpS4ACxg/nb7NefLV6jgL7Hugd10roKlsg
         P71w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id l15si2312869otb.0.2020.09.17.04.43.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 04:43:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: B2YMXw7P9WO1rBcm+MzxkvIDkOJvHeyVz3HMuV+CzhbUVYEJ/ZKuongq0CjCHWsmLSyY1AWntS
 H47iksmtELxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="159731184"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; 
   d="gz'50?scan'50,208,50";a="159731184"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 04:43:19 -0700
IronPort-SDR: FHR4MlWXil5S8LcfLnH7UkKzd/H6v8AO54IhK36BMg6kKVqLoYaFuFX+zwOuVW18/pZYxZNR0d
 /usTipIZNfzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; 
   d="gz'50?scan'50,208,50";a="287530272"
Received: from lkp-server02.sh.intel.com (HELO bdcb92cf8b4e) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 17 Sep 2020 04:43:17 -0700
Received: from kbuild by bdcb92cf8b4e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kIsJo-0000Zd-K5; Thu, 17 Sep 2020 11:43:16 +0000
Date: Thu, 17 Sep 2020 19:43:07 +0800
From: kernel test robot <lkp@intel.com>
To: Brad Kim <brad.kim@sifive.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Vinod Koul <vkoul@kernel.org>
Subject: [linux-next:master 6537/8629] drivers/dma/sf-pdma/sf-pdma.c:287:23:
 warning: unused variable 'desc'
Message-ID: <202009171901.My6QJWXM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--liOOAslEiF7prFVr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git=
 master
head:   860461e4fcaa76200d2d1a53523e0ff7be92e6e8
commit: 8f6b6d0606023c8403ac04ba42177ecbb55769f6 [6537/8629] dmaengine: sf-=
pdma: Fix an error that calls callback twice
config: mips-randconfig-r014-20200917 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 132116=
0a26e7e489baf9b10d6de90a342f898960)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 8f6b6d0606023c8403ac04ba42177ecbb55769f6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/dma/sf-pdma/sf-pdma.c:287:23: warning: unused variable 'desc'
   struct sf_pdma_desc =3D chan->desc;
   ^
   fatal error: error in backend: Nested variants found in inline asm strin=
g: '.if ( 0x00 ) !=3D -1)) 0x00 ) !=3D -1)) : ($( static struct ftrace_bran=
ch_data __attribute__((__aligned__(4))) __attribute__((__section__("_ftrace=
_branch"))) __if_trace =3D $( .func =3D __func__, .file =3D "arch/mips/incl=
ude/asm/barrier.h", .line =3D 16, $); 0x00 ) !=3D -1)) : $))) ) && ( (1 << =
0) ); .set push; .set mips64r2; .rept 1; sync 0x00; .endr; .set pop; .else;=
 ; .endif'
   clang-12: error: clang frontend command failed with exit code 70 (use -v=
 to see invocation)
   clang version 12.0.0 (git://gitmirror/llvm_project 1321160a26e7e489baf9b=
10d6de90a342f898960)
   Target: mips-unknown-linux-gnu
   Thread model: posix
   InstalledDir: /opt/cross/clang-1321160a26/bin
   clang-12: note: diagnostic msg:
   Makefile arch drivers include kernel scripts source usr

# https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commi=
t/?id=3D8f6b6d0606023c8403ac04ba42177ecbb55769f6
git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/n=
ext/linux-next.git
git fetch --no-tags linux-next master
git checkout 8f6b6d0606023c8403ac04ba42177ecbb55769f6
vim +/desc +287 drivers/dma/sf-pdma/sf-pdma.c

6973886ad58e6b4 Green Wan 2019-11-07  283 =20
6973886ad58e6b4 Green Wan 2019-11-07  284  static void sf_pdma_donebh_taskl=
et(unsigned long arg)
6973886ad58e6b4 Green Wan 2019-11-07  285  {
6973886ad58e6b4 Green Wan 2019-11-07  286  	struct sf_pdma_chan *chan =3D (=
struct sf_pdma_chan *)arg;
6973886ad58e6b4 Green Wan 2019-11-07 @287  	struct sf_pdma_desc *desc =3D c=
han->desc;
6973886ad58e6b4 Green Wan 2019-11-07  288  	unsigned long flags;
6973886ad58e6b4 Green Wan 2019-11-07  289 =20
6973886ad58e6b4 Green Wan 2019-11-07  290  	spin_lock_irqsave(&chan->lock, =
flags);
6973886ad58e6b4 Green Wan 2019-11-07  291  	if (chan->xfer_err) {
6973886ad58e6b4 Green Wan 2019-11-07  292  		chan->retries =3D MAX_RETRY;
6973886ad58e6b4 Green Wan 2019-11-07  293  		chan->status =3D DMA_COMPLETE;
6973886ad58e6b4 Green Wan 2019-11-07  294  		chan->xfer_err =3D false;
6973886ad58e6b4 Green Wan 2019-11-07  295  	}
6973886ad58e6b4 Green Wan 2019-11-07  296  	spin_unlock_irqrestore(&chan->l=
ock, flags);
6973886ad58e6b4 Green Wan 2019-11-07  297 =20
8f6b6d0606023c8 Brad Kim  2020-09-03  298  	spin_lock_irqsave(&chan->vchan.=
lock, flags);
8f6b6d0606023c8 Brad Kim  2020-09-03  299  	list_del(&chan->desc->vdesc.nod=
e);
8f6b6d0606023c8 Brad Kim  2020-09-03  300  	vchan_cookie_complete(&chan->de=
sc->vdesc);
8f6b6d0606023c8 Brad Kim  2020-09-03  301  	spin_unlock_irqrestore(&chan->v=
chan.lock, flags);
6973886ad58e6b4 Green Wan 2019-11-07  302  }
6973886ad58e6b4 Green Wan 2019-11-07  303 =20

:::::: The code at line 287 was first introduced by commit
:::::: 6973886ad58e6b4988813331abb76ae0b364a9c2 dmaengine: sf-pdma: add pla=
tform DMA support for HiFive Unleashed A00

:::::: TO: Green Wan <green.wan@sifive.com>
:::::: CC: Vinod Koul <vkoul@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202009171901.My6QJWXM%25lkp%40intel.com.

--liOOAslEiF7prFVr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--liOOAslEiF7prFVr--
