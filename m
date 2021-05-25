Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVHRWWCQMGQES3APQCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DBF390C1D
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 00:23:18 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w3-20020a170902d103b02900f057b7e766sf15404934plw.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621981396; cv=pass;
        d=google.com; s=arc-20160816;
        b=zAlalg3N05ey2kcCbnd8ZtQunG/48t1lxBrRAJKVN6XbJgw4SBtuC/Dz3Os+b8NF/W
         nNG8FnFwpUXuUF/ESpWKFpt3vJi13MUQCy5Tnw6aAzjm/yRShQB11cYCDgsPZMpMWbP4
         KHC6Mte8PBcIAVCL25jgiav5K/fp4gXrHZtEHyIgtJ5mepkAmSnvvdlqgiUrVNPgtJT3
         HRoVhEe5PLrG++K7LIOLIldQkusD9JWkyYYSwJELbtu2B1JtyE1QazZAp1TXFrgKIaSW
         4RV27uHXfy+jqyRGHdvqGzVYxOoMcei7yBIgcApEw4iJOeGP1D+dFZiv9pvH+x+sMf29
         gF5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=mJMhshcZ+L2Bwwhf0BAmGlvoAeyovEqrziRYPKirb40=;
        b=VR67lh51iwodlKfcv8dcaUguuRUS3eT+XdBKR6wGjxDOXOrfKjDHLI4/NwWDzn/6xR
         HRJVJIHH/60/XvZPj0h+bBLyF9+54Zn+NC4EXIDi/Mc5n+XDZKQqhDRD3Av879u3J1p7
         6KxoJIL7jSHK8L+jxOJqN29JGB+66fuqAtZZz+ohVPDchOIbG4gsByeV06GlQIq04xsp
         JVaDk0/blqdkh9eCi1NRSctgYcDfr5hO4P3eXd9feiFXqGvJVVYYjsJEfppPH+cQS9CV
         D86ZYHqTOp0Cn7cXkmllujIm1NP8JtEOJkcttqI2K+sW+kaRVuXy1UXnzxOGMaEdRM7/
         t+zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJMhshcZ+L2Bwwhf0BAmGlvoAeyovEqrziRYPKirb40=;
        b=EDHm1Q/b7ZacaoGkR4pC8RbIllZn78fGvfQ+lqOuXKjxBsb8FcUYOUFaJ+SzupIBib
         ngSDscP0MF6b0wbV3vyFt+UC2BQhA1xMd5D4HM5/n2knoVcSL77qdrU4iLj/BPycYlF7
         C9viG9gpUuyHyGXllQqUfC2VN5Jyy7tllode5pU9hsC7PBFhTODBiHjhtxN8Dj6BxZ1R
         rYckQYST0DerPy+9T2dUeGsVTBpZnAS74lp2RT4ePKe1G16o9tW8dLlY4IYgA/gkmerC
         WIldqfBr70OP5Kh0RJzMEzwEOl7WkSbjYiYizni//2PMDvhbIrYq7a7mvHm+wkYpJUwc
         jmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJMhshcZ+L2Bwwhf0BAmGlvoAeyovEqrziRYPKirb40=;
        b=Imt6faMsKe3QrpqCDElWf8xOuts2UsVKUd8HNNSzvgtHXOaUeUY6vejGFjAlKlwnxH
         PF7ttK0/sNCkG1VBYvUCTHgwR75Zc5hKB6qvsXd9p9ta5AoX2m+RedqQidC2zSyLbi4j
         7YlUqh63J1ibnG3+SOcaBfLnYkemTyhxFQduovfyUmFZxHyJGuWqYTUw8uZW55rPsh1X
         fIWLg8eOvZii2h3ihDbg2toxZyyJATtXsrnoNIAT0agVD1xNM08nTrEYFMhGpSJ95uGq
         usxIuDmDx3/rS6HdzqgwqDARXmGm/cH4bU4Vr9nj/ZFoEMHc6E6kYQJonpwXse5qZg22
         KrrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pi+dqNI1dTWKhNssr0trlyP2VyAUCzQ9/gq9OiQanDxSiJng0
	19UAN94ZaFSe2vMcjyAeX4w=
