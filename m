Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXMGUCFAMGQE7GZNK2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B59C8410ED6
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 05:43:26 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id x190-20020a6263c7000000b0044034f4928fsf11458298pfb.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 20:43:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632109405; cv=pass;
        d=google.com; s=arc-20160816;
        b=RtK//A09ozhbIW0MoNLiN1G9QCqmm6evzxgvrEt8LY4365Dhj/6e0KjXCB3rx9qRZV
         tzC+8+At4pM0NWv01g+4PgvSCSNuCXDRa5toP19u57cFkBApsklJ19PiDGZ/+h1NkkVp
         iNwZ/KW6UUtEm5bhwQFwCbDUHGnIj1tjgRDw0Ew83bENTFt1MzajCdyg0roRKJyQ+L5S
         sesDjVH8ub7RJu7Bpw0wfOaptpnMJywQ+9lZ1io7a3/+aiJS2vPXou0Spu9reCulQfwE
         AZoc+cMGP/XwsnjpRJTtJqXYwD7lDJHZJZO3lnKEhD1P3R5NW7zAoydnpA6/NnBN8NTP
         JeHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=g6M653JRvI7bWIuJ2ujY7vPUKdauYv7WvYrDc0SaiWo=;
        b=BOKplh16xlkLKnHhPF8tFkm2jMy6AVM4VIQMVx1RoFOAQd5sS973bkb+CObTvKjIzN
         bLEpv+h3BSgsU01Mk6M0wE0JmhEN3YT62UpuUWPmvMnju2S4UFpbfKARjNRhSPf251nq
         B5omAI8RQ9SCbd4DW6UoqzyjoKHnibYLv940Et6XYkKP5BsgQc+a7Ok9zcwL0IgU7+zh
         Tvy2QWRpVzqlCnfilGRLXPRBGIqxloCeO5Ytu9Xoic+udZF8Q6waRm1w8kPVvvvAz2ee
         vJ/jaMypWjiWN32K8ICUjhIDNPdWCvjdEGPNFwc6s+UEmrc1olZaTO+qp99HVyn7Cvhu
         nW4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aQiMuFIs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g6M653JRvI7bWIuJ2ujY7vPUKdauYv7WvYrDc0SaiWo=;
        b=sRypHUGzdFLaZYHUKhZgLol5B3ozjPQ1HuX4rEScZsko79W+/tJiTNqvoNkDIT3F79
         DT4xB6Q07a5hUoyShs9qeJyIMy+udmfLZ7CmbchydPbli0zeGbnTEvbFBo6EMxAXuuWJ
         ba/7GeChRtWk58jA9aJ37sOd3WJsWqLfuI8D17hGCBSKLAvOS2EjZsr57qyUsbMFJRBH
         0r8wcuqnJQ4pB1awmuIaR/xY8YClYX5aigFeStDdUnDegVKdAqsWWGKeR/++tFXBwVrT
         kuk7pFi9Z63xoiYRz+m+kzv5vSJ6Sx9B6hGjqfBVc81j8elBc9W/DXGychkBMoyyH8Bj
         ieNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g6M653JRvI7bWIuJ2ujY7vPUKdauYv7WvYrDc0SaiWo=;
        b=1CyXvewqV5GSxl20V4kpG483s7U0RxOG26J42/PDpG1csxfgVLSEMgu8IW7VNDMp9K
         tPfsWg3y8l+AoliDjAD8d0evyaVtLyxZgTUFQO/jUbUpP/76BbcMa5PDOTmJYMHLAxnh
         4nLcLXO6qmlB0q/bk1n9W+LTFofeJIQnQTc8CRE6LYjxnwPS8Ksf42iE4vQVwlhxG16p
         jO/ZMBwUVdtqLBvVjwp6W8AmrF14956d/FXuB79mm3FFtxJoDNVBV5vB44Op5mZ+Gnt5
         6HCjXiaPhKgGMW7XkRFjEkXUkYfjfTmN79gfQb58bnsrWKozATW18yaDMnhiBzsFsKSM
         vO1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DRMFCQZUWMhIB/zciu6kpXoIAFa6mcEmIgudTAjm8CMEaEURf
	6oGFt8ojWv3LhBzVyrmZDuk=
X-Google-Smtp-Source: ABdhPJwGBfcLPhSzAfBC6hGb4lztv4j/NWq4nTmXTA2EnTiqyjLE7lEcEabam2SFgpbEdbnQ7/I46A==
X-Received: by 2002:a17:90a:7d11:: with SMTP id g17mr27242137pjl.150.1632109405115;
        Sun, 19 Sep 2021 20:43:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c215:: with SMTP id 21ls7378732pll.5.gmail; Sun, 19
 Sep 2021 20:43:24 -0700 (PDT)
