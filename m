Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGPXTLVQKGQEIYENUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9039FA089D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 19:36:26 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id v133sf269720oia.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:36:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567013785; cv=pass;
        d=google.com; s=arc-20160816;
        b=lB2zmW6mLOAF8R2G5+xL68DAuBNNOYJaLIHnhd/m+sUV+EQgJ+gsNwgAYs0PM0El/5
         6nXdvWKT70dFvHuIunN+79351lp42Q/7TgaM3L7axvVp3GWz5WA9K3SG2LJo0A5tFo7w
         r5fz2MDPLA92WRHi2G7QVEuh/wfE2jo9PK3hPNpcoWUoBMmt3I3nyOijlVxx/8PgINnx
         j2x8q/Je6WIF7d36AraDWdLCwdIYvXIkQe/DyLpDYyn4KDu7Ne8lICabpAFPt8GYRZJN
         /kZSgwjl5D9jAmFl47HjPc/QK/ZPzv8071vlb+Br65JveUVvRCc0k0itI5r9BVcIJBOZ
         ZKQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wifR2onAI/9lL2+yz+VKDHn3F0Y1Io3NqNfpv7NngVI=;
        b=Jk9NSrZxTMwc4DB6F1e8/EyU6eiNLiTtp6b4iDGW6MjgODucLwi90XNOTWAwD3hqyj
         gDEOP7K+l7uWXtH3V0LX6CACd6WwxgFjwtnkW+lMLarrEUO67/ypMtFEid6XACbxWRGz
         kHVJEP8kFkB1UtnjK5gTZhVDAGCUF39a+lzozamGC7AmL1AcAYysiu+zW1UsnKPDGfzc
         Lrlzp99akzftEp55uNrr2PfbE42BIcKezN2SAmD0CnMyD+TntOPzFVDBbVQUpA8unP7c
         ZjPz+EoZjxRjjdLotrcIh+Jt1ESLybv9Y2o09V5mT44bX9F4V0fqTaKnR0SzmUMroMSj
         HbKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=anPmkWg8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wifR2onAI/9lL2+yz+VKDHn3F0Y1Io3NqNfpv7NngVI=;
        b=Joz3Rn7y+ARTv0y6c70W2gdxxfvctytBCcJN/ADBhU2cmkNMmpAS7W8aDtHuuru7wv
         ml7n8ve1wmszST/XFpMpz/CfQkNDYetjD5kBgkLV6xxuUYwo3yRmJSTS8qefscwOvG5m
         p2UQRDXyKLLrMXowod5XbjZ7AKYvYXL0rRfFJyQV79W19yD+fzJ+48yreOZPAgzxvzOB
         LIzjwswL9TxNmX0cRvQhFT4EzRfEH7JvGnNZdDsx3mftbgpFw1jMC7jwvf7SD6BxJ4YH
         TGgnJ1lkvOW1w/kWwUzXdSecqhD6TdLEUBWN4RvTDCf7s0JpKDU1VEUr7gWPnG2APeEG
         qCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wifR2onAI/9lL2+yz+VKDHn3F0Y1Io3NqNfpv7NngVI=;
        b=S9vJ0YwHDLB1gMiAjDL56OA31h8PP3JExo+gDfzJcWJJka5itzvjqW35K0PONhUrgD
         Au0TfhxA0MPACcoKtnI83CIFm3CVsmmPfpcLAFz+WqTYA22GJsVXLXiX9EEf4gFd0XGZ
         O1/T2K8oi6Vtyw6wxx4L0a53kmQKKCGdtq4VhwuWuwZ5THcn8eXnpWKDln563mSIWjtt
         kxlGDo/j++sc5PLrpW/x3GuKixnpFDIpP3DIeb1qpqgMsIzS5MP9Hz0rHDvpf+qwHyQn
         iL80uvLXR7KpYQzjjz6lzlVBkRA5hOLGScZ52erqmMmsRRfOlTkbrIBtYuBMpVu/WOFt
         7fdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVawisynqYMXLR9QJvqI4+ILdKT7blsjE1UokzZbWkjIIez14gN
	EjB0zBP3cSDnj90yUSTdBBc=
