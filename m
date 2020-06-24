Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCGEZP3QKGQEE7OIOXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 33050206B99
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 07:18:02 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id r4sf687732ilq.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:18:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592975881; cv=pass;
        d=google.com; s=arc-20160816;
        b=EapmkC7sVjWrjBq8zkUCm/fktEHdD0sqyfagNSl5SjmMrcxBdtjJTa0RPLjCf/Rmif
         akA2kXsFgY+aRrVx+qPJ+Iyu2mLBxXAVFwgSB8LVhNNHMF7QzMsnusuqPuyik8VejUFB
         v95wl5h31wJHvwHEDhSAqgUDhPXeeWLgaZg0A1n85Zmcqoz3fGL2/s5unl51vsSjIg+Q
         ASOr9EfXW+yRkw3giNSYYZNtNRrvSt42mVt0hXc8qFn1qc3c7P1sUMMq8xNaT52Rpea0
         Qm1aIAwjOW9PFNZIfJMgdeALEu1Qrvk7pJqCVfVqnwS/ghmdneNQlPsutXF5vnsQYVex
         M6Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=n1p5b2KMP5UOKxfMBQM4UN+QTJtpAVnz7iTos+rrCt4=;
        b=Hynb594oZcFv4vt3DGAkxwdfoN7WHda50pwwUGM7l76+Q/MYL9hZTEkYiIeS5bN5kr
         sVGRHL9cSDBMXog2Ii5UdvVaBG8JtrFyR8GpWrbjnDAggqpttxXumkkskBzbysk+mn9i
         I6zFb78ecSj2AFPHsbhEtU8fyAtE/X3ZVkQuTfYPGkdkofneYH7cHDCBjzzmc/ogXnt1
         VmsAQkJwUBGwMnIwMWn/nhzZVgqhJT70iaGeOUdI9Kbf/sPcAqi5z/1+BodpFtqLFEzf
         7dvKm1IlEU6EVVgF45p3J4YT2Oubp5k05SaBIedgrqQ6Uc4+eSuCW6otsE16XJljyJoh
         NDhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bpwv6Wfi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n1p5b2KMP5UOKxfMBQM4UN+QTJtpAVnz7iTos+rrCt4=;
        b=nWcSQuffy2PX4ogUtUzCpijLUIcVatRT+xuIVOnL2U0aI/YpuUPdFSmMzEIajD6c07
         MfriAE96wuLZpSEWpVu+G/CU28+CVYkOW5i/iW9QaUA7McCTVJF4i6WusO2PN+DSc4iv
         pe5rIkflgS+A8gty4FFIR0uKVDamMiMjeT1YdOVtWki9CJazw5oUwG6fR0DrWcTIFBBk
         QBqR+L/JZK15595Toib2bR9vMlGY1jYFbhaR0X0eeKrBxpMZesj/GeiXIUgfGxyaJkDw
         UOxE9QSpSl9lZ/Gazb/r2QEt5+yjB6OxT7LHFUvRDHA78EK8taxqhaGXYSBmqnSOiBv5
         7I5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1p5b2KMP5UOKxfMBQM4UN+QTJtpAVnz7iTos+rrCt4=;
        b=lVBhc7eW3rugnpHNP87hCMQtoYL6FKzQP5Qc76SIwnacv/JGkE0zy4PogWqBtY7LNy
         s+wpLILEmhkFl1m9yvNehPgp4qIQdxt2ATrTukIeMsRKifYWCr29f+V2HbLDfsivcEkt
         0arFj80MWqDpb7tle8LPtZ1GAtjcOg4Myq+q8aHKx3jy40wYzVkW8UubJJ0WrWXXVpBg
         tio/fwigNiFzRR70YlshDLbBuaocM7rXUJ0kLWBLevDvGcP3rNzxnNHitm14JiY3lAM8
         V3iriVyUBIDgFPofTcoYJodnVdlx7FvfrStHqwW7v/NWKZ4tmf4IdC0gtGPSHIO+c3dp
         haEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1p5b2KMP5UOKxfMBQM4UN+QTJtpAVnz7iTos+rrCt4=;
        b=DL7acCd/VS7URb5azhdXI5ejYh8D9gQv41D12u5y4HMOz+xr3BH1fto7LCD9UFU3xX
         CePun3eL4MO+LHEE3GLxC9UncW/wOV7IMf+7cm5shJAlGBY4j1aJzEFtM+g7qjZZBAoH
         yNyTo3IGrSPwaIGIx9B2tl41o3PXRW093fNIjiudDuxu0f65mr/pVUC0GAu0jMFAU8OB
         3NfIMF7FdJTxelAoBrDpKfs10WxAl715WETlagxUWQWmm8UMJV0G2LDGyZlA5k5R6xBi
         C5ZD3ktCQhcLPe/uufA8q34sS3Ne0MXog9EzLVEl3U4THPrs0WydbtW1JNqL4LlhV2Gr
         eTWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323XTnfDRjn3SWqw/NiWxS1L7ajNrcmMk7X5AEhtBV7qAQlUMm2
	rpKUnQ9XOwYliOOaD1u+En0=
