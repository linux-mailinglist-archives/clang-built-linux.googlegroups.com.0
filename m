Return-Path: <clang-built-linux+bncBCQJP74GSUDRB6VN5CAQMGQELG4UPQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 41496326C91
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 10:55:08 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id a24sf5033941pfn.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 01:55:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614419707; cv=pass;
        d=google.com; s=arc-20160816;
        b=uy4hjWmyh9oWgvWHfkUklFLLyHpHbFtAQlZRYQ3IRjSq2fJirhmIpmmyiMgbBG+pHy
         gNfW6kXT0TIhRQ9s/5G5QZuO4Bss7z4mXtgg41Lko+DKx+U4vxqOn0xA/oGRKF8QY30V
         sdIcb1s7hBCqAM4s/CuT1H/YqpVE8u+eVbvInqWniN0ph2Pj94CP3mr7g795txuQkmHy
         I5iYlKugRcAxx1u+aznpjY4CxBEzD34eEWYmuYDHcl4hAW5oT2/+wWrKhyG0x2VSzTqp
         X+Jc+Bci2t7eSM2qHEAVxR37fhcv7q5ZDNa3AFpwV/gVdLuS9nfGhZRaMDY2kniNYQQQ
         0OoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8/Or1Qn1pDhSC6ysUWF7PY+01hnaNvifWp4dkIob6nk=;
        b=knls2jkC32B7KWI1H4pAtyFO/rJoWMz4JW1E3U4IAZEf98Q7ykqNgIe2Hd51PVxZlO
         IimjNj+Uq7CnpbKdfq6HSk9bcZdSUHqxMCm1ugM9p7x9YIdAB40nRlLBV3U5xwDsbT2A
         ILQDIJWN2GmjbrnMpkHerPfW8t6KRSnjBx21gX2n09zP8aQhGtHpUbXAG1ALdtc56one
         OKjfZ+GEgqK4pN/1TJrNyUvWoilOpVAtdOehAbha0oDmXnnsmRI0RpFqpuh00m5lmLup
         hnQwXMlai09Tmr4cZd1HCEQL+izCjYeVcsUkNJocH+8I8XbdOLOZdLE8lN0ZDcBH6KXT
         q5pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/Or1Qn1pDhSC6ysUWF7PY+01hnaNvifWp4dkIob6nk=;
        b=PRPcgT1nPC9bGgNuTJNtme0bPBeZDP7q33ymODZOMIPcfzGcBe0Wd74GhdBiPyksCY
         ivIrb2vzvWfaDIr3g5a5xgfc6o6bIfRCmky0c4dzi4YLfB7CuYpkDxpzvOivx8C2rrGV
         17pYaJ6CVtzsPxI7ZOzIUHXo69p3ns2p6RfrIZCyRnZfHZo59JbRd0bZWQ37FBYr/OxM
         NLiGOlqanG8clZ6tUXatrgHvE8BaYtUSbwaPLbv7BS9hU33NMq9Qa1MNMIjP96+ahUeW
         BIFBbUzTRj/5vhmLIS8rcsZI4swhMSa/Um5Y9UzpQuF1Pw2jS3c1Z6EtmD9mEM2qk+4w
         f7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/Or1Qn1pDhSC6ysUWF7PY+01hnaNvifWp4dkIob6nk=;
        b=AHuBlKpbnDW8gtqVAyvEoE5W+1Xi+MSmi2d/cW85hB139jwAda2sWicg6KYXlh0xaz
         z5rKtXoLmmyOBKg/mzhaOeq2uoVQXr3MIJb1zUXefTpHE/o9i/mRJzRyniPOM0tKpoG5
         2eSzS4KRxryfX8EAdF0JgbpdtbOMkRqqbaG/+QlWeBLuYyHHfETSmrcjp/CbSHOthTk7
         ZdneApRNGFpAMVgmXQggsk6MBV8zveHQvpRfPFtwByBCQYRhGRMHNgM3jBfv+x5Al1DE
         5loNN2LJMmxAWenhcrQ1x+ivNj0W4oQkCnQTxugcA0vxm4RVYV9zfbWUj9r86NJXaOrb
         o2iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ItdfqgiiM6tAvYa0+/hdSi8t67u5fSNOd7XJD6YDNsHXSgr3O
	5SZm19Nv43CZ8/o5FtGC6cI=
X-Google-Smtp-Source: ABdhPJwop0ACLGaV0RHPHcu2vVgWnPUoPrxt8Omc0BHgjbLIDj6nhcBxGRgXmi+mvTCW3/PMc/LBPQ==
X-Received: by 2002:a17:902:503:b029:e4:2ce1:f0c9 with SMTP id 3-20020a1709020503b02900e42ce1f0c9mr6689627plf.52.1614419706888;
        Sat, 27 Feb 2021 01:55:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5b44:: with SMTP id y4ls4507904pgr.0.gmail; Sat, 27 Feb
 2021 01:55:06 -0800 (PST)