X-Google-Smtp-Source: ABdhPJywtgsEUWF64/oxm0EeLuS0kcKT+6usENjk33rC3VHA9e39o2R+5UUGqD+NviC5rlxvXTKmDg==
X-Received: by 2002:a63:d245:: with SMTP id t5mr21129129pgi.172.1621981396547;
        Tue, 25 May 2021 15:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ce82:: with SMTP id f2ls11136505plg.1.gmail; Tue, 25
 May 2021 15:23:16 -0700 (PDT)
X-Received: by 2002:a17:90a:be12:: with SMTP id a18mr1459034pjs.187.1621981395739;
        Tue, 25 May 2021 15:23:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621981395; cv=none;
        d=google.com; s=arc-20160816;
        b=cDDVwMyMEIJsry6DXW9mA3/XvcoUGcm0vjTxkesBnxoVBavyz82Whp+zgr7tpIt4nB
         0cH6XX/ROImsvV7P898zpW4tdVgEvxNWLyknu/ByGYX9HRRT6iV6XM14yNt4Xz1T8Zgy
         NT2ZXbG+U8fysDW+vjf3Q8WINEruVicqlS167G0m3o0Id0TuT5LslD7J25SAvADyNRFM
         ZiLpfZIouATwww4CMWT5Aus9ONWjR9AK6PkIQKinsUgveiczp22IUnr7J3/e22631pxj
         fOuSbUMZoVcco4nSzbek6fT19dyZL2NjxHlsHuISATdnsHuzk3gf9Mp7ZZSpKNuwUrrj
         0Jtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=s9XFoKdtMqB0X02ng1PweMietWwvWd2EatbHuexvI1Y=;
        b=pxgNVA3728vKmTjBaCWfkX4wpapPbuGcfgVb+BHOtcwvqgkqCC28kiKq2Kbf5L5hOy
         6vrI6tw7ci+JZIseb+RtgrXCmZzc7IqFp3l8WoHxRVOC4SXTHxQ9paHNtaZki2/HWTxy
         sq1KxZZWopDl1RV8Z2JNAi08cIO+9Ip747UU3EEkPBQT3VdzY4QLKMnU72T6xHfqJjE8
         Qbm+XDYYLB6PbGRoFTP79v6OxLykf78VfY9LMJz74Ist+8zeWiOuyGBbZWwW1rEqCf69
         4DvKDrbtL8Tsh/K9DYbLQc2E/mj0jSc6a8FdTGCZT4gev6fL1Brqh00C/BFB3XGlXks3
         cXbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id b18si471901pfl.1.2021.05.25.15.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 15:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: bdGnnYF6RqnnnJ5z4Ld6RufKNajf3CzQSP04fLqkzM+TSUmlxoPNcdiEW9AIsUO8vBOxdA7ivH
 k0Ey1Eyb6Ocw==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202074425"
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; 
   d="gz'50?scan'50,208,50";a="202074425"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2021 15:23:14 -0700
IronPort-SDR: zCV4oFgOVpqufNf6ULd8oG6JeHh2r83nFA6eN2S2OEJuHVEYhmopoLfGzzriNKQ/NE09ejiXqe
 qIlEXUuzIvrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,329,1613462400"; 
   d="gz'50?scan'50,208,50";a="443631108"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 25 May 2021 15:23:09 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1llfS9-0001r8-5e; Tue, 25 May 2021 22:23:09 +0000
Date: Wed, 26 May 2021 06:22:59 +0800
From: kernel test robot <lkp@intel.com>
To: Marco Elver <elver@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, ojeda@kernel.org, keescook@chromium.org,
	akpm@linux-foundation.org, will@kernel.org, ardb@kernel.org,
	luc.vanoostenryck@gmail.com
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all
 architectures
