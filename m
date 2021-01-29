Return-Path: <clang-built-linux+bncBD63HSEZTUIBBAVQZ6AAMGQEZSJO4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 678E030877F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 10:40:19 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id h8sf5586083qtj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 01:40:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611913218; cv=pass;
        d=google.com; s=arc-20160816;
        b=dnGbsNwUwstHbIgrjXWiPcKDID8PBDc65BjC9/lLtoNFxvIIYS652dzNjjZy0gyema
         1yHqaNK8ZU5ONsFRkuG08qFNs64bB2cdJpZJrTZXDcysnlmCHhSzP5ktY3pxYRyDtSjt
         NTg5ybvFgxxI4hiiiTFG0gNcpf16JQzaNlPmQKyDdZ0K9JBXvDe7wA5+8nvkFSxKpI4f
         DRgr5eiXVQQzc/m0Z2xquQs7aW/wxdiLH/hcrYD/an09A0fS9iW0RCJteXLPpTxkXHbS
         q43Yxee594/qTrga8n0Ha7YWRqes3LOcCtYcA5JHevNG2DJwkfkGKFxTaccCPUoih2si
         5j6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5DOcvMxQJrRTthu4CGAFuaIFPiVkt9gbnaQ3JGNm2oI=;
        b=B2aFoDnETK2zg16F2wV9yBXlhl1nf0YBRHt8AjR8d60BM9T2zeQLhN/SqwX9OFLQJ8
         p30JfrSEg4JynbEjqiC15IWtExDtkqP0GzJNR7ciq8+lpJ9DHyqS98isKEjxP1ZuqG95
         prbZYKd6JBh+BW7Y8fmrIKuwYIkB5/A0NXiUUkkecmBMykrY+wNsObXJmcSb6XL6uldl
         yHBakp5NvQDoPbRQ3mstdnmx/0pYpA2R/mGqA/b9WNOXnC811y9KsLd6ZV2vCqu0EIL1
         +AWCohbE9vik2o9RUpzfXvbY/lHgV0z0QTXVm9f4EfgLdDaSaSE0hFbuCW7+mmvu0QDO
         0OFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PE1dSxCz;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DOcvMxQJrRTthu4CGAFuaIFPiVkt9gbnaQ3JGNm2oI=;
        b=N1z906pX6UpF1lPTS2AQbcbHVuJymzcA/7mYo03KzwlZHPi2QxPkbmdCiP0gpMskm6
         BvLg97qtyhaOaWYhBiTZBD/SnM2RrUrnVqO5LYdOaR9pGobquVE1CUzti4EZKGSpxgaO
         0czO9/YJWqfNOeg0O7J5H29T6JneC+urKwiFii8rWMfk3KsnEy6T58yc553i4FH3tdhE
         YP+CoQzcWlmFTMNa72c9k+USWoJ88ohT+qeS4y79GSKPtaK6naa22gwPYG1OjIgXQRli
         fzMC+fhEGyJ7STasXZLoZsV0YJoSBZdaJfrrXq/WwcEVusI8ZHbkajwXGux05EsU/VU4
         9mAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DOcvMxQJrRTthu4CGAFuaIFPiVkt9gbnaQ3JGNm2oI=;
        b=UOaalXX7qRz2OxEcGQen5pVb3sYHRREEg4EE6/DP8iyajRGL44tAXRlBauOOfD0DZM
         770pojtiN/yoeY4WKmh9OcdAYWkxJoodVNHpCqkdTLem8CYBPCVK9dAEt7OVVyRp5HsC
         YOMQMpK4UFWfu/ck3/uyc1WOmeyVqU0nOve7T0PWD+rMdy0VAVeQNLE81jgWl1bcGtBG
         amemtDcvRdPF+mwnaloCSgx9IPQ5s4fjiZnna2hwXnPGnuBVBoy8kmQkqZrEbymUSx2H
         5jgtbW6/vbworE310Cpmt2L2g1HebXGnKiBTVRFJQPl5m0jGO+U35nvROL+OR+bCDLmy
         NWrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ylqCAvwhuXdFgXDX1gQmOTMtBJ+ztWAL8O+3vmVm+fHNjNTfa
	chkWxrvkswLhlzUzUU1WD44=
X-Google-Smtp-Source: ABdhPJx0hpo6msGRSCVCkyoD+us9XkMNDpoze/e3khvYZNTE4djYcsoNnRIJg+yeJhdGlf6oD0gdcQ==
X-Received: by 2002:a37:9b55:: with SMTP id d82mr3278440qke.172.1611913218414;
        Fri, 29 Jan 2021 01:40:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12cc:: with SMTP id e12ls4302374qkl.10.gmail; Fri,
 29 Jan 2021 01:40:18 -0800 (PST)
