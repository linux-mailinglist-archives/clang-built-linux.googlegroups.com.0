Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBP4CXCCAMGQEFOCQLJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 817F9370990
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 03:32:48 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id d1-20020a67e1010000b0290221de2c5f91sf1079443vsl.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 18:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619919167; cv=pass;
        d=google.com; s=arc-20160816;
        b=rpFnYp0YND9BOZQ4o2fK73DERnSexxku4VKpOcfoBnjTuHbShF/I8ACZRPjD24TzPk
         pSBKSWkHNDygjiUxkTpr42c7ClkYxzgWY+PTKMivXHXXmYBy8mWedAHUnti+dolfQIJm
         uFcVZXOn2icFlL1Mu6b1W1iJBSdveKGwrx7QAdbfgNSkXe+vwfj5aFy0mdXH3/GBZrsB
         NcMuWAK0oWVweXTC3XyWdAcKJ/2jXTxoI8sxf7m7Wnl+vmaw+sT6bJltjt7/uTm8RNWC
         gQ9Na6mLi81DPQ2bmFxcvEygsdVbTiYd6rKAobVtD2kj+zOxHjoI7nemSZeSzQsrrac/
         xMYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=PkoK/KYipPwCg7cZDJ5EhiI8eeV0ZOEM4tU9cSN0hNA=;
        b=IMZxkpynajM3+Lmy038ijonLYCXJIcGO11MDFMCK1diJkowCyno4moH1Ld53FWMT0J
         QtffBg8mHFT44+lGKE3ge0agUxRw4zh2yvrtHZqekz/2NKszoLtDo1Q+uPpdO+YT+yoW
         EKhEthj6U91txsC89PeklTBBt+mRBfj84o55fFzNSjL3AELZt9Id4y55xzu9u5iK8dxc
         AEchSbC4VmmShJGoAHwOAZIZ/F+kWozQnYaHsQ2dTseHklMUjYSiKykpwYF4okZWecKT
         upgaA6Tf28tzz1ILfFMoUWJZvM+9ta20efcij0apEodPlHSD2hL1I6k8SCaYqMBds/r8
         f/NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PkoK/KYipPwCg7cZDJ5EhiI8eeV0ZOEM4tU9cSN0hNA=;
        b=XRe7ia8MPNhyaGDRYJILmweGxH+hSKXT/mYjOmspW+Gtxuv/t6X6LF06LNOcc6xWcR
         83a42/nWoizjpg+UT1qZvHfCi3vlg9qlkIX9uxqAd+S7jvPpOOSmNDpJST0EQsmWMIo5
         BbH+PntblGF8t36fJa8dy/hKMm8oFOC4wyAef4Iltv8PoJzx8WFpmZK8Mkzx/jGwCtu4
         jOhmxcPPeO8f9E+1ovUEyZlWrhRLkLtnPk+zyeONPe9tVuJqHz0eFHVjQpYCSr8f6597
         yyrA4BTmHHx2v0djXmipxeL+HpZr4QR5EtYutEIpJ5XuYrT+ubsd3DuVrYh3IJp/s+b6
         udOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PkoK/KYipPwCg7cZDJ5EhiI8eeV0ZOEM4tU9cSN0hNA=;
        b=tQzth5fqM6cTtsj1f9492ETWJXFIHz/9XjVXKhH6E18U8PsMPO6prKGu8Ta8dF4dil
         y+TWMUUvpLYcti9YWzL8Y+x9bOozDGqAN3Q3QOrKuLn31kH4zZLNNh5LN0JDrdoXiPTh
         E3/NfmYDNqoo/LsUDPqHo8qig5ZnYHLOWxu3GSqE8dXj23ICQQ6HV2+QQn3Arm58E9+0
         OUgxba4+dSy5eptEF+p1tm76fMmAbNHKNr1+lWjoeA73IcT9K3LXgDB/cP9sFkzf8jn/
         RAv8NpXpSm0mkXDUJiHkh5I+5cIney9FpjedVrd0RmuRS/EaAhb3dV/+WttnFfCqYBTn
         2TcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532W13AyNlzBpRKUDpCTMyEmnrl8wrlOOMzYCpfAM+MBd64e3eWb
	5DTz44KcXYufW9s3nD1mb9E=
X-Google-Smtp-Source: ABdhPJwELIdDyBoIZ5/F0WdGpWKVnt+B3lE9x17rH1g1pEGewUmKHwNhC8Gw8JF352kdmeeVANPlBA==
X-Received: by 2002:a67:71c7:: with SMTP id m190mr11972255vsc.28.1619919167401;
        Sat, 01 May 2021 18:32:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1ec2:: with SMTP id p2ls150070uak.2.gmail; Sat, 01 May
 2021 18:32:47 -0700 (PDT)
