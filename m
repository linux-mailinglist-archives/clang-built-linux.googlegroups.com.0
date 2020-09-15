Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCNJQX5QKGQEV76FLRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C8B26B600
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:55:54 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id f12sf2182672plj.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600214153; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDgR5Pejmc72Wy3Qh2+XsexZrfq1rqlqz5t5QLhPU1FXySHzqhyNbfOIH8KIUpwbY1
         JBkx1v67mEe1TXQ88VIhk+uKPYcQbBasOVH9mT7xsHrjfpxfBHkSolkyS4ZVfVxdPHwZ
         MCsutGzpbEfLI6G7C+J+rHIbUMezp8GpA4ZyEga/95m3YThUbwl7f5fiz3rtaCUPPBS0
         4KuauB/CQWyfgio+t6OKq7TcqWrCn3P0M2NaRbsxF4sfjuDBkc+TmKIxHv1ccZXl5DEs
         H/uSx8OEhXZX82rlp3qTXrM7hjuYB4nYU4s4y51duC1Jo9sHwfeJ5HMDE9QsiqJJ0uEL
         9mnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+VSJxn6yO6oATyIAH9gpboT35koZN0agJMIkYKCXn20=;
        b=0kUWLtqJWS2GA3i1bkedciTpRLvLHftSKDrubbFmClfFikfccL0rHBU2Pvc8TumYCe
         rkOSal+Xjr+cz4m740/j6JPM+NSsUY2lahA6mIVuY3wXtdMS0gNMve41dlOjFHS6Ivph
         q/9/Fh6v47vsr11xcF1epbXCTab0/zV+IfWD5pfiLWnlq5JPgeRhDTEkr4FtqOdxyY0i
         MumUNhIohQ4XS4yBFm4UFX67edsAZHCBwcsa1K9o4ILZv70s6A2/V4f8WucltNgVid/S
         X/P0Ecur/eaXpD+b2sL/dzmHO3KuJtQyjBUB8h8eWtuji9M5GWfHMB0JlGGDEqDaSva1
         yRBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csWN6xgF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+VSJxn6yO6oATyIAH9gpboT35koZN0agJMIkYKCXn20=;
        b=VW7HWhieuT1i/7WodwZqFULI0Fr2ElwmZDPKXKLcuiFYMwPCShSvry6N0gY3NmIYJ1
         LsbQXM0MheO61uTHMT6ZmUbeL0BBxS859oybVqssp0zTwFcykQm4EScynmBFVw9juHFH
         hN+HH7emD7rW+ctVeb4cTucZcy81cBKz3II72NDjRm0QUuruyvc+NzXm2nF+J4AzbMRa
         41q3PYd3vn0EC7e9ogisMHR3DprDFACvceY38Yus95MHaEaMUYgHDqhE1RV6vqzkdnr5
         O6YtvDeJdd7aGalJkVlsf66MUpMHuXAsFKwoES/lUBlUvcDP8nOw9WJkPA0q8PJfMa0J
         HUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+VSJxn6yO6oATyIAH9gpboT35koZN0agJMIkYKCXn20=;
        b=C9CQeknh/qm8JRECWJG49C2yzDsmTxAh+QiTxDZ58plY5xXBJ8iHjkPidnoGHD2oXC
         hQ693JDUTKmU2laxwCpr1rqzhtFv8XB6tF30hh1Cy6J36K7sogY6hQ2Uyup+vF3OIV65
         dXxnA+k4pBUeq9R8brwH0ptGtxdND+rMwkcal9JXB5F8zt5r2DquMpq5VAQvaOqagFRx
         py0eodJCtm7s5RwqWMZ4zUbZWMwxwLMY9P6myqtHtZYTlA1oJmxmoz6++Aaal82U4Bmw
         2dNBWDJhG/eXof2AQrRPyME7mdMqERh2XYxNrmN3MFJ/qHU+NGXMu2paU4vjHHhe/fXL
         L42w==
X-Gm-Message-State: AOAM530ExrPLvpvgoeu78GtMBeR+D7IrGlGjbJaZsyt04GRWxjoabAdM
	4rCmN54c8pM3iSwLT4yvMxY=