X-Received: by 2002:a17:90a:5583:: with SMTP id c3mr26390786pji.133.1632109404589;
        Sun, 19 Sep 2021 20:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632109404; cv=none;
        d=google.com; s=arc-20160816;
        b=W9a3cqkK1VdlwinyFpiy9oayYfx1h46KN/ZwD1q8aYAaWJ7+PBioefioYjlr0KnLI9
         hxYWB3tnCGhNzhGI04Y1wnfyIBuJ+Okg84FIcrlXw281Ef/1peeE+SeKo5AHMKST9WdY
         dnaAmwfa1wjWOEif0VIS04nzrt3/bTIX0+Ez+D6wn8tqpJ8HjvQgJstAwA47FNBU+IEY
         eP3RVVRnNiX1Zws8JyF0zgPTl5DqMaH78B7VcxZ9DSZPWPL6MM20L4uUDBaO+3QHGwPE
         T81LU24p99/gWSkJwlSi0wozgfVduX1KkyO5mk9CfXlYnPV2Fx1i33U8DfQrw0cQNIbs
         lcIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+xP/7RtwiLJtUtuK2Wu/v1M9K6UJ2qfpi/KkffQCwpM=;
        b=XNcleSra4RocSL9HQINXeG/FpiCuaiDwsau7FvpYiglRBb+TEGeBH0jvWR1Ch55A/k
         ajdxflQWXn/4sMIQr/rjXtQdO7E08NQYqWOSi6KJ5brIh+ECwrDXxEP89u6L0LRQHFTK
         Z1DDl66gJ37hnP4faQilheLm+U1wCBYmSlMnu0syA6S9Eylwst/7JN3x14YBawLM6HF8
         82WI43JV+eR+j0yAqddnUgr0bWjC9nAUCs5Svh3N5Eg/LZLkFL4noPne0YfgST8Pqvyg
         caRgwF52TNla4RrVk/uUYwg1TEFSWAvtZ+FuBVLOSDbKii/X7vx8yppTLIFqi6gY5o9+
         elsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aQiMuFIs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si1110862pls.5.2021.09.19.20.43.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Sep 2021 20:43:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6EAB160EE0;
	Mon, 20 Sep 2021 03:43:22 +0000 (UTC)
Date: Sun, 19 Sep 2021 20:43:19 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	llvm@lists.linux.dev, open list <linux-kernel@vger.kernel.org>,
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>
Subject: Re: x86_64: clang-10: <instantiation>:2:2: error: unknown use of
 instruction mnemonic without a size suffix
Message-ID: <YUgDV31uzAQy5IcN@archlinux-ax161>
References: <CA+G9fYvoyDqbCnmcVMHCO3Zxn9=FGTjyTH9u=7FT7rCz-dh6JA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYvoyDqbCnmcVMHCO3Zxn9=FGTjyTH9u=7FT7rCz-dh6JA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aQiMuFIs;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Naresh,

On Mon, Sep 20, 2021 at 08:55:46AM +0530, Naresh Kamboju wrote:
> [Please ignore this email if it is already reported ]
> 
> Following build warnings/ errors noticed while building linux mainline
> master branch
> with clang-10 for x86_64 architecture.
> But clang-11, clang-12 and clang-13 build pass.
> 
> <instantiation>:2:2: error: unknown use of instruction mnemonic
> without a size suffix
>  lsl %rax, %rax
>  ^
> <instantiation>:1:1: note: while in macro instantiation
> LOAD_CPU_AND_NODE_SEG_LIMIT %rax
> ^
> <instantiation>:2:2: note: while in macro instantiation
>  GET_PERCPU_BASE %rax
>  ^
> /builds/linux/arch/x86/entry/entry_64.S:887:2: note: while in macro
> instantiation
>  SAVE_AND_SET_GSBASE scratch_reg=%rax save_reg=%rbx
>  ^
> make[3]: *** [/builds/linux/scripts/Makefile.build:379:
> arch/x86/entry/entry_64.o] Error 1
> arch/x86/entry/entry_64_compat.o: warning: objtool: .entry.text+0x215:
> can't find jump dest instruction at .entry.text+0x21a
> make[3]: Target '__build' not remade because of errors.
> make[2]: *** [/builds/linux/scripts/Makefile.build:540: arch/x86/entry] Error 2
> make[2]: Target '__build' not remade because of errors.
> make[1]: *** [/builds/linux/Makefile:1868: arch/x86] Error 2

Thanks for the report. This is another case where the implicit switch to
the integrated assembler exposed a previously fixed issue in LLVM:

https://github.com/ClangBuiltLinux/linux/issues/1079

This cannot be fixed in the LLVM 10 branch as it is no longer updated so
if you want to keep testing with clang-10 for x86_64 on mainline, please
add 'LLVM_IAS=0' to your make command like we did in our own CI.

As a quick aside, would you mind updating my email address in your
system for reports to nathan@kernel.org? It will ensure it gets sent to
the correct inbox so that I do not miss things, as I do not use my
personal address for kernel development anymore.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUgDV31uzAQy5IcN%40archlinux-ax161.
