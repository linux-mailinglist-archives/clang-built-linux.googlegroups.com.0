Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW6CZX6AKGQEFKZ2Y4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E76F629797A
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Oct 2020 01:03:56 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id b2sf2866055plx.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 16:03:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603494235; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrKDTgsMy8VPwUJyytvjp1k7CFO5yGOAkuU4Yp2vp9DWpOrZwquE37nUuftk8WOa2m
         De5QUUBWztgEqyKCpTUTGwtHVxakwemuTECdZ2l8uu7MFU9OtIx7vEMMzkqjlnUYBOw6
         YhWtr0/Wk17x/GfMDM3XIcKxbtGs0UTGGcYPW+BJTI+xx6Hsq5Gvawf2N7RIVyXJZZaS
         YU1KpXAWgfoiMJYzqNBBpf/oISjp3pW+wLLAu85QVAk9Sw08MgfDh0AJnqjteNW5fzYW
         Su03OfrNhmrwTVpFNr1rRRqG0wKuHO049Ia9rmyCOhg1bYw5W7yx04E+j07Z0d9lqw/2
         6Qdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=x6hIRQABVwgqWFV3++t6+5bwcicsVt6SQDRYSDVBhP4=;
        b=E27G5BIWqQ61D5ADtJdUXYLSwtyI8E3Np/Ib13ESOrB32cuvlmH+d53584s+HhHWl3
         brXuBR5FU4l9DBHsyODe3M6rSZeDBD/kGw3xn/Sf/bbH7ggOCdShyRnS/deiACkdR0wl
         E7OTxFyOQ2mttrFrna/F5EuHZUlz8T36BzG0ufxaJVtlZas9K+gToed/h9u2yNuCuqju
         OlYgPBFIObvH56uyIGKZpHpOrWkTPZvK45hg0EpFDCIKwWAUIOs2oU3HWvZLcGlk5qmY
         ivUbmCeCXWQ63wN35bn61Zw846L90FQAwjch/1IY1Beyz2SAdG8UvTFUw/J77nwFaHAb
         BtUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6hIRQABVwgqWFV3++t6+5bwcicsVt6SQDRYSDVBhP4=;
        b=Ujzup2qOEdKbsa96LygDBYPDdaYxCqIQIdDo1iaoZmJvcH6p3kRlnB6qYyFR4GCyK1
         ZQLnOEoer6522RNAjDkeZBKNSBL3Hpej/iw2QPn6eMBBGXC7blroVMIGxbnyh2EHhs9b
         S9bmOpEgrxl5cjOZ2Xq80YhtN/hMRnWbycaEXr0BnGA1luQKS+aDXAI5pazpy/gYv7HH
         n3h4Fkxvtl2vA+bFnKMPKNxLPFh/FXIxX/DKg6LznqhK5/JHoTtJeKAjev1RSSCCrBao
         M/d5bmDVTDKTdmYoV71ZrsrCvC0yPGrejjXu3LlUHmhrECO+FUBvdD4l/aNynoISZ+L0
         q36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6hIRQABVwgqWFV3++t6+5bwcicsVt6SQDRYSDVBhP4=;
        b=SePvKPksCuVq0fB6Nc+zfJ7ownfqSBJ4EN/KF+neAzZP94sQZ/+Df5mGBedD9vryaa
         ietoMV+J9p5Hlx7z7TXccsJ2VTgWjWEzFFnaOBNqaEfahzFmZxUTHX2jeAh6y4PyQ/Hb
         vr/E87qkg3jQiDbDMjimIQlAznF4cjkyk/MF1vlDXpZpZcjHTCiRIIPYDC4VZVaZLMJc
         Kf9XxHtSUgdx4pMaHAALYMRQkpGq2mme9E55yyaQKd+H8X4dgUqLw3d4pQoz3GKiwWWa
         tAkkvLqBdRxIx/aT0sJAt4eyRxEbJWWWKuuyR7QL87UvkR2i7QNPpWHf0s7ILUW/EcsP
         9jrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532H0bctJpUiY3+wYiNoOE7v2nTe0c47s3otmoHY1yfhFAq+87O/
	Ynv74oqW4FzNhPNW8AZFcHM=
