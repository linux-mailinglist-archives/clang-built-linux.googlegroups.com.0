Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2MB2DZAKGQEQN36QJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DEC16AC80
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 17:59:22 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id 108sf1346990uad.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 08:59:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582563561; cv=pass;
        d=google.com; s=arc-20160816;
        b=aq0AOG/jcVOypANd3GHqz438isv6ihJQ6ilH+WbHdry9mo/WkO5+H5Vcd6VxaQgKLn
         2vrqaDa/rhDww3VnqizaM3dHmanYvX50hTxm37Rv/pY4ygyyMLhoeB+o5DJN6LFLXG8o
         E/5CKYpGP2r4kuVSmj3ySuGSA1H66IATlsr+3GIWC717Z8k2BmxjdJESvvGC/xem8QLa
         FoEA+HgoUQbYn/SQMi6JM/2X1BZYmDeKAFUQKsUGXzL49h7shEZ6EMGEO690wvJMwcy+
         7o3AvWV3GFAXhk/1SSxkLZ9lMmYTNrJw2EL9weHZFGm9V4q9jgV5FGTZz8VoZLf2kaBQ
         Bj0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VTlwWRdWKyUY9jduE9Geq18k6klXhYJcMxY4Z9GQf+E=;
        b=rZJ5IeMQ6GBv2gPIojAOV0leXOQlmrKK/AFizUzYNGHUPsz6mNVbOagR8uQE2t3mdH
         YKlnULxOilMqeAmJXfyE2lXwm9LmSJRBQROAKfs2Qi19a4zF9bU9ajh19VRYhY7qejzV
         hcvupgT1WD4f+mIbSped+erV9jtlAXPJKjo7qqDV3P+5JnnSwMVG+EuSib7MAxmcO51S
         2cD5sQqc4tiGMk/1zs5c7bkMR6EQRAC6iUIIyeIVq//mqb8uKlMqzzClU558YXzmBvC/
         LRi5wals5pE+2XFusbyJZVToahNmz5OUSCBIyY8XMqzLQi8sILIfzhm2kwHYgijEmR4u
         jM7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JJf0b/fQ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VTlwWRdWKyUY9jduE9Geq18k6klXhYJcMxY4Z9GQf+E=;
        b=pY08qFOxpSctZqHWQJxjdtxKfxORxmmPH4/2ua4b7JDM+rcY5hm/T7MqodcKrbDIcT
         ok6eXY0OJzFxG7sRReJ64ghsEP9a6pSQQCAnUsvWxl+uyFFv5ZuO559y8uP8QZocfPQx
         83r9dcE2Sm39vUFuyHYze0P/iqsd9AyoerxJ8axQ37msXUHUuVcJQ/fqtPHS/FwCv5ij
         mdMgBwLxlUD4ndNTMdT6uZiF6DObUgABGnJW8lxIMAtxLRu1PLP+7qQ3qH4sGRhMHfPC
         KIm0Qf6zD/t2ElHtdnjw7QyEWiPb7thakjdZdpOuj13A/4QZZjamF/ATBdMf4QgE1lra
         cQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VTlwWRdWKyUY9jduE9Geq18k6klXhYJcMxY4Z9GQf+E=;
        b=tgKZgXGRj5mBowFSw0KUSOdvZJ4Iy5nze1ISS+28woqIxSC1TsTdhKqbsJmUMB0mfu
         Z7z7De0BGwG4fNmgCZHHNtyr02W46gm2lfMQgl6Dl+eZ3pUtzq6GZQpEDP2biH2xehi3
         SADtw0EjDda2z4ATmSJqg2ZRAfS7lJL055pMgk5xDzeCZGpAsyLRNSYUZzWsDq1v2FHR
         DlIt77sEsMPK5ItOvAz8KP5BcZeChWPUBrByqjqVrO1z/5Xczcc4Nfxdzvmpk1lWHut/
         uNVxyLhVxixIlBQSg+/TNF/I9Qv9JnjPtYWtKDNDYfMkK+8y7yAF6oGLRbUHXE8/ZTIr
         q5yw==
X-Gm-Message-State: APjAAAU/ig8wZ8SslpbzZgXkg7kn003BCaRl6MDa9FbQL5neuxAflFxC
	H9rKYkrZwpzYJsxeln7xJJE=
