Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF6RD2AKGQEX32H5PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EB23719814E
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:33:41 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id f12sf14820094qvw.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:33:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585586020; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/Uy3TlR6CejsaIKv6N/Z9RlGRaHVzaI3OKldwTOg7RThO0W4+Q/y1XM/vuUsCzYXO
         UYi5HAnG5waDlXSmr2HbTYoB5wf+NjFYsNEFFWtVezuVXiCXtpjQhAsyhUmDFgr0JV+l
         3HqL99QRsDMlVCc5uFDiuZA2hT1jUQxueChOrctr/Rg3zO4H3iUoScz/DiXqMecgR06/
         E8S6kfMtzEQ5WCgpxNOHO+Nb6qKRc0YPonuuoQ38oiKyjDZJmwb7S+HxeQCeK3yieb20
         Navv9ShRVidTwikjujOrCZnasLajpD3yWVuAIRRELSvq3NfF9jVtKQsPwlu3awyWwBR3
         1LHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DJTfxRj/1D5wVvxkzAuDEBtsXlbeA9CXMe7NdXLr57E=;
        b=wF5jSPpoN0xyU3HN+CkbZPeMCPln9ulad60gQ7gdSxBLtAsaAqsLigif9W8DZ2R9NE
         j0B8STCbWYeZaIIKwhSkkA2VfSrr1Oj02Afbzxz9PA6eR8vaxwE4BgOZoLowgqsWF6Pl
         zQSIWu4ElZaEVWVVvhfesgLZUqT/lo0NTrjcFSD63Lg3GGP9I/mINRXCfAk2fbZr3dJt
         jE7+nOkg8Cl0TuEazlXvZrkM4LdEma+ivmZb+HA1gDwN1rV3R2BzwBpyHFVErdhVJ/Tg
         aaEYOObZhX8I/Tzqj92VWlfkrPo37R5RDrc/hsdOChPt5ljwdWOI/OgWHOJVzQGcMLKL
         qQmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g2HwlIWl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DJTfxRj/1D5wVvxkzAuDEBtsXlbeA9CXMe7NdXLr57E=;
        b=sJLapMMr75ZpR+PB+eUrPYrSoyBdjH2VFcUysNluJz1dt/kh85AXCqaBF/1An/5HhA
         xcg7GsbIYm1GtyYEuyhD8hy9h0km8C3C4GQpmxYbZAB9BwPKC1PceG6HJBCt8+aHXvlX
         nNfJmIx7J5vHOppP1aW9SQxZ5L/ftRoLYG4o0SFqTo2G/tIjm/TxSPpWfOhdYzIUX2M2
         V8LgXFz4w3+Ah2uQeWI+lRRIH2t4GZQgBC90w9gYme8kvE970inx6QWGJGOMdMFZaqgs
         5dJOMrJ4ZCKPKuAGzvfzjgD3KGJKj2ILO87V4BpH0XcfjEO57wyMfJX0c0jeRuGHQF+/
         Bxfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DJTfxRj/1D5wVvxkzAuDEBtsXlbeA9CXMe7NdXLr57E=;
        b=H2muJJ3pHDpo6/Sef48eyzYRLxpSC1S9rvdheTdMAtoR4afDbQsmOHmjZ1BVtN8GG4
         V3PSZRnausgaFAfYABpYQwSkVFPKGch8Rb1RFOGLL4uoFNxXEKzbQ9NFgshfxKd6I2eB
         V16TcfCUswAOedDMertDQZisFNElZNrn0Xi16Osl1nlmKnljPnbVLR0f+U7RiO/wlTLi
         WY3W3DIAgiyubjheoB0sxCSJa4HNAspBV6QPq37ox5SPVk1Ns0RcsBdaw0M0PyYBZO7y
         +Yp+lMuLyyoOy9JMOPkFrcAT6FbboodZWbvlmETXKoSfpPPtnF8K01kWSnvQE+hgrHAk
         KuOw==
X-Gm-Message-State: ANhLgQ3gLsOkxe/SRmZoBidkqlUKmNobpVFMoqA+UBAHbJuNXYVZpDbm
	Ph1lPALYFJNm3I8wnkXvyY0=
