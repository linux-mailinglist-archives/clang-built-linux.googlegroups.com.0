Return-Path: <clang-built-linux+bncBDL6B3NWWEKRBEWB2T2AKGQEDIEA7KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8691A7104
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 04:31:47 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id b14sf10305942pgi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 19:31:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586831506; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohBCnXo9jEcBwB3k6+aUjpxe0luf+C5Yd5xd7MFR8K+uh6xVjbIt/sUj0Bs2Xp4+3c
         wBFb/HkgijO/AldAdWSfcUfiywxgmNnf2SP26KaAAxg8NvTJLM1a4lBtjQvpzeGDAdxq
         kpuwEhGo4Tzjfc3bXalPl085DVjEsmbv8G1yrVKN9YNzyA/WJ0FmPv549/YxWGNZxhrR
         ZGKxuCCMqVjm7DW4YpA+hNtd2yYhzM/NTtlg38ACX/fdPbosAyuzwxFsVjHaxvawhAxy
         K/KzvbxyGKCo17WV9zf59+bjOwCT3IIJuGgHbC/AVznTsPRlL05lpFhd1m5qlHZj/sD6
         2uuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wsH56t4ezqrmBLcY5WU/S45DIj9jSZfclVJCAddzuTg=;
        b=y1LuwcV+RKHbA06tyNeQZM7y0rLiSXL3mCwBr8reUxVRYIdrZdV4qa6/S+0KmDcdIQ
         vi1u6Kr1JQ7nT/8xywFsvGVXsgy3ChotjSYqFc8svWPWkgvED8ghWnvd1LkB+yfI8yF7
         eRR7MHn+1cfbDnZDDNvPw/Wc5WK8ZiPW2xidrCyUnhpsaiJHsYJMP5J+UZ1nN72cZZla
         3V6F5LCX3JF2ZJI/UTQGDL00me18dWGZJHMWuszpwDuIPDX4mVEteg00ZAcLub+MbmXt
         mGhH6WgvPY+VCIyHk6zOrVoq92RU/grrrER+tRupOG5pwuqmou+rO01sHe4BlR/c+9G5
         7FUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gibson.dropbear.id.au header.s=201602 header.b=C0o1HILR;
       spf=pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=dgibson@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wsH56t4ezqrmBLcY5WU/S45DIj9jSZfclVJCAddzuTg=;
        b=fZeyVKN29E+z3F7rNoKyyVig1FG6UF/M+jczE+0k7HwrL7NllM7McxKLPU6DPfxTf8
         fzOzts8QAMiKcn2ilG+afzg5rS3uG/rZkHBmGpbBgbIg2iocx2shHplX7OZji293VPuq
         6lEDloDHmwTZ6gx+MY3fk8jGjeUX5SBrGmfHrHsoB7sCsRkQqSacK7ha4DbZ4+e5eSkR
         /9uMuPX5bVIZlzxq2Dr4cag1HNboRqQ1g+xkmF7f+CND4N8Uk9IVvCj09Mi/yPsJQ0y/
         g0i9BW2dmic/e33M2A+5z5s1WeveVcaE6LBwC3rn2/CsH5D1ZbUtcjJV3j9v8i+fNEa1
         A7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wsH56t4ezqrmBLcY5WU/S45DIj9jSZfclVJCAddzuTg=;
        b=BfAydfCe8BJlMSjlzLoyEa0JuM4UoGgiDF+LwIvn69r/nLIJ3fxF7hXwxkBO1zU4nm
         QXmOOtfLHQrBT0phsmpjzkDlMRm2WmtFroy2QaIL5K1cJQYZzEKm4ZKbQb8DjZCOXdBs
         HIRLQLZOKEcAyybH+ESTToyjH9QWzx/7BrOS5uAH6t9oUu3Oyud8QHDfaUyny9jmQ1mc
         eXEkaJQTEynn0/QE8nWYQPda/NtDaXArthQECbMJX3WjBALukC3tt1ql91SQvFqiPbX+
         SZOE4d0CuwYHZe8hx3oGwQYxc7JKLcJ9SDYajWyCEbgeBcH5OTnoh+7zca0imAaqZgTq
         1/7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZfBVkRz8NxkhNs7jjVdZzeMLELjcm3/e0aOdaNoC4jVzXL8mBo
	8vUwIivD/4JcZw9OZPJQV4k=
X-Google-Smtp-Source: APiQypIjZHrDAsgw3N7u8jDuzJgCMW3zT7vSATviOGXzQ2Ez2c/JUPe6PQla8fyg8N9kMB/rpPnPAA==
X-Received: by 2002:a62:1c48:: with SMTP id c69mr20652496pfc.283.1586831506267;
        Mon, 13 Apr 2020 19:31:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:5d97:: with SMTP id t23ls2816170pji.0.canary-gmail;
 Mon, 13 Apr 2020 19:31:45 -0700 (PDT)