X-Google-Smtp-Source: APXvYqyjDcB0qOFymN0LEvZIW8Kas0kFW0oWCxWMXHoR1uGsE9kwWBoQAaXEDZvDIoN0OF3zlIfMVw==
X-Received: by 2002:a9d:6a11:: with SMTP id g17mr1733367otn.251.1567013785161;
        Wed, 28 Aug 2019 10:36:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:70d2:: with SMTP id w18ls597362otj.11.gmail; Wed, 28 Aug
 2019 10:36:24 -0700 (PDT)
X-Received: by 2002:a9d:77c4:: with SMTP id w4mr4328638otl.40.1567013784815;
        Wed, 28 Aug 2019 10:36:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567013784; cv=none;
        d=google.com; s=arc-20160816;
        b=f5IgY2WXyp0MV7Y6pP1eVq81hf+nLyIiX+iABhubiqGu9xZKMOgNx6DkyHIl50u0bt
         5dZW0tjr2GHT+qJ0o0arvhnIUlHwmOVb+mPG2vscVuJ7pzt5v6j4fma24JxkRuIChuEp
         V8hxrjd7SXHebQrVsCVQuYHEt0N/ngAxvUp3PhqJkr/leERKtusZ7ioGWZfEnndP7V6A
         pgNe1KM2MiJENcw3MPDIvMKLZJz08TUZ2hDUdtVKF7tEelGuEuDFfgliFblKnaIKCyjM
         FZNmo8u79Ov7Ke5b9uW7rZr/0zUcVG+H7B7t7058eO9XVNetcr4FOdwRuKZWKhx1/39s
         Wcgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mJo2598XaoOjcrOsseU2hS8RQXSggKCTKwDX+G22BPs=;
        b=hf1nJUxHHlGcd9QrkJuTfMca6VOMns+p6Gc8We73m94lj94axFLzP6fuVfp5WhCI2n
         UxE+vGMEME7XOjHJNzY0MYZYLNk5zUA8o/GGklIqamBJRvCE9dMQMQSo/EwxutDSxuA8
         AnBY8gpm/88WvtwqtH+h+TKn0Dd8o4ji3lhD+HQ8g4zlSR0Mi0jYvJ+HROmlYj/IcvT8
         JSX/XVKpdq7s8xP0lE/d+pmPCus3rZr0CJLl46RPafAEwNIJVwPmM6y9m8qRLfUg2zj9
         dintcnu+DY44uKf1Ns2i0etHTRedbPQR28Rs0Atkuekhz3DOAyl0C1sO+cfXEBPDNX9A
         serQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=anPmkWg8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w3si233580otl.3.2019.08.28.10.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 10:36:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id i30so235356pfk.9
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 10:36:24 -0700 (PDT)
X-Received: by 2002:a62:e806:: with SMTP id c6mr6174390pfi.132.1567013783685;
        Wed, 28 Aug 2019 10:36:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d14sm3015266pjx.17.2019.08.28.10.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 10:36:20 -0700 (PDT)
Date: Sat, 24 Aug 2019 12:01:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@01.org, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [kees:clang/address_space 1/1]
 arch/arm64/include/asm/arch_timer.h:147:11: error: automatic variable
 qualified with an address space
Message-ID: <201908241158.958C2BBC@keescook>
References: <201908221058.qWTYzADt%lkp@intel.com>
 <CAKwvOdmtYi-Hgk+gAj2P499mpRkk41X2QyGqtCQP+9N0ZmCimA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmtYi-Hgk+gAj2P499mpRkk41X2QyGqtCQP+9N0ZmCimA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=anPmkWg8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 21, 2019 at 08:31:51PM -0700, Nick Desaulniers wrote:
> Here he is officer, book'em. ;)
> Kees what's going on here? :P

Hi! Yup, it's just what the commit says:

    [WIP] Compiler Attributes: support noderef and address_space

    This breaks all kinds of things for Clang builds.

It was part of a recent twitter conversation[1] about the two flags,
and I wanted to share what I'd done with my initial steps on enabling it
to see what broke in case others in the conversation wanted to continue
looking at the work.

-Kees

