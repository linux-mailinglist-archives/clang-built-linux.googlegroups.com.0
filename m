Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHXSUSBAMGQEDCN6EBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CD13349CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:24:48 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id p18sf5144478pjo.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:24:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615411486; cv=pass;
        d=google.com; s=arc-20160816;
        b=BaWs//UzEbzYMnZsBtLpf4FZBA1qbrbaRJTh1/MM5yY/MbGRCXV5jO2MPDKBBLPW4r
         hC+zJ6q17TKGrEdlSyg454adcURJdYrf89B7GXABuCJSIud4PfL43RT2cMk0I/AxDRJu
         +0hSmi+1TI7vff4X+ujI4tm4UMdczFHyY0t3hKT27CD7aY+0Oa+8gaB8HVoo58os8V5S
         vI2HPTOqhQxRr+5y8rO7TtsoXPC04MO67X4meiFeHZk2i4jfbb9vMyEQIu7USxmIMyVE
         lcZG/ifpYIIj7HwNfXjKq7kBJiXMHl+TuMELTffHpoLkHwDZsM6UOtVvMppOxBmABOUl
         CqDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ScaGs6syKsR+2t9OXeuTKd8hwQGc/LMJsZLXj71YJ14=;
        b=dMfb3FnzgYz7rqa4QoCr7duuPhJZujxTrhbXDd3PS7naMVM4dox4HJeAA5ajLPUbM+
         N0fyp83QpQdskpKlMy1NOaIjTiZ37HQxfHLX7J8eDjhL3xoRSG6d5nJB07uiQ+FQnOBl
         2AunpvAY7loyaeTCyruGNVdaGRF+/O2al7Y1Kvr/0spvGLou5xAAre2bQCTMdcnVeuU6
         Nx8Dpwb8GubWaSXdqBMDnGQRzBeHoiKZbuQJGnuPmeekwk+9p5ijogRLR/5UVEs8Oc1K
         pUdTYOaTq+y6R3sIza6K+Yken372mLH6B3qTqt0VDzomY2GjlPY1aalcvMCchYH/ixNy
         pKUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J4/FovK5";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ScaGs6syKsR+2t9OXeuTKd8hwQGc/LMJsZLXj71YJ14=;
        b=DhZyCtEBzL9kN0O6RR6ebbzkoky+pkGfUSUPyzlHhqBasy3WAob2rAkhncPFeYpzUg
         9vKIaK+LKAcwGw9cReWLlneTG0uWQ56A2Dwyf1jBvnblFSoI8bOyn1xaVOEnJc8sa0ZS
         9QtphimKpEUer8KY0Ec5ryB0A9Q8QKGEcsrVbmZiMaU91HbWGrMP9eMkoBOuYkzh8sCb
         GVLNn8mgcQlx9Ipdoh9gRH8KPsgosz/7Q/gy4Pg7de77kQRR5Coa+ECRA+6yIbQC1cJM
         7S61f+Qmd/tLAvkTKiEOYDJnGQmyvRJb6PYFXd9p4rPO8xGpHhIpj+8YO6OeaUE5F5rh
         HCZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScaGs6syKsR+2t9OXeuTKd8hwQGc/LMJsZLXj71YJ14=;
        b=GtPevtVt9vIwKZAGQ7IXilrWo7l7JYwxem7j3Ejz9heeb2PZw6FCneXzk7OD/xBJja
         Mc5+kK3AWJOgOPRoKyN+QVyw7081hSgNoh2NRlbM35ukOMUePDw5gIVnumvz8RnhISOe
         viwNiS+dP5DWqbfBPzZTx+CvnnnR2dOHV5YvW+aAVVKZUePQ4BSQiyW8EXk9HDYUcq40
         qO7s7jyZCskJB5UhX35fgvM1y8gbpN/HUxONtocuGXriHAp7JNRKQMz/TdxhzGfC14+2
         2YffO4C7hezhVFqgXVsw6kk1ajXE0gs25xq6mmJjzy2bvwdDCytBSP8hVENFGEPVnZgq
         kd9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ScaGs6syKsR+2t9OXeuTKd8hwQGc/LMJsZLXj71YJ14=;
        b=NdqLBHgYJ4U908lObI75v4ff1uLWb8DmhLJeYhezsv0bAUDu6ewtv3/uKHExtYd7U9
         hmaKW08n8BbDqbZmD59eiBID6A1Z1ey7hih/UzWG84/b0WYEyAoV5IJICIlSizQDDrFU
         8SES8+pUZk2P8+aMQRNxGx5jm7wedcKgdxmtJ7hOR+rzR516/PkLdhUIN9FZ3IVcSgVV
         FedpqZFCZ51lbY633rIgUdqIs0Zs2Xx5aD82hCLvKV42LfRgn5IlTu/twNqwwM4OxVox
         uOhm9d7rgs89JHBEUrPWNMssaiYkAf93rt2rz+kfXkUn065wtVuIUvUvEHBwPpl4/mEF
         sm9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZkHpCyfKYHkJY2pjkhlBThE9OnYir8Q1edtcb0VbxJZ4TiK4D
	MDioUaOwxtco+wEdpn5dqjc=
