Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOUTQT3QKGQEB7WMPHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B621F58FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 18:26:35 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id k30sf3478112pje.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 09:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591806394; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uhfol4GAR9q3K51RSPjCBcfjy0PuZsy8bYlt/gENqthhG7af8bXnolSsjW+Rlnf/yG
         vi9DDxWC0UTuYutqmwJ1YbB+HOtxF5YTr39Ju6wVICryTSIOX1egUnxoeYc08FCdzx/q
         SkDED5ILkGHeOPqOt2X6fNLezHF17dUbhXRVBEIBy4/p5lsFqbtgNEBneh5ORtNin3uc
         kXL0X1Z9AyJbPD8fCgGSMHKBZzRu1s25Kqno6DioUKdHp3NfIIBZtovjwfsUJ5xMUQhJ
         U2Ns77CeOF7mBTVevJHoIPqyzX/Q1b5GEP7sVWTJ8iMBSGJbqedIDxA67TEZIHy+G7U9
         xAIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=upXptd0z7i11pjusrvGVTQbljoqS44M7kGmz5TOUBi0=;
        b=K3WIVwu9CUZUzPemWrAsmitjzN0Oqt7/O6CuELKcIX+zEn++hGphB88vmwA2Y4RvJ6
         YCf+35GDKNlQZjcA5JCIFMc4xhGL36AXRJdRcUcTLPIG7ICVzgkBMssjIKuxb/Tdewdz
         nVnh/+JQPa+ytxHlrSFxi+cV0mo/zPmkLnJsmYQuGrDDpdbnHKWp1Dd1k5AB3SoNCl/t
         dt8zMJbKRzDvvplLpJLRDY0gt3Oeu/cL56iNSEQJq+U1L7zpdBVxHs0OdQEDxe46BIrt
         kUMDXRGUBklqRI9GY8WjWf0mjaJ4D693Ts+unXJUoETMP+akNgmKgDlfcqWn7u2VJSyG
         eAcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hXLvfWtZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upXptd0z7i11pjusrvGVTQbljoqS44M7kGmz5TOUBi0=;
        b=Zf7k3E4wPomX1MYy/FPmEP/WHSgVRKvZqIhZTcRTnU9BSNEwKP+77J8AX++vm+g4Vl
         RZ7AUO7GVjDx4RsZefRkCs0tUVvj2mowakbeFKNaGgUEe0OG4vbb6OMyjzNfXMyC2p+c
         W67yaK+Pqz1yb/k1uciYqVhHPhZWDNRage/J9ww2wglx2ixSnpR5U3EaQ3pkXjbyaLey
         AKhtgrlOuZsuvjzxZLy1ADJdDrnBa+w+4UFy0TpmI+2ZrXRWmrUyUX8IAB9OnT4OULe+
         eQ6w0gRfvs8yRO86ncFQg4dJ2B5N1c3b+0Jsi9y0Rz7uVcCvo2f/LIzMk/XQT3en9kGU
         6DUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upXptd0z7i11pjusrvGVTQbljoqS44M7kGmz5TOUBi0=;
        b=EGcs1SS98Dm1/K0Fb0fRbd6ZNgN6gq0IMP23nVLqnax/T2MG57UiJRy0Ql2S9LSnCC
         kHY7B771wxxQRobGNLmBFwybtXqr8YL9GiNnM7QNj3LDLnVNEL+LzOat82uyuASms/ZB
         RTV75pRZnO8gkK9rydzS4qx2rzMRd8DHU8LEG0AkxnHkCCTYc1SHvbsVk6cJESAKwv+g
         VZtzFKbGgNZYBSJk7fpsEXemnbNb45UoKiUK9Pw9u4Uf55eUJLF2nySFmWsLeprKkETH
         aZVntMRs7uI5vcm4n5/ZK6bB5MFmW2vocCFAnra/XzA2tx4DvvxDBlvyebNczdM5yZ69
         HC1w==
X-Gm-Message-State: AOAM532Tjcn4HTyMyY0r05aB6wJ8I7N57/J2Vqd4JtNb2wTZgfXlKDOa
	jbJDW64EZ1aFcWxNVa29LHo=
