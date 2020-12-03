Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZWYUD7AKGQEYFAMCHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7012CCADA
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:08:07 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id f65sf108029vsc.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:08:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606954087; cv=pass;
        d=google.com; s=arc-20160816;
        b=W5FLOc0oQgnJmwerZe+DCQ2EVDEOTS9jEomioPuVzPDf9JsmiYySWqwQr5aEC76RCq
         RWyNBEKxGS8o4gMfo9min7yLzw64XA+2pcpFqjbDuC+w9dEs7mnXfXOWcSWi2F5HxGf/
         slg4IKT2ce/ZSTh9c1dPrnBAePccaLIr2sPJD09MbA1Ek5s0OZyqZBHWhlkVqWTgnnHu
         ZKHjAnlA7m0iRongVDoKr6jqVNkPU60wJtPu9WLEKN719W0sYmpa9Y5jkZ3qjrtRh+d+
         5ms0sUNqxtHazKfp1PbaJHnZojkq/ldclnZ1eCoYMtHENSOIVN/8Xt88QbBt9SdoKj1R
         MnEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=doT8M09X7GExNb+yThdwCmKBDOvDm4NnwypOkFU47ak=;
        b=Y7STCpdXDx+PezThZbrLtca+k05piz5jGETBSQBO2uK09z1YUssXSUkmuW16olEiT3
         ZqxOpeCthXwYMelTuRo2coUVFcHwvB881NR06t1vHdJnP07Ch69DCWM+MURob/kirh0/
         jIfvgDctke0EeyP+TuGITjn7BiNwTa3crHldMufcxil72lEvgGrxHISYJZ/N9DnFG7ZY
         /YvdrZZ2D+Wq9v1zoRcoAUIi2KoKY5Tcf7wXIcpRFkvCLmO2m5Nt1hcfO9o16mfCVS2t
         +IofxcUptXuGckIKDQ9Pm3xX3MUxpBZFxJFX5EkRnvUG4ShSIqhE53ia99vogGbnPqwL
         eRGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XgE4hFlR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doT8M09X7GExNb+yThdwCmKBDOvDm4NnwypOkFU47ak=;
        b=P00bRJuXnGzvQKJMBf7lgsLYJE89cLXDHyJgsIgRJL0bT2ccMyAA9WCcf2nmoaakCp
         MLFqqjQU+cwt1SeUak4xRxKb81m3HP4zAncYnynseTyCCSrLGyrSvSlwM2UbDQh3+Za7
         TnQsNupN5Ajr3HWU9608v9YF0MVXHqDOBz+CMmDooD8kJInGd4ZgHUiegOnwDvNOo6v9
         l/+PEsGe8hPpsgkBBhUyf+auAXDqCivyTRHHzXD6uXYmfG7c9C0mfwpSGar9yEuwj9Rf
         zpRPP6kvO+EfOmqQPNkSr3h8Nam92FcBBcQVVbsFitcz8nFwgV7fqYqmuHmjs8kLykBw
         qQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doT8M09X7GExNb+yThdwCmKBDOvDm4NnwypOkFU47ak=;
        b=WOVMrIj1p+o5VgPGFj/a7swXjkEPS+yFtwa8V77wt5AxmmGGderlT+a+kv9gdjBoz6
         /Nk3SA/wJWDF+2RTawnRd2ogeQTmH/5GDOutpBT9F4MoDIqYyas0/GWPcBpZciOPaQ6L
         PIYbAnooBvDUkwERh3dFjyLCojMYyVguHW8PezGk6iO+dqyTYv0myc1U+xoTIllJ9V6m
         TYEnLMgzYIZP5GIpVwG0VPqVA4PbiqaylCLJIE8csqCAQHGDge+03Xg5558U2H/qT1Gr
         OuSQB+FQWG3lCtxNbqUy/20xS5ym4gCuKwpiYpYdOIxkdhT4ufDl6Rqh7Us6T2yhvA9Z
         6exg==
