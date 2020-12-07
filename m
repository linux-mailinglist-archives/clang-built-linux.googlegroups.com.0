Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5GZXH7AKGQEBIOZNKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C01B2D17EE
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 18:57:09 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id d189sf3051119vsd.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 09:57:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607363828; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mf8jycNs3Z/BHuZTSQiY3U0JKtOdvEKlPY6LhfyUQg9syjNDMeAPGyVKs2ZkuNC+2q
         BdvOOR68YiSj3dP0rtlQ1oJPebXoPy4qO7ImgIopQc7RcMr8ZH5VFONQeqcVpz6VHbL1
         cidsgIWrbPYcwP4sCEN63ONDScnRtsoacK7+loehL5hjuOS09ki5EOkIR1WZqvpcQ6sX
         Yf2gVr3TXDj2/3mKF92WTA1giJiF4aaiYzOYFxZWjCUepcd3rSHePco8yvBCBz9QRX1H
         rlZgFw0Vq4tcOm3nC53qPXcBWtGTXavdCyRthJQ4b/m7JMD/d1JZzw3Fq+aDrHb4BZZI
         adRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eCeTId4FPWqJRLYo7HzxiCM+6NSy3wQZ8GwP7cRtBCg=;
        b=pB/iTXD8CjhUonaZ+dFYkzM/2OetSZ3DdZAfQqMCwJj/4EC2vuqmTgGnj0E+HKPr6r
         WKMcj0DqZZLqdturijWHJKoFxP4zUXYe8XAY9vUoouQC+WZVS/2cPiur6ub1ocT/XsDo
         xZjl5D1OmO7qqd/ZES4rv7eEjzY6LCf5Lw8ZuMDRFwXdJYHMfXUn7WVR5tYTaZeDBBMo
         ar0sPjlaoytr8Ngi/e5uaAYLnS0X43/1p1XiIodA4RrzqylCblnWfiOkDm6gPKNPRGU/
         bnC7SwwgmP3zMmnkox/lumJv+tN01Ey34QyKufiWKwL9yI1g1kXCD3Py+fwQcjwipZcn
         KlGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PEi9J2G8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eCeTId4FPWqJRLYo7HzxiCM+6NSy3wQZ8GwP7cRtBCg=;
        b=RbOsL3g28mtSCR9M98Ub/lNWURwh3g8DGXLLY2udlELDEKobhmk6vWQcf1mUkvOhdC
         RIpItV+OpkD0IwpRuwD45mjz9DUf3g+SLHJuThhFZ1EWZLIt3vWuY7vA77M+Aeg+8xb3
         v064B0mIYuFFQr5ZFe9yHvx6aTUs+bBvCNJc4bmNcBM5nyCGgpxdvCUR66LK8tC4u7K6
         FdFmGZ2Or6lu2He9acPAEmMjxXC/VOWChAcmxylY4RuGI6YPJfvIPBK1q4M1zekuYqpR
         7AhXA6M8zPmvXWgFiKpY92ARxuLZH7UDVrga1IZVrXyHJYQorraoVX9A+zH+fKQ92zKP
         Pmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eCeTId4FPWqJRLYo7HzxiCM+6NSy3wQZ8GwP7cRtBCg=;
        b=b/lJ3b5hQOclXkv50v3IQ0S2BKBCa7PR6ZGp8FZ086G4s+AGYh1xQsGoj7kQnFa/P3
         t8OrCpjOVm3/lE0afnQZu5wgqf1lemO7DDs16r1LsH+2FaOKdMpF9/waalHbjRVUyShE
         60jjnBTlCFEIUQZVBpUQ4iR8X5LIbtcdsBAC56OsE2fQVVKLCVaqcFxEb5Nig9JT/sXe
         mdRbaaTcJ7fCfNTA8N2lVtFX0wNjFtmVvt8HtuAWb8Eq/RuCvdFs/lYM+AZzmUqBt0e6
         U9JQUP4+CACWhGYE4JG6tnfB3PSOr0unLnz+vkXJHTAoOQL09ANstuZcDWbixdnsbDDn
         TSWg==
X-Gm-Message-State: AOAM533wakroz0o5xrUHdZL+zjtHPNeOFBnrhhEzNaYGJdJvah4lEwmg
	t81aBBiifhm02KPiUqEuBTs=
