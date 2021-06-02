Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ7O36CQMGQEQY54NGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 606CB399563
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 23:26:00 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id m6-20020a0568301e66b0290319b27baf50sf2272032otr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 14:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622669159; cv=pass;
        d=google.com; s=arc-20160816;
        b=yU/EXIGyyv2f60lNFVKQkAnrCtiy9W4/qks/RU7vXNtCRsmw5HUY7Y9SM3zXnBQC5/
         phc2qk/+bJxeFomaWAx0QXN/3yKXTk4Jf+6GFna2LbG6ELbmxIRXPUD+nmEkBYnE8KT0
         3iPK4igmRJNeLoZ03kvE8bXyegGzwdWDanOQrGELC1p613xNrxiHMOHyQMiAy9TzcCkz
         Si7n7alMQLjlGUvBKQvoYCdJFaPdNdaDHnySmHIQQLcaKle6TBPE6HZUq285ebUPBe3r
         ygfQv/z3odVCxFm0hz19fCoHxWu62y46hfzOgiNVC6ScHFlhosSInEFsLC2QriZmSKml
         k6Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=n6w9+OjxwhePMIUOv5CIlwl+1f6/xdlLp4jUKsvIZPA=;
        b=p4a2PPdiExGmugTY32PU0r1JI2L1HfamD0x0cYzackvIVuS+BDPNz3A8zcho1PpeqG
         jDaz0ks7z9li/TaNjCv9LQlIg1yZGZxzUm0mHnmwIPuTVmvp1iKQogHWcdxuSCYajKrv
         stnYJmFYwUt2Zb2HdIRUTB9kofiLz3QoQdg6BEoSjXRTeJFJ4OOk9BUnPtja9XHZFU7U
         ptu1mBHFjlK8T2DNqrPD/BPOPSBKFBw6iKw8b2q5N//DKPWSYOgsMWJJC0S0LZa4YS7A
         JgFVY3ygUAzl4usVz6Y3RSzj4rp8fSMZ5dkqJ3l4/J8uQOjytfAkqsNQFLZd5DkihDSr
         BpxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n6w9+OjxwhePMIUOv5CIlwl+1f6/xdlLp4jUKsvIZPA=;
        b=kUjscdcgDBoNH2Bcd+zI3fMOYmKhGMvMXte2BhmNXlma3soly8V1X795fp8rfiKNeQ
         uzd2iF784iTlCLmOmPN+e/JhLd93z0bVCY4Vm4UtEAx1VM4iAinpei4t20Kf7in22ATf
         2WY3/Exi0aamdS2nuR00egyaHXKHlruK88lpro+x194qbb4A3YkQTVMPpnC5KcPFIn7n
         cQ+MNNO8LAhhD7qIdfdS6rE1RTCen46vdsok+AsSgsIBd+7IgUg5z5jM/JgUjLrtxqlu
         D91TSLRAkVJYhSKRfr9xlNk6TIDr3BKM/1D+DhemURk5IZHQYKzxLHL8Blfmb3JwD7SX
         deoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n6w9+OjxwhePMIUOv5CIlwl+1f6/xdlLp4jUKsvIZPA=;
        b=T4ItL/u9hSENIhIviLcg42h4Fr8koayipF9rUXpJpPY8d03IbfkGOQMHb1Yli2UIhb
         MkaeueDJ66+vKkmfaV29tryCev9XaemPxwGAFlZJ3sjVHLU0hgfeheYi0Toehzcpi9iX
         56JNw8Xn+4UdX+3FvZaD9xCeBfShrWnMBggHyFAh66N5y2zWFzF0Wuu2SpGSuNI+v08s
         e+YXcUlSJWRsv5vtXsE287K6WZhY3QlRbNbYjFXaD8ZjHHdEeEH4iM0JcrXDYNVBU8Mf
         W33KY7ioT8u9tBpGLHpbOuzw9+rRFiskmcVE7NF/CGSf9Vh2bQ4dXuqnFRo16bsM2u+1
         F+Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TW5O0TNMWG6WVxv86JjjndyqBG9Ukrcv/3HvOMTekxbWXPsto
	cEbLkYKpCpiG8LTlchr1w6w=
