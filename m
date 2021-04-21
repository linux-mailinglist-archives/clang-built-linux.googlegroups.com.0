Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVHP7WBQMGQEFQB5S7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2E9366334
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 02:54:45 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061sf597642qvb.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 17:54:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618966485; cv=pass;
        d=google.com; s=arc-20160816;
        b=abwba+Psa22krlKT2FkxeHickPwYMwwT7K8D6fCI4UDyHgnkfBjwRarL7UnkAr7Mhf
         ZC8QsUT+fouCmcB+n7RyKgx4Jm9LnwK6BiU8YqhfNuG45Bf25KB7bbd2qhF+dEQDAEJw
         IIYKCv43PnlcE4dH7osk0Pdm2m/X4/k1P9R4D9OLk69nbK4IaF8QWA/v7QGL2Vt7FXOc
         3eMm6xAeCRkoT4r8TQct9UYKnenfibsmTzPUBzy6XDNAh1QL/uOW6V3AsrZIlfQfzHPD
         wWvub/w7YA70SYXSbPf9Y4kniwBZjtBBcRNx20Wizb58Hd0tUHDn7WyG/cKZvLncAw5c
         jKVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=VeElG6NL55rpXu1OSR4zHuq7xvg5/zE1U/TnVZlAU9s=;
        b=ITPUKp5sXWdpL3BvhF+kGID1+DGzsanF4HgBer4uRzDt3S3ZGCruchJgPS7wOvzAZg
         ubJCWDT+Nh9CNZHGqwqMNk5ZcMQR8J25H1Z0y0IISBGTc0ecslpgbEFLpicQIG4fFcDo
         C/q/c/3zUvo2kFUiWxlioM/eqWBY0N2Q+oWD1gEDQlebsuii9AvZ28SSxvs/ztxcXt0m
         F/bB4T55ISoBQk2n3o/hrxW/G8s/vnpPsuv0QAz3jWE9tRNzdNJBZJk0dkdLFsJPVRlh
         b49O1uX7LS2GypDMCR6R9eVbaPPtfaRyS8yhpjBUCpfcV105qFguMoZbQi6RucyuIHOn
         S+ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VeElG6NL55rpXu1OSR4zHuq7xvg5/zE1U/TnVZlAU9s=;
        b=jwPzCNDyYQkQ/G5p23sPbRcIKmJNr0qRKyHduZK9Y0Jm+fE3KLs9/5uO1CPGLmZIBz
         McpBdnnZVj0gzTTxhoQGbviJtdy27Gtxmov2f/7kycur56HzScYddkOip7k9EKvSLAo1
         Kthwz6Tpn7nV+zSlWDb5naO5z5SMlQ9vbuER6OKcnlnvBUwIE34S8ER/hXR6aG8MgnEL
         wgibVGx0xG0xVOmoJ4OVlZUXytZ98LNyeqpDD3vf639C3zBN2oNQcoTv0CcQ+/ly/Mna
         NsiHMuN9eQDIXqINaf8n1zX/mTvPq40h+dLlJuId80+sbnPRhdy7p8pPBIUwfDgWn/O+
         FhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VeElG6NL55rpXu1OSR4zHuq7xvg5/zE1U/TnVZlAU9s=;
        b=TqvXZ9dBuQmPOfFEueC6EE3/Hbqh8xfo+rWG3C1b4FHoVgzTF7xmYcvE4oELft8Iee
         aAdMjjixaLY8KV2lhi86uot9FoVyPRiFn15OlYBBPVoL+54OVzUWYy4zjMCNCWU2+j7d
         FRSag/UZklMXoN6vRK7VUGV2XRFPEuEBuBhK35M6Od9FmdqyXNbQ/L9m65i/ZsZ1dcLq
         yDUUTGLvVILVOFfGH8xJBQHJ4aiLR80KYzLy8mUjuemk1kh5FVrP5ONx/2oHDR1eZ4o6
         29JfiG+W1BKtFNFHaHj1tOMCzi3I4OJyxARvX0RS3BBVvSz+CbjdVBoPUwxKGyjXf+N/
         OYjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530upYx2SFWry7swkv5kiZs6Uo1OK40XVYy5iIOUp/4/z6iiGgDi
	3nfUjpXRlnR0iPYuzXxI2ao=
X-Google-Smtp-Source: ABdhPJxBnM0Us0qspGP4z4zgCsJhoALfJfET+O4sLtOk8RoXDFkAVYPieKJa4bZTDfZJVPt56j0nUg==
X-Received: by 2002:a05:620a:44ce:: with SMTP id y14mr20230944qkp.171.1618966484881;
        Tue, 20 Apr 2021 17:54:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:142e:: with SMTP id k14ls273405qkj.6.gmail; Tue, 20
 Apr 2021 17:54:44 -0700 (PDT)
