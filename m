Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFWZT6AKGQEOIVYSEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F0029765E
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:04:57 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id h184sf594914vkh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603476296; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqmAQvdYUz2xpjjPAvPDe8Ih7pm69y8Rq48kmKTpiLSHp//A4NtsX8yi2eWC9JvIFQ
         m6f1ntAlkA4JAL9nwWVRfxtlqDo+VOEHzGVXc7mYk37BqGkfQ+XQEYGlhWYD04D+WrgG
         xyErXeIp1svbSp65qw8qCnp3GTv/E+ll+Yl2KQoKvD3kYZlSJ39RP7Gm7UbEyjuX/TBL
         VEJ3R1TcDBETj3gx1c8lSjLvhLbQ0ds0u6te4YurKenmSN6FZ9dIJW+cNPmghaOBkg4Y
         mXneaSxuCU+8qYeHjOKOwx/MBsrUQAMju+SYf6SNm0OqpaynM4K+c5Hce5+8oT4zXVSi
         pEgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=T5iB1DWWxiNSME3m1dwXRBmECWp9dfYahIeJ7De0weQ=;
        b=zCajknDVaBtPUKZuo0OJLjnsPGTGc1LRQatI0FXvp0APWucL/JjOCo1HsFdoh4V1+a
         aLv4FsuvXRd5MNF9p81SqeQmdo++0/enHEy7UHmMCNC+wXL2/Wg54jjSzKNNy81DaRuU
         Vag5liAcsaiFRei8nSgqQDNrBkP9b80kRendiDVeYuq9ddjyoCIfUnhSKaqfljitTpyZ
         qeStc+dFBMUrmDqnR5JtxGLTMzbh1AIPmI1hpGAvwqvQNHd5lXyyt+/VwkZKDqnOd6+I
         Lptq5NaaQJMW9IDFIe8sEMlr0LiCSDZOYuv5CIjBu2OTS1+gkOhicQsf1w4rnmIF2Iux
         wYqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H446iHuF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T5iB1DWWxiNSME3m1dwXRBmECWp9dfYahIeJ7De0weQ=;
        b=NZpK8BLz/RRn6/717UGIT4qIA+hTxmAeiIutJDyANJS5aOfAcoadkoSZV7Iy6eZmqt
         nI84RH7WlYXNSAUAY5sGP5tVMUHt7NI1PvLu+IOozOxV1At8FLSA8S94gRCuvQuX+10I
         AgJtV43jxryy735iwo//lo7Ge+G6JEKB9KaQ1VTRTnm//+2Oj0uFJ77NIlZPDaXxJ11i
         hE+185HzIEJpmszSm1iQcj/ocbw2gS/4DlMuYw4omxS/FLooJcR2SEI/zlDO0m/q9p7p
         I3nyPyaUgyy1SOySSmkCXbjvEr49DKfEdrAyeIDzSTPLCr/XCoUrLwBAkSxCtkGiXP/O
         +ivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T5iB1DWWxiNSME3m1dwXRBmECWp9dfYahIeJ7De0weQ=;
        b=BI5696mlpUnbD0cwiBeeAv7szTCvsrBPiJFfe7sHp71/i4VypJLRjuRxK9o3xIbZNA
         nb8FGi4jJZTq03pVh83Gg9CkCQ22ZyEOwWdxAlk2rIAA44NjPxbk0Pcd8vj2096NE1fa
         G345q1467q2I/U+W0mQWp4SD3Cfu3dWeBiVOwljbU75syNx71ciHFVEIAhaEV2Q9aJM2
         K9iIj6rwWG5ZRRpcTRSvbkEbL2fOjdAVU9oLM3OSEMesaKaVh3F3qpQppqfJ2kM5Phwu
         3G9gOw1vGTKuSvuwKvzYLTUVBiZcFpHQVK4MmsLz2sKcfVimJVoUXFz+VNELdvRqN+a6
         x/xg==
X-Gm-Message-State: AOAM5331bRXcWtGcC4X9Z7BJ+iyHVd8eLroJXhriF+tJqnlSw+GEJzeq
	V3guEONcs8lyyOlE+/MF/co=