X-Google-Smtp-Source: ADFU+vtGvaKm5t+AuS8h40YGrXUoOcEYnsh3zBnu+K+leRys+IXnp5BCcidAiSAgSdHvV7gcQ2muCg==
X-Received: by 2002:a37:b786:: with SMTP id h128mr118725qkf.92.1585586020503;
        Mon, 30 Mar 2020 09:33:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls7118208qtd.1.gmail; Mon, 30 Mar
 2020 09:33:40 -0700 (PDT)
X-Received: by 2002:ac8:348f:: with SMTP id w15mr815369qtb.219.1585586020053;
        Mon, 30 Mar 2020 09:33:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586020; cv=none;
        d=google.com; s=arc-20160816;
        b=BQpzZk6dGIg24FMuyJ8LO+G4FMzwmzCSnf4YURsXI7qgE9IR6MCBvGec9mOVCkMJMP
         KJElT/Ztcs5yDuy8NZXWVVHpRzuz3Cu1TQmFW27VrSF5Gw7jkOS9yqDn5Mj+CD0KDymv
         vtJndjqU/GRtz3mioDmZ7ri8ydy4bLgg3/fzfSPqw9ZVmUPlPXA9AGvaxOLGnXtYnVER
         qgLdB26Vss8c/QmbC2Qgfau9aWxgFSh3lWJMU3ydRGfoNNr4zQJdqgenZf6WgG3VGiv4
         I4kH51iAiIXwJrbmOMSK90V3/WjvgG7RL/pt3hHwfemHYvmldr/SQbOKjfA+hhZbU2iL
         Rz9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vwFxgFdx6a3Q30U/H/zAjrcVww4Y1+pLzTigXdqmebM=;
        b=jGLPGu5FMh4X/v0ZRXi5EMZDWO5gq5WhyR1Ytp6miPsVYM01DEh34G8+bXORFGkwL9
         p8M0RI5IPJ8yuwaHhKT1ydz3Zkoh44rslW406jiK3A+f7e0tMar9XkEjAzUCRmFtR5Ga
         vjt0sNmjccKtNAHSK/KbqW59F3/9qlY+YgrZgxnH5wgvLe3EimK/Pf2hsKLIaQea7P/O
         f9/4nnEZy6cmUWiQV0oc0wBdaGIfOygY+r70o6FHx5PHu+R78jusoJ7nwMdI8/Uyotei
         x0ltpafs0wuaiqVJR+77OKrqKyLqn/W2W9AbJEuDm0yULIS0bcJRjomjuOsinlImGxw8
         QiiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g2HwlIWl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id r14si1155391qtc.5.2020.03.30.09.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id i13so8846450pfe.3
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:33:40 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr10202221pfa.39.1585586018886;
 Mon, 30 Mar 2020 09:33:38 -0700 (PDT)
MIME-Version: 1.0
References: <202003292330.Qob3rHkz%lkp@intel.com>
In-Reply-To: <202003292330.Qob3rHkz%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:33:28 -0700
Message-ID: <CAKwvOdk8U61y+LnQZXdnSJAmLgF4wzorVKDttUn8P1vdkC_zig@mail.gmail.com>
Subject: Re: [linux-next:master 9903/12636] arch/x86/kernel/sys_ia32.o:
 warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
To: Matthias Kaehlcke <mka@google.com>
Cc: Brian Gerst <brgerst@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Dominik Brodowski <linux@dominikbrodowski.net>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g2HwlIWl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

On Sun, Mar 29, 2020 at 9:00 AM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   975f7a88c64dfdfde014530730ba7a6f3141f773
> commit: 121b32a58a3af89a780cf194ce3769fc4120e574 [9903/12636] x86/entry/32: Use IA32-specific wrappers for syscalls taking 64-bit arguments
> config: x86_64-randconfig-a002-20200329 (attached as .config)

Interesting, second randconfig report mentioning gcov in my inbox this
morning.  Will try to repro and file an issue to track.

> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 121b32a58a3af89a780cf194ce3769fc4120e574
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/x86/kernel/sys_ia32.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> arch/x86/kernel/sys_ia32.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003292330.Qob3rHkz%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8U61y%2BLnQZXdnSJAmLgF4wzorVKDttUn8P1vdkC_zig%40mail.gmail.com.
