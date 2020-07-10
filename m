Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKG4UD4AKGQEN4JMBFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F33921B1D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 11:00:25 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id s67sf1496011vss.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 02:00:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594371624; cv=pass;
        d=google.com; s=arc-20160816;
        b=bikTjxbXREXvFdij7KUZ+F8zIqWlECH11FIWDg2+r6pChHijDiqlo+oIgpUzIk0QZs
         joVV9oFlsp7qm3i+DfV/5zC+E8QNuYXkj499Qcl4WPwkFoACWiguoeCD5jw7r3M7fPbp
         cmk2nvNCNYsWPsZZwwYM5R4r90ab0jPmlqUehsFhtL5FtCiNJsYjSiKqhDvUKMtk5Ra/
         GG3nYStUGxAKG6dAUcVu4SANN2836/hr5zGBuAa40DaDPGp+C9T4LVKZmrXiIuwEh6NY
         3uP8QtojsmmftcW3mZOyKxqEH/lxJr/amDbu/IWcDml+E/Jt2GXWoEzu73JjnHBa+72p
         USVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RfPke/HoNhhFcNnA0HisIwqsp6/kYxEqt0HEEi1+7lI=;
        b=N09zHCWS9HqqfmZTMSV+1vnWwFwwc5gU+K3DGPM0O2z8EoZGPjK4FNhvMKQOZCgZOE
         i7r8hOsV6jLH5ggAMuWyjdpvjLwVJ42SRG37YGF3SWMro9waC5sNkG4Aswhf/r6NCxUk
         /SozQRlXMdMFnOQZBVHLMnJU6s0rv8+4xvM8luAPl4oP0usDE8XtVChQsASlY1JsbaDK
         Qme/9lte/eE/jYWToKGjdC00tov/7KDuzOzKhjhfZcmt1L2BB9eauNNx4vca9VvsCNVI
         GFQQGoF7mDa9sp1FzkYYosAHxQKAJDVW30p49yv8GGdBalVc5ZufW33oDeEHG48Tn7oV
         njuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K7Cbu9PM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RfPke/HoNhhFcNnA0HisIwqsp6/kYxEqt0HEEi1+7lI=;
        b=gLbhzosJpwNh29l47cWcrCV7sbY2xW4t1xMWOVv1BC+EeD6M0BtYL9Q3IxiL5KDzA0
         2JP7YyBbLbzM0aOXFCMvV9sVSYuRfmMj+IfOx77EOknF/QLqh8Z1H/t8aueVyeGzEhUz
         zudn2T6VI5oytx8HoVbP7K4iISndX+iEjGzLSV4BpwPV7lItPXLYsn56NQxQSAWTxhvN
         NFm7zzM6675kTs+Ckc+tdcn+dNYsY+mnushoZCNTwan2lrsg9IeoankFXawYu66ioclZ
         2D+DRZ1gBiFXovl4MS2A0SrXq2QMAByNjoPPhs4T4Y8ezNenjTWGehly6TlhZPd5/cuB
         c6+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RfPke/HoNhhFcNnA0HisIwqsp6/kYxEqt0HEEi1+7lI=;
        b=d0xSKIsQ4wYu8ZEr1gNpF4A5eZ4Z6hzhlOzmsJ4+oVAomPN8pdc46CW9p14OOG8/Wc
         6CX3Hg4aRvEJQ2xwA6ven1p5pZmzzhMXSxKquO4MjeaBfeA9/CNnq845HQJdseitu8GL
         iCK09T3CLNRiLDYjjmU+GRWVQ6z+LNT/p8T7GoTN9zcWMJryCIJWio9x2QMn5bH2ydSz
         iXrMedPoajlUwNwrMHgYxuBU5tmC3Ee6yvjKOLU8z/mZBW1FIhpl8dN16VFDBPBXSmwx
         ls86mlB/SdHilfE4NHj42cJr2RjAnsX8CKfXKRFZ1/tBWAPQEc31Gb4qSuVx6rGhKD58
         fmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RfPke/HoNhhFcNnA0HisIwqsp6/kYxEqt0HEEi1+7lI=;
        b=ZIcZ/pgNylyatHkHtTF95ZtYGUE3g9ttu4ehSY+xI/jTkLc3zDGWZNxhG+gpY6AERT
         MysXuFOSlxtzVX/XIn5huV9n/b9m/fTL53ECIApsFI1jEVhi947y2/jM6yDiDdjZymhz
         0IZPaOMmgBBv3ODMqixa/kJWn5uFHX+gckLByO4g21oVC89YPedeRkLKKd/hTzSoGnEC
         Dx9pOfS2UfW/siu2KpqTJAmxK+2w1+2XzHEQQs5GEo2Zn1u054r6V+bZvP1t2FISbg60
         SpqMUFlqjN4gpkmVvCOICe0k3uQJndazwO339RixrRW2Yd0x8HifSU5C8q+jZPmbbivj
         27NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IWGazapYMGqTboXFU2ikEgzgFvUIl0ZMPKYX5CqyK4E0nG9rk
	y9HIJGuX0GLEwsUIYjLrx1g=
