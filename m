Return-Path: <clang-built-linux+bncBCS7XUWOUULBBNEEXP6QKGQEZEVX3CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 433B22B224C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:28:21 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id e19sf6403385ybc.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:28:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288500; cv=pass;
        d=google.com; s=arc-20160816;
        b=bREmQMpyU4qf46cdNB0lBtLVzF8vZkYU5S83gomI1WX8JAjgTs90TeaH+cGRo9Znnf
         Wjeq/Xi1UJys6XlM0t/xvyOxWITfAu+YX+RvPTNI7qgAyoee7XlEzAyu8M0vQmUE2s5s
         9r/niKwx4S2dU++z6ahyEczacQeCnDfhgKbjJCS5FAbzHwGBOmZI9HOCXktFvcy4vOl6
         qzCo+JRCqeloKJrI0RSu5Mqo/lrtXqdwytLOn61Fr5kw4zpJ4OivOtMSmKnFQmcB3W+Z
         +DX8obeZs5yrN+U3fH/QJCYGc1U4UOLEcyEtOu2mgPJe/+YLdUq02sYez3w0ubeUyACs
         qRuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uylyMVULv8uEyNgIXiIV52DHy+wgyQukufaaI41Q7zs=;
        b=plmLI3yLJIMDJEPHKjdsJ6rC99cPnbIPqzqijljwrJ4sC16S38K2Ajs15enZlvPyIN
         /2fZtYocz6VPxnPDGORul6IH8Bb2o/jKhVEJcR/i+m0/bZBg6GcDTZsbPVXGfNEz7XG5
         fKughBp4PtC4LE5gmsjXxi+XKWevDu+AV17vibDkyxDLZQDdW4UJWElB13gTF0i/MYpR
         vAunaWMt7IvofxPPjWhxw4MLcjQBEOmlzA+hATzVrudo9KGBYra++2qdx3BQVnYjCXfb
         bn4MPYDHd7SzUcH75DXqJS7FSez72ah30XrStOMIW+VNhFlANDpfRZ4VJ4QiR+hdAwRp
         MUmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q64Nfq4l;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uylyMVULv8uEyNgIXiIV52DHy+wgyQukufaaI41Q7zs=;
        b=TJQll3ttfxdxeqc03nWkYuou2Aak/Xp6FIJS13NGwM5Lp+2rm2Jt1sIAmHfMazJ82u
         /53JDlTXuYlY2RjBeXzqvPg1dxUbH7OqCgdWqFcU688KAkMeIOl/+p06wNqQ/3ldqen4
         hASJu8fFEm3HlxTPpONePY9sPkwnqy483zw5GKac64BwZLFlRTkehOw/f14c4q8N7NAN
         Glv7nULP3Tq/pWOMNzXT83fgCBowjdjeY1zAXJ/r7WZJMgb/8s4vCcWKyCaiM8s07SfD
         rYYhM1d4QMbCaq5MpXpKstZpQyBzJeNWEsuQ4MrV8bBLQ70vGdaaAhf2W7Mu+/3BD4PW
         9Z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uylyMVULv8uEyNgIXiIV52DHy+wgyQukufaaI41Q7zs=;
        b=WX5NFimrEwkARBZ6UB6oGZQfeWkV4Bclf8+Yg0xsMD7Cpk5dB4YPR8YkvOX1gmCY3t
         7JGVn8r2IuU2h4po2XnkGrmLCH7VAmmCm7DkfPI9n0wpZanBknPmObnU/gLHt3wiyIHH
         4dM/Dh3lAHjaiV5AyXv3HFAW3wXsbFNNTwOvt+EYyG6Eks6aAZIGXJdgxdoFf3vU8NL0
         BNQzKqohovkuDCnpx34k8e9RuHwqJaFB+CGAWB7GK0kUsQGmY5QFU/c9ld2ddB4XNMmU
         8JcAnEnOwbV7ai8tFnquIr4i0uAHUTWI9SHMDU4j/XPwyC008FFKZC2p3znZe0B4NhEa
         dFvQ==
X-Gm-Message-State: AOAM5315zk3yM+TqDci6l5eUUw4TBTE8RgDzZK3ta/9+edf0kO+KMrHr
	wVlDOcUi9MHelTnDrZE+/r8=
