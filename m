Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXHFVSCAMGQETNH2IXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B9D36F295
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 00:27:41 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id p10-20020a2e9aca0000b02900ce00c6dd3dsf709953ljj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 15:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619735261; cv=pass;
        d=google.com; s=arc-20160816;
        b=f59Vel/f28zNQrFjDVT4uPXWYpaWqE7C7GFD6jJNhaTOi18dF8xDBLsbEX5HoYenDH
         /dqXtoQP+gcRq0JFcIevtFwsOAmHEs7onBMMg2PEu022X4WCI3iGxDR9z2i2iNEmwn7g
         Jb+JBIohVIrRT4dSBZz5pMfswZ7my1/bIiA+G70ds1ra8vLTyjk0af3bwWdocCU0zs8n
         lnyjV9vSKMSBjZT/c8RyLYRuPNSjzIo//t9k024dOMaYeQ/8g/4JT8/G0n6KHlCCHr7O
         xfEpi18+uqOp7j9jEOFmgQNTLMcQ8E/6eEMJ5xl5SSD8PIs1PS/RbNkDyreOsDiGYfPj
         6AeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ojynF52YoBq8vNxDg6CUcP9NqIGUgYargUSTFCxZP98=;
        b=ZX7tCagTWgG5nNi4dIknzY5vA2Ytj85URI7Eliwbq6V8+cDSI6/TR1MY9O7TSKtp0F
         BaMlzosynqZNsV1ArESkKS4VYDcb3G9Iy6Fsy4GqLVgOg2KKf5QqNS2Tkxv6lOci7FPt
         k6i/BBdLMshlEnG8jbXbXaaj88Fxvx7zKE8f+HbCZFb4IJcmUWtUukuUyrL/joCkp0MV
         R4Wa30Rw7oDvtgMGkU9xPgeo63H6W4U6APE8ZdKSMQrCjVx/VJ9L1/bVfdKb07nSHlZ0
         DbcyFyFSwEjdixLnUDscvhiq0Lx2hzRblz7CEKeq7aTD2PxI1uxGB65QxvHWsYZS5qpY
         rTdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+vLxqwz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ojynF52YoBq8vNxDg6CUcP9NqIGUgYargUSTFCxZP98=;
        b=GL3/+13XxkOWaBbs2fG8ACHaEvQ24I4zsB/d9nB8iy/jeeABk5VbjaxgRFU4jYQYYC
         OAuh7sDAFna7mylOlf+QNwHDvTYGGtnQcWcssYQ6KDbHYr1VLrHQmW13VDNTczqtjxyK
         ccBHRZW7ZzNOJjg4WFTyqdyXM21OtDQjWT4lYO8aHNwFL2PSSjRRkNGtKQ25/bBxDL2z
         NbUo8B2s/biHM22vIMlL+yVm83yku6JzPyBtDDloAC3D8X5XIe3CVmCGaUUgjj66b/gf
         8m+KiIulRleOoHwOhhrZ5O58mVlGmPkS3B6SFI4LH+5bEKqRkV4MP8TWwS21g3Ts+Gvt
         Q9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ojynF52YoBq8vNxDg6CUcP9NqIGUgYargUSTFCxZP98=;
        b=ock0cq4pTNqQB+dSdtFaajpfaGMGr2mRDkiMuYyS9gC8aosGhoYG43zh4A4lXaxV91
         icIdwPJWUNIvtO7Yiv4oSBz4nSuIqNo1eyRzy+v7N3X9Mud8W0hb/ybs0oIuyvmTuwjs
         8wHdjDJcS3L1M4ylaXTYIowWz9XEw2SrRdKsJQ93zKltQxYXeGC9tNAxY553kVhxZSjL
         ZQdye9nTD5EGheptS91lmXmeRhIa4EH555NXZ+KRekbaCJ6uETG8hveX9Z13JNHdGTzF
         RlEuhmdJxSBiQbBvYE9OU6TFk3zgJI9BYRUPx6NQo73aAOh14DloaWFMYuqKEg8jbMau
         bfTQ==
X-Gm-Message-State: AOAM530v3ZgIaLEqN4YeU8BlRnRUys5oHRpdwat8THZhq25UsKTlOV87
	sqJXFdSNlc+AVNNB58wYGBc=
X-Google-Smtp-Source: ABdhPJwYBhfEyPuofuohTcKrbgAY9xKsSyHPnCOySm4WVs4vXhW3RIfAQjsgsu0SRpcE65O4mMOLdg==
X-Received: by 2002:a2e:8987:: with SMTP id c7mr1395778lji.420.1619735261207;
        Thu, 29 Apr 2021 15:27:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls1217351lff.0.gmail; Thu, 29 Apr
 2021 15:27:40 -0700 (PDT)
