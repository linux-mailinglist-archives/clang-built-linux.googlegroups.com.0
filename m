Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAFLYT3QKGQEMU2GTJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id E46B22041FF
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:33:05 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id ge4sf556276pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:33:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592857984; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUaWOE+SHBVy49vl1N/z2VDAcf9oHurUVS+Hs3LYB1J0lQ9iA9WTEtgcf+T0rMVhu/
         enyQ2bRH9aTCQ9Lm7Yb59X5NwXwarUHR/G4B7gKDcWmwVZWC0Xm0uw4M+2WsTHTIx8Ex
         3qG5p0ZE9F9Ymd3RW221vqen8cYStvoYjlzU5PGUZy8r0AeKSmqMS8b/yPVp7zQm8VP6
         gP9n5KT6ZlrZGFGObnOGey5FQ+1LQVcmuBD8cp2+pwUXkYN3Er7987M+y+E+5fJbzX4R
         EJVRuz/tc1RrG6BUc5Rc7JFcYIQO/60nFx8aSrokNDYDQQBzNluv9nzXmvBfKjtZoKhb
         sC8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3d8gbbKOeJeQKIkOumnZEnlIXtX814fLpg1jx9X2hGQ=;
        b=MAaEgscYiVE6/puz55QJpAUtj95/gCxUa5DNUUH9P8gwa5ssaiPkX/dQYWlfsBKOTc
         yx/3HlpojFcEgVfw34glGzAKHxfDrSezL2rnHJS8AjP3dP+2K2Y9/mOvEkOAq4I6Fo0X
         jktNhkfBT7RJXnjoxu5ZU0O97n9nMOv75i63Nf7CVMvhWJcULkUjo2bIkZbPAeQi/+Cl
         1ptsFxvrRKIgtlVZ8RGdEYuqMi1FcGW1znGAuCAjw4+VxKw7ExhUATw44wVcj0lqSCI1
         e+KjOBc98l6ixf1coHnXWUhmVExdbdOEn2NHjT/FumxOS6sOVC6mI6A5A4yi9DTGUj3z
         vlhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+1ZUaKx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3d8gbbKOeJeQKIkOumnZEnlIXtX814fLpg1jx9X2hGQ=;
        b=eOtiDe+gVYniyVEoU9p7ZuQ7XcrystTXs5yg5lAVSd2UqgIHF+km5GFGC0gYlGHWzX
         HoREWRwS7M0T4kDQ8TxLKkxfeDrE9CBD3VyoVJWPe6eflSi13a46apUb0CNmF34BE12P
         tFtktqlH6kQcT1H5FG3V9/yJBL++JjAy2tox3R6za+sJcRVbEH4yyV0y+kx1yiaKZOn2
         UXVZbEg7JfEpNtuRkZEig3ckCi2ufVtXaX2VY/VqBmC9cYgUI2T3qnN3LRz/VcJOuvBv
         TZ/IJCQAoHuD9ZaLnDlCchX+XsEZfN1+d8yXW/2WAGAXbPdPNbW7AcQqcuL5RJj04243
         Xy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3d8gbbKOeJeQKIkOumnZEnlIXtX814fLpg1jx9X2hGQ=;
        b=FwEUGhK1aFPyCXCryjmJXi4+GbUqWtYq7a73fOstVq6jj33HhRQFwUK8NQFz8xSNcs
         rICMJj6XEsB/2f/x40Bj7vroRyOIr8+0VaZNNyTBBudDleXBmXnd9ghCCDkpisOe/Vsp
         /eISMinAy7dRwcWg/6KDxZ1fWzmuBp9zkp+DdMjPzuE229wSYlS4DVut2qJyynT22WN5
         7AVZ0nYW2YaAUMj3ldC+1TvZ6mndVPhhK6Vk2OqZIIVcy9hGHeEqghvrBj1c9B+RA1xO
         W1bIZfZbEY1BI32ITBEykuu1DVDr3JrUKcPYP+u4Zn6xRnv8POB6AUKMRPARc2ewdq6L
         8IjQ==
X-Gm-Message-State: AOAM533YGcz3BX1A/FMYj0wjDpH9Cz2Bt4LgQwsrr5thpTVXlRxcnhja
	SCIFOkuNFuk2SG0IIRkMEc4=
X-Google-Smtp-Source: ABdhPJzLH8ajJpOPmdRVhH2oIwPgDZY93NU11EQLpNcxkoKALpB2Z/D/TLAOvZ4ZRyYMA8wuYah1QA==
X-Received: by 2002:a62:7ccb:: with SMTP id x194mr22986602pfc.318.1592857984220;
        Mon, 22 Jun 2020 13:33:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9007:: with SMTP id a7ls6756780plp.3.gmail; Mon, 22
 Jun 2020 13:33:03 -0700 (PDT)