X-Google-Smtp-Source: ABdhPJwrEGDWb73yoH7yPwn81Jpc4EV6M5eMrTslPgngVcy02RzGEJUqcCIlC8gLZM+gASrmOlFc8Q==
X-Received: by 2002:a05:6830:34a7:: with SMTP id c39mr26956172otu.357.1622669159195;
        Wed, 02 Jun 2021 14:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls380556oth.4.gmail; Wed, 02
 Jun 2021 14:25:58 -0700 (PDT)
X-Received: by 2002:a9d:69c5:: with SMTP id v5mr26937422oto.108.1622669158728;
        Wed, 02 Jun 2021 14:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622669158; cv=none;
        d=google.com; s=arc-20160816;
        b=cc3z/zmRhkScHBZW+BX2A9N0YyJvfTWuMcxh/qj81eVjFfaEmCnrf0HpISIj6oZDuc
         x6XWzDa5UyCKS39w2l+cLDbgI2HhJ9fYSnvWEyaT7ryg5/taFZ7VVFnPRQmJtnkIMelv
         Dblt3jt9uF3thF7gvE5dKg+ptJIgmQAaN/NpG5onKxDL8KhshPQPFjPvPBnvs7qI5Hsy
         Tg6A6IavgbI1xIiwX3bILU+GrGarjlaZJbazq/G7qEZfAt9MZ0noisLTyQo+1idXPeC8
         gGGsaVDmh9bsvSypJPsTz348bxVj5fPRnfJE3N2gxrPFcb1SIO++I4JgVoNrEAfoLMqt
         DYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JTynlFxMgPzMRndMo6wXY2rmroJDg5GPdgYVg3Z1Qfk=;
        b=IXFzkoiAqRVVUOnehFWgL3JNrcx90aEBvTEg4wNEoJ0TIzhiZsVRbSeyFBvvFi0Gtl
         Ajftvp3SSSrw2hkrM9zsL2pbzyTniWHFsHfeWzyV12JRoiDOiUgI2uPZcTbXyHCYjCLZ
         J/FU2iPzf/1Qy8MGl3/IefOHmC/p0NiqH2Pw1FE4WzQXpHxqn3TEF5buN8Po6cjaf+/y
         ZpHs6Rk/UzcvanGIaoMFHhw+5m4zilRbg7xBIAa5MHaLbXoSHL9nX777WFGPkj23Y8tN
         9v0nfUQW6Uto51sDcbYhGg7aUb8/Ucc3AWkLUHf1Zl5k11zwHMwD0e0W8GWTV5ikPflQ
         D2sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w16si129024oov.0.2021.06.02.14.25.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 14:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: F+DkAuqzFpSKm0zYABjCetNLHjzQeaXDoi6wZ0SiWr6Y0xP7sl5z0aD9p2C9Lxp23K2XmqOktm
 PKYQBH8q2a0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="191248854"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="191248854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2021 14:25:54 -0700
IronPort-SDR: NSlYCwDWbNbUeysT1HochYgmXY6dZwJlSnSdrN7mkne1be2ek/nP6Wld6PPQboM9lZV0YU4Qoi
 Ou003umcrGdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; 
   d="gz'50?scan'50,208,50";a="479879223"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 02 Jun 2021 14:25:52 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1loYN5-0005rV-Ux; Wed, 02 Jun 2021 21:25:51 +0000
Date: Thu, 3 Jun 2021 05:25:40 +0800
From: kernel test robot <lkp@intel.com>
To: Damien Le Moal <damien.lemoal@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	dm-devel@redhat.com, Mike Snitzer <snitzer@redhat.com>,
	Hannes Reinecke <hare@suse.de>,
	Himanshu Madhani <himanshu.madhani@oracle.com>
