Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB56TTT6AKGQEGV5N73I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B41128E4A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 18:40:25 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id w78sf2176957pfc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 09:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602693624; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+d7RDWFJz5tjVkMiowpd5R43DuldLvMU0+v5xQPHfCFim1RSc/d7qAaV9g9tP81Wv
         N0lFYvAFTB1OOQZA2Bv0GeJMQBLGcuRKR+GE4D1uO/asfz0UlsJgzndELwKIR40nFKEa
         86O+UGgbcmZmwaFktquYJ9uKMrpq2F3K54DhgG2fZp0rB24QSsjVYpwbGiHpRS6QFZ8B
         wqok8n2P6TH9L2f2S95FgpSnVoz58YndSC0NKRnNyxOtVWrKs9EpMfRNdeeNygYKw12S
         RrcJI9uar+JGsDWyIlNNpUCgD6EszdnoHA9ecJypVgW5DrdqZIWPNFU34WJ/YnCSPJMZ
         y9ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=InvYva8neeA1N2XbhaEW+YGa9sFU8ouZPuORts+/mKQ=;
        b=ANBNxJrV0vg8lcWKDsT26LoqTYG/XkQyg5w/KewR1N0lJu7MhjdF9GExixToR7JCPS
         6NMfHa6HYMq4U2B46nY/5dijCw9MGDhTSuAovsrJAJDK/fg/jzP4q6NYUR2bdqAqQWMQ
         WHmXBeDWy2pDHep61wsJ01fqnzNtOBJEptN7tfXgkd0tiBFHvnD//SPqn0/o6umPMuKj
         PTEjJt70QKkft8R6DzRVuLpT3RTe/DZuR5e8tAf9aGQFKs6EE0VC3fC/bNz9ppWi2YRG
         ZUQeN69UZtpsuUbymKab7W37zeG368erwD3+DPj5GAWAWbjeqqzg3V5K2prUG0LiJfgM
         CVzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InvYva8neeA1N2XbhaEW+YGa9sFU8ouZPuORts+/mKQ=;
        b=HHW8CVR/PJc7VTwpnnwa81bKyBgvjYgRxsNaY6qNNeMSVl7xp3nTKeHSn61dcpH5zg
         ao6s9uTSsvQ1odsx90s+DYgh+Cm274wbrdng1C0+tLxCGavXS0jEMlVWEp4rhIbfaT9o
         wba37Pxbr4IM7SBtG9nrIxMsrI1aPXQ8/MEWse3EeuhN2ts5nY7755o3nK8uRMc5eR9W
         qYJEkYcYYueXSflMVNQzB4xAvIUC/O42yRAGUL8L2LM/am5aYXVyNmc5COWGqhm+04m6
         P3h3RD0mSUNoWKKfN6qwqfde+Hq/YtJ2FZDlupNoyntqcdDtbnE1835K2/TZDewD5Fcz
         TR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InvYva8neeA1N2XbhaEW+YGa9sFU8ouZPuORts+/mKQ=;
        b=B7Wm3BenNsf7aampcE1G3kdJpt7qUq9OdCIDHX/O5KSqr5dbbCYhZ9YPRKKFL+PYD6
         haTwmJ1Z5cFlqBoAyaBeKcJ+BRoXSUPn0gs1tqE8z2CFyIsPVLlk2iYo14sSLe9QfgxX
         VCUycvBqIo9Uz6PILmM/BvapBWv74FD1BINsRVW6pmnQmwDZDNCysju4RCRN8Vjob6fr
         QVpWZ3BPjdEkYlheNvmiv87DXZFDHtq4Co8H/1zj2ro5bHDBMYRpJC88VvmnXMXWA8OV
         cAO3Ww8cboov5FH9aJP86i1QXJ90j9j5c2BKtbBhpdTtMokQnQIO/Ihsz9LlTU7g0qNC
         TKeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t95HT/P6tVDpVdzZ5n8P0h67smaNaubXcN/qzSUtLr5NGNIy3
	d5nHo37lJLxP8bKLHKFSNaI=