X-Google-Smtp-Source: ABdhPJxZJvGAPnN4BwgoYwMhdIwNi+B51Sa0T0q6gL2LOZyAygfP6IBZT1p2TKFVUMEGmcVwHhQu+A==
X-Received: by 2002:a92:6b05:: with SMTP id g5mr25478707ilc.120.1592975880972;
        Tue, 23 Jun 2020 22:18:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4d:: with SMTP id w74ls273375ili.6.gmail; Tue, 23 Jun
 2020 22:18:00 -0700 (PDT)
X-Received: by 2002:a92:7792:: with SMTP id s140mr16932212ilc.66.1592975880581;
        Tue, 23 Jun 2020 22:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592975880; cv=none;
        d=google.com; s=arc-20160816;
        b=vvBy0opWoMGNxxaR9+YXzSymshdgim2rLn0YxagB0WQC3Nk/WVLyc/hICv0bGv+kpS
         BDxRJIbx4Yjp7xuaTcvqQv/7k3GgyBvixf0DCcZatiS4ctQBuGj4yovF5IHSv6Auzw8v
         CDHYI3xedwr9oDEAVDjW4+i+L9FIQbgn+uZBePFdcFuurF+IWIox53hMxp1ufvud8Zdp
         0U5Z4f5zhodPHiiOqwiPvfX6cELxqX6912sgv+9lEBWiFr/5QMOuE2lYlsloIl8QfvV8
         rKmnA2AatcqRhH0HobL/IeDXlurVacD3D2EPpdxgI4Tdio1YTOESlocWw4AzpVz9s402
         SrmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Dvrm0jt0eeOGBRaaXN4jnIZFCH1twjn8iR3FCC+o0QI=;
        b=fBwhTYyOynTmD6Ki1FvLd8ksVJ6lbzK1b1V3ih3Ps2iK8L4mwm2fyxnXfdLzlhSP+U
         IeawwXBjqTwwtfzB3Ly+4BFN/EFImKB4uDQh5KFvBVd6/EPbbV+F1CH2+9NKemPVwQyx
         GsVsq3TDc5DUj4mRoxZmqYdhrFgFFRdl+smk2merH5qYHYumyNyvkEpAFsZcdgrXRl2V
         PDrv1bZ1CK/FH9W/5U6aFugLCjRQZiGsUtP0mwe/YNpg+f9CeO5ETe9zr0WVD/f/iAKQ
         u7R4AbpvRq+wv1ggZYIAAtGzIe1OI5ekUTGMgAhw9nG5yhJB6esdIEoSRcqwsh7yvEXq
         r79g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bpwv6Wfi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id c7si1119025ilf.2.2020.06.23.22.18.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 22:18:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id w9so899284ilk.13
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 22:18:00 -0700 (PDT)
X-Received: by 2002:a92:940f:: with SMTP id c15mr27539274ili.204.1592975880267;
 Tue, 23 Jun 2020 22:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200623025628.18467-1-sedat.dilek@gmail.com> <CAKwvOdmR10E2uzKnq2Jt0DSw9+3uvjSfqidxppCoYmhNZPLx5Q@mail.gmail.com>