X-Google-Smtp-Source: ABdhPJzu2APNFIfqVwwdERZIamCgxfaMKfLp8Jv9GKRPoCGJWT5xnbG+bCs4kAvVnWWquodFrZ4VGw==
X-Received: by 2002:a67:d519:: with SMTP id l25mr49501622vsj.176.1594371624508;
        Fri, 10 Jul 2020 02:00:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3117:: with SMTP id x23ls386761vkx.11.gmail; Fri, 10 Jul
 2020 02:00:24 -0700 (PDT)
X-Received: by 2002:a1f:2ed4:: with SMTP id u203mr12893535vku.72.1594371624120;
        Fri, 10 Jul 2020 02:00:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594371624; cv=none;
        d=google.com; s=arc-20160816;
        b=TBdExDH+rPbqVIEot0I7sLtadGBZdxeGPs3U9zoyRDCKEakkz3DPweD0oL0e7cE7vc
         xDwJ7ZvXWLPiUXeAEOEHEndLqbq/CFvC9cio5sUIB0dXbT9F0j6/N8L8LT4gpWcZCTx+
         Iu/pVxQic65YfgeIIsQS/rbhuneVDbXzC9f5HRbqQeZiLUiJMXOZAIc7KbTduKp5YdHQ
         q+Y8WSIPDFgw5oqMi0Id58fknRyvG52iWe4rK/s4me8IxhBZOo6mxb0uhdQrw1AihJlw
         LIfWk5n/ItySCZClgXgEjzUdbtFRfxc5h7kHkrVaRjjYh9E4p1UfqGCbKDafVZqOWINP
         vxIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PQuO5zFgwnJ/fFTSGnuawAYd7hcX4BgBcubdCPScc78=;
        b=hz3i5AABR8cIaIDv6IVBv4uorigg6DW+iGgwbEZATfS4dNNM9jc0utMPjbA77CFYq6
         qXnJUpfsmsyRrCJUf95P1Ifw9V/Mf5UWrF5f/2NFJK/L/jMRQW7Sov3aVq07Kn8D7Kfl
         anOp0tUiZf9Z3DZKELtYSAQaOFU2av1qGx/q5tmPn2DEsm/EyH1gFN7eS264PpLvXQ1y
         7PpIsKb6daGt5mnJnS5jG6OWY9Z89kU+dtnJ009wP7aCg77BrqZSx6JLRGnEc3AjVePo
         q65w8HW3LLncLidxaR3o1UBplObcQDaLNYT1rsYyYsoLJ2Sv0+HOU4l26WukldG9RVqh
         9Wsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K7Cbu9PM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id t13si252363vsn.2.2020.07.10.02.00.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 02:00:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id l1so5280282ioh.5
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 02:00:24 -0700 (PDT)
X-Received: by 2002:a05:6638:2591:: with SMTP id s17mr25749153jat.23.1594371623502;
 Fri, 10 Jul 2020 02:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200703143206.3994-1-sedat.dilek@gmail.com> <20200709125536.GF31057@gondor.apana.org.au>
In-Reply-To: <20200709125536.GF31057@gondor.apana.org.au>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 10 Jul 2020 11:00:11 +0200
Message-ID: <CA+icZUXj4TKEduA5A0fpdvha6E2fV6aZXOZ8BXvD5G4eYBHqsg@mail.gmail.com>
Subject: Re: [PATCH v5] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Craig Topper <craig.topper@intel.com>, 
	Craig Topper <craig.topper@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K7Cbu9PM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 9, 2020 at 2:56 PM Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Fri, Jul 03, 2020 at 04:32:06PM +0200, Sedat Dilek wrote:
> > When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
> > from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
> > I see the following breakage in Debian/testing AMD64:
> >
> > <instantiation>:15:74: error: too many positional arguments
> >  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> >                                                                          ^
> >  arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
> >  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
> >  ^
> > <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
> >  GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
> >  ^
> > arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
> >  GCM_ENC_DEC dec
> >  ^
> > <instantiation>:15:74: error: too many positional arguments
> >  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> >                                                                          ^
> > arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
> >  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
> >  ^
> > <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
> >  GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
> >  ^
> > arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
> >  GCM_ENC_DEC enc
> >
> > Craig Topper suggested me in ClangBuiltLinux issue #1050:
> >
> > > I think the "too many positional arguments" is because the parser isn't able
> > > to handle the trailing commas.
> > >
> > > The "unknown use of instruction mnemonic" is because the macro was named
> > > GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> > > GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> > > macro instantiation, but llvm doesn't.
> >
> > First, I removed the trailing comma in the PRECOMPUTE line.
> >
> > Second, I substituted:
> > 1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
> > 2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc
> >
> > With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.
> >
> > I confirmed that this works with Linux-kernel v5.7.5 final.
> >
> > NOTE: This patch is on top of Linux v5.7 final.
> >
> > Thanks to Craig and especially Nick for double-checking and his comments.
> >
> > Suggested-by: Craig Topper <craig.topper@intel.com>
> > Suggested-by: Craig Topper <craig.topper@gmail.com>
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> > Link: https://bugs.llvm.org/show_bug.cgi?id=24494
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
> > Changes v4->v5:
> > - Drop "5.7" tag from subject line as requested by Herbert Xu
> > - Add Link to LLVM bug #24494 (thanks Nick)
> >
> > Changes v3->v4:
> > - Add <> around email address as desired by Nick
> > - Add Nick's Reviewed-by
> >
> > Changes v2->v3:
> > - Add this Changelog
> >
> > Changes v1->v2:
> > - Replace Cc by Suggested-by for Craig
> > - Replace Cc by Suggested-by for Nick (dropped Cc as desired)
> > - Really follow the suggestions of Craig
> > - Drop unneeded comments for my build-environment and Links
> >
> >  arch/x86/crypto/aesni-intel_asm.S | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
>
> Patch applied.  Thanks.

[ CC Arnd ]

Thanks Herbert.

Last Monday I switched over from Linux v5.7.y to v5.8-rc4 and my patch
applied cleanly - I was able to build and boot on bare metal.

One request :

We (ClangBuiltLinux folks) need at least Arnd's patch (see [1])...

   "x86: crypto: fix building crc32c with clang ias"

...to be full compliant with LLVM_IAS=1.

We had some discussion internally (see [2]-[4]).
Looking at Arnd's patch again: It was also sent to linux-crypto ML
(May 27, 2020, 2:17 p.m. UTC).

If you pick this directly, feel free to add my:

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

If you have any other wishes/requirements, please let me know.

Regards,
- Sedat -

P.S.: If you are interested in the status of LLVM_IAS=1 see [5] - it
needs to be updated to my recent experiments with Linux v5.8-rc4.
P.S.S.: BTW, a recent version of llvm-toolchain v11.0.0-git is full
compliant with LLVM=1 - no GNU/binutils/tools used just LLVM/utilities
(beyond GNU/make) :-).

[1] https://lore.kernel.org/patchwork/patch/1248401/
[2] https://github.com/ClangBuiltLinux/linux/issues/1010
[3] https://github.com/ClangBuiltLinux/linux/issues/1010#issuecomment-653759336
[4] https://github.com/ClangBuiltLinux/linux/issues/1010#issuecomment-656406876
[5] https://github.com/ClangBuiltLinux/linux/issues/1049

ADDENDUM: Demonstrate/show used Clang's integrated assembler (IAS):

$ llvm-dwarfdump-11 arch/x86/crypto/crc32c-intel.o
...
0x0000adc3: DW_TAG_compile_unit
              DW_AT_stmt_list   (0x00000b94)
              DW_AT_ranges      (0x00000040
                 [0x0000000000000350, 0x0000000000001430)
                 [0x0000000000000000, 0x000000000000000a))
              DW_AT_name        ("arch/x86/crypto/crc32c-pcl-intel-asm_64.S")
              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
              DW_AT_producer    ("Debian clang version
11.0.0-++20200701093119+ffee8040534-1~exp1 ")
              DW_AT_language    (DW_LANG_Mips_Assembler)
...
- EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXj4TKEduA5A0fpdvha6E2fV6aZXOZ8BXvD5G4eYBHqsg%40mail.gmail.com.