X-Google-Smtp-Source: ABdhPJyvXWcAmCk6GadyjqgkUleD73v+JdAQpNyQ53vg1MTw1Q26qNobJaldC7RvUyrDD15a66USzw==
X-Received: by 2002:a62:1dd7:0:b029:154:dde2:ddcb with SMTP id d206-20020a621dd70000b0290154dde2ddcbmr216478pfd.30.1602693623559;
        Wed, 14 Oct 2020 09:40:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7b05:: with SMTP id w5ls1336243pfc.11.gmail; Wed, 14 Oct
 2020 09:40:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:845:b029:155:dcd2:7322 with SMTP id q5-20020a056a000845b0290155dcd27322mr165325pfk.49.1602693622814;
        Wed, 14 Oct 2020 09:40:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602693622; cv=none;
        d=google.com; s=arc-20160816;
        b=eniIdJGEn74eJeYyeRjaI7DKMx/GHEiugnRi6WoHCoiGpjUGdXlK2ABzRzN+IZ8fQN
         OBeh3rjSKfFJBud2ar2mVZ3ZB2VBQWPv1clsFVlruO1MWcro+dQDjAKKer4LoMMj1Dut
         33oMNteMxhHE/L71oEH5CqdOX4fQsMywV91wjAohOqRxC8WJyz+w4oOEKvXbnlap8u22
         x/f9EgHZEoMtsRqg1pYm8e9+Q2YcdSOrdcTAfE+dcK7yihmocz9PMdUxCJtpAtClRmHR
         2wxuyMjNE9uqXpG94LlXethZzSJ4SoRFJK5wWc4aof9FM/hTimLFfBNIMaLcUlECbga1
         8h4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=CZ49HlFTr8WXbJPBFYAnyBFCUuollTmULaSuFQtH7Vo=;
        b=C1x5OkO35RCRaed34TfvunbaPNeAt6/XEgD2rResIZChNQtbRTtpqBsk8Jh4jefJVb
         2zdZYuLZ3ZQS3RQN1no2BvIdVUaxEdpmBBpN6YC3VVPPpwzcTyhs9ytiwITKyJqOytVa
         kXBfF4EgV6fxXjzRDYNWaSk63DqLtKYK9aYSYF1GrUs936MUSZft8a6n9cST/rOa2ok7
         Lcth4XSC8pcxYk9n4+cbvtysqYGWHDvYZE/clrSPfO6bsU6HThsgZMarzoHKwT+X7/36
         ZwEVmoI0MkTvNsxWOxevTO1Tj9QB+2fKpOubFV0JMza87ZgBgHEDtzfHt12hRvqePp2l
         AWKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a6si12240pjw.3.2020.10.14.09.40.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:40:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: zTZRIX8YP6LVxMUgQUKe+Lt3Okn/LSR7LHmD4jOfZ/jggFlr7oD+dfJkUPjr8UZXOD8E5h4Yjt
 jZZpGo9MPZNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="166262518"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; 
   d="gz'50?scan'50,208,50";a="166262518"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 09:40:19 -0700
IronPort-SDR: 0dBG7/azlEF4uo+cpIIhTy4RiFJ6pjZR31zU62YfevNRLyW4DUqZ+37Z5N5PMVUT2zWKOnIYba
 7rpvvtDewtUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; 
   d="gz'50?scan'50,208,50";a="356691356"
Received: from lkp-server01.sh.intel.com (HELO 77f7a688d8fd) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2020 09:40:16 -0700
Received: from kbuild by 77f7a688d8fd with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kSjp2-0000G2-6U; Wed, 14 Oct 2020 16:40:16 +0000
Date: Thu, 15 Oct 2020 00:39:29 +0800
From: kernel test robot <lkp@intel.com>
To: Kashyap Desai <kashyap.desai@broadcom.com>, linux-scsi@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Kashyap Desai <kashyap.desai@broadcom.com>, dgilbert@interlog.com,
	linux-block@vger.kernel.org
Subject: Re: [PATCH 3/3] scsi_debug: iouring iopoll support
Message-ID: <202010150001.cnQpUNIt-lkp@intel.com>
References: <20201014122734.201426-1-kashyap.desai@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
In-Reply-To: <20201014122734.201426-1-kashyap.desai@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kashyap,

I love your patch! Perhaps something to improve:

[auto build test WARNING on next-20201013]
[cannot apply to scsi/for-next mkp-scsi/for-next v5.9 v5.9-rc8 v5.9-rc7 v5.9]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kashyap-Desai/add-io_uring-with-IOPOLL-support-in-scsi-layer/20201014-202916
base:    f2fb1afc57304f9dd68c20a08270e287470af2eb
config: powerpc64-randconfig-r006-20201014 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project e7fe3c6dfede8d5781bd000741c3dea7088307a4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/a3173d0d1c2ca8a45007fa994f2641aa7262719c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kashyap-Desai/add-io_uring-with-IOPOLL-support-in-scsi-layer/20201014-202916
        git checkout a3173d0d1c2ca8a45007fa994f2641aa7262719c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:29:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:31:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:33:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:35:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:37:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/scsi/scsi_debug.c:32:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:39:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   drivers/scsi/scsi_debug.c:5442:3: error: non-void function 'schedule_resp' should return a value [-Wreturn-type]
                   return;
                   ^
>> drivers/scsi/scsi_debug.c:7246:5: warning: no previous prototype for function 'sdebug_blk_mq_poll' [-Wmissing-prototypes]
   int sdebug_blk_mq_poll(struct Scsi_Host *shost, unsigned int queue_num)
       ^
   drivers/scsi/scsi_debug.c:7246:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int sdebug_blk_mq_poll(struct Scsi_Host *shost, unsigned int queue_num)
   ^
   static 
   7 warnings and 1 error generated.

vim +/sdebug_blk_mq_poll +7246 drivers/scsi/scsi_debug.c

  7245	
> 7246	int sdebug_blk_mq_poll(struct Scsi_Host *shost, unsigned int queue_num)
  7247	{
  7248		int qc_idx;
  7249		int retiring = 0;
  7250		unsigned long iflags;
  7251		struct sdebug_queue *sqp;
  7252		struct sdebug_queued_cmd *sqcp;
  7253		struct scsi_cmnd *scp;
  7254		struct sdebug_dev_info *devip;
  7255		int num_entries = 0;
  7256	
  7257		sqp = sdebug_q_arr + queue_num;
  7258	
  7259		do {
  7260			spin_lock_irqsave(&sqp->qc_lock, iflags);
  7261			qc_idx = find_first_bit(sqp->in_use_bm, sdebug_max_queue);
  7262			if (unlikely((qc_idx < 0) || (qc_idx >= SDEBUG_CANQUEUE)))
  7263				goto out;
  7264	
  7265			sqcp = &sqp->qc_arr[qc_idx];
  7266			scp = sqcp->a_cmnd;
  7267			if (unlikely(scp == NULL)) {
  7268				pr_err("scp is NULL, queue_num=%d, qc_idx=%d from %s\n",
  7269				       queue_num, qc_idx, __func__);
  7270				goto out;
  7271			}
  7272			devip = (struct sdebug_dev_info *)scp->device->hostdata;
  7273			if (likely(devip))
  7274				atomic_dec(&devip->num_in_q);
  7275			else
  7276				pr_err("devip=NULL from %s\n", __func__);
  7277			if (unlikely(atomic_read(&retired_max_queue) > 0))
  7278				retiring = 1;
  7279	
  7280			sqcp->a_cmnd = NULL;
  7281			if (unlikely(!test_and_clear_bit(qc_idx, sqp->in_use_bm))) {
  7282				pr_err("Unexpected completion sqp %p queue_num=%d qc_idx=%d from %s\n",
  7283					sqp, queue_num, qc_idx, __func__);
  7284				goto out;
  7285			}
  7286	
  7287			if (unlikely(retiring)) {	/* user has reduced max_queue */
  7288				int k, retval;
  7289	
  7290				retval = atomic_read(&retired_max_queue);
  7291				if (qc_idx >= retval) {
  7292					pr_err("index %d too large\n", retval);
  7293					goto out;
  7294				}
  7295				k = find_last_bit(sqp->in_use_bm, retval);
  7296				if ((k < sdebug_max_queue) || (k == retval))
  7297					atomic_set(&retired_max_queue, 0);
  7298				else
  7299					atomic_set(&retired_max_queue, k + 1);
  7300			}
  7301			spin_unlock_irqrestore(&sqp->qc_lock, iflags);
  7302			scp->scsi_done(scp); /* callback to mid level */
  7303			num_entries++;
  7304		} while (1);
  7305	
  7306	out:
  7307		spin_unlock_irqrestore(&sqp->qc_lock, iflags);
  7308		return num_entries;
  7309	}
  7310	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010150001.cnQpUNIt-lkp%40intel.com.

--EVF5PPMfhYS0aIcm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--EVF5PPMfhYS0aIcm--