X-Google-Smtp-Source: ABdhPJwsnIvbXFGw4yOHy0KNNNJ06dMNQIYljDoAj+HAKpNSdb8rBhs0gE3GVrExn0j0OpR7Q60h/Q==
X-Received: by 2002:a63:f441:: with SMTP id p1mr3636255pgk.243.1603494235429;
        Fri, 23 Oct 2020 16:03:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7607:: with SMTP id k7ls1515708pll.10.gmail; Fri, 23
 Oct 2020 16:03:54 -0700 (PDT)
X-Received: by 2002:a17:90a:b302:: with SMTP id d2mr5329230pjr.57.1603494234737;
        Fri, 23 Oct 2020 16:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603494234; cv=none;
        d=google.com; s=arc-20160816;
        b=PwhB0tycs6oPRwLwkIKJHkO0C8PVcH6by4AAghKeg0K43gecBcr2Et1IM2eajEaBtr
         3rh04UUGPFcu6qfGjPK6esIS1JeOjhEsEi4hFiS7afO7tfijjXrW/ZFHf2iiDI5Dc+So
         NEeab8ZcDPyPd5aoN+McDNYX4EJ75GrY1m9iNTWKX02KwUYufU72ZjZ8LnFn7Buccbme
         Np/Kyx3SBijspQZDjWf7Pk1Ralx2uEOWXKTGTv/DZKK2qYDYUajpD/eC5OZreWCamOTd
         Xe8LkyZ+2/7SxbZ/regTsthidUBIU4mCMkFWTl44vZwY/ua1ZgOS4qGvXsKHVeDVIwuQ
         l5xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=KSioN1N2RwxgAaZ7n3dE47LkDATeIKTUgjyrAteCiDI=;
        b=hB+xeWaeP5n4zkUOI1/Kr5F2JKDY0XTsoH9yNdRdum+BMpGz2SkLIeoyAKVEAsgNqM
         AK6Ar7NskxXGaCae6n05GrCkhCb7p2vNOc+7d8+gLsazPqMZ5r244nXTTFoLJJEvL3MH
         /Zmg4IElKez/h8CxEuqTtnR/zQRqFJ6NUuElxVh+Qk/YHMp9+ks+ZfmL3R+k9lWxIJUr
         SvfdG6gjJHPa4cAKG46IXUt//ikCnnFKic1xQXSyn/wKCK2VjCtPPd5CDdT0CouIgqhq
         AJILLI2snZaBEcjmXoCostt+ZxWa4h+bBbetu46skrHLJvRd+9jyk3b5nhgr7kpvQCGl
         lPjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l11si218012pgt.3.2020.10.23.16.03.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 16:03:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: JoPjaz62D4VMvrsxrLY9js1tdomd8UIzp/7jhSe3HayM4gPX20MMOP1CldIwrzf222rtu0Cnpz
 7Cgq354RFeZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="155526585"
X-IronPort-AV: E=Sophos;i="5.77,410,1596524400"; 
   d="gz'50?scan'50,208,50";a="155526585"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 16:03:53 -0700
IronPort-SDR: lTYi+NioBpx9k+2kSxskBRNUom0/2socWKJw3qP2QXA3pDa4g83dBi52rW2SItfpN+juUP0m+t
 W9WkVVyB3CLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,410,1596524400"; 
   d="gz'50?scan'50,208,50";a="333445620"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Oct 2020 16:03:50 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kW66A-0000Ev-6v; Fri, 23 Oct 2020 23:03:50 +0000
Date: Sat, 24 Oct 2020 07:03:31 +0800
From: kernel test robot <lkp@intel.com>
To: Tom Zanussi <zanussi@kernel.org>, rostedt@goodmis.org,
	axelrasmussen@google.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	mhiramat@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] tracing/dynevent: Delegate parsing to create
 function
Message-ID: <202010240628.lfx3JvJn-lkp@intel.com>
References: <af206cdc069b1de4670c0a27458eb98263eaf84e.1603484117.git.zanussi@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <af206cdc069b1de4670c0a27458eb98263eaf84e.1603484117.git.zanussi@kernel.org>
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Tom,

I love your patch! Perhaps something to improve:

[auto build test WARNING on trace/for-next]
[also build test WARNING on linus/master next-20201023]
[cannot apply to tip/perf/core linux/master v5.9]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Tom-Zanussi/tracing-More-synthetic-event-error-fixes/20201024-043714
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git for-next
config: s390-randconfig-r031-20201022 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 147b9497e79a98a8614b2b5eb4ba653b44f6b6f0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/10ea63ba8aed09b6b543d606de36b21d0d2b7b88
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Tom-Zanussi/tracing-More-synthetic-event-error-fixes/20201024-043714
        git checkout 10ea63ba8aed09b6b543d606de36b21d0d2b7b88
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from kernel/trace/trace_events_synth.c:21:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from kernel/trace/trace_events_synth.c:21:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from kernel/trace/trace_events_synth.c:21:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from kernel/trace/trace_events_synth.c:21:
   In file included from kernel/trace/trace_synth.h:5:
   In file included from kernel/trace/trace_dynevent.h:14:
   In file included from kernel/trace/trace.h:9:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> kernel/trace/trace_events_synth.c:1211:3: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
                   i += consumed - 1;
                   ^
   kernel/trace/trace_events_synth.c:1146:7: note: initialize the variable 'i' to silence this warning
           int i, argc, consumed = 0, n_fields = 0, ret = 0;
                ^
                 = 0
   21 warnings generated.

vim +/i +1211 kernel/trace/trace_events_synth.c