X-Google-Smtp-Source: ABdhPJyEsmI/va+AjC5ktGHobjibX1fgNJYUX06fdnsZ9p++z2AxhpHxj3DVLGhV8HGsZayrTf1Gtw==
X-Received: by 2002:a25:7902:: with SMTP id u2mr4518547ybc.202.1605288500165;
        Fri, 13 Nov 2020 09:28:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:7cd:: with SMTP id t13ls3625432ybq.8.gmail; Fri, 13 Nov
 2020 09:28:19 -0800 (PST)
X-Received: by 2002:a25:e7ce:: with SMTP id e197mr4762089ybh.305.1605288499722;
        Fri, 13 Nov 2020 09:28:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288499; cv=none;
        d=google.com; s=arc-20160816;
        b=r+Ck5IspQ+I5TfYHliIJi4CsceVSYTKhuMRTLxGenkWByblirDNGZY2uxn0Cv0X2K0
         hv0Iu9/XtqlM89qSRwd8hVhLnjgM+auYYkH+9+mB+bKmoWachvDBVKByIv7SKAs0FQdS
         980GBfGI93i/11PuyK5yqYAOOvm2e5vjxtYnMlVXpU/OAzyir44tKF4eC34gSQLBQ/6d
         9ZmbTC0/qgcbNhmCrouyW1Ndps3cZQ8hqQ60g08uflc6SxUW/czfpl2Yh707yqer4C5U
         MYv/s5tLx6aYNUEjR0OvLFuHKTa3crq25tHqHCLKMxIrT06Q5x64+Wb8LC11gKBh9ead
         EC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gTeG8sIVZdSZyisMOg8nHywKwuHy9ybS7O9fYvpUUN4=;
        b=n2QzYbnTYgE+6nbNU6MGGAZ0yqss12NxP06pnBMCq7nKVoiHYyI2POU/wZ82ykzHmg
         KeN9f2X1Gt4AqiULQWZLNtA3yXUii40bUWEgPIO2Q0AjBuX4+6dh/GVs8LR/DZbto4yR
         32M7uFJeZe6fkolXS1P9RFerT3aJaWGabfdbkqAwLKbHrkRZ4G/yt27IN+UbUMNfEXpT
         ailD8+y1CnoOsEk+5trNBXybWWhTVqp9YxFJARecte8iWGjxatWn8NyubeBAwGh0WaVW
         Deasdi1wmWHQP6iPdM7yu+96qh2lJRPx0Ulq56+1QaAgV2BmZ0DS50FKLDtjm8cvTQbz
         kvRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q64Nfq4l;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id g36si538337ybj.5.2020.11.13.09.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:28:19 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id j19so819451pgg.5
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 09:28:19 -0800 (PST)
X-Received: by 2002:a62:75c6:0:b029:18a:d510:ff60 with SMTP id
 q189-20020a6275c60000b029018ad510ff60mr2906568pfc.35.1605288494319; Fri, 13
 Nov 2020 09:28:14 -0800 (PST)
MIME-Version: 1.0
References: <202011131146.g8dPLQDD-lkp@intel.com>
In-Reply-To: <202011131146.g8dPLQDD-lkp@intel.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 09:28:03 -0800
Message-ID: <CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k=Q@mail.gmail.com>
Subject: Re: Error: invalid switch -me200
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q64Nfq4l;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Thu, Nov 12, 2020 at 7:22 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Fangrui,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
> date:   4 months ago
> config: powerpc-randconfig-r031-20201113 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e0c35655b6e8186baef8840b26ba4090503b554)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    Assembler messages:
> >> Error: invalid switch -me200
> >> Error: unrecognized option -me200
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
>    make[2]: *** [scripts/Makefile.build:281: scripts/mod/empty.o] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1174: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:185: __sub-make] Error 2
>    make: Target 'prepare' not remade because of errors.
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

This can be ignored. The LLVM integrated assembler does not recognize
-me200 (-Wa,-me200 in arch/powerpc/Makefile). I guess the GNU as -m
option is similar to .arch or .machine and controls what instructions
are recognized. The integrated assembler tends to support all
instructions (conditional supporting some instructions has some
challenges; in the end I have patched parsing but ignoring `.arch` for
x86-64 and ignoring `.machine ppc64` for ppc64)

(In addition, e200 is a 32-bit Power ISA microprocessor. 32-bit
support may get less attention in LLVM.)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3LpSmxVnjHfQAN455k1ZRg3PbgZYhWr030evCq1T10k%3DQ%40mail.gmail.com.