X-Received: by 2002:a17:90a:294f:: with SMTP id x15mr19140599pjf.97.1592857983847;
        Mon, 22 Jun 2020 13:33:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592857983; cv=none;
        d=google.com; s=arc-20160816;
        b=oF8IY1R3FZ02dQ29DtGCZwyUOgTW6Gw63xN6GisrTQuUhcrfYsE+BJYKwKBBiM7CE9
         fCaNcu/hLk4ln+vSreomaVlU2FVV+x/s6jbJEwhKNTmV9h+mpFvbKlkwV1QGmS9AKg/t
         xkgLlKqVvoGMwvjFtec3VA/IR1qi5klqqpMqP0D5l5Z8zZTknmgy6gRi/CC12dx2wmAM
         o2mBEDaW58iwqaHvXvi8X2GMIVswb6ikFBCqUB+pHYwtD7wQmHK37wkCpW0ubb/VawfT
         RvCZgxTSBXEr4Kokq3xuD8zXtT0jSLf9Ri7YJ2QP0HP9Eo46Dt9z5+jmE5kRkl7rIyGI
         y4Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A2m6zwHdBGgWBUHw1PDnYO97YjGBdtbP9S09Wu+FkWc=;
        b=AVnOODMatQGk0mWfrZLM60k19nKkSmkWa8Ykysh1N4z38MKHZNIL8D29h1t82aWY3V
         KDSxwhPGo4FPj3FEjnI8exwhi14gWIAYVkYrbPTWLGpkw1TTdVft5L6PQZlbdaW0fSCM
         hbqBbY+wT3iGRiM7DiPXJfh4cHkB3A4KVl+9Agt2J/A36V878N/2OmW+QUUvqN46Gx3i
         kA6owyzuylyRvPuTytGIciWZeMED1U2SBGtBf5fGfNWXckTaTQu30QvHs5qJT+2tSGsp
         PIOCa3bwO1EDfwUzxO0g7xYWuGA9L0MtPZrj6a284IERbgFEQBzzxS+pF63ElW9dfr26
         1VVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+1ZUaKx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id p9si727638plr.1.2020.06.22.13.33.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:33:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id s14so3985005plq.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:33:03 -0700 (PDT)
X-Received: by 2002:a17:90b:949:: with SMTP id dw9mr20662415pjb.101.1592857983236;
 Mon, 22 Jun 2020 13:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200622155018.6043-1-sedat.dilek@gmail.com>
In-Reply-To: <20200622155018.6043-1-sedat.dilek@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 13:32:51 -0700
Message-ID: <CAKwvOdn0EnKnGToVC1Bw5di6ucSFkKNOUko1yekkcVhw5nzXZg@mail.gmail.com>
Subject: Re: [PATCH 5.7] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Craig Topper <craig.topper@intel.com>, 
	Craig Topper <craig.topper@gmail.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W+1ZUaKx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Jun 22, 2020 at 8:50 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
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

=== I think from here to...


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

