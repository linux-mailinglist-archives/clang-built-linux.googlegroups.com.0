Return-Path: <clang-built-linux+bncBDL6B3NWWEKRB3NO2X2AKGQELTXONUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id B87651A7397
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 08:25:51 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id np3sf12449790pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 23:25:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586845550; cv=pass;
        d=google.com; s=arc-20160816;
        b=s5dP7LYQ8CA/McTXoAb4KL3WQVA9gbR8XmXrZbBQA2LUPw49avDwl6ghLTKawAs2n7
         k9vl4Bw988lF8Jutjzr8bBcdDYGH+5ZHwnr/Rrc9x05cMvopmq9RamvLkaexmSqQWamc
         ayoVz5n1ud89m8fcSFMF2LQjLRcaVegDSw0cOKoLDJsmmWKWMVP+dNVlu1ep8a3aU1Np
         M0Isnld9/jEf4ZG1/NbZBU/8U0u8ko/WwL9RlSRaRMBogNF0mdgcvCU9+yHs/VS5uPhj
         WCt0585V+AUVtnWECTjmTbCCqtEqYAtP3cymTzKvRv8evEJl/W/+QgkURfwRko+MiFKS
         +BVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZqtYXqoLjpilXBIw5BR2vEG2ScH3QqUGF6dnIHQZPls=;
        b=fe709CluiIgMEJZOsJZb0gEDu13bxIn1kD4vkeA+me1ozQfAXftXoEHK7aQexPUGij
         asflU3upIh5aJmXJsEeurTDz7FyfKO185mBM9RsHpr+L8ghMHyR1rLhzI0ZhnygXSMlb
         OBD7fBinaX0PqeZBfEH5HhdnYGYObbsW1VKRXHTJwEiiMfv89fdhdoyA736k6+PKCxLB
         rfb97p6wYwXVTWjUaMXmpDUGiyDcmhQuH/FNLxPSg8nOkioKx0zIk0s3CIHZWRQJNE0X
         ZaOu/QWKAl84etD9zRij9/UwRKUCAQ7iC40K+WLCncLLum3xGbtywbofFdjdf2epW5Bt
         dTrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gibson.dropbear.id.au header.s=201602 header.b=XEQBNgUU;
       spf=pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=dgibson@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZqtYXqoLjpilXBIw5BR2vEG2ScH3QqUGF6dnIHQZPls=;
        b=JnflgLwZGjlcg758qUpdZfIF8ECu8r7VNc0cL6DFS3KG130fkbovbc4anAPANzdoi/
         r9Q5YXkVmltqGG/S7VfnaESaCMbqQ03Wv4FFeAxje3dEVo60jmjQ85bC90CTalOhUUt9
         VgWYRMs8ra57BkoPLJExPpVZEMG60o7t2cFqh1mwoLX71LnYSFl6eOSAfbi7LQeYrhGN
         dKr9rznXCAudw5UDLOzonMnYSlaxoBv8pyATCZAMnWAdj5dL1Dw/R+d0D1ajwNrkOY3o
         xq3kT8oSZ1CsFwICA1ppZ9LNOnbGuhPyjEGcxHF5WLbsbwiW4O2MhpxR/0UtTXbrmntT
         hw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZqtYXqoLjpilXBIw5BR2vEG2ScH3QqUGF6dnIHQZPls=;
        b=coMZfjID+sTXpGROkkci+GldqJ58Qi4OX7g4FbDQ7nH0RnESgnh6yJSg22yFy7Dz9/
         u2bmiw8JIGZSjAAb4VQN3fwWJlDto5dZ9KA+wPjrr6WjiUjF0XEBOKaw5trPVLh2RC+6
         mw7B43qZa/YiLzbZtXCScyvO3cwqrCWWN9c+mStVysMyl9KVj1Iy6NBzu8TesFDSPGhN
         A/zw/aAFjlxuo9lx/HKtRcoBqSvgqjSe7IF7pHmw4JJoRz3cmuJ3GHB+Z5/MJAMIbWUj
         /hPZ0mRfryE3C+JtPU+M73DExSmDJbs6Kb/a0V3hPrOu3bd/ptS4JNKoKQCFSjTo0XiE
         2N5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaGsSblh/7dVlOYIO1xleosIk3H5U/iXFMpIourIUfTSrkj9GPm
	RlAx36VoEqeYuSf8zuJ6Ih8=
X-Google-Smtp-Source: APiQypJJ9XylRsMmwp4pLfZZ09kIaZaGvsi5x6PRHWEhOcoGIYXSBgY5VrFvydcwSgeTz9yV2x45HQ==
X-Received: by 2002:aa7:93c2:: with SMTP id y2mr4340801pff.50.1586845550259;
        Mon, 13 Apr 2020 23:25:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls2957294plo.8.gmail; Mon, 13
 Apr 2020 23:25:49 -0700 (PDT)
