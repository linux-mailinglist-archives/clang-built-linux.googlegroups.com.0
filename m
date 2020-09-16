Return-Path: <clang-built-linux+bncBD63HSEZTUIBBNOKQ35QKGQEMNSEHTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25C26BBE8
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 07:40:07 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id a16sf5208484qtj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:40:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600234806; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMt8soo3sCBgn8FuCeqA6gummQb8A7LNeMBeTMTE++MeX/cV5UgiJpnbrYe3Cy6evU
         d8Whd3T+4Ul/QySFNlsOgOQsUurcqa5RF++Lp+AkttDe8kbWBrzfAXGIt6r8num82BOf
         ZrkytY7GsEiiFJqDg/k7gHUj84YhDnkICbdS2qdgIa5vp6zYVibXQp50BiLyoL1fZt/v
         LpSyfR2Nq0cnnqYisguv+X3qo/iMM/WPTruPGIuucAy3h5sH8hPTuSQxhUOKUMeDFxyM
         EhPqpQDkBPKYTXfyaMwG1+wAK380Vt0Sx5qsQSnMSDxmNtufnIbVwO8g35fyDdayYiv1
         6p4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JRHOTCDRuwGq0uwgyZLtbbo0vnAK/KEXtn64QsBNs4c=;
        b=K6xYEWFy0W9gscMUYjpiNW2MkbtGzRYGy6GGFSUKEf9j68fDTRczidcMBViHFWw1hm
         5rNGCSz7gSGntX9mw5PEm2BkYksSccAN48xwYVjBikW/p2GzdUruaH95caxrYztlgnM7
         FiWLmgahyTb7KzRDeimnZ2JTw22zu2rekDC57IMS0+VwNN+dhu4f7e74aJAAil+Y6Y5A
         6MBrRZU0Bk+oB/FbD9yI0t/3ZZudHgdSbVpVopFHenN6kI5oVZMUdL1VWCZCZSLia/FR
         Ga4Vs1i+FXfa6yIOJzgH+2FA5/KQrKJkFGTMLrfAkQX9lnCzzdCLu5+KaHt6RFTBEkIv
         Pjuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bDCmqOKN;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JRHOTCDRuwGq0uwgyZLtbbo0vnAK/KEXtn64QsBNs4c=;
        b=SrnQ2ONthDmnJ4LLnx7KmDpOfzrleDvCxF6SB/YT6L+K0ZXe9xrikB7WBurdgDaAnh
         JeTuyjriaStbLR/7c75IuuZp+HUHPemEmd4RyCwOT9r7dqMDUfef+LeF+37/Cz4C8/ZP
         ROrPgOKxTYOp9XQXmRbDynWJlB12Xq6YG2MwD2jd3v6+ZoSrAcEjgyy4GHETyuXmTg1t
         MoBCvkeMCUF65vBPGzMv/QjQR0XtLCTQDJirmlccasQAEiyLAAKRD/MeURKDJe56eRhm
         segXjmUMkikv2Uv9SNWzg3SO7sghdFOeI4cskPjhwN6AWreksU2Jx2+67rOtW9+5+3cv
         G/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JRHOTCDRuwGq0uwgyZLtbbo0vnAK/KEXtn64QsBNs4c=;
        b=cApmD95MwDQN0NkdjD6E0ozpfRli9e1iSXJ3di8uVLrLMXDfmZko2rH+h1yMecvxAC
         wopQIDsy77VvGjITZCVZZ54AYId8tozAVjA/b2MjxQlTokk4BWIdMrd/6LcNBwZcX/KE
         Vk6fSN/mpNqFhqHFG4PYn835R75MgCunzIuABUt6f2MrOWEF6FlJctJhw7+NOq1DNqPT
         E6MKp4Z6Slk1KKBJk3ZQEgcuKJ0bpDToOB8ewwod3uOxHMFSIvUByO5Kn3CQD4UgzK/x
         +oMbI7mfQlB8isJ68RH/mgWrfQTA87Af1QqNRrk/NnTWLAzJhwRbbvzVk1jgZnaGBFao
         SnkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/n1C2SBgFQZCF79zziNdSlUHkkw9hCFvlMpXOXtmqGbAByKJw
	GsT5wmBKrSYKds7qFwuqDuY=
