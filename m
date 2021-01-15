Return-Path: <clang-built-linux+bncBDPL7R4J6AKRB4WVQ2AAMGQEUUW6NIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3D62F7E7D
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:47:15 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id j70sf3170166lfj.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 06:47:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610722034; cv=pass;
        d=google.com; s=arc-20160816;
        b=X422RVQrqnoWms3B8lYfM3C+zLytHOCv2yBQBZsll8R5vbgg0uZQpJy7buC/AVfHci
         pwbpWBCcd7xXwyQNLGdpWTNxexkm94W2JsU5kEgFysXrH6rfV59kmn67G6hWCdsPUJpw
         2gfD+JEljfdewfw56hDJ7UB1Pvgp58TTiXHRv1Q4jijmEfmkr6VDOu90qwuDTvNh0nvF
         +ZTgXUHQimU3pFwdmbDx+WAQT5ORQJPtJTc7XN0Y18DRXWHW/9dQJoBQ0SpUntQ9SSdf
         w6yOoq6iNCusd98P9pC4xAvv9wP6bAZC7fNxpifkfe6WA2bxnVScZApMIzddL1oZCMmE
         tImA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Fs26hgs+un7LrzPCyaMJRyLCxQZunShcYOUq91xMUOM=;
        b=mWCdd+eP5BUOUKsUllEL1u1ZBPunlM4TNTYUBXWWusOYKc9B7ajHyTzhxlbnRD5Skd
         F1H02LGZMLfm3p1HOg3X7RVrgiEu7p+qLYk5s3rPmVC5DokTCFphzYQIT5V1e8OswrNL
         EceHlCV0rxF8Yx6gALTqt3HDStr2ep3GK2z2N/Mc3f6nYFUhwF65nyzgXQCFfsZC0g+N
         UKLa/7WrE3KX6eAcWg1cfxLWXAmMAXfA7uw7qgfkjShKeURUmakM9X/fXet+hMgyjfW+
         jnga4pgsZiugZYEojKx5XudtU8j/zrJlZdZ3g/rBvTr9gVbU295BV8ggJwkybL9Vt530
         7yxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fs26hgs+un7LrzPCyaMJRyLCxQZunShcYOUq91xMUOM=;
        b=tVZLu9hRGAbNLxHw1U84VRBjAwSlzOUzEcCzs5aTEwLOllHjaE16Rs443HQ7Plk85B
         tuL6YQz/relyCVakUHNprWeoDhxUVymXJpMI9fdbQAa8fdp3P3Lki4+tCQk4POxsDAkV
         0gy8ONpTukrtzIqGIOol/KcLzJf9JravdBRclgfGCXZ1yT0o+cSvkvusVGrk+fxB58fD
         RI+Aqf2QcWnWEOORrjCkzJLMnsAJFE06tX4VW7Ttm/QpsBipdqv/T4LK3DcH4fxEdXob
         IgfDv1XbuzcS+g0Hfc4E6F9RYUdA6BJTlo/p56SIIMocCmU7+PrxDnUm80MZVqWuX51r
         vX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fs26hgs+un7LrzPCyaMJRyLCxQZunShcYOUq91xMUOM=;
        b=GY8uHMjX9uyf9ZBAuFRdhPF5VekAQEEh2NilwiGR9fiIQC3njFFXqcFfZkf//J7v6n
         18Uo7sXUkKjqmnDECAmCV29xdKXG9SXecoYHR6btnKLMiTsvlBKBziHc+CIvaPUszRVW
         0pEmYOA3ktAEmTgpRHRVrjDcHmUd4G5R2/BJgTc67LnbfKvhd2NrKJpb4b0KuKqu3BjY
         plioufnsQ61/VJNOKqeEMQUSnHPD4kI/u/paH1nMu0uSfSQOYW0irHtK9ikqKwjyYnSI
         ShIKoIPpslzz+eQr2/737CsS+ZZhvJLnMBdTnUtAuSo08zin+PFmMHxuBZnpw+nv2NvW
         mfMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zHaRz649dxZUsQj9dVmJrR6gq0Td/GHN4C6iP0cedLO+ZuZXg
	yeYB0DpOO+JpR3ccJFVJeZM=
X-Google-Smtp-Source: ABdhPJw/gRSyLVOGAj4R9HmNHZ9v0puGe4UHl4pWpESW//+zMNNsFNxHNkd0WaChpVLv+pm47sDo/g==
X-Received: by 2002:a2e:9805:: with SMTP id a5mr5485463ljj.175.1610722034826;
        Fri, 15 Jan 2021 06:47:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a58c:: with SMTP id m12ls1603489ljp.2.gmail; Fri, 15 Jan
 2021 06:47:13 -0800 (PST)
