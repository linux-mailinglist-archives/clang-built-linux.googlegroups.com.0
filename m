Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7XM2T2AKGQESNLZETY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A411A723C
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 06:05:20 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id k18sf9691084otr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:05:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586837119; cv=pass;
        d=google.com; s=arc-20160816;
        b=girfHYiWRfDaBe7Bgn7soKkq85dW3ehAA2ax/Fd5gf8hP/Rv01Sd+2qqpmHja3sWaa
         Zk+y+hw+3zgB5Xzct+VVQaJCX2Bbs7yJNPxtWhpsYz5KjnFpMA1r0wonTNbsK2AnGHmh
         oHvzjYWDckGdJP0BFWumBxmluyZlBJzPU4buNKFHgzUBcldvH/QeNnVoJX2AoyFAfRlA
         yEAfy5Xy+woZ1YyLYcibmnKdz4kkrYjNAAPopvO09zNKS2Z1T6b8CSx+HCM1Di2xVcJ5
         nTZCk6d2Hcf4JKmoZbn86SOQNdCjbzqYnVZ5EC+h4NGnxcFZp8X41vHQ5k38szuYcAvB
         FFAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ILEriCMHVHzj1f94/85VhkIql/4vXvGHtv8UFeeSuJ8=;
        b=r1S8z/+j29HAkuQJBp7RwUVNtCOlFpj0JvUOb61OB+pdQyG7IfUv0+TUlqczbTCSrH
         uwuU7VfG8aVMy91UYFd4pUCxV/KoZXcCqa0LpsLUHt25ZeLaIxzMnaCLyIxlNzFBAS1x
         Rfh2s9q7dR4IPO81X03T3BpwncWHgrqkgeilj7kzRSuop7VYxugO56G/LeQtr0eoFl1X
         UX298iiuDjiFHxVF1DmdEg6YEDD5chIyseM7tmwbNQ+oYD0hN7ZemnWd7zM5EUcXeGOi
         dTjhXEHQeS5iWvLykVOW+ziLHJZcfVA7xdWAEqQmOM0m8XpAEbFRN8XhJzVTH4+7ZF0N
         XICQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6BlHTzB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ILEriCMHVHzj1f94/85VhkIql/4vXvGHtv8UFeeSuJ8=;
        b=iFYOEZdOWR/AzsRaZYRyXgGGY/GBwd5pPpsepWoxqXGrx09q8GU6Tf9+yuqnK/Fo0B
         xOBS5UejEMzq23EMamF3CHJs2NNX9zHZ6+WB+GRdSeAQKtzp5t2SEFJ7zeHuO3jR8eIh
         lFAIZleiyRNay6vAI34DZwLOADdbwbNgPLuk8O66/twBlqJJ+pMz5rw4nQeHD+kDmluX
         4AurU4Z+1METd4OGrBwog1UO6pBX7Dr7AlqfP8FvirK6c9LzB89ORezYt+nPPKAMaMNd
         WXB1wsw8FLCvtX8LfEpj0eJi/qxKVLfvg3nbCJb+ytK0Ajxf6Uya2o0GtsbUf/yEl9Ye
         Ak5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ILEriCMHVHzj1f94/85VhkIql/4vXvGHtv8UFeeSuJ8=;
        b=iIu5c5Z2/CECOv8/InuwNBJMlOtUWBnfh+f2S5LyIlgq+JDLvNu1oSW0wiZDW6nXz4
         B7oQS+buA5rLuF7vPHj0T68RMzwk5eh9r8CWlc8eJqzT5oE09UAsBGZuxWTLxovXshSE
         NGWYHvfMir/NObsH3wMmzqT383jIk/RqaxSdUSw0Rzx2nPIE4h1v6S3hSpoJ23Y/vPmu
         tbNwUhAzIQG6Chk+xwILJ8ep+3jM4O26ifF/Bi549Kx/ogAXE0jT6b69XsJ9kMjdCyyg
         yZgIdrAS3RvYwh7qtE1OBQZIG4ttBmsTACcBZBfBQ/0oX20HWSNPv7nR2bxj21vnzxYK
         YYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ILEriCMHVHzj1f94/85VhkIql/4vXvGHtv8UFeeSuJ8=;
        b=oZFZ71wZuogDumulo/fQxRavYT4R0xB95NQTZ+/rd0m6woohJNCwSv5LgVfg2hwaTB
         3OcwXdi/k0p8PflAzDv4vak/jkheVXqxfJIZwstgZTqLZuYCVKG44ifQT+pVpmMXE5Pz
         eWHbz+uAXEdS0w9Sri1L0+Bd56aIJlToYCeHnEPXxvaf/jYWad0v7fLLKPiicHX6FoLH
         Sy/CSRyUE9Jl70IiErNKwjRnvacvnLJT1tL+WLs3vArHlJhJU52r/fJSmGJE0Yy4z0C2
         ez0S6qkS5yWoa7bRaTtyL99Wiyp1q4PfS1JUGRcww/+VBrIGW8K8/xr6oFQGW2SDGvgh
         C3tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua8XWlnFxvBnFI7cR4ig36WTL1W0HwG0P+oISYr7362rt/PdbGK
	ruuTYizG87usHneJqMmjU10=