Message-ID: <202105260629.X6n5yc4D-lkp@intel.com>
References: <20210525175819.699786-1-elver@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
In-Reply-To: <20210525175819.699786-1-elver@google.com>
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Marco,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linux/master]
[also build test WARNING on kees/for-next/pstore linus/master v5.13-rc3 next-20210525]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Marco-Elver/kcov-add-__no_sanitize_coverage-to-fix-noinstr-for-all-architectures/20210526-020046
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git dd860052c99b1e088352bdd4fb7aef46f8d2ef47
config: s390-randconfig-r002-20210525 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/d898fa12bc72a46da1b9466bb7f8369949b714a9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Marco-Elver/kcov-add-__no_sanitize_coverage-to-fix-noinstr-for-all-architectures/20210526-020046
        git checkout d898fa12bc72a46da1b9466bb7f8369949b714a9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/traps.c:29:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/traps.c:29:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from arch/s390/kernel/traps.c:29:
   include/linux/entry-common.h:450:18: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   irqentry_state_t noinstr irqentry_enter(struct pt_regs *regs);
                    ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/traps.c:29:
   include/linux/entry-common.h:476:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr irqentry_exit(struct pt_regs *regs, irqentry_state_t state);
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/traps.c:29:
   include/linux/entry-common.h:484:18: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   irqentry_state_t noinstr irqentry_nmi_enter(struct pt_regs *regs);
                    ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/traps.c:29:
   include/linux/entry-common.h:495:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr irqentry_nmi_exit(struct pt_regs *regs, irqentry_state_t irq_state);
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
>> arch/s390/kernel/traps.c:299:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr __do_pgm_check(struct pt_regs *regs)
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   17 warnings generated.
--
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from arch/s390/kernel/syscall.c:34:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/syscall.c:34:
   In file included from include/linux/entry-common.h:6:
   In file included from include/linux/tracehook.h:50:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from arch/s390/kernel/syscall.c:34:
   include/linux/entry-common.h:450:18: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   irqentry_state_t noinstr irqentry_enter(struct pt_regs *regs);
                    ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/syscall.c:34:
   include/linux/entry-common.h:476:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr irqentry_exit(struct pt_regs *regs, irqentry_state_t state);
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/syscall.c:34:
   include/linux/entry-common.h:484:18: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   irqentry_state_t noinstr irqentry_nmi_enter(struct pt_regs *regs);
                    ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   In file included from arch/s390/kernel/syscall.c:34:
   include/linux/entry-common.h:495:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr irqentry_nmi_exit(struct pt_regs *regs, irqentry_state_t irq_state);
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
>> arch/s390/kernel/syscall.c:143:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr __do_syscall(struct pt_regs *regs, int per_trap)
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   17 warnings generated.
--
   In file included from arch/s390/kernel/nmi.c:33:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
   In file included from arch/s390/kernel/nmi.c:33:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from arch/s390/kernel/nmi.c:33:
   In file included from include/linux/kvm_host.h:33:
   In file included from include/linux/kvm_para.h:5:
   In file included from include/uapi/linux/kvm_para.h:36:
   In file included from arch/s390/include/asm/kvm_para.h:25:
   In file included from arch/s390/include/asm/diag.h:12:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
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
>> arch/s390/kernel/nmi.c:182:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
   void noinstr s390_handle_mcck(void)
        ^
   include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
           __no_kcsan __no_sanitize_address __no_sanitize_coverage
                                            ^
   include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
   #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
                                                             ^
   13 warnings generated.
..


vim +/coverage +299 arch/s390/kernel/traps.c