X-Received: by 2002:a17:90a:718c:: with SMTP id i12mr12617896pjk.142.1586831505856;
        Mon, 13 Apr 2020 19:31:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586831505; cv=none;
        d=google.com; s=arc-20160816;
        b=q4gtuXc3BlJgntFEm18XqVxWrI5Imxy+t1ewAio73QpqxTlexjbk3DoteSgZTWyDNG
         fpzbpy/kHYAjw5aqxK77y5/Xarb11eCfXn+uLG3SMbxZ15/UoBhjmbZT+RMHJUVIOpZz
         +Sfc/I31/n0D1c9YNAZ10zVBMsd6x5DYA+Icd+ZWEK5W1LPSRKSnfyM2C3R0BJByQBGG
         zRsYiJgoCcGCa+XyC6FALCH6klHJQVYoFtDXlaZQG4MRYPio0Xx0xjudfUIeitNv2H68
         UQK1fJVwHbgYOgpShuBNBS9FKZQuT9d9tECJ9FFL8CCjQ003RCBubTaS501cEiZsT2gi
         gZzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=shfQx6k0B9tA3PP8g9je7XXpIBw8s4NCnpKRVzDiInM=;
        b=F3vjzIWSk847RodS3nbSnui9N9a/jQUDIl6zZXvWrmCsdqye9cB5MvBYEATV/rt7aq
         muR1CFlQcYbJrKMK2b36yexkKBeWiBYvC7HglNC2EmgjaZF36F9yKo2ETPYS/3QzZsoy
         P/Sa4VBVgLAA2IUTRTNIdDXbIP8tzZKKi47+5djtR52GtA7uIL4IG0lUv+lGOcBeYQsy
         hyJmVhiH1GJVpRnT/oO7Qi3sbln4WORedmvJ6YpkOy8lJZ7vQ41rTG1wbBKFXVoGhU/H
         pZGuZW82iKFRum7u+KAzCYvOmoOs/+OhvkgZBOhoAr26zNqUHkqm66LnDBhzqHyfwTQs
         4DDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gibson.dropbear.id.au header.s=201602 header.b=C0o1HILR;
       spf=pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=dgibson@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTP id j132si233128pgc.2.2020.04.13.19.31.45
        for <clang-built-linux@googlegroups.com>;
        Mon, 13 Apr 2020 19:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of dgibson@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1007)
	id 491Twc1sd7z9sTS; Tue, 14 Apr 2020 12:22:34 +1000 (AEST)
Date: Tue, 14 Apr 2020 12:05:53 +1000
From: David Gibson <david@gibson.dropbear.id.au>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	=?iso-8859-1?Q?C=E9dric?= Le Goater <clg@fr.ibm.com>,
	qemu-ppc@nongnu.org, qemu-devel@nongnu.org
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200414020553.GD48061@umbus.fritz.box>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
 <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
 <1586597161.xyshvdbjo6.astroid@bobo.none>
 <1586612535.6kk4az03np.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WBsA/oQW3eTA3LlM"
Content-Disposition: inline
In-Reply-To: <1586612535.6kk4az03np.astroid@bobo.none>
X-Original-Sender: david@gibson.dropbear.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gibson.dropbear.id.au header.s=201602 header.b=C0o1HILR;
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


--WBsA/oQW3eTA3LlM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Sat, Apr 11, 2020 at 11:57:23PM +1000, Nicholas Piggin wrote:
> Nicholas Piggin's on April 11, 2020 7:32 pm:
> > Nathan Chancellor's on April 11, 2020 10:53 am:
> >> The tt.config values are needed to reproduce but I did not verify that
> >> ONLY tt.config was needed. Other than that, no, we are just building
> >> either pseries_defconfig or powernv_defconfig with those configs and
> >> letting it boot up with a simple initramfs, which prints the version
> >> string then shuts the machine down.
> >> 
> >> Let me know if you need any more information, cheers!
> > 
> > Okay I can reproduce it. Sometimes it eventually recovers after a long
> > pause, and some keyboard input often helps it along. So that seems like 
> > it might be a lost interrupt.
> > 
> > POWER8 vs POWER9 might just be a timing thing if P9 is still hanging
> > sometimes. I wasn't able to reproduce it with defconfig+tt.config, I
> > needed your other config with various other debug options.
> > 
> > Thanks for the very good report. I'll let you know what I find.
> 
> It looks like a qemu bug. Booting with '-d int' shows the decrementer 
> simply stops firing at the point of the hang, even though MSR[EE]=1 and 
> the DEC register is wrapping. Linux appears to be doing the right thing 
> as far as I can tell (not losing interrupts).
> 
> This qemu patch fixes the boot hang for me. I don't know that qemu 
> really has the right idea of "context synchronizing" as defined in the
> powerpc architecture -- mtmsrd L=1 is not context synchronizing but that
> does not mean it can avoid looking at exceptions until the next such
> event. It looks like the decrementer exception goes high but the
> execution of mtmsrd L=1 is ignoring it.
> 
> Prior to the Linux patch 3282a3da25b you bisected to, interrupt replay
> code would return with an 'rfi' instruction as part of interrupt return,
> which probably helped to get things moving along a bit. However it would
> not be foolproof, and Cedric did say he encountered some mysterious
> lockups under load with qemu powernv before that patch was merged, so
> maybe it's the same issue?
> 
> Thanks,
> Nick
> 
> The patch is a bit of a hack, but if you can run it and verify it fixes
> your boot hang would be good.