X-Google-Smtp-Source: ABdhPJzpcKqbhc6gJOhpTf0yIow3SO0kUicMaXaCr+RatYkRQ0hpqjZvDVYqcjpMiIpGM1WmTfA4ww==
X-Received: by 2002:ac8:33ec:: with SMTP id d41mr21812059qtb.390.1600234805721;
        Tue, 15 Sep 2020 22:40:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:48c2:: with SMTP id v2ls204938qvx.4.gmail; Tue, 15 Sep
 2020 22:40:05 -0700 (PDT)
X-Received: by 2002:a05:6214:1767:: with SMTP id et7mr5110864qvb.43.1600234805316;
        Tue, 15 Sep 2020 22:40:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600234805; cv=none;
        d=google.com; s=arc-20160816;
        b=zJRZEKouYKcSAKy4G7hU0rc4wXkquhOdBiEAkt2Y88BZHIWiP7mMGmqo075b0E1fWG
         S4baJgefdTW/nB1Bkde1WWJ3XR0QyFjowKI2PHm+ZkBvwSxkfUfMvXEPUlq4mIYGzZqB
         PboghFdGM/PsS8lEHrM+NjPLqLq0l76PkRmyjZKbgV9lfDSZ+yR5NOdqlO5GkUK+Pwxj
         ZerPXY3tKUX7p4hGNPtjZCOw3Z2lVfjeJLR2BjkmBzTvPgkw818LEF6weBBC+LbxxfGd
         fsrcu7iGGl2jMmmmt1hLMHQjOj2bD6tY/3kUPGaMp+iHme7RgHelCJL3HI3bWgOxEjgo
         misA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qoP1mgAqFwPSlNkLHLt8bVNJi4BCXBXGbz/TyYKqUIw=;
        b=DNwOmV4KMGNanohCVCZQyMAePK5WpTOl5rbGnpLLsQHkBIZssIH6ySRxSd6BavcZeH
         bo8NO8eRFsT0zKky1pAMpKYts9qPELifBurk/Lv4Ydj7GgAPcTtXFiRpUFNXXUf9UrYh
         nfqKeMS8tniP4413e7HOpVRE6PrtQ+Ym46WCY7tTIfEDaRjKzMYc/1cRN/+7TLwiIBlM
         DReDjAcJaHq4Issmu4GgxkYdvqYlClwZDHoVktaucTIBqfjUpWQlO28gASPB9T82kWT/
         YjQGTuVcrVxKc6TZMBC5k4nUvTkDCuiv+uQByNfiqSedc2am1QMRjKf6EySMp/lD42y9
         aunw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bDCmqOKN;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si936724qtp.0.2020.09.15.22.40.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 22:40:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 144E3221E3
	for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 05:40:04 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id u25so5555755otq.6
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 22:40:04 -0700 (PDT)
X-Received: by 2002:a9d:6193:: with SMTP id g19mr14914184otk.108.1600234803396;
 Tue, 15 Sep 2020 22:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200915094619.32548-1-ardb@kernel.org> <CAKwvOdn90vs-K4gyi47nJOuwc_g0r3p_ytc9ChPEmunCQ1186w@mail.gmail.com>
 <CAMj1kXFtm4Ue0=6qBaKO73Ft1PmKC52chJrbaA8nRLsV5m807g@mail.gmail.com> <CAKwvOd=n6Ny-8UfrVTWqa07g6=9Q_N_ou4f9DkFGwhFFvdtWPw@mail.gmail.com>
In-Reply-To: <CAKwvOd=n6Ny-8UfrVTWqa07g6=9Q_N_ou4f9DkFGwhFFvdtWPw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 16 Sep 2020 08:39:51 +0300
X-Gmail-Original-Message-ID: <CAMj1kXHWXzmJTJnbXyNYynJSGnXUU0ucv=sqK6zL3tGPs5-86Q@mail.gmail.com>
Message-ID: <CAMj1kXHWXzmJTJnbXyNYynJSGnXUU0ucv=sqK6zL3tGPs5-86Q@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/sha256-neon - avoid ADRL pseudo instruction
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Jian Cai <jiancai@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bDCmqOKN;       spf=pass
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

