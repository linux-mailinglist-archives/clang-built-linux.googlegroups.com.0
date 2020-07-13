Return-Path: <clang-built-linux+bncBC25XUMBOQIPZD5P7ACRUBEMPDXB6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B915121CD41
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 04:33:33 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 104sf6877240otv.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 19:33:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594607612; cv=pass;
        d=google.com; s=arc-20160816;
        b=LfvDMavL13qJiSKVNoBga+9PR/tpinUGffA+ITHl6Jf/oVmN2ncvUXOP1HkG71Nv8Q
         /pJSpS4yRPmPmKyK92ZnqwC/tZ2hvajpyT+eYV5rXU7ykxCO7NCt48NMUfQV1RgvpIHo
         5sL8dfKZmbOIQmosDyxdx9kHAewyGjU/ZLFDySnPTTU3piJRorBNDtNugIU0MUpLrFm+
         J1bYZmNTlUD79vtr8wLgS5Eh3GbKg+7ZUjBRECyhKNalG/1YAuIXuHsYfTuh3ufrpjvW
         Rd4U4GfI4YVCfSLVdsnKHpOc/riG3VTYwCNiXqyhwphzYWhTY+8IjDemS4GUptAd56vD
         tf/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=CgGl0McapSC4KI9LBSJ6dv9xyMPSvnMo/GxXL60Ld1I=;
        b=MThKxL9Hu4eyp0GZImpNOt0UBSHr0HcI8GSgR2PGX6JUfqFEViFP/Q/HX/5DAKfpqv
         3ovTH7Wys0rXURx+JMvxA0J2fR+Q3v6Y70mtEBFf/j72YMOxKcgQjZ/P+d1+S2NdlnBv
         PsvXKaoFTgwtOfDXvokzR34sNpkKVc8BcxT6yN5eIaA1dsP09t42CptXxq6kUBX0VYLM
         nbxg6A90NpZ7irIpb69/A6GaMi/UuK2T03JibHfHZn/2FwfL/k92bl6vqo5S5CGCkIXF
         ZCG9DYVGmoezXE7MufvIBoB6XEO8YVZQbxzHcWX2m0+hkCWi9DiNcNNUiTLXzM47TxFm
         ROoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiwlCzmo;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgGl0McapSC4KI9LBSJ6dv9xyMPSvnMo/GxXL60Ld1I=;
        b=Bw3GXFqPJauI/EnRAFkVKsIX+s61jHj1hYDjCxUa3h3HZsn+0tKr4YNCGz45x8Huwk
         HFpE6MjMZFoTCWZ7lX5N0dcLd2pkyrcH67RHJmJIpJlbkB923vGBp6okrHvzb3bb4liS
         Q4Wpy387wq39AncqZmcg6l9EQELezY7Rc8XrtkmD+JHatV0Z1uGRJrtz27BUC8/J2w3p
         FlM0NKpuFDwsSk6a3VaQ6AZLYOEd7DPcwZTlzt7pvxQJ5vv57di1rQ8xF0YSenhb3nJZ
         6j9x1dFQW06Zio7G/EPbRadCf2KNP3vIP4CSPJTl+2BjJTp3ZSeuBXjCp7HZ7JvES2Ok
         54dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgGl0McapSC4KI9LBSJ6dv9xyMPSvnMo/GxXL60Ld1I=;
        b=VCc0blrxpBMjEt0tKwnCirzO+lcTJX+dRWe4QjU2klYujsGW6ou8s44epdP64eBpzu
         uAeAU62xDgAT1PcSkuSuhXkz5DU0SfrKW5K2wGz8vlmeIeL4SsOWqW0PSL4KnGxgLQ9h
         lMdwB0YYCGmUFoow7Q3WkoP7VHWSEs263abm6XLzo2FXw4K4yzav8twyuSH/xNfIFxO2
         3mfIKPZuYZHUPbmS2m+uBEwG73z19x74bEAG7qysqU70H9eRHAG0FY0RDro1G5NmDWXX
         8bxTP6WHdMftt3k07piRtikEiEN9Qys4+8la3PVt26P3ZJzH5+YZLMaVQKN4EgQGKdJV
         EuBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgGl0McapSC4KI9LBSJ6dv9xyMPSvnMo/GxXL60Ld1I=;
        b=RPwmgR9Y+C4I+LheE495Z0/ByVDY0nonYaNTND6QuxlXm7qImjyfNCZeY77UF7lqSy
         T3zyE2Lfe3oDMngwHipDDNxEMmkxfevCWbb3sYoyrtWeJxkJMcQbrIURa8dcQv3DK8nC
         UJXy+sRNN2kumlfcmYTd57zdfTCw3VX6pKr/S2GCW2A1aBAgNkVa97Whsq2J1PmaHUaR
         JyOAa6pWQxR8oatcd2Vyz1p0Me7ne/ABhvnsBOJIu1w6TlFC9J2X07UsOeS4Y8oL809r
         Kem/LKubnR1uljs4GqbLBbS5P0Ba3ihEUODsEn1Zksvzo+w3R27AQ0rGCnpP8XTyf9XN
         aG5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ytHaBq3yAUMWY5izH9r7qOnA2zHZSKEIa9lI8tiHNKUjr2rmA
	SxC8o1XeVxpvAo7EtiVQ+L0=