X-Google-Smtp-Source: ABdhPJybOutYYJE7UwmzWjEsCMADh89REM4RQinLIvmme9zOba8vx/bgjT6/wAelOn6pjq483GjbbA==
X-Received: by 2002:a67:f69a:: with SMTP id n26mr12785663vso.1.1607363828448;
        Mon, 07 Dec 2020 09:57:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls629692uap.4.gmail; Mon, 07 Dec
 2020 09:57:08 -0800 (PST)
X-Received: by 2002:ab0:6307:: with SMTP id a7mr12488458uap.141.1607363828055;
        Mon, 07 Dec 2020 09:57:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607363828; cv=none;
        d=google.com; s=arc-20160816;
        b=KVlJRnbbBV+twfoeJ5JYtLCVJMMhudfJk5lx8+/aOOBuOgDzOBtNnAqik/UhOVEkKs
         DTejQAq9DE6Xf1PFi7namnFMHN8PE2/VSuSuseYBSfhKlMusQbijULi8Od7ILQSXuCT5
         90PItba+CrzcyXpLoGVwxLttNEI+XhtUuHUVVYg6BVvyEX54Z8Em6ZarrHCGKI+p9c2p
         hN+LBxl21BTcDJHiLFpTNlsgt5uFC01/MAJDOnbdO83fU3se4vSnnhm4oGea3Wyp4DAi
         BW+otI9EmUnYAYTqBl0iHjIyecfjB6f9jOXtu2sF3gpBUyDEs3yYf//A8CUc225mlbio
         kx9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6WCQ7BCapmnoxG4CL9KlsKYtd+1t9zJO5a9BfDU6+LI=;
        b=LUAU52R+06SDFCuweirCbQblmMwRTdmJUjfffTsXK2VPj3vNZnoUTYNT3WkJ1UJ87C
         jXw9+yADZg4w3PYeiN/DhY+QxwwwDtb1rYe3jn5YA+zzvQrTlDStjInwJDWbqMEjMwLy
         P6tJlyQL/q9WQU4QYE05jBZtytE4wpykRDUIfltDTOKFcbw0nqTTwOLuHJOQ9XIiRFUg
         nqMY3XcoFcDXy1V9YozWsstAGAq8Ea4Lq8E+00M+h5tA/FIRZZbfFL9z3cBDM9zpcKbJ
         WEgO01hX3hIdPb5dj8m8HNcB/du5Qq/G+A2BdauI3pzGO5DiAwXpcXTBlJzfz9MjiTpU
         bWzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PEi9J2G8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id r207si199806vkf.2.2020.12.07.09.57.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 09:57:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id c79so10804149pfc.2
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 09:57:08 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr19460484pgy.10.1607363827065;
 Mon, 07 Dec 2020 09:57:07 -0800 (PST)
MIME-Version: 1.0
References: <202012042220.zO7hSFT2-lkp@intel.com> <87czzlu7n4.fsf@mpe.ellerman.id.au>
In-Reply-To: <87czzlu7n4.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Dec 2020 09:56:56 -0800
Message-ID: <CAKwvOd=4vu_o3Sr14JwDO6s+tqZWp-DQKWs9So8g2_-zTt+8KA@mail.gmail.com>
Subject: Re: [powerpc:next-test 54/220] arch/powerpc/kernel/vdso32/vgettimeofday.c:13:5:
 warning: no previous prototype for function '__c_kernel_clock_gettime64'
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kernel test robot <lkp@intel.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PEi9J2G8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b
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

On Mon, Dec 7, 2020 at 4:23 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> So is clang defining __powerpc64__ even for 32-bit code?
>
> And the answer appears to be yes:
>
>   $ clang --version
>   Ubuntu clang version 11.0.0-2
>   Target: powerpc64le-unknown-linux-gnu
>
>   $ clang -m32 -dM -E - < /dev/null | grep powerpc
>   #define __powerpc64__ 1
>   #define __powerpc__ 1
>
> Compare to gcc:
>
>   $ gcc --version
>   gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
>
>   $ gcc -m32 -dM -E - < /dev/null | grep powerpc
>   #define __powerpc__ 1
>   #define powerpc 1
>   #define __powerpc 1
>
>
> Which is fairly problematic, because we use the presence/absence of
> __powerpc64__ to determine if we're building 64-bit/32-bit code in
> several places.
>
> Not sure what the best approach for fixing that is.

Thanks for the triage; we should fix our preprocessor:
https://bugs.llvm.org/show_bug.cgi?id=48427
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4vu_o3Sr14JwDO6s%2BtqZWp-DQKWs9So8g2_-zTt%2B8KA%40mail.gmail.com.