X-Google-Smtp-Source: ABdhPJwwTLRqmbb6GgC6kiFQBiEWBFvmY44TFnrGmI5dCXxT0y3bbXIoxK85S+LybEAqgY/N9e16ug==
X-Received: by 2002:a62:cd:0:b029:1ef:55e:e374 with SMTP id 196-20020a6200cd0000b02901ef055ee374mr4673172pfa.31.1615411486544;
        Wed, 10 Mar 2021 13:24:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls1863383pll.4.gmail; Wed, 10
 Mar 2021 13:24:46 -0800 (PST)
X-Received: by 2002:a17:902:fe0d:b029:e5:ffb8:1c28 with SMTP id g13-20020a170902fe0db02900e5ffb81c28mr4650933plj.62.1615411485941;
        Wed, 10 Mar 2021 13:24:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615411485; cv=none;
        d=google.com; s=arc-20160816;
        b=08ss3LOH8b3NqxCp687eRDXSY61CkghXPMiCOx7Vs8DgKcF5qRwsYS2xGvcvRcS8w7
         YeBy1qfs5+R6bqiSmYoqxwaOjHbLT8EOj/EtPdIvamE2fETfgCLmWXDTNQcP2E7tdJLE
         afTFZRT22cNbGnBsOznPJJT42LPFGpDYVNAqkMgoKkbn5QikR9C2XWbT7F/BWXyqkJ1D
         64oUhhgpkEUNeLl4npKn3W56ZtR6GmaBigdiyNsdmGgwEssreN1LZAcU6mZfJZf3/ojk
         Pv8IBxc85X6SCCcHg3Mi4ExnGTAzldmRiOK3x79qxogdLQfOXN80YKBW6ym0afrf9Uoe
         +FzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x9/KVHsZmsTxm4DmBJPx7KZ95KUta5lJt2VQVkp5nXQ=;
        b=yzfM6jS3jjxNFT86UBx2AMf/CRFAu3IxYMhhvfZvnvHw6Zd8b+Vxso/OpDTLu0QaGY
         oA030R+Fu5KZ7hou+kOJlZRqxNKqlgpo9owK6zGXLpsBhjAGt0o7N4/WGYe+dug1xuyU
         Po0ZG/HqDvexPR9zYPxY0otMuDOKy02Ir5kcGy478jmqQPy2h1BvTKfosw8vH648IVMk
         bM2RnCmlLLroq/J1nnx3JPlCrtqXOlhYEQYx+G1k89wqOCgUhGtNcOYjv+0kp2ORXbVh
         Fv4q7wE1754xkCtInbVK2Y5xdy7Grd3iqmvuVy95uvx+sq8B1ek9s7Izg7iwW391t0g+
         ijmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J4/FovK5";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id x3si75972pjo.1.2021.03.10.13.24.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:24:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id g9so16981294ilc.3
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 13:24:45 -0800 (PST)
X-Received: by 2002:a92:c7c2:: with SMTP id g2mr4293277ilk.209.1615411484772;
 Wed, 10 Mar 2021 13:24:44 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none> <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
In-Reply-To: <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 10 Mar 2021 22:24:07 +0100
Message-ID: <CA+icZUWk-9i8BSf70qE_9f=mekscQ063q+aUKzSNBymNLAbcTA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nicholas Piggin <npiggin@gmail.com>, 
	Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>, Andrew Scull <ascull@google.com>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Kees Cook <keescook@chromium.org>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Will Deacon <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J4/FovK5";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Mar 10, 2021 at 10:08 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Wed, Mar 10, 2021 at 9:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:
> > > Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
>
> >
> > masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
> > >>  kernel/cpu.c
> > masahiro@oscar:~/ref/linux$ export
> > CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
> > masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
> > masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
> > masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
> > masahiro@oscar:~/ref/linux$
> > ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
> > this_func
> > c000000000170560 T .this_func_is_unused
> > c000000001d8d560 D this_func_is_unused
> > masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
> > CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
> > CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y
> >
> >
> > If I remember correctly,
> > LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
> > when I tried it last time.
> >
> >
> > I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
> > The result was the same.
> >
> >
> >
> > Am I missing something?
>
> It's possible that it only works in combination with CLANG_LTO now
> because something broke. I definitely saw a reduction in kernel
> size when both options are enabled, but did not try a simple test
> case like you did.
>
> Maybe some other reference gets created that prevents the function
> from being garbage-collected unless that other option is removed
> as well?
>

The best results on size-reduction of vmlinux I got with Clang-CFI on x86-64.

Clang-LTO and Clang-CFI:
I was able to build with CONFIG_TRIM_UNUSED_KSYMS=y which needs to add
a whitelist file or add a whitelist to scripts/gen_autoksyms.sh.
And boot on bare metal.
Furthermore, I was able to compile
CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y with and without
CONFIG_TRIM_UNUSED_KSYMS=y.
Every kernel I had CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y does not boot.
Yes, there is a size reduction with both enabled but not that good as
with Clang-CFI.
All testings with several iterations of LLVM/Clang v13-git.
With CONFIG_TRIM_UNUSED_KSYMS=y I see a 3x-loops of building .version
and folowing steps - got no answer if this is intended.
Means longer build-time.
I did not follow this anymore as both Kconfigs with Clang-LTO consume
more build-time and the resulting vmlinux is some MiB bigger than with
Clang-CFI.

If someone is interested in x86-64 I can provide the whitelist files
and or (alternatively) changes to scripts/gen_autoksyms.sh.
AFAICS I had open a thread for this - damn digital dementia.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWk-9i8BSf70qE_9f%3DmekscQ063q%2BaUKzSNBymNLAbcTA%40mail.gmail.com.
