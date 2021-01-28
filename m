Return-Path: <clang-built-linux+bncBD63HSEZTUIBBMGNZSAAMGQESIONFJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 259E730801E
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:03:46 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id j24sf3673772pgn.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:03:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611867825; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYsDnQIz/s14z9PgDgF1Vi3FjzdIdXesp4+VriiB7068PvSyvc19b1//0mRw6R20qP
         cSBesP/GJfGyEW9R0UkiDWDV2xMGPHNzGBAG1r/Hkzk1QIYvKiMAexVAtnpmXbDOC0RC
         Hs+E7JF3w/CnTGV2gJ/nWtYkk4tu9mDOztd043F/NuP5oCdVxuWq8n1TfhkgrwdYABep
         wmpIfYzmGCWFcLzMF79qb9Xzj68PB5d5y0ZezDATygo2TAFQFEaR5pJ5e6GwV91W9C2L
         ExyKs3FRPSE9QAlXnZuUfJywSjyTLdLU8vocPMkYIc7otlQRI8pTLT0Ed2u8eA/D6Z3b
         bpJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KLzVPL4BfRBW69vLI+wRkBdb1g4aEQ64mJecrZtO4DM=;
        b=OvFfFyEgkcMhtBQ465SlWqcV9ju6cEFTxrNuSifpvYivcVHqgZv2w1mVrPKXWWu3Ud
         or4xwO37TCP5o0dEVcpYomRDsTxja1JNqv3KhI1ksJa+kni8fy1k5bRKlatD6v9xP1nW
         t5eYnGxRYhHYduUVde3CH1Mn6RwpB2qdqbJ8pV91AVl1LjDewdAPekGfRChEfj7p/tWg
         TkDBBVAzxYEsBgV6LRp6KOg33u7li7p+VBSBJjpIuC9wuxcyCg0bb/0ej61c/mxx7n4c
         51T9zRolRHJlq1Jr07D1YGbqsHron9ZAi1228Z3Q+WyCs47s42Zm5KhV1E603sWtErSZ
         qKGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UPJGoyaq;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KLzVPL4BfRBW69vLI+wRkBdb1g4aEQ64mJecrZtO4DM=;
        b=BJa+9DxgNjAS5Xfzx0ZAeECQ6m1LXFxoWZnEuwVNSc2FbiXLzfkzVNJ4Hlg5H/nDQl
         CcEHfwwiE/jIQXGSBn29IH8VbXZXQL5AUisZ/ol58+HmXa0kt1PgI1p8cIYZwrOC6aWQ
         0P70sK8FqGBCs3zYduQ1lYAYFiLcsbF8lAZ0gCS1lNoBifmYwMlyOpEtooiRRNoClGnK
         qB8pZNnv8gDBg+dhTijmVRYg+ClZ9CgebtDfYpAJJ9/aewGye6eVtvgkPbFEPcdJh6lI
         W83rLcvXidDKoKORc6OlEUbyt4rGhvtGmbTJ+I1MyGGo8ZZgJnPiC/mRl6OmisUYk8k6
         0OnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KLzVPL4BfRBW69vLI+wRkBdb1g4aEQ64mJecrZtO4DM=;
        b=tjX9g8JeHxXw1bw2d5NhYCw5WN6CtaxVG167M7Sm/2jX2+JX9SvSbHmKIM2YtXE+W5
         fNLdZdZt8nJBo7SQo/JrHQ2bvAPRxxJu3dme9pg4BP1mjhxZPKFa2Cp96CSOlhxQznbO
         GXsoqKRi8IbrBGPo3YbOVWwWXg0Yy308Nl2WJxIOsjH8OIV4pcu9Q61s/BebyOTf77IK
         wfT/ZDsR+bWSkKNnCE7Gr1Nzmpwwn73uDYsnF1enuwTl9FB60vKKNafFiR9TzY6zMzyX
         WYod/PiadFkMF3z9MpwJkqZTZkpI0N98Ledr3Z1aFbUY2OAGEWeQXiDW0o1Vv3h/Stxg
         SM4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532h0mVkoewtIspeeyBKYDHrILfFFX8yfDxsay/4wwgEo02hvrto
	yeuDxMOZgRtSO8wTaJtYRVk=