X-Google-Smtp-Source: ABdhPJwlruUHdJh4U/uKZogZ0hk3JvnAUHjpcZqGml2dvJMjaKv9MeKKhKjLLoe/QfajxxXcvW995w==
X-Received: by 2002:aa7:9edb:0:b029:13e:d13d:a059 with SMTP id r27-20020aa79edb0000b029013ed13da059mr20561036pfq.31.1600214153477;
        Tue, 15 Sep 2020 16:55:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls175309pjy.2.gmail; Tue, 15
 Sep 2020 16:55:52 -0700 (PDT)
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr1650135pjy.178.1600214152847;
        Tue, 15 Sep 2020 16:55:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600214152; cv=none;
        d=google.com; s=arc-20160816;
        b=FhalLF7qU/tdscjYHCs/nVMaCuvUmNL0YikmQfVsdug4cRy46uGyHcXw/PeKhqd/ox
         gYmjXKTXerG5qbj/e1pshs/HZpV3eHTTI9aCYWZgoWCDgylkHJ5ZEDEgwNP1v5KYrhCN
         EIsnCVutiK3wmSBPEoKKx+7fklc3fqGIGBV8GdyyswNMjOtHAul1gJtlLPepU0aIf4UU
         Dj8uTg/JPxUpAlzxu4JXpKA6sXnyBHTV5MkmtI+O+zpTkU1O+ICuchNB1yXSw4Wt2+EH
         2+BnZHO78zMukSGesTJCx6vejhSiKUlBv1BO1o+PBiQAu8v/Y7CPxMKOE1W2itoZIy0F
         DMnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sn/Sypno4GfL9IE1y53yEPFfiB756BHa96VhDjyiPXk=;
        b=qKRRJjWYGYv3rjsuxRZN4vCnqzA2SzibV3mikuXQTjVvE0QTDcuTu3rMeNWzSD2AgX
         /YJ0UdYr5PHvpwn2/fZsdSzOzcVwTzL7/U8DnE3Da4NdrPHpc5DZkCTyC25ChbGXyfCB
         j69nMI4YS6Fk2gq66cHlbM46AGtLOdxUoBRBsPnWqel1arw4nFJgtoveKmzR0qZdfOvR
         wcCtSLAe6WHk6Yu3+Kr92C1SsdEAHiArFvq4zC1jk2MuIDztmZ8zFm7Lyu09ksgi1bvD
         ixP7/5/ISldnH7bsX7Wwa/Eb69W6snKjEVPL0BgUOpCTjtUkGwWfqGpITtj9S8TGfXa0
         Cu3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=csWN6xgF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a199si1040672pfd.1.2020.09.15.16.55.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:55:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id f1so2181623plo.13
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:55:52 -0700 (PDT)
X-Received: by 2002:a17:902:a504:b029:d1:e5e7:bdd8 with SMTP id
 s4-20020a170902a504b02900d1e5e7bdd8mr3735678plq.56.1600214152341; Tue, 15 Sep
 2020 16:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200915094619.32548-1-ardb@kernel.org> <CAKwvOdn90vs-K4gyi47nJOuwc_g0r3p_ytc9ChPEmunCQ1186w@mail.gmail.com>
 <CAMj1kXFtm4Ue0=6qBaKO73Ft1PmKC52chJrbaA8nRLsV5m807g@mail.gmail.com>
In-Reply-To: <CAMj1kXFtm4Ue0=6qBaKO73Ft1PmKC52chJrbaA8nRLsV5m807g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 16:55:40 -0700
Message-ID: <CAKwvOd=n6Ny-8UfrVTWqa07g6=9Q_N_ou4f9DkFGwhFFvdtWPw@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/sha256-neon - avoid ADRL pseudo instruction
To: Ard Biesheuvel <ardb@kernel.org>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Jian Cai <jiancai@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=csWN6xgF;       spf=pass
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