X-Received: by 2002:a05:6a00:15d2:b029:1b7:30c1:8495 with SMTP id o18-20020a056a0015d2b02901b730c18495mr6915242pfu.32.1614419706101;
        Sat, 27 Feb 2021 01:55:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614419706; cv=none;
        d=google.com; s=arc-20160816;
        b=bYk6I8zUfe7oSdaR7UaYy90wYrqcCx1MddsT5jQ6IbdyTy07sg/RyqVs7qzUtGk4eV
         OuOhz/Lkzc1WfMLtPBju+kAjMk4CNDbWklragmNG4OAHmgTC9PBzlwNAag4HQMubKPrg
         CwFsq8d/OtT2HiOgBXcdUjU2PgGswngRPSXtIPTiBDbc8lhgDKUvN/1Uy83/hMz9687A
         OTuNdxiL2RqigRtY8k+2RWuXcsfDYca3dDiNPdTI+zN5UANR0ql4msI3LyIbqx6IJw3w
         1govg/N25NbXEGgMRsnRMw5K0U5Vnl2rxvUrtx5axAiTrFywtgGC4u5lax6+paR4Qxb/
         cYKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=2FtblZAdeGtW05dqBERy4tBfNxSBQQUNZrk6WUT7tes=;
        b=lad/9A7KQVq35yVdAxphF28n7UfZZ6f/p//Asp6k5lTb05ruFJNGrGcyd2LwHeF7Du
         G9N/mZFfVyvJEQOfVVI4pblyRh5o96D8IlKTQxg1iJkqbMLmvddCR09QLwjESz2bBcuM
         6bPMRptE8L7eCymftpVny9Sh3RdgOVgzawTefy7xss00+gjbpLZQfh/WJRfOn7T5gJ7p
         4NTbUukx+mcZiqDkzNNiW6e0S8LNFv7mKA7J6HnmPrTtdTYQqZNN+aannbP39ArkJlqB
         u2itgGX0gEeGCWpFwtsop59CH+L80RUnN7grGjWL7zaqYYUHsMvCuCC139uTtgip/YUv
         9YYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com. [209.85.167.177])
        by gmr-mx.google.com with ESMTPS id r7si589449pjp.3.2021.02.27.01.55.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Feb 2021 01:55:05 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.177 as permitted sender) client-ip=209.85.167.177;
Received: by mail-oi1-f177.google.com with SMTP id x20so12527519oie.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 01:55:05 -0800 (PST)
X-Received: by 2002:a05:6808:a0b:: with SMTP id n11mr4995768oij.161.1614419705255;
 Sat, 27 Feb 2021 01:55:05 -0800 (PST)
MIME-Version: 1.0
References: <202102271029.FTsmHEk9-lkp@intel.com>
In-Reply-To: <202102271029.FTsmHEk9-lkp@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 27 Feb 2021 10:54:52 +0100
Message-ID: <CAMuHMdVEpQhBTATr876LF7r3r=zEtnS=V8OFL6_0pgNWDWR0hA@mail.gmail.com>
Subject: Re: arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no
 previous prototype for function 'fdt_check_mem_start'
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.177
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Kernel Test Robot,

On Sat, Feb 27, 2021 at 3:47 AM kernel test robot <lkp@intel.com> wrote:
> FYI, the error/warning still remains.

My response in
https://lore.kernel.org/linux-arm-kernel/CAMuHMdVmMLvvJ4mAa+y8JCJ2+5Bwu2W=psgn3toC1msTghn=Xg@mail.gmail.com/
is still valid.

>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3fb6d0e00efc958d01c2f109c8453033a2d96796
> commit: 0673cb38951215060d7993b43ad3c45cd413c2c3 ARM: 9045/1: uncompress: Validate start of physical memory against passed DTB
> date:   4 weeks ago
> config: arm-randconfig-r003-20210226 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b889ef4214bc6dc8880fdd4badc0dcd9a3197753)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0673cb38951215060d7993b43ad3c45cd413c2c3
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 0673cb38951215060d7993b43ad3c45cd413c2c3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous prototype for function 'fdt_check_mem_start' [-Wmissing-prototypes]
>    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>             ^
>    arch/arm/boot/compressed/fdt_check_mem_start.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>    ^
>    static
>    1 warning generated.
>
>
> vim +/fdt_check_mem_start +62 arch/arm/boot/compressed/fdt_check_mem_start.c
>
>     46
>     47  /*
>     48   * Check the start of physical memory
>     49   *
>     50   * Traditionally, the start address of physical memory is obtained by masking
>     51   * the program counter.  However, this does require that this address is a
>     52   * multiple of 128 MiB, precluding booting Linux on platforms where this
>     53   * requirement is not fulfilled.
>     54   * Hence validate the calculated address against the memory information in the
>     55   * DTB, and, if out-of-range, replace it by the real start address.
>     56   * To preserve backwards compatibility (systems reserving a block of memory
>     57   * at the start of physical memory, kdump, ...), the traditional method is
>     58   * always used if it yields a valid address.
>     59   *
>     60   * Return value: start address of physical memory to use
>     61   */
>   > 62  uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdVEpQhBTATr876LF7r3r%3DzEtnS%3DV8OFL6_0pgNWDWR0hA%40mail.gmail.com.
