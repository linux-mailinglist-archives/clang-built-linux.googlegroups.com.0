Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6U2ZH3QKGQEEYD254Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF514205B00
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 20:44:11 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id o84sf25304301ybg.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 11:44:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592937851; cv=pass;
        d=google.com; s=arc-20160816;
        b=si3Q03QH0Db5G71yTu9SrbrYJHlaMx/MdDJBsak/3RPQ8iLcsi2R5TExhN9bhtlmsB
         UEbX+c79Xob3wTCPd1fISwFMRsqrOc//rorOD7gGL0RaYITB2em71O2zvI8qlWA3/mla
         C9owQHP/SboPVjXnp37xfA7ZRsh0a6buuYV+T+18kvVfaubY2IaHxcjO/IgJFu9MOEe9
         rmSrBVhdqnHS/dZfeFgtTa60nA056rLjw2vAwFm9akW2BDHY2SoQLSolWjfBclMbyd6a
         jB/cqbzCNriauBiNPhQ+zeZDGPBd9xGQFS/Eyu8QPZaYBpM3aPGAVO0vdwiqMxHZX97L
         mO/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dx1tb7eMcAuvkzaDpAjQ2MVYjjBxtxvLum35t9p7Efo=;
        b=rwxecqhOZty3k92pZR6nAu9Hz6CF0dQURT1u+3iTJwuQbEkAWzugRrdZ7+Et9JBdB4
         0rnOZcG6rqt8dm2S6kSOZe81RtevriDVUjreFAOUgRKpcF/F+dAtd5TJjynKnYEsD6PA
         c1bkfdKRsKYU36Hlxc8FtWoWePP15GEPAjUI9XnPvUF6dO1YsMCIeH4uBbS4QzdQUDgU
         hX24znxudQW/J6NbTHYfEXXm6CedNG6JVbh2NIFTrXyyZbtvC939FLqR0aFdi3qJsvkP
         +3/lVOfKWIQsgODQv8qK7ngxUeEuPBF7gbFDyh8ZBSxQzwUx3Gf16GXyqsh/KNMGG/qj
         nETA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EEtuDPY1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dx1tb7eMcAuvkzaDpAjQ2MVYjjBxtxvLum35t9p7Efo=;
        b=m9YEKtInhzF40vDz/n+lM7jgU/JXPYYWA9zsZy61DcZiZG93ZJSAsHAF0kD0UsFGfn
         9tygDL1r+3xdNMoSobqRQYIT5mBFabVcxuqcA3N5DyspAp9g84wqLLx35oSPsoLUGeHX
         n8J3gK/rk7394Y/3xRCIFpuIP0t+kEzK/1LL0ogM16m0rVlCggMQ7J4yo7dRnGkaBZbc
         5c8eqm14qEsbV7olL3SwnC0O95qwQMVpRCPH2BWmI4bqsbxE3OMZkH0jF1/Dimu2kI0n
         yrr+oB+T08uhRf+d8LSVgrg8Bh2Rg+MDha96MLLMGjzRsZRV86pRDqeX/18kZcIAaAoF
         7ygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dx1tb7eMcAuvkzaDpAjQ2MVYjjBxtxvLum35t9p7Efo=;
        b=SGvuXWxkwyqTME1cHVzzo+dhxLEjKl0Ty9fl8epeWp2wfb0IniDVM1VmuJOjCk2vSo
         iFj6SLVPVzg87AS2B8AAzu5zXpd80YD27bNaOmwqol2D5h0WXUZhhOXxQe2ixuVWNcHb
         Agq9BRWR/3dSxjnjXZFBfyl7A8dQq1bDQVUd8+7ygq3JYs5KEx+gfyJxifVbzRdhYg1s
         n+eFHsNwUNPNJS2V44CgbsNtAisR9N4/mPk+qFiSYYU/uNRx2ixxV5oeV1Nmx2rFo7Ye
         LOdRAl360TQxBb/OmZCNQyI7PVUnELsQHkNrk7SDiOTASW08Ptfrr6NEC4DabQuy8Tq/
         v0Cw==
X-Gm-Message-State: AOAM532tiIZ5sKv4ae5Q9BD+YDQLCBfjgn33NreyyIrpDazKiF/1CyaR
	zZmkfbjRsmSsw9vwlI7LDWc=
X-Google-Smtp-Source: ABdhPJxspJeL19o+6iiFY9yBSs+FKJ26VH5ghxCgCvDz3GChDtxoFIux1W0GSjESCXigp/ybA0c5QA==
X-Received: by 2002:a25:bd4c:: with SMTP id p12mr40496797ybm.471.1592937850746;
        Tue, 23 Jun 2020 11:44:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls8166511ybg.3.gmail; Tue, 23 Jun
 2020 11:44:10 -0700 (PDT)