So a bug in this handling wouldn't surprise me at all.  However a
report against QEMU 3.1 isn't particularly useful.

 * Does the problem occur with current upstream master qemu?
 * Does the problem occur with qemu-2.12 (a pretty widely deployed
   "stable" qemu, e.g. in RHEL)?

> ---
> 
> diff --git a/target/ppc/translate.c b/target/ppc/translate.c
> index b207fb5386..1d997f5c32 100644
> --- a/target/ppc/translate.c
> +++ b/target/ppc/translate.c
> @@ -4364,12 +4364,21 @@ static void gen_mtmsrd(DisasContext *ctx)
>      if (ctx->opcode & 0x00010000) {
>          /* Special form that does not need any synchronisation */
>          TCGv t0 = tcg_temp_new();
> +        TCGv t1 = tcg_temp_new();
>          tcg_gen_andi_tl(t0, cpu_gpr[rS(ctx->opcode)],
>                          (1 << MSR_RI) | (1 << MSR_EE));
> -        tcg_gen_andi_tl(cpu_msr, cpu_msr,
> +        tcg_gen_andi_tl(t1, cpu_msr,
>                          ~(target_ulong)((1 << MSR_RI) | (1 << MSR_EE)));
> -        tcg_gen_or_tl(cpu_msr, cpu_msr, t0);
> +        tcg_gen_or_tl(t1, t1, t0);
> +
> +        gen_update_nip(ctx, ctx->base.pc_next);
> +        gen_helper_store_msr(cpu_env, t1);
>          tcg_temp_free(t0);
> +        tcg_temp_free(t1);
> +        /* Must stop the translation as machine state (may have) changed */
> +        /* Note that mtmsr is not always defined as context-synchronizing */
> +        gen_stop_exception(ctx);
> +
>      } else {
>          /*
>           * XXX: we need to update nip before the store if we enter
> 

-- 
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414020553.GD48061%40umbus.fritz.box.

--WBsA/oQW3eTA3LlM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdfRlhq5hpmzETofcbDjKyiDZs5IFAl6VGoAACgkQbDjKyiDZ
s5Lyhg//TomNgFk7I7WoNDVdWfstVP8av11YeK/MKpSxrha0zOw+CgPJJAGUeCQT
c/K0tQXzXR2joC0opPWbO8VBLms5CapY8+I11tOsOi5okidzvJTP6T/ZCff5/Guz
Oi4reP211wqoYISQhjzoNL21HB1fyzPUMLycpNYokQYagyUBROO29mVAZpVgWMfm
B7L4p89VPzTxd5FcM5/xT7rNRzpcW5ICxpOQLIm0Tbo6Ez9OLXwPHxqTVdZnekhD
+1pygEVhKwy80e+fJ1EYnAWCXKLgQBmBQ65sdA/H6y90KLLSlQireaPwroMkVWyP
tNf75J3JIzqUdaO08ZgjuV90/EoeuJ+AtJ+txqWNnQ3LAIrskL7WBmarOMVQq/3y
IRGlesv6M/dsXLwgw6cX0Hr/iSwHP9ytfZFoGlG2GNeNFphfRyIJKRaisF+jWI6w
1gUt8wy7H2zJ+ghmUJWgie8Nay7p9uWLnX4JP74JsA+qEMb5q1DTsK7BTfKyQEqL
pCZtQLNAJbW61KQT0TWOdJlv1szE5JB+Aj7QF96VWwEUZaLtmE8ZoK8uoYbQb6na
WHmlMu/VX1De4SCsZgB2iQfeOqn7BiQt4VseXOsaN843bFhap40x4o+jwYuQIsBI
vaFMm2sLBsgmzdLEqwIXy8ujgTsj5lFrVmqzNlzKb7JgjmgUF3o=
=/XSB
-----END PGP SIGNATURE-----

--WBsA/oQW3eTA3LlM--