X-Google-Smtp-Source: APXvYqyiJ3aEk1Lci1gbZYyMGi5MWP+nzEICr+e4T1tGPa7NKAE4Iil5B3wupnvOpwxvzVtS0rU0iQ==
X-Received: by 2002:a05:6102:3d5:: with SMTP id n21mr25827816vsq.26.1582563561293;
        Mon, 24 Feb 2020 08:59:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1204:: with SMTP id 4ls473329vks.8.gmail; Mon, 24 Feb
 2020 08:59:21 -0800 (PST)
X-Received: by 2002:a1f:7d43:: with SMTP id y64mr23735264vkc.15.1582563560917;
        Mon, 24 Feb 2020 08:59:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582563560; cv=none;
        d=google.com; s=arc-20160816;
        b=aABnSXcXeBAkN4UuDpHb3q7n9OSwEzPCZ4y/x3AJdu2w5P1iM/sVGhE7Rf5ET/ZRzk
         1e9h0sfh6pE+Kf6cKIdjrqlAa/LAA58vQDzVjh7dm77nkTTbZxDDGGameyPdMmYy2QPx
         duFXcnaSFl9B2rwZ1JYjq8nd6OGmsr/af45ucLVANQD0LvPMnbfDaEaGEJLeRSgsHsF3
         QC+lYouG2j+7Ij9sCpIqwwa16V8VDKGRF3S9+LtfeZz73h1y64KNlSf1kOW/zLEOUwkl
         588RMv0v1LmfKYoJrofQ9rm+qCZbTdtOO3RNOEsdetJ//8hTz8PdcrB69jJnDDs5x6C/
         UD9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TG5cI0YQsqs6zAtqVt16rpa596uRiREJVB1PlfHAN58=;
        b=g3PYtshFYaXsNfQWmLitBati1pIZeLzR886ipACf5Tk9r0L5xKaF7XqdvISCh307IE
         lD1e3sQ7FaP+/P0frNGPECsEBIEin77R5UF7AjNVXraTb4Idy3QXOgUpELkBZebhRMJC
         E/kcuamD9tPynfI3giclBL7COYFhUapjlDz5b1QuyMmjo2UQUgaEl94He8JVirdMfYtV
         2Vned5SP9W7T/6nTVYqd1hwEfDIBZGbE0DGnAnPOzS/rHpjCS1+pfhbI92O7Ie3IqdNC
         7DpbRPtk3Incq5DP77T3GANQdY8TiHUyHQvg1pLDcKLxQZClKGBp2d/k/xmAv7hwipcP
         eJbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JJf0b/fQ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id w4si686490vse.2.2020.02.24.08.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 08:59:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id f2so110124pjq.1
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 08:59:20 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr20794905pjb.123.1582563559523;
 Mon, 24 Feb 2020 08:59:19 -0800 (PST)
MIME-Version: 1.0
References: <202002222325.hmmCHeQw%lkp@intel.com>
In-Reply-To: <202002222325.hmmCHeQw%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 08:59:08 -0800
Message-ID: <CAKwvOdmCYdR+rTwdeQ8dVQGWxfD0V2hKKEjwhio3_SgRr=augA@mail.gmail.com>
Subject: Re: [linux-rt-devel:linux-5.4.y-rt 45/303] kernel//printk/printk.o:
 warning: objtool: keep_bootcon_setup()+0x1a: can't find call dest symbol at .text+0x3ed1
To: kbuild test robot <lkp@intel.com>
Cc: John Ogness <john.ogness@linutronix.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JJf0b/fQ";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

Hi John,
It looks like this tree may have some patches from tip; we've fixed up
that issue, you may ignore this report. Sorry for the noise.

On Sat, Feb 22, 2020 at 7:08 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi John,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rt/linux-rt-devel.git linux-5.4.y-rt
> head:   3205ab6b87084709279e2ffd4654caa2adbca73a
> commit: 35a550e0af7946f894d89a6e6f2d0991f71547e6 [45/303] printk: remove unused code
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project d7c403e64043281b9c5883e3e034da5ebaf4985a)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel//printk/printk.o: warning: objtool: keep_bootcon_setup()+0x1a: can't find call dest symbol at .text+0x3ed1
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002222325.hmmCHeQw%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCYdR%2BrTwdeQ8dVQGWxfD0V2hKKEjwhio3_SgRr%3DaugA%40mail.gmail.com.