726721a51838e39 Tom Zanussi      2020-05-28  1143  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1144  static int __create_synth_event(const char *name, const char *raw_fields)
726721a51838e39 Tom Zanussi      2020-05-28  1145  {
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1146  	int i, argc, consumed = 0, n_fields = 0, ret = 0;
726721a51838e39 Tom Zanussi      2020-05-28  1147  	struct synth_field *field, *fields[SYNTH_FIELDS_MAX];
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1148  	char **argv, *field_str, *tmp_fields, *saved_fields = NULL;
726721a51838e39 Tom Zanussi      2020-05-28  1149  	struct synth_event *event = NULL;
d4d704637d935ef Tom Zanussi      2020-10-13  1150  
726721a51838e39 Tom Zanussi      2020-05-28  1151  	/*
726721a51838e39 Tom Zanussi      2020-05-28  1152  	 * Argument syntax:
726721a51838e39 Tom Zanussi      2020-05-28  1153  	 *  - Add synthetic event: <event_name> field[;field] ...
726721a51838e39 Tom Zanussi      2020-05-28  1154  	 *  - Remove synthetic event: !<event_name> field[;field] ...
726721a51838e39 Tom Zanussi      2020-05-28  1155  	 *      where 'field' = type field_name
726721a51838e39 Tom Zanussi      2020-05-28  1156  	 */
726721a51838e39 Tom Zanussi      2020-05-28  1157  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1158  	mutex_lock(&event_mutex);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1159  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1160  	if (name[0] == '\0') {
d4d704637d935ef Tom Zanussi      2020-10-13  1161  		synth_err(SYNTH_ERR_CMD_INCOMPLETE, 0);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1162  		ret = -EINVAL;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1163  		goto out;
d4d704637d935ef Tom Zanussi      2020-10-13  1164  	}
726721a51838e39 Tom Zanussi      2020-05-28  1165  
9bbb33291f8e448 Tom Zanussi      2020-10-13  1166  	if (!is_good_name(name)) {
d4d704637d935ef Tom Zanussi      2020-10-13  1167  		synth_err(SYNTH_ERR_BAD_NAME, errpos(name));
9bbb33291f8e448 Tom Zanussi      2020-10-13  1168  		ret = -EINVAL;
9bbb33291f8e448 Tom Zanussi      2020-10-13  1169  		goto out;
9bbb33291f8e448 Tom Zanussi      2020-10-13  1170  	}
9bbb33291f8e448 Tom Zanussi      2020-10-13  1171  
726721a51838e39 Tom Zanussi      2020-05-28  1172  	event = find_synth_event(name);
726721a51838e39 Tom Zanussi      2020-05-28  1173  	if (event) {
d4d704637d935ef Tom Zanussi      2020-10-13  1174  		synth_err(SYNTH_ERR_EVENT_EXISTS, errpos(name));
726721a51838e39 Tom Zanussi      2020-05-28  1175  		ret = -EEXIST;
726721a51838e39 Tom Zanussi      2020-05-28  1176  		goto out;
726721a51838e39 Tom Zanussi      2020-05-28  1177  	}
726721a51838e39 Tom Zanussi      2020-05-28  1178  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1179  	tmp_fields = saved_fields = kstrdup(raw_fields, GFP_KERNEL);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1180  	if (!tmp_fields) {
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1181  		ret = -ENOMEM;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1182  		goto out;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1183  	}
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1184  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1185  	while ((field_str = strsep(&tmp_fields, ";")) != NULL) {
726721a51838e39 Tom Zanussi      2020-05-28  1186  		if (n_fields == SYNTH_FIELDS_MAX) {
d4d704637d935ef Tom Zanussi      2020-10-13  1187  			synth_err(SYNTH_ERR_TOO_MANY_FIELDS, 0);
726721a51838e39 Tom Zanussi      2020-05-28  1188  			ret = -EINVAL;
726721a51838e39 Tom Zanussi      2020-05-28  1189  			goto err;
726721a51838e39 Tom Zanussi      2020-05-28  1190  		}
726721a51838e39 Tom Zanussi      2020-05-28  1191  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1192  		argv = argv_split(GFP_KERNEL, field_str, &argc);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1193  		if (!argv) {
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1194  			ret = -ENOMEM;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1195  			goto err;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1196  		}
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1197  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1198  		if (!argc)
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1199  			continue;
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1200  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1201  		field = parse_synth_field(argc, argv);
726721a51838e39 Tom Zanussi      2020-05-28  1202  		if (IS_ERR(field)) {
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1203  			argv_free(argv);
726721a51838e39 Tom Zanussi      2020-05-28  1204  			ret = PTR_ERR(field);
726721a51838e39 Tom Zanussi      2020-05-28  1205  			goto err;
726721a51838e39 Tom Zanussi      2020-05-28  1206  		}
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1207  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1208  		argv_free(argv);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1209  
726721a51838e39 Tom Zanussi      2020-05-28  1210  		fields[n_fields++] = field;
726721a51838e39 Tom Zanussi      2020-05-28 @1211  		i += consumed - 1;
726721a51838e39 Tom Zanussi      2020-05-28  1212  	}
726721a51838e39 Tom Zanussi      2020-05-28  1213  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1214  	if (n_fields == 0) {
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1215  		synth_err(SYNTH_ERR_CMD_INCOMPLETE, 0);
726721a51838e39 Tom Zanussi      2020-05-28  1216  		ret = -EINVAL;
726721a51838e39 Tom Zanussi      2020-05-28  1217  		goto err;
726721a51838e39 Tom Zanussi      2020-05-28  1218  	}
726721a51838e39 Tom Zanussi      2020-05-28  1219  
726721a51838e39 Tom Zanussi      2020-05-28  1220  	event = alloc_synth_event(name, n_fields, fields);
726721a51838e39 Tom Zanussi      2020-05-28  1221  	if (IS_ERR(event)) {
726721a51838e39 Tom Zanussi      2020-05-28  1222  		ret = PTR_ERR(event);
726721a51838e39 Tom Zanussi      2020-05-28  1223  		event = NULL;
726721a51838e39 Tom Zanussi      2020-05-28  1224  		goto err;
726721a51838e39 Tom Zanussi      2020-05-28  1225  	}
726721a51838e39 Tom Zanussi      2020-05-28  1226  	ret = register_synth_event(event);
726721a51838e39 Tom Zanussi      2020-05-28  1227  	if (!ret)
726721a51838e39 Tom Zanussi      2020-05-28  1228  		dyn_event_add(&event->devent);
726721a51838e39 Tom Zanussi      2020-05-28  1229  	else
726721a51838e39 Tom Zanussi      2020-05-28  1230  		free_synth_event(event);
726721a51838e39 Tom Zanussi      2020-05-28  1231   out:
726721a51838e39 Tom Zanussi      2020-05-28  1232  	mutex_unlock(&event_mutex);
726721a51838e39 Tom Zanussi      2020-05-28  1233  
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1234  	kfree(saved_fields);
10ea63ba8aed09b Masami Hiramatsu 2020-10-23  1235  
726721a51838e39 Tom Zanussi      2020-05-28  1236  	return ret;
726721a51838e39 Tom Zanussi      2020-05-28  1237   err:
726721a51838e39 Tom Zanussi      2020-05-28  1238  	for (i = 0; i < n_fields; i++)
726721a51838e39 Tom Zanussi      2020-05-28  1239  		free_synth_field(fields[i]);
726721a51838e39 Tom Zanussi      2020-05-28  1240  
726721a51838e39 Tom Zanussi      2020-05-28  1241  	goto out;
726721a51838e39 Tom Zanussi      2020-05-28  1242  }
726721a51838e39 Tom Zanussi      2020-05-28  1243  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010240628.lfx3JvJn-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
