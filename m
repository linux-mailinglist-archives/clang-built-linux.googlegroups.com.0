Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBKMIRSCQMGQE525IEYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDE7386E05
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 02:02:50 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id m6-20020a0568301e66b0290319b27baf50sf2021901otr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 17:02:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621296169; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIQljmbfjLgTeiLtET2Oq1UguAc76/eavwNt2rrJHnE1NCsXbV3aLkiAPSH3QO2Nqt
         sTaJAFpt5bbiLuQ46ViwWtPeNgYQ8DQXgLp0U01nG2oYNYSqygCoTlSy8dfDKapCoIOV
         zSVX1++ZQcu+9NngnyepWn565TaVMxfGlfAC1MgFpw/RKQmBnvtQytnnuS//xuaWrBSw
         DAxTkRTsapLP02RYMJa1dmx9EliP/uVkn9R7lGhIPxk/kIlPpp+kVlfwOUxOh0JCCZzQ
         GiSnNOjU0kPUiErCP1MEHRtYYNqwjT4xio2dF3guIxYlu2yAr16XrRuYFh3mKRAasquw
         Hf3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sTg8hSw0FhF6++TmDjjEb/UQA88zBErM9C+WVXlI6Eg=;
        b=zTsdEq8as7T0DCgM4UKx32tjkpAgh+WKEOxt8yH+AOn8qWLiRX3wecY8qebbXfL7Lu
         sTu3d1pYfOhU8CmrmM/R34reh2MkxoSbeEw2pyoRPgh1wHx6Ik1gDuvmbpPXitnvk+kg
         AFgTQgtWDDrX/zxKUVHEDWDSLlBRhMmceFPLOw6hY42bONw+Sw/mltkCqgMSk2IFMQz6
         y2uAs9JHI4rnTzfWrUQZ4lsh6mfgHr2IuDrAIgAuAP0Vb6Sx/V1Mfr/eMYnc0qvhVB1u
         Aa9nBjTBmKUXQZkNtfNvEwZ3yMEMyuCrwkz4XBSSfefk9CzDj44NlbaTSONdqFNUDl8z
         dvMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eY/9ir7J";
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sTg8hSw0FhF6++TmDjjEb/UQA88zBErM9C+WVXlI6Eg=;
        b=HKmAw28oi/HjFY6fRZ6IPJowEXFP/y2b6JxvPXQEQVxPEJT8D+w3xvvuqIhANDVsgI
         niNbObLEnKGx21ImwbV5HanPiEcBOzvEX7B8uS2SF2eDLDDYQkRVegisY0POadtrg4+p
         D8JKJNTBz9flBttxNEFUKr7ia9ayldRtnpQhbkIdtpMjQdU4hB0b2XDpDnEcc8I8wnjT
         nMpefhugQvh8c2hKRZLf+TY/HM3+Y7pH3NUd/1cZ0QpWzeltjoMN1PGk/SgdTdAduOPW
         /rDvIH3RSlqS58DIAFkvFjEbad7gAa2ADGa8bh/ecGl+FUcQv1Ghp5wAVWCeZ4Z9HTOE
         kmSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sTg8hSw0FhF6++TmDjjEb/UQA88zBErM9C+WVXlI6Eg=;
        b=PeCaQ60DN3bsCVytJhdo3tVmdwpMUE1waZFgqhk2TZdG/1dYq9Cz304KCZT5wbAVGB
         E1QXaK4aWblNRjh/BML6824wFzPXAAyXdwv+nAAC1f/HcO8CXufpNFXKowuP0B7fLTzG
         QfyLeHKUG+6bU7TfMWKkT8MiRSWsqTgoV3obzCjyE1hRcgENtqroBXZc2Q5OnUnN9h/k
         psr0wIIQy4lNNDajncVDvpcRyRcAaPnkUYAhYihjmeV3K3rcJdpAU4aLD0Ye4PVwgB4y
         0KfmA0+X78Kf3tQC2kmITboz9qfZ9grtleM9oCFjqOKfkhZ/OehPIWiVCznJa6mKS0er
         mzlg==
X-Gm-Message-State: AOAM532AC1TS9qWt4//jzMSuFiFxRD6PLVbHTIDzxgzBsKg+5p47FPlc
	bNvh7dAHkBYLJythgp26tBE=
X-Google-Smtp-Source: ABdhPJxLVPB2xTBU8satgmjRGTURvKuQx0AluglWHDxqxlPyES43rfxaz0pGTW2zKvAEXF9JTDhDvQ==
X-Received: by 2002:a9d:72ca:: with SMTP id d10mr1777026otk.358.1621296169159;
        Mon, 17 May 2021 17:02:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:68ca:: with SMTP id i10ls1948806oto.8.gmail; Mon, 17 May
 2021 17:02:48 -0700 (PDT)