X-Received: by 2002:a37:7e87:: with SMTP id z129mr3406651qkc.488.1611913218067;
        Fri, 29 Jan 2021 01:40:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611913218; cv=none;
        d=google.com; s=arc-20160816;
        b=YdTbAr31cwi5f11JB9K9TlJXBgX59mV6/Dza0zVPnZeu5WeojMtOwL/uqK7Z2j7yDG
         RXqUVBN9H3su80RXDdymSrBi044NLqNVxG5S7SrTWZqeR6dEW/EjSsmwLcLmsqTBMrAv
         NBVAxSfwJaWCGed3lG6l6J/OOX9xWcXtFXkh7jStgWjQ4GiMoL3Q9A+SV2IwES6IISui
         HfFXMpu03/RI6r6AIoCnDnqLFaFCiZFbkhielLn/KMB2nlQ79oGBiyAl93iylXN+JOwz
         e8IrKhO7Laek4Igw/fSVtZxZYKqKdBWkTRflmbE4dOypLdx/odzPeoYgeVzK3DHaFF3p
         /p6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5aiiPANvB7aLEDIZUVUXdtKAw9eDNVtoq2z6Iwre+Cs=;
        b=lfzZszL6knOQNkr9D5NRlf0MxKTBwXQMO/uBpvoDGWQWEcDsO+wX5W+TTUhTp57xXO
         26Rj0cCmNo7CE1EfkSrZzQQdQq3X1+sQEh05YihO039jvVlzrUs/5yqnau0m6uix0DbB
         oVAvmJIEpDpxIzgPx7+YyRJMiznhvaJ1M+N0U/j0Kx55/WeBESB4FW2r5N3Hg3lraU8I
         zkDcze60lNGbe4O5XSZlvvAAocs087LxI6t53fLK2alC1xgLJG9AGiJGOH4KKXOVvJZX
         hQtHgwiO1VPLL4ehVl7uhrpDAdvv7CRHnsYdPT/+1ln664yuea6h+KqKrkqQsV28WU0p
         INGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PE1dSxCz;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p6si372448qti.1.2021.01.29.01.40.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 01:40:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AEFF564E21
	for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 09:40:16 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id k25so9207127oik.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 01:40:16 -0800 (PST)
X-Received: by 2002:aca:110b:: with SMTP id 11mr2105022oir.174.1611913215832;
 Fri, 29 Jan 2021 01:40:15 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com> <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
 <CAKwvOdneTwx8LwKyAA+iMELEBWBxu2nkr9dVuQ=+hgsZROu-tw@mail.gmail.com>
In-Reply-To: <CAKwvOdneTwx8LwKyAA+iMELEBWBxu2nkr9dVuQ=+hgsZROu-tw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 Jan 2021 10:40:04 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFh9GGReghFaZkCi0TNOBFjF+Nv_H6vj8pKmN4Rdth3Dg@mail.gmail.com>
Message-ID: <CAMj1kXFh9GGReghFaZkCi0TNOBFjF+Nv_H6vj8pKmN4Rdth3Dg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PE1dSxCz;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 29 Jan 2021 at 01:22, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > +       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
> > >
> > On Thu, Jan 28, 2021 at 1:03 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > Why is this change needed? Are the resulting opcodes equivalent? Does
> > GAS infer the lsl #1 but Clang doesn't?
>
> Yes; it seems if you serialize/deserialize this using GNU `as` and
> objdump, that's the canonical form (GNU objdump seems to print in UAL
> form, IIUC).  I didn't see anything specifically about `tbh` in
> https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1?lang=en
> but it's what GNU objdump produces and what clang's integrated
> assembler accepts.
>

This matches the ARM ARM: TBB and TBH are indexed table lookups, where
the table consists of 16-bit quantities in the latter case, and so the
LSL #1 is implied.

> > >
> > >  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> > > -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> > > +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \
> >
> > What is wrong with these .w suffixes? Shouldn't the assembler accept
> > these even on instructions that only exist in a wide encoding?
>
> Yeah, I'm not sure these have anything to do with UAL.  Looking at
> LLVM's sources and IIRC, LLVM has "InstAlias"es it uses for .w
> suffixes. I think I need to fix those in LLVM for a couple
> instructions, rather than modify these in kernel sources.  I'll split
> off the arm-test.c and thumb-test.c into separate patches, fix LLVM,
> and drop the .w suffix changes to thumb-test.c.
>

The ARM ARM (DDI0487G.a F1.2) clearly specifies that any instruction
documented as supporting the optional {q} suffix (which is almost all
if not all of them) can be issued with the .w appended, even if doing
so is redundant (note that it even documents this as being supported
for the A32 ISA, which GAS does not implement today either)

Given how we often use this suffix to ensure that the opcode fills the
expected amount of space (for things like jump tables, etc), we cannot
simply drop these left and right and expect things to still work.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFh9GGReghFaZkCi0TNOBFjF%2BNv_H6vj8pKmN4Rdth3Dg%40mail.gmail.com.