X-Google-Smtp-Source: ABdhPJyq/jPrGkmxhMOFwsdW/YZaauLj1k6pCJ25bhxTtG8Fh9LylkZsgL6/hwsdBhWyc0fmXqT27Q==
X-Received: by 2002:a63:e058:: with SMTP id n24mr1253709pgj.345.1611867824882;
        Thu, 28 Jan 2021 13:03:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:808:: with SMTP id bk8ls3526516pjb.1.gmail; Thu, 28
 Jan 2021 13:03:44 -0800 (PST)
X-Received: by 2002:a17:90b:4a02:: with SMTP id kk2mr1152623pjb.115.1611867824311;
        Thu, 28 Jan 2021 13:03:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611867824; cv=none;
        d=google.com; s=arc-20160816;
        b=oOtk4ntWtKEqEpPDdPrfBk4tF6arCYAWVQmhxVDukVZtSEM9jp6G8xWZ6xrQ5UmaA5
         Uex2BxQgRQLpXaH5IAar45x5IDSXaEmb7yEBv30lXDGr6zBXmtOaVUf+nwj59y/kPI2E
         R5cp1CseZfl+V8OV8A62R22I0ApH/2NHjPiXh2lGXF9Uf4UQ9aboqbRnsE37KbNrmTeB
         ZRw1Gjhu7k+N7En2YHaYCS9XbYPSKoteXhvkOQPQi7GmpVKHXst/jEflGHcpmVfSQraV
         zOqSibBONegpe+ZySYa0kH/7AZEDuoqmYx7Rwp8xRqeGRD9PIghRp1thpKw8fj8mVzW7
         RBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a+t6/t794q45J/7nYDTUmcXciDhd9ttnB11ckJ5Y5uQ=;
        b=IwdxqBqW1rdPdykkYaeU8BA3LiHuGPq9GqGdaT9PFh/Psaww9u9MypAPEEdnGgRowj
         x40rOR88kDyLzCvyx0awRpqGvl9Yz2EchunuehjPWun6NJ1ipL7BUTrhnxeRXGqh/jUa
         o2uCZI6gDvmKL0poOySmDALFVb2LQchpBk5suD7I3JKOpCSs7WrTIkdDci9ud09PKMqn
         LpbivdJhbBIyIc5ETad3JJuXCXlXkRTvBTIPuOXKWzChyrLsDE1/+7OwRgAoDMvwPDDu
         77fv/7VEzKwUglihy1frpSV8n3Ua61/Ew6LnJ3o0eoWljwmwANvjYK5TDxBTtD+0JTZL
         pDFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UPJGoyaq;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r142si372668pfr.0.2021.01.28.13.03.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:03:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EA4EC64DDE
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 21:03:43 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id k8so6568275otr.8
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:03:43 -0800 (PST)
X-Received: by 2002:a05:6830:1e2a:: with SMTP id t10mr923100otr.90.1611867823223;
 Thu, 28 Jan 2021 13:03:43 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com>
 <20210128193422.241155-1-ndesaulniers@google.com>
In-Reply-To: <20210128193422.241155-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 Jan 2021 22:03:30 +0100
X-Gmail-Original-Message-ID: <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
Message-ID: <CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: rewrite test-[arm|thumb].c in UAL
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UPJGoyaq;       spf=pass
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

On Thu, 28 Jan 2021 at 20:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Clang's integrated assembler only accepts UAL syntax, rewrite the
> instructions that were changed by RVCTv2.1.
>
> The document "Assembly language changes after RVCTv2.1" was very
> helpful.
>
> This exposed a bug in Clang's integrated assembler, which hopefully will
> land in clang-12, but is required to test this patch with LLVM_IAS=1.
>
> Link: https://developer.arm.com/documentation/dui0473/c/writing-arm-assembly-language/assembly-language-changes-after-rvctv2-1
> Link: https://github.com/ClangBuiltLinux/linux/issues/1271
> Link: https://reviews.llvm.org/D95586
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> * Fix additonal swpvsb case in test-arm.c when __LINUX_ARM_ARCH__ < 6,
>   reported by Arnd.
> * Fix arch/arm/probes/kprobes/test-thumb.c, reported by Arnd.
> * Modify the oneline to note I'm modifying test-*.c.
>
>  arch/arm/probes/kprobes/test-arm.c   | 290 +++++++++++++--------------
>  arch/arm/probes/kprobes/test-thumb.c |  20 +-
>  2 files changed, 155 insertions(+), 155 deletions(-)
>
...
> diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
> index 456c181a7bfe..63277c1006b9 100644
> --- a/arch/arm/probes/kprobes/test-thumb.c
> +++ b/arch/arm/probes/kprobes/test-thumb.c
> @@ -441,21 +441,21 @@ void kprobe_thumb32_test_cases(void)
>                 "3:     mvn     r0, r0  \n\t"
>                 "2:     nop             \n\t")
>
> -       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,"]",
> +       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,", lsl #1]",