X-Gm-Message-State: AOAM530gnz2q94mU7BsV+8r6YPeS67ZkEUZszSuYWPnBGIJNPVIUZ2Ih
	4QMMrLbmI6T6zCiJVAoRvcE=
X-Google-Smtp-Source: ABdhPJw0Ny1odRReTVYlOl0dnThO2gbAYh3uQnoOp2m7Eiu3xQjlcIIz7uwDuZf6Yk2sVMvCdwts7A==
X-Received: by 2002:a67:2d58:: with SMTP id t85mr562564vst.33.1606954086890;
        Wed, 02 Dec 2020 16:08:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1ad5:: with SMTP id a204ls225034vka.6.gmail; Wed, 02 Dec
 2020 16:08:06 -0800 (PST)
X-Received: by 2002:a05:6122:1252:: with SMTP id b18mr346371vkp.18.1606954086487;
        Wed, 02 Dec 2020 16:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606954086; cv=none;
        d=google.com; s=arc-20160816;
        b=QSfh2nFWiE5v8fVvWjfOHWrij+N+Kr7yS4XwQqbrDU3Gswn52Dz7cLDElq6fUAd8F8
         CDzw5XV1lJG+Xf2YiE00ZoGwBXgXFpc17yUsLi1px+hZfS/GtUD4Bg1PYRQ2wFDbL/cs
         lqLb2C3iCgRhSjoJYnVP+VFCZYoQhb9wpuZWfR7YvFM1pc61TRXPGBd+wbA4BGZCPh0q
         kQ4W/WA9nlWE3KctlXhcXk5YTyoj/wBFaB9ogjEvhMB095XwcXEva7hkAxbis/yo7ztC
         ygA+hHgIEs4AFqbuW1I91JGfyjQY8PhUUkPaCQVrdqLr1SlB/ZDzy7udtQAIKc3S/Rbx
         raAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kEzbS1TJpZr1zlUaIzJZNjxvOX/ycdroxO9B6D39hfs=;
        b=DAYupao/Y8H8sYNwR4ozQY+k5AENm3yjuHhTwcT78Kxtmv63RhUTDOAKgTGKkzvUKT
         fVEfCeDh5HpWFSYjhAPciEf4lewS/VYqJPeZYl+p0JFgrJj7dWXh1ZKnZ0bjgemkrjYV
         DTchAXAE/B53jgu3D1OXU6v/V9K82UGn0RS3qAVt2jkltt8aVRLQYdQB/dvItlkXa9ak
         MNZfy+3BNhjA1tXjj1iA4chR+5ZtE7h78cea8/PTqta6ksyqJk6ZK364NzOyfVNrnCem
         aVEjbbIThYamChp2OdaB0mzqemA70t+dkcM0yBifocL6pPsk+J3rTdBUFPTfgEQUlQH9
         26yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XgE4hFlR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id s9si20019vkm.2.2020.12.02.16.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id r9so88944pjl.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:08:06 -0800 (PST)
X-Received: by 2002:a17:90a:2e8c:: with SMTP id r12mr413591pjd.101.1606954085432;
 Wed, 02 Dec 2020 16:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <20201201213707.541432-3-samitolvanen@google.com>
In-Reply-To: <20201201213707.541432-3-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 16:07:54 -0800
Message-ID: <CAKwvOdmfbsTN6GtHwvkgJ=12mBhUzmAgSGtnvA-bRw4tYYZ+BQ@mail.gmail.com>
Subject: Re: [PATCH v8 02/16] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XgE4hFlR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, Dec 1, 2020 at 1:37 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
>
>   https://llvm.org/docs/LinkTimeOptimization.html
>
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
>
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
>
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
>
>   https://clang.llvm.org/docs/ThinLTO.html
>
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
>
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
>
> Alternatively, at least the following LLVM tools must be used:
>
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
>
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfbsTN6GtHwvkgJ%3D12mBhUzmAgSGtnvA-bRw4tYYZ%2BBQ%40mail.gmail.com.