Yep, see also:
commit 6f5459da2b87 ("arm64: alternative: fix build with clang
integrated assembler")
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6f5459da2b8736720afdbd67c4bd2d1edba7d0e3

>
> First, I removed the trailing comma in the PRECOMPUTE line.
>
> Second, I substituted:
> 1. GCM_ENC_DEC dec -> GCM_ENC_DEC DEC
> 2. GCM_ENC_DEC enc -> GCM_ENC_DEC ENC
>
> With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.
>
> As llvm-toolchain I used v10.0.1-rc1+ and v11.0.0-git pre-releases:
> 1. release/10.x Git: 2dc664d578f0e9c8ea5975eed745e322fa77bffe
> 2.       master Git: 8da5b9083691b557f50f72ab099598bb291aec5f (default)
>
> Just for the sake of completeness:
> 1. CONFIG_DEBUG_INFO_DWARF4=y
> 2. OBJDUMP=llvm-objdump (passed to my make-line)
>
> Please have a look into "llvm.rst" kernel-doc for further informations and
> how to pass LLVM kbuild-options to your make-line.
>
> I confirmed that this works with Linux-kernel v5.7.3 and v5.7.5 final.
>
> NOTE: This patch is on top of Linux v5.7 final.
>
> Thanks to Craig and the folks from the ClangBuiltLinux project.

===...here can be cut out from the commit message.

>
> Cc: Craig Topper <craig.topper@intel.com>
> Cc: Craig Topper <craig.topper@gmail.com>

I'd pick one or the other email addresses, and just use that one.
Craig seems to commit to LLVM with craig.topper@intel.com, so I
recommend that one.

> Cc: Nick Desaulniers ndesaulniers@google.com

Thanks for the explicit CC, though I do monitor the below list actively.

> Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst

^ probably don't need that link either.

>
> ---
>  arch/x86/crypto/aesni-intel_asm.S | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
> index cad6e1bfa7d5..983eb2eec51a 100644
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


There's a comparison on L386
 386 .ifc \operation, dec
Also, L407, L393, L672, L808, L841, L935, L941, L947,

If we change the `\operation` macro parameter to be `DEC` instead of
`dec`, does this comparison still hold true?  I would expect not if
LLVM's integrated assembler is case sensitive?  Otherwise we're
probably missing instructions for the case of `DEC`.  In that case,
that should probably get fixed.

Interesting, looks like GAS *is* case sensitive for `.ifc` directives?
```
$ cat foo.s
.macro foo op
.ifc \op, dec
  subq r8, r9
.else
  addq $0, r8
.endif
.endm
foo DEC

$ clang foo.s -c
$ llvm-objdump -d foo.o
...
       0: 48 83 04 25 00 00 00 00 00    addq    $0, 0
$ as foo.s -c
$ llvm-objdump -d foo.o
...
       0: 48 83 04 25 00 00 00 00 00    addq    $0, 0
```
In that case, it seems that this patch probably breaks the DEC case
for both toolchains.

Just to triple check, forgetting LLVM for a minute, let's compare the
disassembly before and after.

$ make -j71 defconfig
$ make -j71 menuconfig
<enable CRYPTO_AES_NI_INTEL>
$ make -j71 arch/x86/crypto/aesni-intel_asm.o
$ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > prepatch.txt
<apply your patch>
$ make -j71 arch/x86/crypto/aesni-intel_asm.o
$ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > postpatch.txt
$ diff -u <(cat prepatch.txt | tr -s ' ' | cut -d '   ' -f 2-) <(cat
postpatch.txt| tr -s ' ' | cut -d '      ' -f 2-) | less

It's not the easiest to tell, since I should have left off `-r` for
relocations from objdump, but you can clearly see cases of different
disassembly.  Even the address of labels changes due to missing
instructions.

In that case, it's probably a smaller change to just renamed the macros
GHASH_4_ENCRYPT_4_PARALLEL_ENC
GHASH_4_ENCRYPT_4_PARALLEL_DEC

to

GHASH_4_ENCRYPT_4_PARALLEL_enc
GHASH_4_ENCRYPT_4_PARALLEL_dec

respectively, though using ALL CAPS is likely more consistent at the
cost of more lines changed.  Also, sorry I didn't catch this on the
earlier thread; my mistake.

> @@ -1596,7 +1596,7 @@ SYM_FUNC_START(aesni_gcm_dec)
>         FUNC_SAVE
>
>         GCM_INIT %arg6, arg7, arg8, arg9
> -       GCM_ENC_DEC dec
> +       GCM_ENC_DEC DEC
>         GCM_COMPLETE arg10, arg11
>         FUNC_RESTORE
>         ret
> @@ -1684,7 +1684,7 @@ SYM_FUNC_START(aesni_gcm_enc)
>         FUNC_SAVE
>
>         GCM_INIT %arg6, arg7, arg8, arg9
> -       GCM_ENC_DEC enc
> +       GCM_ENC_DEC ENC
>
>         GCM_COMPLETE arg10, arg11
>         FUNC_RESTORE
> @@ -1719,7 +1719,7 @@ SYM_FUNC_END(aesni_gcm_init)
>  */
>  SYM_FUNC_START(aesni_gcm_enc_update)
>         FUNC_SAVE
> -       GCM_ENC_DEC enc
> +       GCM_ENC_DEC ENC
>         FUNC_RESTORE
>         ret
>  SYM_FUNC_END(aesni_gcm_enc_update)
> @@ -1734,7 +1734,7 @@ SYM_FUNC_END(aesni_gcm_enc_update)
>  */
>  SYM_FUNC_START(aesni_gcm_dec_update)
>         FUNC_SAVE
> -       GCM_ENC_DEC dec
> +       GCM_ENC_DEC DEC
>         FUNC_RESTORE
>         ret
>  SYM_FUNC_END(aesni_gcm_dec_update)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn0EnKnGToVC1Bw5di6ucSFkKNOUko1yekkcVhw5nzXZg%40mail.gmail.com.