6f8daa2953ecd1 Heiko Carstens 2021-04-07  298  
56e62a73702836 Sven Schnelle  2020-11-21 @299  void noinstr __do_pgm_check(struct pt_regs *regs)
56e62a73702836 Sven Schnelle  2020-11-21  300  {
56e62a73702836 Sven Schnelle  2020-11-21  301  	unsigned long last_break = S390_lowcore.breaking_event_addr;
56e62a73702836 Sven Schnelle  2020-11-21  302  	unsigned int trapnr, syscall_redirect = 0;
56e62a73702836 Sven Schnelle  2020-11-21  303  	irqentry_state_t state;
56e62a73702836 Sven Schnelle  2020-11-21  304  
bae1cd368c45d1 Sven Schnelle  2021-04-29  305  	add_random_kstack_offset();
56e62a73702836 Sven Schnelle  2020-11-21  306  	regs->int_code = *(u32 *)&S390_lowcore.pgm_ilc;
56e62a73702836 Sven Schnelle  2020-11-21  307  	regs->int_parm_long = S390_lowcore.trans_exc_code;
56e62a73702836 Sven Schnelle  2020-11-21  308  
56e62a73702836 Sven Schnelle  2020-11-21  309  	state = irqentry_enter(regs);
56e62a73702836 Sven Schnelle  2020-11-21  310  
56e62a73702836 Sven Schnelle  2020-11-21  311  	if (user_mode(regs)) {
56e62a73702836 Sven Schnelle  2020-11-21  312  		update_timer_sys();
56e62a73702836 Sven Schnelle  2020-11-21  313  		if (last_break < 4096)
56e62a73702836 Sven Schnelle  2020-11-21  314  			last_break = 1;
56e62a73702836 Sven Schnelle  2020-11-21  315  		current->thread.last_break = last_break;
56e62a73702836 Sven Schnelle  2020-11-21  316  		regs->args[0] = last_break;
56e62a73702836 Sven Schnelle  2020-11-21  317  	}
56e62a73702836 Sven Schnelle  2020-11-21  318  
56e62a73702836 Sven Schnelle  2020-11-21  319  	if (S390_lowcore.pgm_code & 0x0200) {
56e62a73702836 Sven Schnelle  2020-11-21  320  		/* transaction abort */
56e62a73702836 Sven Schnelle  2020-11-21  321  		memcpy(&current->thread.trap_tdb, &S390_lowcore.pgm_tdb, 256);
56e62a73702836 Sven Schnelle  2020-11-21  322  	}
56e62a73702836 Sven Schnelle  2020-11-21  323  
56e62a73702836 Sven Schnelle  2020-11-21  324  	if (S390_lowcore.pgm_code & PGM_INT_CODE_PER) {
56e62a73702836 Sven Schnelle  2020-11-21  325  		if (user_mode(regs)) {
56e62a73702836 Sven Schnelle  2020-11-21  326  			struct per_event *ev = &current->thread.per_event;
56e62a73702836 Sven Schnelle  2020-11-21  327  
56e62a73702836 Sven Schnelle  2020-11-21  328  			set_thread_flag(TIF_PER_TRAP);
56e62a73702836 Sven Schnelle  2020-11-21  329  			ev->address = S390_lowcore.per_address;
56e62a73702836 Sven Schnelle  2020-11-21  330  			ev->cause = *(u16 *)&S390_lowcore.per_code;
56e62a73702836 Sven Schnelle  2020-11-21  331  			ev->paid = S390_lowcore.per_access_id;
56e62a73702836 Sven Schnelle  2020-11-21  332  		} else {
56e62a73702836 Sven Schnelle  2020-11-21  333  			/* PER event in kernel is kprobes */
56e62a73702836 Sven Schnelle  2020-11-21  334  			__arch_local_irq_ssm(regs->psw.mask & ~PSW_MASK_PER);
56e62a73702836 Sven Schnelle  2020-11-21  335  			do_per_trap(regs);
56e62a73702836 Sven Schnelle  2020-11-21  336  			goto out;
56e62a73702836 Sven Schnelle  2020-11-21  337  		}
56e62a73702836 Sven Schnelle  2020-11-21  338  	}
56e62a73702836 Sven Schnelle  2020-11-21  339  
56e62a73702836 Sven Schnelle  2020-11-21  340  	if (!irqs_disabled_flags(regs->psw.mask))
56e62a73702836 Sven Schnelle  2020-11-21  341  		trace_hardirqs_on();
56e62a73702836 Sven Schnelle  2020-11-21  342  	__arch_local_irq_ssm(regs->psw.mask & ~PSW_MASK_PER);
56e62a73702836 Sven Schnelle  2020-11-21  343  
56e62a73702836 Sven Schnelle  2020-11-21  344  	trapnr = regs->int_code & PGM_INT_CODE_MASK;
56e62a73702836 Sven Schnelle  2020-11-21  345  	if (trapnr)
56e62a73702836 Sven Schnelle  2020-11-21  346  		pgm_check_table[trapnr](regs);
56e62a73702836 Sven Schnelle  2020-11-21  347  	syscall_redirect = user_mode(regs) && test_pt_regs_flag(regs, PIF_SYSCALL);
56e62a73702836 Sven Schnelle  2020-11-21  348  out:
56e62a73702836 Sven Schnelle  2020-11-21  349  	local_irq_disable();
56e62a73702836 Sven Schnelle  2020-11-21  350  	irqentry_exit(regs, state);
56e62a73702836 Sven Schnelle  2020-11-21  351  
56e62a73702836 Sven Schnelle  2020-11-21  352  	if (syscall_redirect) {
56e62a73702836 Sven Schnelle  2020-11-21  353  		enter_from_user_mode(regs);
56e62a73702836 Sven Schnelle  2020-11-21  354  		local_irq_enable();
56e62a73702836 Sven Schnelle  2020-11-21  355  		regs->orig_gpr2 = regs->gprs[2];
56e62a73702836 Sven Schnelle  2020-11-21  356  		do_syscall(regs);
56e62a73702836 Sven Schnelle  2020-11-21  357  		exit_to_user_mode();
56e62a73702836 Sven Schnelle  2020-11-21  358  	}
56e62a73702836 Sven Schnelle  2020-11-21  359  }
6f8daa2953ecd1 Heiko Carstens 2021-04-07  360  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105260629.X6n5yc4D-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHRxrWAAAy5jb25maWcAjDzbduO2ru/9Cq/pS/vQTq7TyT4rDzRF2awlUREpO8mLlidx
pj7NbTlOd+d8/QFIXUiKkrPXXtMYAG8gAAIgqJ9/+nlC3vcvT+v99m79+Phj8n3zvNmt95v7
ycP2cfM/k0hMMqEmLOLqdyBOts/v/35+O704mpz/fnzy+9Fksdk9bx4n9OX5Yfv9HZpuX55/
+vknKrKYzypKqyUrJBdZpdi1uvx097h+/j75Z7N7A7rJ8envR9DHL9+3+/98/gz/Pm13u5fd
58fHf56q193L/27u9pOLi+Pz883F8enm4tv6/vzhj4ev65Mz+Pfbt9P16cPD6f36j7P1w/Gv
n5pRZ92wl0fWVLisaEKy2eWPFog/W9rj0yP4X4MjEhvMsrIjB1BDe3J6fnTSwJMISadx1JEC
KExqIey5zaFvItNqJpSw5uciKlGqvFRBPM8SnjELJTKpipIqUcgOyouraiWKRQeZljyJFE9Z
pcg0YZUUhTWAmheMwOqyWMA/QCKxKWzwz5OZFpXHydtm//7abTnPuKpYtqxIAavlKVeXpydA
3k4rzTkMo5hUk+3b5Plljz207BGUJA1/Pn3q2tmIipRKBBrrpVSSJAqb1sA5WbJqwYqMJdXs
lufd2mzMFDAnYVRym5Iw5vp2qIUYQpyFEWWGfCmYlAxlqF21NW97vT5ez36MANcwhr++HW8d
4razJr+JvaBA24jFpEyUFhZrrxrwXEiVkZRdfvrl+eV586slB3JFwqyQN3LJcxoYLBeSX1fp
VclKSz9sKDamKrHXsSKKziuNDXRJCyFllbJUFDcVUYrQeddzKVnCp5bVKMF6evtOCuhdI3Bo
kiQeeQfVugZqO3l7//b2422/ebJ0DbQ5EinhmavhBlbNOStwoJsOO2MZKzitUsmRchDR61bm
pJCsbtNyqWmlW7BpOYuluzmb5/vJy4M3f39MbX2WPUY0aAq6v2BLlinZ8ENtn+AICbFEcbqo
RMbkXFg8z0Q1v0Xbk4rMnj8AcxhDRDwkOKYVjxJmt9HQoAjO+WxegczrBRVhTvRm3spjwVia
K+g+c4Zr4EuRlJkixU1w6JrKxmlG0bz8rNZvf0/2MO5kDXN426/3b5P13d3L+/N++/y9Y92S
F6qCBhWhVMBY3D4pA8gqI4ovLZWayggmIihoPZKpYUy1PLXOGDhUpCJ6d9sFIRBEKiE3ukFg
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

--x+6KMIRAuhnl3hBn--