X-Received: by 2002:a17:90a:8d17:: with SMTP id c23mr25123795pjo.187.1586845549605;
        Mon, 13 Apr 2020 23:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586845549; cv=none;
        d=google.com; s=arc-20160816;
        b=SRn+1jk2h1lA2hbjik/KHwtpJmK04x2Agsfbtkx91SM5kVw7tp9x4o1Q3BVbT8zOwH
         HFruNjtymvN8lh177QolHG6+6cd7RJ8/TwshRwwE4OjET+Vr9yPZ5IQtgmXUoKTEDXzs
         w1sSdRYuyi/IJ0FncDJjPQcvIRATPmmVegdgg3AB/XLZlS7kMvY3OsJD4wcTr0eMWZSB
         QAK2iUGcnSFg9ZV3I0gry6dPLgXOKv5QW52n3zdW1HM9bK6+bvIIO194N7ggwpLL4nUZ
         0idSHd5rCINhTcRxyPVGMQwJTPU/Z+gIsTwJFRuJBu9gVK81G5wvH9yFNVRZGuXVv7Db
         1Xzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eCIpN+GYVuXQZZc4NQjDOcmQzEVMWjUvpwU/m03YWpU=;
        b=omH6P4mrCsdb5KZHxiq/xLBxNwWOr7FNVPe/vT653rGAI6FkvMxJ5BHL4TDKJtPWZ+
         fZ69Q1LqKYYYR5Zdr4bUsGDITL0SXPlvZwNpD3S7wdNJWocNgQmO4fRc3E+YbLez5fSI
         Vg5ZN2Grz1sf4nHzJMFNY3GFxjOSu0HUC0smXiBJxQZ85NHAHOFD5qdcA169WzLL3bHP
         pSbEgro6JZJSPyW0N09l4aWlWz/l3KO3cDTcM3774klBrn1eIogqlWX+C1yGlGs7RFzD
         n3tNH8kAJRSYBXKyvG6a8edby5f3cr/Zx7NZZvpu/OenYQi3WFN4ErjlRm9YSJFufmZk
         bVoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gibson.dropbear.id.au header.s=201602 header.b=XEQBNgUU;
       spf=pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=dgibson@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id v22si556815pls.0.2020.04.13.23.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 23:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1007)
	id 491b8R6PfYz9sSt; Tue, 14 Apr 2020 16:25:43 +1000 (AEST)
Date: Tue, 14 Apr 2020 14:40:10 +1000
From: David Gibson <david@gibson.dropbear.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nicholas Piggin <npiggin@gmail.com>, clang-built-linux@googlegroups.com,
	linuxppc-dev@lists.ozlabs.org,
	=?iso-8859-1?Q?C=E9dric?= Le Goater <clg@fr.ibm.com>,
	qemu-ppc@nongnu.org, qemu-devel@nongnu.org
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200414044010.GK48061@umbus.fritz.box>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
 <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
 <1586597161.xyshvdbjo6.astroid@bobo.none>
 <1586612535.6kk4az03np.astroid@bobo.none>
 <20200414020553.GD48061@umbus.fritz.box>
 <20200414040515.GA22855@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9JSHP372f+2dzJ8X"