On Tue, Sep 15, 2020 at 2:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 15 Sep 2020 at 21:50, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Tue, Sep 15, 2020 at 2:46 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > The ADRL pseudo instruction is not an architectural construct, but a
> > > convenience macro that was supported by the ARM proprietary assembler
> > > and adopted by binutils GAS as well, but only when assembling in 32-bit
> > > ARM mode. Therefore, it can only be used in assembler code that is known
> > > to assemble in ARM mode only, but as it turns out, the Clang assembler
> > > does not implement ADRL at all, and so it is better to get rid of it
> > > entirely.
> > >
> > > So replace the ADRL instruction with a ADR instruction that refers to
> > > a nearer symbol, and apply the delta explicitly using an additional
> > > instruction.
> > >
> > > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > Cc: Stefan Agner <stefan@agner.ch>
> > > Cc: Peter Smith <Peter.Smith@arm.com>
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > > I will leave it to the Clang folks to decide whether this needs to be
> > > backported and how far, but a Cc stable seems reasonable here.
> > >
> > >  arch/arm/crypto/sha256-armv4.pl       | 4 ++--
> > >  arch/arm/crypto/sha256-core.S_shipped | 4 ++--
> > >  2 files changed, 4 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/arch/arm/crypto/sha256-armv4.pl b/arch/arm/crypto/sha256-armv4.pl
> > > index 9f96ff48e4a8..8aeb2e82f915 100644
> > > --- a/arch/arm/crypto/sha256-armv4.pl
> > > +++ b/arch/arm/crypto/sha256-armv4.pl
> > > @@ -175,7 +175,6 @@ $code=<<___;
> > >  #else
> > >  .syntax unified
> > >  # ifdef __thumb2__
> > > -#  define adrl adr
> > >  .thumb
> > >  # else
> > >  .code   32
> > > @@ -471,7 +470,8 @@ sha256_block_data_order_neon:
> > >         stmdb   sp!,{r4-r12,lr}
> > >
> > >         sub     $H,sp,#16*4+16
> > > -       adrl    $Ktbl,K256
> > > +       adr     $Ktbl,.Lsha256_block_data_order
> > > +       add     $Ktbl,$Ktbl,#K256-.Lsha256_block_data_order
> > >         bic     $H,$H,#15               @ align for 128-bit stores
> > >         mov     $t2,sp
> > >         mov     sp,$H                   @ alloca
> > > diff --git a/arch/arm/crypto/sha256-core.S_shipped b/arch/arm/crypto/sha256-core.S_shipped
> > > index ea04b2ab0c33..1861c4e8a5ba 100644
> > > --- a/arch/arm/crypto/sha256-core.S_shipped
> > > +++ b/arch/arm/crypto/sha256-core.S_shipped
> > > @@ -56,7 +56,6 @@
> > >  #else
> > >  .syntax unified
> > >  # ifdef __thumb2__
> > > -#  define adrl adr
> > >  .thumb
> > >  # else
> > >  .code   32
> > > @@ -1885,7 +1884,8 @@ sha256_block_data_order_neon:
> > >         stmdb   sp!,{r4-r12,lr}
> > >
> > >         sub     r11,sp,#16*4+16
> > > -       adrl    r14,K256
> > > +       adr     r14,.Lsha256_block_data_order
> > > +       add     r14,r14,#K256-.Lsha256_block_data_order
> >
> > Hi Ard,
> > Thanks for the patch.  With this patch applied:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1
> > -j71 defconfig
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1 -j71
> > ...
> > arch/arm/crypto/sha256-core.S:2038:2: error: out of range immediate fixup value
> >  add r14,r14,#K256-.Lsha256_block_data_order
> >  ^
> >
> > :(
> >
>
> Strange. Could you change it to
>
> sub r14,r14,#.Lsha256_block_data_order-K256
>
> and try again?
>
> If that does work, it means the Clang assembler does not update the
> instruction type for negative addends (add to sub in this case), which
> would be unfortunate, since it would be another functionality gap.

Works.  Can you describe the expected functionality a bit more, so we
can come up with a bug report/test case?  (an `add` with a negative
operand should be converted to a `sub` with a positive operand, IIUC?)

Also, there's a similar adrl in arch/arm/crypto/sha512-core.S, err, is
that generated?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dn6Ny-8UfrVTWqa07g6%3D9Q_N_ou4f9DkFGwhFFvdtWPw%40mail.gmail.com.