X-Google-Smtp-Source: ABdhPJxVGG9kjrj/0SanxsEz0ivXnz6fCWY8z31t2l8jwSifMDu8XgFLI969XYX0+gb9vPKowZzLSg==
X-Received: by 2002:a67:2fca:: with SMTP id v193mr75662vsv.18.1603476296342;
        Fri, 23 Oct 2020 11:04:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:d9c6:: with SMTP id q189ls121938vkg.10.gmail; Fri, 23
 Oct 2020 11:04:55 -0700 (PDT)
X-Received: by 2002:a1f:414b:: with SMTP id o72mr228833vka.1.1603476295872;
        Fri, 23 Oct 2020 11:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603476295; cv=none;
        d=google.com; s=arc-20160816;
        b=AVYvHXo5gn9OMsybnV3e60QIgyBkXdFLu88v37cku3fbAkZwkcY+TjLfsHeFwNRQQg
         aexpNO7jn77p94oyVPeBW1mu5JPmOBKg0JbxxmxGvTofjXoaUyZ/s6gOGUIXtyOU5H87
         Wf999JfJ8VPJf0Tr6xrHP39irGkU9dRKK1MzHL/zT2Q5fSTqtK+eQz3xOYUuRRQRKWtD
         Vjfw1M9859whKm2MzU6OGb/6tUb0nVSotdjL6CFNWKl7HGR5TasKOyD6hryxHpIxIt4A
         qHAkF2Pgy1pDhaWtQZ6JmRPMcl/8j6NQiwoC+YpfFlSNv9DLjlIl9t7eSMFv2bk6lD04
         Cvpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z2CWJzY4MEDXxaHnxhlpdNlYwFX3Mo9zkPfuZorsI9Y=;
        b=kRbF/ugotx+Fv+7aWynEGeIZsAr6Xh348kCbN0A0LozA3IMh5PAYkFwJRDdYgC4GD1
         yDWGvjCPO3ob032Lm8v2RwL3TndKRIwSCWNBEC8rnpfJEzKhvFs5jkW1rgIqVRL8sZTh
         RXqn6lJVOtfASMks99wjAPU6VhIRrdeAtzvg7RIuaXzZqkeSBuIF8Ci58HppnbKgnR4P
         buJ9fXds9aZRgKEI/VLrLcstq7L50E1H+vOYW4pMae/kujcFB6l0vMJRpfSP+iL8UKJm
         NZ9oyysgztGbfZTjl1eb5Xy0tNAgJ6+jPSfrhHpqQTAY2j3SArLZ9WL0Zt6j93OOyTZW
         RCdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H446iHuF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a14si237957vsp.0.2020.10.23.11.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id o7so1852599pgv.6
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:04:55 -0700 (PDT)
X-Received: by 2002:a63:70d:: with SMTP id 13mr3178657pgh.263.1603476294852;
 Fri, 23 Oct 2020 11:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net> <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble> <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net> <20201021093213.GV2651@hirez.programming.kicks-ass.net>
 <20201021212747.ofk74lugt4hhjdzg@treble> <20201022072553.GN2628@hirez.programming.kicks-ass.net>
 <20201023174822.GA2696347@google.com>
In-Reply-To: <20201023174822.GA2696347@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:04:43 -0700
Message-ID: <CAKwvOdnovKJCv05wHLY28ngqkoR-mU_xoyVmv0rNzWE1C=SNMg@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Jann Horn <jannh@google.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, kernel list <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H446iHuF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Oct 23, 2020 at 10:48 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Thu, Oct 22, 2020 at 09:25:53AM +0200, Peter Zijlstra wrote:
> > > There's a new linker flag for renaming duplicates:
> > >
> > >   https://sourceware.org/bugzilla/show_bug.cgi?id=26391
> > >
> > > But I guess that doesn't help us now.
> >
> > Well, depends a bit if clang can do it; we only need this for LTO builds
> > for now.
>
> LLD doesn't seem to support -z unique-symbol.

https://github.com/ClangBuiltLinux/linux/issues/1184
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnovKJCv05wHLY28ngqkoR-mU_xoyVmv0rNzWE1C%3DSNMg%40mail.gmail.com.
