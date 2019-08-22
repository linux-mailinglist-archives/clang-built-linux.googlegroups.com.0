Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNEZ7DVAKGQEQTEWNAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C8989D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 05:32:06 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id z23sf1736041oib.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 20:32:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566444725; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMomAMqB4Jgkf3yvoeUtce25KEJ8AdbgrBEMl0/riOLxNvR4DhEZl6BJhkL5NLAdFC
         H8C44gqX25Zha/RCXPu185Vr33+DsklCPBPq+BFPrLXuNQ7MWTz+jIJ+fU3D6byfmbDY
         K2FdlC20+izC2CJ1wIBAmjQwKKaauhtympXPgqtQ0Pw1tL83rU+8+t6a/Yv/fY2waBQC
         xGBgLIUtZwtcO3gPzMJAzgRlIrZei/oWkQ29J8LvafRSdvC5+YsPW2HxQdSzlwmDkMXM
         ESxlmNMzfnOz+wmRNPXgKoeFU8XN3lDwwMpO2ZrWAFrsU4vPzjiAaifyoIIVpzUZ6/O0
         5c7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mKOD7HwvkV4djMn2PZnbiXsRFLhffUKVE4xWkxCSMac=;
        b=kxk7UxaNhEHLaI4+b8uvC0IGX4a8XhGPtgn8bCFi95lFkqZvAxqV3alY6cP9V1yr1u
         dr3oCVJ1zsbC/UqmHrzfFybOtwsqO142dvZwKVhgdI9HkRxlwZtTc1gwtHDlDLKihsAG
         mZYC6tGLqJ82fiCb+6jJHy3JPVZRHVIrXzezBXPDAVJC3Hgtnb0hIgbOOsBjPcRR7jO8
         fiuXCwwWzjGwNR3p55dScAB4pF0G1I7Kk6oV7Zx/ouH4++sCMrn1zCfx4+cVqIUU7d7q
         01sdJVT4ygjw4nhe40Og4ZTGOHNBwNA1s7O1QEi+1YYbuAzovnpV9omyV/Rl+0Lem52d
         u4Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tKtCr98I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKOD7HwvkV4djMn2PZnbiXsRFLhffUKVE4xWkxCSMac=;
        b=jcPc9FPfu5wdEQr+Wlr5O3Y/DbsBQYVlbTVbxJBqsWm2YQHHPHls0iNqHbtzlxXUUk
         IViGTO3eylKInUnxBXDxsLKLDBUu2Jt87+edg9MUDTEljIOwBa5y6HpfUyz0f+HxUM9U
         42USxxKCnUqMOoDOidCgCp8gZJCngk33Y9b9ZbPneIW/CP5ITo/C/3/Crit8TsIWFsrJ
         Ut0wIUAn9SWnxHgmEZHdkbJ2+9RJBZyn3a7AwJKMcAD//QVCG+qgAlRX0qiFQDkHAxIi
         k37shvo+CNA2keq0Ej27J2BJyWN+Zuyno9FyVnvR51+z33PsdEe5iBKAUhNNMbQl/SAz
         9I5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKOD7HwvkV4djMn2PZnbiXsRFLhffUKVE4xWkxCSMac=;
        b=aqSAwi2+q1p7x5l0+GeseVg8z+G5Uj0BZiJRwo26XWw1YZxmUKtrDIMUvR5roA/EOy
         9svTo3sc1oj6LePlftuVZrulX/IC1NHfE/hCcTJ7VymvKp9XiCKXUwyPPkD3a3J6RU8a
         5N9lH0fIhAjno40xjnehGyqf05mEcHy/Ay17ATZh7C8BBBAGYJTGH3YUkMPF8huGTVSH
         uoq30a22DVM+SoBVODfpn3LKyzMEZsA/1XTUlYTDznQniMpox/XafAK3wyhxTppNG6tx
         Kg2U/Y258lN/2VwIzAHk3HJWmnZGKE0eJho175rgYdXNiqzZx+8NE+w8M+0wJwxofDck
         drEw==