On Wed, 16 Sep 2020 at 02:55, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 2:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 15 Sep 2020 at 21:50, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Sep 15, 2020 at 2:46 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > The ADRL pseudo instruction is not an architectural construct, but a
> > > > convenience macro that was supported by the ARM proprietary assembler
> > > > and adopted by binutils GAS as well, but only when assembling in 32-bit
> > > > ARM mode. Therefore, it can only be used in assembler code that is known
> > > > to assemble in ARM mode only, but as it turns out, the Clang assembler
> > > > does not implement ADRL at all, and so it is better to get rid of it
> > > > entirely.
> > > >
> > > > So replace the ADRL instruction with a ADR instruction that refers to
> > > > a nearer symbol, and apply the delta explicitly using an additional
> > > > instruction.
> > > >
> > > > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > > > Cc: Stefan Agner <stefan@agner.ch>
> > > > Cc: Peter Smith <Peter.Smith@arm.com>
> > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > ---
> > > > I will leave it to the Clang folks to decide whether this needs to be
> > > > backported and how far, but a Cc stable seems reasonable here.
> > > >
> > > >  arch/arm/crypto/sha256-armv4.pl       | 4 ++--
> > > >  arch/arm/crypto/sha256-core.S_shipped | 4 ++--
> > > >  2 files changed, 4 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/arch/arm/crypto/sha256-armv4.pl b/arch/arm/crypto/sha256-armv4.pl
> > > > index 9f96ff48e4a8..8aeb2e82f915 100644
> > > > --- a/arch/arm/crypto/sha256-armv4.pl
> > > > +++ b/arch/arm/crypto/sha256-armv4.pl
> > > > @@ -175,7 +175,6 @@ $code=<<___;
> > > >  #else
> > > >  .syntax unified
> > > >  # ifdef __thumb2__
> > > > -#  define adrl adr
> > > >  .thumb
> > > >  # else
> > > >  .code   32
> > > > @@ -471,7 +470,8 @@ sha256_block_data_order_neon:
> > > >         stmdb   sp!,{r4-r12,lr}
> > > >
> > > >         sub     $H,sp,#16*4+16
> > > > -       adrl    $Ktbl,K256
> > > > +       adr     $Ktbl,.Lsha256_block_data_order
> > > > +       add     $Ktbl,$Ktbl,#K256-.Lsha256_block_data_order
> > > >         bic     $H,$H,#15               @ align for 128-bit stores
> > > >         mov     $t2,sp
> > > >         mov     sp,$H                   @ alloca
> > > > diff --git a/arch/arm/crypto/sha256-core.S_shipped b/arch/arm/crypto/sha256-core.S_shipped
> > > > index ea04b2ab0c33..1861c4e8a5ba 100644
> > > > --- a/arch/arm/crypto/sha256-core.S_shipped
> > > > +++ b/arch/arm/crypto/sha256-core.S_shipped
> > > > @@ -56,7 +56,6 @@
> > > >  #else
> > > >  .syntax unified
> > > >  # ifdef __thumb2__
> > > > -#  define adrl adr
> > > >  .thumb
> > > >  # else
> > > >  .code   32
> > > > @@ -1885,7 +1884,8 @@ sha256_block_data_order_neon:
> > > >         stmdb   sp!,{r4-r12,lr}
> > > >
> > > >         sub     r11,sp,#16*4+16
> > > > -       adrl    r14,K256
> > > > +       adr     r14,.Lsha256_block_data_order
> > > > +       add     r14,r14,#K256-.Lsha256_block_data_order
> > >
> > > Hi Ard,
> > > Thanks for the patch.  With this patch applied:
> > >
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1
> > > -j71 defconfig
> > > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1 -j71
> > > ...
> > > arch/arm/crypto/sha256-core.S:2038:2: error: out of range immediate fixup value
> > >  add r14,r14,#K256-.Lsha256_block_data_order
> > >  ^
> > >
> > > :(
> > >
> >
> > Strange. Could you change it to
> >
> > sub r14,r14,#.Lsha256_block_data_order-K256
> >
> > and try again?
> >
> > If that does work, it means the Clang assembler does not update the
> > instruction type for negative addends (add to sub in this case), which
> > would be unfortunate, since it would be another functionality gap.
>
> Works.  Can you describe the expected functionality a bit more, so we
> can come up with a bug report/test case?  (an `add` with a negative
> operand should be converted to a `sub` with a positive operand, IIUC?)
>

That is it, really. Not sure if this is laid out in a spec anywhere,
although the ELF psABI for ARM covers some similar territory when it
comes to turning add into sub instructions and vice versa, as well as
manipulating the U bit of LDR instructions.

> Also, there's a similar adrl in arch/arm/crypto/sha512-core.S, err, is
> that generated?

Indeed. I missed that one as it has been removed from the upstream
OpenSSL version, but I'll add a fix there as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHWXzmJTJnbXyNYynJSGnXUU0ucv%3DsqK6zL3tGPs5-86Q%40mail.gmail.com.
