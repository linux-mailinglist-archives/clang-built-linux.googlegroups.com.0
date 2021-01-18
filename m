Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBAWES2AAMGQE5BNHAJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D32FA3D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 15:58:10 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id t194sf6691612lff.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 06:58:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610981890; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGVBsNw87hAtrmBTK07j3mV0scpWYOZWT+nBl7mlEtq2YBKwtaIpO8nIhDmAILr/Ny
         ePKR4ITOd4+7NLBCojrhmwcu1Uio3Y3gI6/0U7/tt6A5TT5ygB/BvS+IcHx4+rJvj0LD
         ixKF0y50LB7hfEQHk8Biqw5pA9JusRDTBzCumL7ares41PpHRbIuWU2f6QTAnyl6mg4w
         1Ny3pUva7s1qNG3AvRcyHHcRCgODIQLfj46nHGomjC+Hlhuxsx+jxfgo34ogUyE/WCJP
         EFNtLQg8h5F5KqnaDjZtA1d6p6czlRuJliVcRsExJMDq5XleISZq8U5UX0wzEU7pylBw
         37mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CCRXZGf4xkYkbX08qJHOBOo5z4UfRwiZD07+tR1n4Vs=;
        b=TpHp+lsw/4YbmwWpRKr00yQJuVvPN5u6LB1IsUHFnfsDu5uWOKkgA0zk2FHOl53ZS0
         kQPIjr2O8keIZ0YGX//FGT/rnq1CvkVBAbH4cVdOLMj0vGpJh5aiS9vv40GxNmbTzPHO
         deAMfl/HdgqNDx2sKWZfxjK9iQ87ft3suP1oeOf+EUvEH/vx+HIrmpBaxu9Nee5yBh7y
         J9z8FjVFcYbMK0C9QJXj2tulawYGbN5ToP+RCLyhf3Gh48FImGy2L8GWdrjY+DKtZF62
         CgqKhjJyG8FLSmvfUNM9GIcgE7wcTGZ/qApTqlb/Wuc3kE9QuIaU51YpJDa+uzlXpLB3
         TttA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCRXZGf4xkYkbX08qJHOBOo5z4UfRwiZD07+tR1n4Vs=;
        b=gvGngRNHSG6icv45qF5pLf6XQWWPLhGySS/vfNXCU+jh9aaMdeXQVsAG4yWRlA13OW
         EtjTCOT3i8cQhypFqF41+I4s25bvHnVflZ4jmBuyZfedJzqlQTEfj3MGp/LeflnG+wNA
         kcIX/gYLp+cGmE36Dt8/6PGo5VeYtniiJ1vocFmGnTe//vs81HXICydoK7fHY5GHIXMt
         +0lR+sqQyWM/q61ykDWiJJ6Pn3U615SCTtBUQxk7c4xuO0bE7HjT13Ni3TmHFKGvbSSw
         FkV0g71gWEnZSZ1Y5yVKxIjVdQeJZWVvEAq1Ph55iwSPtAnVDXBv7iB8VDk9wOg1zSyJ
         YE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CCRXZGf4xkYkbX08qJHOBOo5z4UfRwiZD07+tR1n4Vs=;
        b=XodWKUgFuipMFZo3j0/DPLkNvVsVmsq7YSVm1zvtP5UHTIjsPH1IIsQFXKFhwZqvfJ
         uIgGwaWmWifYQHkpu29CFHsW5OtOfqHLPJ7CdzlQMs5+8zHoBZI4Te5xH4qn8Z5wjPTd
         CwrrR1clUhNFcpaLz1g8AOx0njuPj9OYfahRtO8mmongqL256sRO7qB7qqfkrysaVpZX
         Q70GR4hRAIC1Od2jb8BRdOz/djrFXULW6xfDQwSiKhDQR/sKAoP+Jr39yKCxAxyPjuVM
         hxM95ruL8IWC2KbikRpCZB7r9hGchhUz/x9cAfdrgTEj95eFdwo67UCUoVIVUqau5A0m
         S+oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532q25BDFq48n38jOy8tNzfzilIRxdl01c3Vb6skQarm8LsmPLmB
	VsKEQIKa2lgjGIeinW2IDCI=