X-Received: by 2002:a05:6512:3b89:: with SMTP id g9mr1099629lfv.499.1619735260313;
        Thu, 29 Apr 2021 15:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619735260; cv=none;
        d=google.com; s=arc-20160816;
        b=aNH6eZjHqc1NW9FHES20JZNDc2WZ1Z4pcR12uO6e2jl1g9OlEdIMOzK+x9v7bGGA3q
         J4wP4JwYSKHZ260dnyDX7pb1Davclyzel7s9cACEjR6uSEv5adyaNc1d4soekPUIHFMj
         JGlm9b09X45K4R4i1ayPSihuO6Jw1vDbQ9dmu4d6Ar/T1pzhq2Cw7eHr4itSH2+cPLHv
         qqjXq/hx7AdFouWHGBisaiD4glT76mJoc572JYZ+08c44wHtDiZ/32xLlM+xcghchddP
         z+zhGmFERmysjgt4HEp7NjUm511qKJ33E+18PO2Q70Mj0pP8jVpCWyliAHjHK7cHVlAe
         BHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LZMdZZ8LWYnIoUbN05DD9vfHAcrSw55+UmM4gCI7OQc=;
        b=hJdzF2fyjirMIUMRucrZ2oVEwc0EbO7aGCwAMj5kWwTb7I08T8vWGwcJXkGFbwnRsu
         JMn2MRav6pt3ELeLajuoqmKLLAQ2z6uB1wiq14RvQ5f8D40odBZ3XifyR8dflhHAy+5F
         8Fi+u1GqN4pS+eU/C4jzquLTuVzaR8z3DtbIzecPgTpnLbdF3MIMiRRM97COEpQRykny
         t6MAXqVUjrec2VNTrG/LJW2uMq1YPEqf8gSSbGz1zQM3p3ToDr1AxSOup9m51Tsg2Asa
         iepSSJa8lI7NOwlLjbhbdbCeAHilKSNk2QRNJ6E1Oej0vW2DeJ670fn+PdXXdtoIh/Jt
         ooDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+vLxqwz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id q13si304561lfm.5.2021.04.29.15.27.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 15:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id u25so40053642ljg.7
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 15:27:40 -0700 (PDT)
X-Received: by 2002:a2e:7f1c:: with SMTP id a28mr1404623ljd.341.1619735259909;
 Thu, 29 Apr 2021 15:27:39 -0700 (PDT)
MIME-Version: 1.0
References: <202104261156.UkMxlZRd-lkp@intel.com>
In-Reply-To: <202104261156.UkMxlZRd-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 15:27:29 -0700
Message-ID: <CAKwvOd==aRdTHvzteF39FXhM8-7K5LjSL0H8B2bxbMF5nhgTuQ@mail.gmail.com>
Subject: Re: [ak:lto-5.13-1-wip 36/36] arch/x86/kernel/paravirt.c:127:15:
 warning: no previous prototype for function 'native_steal_clock'
To: Andi Kleen <ak@linux.intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J+vLxqwz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Sun, Apr 25, 2021 at 8:46 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ak/linux-misc.git lto-5.13-1-wip
> head:   45fc24254df69291f9ebd597bc747df2eb61ee3a
> commit: 45fc24254df69291f9ebd597bc747df2eb61ee3a [36/36] x86/paravirt/lto: Export native_steal_clock

Nice tree ;) Hoping to see this posted again soon; let us know when
you like us to help test/review. Looking forward to faster kernels.

> config: x86_64-randconfig-a002-20210426 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d941863de2becb3d8d2e00676fc7125974934c7f)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/ak/linux-misc.git/commit/?id=45fc24254df69291f9ebd597bc747df2eb61ee3a
>         git remote add ak https://git.kernel.org/pub/scm/linux/kernel/git/ak/linux-misc.git
>         git fetch --no-tags ak lto-5.13-1-wip
>         git checkout 45fc24254df69291f9ebd597bc747df2eb61ee3a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/x86/kernel/paravirt.c:127:15: warning: no previous prototype for function 'native_steal_clock' [-Wmissing-prototypes]
>    __visible u64 native_steal_clock(int cpu)
>                  ^
>    arch/x86/kernel/paravirt.c:127:11: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    __visible u64 native_steal_clock(int cpu)
>              ^
>              static
>    1 warning generated.
>
>
> vim +/native_steal_clock +127 arch/x86/kernel/paravirt.c
>
>    126
>  > 127  __visible u64 native_steal_clock(int cpu)
>    128  {
>    129          return 0;
>    130  }
>    131
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104261156.UkMxlZRd-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3DaRdTHvzteF39FXhM8-7K5LjSL0H8B2bxbMF5nhgTuQ%40mail.gmail.com.