X-Google-Smtp-Source: ABdhPJxZ2ZA449zcjJb7Rc3JkfV4xdLyb8HGYXhxtAsJenfW4lGGZXxLyAaAVn8lIytSWKaRBP2fIA==
X-Received: by 2002:aca:cc90:: with SMTP id c138mr1008876oig.153.1594607612383;
        Sun, 12 Jul 2020 19:33:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a11:: with SMTP id g17ls3202841otn.9.gmail; Sun, 12 Jul
 2020 19:33:32 -0700 (PDT)
X-Received: by 2002:a9d:65cd:: with SMTP id z13mr19928369oth.86.1594607612084;
        Sun, 12 Jul 2020 19:33:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594607612; cv=none;
        d=google.com; s=arc-20160816;
        b=YeQ6GgCB9rQFb8PGPseBXxZ9Ac9WMJhGm+WLECJRvhKulU+kb1JNsbDmHxfaTozXhu
         KgY80hPYQWP8qzcxgeR4M0L47JnnebslKZrAmeJ2kNQPN4Wmq99nyH9gWxbTKV52VP4q
         QpEEWF3iUbltf+vijl0UfT3Z+DSaaF41FXrWU9Tok7DLZ7nucZtugrG7OguAw+NSv/TU
         upjYxk5RbvgLyhWiQtZU9XbGo7cO7cW8PZ43xX4qagvFiWeqlnbjBdM02uwBCmS2qG4m
         TAOVQOReZRQN7A210RasYCX0I8QYSr/4nqnmhnvlb7V+aYBNxVSvSOfk/0UqCFvZaVPx
         R3SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=86gu0C74GPG2i+vB7R9610DsdyKxfiqdWZYUsHZUDv4=;
        b=nm+5ncsqVhkaJIHoyXBjvoHnd1EgLXyprghE47ZzF6CjQaVYoY1cVaxrk/QkxSstNF
         8eReizf9Hbimjzfeo21LDHpLu7Li4ReQ2r0/o8B8gJa86Ag5S24GtgQCa2tG5pG2AGz7
         Xcf5zSR0fXOZ+B3M9B4nF3L4sxvUcGNBg4RIrQAD3cDvMZSQ89Lzkvl5Bf3Gzgs1zEOK
         BBrML4ak+FzT/taHn25VzcIligDizl3Wi0rOW7RTpfPT2VpN4BqdiLKIAmMtCosmcrtB
         U9wBL+6LwaZnOJF/ZE+tIQmVsVYvZuzdjPpzY+WGPBNv3zyLTVKDPA1Frqs1KK1opgvH
         khOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qiwlCzmo;
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id h25si638306otk.4.2020.07.12.19.33.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 19:33:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id i4so11853398iov.11
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 19:33:32 -0700 (PDT)
X-Received: by 2002:a02:a008:: with SMTP id a8mr85486997jah.68.1594607611745;
 Sun, 12 Jul 2020 19:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200713012428.1039487-1-caij2003@gmail.com>
In-Reply-To: <20200713012428.1039487-1-caij2003@gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Sun, 12 Jul 2020 22:33:20 -0400
Message-ID: <CAMzpN2idjMEFXvxZKOwDggO1MAFESRE4E_Ch55gfPeLFipxDqw@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, 
	Sedat Dilek <sedat.dilek@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qiwlCzmo;       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d44 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jul 12, 2020 at 9:26 PM Jian Cai <caij2003@gmail.com> wrote:
>
> Clang's integrated assembler does not allow symbols with non-absolute
> values to be reassigned. This patch allows the affected code to be
> compatible with IAS.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/x86/include/asm/idtentry.h | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index f3d70830bf2a..77beed2cd6d9 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -468,34 +468,32 @@ __visible noinstr void func(struct pt_regs *regs,                 \
>   */
>         .align 8
>  SYM_CODE_START(irq_entries_start)
> -    vector=FIRST_EXTERNAL_VECTOR
> -    pos = .
> +    i = 1

Start with index 0.

> +    pos1 = .

pos1 is unnecessary, as it's equal to irq_entries_start.

>      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
>         UNWIND_HINT_IRET_REGS
> -       .byte   0x6a, vector
> +       .byte   0x6a, FIRST_EXTERNAL_VECTOR + i - 1
>         jmp     asm_common_interrupt
>         nop
>         /* Ensure that the above is 8 bytes max */
> -       . = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +       . = pos1 + 8 * i
> +       i = i + 1

If you swap these two lines then the index will be correct for the
next stub if you start at 0..

>      .endr
>  SYM_CODE_END(irq_entries_start)
>
>  #ifdef CONFIG_X86_LOCAL_APIC
>         .align 8
>  SYM_CODE_START(spurious_entries_start)
> -    vector=FIRST_SYSTEM_VECTOR
> -    pos = .
> +    i = 1
> +    pos2 = .
>      .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
>         UNWIND_HINT_IRET_REGS
> -       .byte   0x6a, vector
> +       .byte   0x6a, FIRST_SYSTEM_VECTOR + i - 1
>         jmp     asm_spurious_interrupt
>         nop
>         /* Ensure that the above is 8 bytes max */
> -       . = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +       . = pos2 + 8 * i
> +       i = i + 1
>      .endr
>  SYM_CODE_END(spurious_entries_start)
>  #endif

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2idjMEFXvxZKOwDggO1MAFESRE4E_Ch55gfPeLFipxDqw%40mail.gmail.com.