X-Gm-Message-State: APjAAAUuG1mn6RjLtlsj0jVYjg605gwDeRuUyz2BnypsLgH/D++5jHJL
	V2nzI4uRW0m2paufw4E0woc=
X-Google-Smtp-Source: APXvYqyGwKQfh0ZrQ94uld8rfLg0xVHSdSy6XBCAHgR+bOO6olEEStusCfi8MDgi0rQpO92EXzvptg==
X-Received: by 2002:aca:cc81:: with SMTP id c123mr2399928oig.30.1566444724713;
        Wed, 21 Aug 2019 20:32:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2061:: with SMTP id n88ls208623ota.4.gmail; Wed, 21 Aug
 2019 20:32:04 -0700 (PDT)
X-Received: by 2002:a05:6830:17d6:: with SMTP id p22mr12340903ota.67.1566444724330;
        Wed, 21 Aug 2019 20:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566444724; cv=none;
        d=google.com; s=arc-20160816;
        b=T3XoZ53/b6uJNeaYLOotckvi4HQwAvFstL9UhbnIPg5PLeshzN9WIdksBxxyFFCoig
         vCv1fg1jyRLOcriVU/piFZDjAy3awQXpLhsM8V1EtNToOZxOpkCwXI2X+QAOqdx6P0lU
         J3oGP2ZbIZtpDjawadg7MCEi8R5uo7K+fp4p+nFuIMASVlJuXm4vheg0b69e8z7eP+Q7
         nPknjsA0R0dskvranTn6tAhlM+mLkCj2fAk+E/kLGIaQp6f0qLfQvJs+Z9f5NIBYFCxD
         fkJx3n/G5LHmzfg9XipMFF6f2qSjGxhUnfbEXX26MSKhwVIgTjtGLUdRkTPull5TmOBi
         JLyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HTw2vnCZOO52QVuGCjX7ixuz9n2TeH+AOWEQWdaHLIA=;
        b=lOHXC360hKLrES8UOr3GpQpA4QW6FZB+4XbAhTEYWmc92TjOZruZj5suO4opDvl2ls
         9VgdZUqivFQhZNgR9QAbbvGeY1Bw+S1scj1WCtXlvfMY8vQEtwJGW5TxHANepMH61Pkb
         kkaxnWLP07pX8owgXFyXbvJ0SJzmSgBdBAeGkfGgJZbqRP46J4LG24Nl3qImjAz/S0v1
         M7kQjn2Db2nHvZnvv+RLMVNNG+u9f3lG6EIgdBsip1BDTALaBjWzgxcxfHY8AyZtwFgf
         bZT4JSjD1FCbArb/NePDHaZy4s+6JinCcBYwAAr6TdBp+X2XkWe3RySYl9bgl9wm6kX/
         NDDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tKtCr98I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id u18si1009943oie.4.2019.08.21.20.32.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2019 20:32:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id y1so2546639plp.9
        for <clang-built-linux@googlegroups.com>; Wed, 21 Aug 2019 20:32:04 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr36845448plr.179.1566444723080;
 Wed, 21 Aug 2019 20:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <201908221058.qWTYzADt%lkp@intel.com>
In-Reply-To: <201908221058.qWTYzADt%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Aug 2019 20:31:51 -0700
Message-ID: <CAKwvOdmtYi-Hgk+gAj2P499mpRkk41X2QyGqtCQP+9N0ZmCimA@mail.gmail.com>
Subject: Re: [kees:clang/address_space 1/1] arch/arm64/include/asm/arch_timer.h:147:11:
 error: automatic variable qualified with an address space
To: kbuild-all@01.org, Kees Cook <keescook@chromium.org>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tKtCr98I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Here he is officer, book'em. ;)
Kees what's going on here? :P