X-Received: by 2002:a2e:8602:: with SMTP id a2mr5209215lji.421.1610722033911;
        Fri, 15 Jan 2021 06:47:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610722033; cv=none;
        d=google.com; s=arc-20160816;
        b=lQgLuij748t6VexdGxUdz6C7AiGvD7ZsQvKf7r5jjagL+yQoWsKCXjQtXk7qLfmi2f
         /+5FRiXHWIjH5i1g5bUHQmSIRvwpmryRaCq2Pdt2T7vR/uhD0t/V7aoT4EOvElMpAqHL
         fdy8uzoPkhmmMJiXzhb/7rk70umQA7/HY/5ftFOARI1FWEBqvC5RUeeg2qys16OB39Km
         ahroNB13SCX/G3sScwX0ZF/8nidXzMJTjwLM7YTwRoL2/6eEgQnrLG+2+3kyIBIDOg+9
         WEhR8iSAktkH89cyYPrbnVAl+Gvwm1E+rYM4UShWLu6PqcgZi5Xknw7Lc+ru9m4sXjlC
         NSLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ZqDm/rj6fBRGOahCty4eG4qxk4lJ2JoEJk82uQLB4SQ=;
        b=u1DpIwIf94z1sdKSk4C0+l+Tz/Zwnyl1Y47ZVYFjpCr+ft29ko28PE18OkdYwHRzUk
         m6x6x8SQmVzyyFSSTgPVBy9XxQMzjOqddV07qtmnobMDn/huYQXVyHlW8RQZhKih1wEa
         Iyvaax8gsDixZuajrd18LPBrb4r+qWYrsE8cFpG8+T5OmpTLLmMrwjtFODJeJKhjSpq0
         QcMXSTKDwN8O3MWqeARM2SS8HL+auHvE482rsxxXAg03RAAmlU95tN+sLqDZoEsPsJp6
         /3Y8oA0UitB8896vrYpyss66cuNX5CPumnOCv2g+c+19510EX/patrchSSCcDtYpdK75
         /q4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id e18si469703lfn.6.2021.01.15.06.47.13
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Jan 2021 06:47:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1l0QNY-0006aU-02; Fri, 15 Jan 2021 15:47:08 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id CCB8EC057E; Fri, 15 Jan 2021 15:40:37 +0100 (CET)
Date: Fri, 15 Jan 2021 15:40:37 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 mips-next 0/9] MIPS: vmlinux.lds.S sections fixes &
 cleanup
Message-ID: <20210115144037.GC15166@alpha.franken.de>
References: <20210110115245.30762-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210110115245.30762-1-alobakin@pm.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Sun, Jan 10, 2021 at 11:53:50AM +0000, Alexander Lobakin wrote:
> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>    placement (marked for stable);
>  - stops blind catching of orphan text sections with .text.*
>    directive;
>  - properly stops .eh_frame section generation.
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues
> using two different toolkits:
>  - Binutils 2.35.1, GCC 10.2.1 (with Alpine patches);
>  - LLVM stack: 11.0.0 and from latest Git snapshot.
> 
> Since v4 [3]:
>  - new: drop redundant .text.cps-vec creation and blind inclusion
>    of orphan text sections via .text.* directive in vmlinux.lds.S;
>  - don't assert SIZEOF(.rel.dyn) as it's reported that it may be not
>    empty on certain machines and compilers (Thomas);
>  - align GOT table like it's done for ARM64;
>  - new: catch UBSAN's "unnamed data" sections in generic definitions
>    when building with LD_DEAD_CODE_DATA_ELIMINATION;
>  - collect Reviewed-bys (Kees, Nathan).
> 
> Since v3 [2]:
>  - fix the third patch as GNU stack emits .rel.dyn into VDSO for
>    some reason if .cfi_sections is specified.
> 
> Since v2 [1]:
>  - stop discarding .eh_frame and just prevent it from generating
>    (Kees);
>  - drop redundant sections assertions (Fangrui);
>  - place GOT table in .text instead of asserting as it's not empty
>    when building with LLVM (Nathan);
>  - catch compound literals in generic definitions when building with
>    LD_DEAD_CODE_DATA_ELIMINATION (Kees);
>  - collect two Reviewed-bys (Kees).
> 
> Since v1 [0]:
>  - catch .got entries too as LLD may produce it (Nathan);
>  - check for unwanted sections to be zero-sized instead of
>    discarding (Fangrui).
> 
> [0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
> [1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me
> [2] https://lore.kernel.org/linux-mips/20210107115120.281008-1-alobakin@pm.me
> [3] https://lore.kernel.org/linux-mips/20210107123331.354075-1-alobakin@pm.me
> 
> Alexander Lobakin (9):
>   MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
>   MIPS: CPS: don't create redundant .text.cps-vec section
>   MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
>   MIPS: properly stop .eh_frame generation
>   MIPS: vmlinux.lds.S: explicitly catch .rel.dyn symbols
>   MIPS: vmlinux.lds.S: explicitly declare .got table
>   vmlinux.lds.h: catch compound literals into data and BSS
>   vmlinux.lds.h: catch UBSAN's "unnamed data" into data
>   MIPS: select ARCH_WANT_LD_ORPHAN_WARN
> 
>  arch/mips/Kconfig                 |  1 +
>  arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
>  arch/mips/kernel/cps-vec.S        |  1 -
>  arch/mips/kernel/vmlinux.lds.S    | 11 +++++++++--
>  include/asm-generic/vmlinux.lds.h |  6 +++---
>  5 files changed, 31 insertions(+), 6 deletions(-)

applied to mips-next.

Thoomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115144037.GC15166%40alpha.franken.de.