[1] https://twitter.com/kees_cook/status/1164326165428858880

> 
> On Wed, Aug 21, 2019 at 7:32 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Kees Cook <keescook@chromium.org>
> >
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/kees/linux.git clang/address_space
> > head:   beff911c13390a71b3f7921fd82ec6a71ca75c02
> > commit: beff911c13390a71b3f7921fd82ec6a71ca75c02 [1/1] [WIP] Compiler Attributes: support noderef and address_space
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout beff911c13390a71b3f7921fd82ec6a71ca75c02
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All error/warnings (new ones prefixed by >>):
> >
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> >    In file included from arch/arm64/include/asm/arch_timer.h:28:
> >    In file included from include/linux/smp.h:68:
> > >> arch/arm64/include/asm/smp.h:45:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
> >    DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
> >    ^
> >    include/linux/percpu-defs.h:169:2: note: expanded from macro 'DECLARE_PER_CPU_READ_MOSTLY'
> >            DECLARE_PER_CPU_SECTION(type, name, "..read_mostly")
> >            ^
> >    include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
> >            extern __PCPU_ATTRS(sec) __typeof__(type) name
> >            ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:73:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
> >    DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
> >    ^
> >    include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
> >            DECLARE_PER_CPU_SECTION(type, name, "")
> >            ^
> >    include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
> >            extern __PCPU_ATTRS(sec) __typeof__(type) name
> >            ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: automatic variable qualified with an address space
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
> >    #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
> >                                            ^
> >    include/linux/percpu-defs.h:319:19: note: expanded from macro '__pcpu_size_call_return'
> >            typeof(variable) pscr_ret__;                                    \
> >                             ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
> >         __ptr = (unsigned long) (ptr);                             \
> >                                  ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
> >        (typeof(ptr)) (__ptr + (off)); })
> >                ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    <scratch space>:109:1: note: expanded from here
> >    raw_cpu_read_1
> >    ^
> >    include/asm-generic/percpu.h:195:30: note: expanded from macro 'raw_cpu_read_1'
> >    #define raw_cpu_read_1(pcp)             raw_cpu_generic_read(pcp)
> >                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
> >            *raw_cpu_ptr(&(pcp));                                           \
> >            ^~~~~~~~~~~~~~~~~~~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
> >         __ptr = (unsigned long) (ptr);                             \
> >                                  ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
> >        (typeof(ptr)) (__ptr + (off)); })
> >                ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    <scratch space>:110:1: note: expanded from here
> >    raw_cpu_read_2
> >    ^
> >    include/asm-generic/percpu.h:198:30: note: expanded from macro 'raw_cpu_read_2'
> >    #define raw_cpu_read_2(pcp)             raw_cpu_generic_read(pcp)
> >                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
> >            *raw_cpu_ptr(&(pcp));                                           \
> >            ^~~~~~~~~~~~~~~~~~~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
> >         __ptr = (unsigned long) (ptr);                             \
> >                                  ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
> >        (typeof(ptr)) (__ptr + (off)); })
> >                ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    <scratch space>:111:1: note: expanded from here
> >    raw_cpu_read_4
> >    ^
> >    include/asm-generic/percpu.h:201:30: note: expanded from macro 'raw_cpu_read_4'
> >    #define raw_cpu_read_4(pcp)             raw_cpu_generic_read(pcp)
> >                                            ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/asm-generic/percpu.h:67:2: note: expanded from macro 'raw_cpu_generic_read'
> >            *raw_cpu_ptr(&(pcp));                                           \
> >            ^~~~~~~~~~~~~~~~~~~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
> >                            return arch_timer_reg_read_stable(cntp_tval_el0);
> >                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^~~~~~~~~~~~~~~~~
> >    note: (skipping 6 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
> >    #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
> >                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >            ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
> >         __ptr = (unsigned long) (ptr);                             \
> >                                  ^~~
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> > >> arch/arm64/include/asm/arch_timer.h:147:11: error: multiple address spaces specified for type
> >    arch/arm64/include/asm/arch_timer.h:102:10: note: expanded from macro 'arch_timer_reg_read_stable'
> >                    _val = erratum_handler(read_ ## reg)();                 \
> >                           ^
> >    arch/arm64/include/asm/arch_timer.h:44:10: note: expanded from macro 'erratum_handler'
> >                    __wa = __this_cpu_read(timer_unstable_counter_workaround); \
> >                           ^
> >    include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
> >            raw_cpu_read(pcp);                                              \
> >            ^
> >    note: (skipping 7 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> >    include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
> >            RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
> >                                       ^
> >    include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
> >    #define __kernel        __address_space(0)
> >                            ^
> >    include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
> >    # define __address_space(x)             __attribute__((__address_space__(x)))
> >                                                           ^
> >    In file included from arch/arm64/kernel/asm-offsets.c:21:
> >    In file included from include/linux/arm_sdei.h:14:
> >    In file included from include/acpi/ghes.h:5:
> >    In file included from include/acpi/apei.h:9:
> >    In file included from include/linux/acpi.h:13:
> >    In file included from include/linux/resource_ext.h:11:
> >    In file included from include/linux/slab.h:15:
> >    In file included from include/linux/gfp.h:6:
> >    In file included from include/linux/mmzone.h:21:
> >    In file included from include/linux/mm_types.h:16:
> >    In file included from include/linux/workqueue.h:9:
> >    In file included from include/linux/timer.h:6:
> >    In file included from include/linux/ktime.h:24:
> >    In file included from include/linux/time.h:73:
> >    In file included from include/linux/time32.h:13:
> >    In file included from include/linux/timex.h:65:
> >    In file included from arch/arm64/include/asm/timex.h:19:
> >
> > vim +147 arch/arm64/include/asm/arch_timer.h
> >
> > 16d10ef29f25ab Ding Tianhong 2017-02-06   72
> > 6acc71ccac7187 Marc Zyngier  2017-02-20  @73  DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
> > 6acc71ccac7187 Marc Zyngier  2017-02-20   74            timer_unstable_counter_workaround);
> > f6dc1576cd5174 Scott Wood    2016-09-22   75
> > 57f27666f91a85 Marc Zyngier  2019-04-08   76  /* inline sysreg accessors that make erratum_handler() work */
> > 57f27666f91a85 Marc Zyngier  2019-04-08   77  static inline notrace u32 arch_timer_read_cntp_tval_el0(void)
> > 57f27666f91a85 Marc Zyngier  2019-04-08   78  {
> > 57f27666f91a85 Marc Zyngier  2019-04-08   79    return read_sysreg(cntp_tval_el0);
> > 57f27666f91a85 Marc Zyngier  2019-04-08   80  }
> > 57f27666f91a85 Marc Zyngier  2019-04-08   81
> > 57f27666f91a85 Marc Zyngier  2019-04-08   82  static inline notrace u32 arch_timer_read_cntv_tval_el0(void)
> > 57f27666f91a85 Marc Zyngier  2019-04-08   83  {
> > 57f27666f91a85 Marc Zyngier  2019-04-08   84    return read_sysreg(cntv_tval_el0);
> > 57f27666f91a85 Marc Zyngier  2019-04-08   85  }
> > 57f27666f91a85 Marc Zyngier  2019-04-08   86
> > 57f27666f91a85 Marc Zyngier  2019-04-08   87  static inline notrace u64 arch_timer_read_cntpct_el0(void)
> > 57f27666f91a85 Marc Zyngier  2019-04-08   88  {
> > 57f27666f91a85 Marc Zyngier  2019-04-08   89    return read_sysreg(cntpct_el0);
> > 57f27666f91a85 Marc Zyngier  2019-04-08   90  }
> > 57f27666f91a85 Marc Zyngier  2019-04-08   91
> > 57f27666f91a85 Marc Zyngier  2019-04-08   92  static inline notrace u64 arch_timer_read_cntvct_el0(void)
> > 57f27666f91a85 Marc Zyngier  2019-04-08   93  {
> > 57f27666f91a85 Marc Zyngier  2019-04-08   94    return read_sysreg(cntvct_el0);
> > 57f27666f91a85 Marc Zyngier  2019-04-08   95  }
> > 57f27666f91a85 Marc Zyngier  2019-04-08   96
> > f6dc1576cd5174 Scott Wood    2016-09-22   97  #define arch_timer_reg_read_stable(reg)                                   \
> > f6dc1576cd5174 Scott Wood    2016-09-22   98    ({                                                              \
> > f6dc1576cd5174 Scott Wood    2016-09-22   99            u64 _val;                                               \
> > 57f27666f91a85 Marc Zyngier  2019-04-08  100                                                                    \
> > adb4f11e0a8f4e Ding Tianhong 2017-08-10  101            preempt_disable_notrace();                              \
> > 57f27666f91a85 Marc Zyngier  2019-04-08  102            _val = erratum_handler(read_ ## reg)();                 \
> > adb4f11e0a8f4e Ding Tianhong 2017-08-10  103            preempt_enable_notrace();                               \
> > 57f27666f91a85 Marc Zyngier  2019-04-08  104                                                                    \
> > f6dc1576cd5174 Scott Wood    2016-09-22  105            _val;                                                   \
> > f6dc1576cd5174 Scott Wood    2016-09-22  106    })
> > f6dc1576cd5174 Scott Wood    2016-09-22  107
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  108  /*
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  109   * These register accessors are marked inline so the compiler can
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  110   * nicely work out which register we want, and chuck away the rest of
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  111   * the code.
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  112   */
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  113  static __always_inline
> > 60faddf6eb3aba Stephen Boyd  2013-07-18  114  void arch_timer_reg_write_cp15(int access, enum arch_timer_reg reg, u32 val)
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  115  {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  116    if (access == ARCH_TIMER_PHYS_ACCESS) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  117            switch (reg) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  118            case ARCH_TIMER_REG_CTRL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  119                    write_sysreg(val, cntp_ctl_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  120                    break;
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  121            case ARCH_TIMER_REG_TVAL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  122                    write_sysreg(val, cntp_tval_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  123                    break;
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  124            }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  125    } else if (access == ARCH_TIMER_VIRT_ACCESS) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  126            switch (reg) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  127            case ARCH_TIMER_REG_CTRL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  128                    write_sysreg(val, cntv_ctl_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  129                    break;
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  130            case ARCH_TIMER_REG_TVAL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  131                    write_sysreg(val, cntv_tval_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  132                    break;
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  133            }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  134    }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  135
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  136    isb();
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  137  }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  138
> > e09f3cc0184d6b Stephen Boyd  2013-07-18  139  static __always_inline
> > 60faddf6eb3aba Stephen Boyd  2013-07-18  140  u32 arch_timer_reg_read_cp15(int access, enum arch_timer_reg reg)
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  141  {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  142    if (access == ARCH_TIMER_PHYS_ACCESS) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  143            switch (reg) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  144            case ARCH_TIMER_REG_CTRL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  145                    return read_sysreg(cntp_ctl_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  146            case ARCH_TIMER_REG_TVAL:
> > f6dc1576cd5174 Scott Wood    2016-09-22 @147                    return arch_timer_reg_read_stable(cntp_tval_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  148            }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  149    } else if (access == ARCH_TIMER_VIRT_ACCESS) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  150            switch (reg) {
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  151            case ARCH_TIMER_REG_CTRL:
> > cd5f22d7967f61 Mark Rutland  2016-09-08  152                    return read_sysreg(cntv_ctl_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  153            case ARCH_TIMER_REG_TVAL:
> > f6dc1576cd5174 Scott Wood    2016-09-22  154                    return arch_timer_reg_read_stable(cntv_tval_el0);
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  155            }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  156    }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  157
> > cd5f22d7967f61 Mark Rutland  2016-09-08  158    BUG();
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  159  }
> > 1aee5d7a8120cb Mark Rutland  2012-11-20  160
> >
> > :::::: The code at line 147 was first introduced by commit
> > :::::: f6dc1576cd517440313c9551b6ffa3d7e389c7c7 arm64: arch_timer: Work around QorIQ Erratum A-008585
> >
> > :::::: TO: Scott Wood <oss@buserror.net>
> > :::::: CC: Will Deacon <will.deacon@arm.com>
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908221058.qWTYzADt%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908241158.958C2BBC%40keescook.