Subject: [dm:for-next 20/20] drivers/md/dm.c:850:43: warning: variable 'bio'
 is uninitialized when used here
Message-ID: <202106030532.LdwnXhpq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git for-next
head:   2c243153d1d4be4e23735cd10984ac17c7a54531
commit: 2c243153d1d4be4e23735cd10984ac17c7a54531 [20/20] dm: Forbid requeue of writes to zones
config: riscv-randconfig-r011-20210602 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d41cb6bb2607fa5c7a9df2b3dab361353657d225)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git/commit/?id=2c243153d1d4be4e23735cd10984ac17c7a54531
        git remote add dm https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git
        git fetch --no-tags dm for-next
        git checkout 2c243153d1d4be4e23735cd10984ac17c7a54531
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/md/dm.c:850:43: warning: variable 'bio' is uninitialized when used here [-Wuninitialized]
                               !WARN_ON_ONCE(dm_is_zone_write(md, bio)))
                                                                  ^~~
   include/asm-generic/bug.h:102:25: note: expanded from macro 'WARN_ON_ONCE'
           int __ret_warn_on = !!(condition);                      \
                                  ^~~~~~~~~
   drivers/md/dm.c:832:17: note: initialize the variable 'bio' to silence this warning
           struct bio *bio;
                          ^
                           = NULL
   1 warning generated.


vim +/bio +850 drivers/md/dm.c

   823	
   824	/*
   825	 * Decrements the number of outstanding ios that a bio has been
   826	 * cloned into, completing the original io if necc.
   827	 */
   828	static void dec_pending(struct dm_io *io, blk_status_t error)
   829	{
   830		unsigned long flags;
   831		blk_status_t io_error;
   832		struct bio *bio;
   833		struct mapped_device *md = io->md;
   834	
   835		/* Push-back supersedes any I/O errors */
   836		if (unlikely(error)) {
   837			spin_lock_irqsave(&io->endio_lock, flags);
   838			if (!(io->status == BLK_STS_DM_REQUEUE && __noflush_suspending(md)))
   839				io->status = error;
   840			spin_unlock_irqrestore(&io->endio_lock, flags);
   841		}
   842	
   843		if (atomic_dec_and_test(&io->io_count)) {
   844			if (io->status == BLK_STS_DM_REQUEUE) {
   845				/*
   846				 * Target requested pushing back the I/O.
   847				 */
   848				spin_lock_irqsave(&md->deferred_lock, flags);
   849				if (__noflush_suspending(md) &&
 > 850				    !WARN_ON_ONCE(dm_is_zone_write(md, bio)))
   851					/* NOTE early return due to BLK_STS_DM_REQUEUE below */
   852					bio_list_add_head(&md->deferred, io->orig_bio);
   853				else
   854					/*
   855					 * noflush suspend was interrupted or this is
   856					 * a write to a zoned target.
   857					 */
   858					io->status = BLK_STS_IOERR;
   859				spin_unlock_irqrestore(&md->deferred_lock, flags);
   860			}
   861	
   862			io_error = io->status;
   863			bio = io->orig_bio;
   864			end_io_acct(io);
   865			free_io(md, io);
   866	
   867			if (io_error == BLK_STS_DM_REQUEUE)
   868				return;
   869	
   870			if ((bio->bi_opf & REQ_PREFLUSH) && bio->bi_iter.bi_size) {
   871				/*
   872				 * Preflush done for flush with data, reissue
   873				 * without REQ_PREFLUSH.
   874				 */
   875				bio->bi_opf &= ~REQ_PREFLUSH;
   876				queue_io(md, bio);
   877			} else {
   878				/* done with normal IO or empty flush */
   879				if (io_error)
   880					bio->bi_status = io_error;
   881				bio_endio(bio);
   882			}
   883		}
   884	}
   885	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106030532.LdwnXhpq-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Q68bSM7Ycu6FN28Q--