In-Reply-To: <CAKwvOdmR10E2uzKnq2Jt0DSw9+3uvjSfqidxppCoYmhNZPLx5Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Jun 2020 07:17:56 +0200
Message-ID: <CA+icZUVPpHcZainwq0ZpgWeuagCo1JWdM7+6TakOudeHXhBgmQ@mail.gmail.com>
Subject: Re: [PATCH 5.7 v2] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Craig Topper <craig.topper@intel.com>, 
	Craig Topper <craig.topper@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bpwv6Wfi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
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

On Tue, Jun 23, 2020 at 8:44 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 22, 2020 at 7:56 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
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
>
> Thanks for the note, still applies cleanly on top of linux-next today for me.
>
> >
> > Thanks to Craig and especially Nick for double-checking and his comments.
> >
> > Suggested-by: Craig Topper <craig.topper@intel.com>
> > Suggested-by: Craig Topper <craig.topper@gmail.com>
> > Suggested-by: Nick Desaulniers ndesaulniers@google.com
>
> ^ oh, may have missed <> around email addr.
>
> > Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Following the same testing methodology from V1
> (https://lore.kernel.org/patchwork/comment/1456822/) I verified for
> GCC+GAS this is no functional change.
>
> $ wget https://lore.kernel.org/patchwork/patch/1261340/mbox/ -O sedat_v3.patch
> $ git am sedat_v3.patch
> $ make -j71 arch/x86/crypto/aesni-intel_asm.o
> $ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > postpatch_v3.txt
> $ diff -u <(cat prepatch.txt | tr -s ' ' | cut -d '    ' -f 2-) <(cat
> postpatch_v3.txt| tr -s ' ' | cut -d '   ' -f 2-) | less
> (no output)
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>

Thanks a lot for your feedback.

I have sent a v4 with corrected email-address and your Reviewed-by.

- Sedat -

[1] https://lore.kernel.org/patchwork/patch/1263102/
[2] https://lore.kernel.org/lkml/20200624051538.5355-1-sedat.dilek@gmail.com/

> > ---
> >  arch/x86/crypto/aesni-intel_asm.S | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
> > index cad6e1bfa7d5..c216de287742 100644
> > --- a/arch/x86/crypto/aesni-intel_asm.S
> > +++ b/arch/x86/crypto/aesni-intel_asm.S
> > @@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
> >         PSHUFB_XMM %xmm2, %xmm0
> >         movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
> >
> > -       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> > +       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
> >         movdqu HashKey(%arg2), %xmm13
> >
> >         CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
> > @@ -978,7 +978,7 @@ _initial_blocks_done\@:
> >  * arg1, %arg3, %arg4 are used as pointers only, not modified
> >  * %r11 is the data offset value
> >  */
> > -.macro GHASH_4_ENCRYPT_4_PARALLEL_ENC TMP1 TMP2 TMP3 TMP4 TMP5 \
> > +.macro GHASH_4_ENCRYPT_4_PARALLEL_enc TMP1 TMP2 TMP3 TMP4 TMP5 \
> >  TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
> >
> >         movdqa    \XMM1, \XMM5
> > @@ -1186,7 +1186,7 @@ aes_loop_par_enc_done\@:
> >  * arg1, %arg3, %arg4 are used as pointers only, not modified
> >  * %r11 is the data offset value
> >  */
> > -.macro GHASH_4_ENCRYPT_4_PARALLEL_DEC TMP1 TMP2 TMP3 TMP4 TMP5 \
> > +.macro GHASH_4_ENCRYPT_4_PARALLEL_dec TMP1 TMP2 TMP3 TMP4 TMP5 \
> >  TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
> >
> >         movdqa    \XMM1, \XMM5
> > --
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVPpHcZainwq0ZpgWeuagCo1JWdM7%2B6TakOudeHXhBgmQ%40mail.gmail.com.