X-Received: by 2002:a37:ae85:: with SMTP id x127mr20116315qke.436.1618966484407;
        Tue, 20 Apr 2021 17:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618966484; cv=none;
        d=google.com; s=arc-20160816;
        b=I0MJ8Z7+h4alyZdQI56Wqg8UQfxXvCQceyh6brqEpFU7SgwPeIz1a6DDSWvDr+jtXK
         nGeqwdI3X9AUDtiPYaS31oZ63QXGpiHYESV4bMwxNv43auUMVCFnZ24aMTu86g+NT+em
         GyQBjfTjS9VkTrLr9Jil74vYFA33GiuiuVHtUBh1FF+QObCqQuxRDy5KKxrSfUfYj01Y
         1xkPc94p9sXTmUVqklC64XPq7+qTSJMJkYyEFQMzHMg7EloblA3GXlVWNe+FbMVrc1lN
         klFmwIvgwR/qfKCP22R8bB/PIoOZUDIPJ1Jm1D8HVsko0dnkWx97hp40L9munKAsbYuL
         aYDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=8poREDVcbdNN2EJbZxCdr3B2WlXCOEtwc7I8VvsQEOk=;
        b=ZMYKLhMC/UWhygte7tzShh1DraVCky0TMrKIP9hpCIL6lBBGh1AvmZTmQBHUZwOypN
         4c1YjqhEtWU9JhQ6NkV1emNylywDx4M6UGPq80pWXaLlDoIMv14/2UYJoH55Pc2X8x5m
         GxcKhq5a5zHgCQL4NqScFsS/FVcJthOMYqsvnwAEHvnL2jO9+bxYB1YW0HFtbvlC3CMx
         fbGkc5uncp+kdfHNP0WFy2MFYPINShc05XycnjGjw27ssGQxrBn4O9HahP/e9dLzqvtg
         NcFQd3kADU6PkU1r6g5Jhe5zGgHSfyrK91e8v6vcBgM+/ofBVcLzT8D/aTXaXNxwxf5Z
         OeIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id y8si40924qti.5.2021.04.20.17.54.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 17:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: JXNfuKNtCRlbDLjC0XSVMDtSRl7WLX+qpxJbssJlbjeIpRuQgRKGmiJ/Q9qx05/2c4NB+DS15U
 yKMlPHcOpYng==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="259574825"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; 
   d="gz'50?scan'50,208,50";a="259574825"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2021 17:54:42 -0700
IronPort-SDR: 9JcT6fMn9vYnyqh/Jklg6Z0jVZXg5auYG72kiHsYYoN5UWV9QhC+HgWgRdcYTnF2ymDfNbhSp3
 QETVMdloLp5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; 
   d="gz'50?scan'50,208,50";a="427311621"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 20 Apr 2021 17:54:40 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZ18a-0003DB-0e; Wed, 21 Apr 2021 00:54:40 +0000
Date: Wed, 21 Apr 2021 08:53:51 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Vincent Donnefort <vincent.donnefort@arm.com>
Subject: [peterz-queue:sched/core 5/5] kernel/cpu.c:475:16: error: use of
 undeclared identifier 'cpu'
Message-ID: <202104210848.W4UaH6V7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
head:   f9768f96aa02d96ebce832c1e0a597448f1f4478
commit: f9768f96aa02d96ebce832c1e0a597448f1f4478 [5/5] cpumask/hotplug: Fix cpu_dying() state tracking
config: s390-randconfig-r033-20210420 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ca8eef7e3da8f750d7c7aa004fe426d1d34787ea)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=f9768f96aa02d96ebce832c1e0a597448f1f4478
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue sched/core
        git checkout f9768f96aa02d96ebce832c1e0a597448f1f4478
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/cpu.c:13:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/cpu.c:13:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/cpu.c:13:
   In file included from include/linux/sched/isolation.h:6:
   In file included from include/linux/tick.h:8:
   In file included from include/linux/clockchips.h:14:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/s390/include/asm/io.h:80:
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
>> kernel/cpu.c:475:16: error: use of undeclared identifier 'cpu'
           if (cpu_dying(cpu) != !bringup)
                         ^
   kernel/cpu.c:476:17: error: use of undeclared identifier 'cpu'
                   set_cpu_dying(cpu, !bringup);
                                 ^
   kernel/cpu.c:509:16: error: use of undeclared identifier 'cpu'
           if (cpu_dying(cpu) != !bringup)
                         ^
   kernel/cpu.c:510:17: error: use of undeclared identifier 'cpu'
                   set_cpu_dying(cpu, !bringup);
                                 ^
   12 warnings and 4 errors generated.


vim +/cpu +475 kernel/cpu.c

   462	
   463	static inline enum cpuhp_state
   464	cpuhp_set_state(struct cpuhp_cpu_state *st, enum cpuhp_state target)
   465	{
   466		enum cpuhp_state prev_state = st->state;
   467		bool bringup = st->state < target;
   468	
   469		st->rollback = false;
   470		st->last = NULL;
   471	
   472		st->target = target;
   473		st->single = false;
   474		st->bringup = bringup;
 > 475		if (cpu_dying(cpu) != !bringup)
   476			set_cpu_dying(cpu, !bringup);
   477	
   478		return prev_state;
   479	}
   480	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104210848.W4UaH6V7-lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
bMwAAA==

--HcAYCG3uE/tztfnV--