X-Google-Smtp-Source: ABdhPJxtpU9HsXTEHgtsoWorznq1nSjnPCgtHUvAWhWMXxqjM0woZFg0Cts4e6iMPXbglzYp6XIniA==
X-Received: by 2002:a17:90b:e8f:: with SMTP id fv15mr4041295pjb.47.1591806394144;
        Wed, 10 Jun 2020 09:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls1403504pjs.1.gmail; Wed, 10
 Jun 2020 09:26:33 -0700 (PDT)
X-Received: by 2002:a17:90a:25cc:: with SMTP id k70mr4056374pje.174.1591806393596;
        Wed, 10 Jun 2020 09:26:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591806393; cv=none;
        d=google.com; s=arc-20160816;
        b=NAvLGv8FeBO+KBnSaacA49uPbSAQj7mBeUwji2Jt8X4mI9SR5CcYh4w3mWgJiHXorP
         xYKW/PqrVBkrU1HwGlIQTm3bJLYG9sBl9kdjiP+VgqWRJ36yWoaKD1ZdC/wUe5RaPhNd
         Pesl+ALtvbBb01RtDg1dPS3g1c9NrkL5Uanv/GoOt50RRj5HTNoDg2CBKNh2JSl16h2+
         IFB3rA6550u7t57l/G/qiP6Bs/9/HBOAJ4WbzcW2zKcNgYnZri9QgB4kcfYTVZKNSLPl
         7GxptkDIkGIvjHXi4uT+7fDGHk5GN/s56JGg8l+ZJGiKqwHOYCbtfdnJwUOWLj49ynKR
         whrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hH3/1gXppihzOXT9mZ8zGGkMuHw1dt+WcJ0ioaPDuoo=;
        b=tx/E5RvoKMpJ+dSvjdW3HYFre7bFy0vONi9YUxyUN1DIapUn1qSEGJn5f6djEhXis+
         OSGYKQqGmeo7i4MVApzf1O/b3NNKWuRLx8tOl7AGvCWrKLLk6xuUFeBvWLQnwOBtGlCl
         WvOgwYk3CZQrKpgFy1ppTc1eb7fqz1nYKoiKFi0YEAvnBTxwOYoHVq/3/Ky3xvyKLScS
         NAoamHvn3ZDLZhuI2oxZBEhjFtePNMXcONLvEhozzvlI5cksKtnDVTz5sDP0OhNqM8cD
         i+sb3xA2M7evIv3M0J2fCPc/rL7gi2Sv2lYoh3+myJE4rLlJ7H/HeZxHqVlBh+Blitse
         zAbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hXLvfWtZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id kb2si29152pjb.1.2020.06.10.09.26.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 09:26:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id bg4so1150285plb.3
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 09:26:33 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr3585147pja.25.1591806392969;
 Wed, 10 Jun 2020 09:26:32 -0700 (PDT)
MIME-Version: 1.0
References: <202006102110.8dtctAJf%lkp@intel.com>
In-Reply-To: <202006102110.8dtctAJf%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Jun 2020 09:26:21 -0700
Message-ID: <CAKwvOdnYGQs9suorx_EERZ5cMkZtvQBKqoU7Q0DsgYhOVH5kTw@mail.gmail.com>
Subject: Re: [kees:devel/seccomp/addfd/v3.1 3/5] ld.lld: error: undefined
 symbol: __scm_install_fd
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hXLvfWtZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

+ Kees (LLD errors are hidden for now)

On Wed, Jun 10, 2020 at 6:32 AM kernel test robot <lkp@intel.com> wrote:
>
> TO: Kees Cook <keescook@chromium.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git devel/seccomp/addfd/v3.1
> head:   9a69dc243008619f599573f8fad6e4ab224cc19a
> commit: e298dd6511d45bb8dfe849d6440afee6832f1b64 [3/5] pidfd: Replace open-coded partial __scm_install_fd()
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout e298dd6511d45bb8dfe849d6440afee6832f1b64
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> ld.lld: error: undefined symbol: __scm_install_fd
> >>> referenced by pid.c
> >>>               pid.o:(__x64_sys_pidfd_getfd) in archive kernel/built-in.a
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006102110.8dtctAJf%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnYGQs9suorx_EERZ5cMkZtvQBKqoU7Q0DsgYhOVH5kTw%40mail.gmail.com.