Content-Disposition: inline
In-Reply-To: <20200414040515.GA22855@ubuntu-s3-xlarge-x86>
X-Original-Sender: david@gibson.dropbear.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gibson.dropbear.id.au header.s=201602 header.b=XEQBNgUU;
       spf=pass (google.com: domain of dgibson@ozlabs.org designates
 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=dgibson@ozlabs.org
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


--9JSHP372f+2dzJ8X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, Apr 13, 2020 at 09:05:15PM -0700, Nathan Chancellor wrote:
> On Tue, Apr 14, 2020 at 12:05:53PM +1000, David Gibson wrote:
> > On Sat, Apr 11, 2020 at 11:57:23PM +1000, Nicholas Piggin wrote:
> > > Nicholas Piggin's on April 11, 2020 7:32 pm:
> > > > Nathan Chancellor's on April 11, 2020 10:53 am:
> > > >> The tt.config values are needed to reproduce but I did not verify that
> > > >> ONLY tt.config was needed. Other than that, no, we are just building
> > > >> either pseries_defconfig or powernv_defconfig with those configs and
> > > >> letting it boot up with a simple initramfs, which prints the version
> > > >> string then shuts the machine down.
> > > >> 
> > > >> Let me know if you need any more information, cheers!
> > > > 
> > > > Okay I can reproduce it. Sometimes it eventually recovers after a long
> > > > pause, and some keyboard input often helps it along. So that seems like 
> > > > it might be a lost interrupt.
> > > > 
> > > > POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
> > > > sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
> > > > needed your other config with various other debug options.
> > > > 
> > > > Thanks for the very good report. I'll let you know what I find.
> > > 
> > > It looks like a qemu bug. Booting with '-d int' shows the decrementer 
> > > simply stops firing at the point of the hang, even though MSR[EE]=1 and 
> > > the DEC register is wrapping. Linux appears to be doing the right thing 
> > > as far as I can tell (not losing interrupts).
> > > 
> > > This qemu patch fixes the boot hang for me. I don't know that qemu 
> > > really has the right idea of "context synchronizing" as defined in the
> > > powerpc architecture -- mtmsrd L=1 is not context synchronizing but that
> > > does not mean it can avoid looking at exceptions until the next such
> > > event. It looks like the decrementer exception goes high but the
> > > execution of mtmsrd L=1 is ignoring it.
> > > 
> > > Prior to the Linux patch 3282a3da25b you bisected to, interrupt replay
> > > code would return with an 'rfi' instruction as part of interrupt return,
> > > which probably helped to get things moving along a bit. However it would
> > > not be foolproof, and Cedric did say he encountered some mysterious
> > > lockups under load with qemu powernv before that patch was merged, so
> > > maybe it's the same issue?
> > > 
> > > Thanks,
> > > Nick
> > > 
> > > The patch is a bit of a hack, but if you can run it and verify it fixes
> > > your boot hang would be good.
> > 
> > So a bug in this handling wouldn't surprise me at all.  However a
> > report against QEMU 3.1 isn't particularly useful.
> > 
> >  * Does the problem occur with current upstream master qemu?
> 
> Yes, I can reproduce the hang on 5.0.0-rc2.

Ok.

Nick, can you polish up your fix shortly and submit upstream in the
usual fashion?

> >  * Does the problem occur with qemu-2.12 (a pretty widely deployed
> >    "stable" qemu, e.g. in RHEL)?
> 
> No idea but I would assume so. I might have time later this week to test
> but I assume it is kind of irrelevant if it is reproducible at ToT.
> 
> > > ---
> > > 
> > > diff --git a/target/ppc/translate.c b/target/ppc/translate.c
> > > index b207fb5386..1d997f5c32 100644
> > > --- a/target/ppc/translate.c
> > > +++ b/target/ppc/translate.c
> > > @@ -4364,12 +4364,21 @@ static void gen_mtmsrd(DisasContext *ctx)
> > >      if (ctx->opcode & 0x00010000) {
> > >          /* Special form that does not need any synchronisation */
> > >          TCGv t0 = tcg_temp_new();
> > > +        TCGv t1 = tcg_temp_new();
> > >          tcg_gen_andi_tl(t0, cpu_gpr[rS(ctx->opcode)],
> > >                          (1 << MSR_RI) | (1 << MSR_EE));
> > > -        tcg_gen_andi_tl(cpu_msr, cpu_msr,
> > > +        tcg_gen_andi_tl(t1, cpu_msr,
> > >                          ~(target_ulong)((1 << MSR_RI) | (1 << MSR_EE)));
> > > -        tcg_gen_or_tl(cpu_msr, cpu_msr, t0);
> > > +        tcg_gen_or_tl(t1, t1, t0);
> > > +
> > > +        gen_update_nip(ctx, ctx->base.pc_next);
> > > +        gen_helper_store_msr(cpu_env, t1);
> > >          tcg_temp_free(t0);
> > > +        tcg_temp_free(t1);
> > > +        /* Must stop the translation as machine state (may have) changed */
> > > +        /* Note that mtmsr is not always defined as context-synchronizing */
> > > +        gen_stop_exception(ctx);
> > > +
> > >      } else {
> > >          /*
> > >           * XXX: we need to update nip before the store if we enter
> > > 
> > 
> 

-- 
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414044010.GK48061%40umbus.fritz.box.

--9JSHP372f+2dzJ8X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdfRlhq5hpmzETofcbDjKyiDZs5IFAl6VPqgACgkQbDjKyiDZ
s5LQ4hAAiszktfJyjf69flxQVUji0VqWbKOgdXpQ56ydhV2HwU5FdLYGC6qyMqjc
5YGxQ94hXsS3q85Dp6ebQ/YRY0yGWXer1v3vUEbD/Lfb1CNSvGr5fahNiD3hTYxt
PXa4yyghf0EFaYKOLrbnLKPPYNZoN91gavyFeNRfmYoksOYOesltyT3pEX8bZHdl
0P50v+DVn/PBir9t3/nAxD4u+Z7uCs0IJAkB8cFQq0G5FMSiAbz7usABiQkQDgJq
IwzErIPPmjYGZxUTHKorxM0d6Ozcd1wdn27abdkj80N9e6g+MB4oXsRpNlnbEly/
E2715dEWIZju8PDCO3n/vxJiImPV2OEosAhJUormJbKw/n6B1Ie97tt/zwGP0ghr
9hJBQXx/MLxQqwPd8Qnp1Fc5FNMKs0iLQ5hI3KvmiHOKPWEYmr+qBCPBxadifD9p
XdX6Ugfy64WRB1hDEMK44s5NPEx0QXhr1mwb5iaQhgFiw2X12FUJxFUZsQ1ItScT
Sx9lAziVQZPIgIhmO26vmLG8Y0r64gleKDom/0dAyHYJI+J8aGiXnSBaGC+OYj2W
DdzQ8X6/DngnkhjB1UrFEgusweBnoKX/V/Fc501cut17ls3ARjdaKBpt0WRzO0iA
QJWdq27miCREtqphebPNTNAiJYD78OFkRn3mONj6krOEIXPWKHI=
=0KPK
-----END PGP SIGNATURE-----

--9JSHP372f+2dzJ8X--