X-Received: by 2002:ab0:5f8d:: with SMTP id b13mr10724629uaj.4.1619919166825;
        Sat, 01 May 2021 18:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619919166; cv=none;
        d=google.com; s=arc-20160816;
        b=jgScBo8xMbcmf8LCDl90sB037ymMUJ8IqUfpsZcUYWcJ2N5ps2flesbgE6KoukmGzU
         dMvaSFVGcIdeEG2RBwux8C+vcDmwvqKuPOjUBHx1/xL49AvP55noDbYF8O8gaOUTBLSS
         gNUlnHDi0fvHTtNlDgn76T6Yf6uxnk/tsZM5aCp3EvNM2M/fOzavnPG7+M0GL87HLFmR
         mjQ3jZb13RX4actRMMuacUFVx59nin2HILGsxpgnsR9NtkQUr/tVre6ssLYu6NBZhXnZ
         W5hgz51p+2h8y9sRcoGHHX2C8I1LkKMnhA4JsQ9CQj8m9yhhWHaVJ2FYxgWe0wHyJj48
         vZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CHFwv+QvO7u/FbqZIO1Z1ImllBa9nX009yCrab454jk=;
        b=K6cOV+zcCI94AoOyr0bTz3ajDlAqjSn0+RzE+yVu6g3RXw+czorC4R2FmEgl0jK/zg
         2Ktk7C8s4gQmmTaUtc3xaRGUPsyEg2DqRCJfTDXACw6i4WkAn8yqjqhbxlUqrUwz8uBw
         h1F2zefzlgzcs2TANhOU+6tD3fjYVdcVJ/ym9dmf+MxN8B8v1uOBZ8/k7kVJPCedfNnM
         GbHpgMZmIHVlPTVcbS6tA2ZW7I5AWuclAy4IQa6mDSXmD46X91WZ5S1HxLnCBC66021J
         JrMWByn23pWTc+k7BGLWL8xntwdG6wHicnVVzWQqbKczY/liILK5vtWoy0i8epYrzkhp
         hWnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id t11si560805vsm.2.2021.05.01.18.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 May 2021 18:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 1wKJ++7GUrFQf43yMKIpJjBxWyVbl1Ibp5O4s4LYcrjhaDPH3Gb4aDrJg2xQf8fOp3+G2kEEuQ
 h/SLPNiW0Hng==
X-IronPort-AV: E=McAfee;i="6200,9189,9971"; a="195450349"
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; 
   d="gz'50?scan'50,208,50";a="195450349"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 May 2021 18:32:45 -0700
IronPort-SDR: fz9CYdiC7VzNQbou1pYxKRSbbn03ML9sSnKShoQPxLCpP7O0HdxoRkhrIj1M/3jveeJpz0y6HT
 rcsejq+4oO4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,266,1613462400"; 
   d="gz'50?scan'50,208,50";a="467366976"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 01 May 2021 18:32:42 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ld0yP-0008mG-TT; Sun, 02 May 2021 01:32:41 +0000
Date: Sun, 2 May 2021 09:31:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack
 frame size of 1360 bytes in function 'vidtv_mux_tick'
Message-ID: <202105020940.A7Ba4c0w-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   e6f0bf09f0669b3c2cd77fa906830123279a0a21
commit: f90cf6079bf67988f8b1ad1ade70fc89d0080905 media: vidtv: add a bridge driver
date:   8 months ago
config: powerpc-randconfig-r032-20210502 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f90cf6079bf67988f8b1ad1ade70fc89d0080905
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f90cf6079bf67988f8b1ad1ade70fc89d0080905
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/test-drivers/vidtv/vidtv_mux.c:379:13: warning: stack frame size of 1360 bytes in function 'vidtv_mux_tick' [-Wframe-larger-than=]
   static void vidtv_mux_tick(struct work_struct *work)
               ^
   1 warning generated.


vim +/vidtv_mux_tick +379 drivers/media/test-drivers/vidtv/vidtv_mux.c

   378	
 > 379	static void vidtv_mux_tick(struct work_struct *work)
   380	{
   381		struct vidtv_mux *m = container_of(work,
   382						   struct vidtv_mux,
   383						   mpeg_thread);
   384		u32 nbytes;
   385		u32 npkts;
   386	
   387		while (m->streaming) {
   388			nbytes = 0;
   389	
   390			vidtv_mux_update_clk(m);
   391	
   392			if (vidtv_mux_should_push_pcr(m))
   393				nbytes += vidtv_mux_push_pcr(m);
   394	
   395			if (vidtv_mux_should_push_si(m))
   396				nbytes += vidtv_mux_push_si(m);
   397	
   398			nbytes += vidtv_mux_poll_encoders(m);
   399			nbytes += vidtv_mux_check_mux_rate(m);
   400	
   401			npkts = nbytes / TS_PACKET_LEN;
   402	
   403			/* if the buffer is not aligned there is a bug somewhere */
   404			if (nbytes % TS_PACKET_LEN)
   405				pr_err_ratelimited("Misaligned buffer\n");
   406	
   407			if (m->on_new_packets_available_cb)
   408				m->on_new_packets_available_cb(m->priv,
   409							       m->mux_buf,
   410							       npkts);
   411	
   412			vidtv_mux_clear(m);
   413	
   414			usleep_range(VIDTV_SLEEP_USECS, VIDTV_MAX_SLEEP_USECS);
   415		}
   416	}
   417	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105020940.A7Ba4c0w-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
iZIDBCL/B4VhBvhOfAEA

--BXVAT5kNtrzKuDFl--