On Wed, Aug 21, 2019 at 7:32 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Kees Cook <keescook@chromium.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/kees/linux.git clang/address_space
> head:   beff911c13390a71b3f7921fd82ec6a71ca75c02
> commit: beff911c13390a71b3f7921fd82ec6a71ca75c02 [1/1] [WIP] Compiler Attributes: support noderef and address_space
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout beff911c13390a71b3f7921fd82ec6a71ca75c02
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All error/warnings (new ones prefixed by >>):
>
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
>    In file included from arch/arm64/include/asm/arch_timer.h:28:
>    In file included from include/linux/smp.h:68:
> >> arch/arm64/include/asm/smp.h:45:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
>    DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
>    ^
>    include/linux/percpu-defs.h:169:2: note: expanded from macro 'DECLARE_PER_CPU_READ_MOSTLY'
>            DECLARE_PER_CPU_SECTION(type, name, "..read_mostly")
>            ^
>    include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
>            extern __PCPU_ATTRS(sec) __typeof__(type) name
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:73:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
>    DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
>    ^
>    include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
>            DECLARE_PER_CPU_SECTION(type, name, "")
>            ^
>    include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
>            extern __PCPU_ATTRS(sec) __typeof__(type) name
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: automatic variable qualified with an address space
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
>    #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                            ^
>    include/linux/percpu-defs.h:319:19: note: expanded from macro '__pcpu_size_call_return'
>            typeof(variable) pscr_ret__;                                    \
>                             ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
>         __ptr = (unsigned long) (ptr);                             \
>                                  ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
>        (typeof(ptr)) (__ptr + (off)); })
>                ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    <scratch space>:109:1: note: expanded from here
>    raw_cpu_read_1
>    ^
>    include/asm-generic/percpu.h:195:30: note: expanded from macro 'raw_cpu_read_1'
>    #define raw_cpu_read_1(pcp)             raw_cpu_generic_read(pcp)
>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
>    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
>            *raw_cpu_ptr(&(pcp));                                           \
>            ^~~~~~~~~~~~~~~~~~~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
>         __ptr = (unsigned long) (ptr);                             \
>                                  ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
>        (typeof(ptr)) (__ptr + (off)); })
>                ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    <scratch space>:110:1: note: expanded from here
>    raw_cpu_read_2
>    ^
>    include/asm-generic/percpu.h:198:30: note: expanded from macro 'raw_cpu_read_2'
>    #define raw_cpu_read_2(pcp)             raw_cpu_generic_read(pcp)
>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
>    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
>            *raw_cpu_ptr(&(pcp));                                           \
>            ^~~~~~~~~~~~~~~~~~~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
>         __ptr = (unsigned long) (ptr);                             \
>                                  ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
>        (typeof(ptr)) (__ptr + (off)); })
>                ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    <scratch space>:111:1: note: expanded from here
>    raw_cpu_read_4
>    ^
>    include/asm-generic/percpu.h:201:30: note: expanded from macro 'raw_cpu_read_4'
>    #define raw_cpu_read_4(pcp)             raw_cpu_generic_read(pcp)
>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
>    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
>            *raw_cpu_ptr(&(pcp));                                           \
>            ^~~~~~~~~~~~~~~~~~~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
>                            return arch_timer_reg_read_stable(cntp_tval_el0);
>                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^~~~~~~~~~~~~~~~~
>    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
>    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
>                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
>         __ptr = (unsigned long) (ptr);                             \
>                                  ^~~
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
> >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
>    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
>                    _val = erratum_handler(read_ ## reg)();                 \
>                           ^
>    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
>                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
>                           ^
>    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>            raw_cpu_read(pcp);                                              \
>            ^
>    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
>            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
>                                       ^
>    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
>    #define __kernel        __address_space(0)
>                            ^
>    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
>    # define __address_space(x)             __attribute__((__address_space__(x)))
>                                                           ^
>    In file included from arch/arm64/kernel/asm-offsets.c:21:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:21:
>    In file included from include/linux/mm_types.h:16:
>    In file included from include/linux/workqueue.h:9:
>    In file included from include/linux/timer.h:6:
>    In file included from include/linux/ktime.h:24:
>    In file included from include/linux/time.h:73:
>    In file included from include/linux/time32.h:13:
>    In file included from include/linux/timex.h:65:
>    In file included from arch/arm64/include/asm/timex.h:19:
>
> vim +147 arch/arm64/include/asm/arch_timer.h
>
> 16d10ef29f25ab Ding Tianhong 2017-02-06   72
> 6acc71ccac7187 Marc Zyngier  2017-02-20  @73  DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
> 6acc71ccac7187 Marc Zyngier  2017-02-20   74            timer_unstable_counter_workaround);
> f6dc1576cd5174 Scott Wood    2016-09-22   75
> 57f27666f91a85 Marc Zyngier  2019-04-08   76  /* inline sysreg accessors that make erratum_handler() work */
> 57f27666f91a85 Marc Zyngier  2019-04-08   77  static inline notrace u32 arch_timer_read_cntp_tval_el0(void)
> 57f27666f91a85 Marc Zyngier  2019-04-08   78  {
> 57f27666f91a85 Marc Zyngier  2019-04-08   79    return read_sysreg(cntp_tval_el0);
> 57f27666f91a85 Marc Zyngier  2019-04-08   80  }
> 57f27666f91a85 Marc Zyngier  2019-04-08   81
> 57f27666f91a85 Marc Zyngier  2019-04-08   82  static inline notrace u32 arch_timer_read_cntv_tval_el0(void)
> 57f27666f91a85 Marc Zyngier  2019-04-08   83  {
> 57f27666f91a85 Marc Zyngier  2019-04-08   84    return read_sysreg(cntv_tval_el0);
> 57f27666f91a85 Marc Zyngier  2019-04-08   85  }
> 57f27666f91a85 Marc Zyngier  2019-04-08   86
> 57f27666f91a85 Marc Zyngier  2019-04-08   87  static inline notrace u64 arch_timer_read_cntpct_el0(void)
> 57f27666f91a85 Marc Zyngier  2019-04-08   88  {
> 57f27666f91a85 Marc Zyngier  2019-04-08   89    return read_sysreg(cntpct_el0);
> 57f27666f91a85 Marc Zyngier  2019-04-08   90  }
> 57f27666f91a85 Marc Zyngier  2019-04-08   91
> 57f27666f91a85 Marc Zyngier  2019-04-08   92  static inline notrace u64 arch_timer_read_cntvct_el0(void)
> 57f27666f91a85 Marc Zyngier  2019-04-08   93  {
> 57f27666f91a85 Marc Zyngier  2019-04-08   94    return read_sysreg(cntvct_el0);
> 57f27666f91a85 Marc Zyngier  2019-04-08   95  }
> 57f27666f91a85 Marc Zyngier  2019-04-08   96
> f6dc1576cd5174 Scott Wood    2016-09-22   97  #define arch_timer_reg_read_stable(reg)                                   \
> f6dc1576cd5174 Scott Wood    2016-09-22   98    ({                                                              \
> f6dc1576cd5174 Scott Wood    2016-09-22   99            u64 _val;                                               \
> 57f27666f91a85 Marc Zyngier  2019-04-08  100                                                                    \
> adb4f11e0a8f4e Ding Tianhong 2017-08-10  101            preempt_disable_notrace();                              \
> 57f27666f91a85 Marc Zyngier  2019-04-08  102            _val = erratum_handler(read_ ## reg)();                 \
> adb4f11e0a8f4e Ding Tianhong 2017-08-10  103            preempt_enable_notrace();                               \
> 57f27666f91a85 Marc Zyngier  2019-04-08  104                                                                    \
> f6dc1576cd5174 Scott Wood    2016-09-22  105            _val;                                                   \
> f6dc1576cd5174 Scott Wood    2016-09-22  106    })
> f6dc1576cd5174 Scott Wood    2016-09-22  107
> e09f3cc0184d6b Stephen Boyd  2013-07-18  108  /*
> e09f3cc0184d6b Stephen Boyd  2013-07-18  109   * These register accessors are marked inline so the compiler can
> e09f3cc0184d6b Stephen Boyd  2013-07-18  110   * nicely work out which register we want, and chuck away the rest of
> e09f3cc0184d6b Stephen Boyd  2013-07-18  111   * the code.
> e09f3cc0184d6b Stephen Boyd  2013-07-18  112   */
> e09f3cc0184d6b Stephen Boyd  2013-07-18  113  static __always_inline
> 60faddf6eb3aba Stephen Boyd  2013-07-18  114  void arch_timer_reg_write_cp15(int access, enum arch_timer_reg reg, u32 val)
> 1aee5d7a8120cb Mark Rutland  2012-11-20  115  {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  116    if (access == ARCH_TIMER_PHYS_ACCESS) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  117            switch (reg) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  118            case ARCH_TIMER_REG_CTRL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  119                    write_sysreg(val, cntp_ctl_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  120                    break;
> 1aee5d7a8120cb Mark Rutland  2012-11-20  121            case ARCH_TIMER_REG_TVAL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  122                    write_sysreg(val, cntp_tval_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  123                    break;
> 1aee5d7a8120cb Mark Rutland  2012-11-20  124            }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  125    } else if (access == ARCH_TIMER_VIRT_ACCESS) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  126            switch (reg) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  127            case ARCH_TIMER_REG_CTRL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  128                    write_sysreg(val, cntv_ctl_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  129                    break;
> 1aee5d7a8120cb Mark Rutland  2012-11-20  130            case ARCH_TIMER_REG_TVAL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  131                    write_sysreg(val, cntv_tval_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  132                    break;
> 1aee5d7a8120cb Mark Rutland  2012-11-20  133            }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  134    }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  135
> 1aee5d7a8120cb Mark Rutland  2012-11-20  136    isb();
> 1aee5d7a8120cb Mark Rutland  2012-11-20  137  }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  138
> e09f3cc0184d6b Stephen Boyd  2013-07-18  139  static __always_inline
> 60faddf6eb3aba Stephen Boyd  2013-07-18  140  u32 arch_timer_reg_read_cp15(int access, enum arch_timer_reg reg)
> 1aee5d7a8120cb Mark Rutland  2012-11-20  141  {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  142    if (access == ARCH_TIMER_PHYS_ACCESS) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  143            switch (reg) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  144            case ARCH_TIMER_REG_CTRL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  145                    return read_sysreg(cntp_ctl_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  146            case ARCH_TIMER_REG_TVAL:
> f6dc1576cd5174 Scott Wood    2016-09-22 @147                    return arch_timer_reg_read_stable(cntp_tval_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  148            }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  149    } else if (access == ARCH_TIMER_VIRT_ACCESS) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  150            switch (reg) {
> 1aee5d7a8120cb Mark Rutland  2012-11-20  151            case ARCH_TIMER_REG_CTRL:
> cd5f22d7967f61 Mark Rutland  2016-09-08  152                    return read_sysreg(cntv_ctl_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  153            case ARCH_TIMER_REG_TVAL:
> f6dc1576cd5174 Scott Wood    2016-09-22  154                    return arch_timer_reg_read_stable(cntv_tval_el0);
> 1aee5d7a8120cb Mark Rutland  2012-11-20  155            }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  156    }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  157
> cd5f22d7967f61 Mark Rutland  2016-09-08  158    BUG();
> 1aee5d7a8120cb Mark Rutland  2012-11-20  159  }
> 1aee5d7a8120cb Mark Rutland  2012-11-20  160
>
> :::::: The code at line 147 was first introduced by commit
> :::::: f6dc1576cd517440313c9551b6ffa3d7e389c7c7 arm64: arch_timer: Work around QorIQ Erratum A-008585
>
> :::::: TO: Scott Wood <oss@buserror.net>
> :::::: CC: Will Deacon <will.deacon@arm.com>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908221058.qWTYzADt%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtYi-Hgk%2BgAj2P499mpRkk41X2QyGqtCQP%2B9N0ZmCimA%40mail.gmail.com.