Why is this change needed? Are the resulting opcodes equivalent? Does
GAS infer the lsl #1 but Clang doesn't?

>                 "9:                     \n\t"
>                 ".short (2f-1b-4)>>1    \n\t"
>                 ".short (3f-1b-4)>>1    \n\t"
>                 "3:     mvn     r0, r0  \n\t"
>                 "2:     nop             \n\t")
>
> -       TEST_RX("tbh    [pc, r",12, ((9f-(1f+4))>>1)+1,"]",
> +       TEST_RX("tbh    [pc, r",12, ((9f-(1f+4))>>1)+1,", lsl #1]",
>                 "9:                     \n\t"
>                 ".short (2f-1b-4)>>1    \n\t"
>                 ".short (3f-1b-4)>>1    \n\t"
>                 "3:     mvn     r0, r0  \n\t"
>                 "2:     nop             \n\t")
>
> -       TEST_RRX("tbh   [r",1,9f, ", r",14,1,"]",
> +       TEST_RRX("tbh   [r",1,9f, ", r",14,1,", lsl #1]",
>                 "9:                     \n\t"
>                 ".short (2f-1b-4)>>1    \n\t"
>                 ".short (3f-1b-4)>>1    \n\t"
> @@ -468,15 +468,15 @@ void kprobe_thumb32_test_cases(void)
>
>         TEST_UNSUPPORTED("strexb        r0, r1, [r2]")
>         TEST_UNSUPPORTED("strexh        r0, r1, [r2]")
> -       TEST_UNSUPPORTED("strexd        r0, r1, [r2]")
> +       TEST_UNSUPPORTED("strexd        r0, r1, r2, [r2]")
>         TEST_UNSUPPORTED("ldrexb        r0, [r1]")
>         TEST_UNSUPPORTED("ldrexh        r0, [r1]")
> -       TEST_UNSUPPORTED("ldrexd        r0, [r1]")
> +       TEST_UNSUPPORTED("ldrexd        r0, r1, [r1]")
>
>         TEST_GROUP("Data-processing (shifted register) and (modified immediate)")
>
>  #define _DATA_PROCESSING32_DNM(op,s,val)                                       \
> -       TEST_RR(op s".w r0,  r",1, VAL1,", r",2, val, "")                       \
> +       TEST_RR(op s"   r0,  r",1, VAL1,", r",2, val, "")                       \

What is wrong with these .w suffixes? Shouldn't the assembler accept
these even on instructions that only exist in a wide encoding?

>         TEST_RR(op s"   r1,  r",1, VAL1,", r",2, val, ", lsl #3")               \
>         TEST_RR(op s"   r2,  r",3, VAL1,", r",2, val, ", lsr #4")               \
>         TEST_RR(op s"   r3,  r",3, VAL1,", r",2, val, ", asr #5")               \
> @@ -764,7 +764,7 @@ CONDITION_INSTRUCTIONS(22,
>         TEST("nop.w")
>         TEST("wfi.w")
>         TEST_SUPPORTED("wfe.w")
> -       TEST_UNSUPPORTED("dbg.w #0")
> +       TEST_UNSUPPORTED("dbg   #0")
>
>         TEST_UNSUPPORTED("clrex")
>         TEST_UNSUPPORTED("dsb")
> @@ -790,9 +790,9 @@ CONDITION_INSTRUCTIONS(22,
>         TEST_BB(  "b.w  2b")
>         TEST_BF_X("b.w  2f", SPACE_0x1000)
>
> -       TEST_BF(  "bl.w 2f")
> -       TEST_BB(  "bl.w 2b")
> -       TEST_BB_X("bl.w 2b", SPACE_0x1000)
> +       TEST_BF(  "bl   2f")
> +       TEST_BB(  "bl   2b")
> +       TEST_BB_X("bl   2b", SPACE_0x1000)
>
>         TEST_X( "blx    __dummy_arm_subroutine",
>                 ".arm                           \n\t"
> --
> 2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE5uw4%2BzV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc%3DE_fA%40mail.gmail.com.