X-Google-Smtp-Source: APiQypIAdhJDW4FU+3HUerwjkEiO9/8JD3A5445noxGdvaUhXwpjJG1id4JoGktiO5JIOrKzC7Tz5A==
X-Received: by 2002:a9d:3d84:: with SMTP id l4mr16060828otc.351.1586837118843;
        Mon, 13 Apr 2020 21:05:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:467:: with SMTP id 94ls494499otc.11.gmail; Mon, 13 Apr
 2020 21:05:18 -0700 (PDT)
X-Received: by 2002:a05:6830:1201:: with SMTP id r1mr13505396otp.170.1586837118389;
        Mon, 13 Apr 2020 21:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586837118; cv=none;
        d=google.com; s=arc-20160816;
        b=eH+chX3G3gU5blW1EgWlYhAdc9h0zqmS6Ui4Mgk/KaJ6qGoDsmS42vAK/RLr3A4223
         PTFqtvOfNNuP5GV0XH1eYlNO+3nz4BZjniBvbpGF7kFYTqUqLJqDPtZAWSeDOQWOzxoe
         TC932fDu1eMiNYNRisqM0SyTefKxHURrN0MDjDRhM0OR2WNhalPWmtsVGFaJQcgSfcK6
         V1Zgt5AnDNnaoW9hHyCGHO7uU1OSoEeNEiqTcCkAfc6o8tB5o6bHe1+MinLeYtt2A6rP
         g6e5dJhTBX9K+1tWaKQGhuKaGNRAlBHYbi5s+FO6oE9L89inmjmUkAvH0zEfHzP7XL9F
         eokQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Tg2WSh831FNsYBv0b1Z6yZuwq3dfkUIjSqBChy52co4=;
        b=Lp2gaMbFGE8Ruj17rndpGRRT3cxJ0mrWCFsVEa9tyfrDLEn41XQiReKDasWmtIA6rz
         3ltslPXWVbVrJGs3pOO1rPjLz3jD024ZcdcMMvsIRaR9L4gPKK+fS0Zpp/N+QLAdqHgp
         HTGpm0CFFl1FHZsOpo5gncUhbs+DgZoUxF8IWC+D4UVmGb/RjEXAm3ayhm5iWkZPiAW3
         vof7DjXVmZDN5kMGVVhnpNWRecOb1b0Zf3dUDeWQg9q5ITVXzBnB6tSHMNU2wiWqUX4l
         FQuEPQMBXlQiWsLkZoDq3P39bazkQWax/GNH/eE5VmVE+ixW6ecz7yicEBty0txaf0zB
         Alaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a6BlHTzB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z14si533302oid.1.2020.04.13.21.05.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 21:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id x21so3134484oic.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 21:05:18 -0700 (PDT)
X-Received: by 2002:aca:f4c4:: with SMTP id s187mr14254390oih.83.1586837117864;
        Mon, 13 Apr 2020 21:05:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id u199sm5360896oif.25.2020.04.13.21.05.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Apr 2020 21:05:17 -0700 (PDT)
Date: Mon, 13 Apr 2020 21:05:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Gibson <david@gibson.dropbear.id.au>
Cc: Nicholas Piggin <npiggin@gmail.com>, clang-built-linux@googlegroups.com,
	linuxppc-dev@lists.ozlabs.org,
	=?iso-8859-1?Q?C=E9dric?= Le Goater <clg@fr.ibm.com>,
	qemu-ppc@nongnu.org, qemu-devel@nongnu.org
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200414040515.GA22855@ubuntu-s3-xlarge-x86>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
 <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
 <1586597161.xyshvdbjo6.astroid@bobo.none>
 <1586612535.6kk4az03np.astroid@bobo.none>
 <20200414020553.GD48061@umbus.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200414020553.GD48061@umbus.fritz.box>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a6BlHTzB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Apr 14, 2020 at 12:05:53PM +1000, David Gibson wrote:
> On Sat, Apr 11, 2020 at 11:57:23PM +1000, Nicholas Piggin wrote:
> > Nicholas Piggin's on April 11, 2020 7:32 pm:
> > > Nathan Chancellor's on April 11, 2020 10:53 am:
> > >> The tt.config values are needed to reproduce but I did not verify that
> > >> ONLY tt.config was needed. Other than that, no, we are just building
> > >> either pseries_defconfig or powernv_defconfig with those configs and
> > >> letting it boot up with a simple initramfs, which prints the version
> > >> string then shuts the machine down.
> > >> 
> > >> Let me know if you need any more information, cheers!
> > > 
> > > Okay I can reproduce it. Sometimes it eventually recovers after a long
> > > pause, and some keyboard input often helps it along. So that seems like 
> > > it might be a lost interrupt.
> > > 
> > > POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
> > > sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
> > > needed your other config with various other debug options.
> > > 
> > > Thanks for the very good report. I'll let you know what I find.
> > 
> > It looks like a qemu bug. Booting with '-d int' shows the decrementer 
> > simply stops firing at the point of the hang, even though MSR[EE]=1 and 
> > the DEC register is wrapping. Linux appears to be doing the right thing 
> > as far as I can tell (not losing interrupts).
> > 
> > This qemu patch fixes the boot hang for me. I don't know that qemu 
> > really has the right idea of "context synchronizing" as defined in the
> > powerpc architecture -- mtmsrd L=1 is not context synchronizing but that
> > does not mean it can avoid looking at exceptions until the next such
> > event. It looks like the decrementer exception goes high but the
> > execution of mtmsrd L=1 is ignoring it.
> > 
> > Prior to the Linux patch 3282a3da25b you bisected to, interrupt replay
> > code would return with an 'rfi' instruction as part of interrupt return,
> > which probably helped to get things moving along a bit. However it would
> > not be foolproof, and Cedric did say he encountered some mysterious
> > lockups under load with qemu powernv before that patch was merged, so
> > maybe it's the same issue?
> > 
> > Thanks,
> > Nick
> > 
> > The patch is a bit of a hack, but if you can run it and verify it fixes
> > your boot hang would be good.
> 
> So a bug in this handling wouldn't surprise me at all.  However a
> report against QEMU 3.1 isn't particularly useful.
> 
>  * Does the problem occur with current upstream master qemu?

Yes, I can reproduce the hang on 5.0.0-rc2.

>  * Does the problem occur with qemu-2.12 (a pretty widely deployed
>    "stable" qemu, e.g. in RHEL)?

No idea but I would assume so. I might have time later this week to test
but I assume it is kind of irrelevant if it is reproducible at ToT.

> > ---
> > 
> > diff --git a/target/ppc/translate.c b/target/ppc/translate.c
> > index b207fb5386..1d997f5c32 100644
> > --- a/target/ppc/translate.c
> > +++ b/target/ppc/translate.c
> > @@ -4364,12 +4364,21 @@ static void gen_mtmsrd(DisasContext *ctx)
> >      if (ctx->opcode & 0x00010000) {
> >          /* Special form that does not need any synchronisation */
> >          TCGv t0 = tcg_temp_new();
> > +        TCGv t1 = tcg_temp_new();
> >          tcg_gen_andi_tl(t0, cpu_gpr[rS(ctx->opcode)],
> >                          (1 << MSR_RI) | (1 << MSR_EE));
> > -        tcg_gen_andi_tl(cpu_msr, cpu_msr,
> > +        tcg_gen_andi_tl(t1, cpu_msr,
> >                          ~(target_ulong)((1 << MSR_RI) | (1 << MSR_EE)));
> > -        tcg_gen_or_tl(cpu_msr, cpu_msr, t0);
> > +        tcg_gen_or_tl(t1, t1, t0);
> > +
> > +        gen_update_nip(ctx, ctx->base.pc_next);
> > +        gen_helper_store_msr(cpu_env, t1);
> >          tcg_temp_free(t0);
> > +        tcg_temp_free(t1);
> > +        /* Must stop the translation as machine state (may have) changed */
> > +        /* Note that mtmsr is not always defined as context-synchronizing */
> > +        gen_stop_exception(ctx);
> > +
> >      } else {
> >          /*
> >           * XXX: we need to update nip before the store if we enter
> > 
> 
> -- 
> David Gibson			| I'll have my music baroque, and my code
> david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
> 				| _way_ _around_!
> http://www.ozlabs.org/~dgibson

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414040515.GA22855%40ubuntu-s3-xlarge-x86.