X-Google-Smtp-Source: ABdhPJz2MKT6hBBsPySLy06OXG/9325T2v/rjx/P9QfQWUXAN2gOBtXu3yD8FKUMjYbs7R9Mv0ZKSA==
X-Received: by 2002:a2e:2405:: with SMTP id k5mr30300ljk.185.1610981890280;
        Mon, 18 Jan 2021 06:58:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7806:: with SMTP id t6ls2719798ljc.8.gmail; Mon, 18 Jan
 2021 06:58:09 -0800 (PST)
X-Received: by 2002:a2e:8eda:: with SMTP id e26mr42917ljl.272.1610981889293;
        Mon, 18 Jan 2021 06:58:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610981889; cv=none;
        d=google.com; s=arc-20160816;
        b=mPl0/AiV7yJZ2OYZzXc8MAo1LK5D5LQO5kPU4MQaIn41IPNZuO708dwvAi3vsvarzN
         6lDDDWa0HwDQMdul6Eog2+ywNXjjO1OxXDkqpy+y1TootUhc+SPuT7QWz1oSlOwbcfOZ
         m1F+iOQJBVhIpHNphdsEEISdTemBurUjnnrJuzL2spD+D4xhH5vtVHYWlCNfsUheZLIu
         9SW5ce66C5mPYd3dGN+EXo+t+ThIgu3tYUYMcMp4/c3qZIvsdjH2hG1kGHW9dfqZN9Rk
         SIPSQWo1M4vwGghy5+u6EBs4hvXa6odlzI/0QTpOZ6HAYUdelZRYRHOjkYLu9EUy+Dby
         igVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=axVbYBds8HXJjEXhRpUkd3FnNRvCwXbk56WMIb9wfo4=;
        b=yEzsd62g0n3f2vOY5fLfQuiOILMNBYVe3sW4XwnJwCl/guPFip2RDxV83UN/UnGQ/Y
         JsKYWHAmOF8UmtteMDc/ByT4JZeXae8eWtoZS5MtfiOtl6q5SHCGxRvGgGPNkAhszxoS
         m/yb9oRD/CzgQ24hYuekUUwtWLzdQAmi1ManT/n+Z0qRZP6KWr/u6NYI5JzwFBdE1145
         Xaa1tAYEfsUdjUpJI5js3hmpHDi/IQBjDnDeA1lTOSHikKnw3X1vfTqB5cjsEPcsaRrp
         pivWL6J5t0sxx+99yDlayZFQzfGUN8Y176mMXKZUuE1Qhj2SOWCryvISXIxn2Yy4PgAH
         8z3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id z4si1077778lfr.7.2021.01.18.06.58.09
        for <clang-built-linux@googlegroups.com>;
        Mon, 18 Jan 2021 06:58:09 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1l1Vyq-0008VQ-00; Mon, 18 Jan 2021 15:58:08 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 402D5C06E1; Mon, 18 Jan 2021 15:40:50 +0100 (CET)
Date: Mon, 18 Jan 2021 15:40:50 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org, Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] MIPS: VDSO: Use CLANG_FLAGS instead of filtering out
 '--target='
Message-ID: <20210118144050.GA11749@alpha.franken.de>
References: <20210115192622.3828545-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115192622.3828545-1-natechancellor@gmail.com>
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

On Fri, Jan 15, 2021 at 12:26:22PM -0700, Nathan Chancellor wrote:
> Commit ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO
> cflags") allowed the '--target=' flag from the main Makefile to filter
> through to the vDSO. However, it did not bring any of the other clang
> specific flags for controlling the integrated assembler and the GNU
> tools locations (--prefix=, --gcc-toolchain=, and -no-integrated-as).
> Without these, we will get a warning (visible with tinyconfig):
> 
> arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per
> compilation unit
> .pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long
> 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
> ^
> arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per
> compilation unit
>  .section .mips_abiflags, "a"
>  ^
> 
> All of these flags are bundled up under CLANG_FLAGS in the main Makefile
> and exported so that they can be added to Makefiles that set their own
> CFLAGS. Use this value instead of filtering out '--target=' so there is
> no warning and all of the tools are properly used.
> 
> Cc: stable@vger.kernel.org
> Fixes: ee67855ecd9d ("MIPS: vdso: Allow clang's --target flag in VDSO cflags")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1256
> Reported-by: Anders Roxell <anders.roxell@linaro.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/vdso/Makefile | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118144050.GA11749%40alpha.franken.de.