X-Received: by 2002:a9d:7852:: with SMTP id c18mr1778723otm.115.1621296168775;
        Mon, 17 May 2021 17:02:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621296168; cv=none;
        d=google.com; s=arc-20160816;
        b=GWAtmFOkB4KczWocxUHbzKX4fdSnhkZilOPf0fEAoA/CySbYME4IvEfDEJL01yZdGm
         NvLnab1JKvlxC8WkW4z0uQWF0TyFUlSWronx6L20kCiVwQjWjrWt0Eml6ZPGoHQLPjW8
         hFjcNy4iDrWRci4gS/LoLQ+o2cIEvjb5UOPys8RJ4rU3V3SdLenr12AMYKntS8/bAvgz
         N4D6An2sdWbdyGJikOhMdiZL+eDTCWPz3LxKx9n1449n7NDR+8/iaJS/zqsfqJUbsqQq
         cPG83E80SxPcVFkILBrG9TGvtSoy8UD1tk7FdfbXUo0UosThQy8UfHjw3YEEEhg8FE+G
         0/NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FMz/zphNmmGURF/lxitDLAzk83DBOjUJRt7dfNy2yaY=;
        b=qq91ePh+wYHMDgNrFwcqKyHaxP5/Q2th1xW4XhO/kk6NwEW/ff1iSYLnynfPWP72Hx
         HfWFQXvX/NmMfu2bKCB1Vq098IDA8l9KU+ZbDtSxeCR9G+K0a/axAaKVSTkyjmkxGc45
         ege0hPahaHadJYjRzkTSw16z+iHRofMCNTqo65s+zVmqH5jeO4ApmiXY33KSVFZuIihg
         Ij7dlTL5srXZitMCWh/mJ4Dk4YMqMIcRpi6LM5jVpEfUbU9OzsxgVX0aGOQBec6e4sWs
         igQXhJCN1hKfPC8cZVS6VOKZ6zO/oiQ8ARja7wRuaNbUUhkXGMHcrQln767vSQqbGyEn
         TPbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="eY/9ir7J";
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id o7si2115360otk.1.2021.05.17.17.02.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 17:02:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id e190so10829501ybb.10
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 17:02:48 -0700 (PDT)
X-Received: by 2002:a25:c591:: with SMTP id v139mr3326222ybe.511.1621296167996;
 Mon, 17 May 2021 17:02:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210329221209.1718079-1-ndesaulniers@google.com>
In-Reply-To: <20210329221209.1718079-1-ndesaulniers@google.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 May 2021 17:02:37 -0700
Message-ID: <CA+SOCLJJWU0NGbxe139qXYsE5FY44PJnkbWDG0TAGh=Movt2Rw@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: kprobes: test-thumb: fix for LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arnd Bergmann <arnd@kernel.org>, David Spickett <david.spickett@linaro.org>, 
	Stephen Hines <srhines@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="eY/9ir7J";       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b32
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Thanks for the patch. It looks good to me, and I double checked  ARM
architecture reference manual for V7 and can confirm the missing
operand in these instructions is not specified as optional.

Reviewed-by: Jian Cai <jiancai@google.com>

On Mon, Mar 29, 2021 at 3:12 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> There's a few instructions that GAS infers operands but Clang doesn't;
> from what I can tell the Arm ARM doesn't say these are optional.
>
> F5.1.257 TBB, TBH T1 Halfword variant
> F5.1.238 STREXD T1 variant
> F5.1.84 LDREXD T1 variant
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1309
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> See:
> https://lore.kernel.org/linux-arm-kernel/CAMj1kXE5uw4+zV3JVpfA2drOD5TZVMs5a_E5wrrnzjEYc=E_fA@mail.gmail.com/
> for what I'd consider V1. The previous issues with .w suffixes have been
> fixed or have fixes pending in LLVM:
> * BL+DBG:   https://reviews.llvm.org/D97236
> * ORN/ORNS: https://reviews.llvm.org/D99538
> * RSB/RSBS: https://reviews.llvm.org/D99542
> I'd have expected the Arm ARM to use curly braces to denote optional
> operands (see also "F5.1.167 RSB, RSBS (register)" for an example).
>
>  arch/arm/probes/kprobes/test-thumb.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/probes/kprobes/test-thumb.c b/arch/arm/probes/kprobes/test-thumb.c
> index 456c181a7bfe..4e11f0b760f8 100644
> --- a/arch/arm/probes/kprobes/test-thumb.c
> +++ b/arch/arm/probes/kprobes/test-thumb.c
> @@ -441,21 +441,21 @@ void kprobe_thumb32_test_cases(void)
>                 "3:     mvn     r0, r0  \n\t"
>                 "2:     nop             \n\t")
>
> -       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,"]",
> +       TEST_RX("tbh    [pc, r",7, (9f-(1f+4))>>1,", lsl #1]",
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
> @@ -468,10 +468,10 @@ void kprobe_thumb32_test_cases(void)
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
> --
> 2.31.0.291.g576ba9dcdaf-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJJWU0NGbxe139qXYsE5FY44PJnkbWDG0TAGh%3DMovt2Rw%40mail.gmail.com.