X-Received: by 2002:a25:2d53:: with SMTP id s19mr41003966ybe.172.1592937850170;
        Tue, 23 Jun 2020 11:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592937850; cv=none;
        d=google.com; s=arc-20160816;
        b=NNw2eUp2OCx6KHRtPL/VmYhn40Encm5t9bazaFguHNeEPCVxPIOIJrYWDyqnjO3nzm
         ttnltAGuZlIF2IaDPDY4BBLMUoTD/SuGeS1IdbuEQeJ+Dwlz2NeGFKIla5XRCaIHaJXn
         zEm8eXDZLqmMvB+G4KDNxTU9Fcv9f8yTUN9Wq6Dfx9Wb+tBniWRTkiGPsa98hpDdTxs/
         zHBXbqpUPJdWV8UYhTsEkOzAwGn7RObqa7VlSci5FgZTcedSQG798Rg2vJR1Mx9vqBBA
         +SVKGMPeJa1y87a5FzwnIIs4Z1tRCSjOl24hDn2fsXtU4AvxUABS48WhxXKMQ+Pfh/f4
         6kSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tVAIyD3Q99J/GMICmIeAkqQ2ozy/kJogio/DjqwTxd4=;
        b=mZA0aS4wSVWNWYH2jQl1SsZWdStQYU12zvMBO8atpil1d/xGZY/LZtgDNGTAIQcrZp
         vcz7Imm03Uphex42EyBqjh9aQlJJmlgn5D40EqQPa1m7aYyxKEhs6QoX2NTIHBGyE1Yw
         xfdcFAn7XO/8srBwJ9bWMRKsbrb2+DegzUxrnDNE0pcJs+zY5HKr5cUutNExhsq9FQqY
         MivrshlYZN6bw5RGWFVXWbEEw7D2m6vOVsc/o6ggdqNKT5mtr3+4XNBGAmQlcGPfTu8R
         lkR06mwV6gTHufHGPtUOCWvEpzdL/be+IhB690b3cDf5bNu5ppVXGTxKFIoiVPfLCNoT
         ofrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EEtuDPY1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k75si631128ybk.0.2020.06.23.11.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 11:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 35so9507427ple.0
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 11:44:10 -0700 (PDT)
X-Received: by 2002:a17:90b:949:: with SMTP id dw9mr25483894pjb.101.1592937848930;
 Tue, 23 Jun 2020 11:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200623025628.18467-1-sedat.dilek@gmail.com>
In-Reply-To: <20200623025628.18467-1-sedat.dilek@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jun 2020 11:43:58 -0700
Message-ID: <CAKwvOdmR10E2uzKnq2Jt0DSw9+3uvjSfqidxppCoYmhNZPLx5Q@mail.gmail.com>
Subject: Re: [PATCH 5.7 v2] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Craig Topper <craig.topper@intel.com>, 
	Craig Topper <craig.topper@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EEtuDPY1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Jun 22, 2020 at 7:56 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
> from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
> I see the following breakage in Debian/testing AMD64:
>
> <instantiation>:15:74: error: too many positional arguments
>  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
>                                                                          ^
>  arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
>  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
>  ^
> <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
>  GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
>  ^
> arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
>  GCM_ENC_DEC dec
>  ^
> <instantiation>:15:74: error: too many positional arguments
>  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
>                                                                          ^
> arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
>  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
>  ^
> <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
>  GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
>  ^
> arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
>  GCM_ENC_DEC enc
>
> Craig Topper suggested me in ClangBuiltLinux issue #1050:
>
> > I think the "too many positional arguments" is because the parser isn't able
> > to handle the trailing commas.
> >
> > The "unknown use of instruction mnemonic" is because the macro was named
> > GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> > GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> > macro instantiation, but llvm doesn't.
>
> First, I removed the trailing comma in the PRECOMPUTE line.
>
> Second, I substituted:
> 1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
> 2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc
>
> With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.
>
> I confirmed that this works with Linux-kernel v5.7.5 final.
>
> NOTE: This patch is on top of Linux v5.7 final.

Thanks for the note, still applies cleanly on top of linux-next today for me.

>
> Thanks to Craig and especially Nick for double-checking and his comments.
>
> Suggested-by: Craig Topper <craig.topper@intel.com>
> Suggested-by: Craig Topper <craig.topper@gmail.com>
> Suggested-by: Nick Desaulniers ndesaulniers@google.com

^ oh, may have missed <> around email addr.

> Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>

Following the same testing methodology from V1
(https://lore.kernel.org/patchwork/comment/1456822/) I verified for
GCC+GAS this is no functional change.

$ wget https://lore.kernel.org/patchwork/patch/1261340/mbox/ -O sedat_v3.patch
$ git am sedat_v3.patch
$ make -j71 arch/x86/crypto/aesni-intel_asm.o
$ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > postpatch_v3.txt
$ diff -u <(cat prepatch.txt | tr -s ' ' | cut -d '    ' -f 2-) <(cat
postpatch_v3.txt| tr -s ' ' | cut -d '   ' -f 2-) | less
(no output)

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/x86/crypto/aesni-intel_asm.S | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
> index cad6e1bfa7d5..c216de287742 100644
> --- a/arch/x86/crypto/aesni-intel_asm.S
> +++ b/arch/x86/crypto/aesni-intel_asm.S
> @@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
>         PSHUFB_XMM %xmm2, %xmm0
>         movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
>
> -       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> +       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
>         movdqu HashKey(%arg2), %xmm13
>
>         CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
> @@ -978,7 +978,7 @@ _initial_blocks_done\@:
>  * arg1, %arg3, %arg4 are used as pointers only, not modified
>  * %r11 is the data offset value
>  */
> -.macro GHASH_4_ENCRYPT_4_PARALLEL_ENC TMP1 TMP2 TMP3 TMP4 TMP5 \
> +.macro GHASH_4_ENCRYPT_4_PARALLEL_enc TMP1 TMP2 TMP3 TMP4 TMP5 \
>  TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
>
>         movdqa    \XMM1, \XMM5
> @@ -1186,7 +1186,7 @@ aes_loop_par_enc_done\@:
>  * arg1, %arg3, %arg4 are used as pointers only, not modified
>  * %r11 is the data offset value
>  */
> -.macro GHASH_4_ENCRYPT_4_PARALLEL_DEC TMP1 TMP2 TMP3 TMP4 TMP5 \
> +.macro GHASH_4_ENCRYPT_4_PARALLEL_dec TMP1 TMP2 TMP3 TMP4 TMP5 \
>  TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
>
>         movdqa    \XMM1, \XMM5
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmR10E2uzKnq2Jt0DSw9%2B3uvjSfqidxppCoYmhNZPLx5Q%40mail.gmail.com.
