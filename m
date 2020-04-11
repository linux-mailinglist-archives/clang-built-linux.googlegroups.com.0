Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWVIZH2AKGQELLPOJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8491A594B
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 01:35:55 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id g8sf5502590qtq.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 16:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586648154; cv=pass;
        d=google.com; s=arc-20160816;
        b=n6TepvVQUZP6lE4LLZOGwKcavXCLZemrICQRw73ysdnlrE9wHYOiU9JzM4yN5VIndO
         jnG0j9EKYsIt3es27p8pDn7TvLLBsxNmtbFtGFBcOx948k2lzK/v/fMQt3moBgW6iaqn
         swCbA6BsvuILlaB8fSPgj62vM5OZODf+6DBlYt82p81OWF5HHePmHuVdiBIVrF5Y/Jgj
         QPDQZTdycneLuhVJNh2vfrKIx9VyyEQe2weldcICcujUhgW8Vi8U7C/5EDN7vw9Aw7ht
         bEIsDmDL3WO/Oga8E694h0FBPV2vT+0CoSa9CLZ4ooIkbO/PZSL28J8tL10JttZXqV1t
         csjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aT/5UOQqjpQUtTk9mIprDhd+4UxWffwGH5e69Ue73W8=;
        b=cTi4PA74somp/UEi4+aWgl4PomEFPKv12PzTXX8FS3wB5ajgfrog3V0NgMvWe/xEnO
         0A4CMjrajgSB/8+7I3gYX9JftU6DfYRahFqU0a6msN09ClQUbbRRgimLPoT7fooL1DOv
         squwNOT+kJAdQzdUdj8/MSVRvBX4QXWzK4/K5DFVwZFf55y/Gq+FLckgQpEE256TT2tq
         zHoJ/uiArQZ8tsM2wCr2gJdvnOIezsiLh74W0tOAMDfE58ig0idn2SODeNAybrrlfzlT
         WthPqwYaIRsbux/2ULaL6pGZLyRnNhlfL1J9g5V5rI618srRsiNe7lB2p6bV/UFrEfZo
         3czg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auj0hqYc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aT/5UOQqjpQUtTk9mIprDhd+4UxWffwGH5e69Ue73W8=;
        b=fK0sdsBGaAeYtTOtk4yJVS4v8xiK99/KtuFx8iHAJW1i5Y8EYdNT8+Dq/wNXrlDo/9
         Mq/pMxaqJNnvi4cjp5eYRMRZu9khHpUhBbBCArnCPsAjCCc/5Hva5Yy19mt9uKVlveTR
         U1gADHLtfF2y5kfComZqGPbTsAntgTTP+Dacj887DkzLMQfI1SrpBbPYqxOJNJvs+oFi
         IVp3jaXX2SLMq1+oqb13wWN24njpLCbj/xbl7eHx0vXMuPpmzIu1LfX9aG7LFSUYZL/P
         OzT46caPbkJv5jP3h1EM0XFOd1aWX0KPLB0AJhiF1NunzN0mfZl8MP9CkWOthIcDE0na
         pBwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aT/5UOQqjpQUtTk9mIprDhd+4UxWffwGH5e69Ue73W8=;
        b=ovTpgKil69iUaCcchM0UIDprUSASi2gVfJsQDTkQc3moM70M5Oy3edRgb2JYLImwjB
         77pGT+rqNmrp+5KAZjwGlvoq9kotS5LK0mLvy0uCJoqiRwgjwpE7j9s3dYRjyp8CiLJs
         kuEcsffvLUGDbPzOdzOX+oULl8QkdnOTTyJDCZ54kLInbehwL++423RRQ4SE7/qY6QXb
         j38ji8+FJmr8Cml2j1f9hO2ME/u+K1Yir4D6aF8E32qScg0COz3TeSwt03UHJWdiKHEu
         HRWAD5aeZxCjr3Wnbdu4k89nZhjfvdR76RY5OyDc4/t3gpuJEPwKhqU0LgJtubu0pltg
         b3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aT/5UOQqjpQUtTk9mIprDhd+4UxWffwGH5e69Ue73W8=;
        b=ct/cnVU4xNFA5xt3AufvUgd3KHM/08C3TFEKcT6mLTf8RFpQ0y83Ij7Rc3v3yC7H92
         X3rHVKnuOOfaYmJrsT8zo7Lj3apjc1mp4QrGa9cA843RLZ6PmM+dgtZlhbkS/xEwFS/Q
         8EXJpiwhmo44wXX5PRiu3DrfcmaauyqldpS/4kyh+sK9svgU3NHj+uzU/NGvHEtXMPnw
         awK8qkgzo+WUBD0NE1e2b/BFsBvv8k3QU3Q8lIhGqk4PNE2L6Ry/PN1SC5s0muYY0u2+
         qmfA3Gsv+P/BOviART+h04ADPMJogJ7zJIa8p8RDgyDTpJprk7O7lqJHlzyTL1XCeoKF
         H6oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZPlAr3otdHE+Vx6mvmrpjxYNuPC6q20fMGbzYp0xJ08pB2XPJ0
	o/zAprctcoIrupKN5JAC+BY=
X-Google-Smtp-Source: APiQypL6Dkd8ypYOYSWgWeBae/TmwrDUBNRYZ8luTdLCqKzF1LLGrVbZ0Iu3IjOIMlAyd5cs2/cxPQ==
X-Received: by 2002:ac8:7510:: with SMTP id u16mr4744564qtq.307.1586648154280;
        Sat, 11 Apr 2020 16:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4b2:: with SMTP id w18ls2892207qvz.2.gmail; Sat, 11
 Apr 2020 16:35:53 -0700 (PDT)
X-Received: by 2002:a0c:c587:: with SMTP id a7mr11265153qvj.2.1586648153884;
        Sat, 11 Apr 2020 16:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586648153; cv=none;
        d=google.com; s=arc-20160816;
        b=uQP+oiHPCOLhBPiv3ogiAyUUYcmWt+H5SFuiGMz8QpgB69Xlg3ptvIlGk6Dl9mu6gG
         6b/o49lsoTWpqRD3KEoEh05O3e3VkJmSApVTJjPXTkuEqXzDX8XuiBo4TY2jpqmB0NNA
         Etj3qLnLpdSFTmgvkzRtEYkgcWyVm112xG2pUXkdcVB+bGAn78pbZAvYBDFT1qS6k/2X
         SW3eO2dYWvWlhrAU/7qhBbuomKdg843FFJSh6SvAerM6wBmoc0ty2jwKBupVm7Qbuf9p
         Tov1xHLXj945og5SmcJ1DfW1u1WCnKsGs/xaBlbScqSaRtOZMbEMrPKU/pMmwyrKBhSt
         eTwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FOIrhfa5I+n7DVdFa8ydZMzj2s25vzXCYLjLMUsM8Y4=;
        b=XXiIckoW/QXuuE0T+3tJ+tkzOdpleKB8F8IFKLx/RDnBaMuCHkvnX4NV6lzV/xINwX
         nAmUu7or2GjlelKrm6l+pP5z8Gg0lqCq1Td8Y+i/KyqUauyWnUqlszsn7CJVKZdArExZ
         BGnqin/DrHIIdbVMeYtVehqCiliqFTNanTjvZGF7I8OMF5T2AnuuH/A/5W1rMDv76Egl
         8a/QAozeGhtQBvoZk4GyskKrUfYge8X9dz5WQgroPahunoe3ebv7s8Uz4SBq7X2+1tWq
         kgVmQ430vPJSnTyTFycQq5RCyO/SpObOEFK5XcKzaJAZcSCSy7XGQ+2QQPLqmWzxOzb6
         90IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=auj0hqYc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id l23si172939qkl.0.2020.04.11.16.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id d63so4589661oig.6
        for <clang-built-linux@googlegroups.com>; Sat, 11 Apr 2020 16:35:53 -0700 (PDT)
X-Received: by 2002:aca:2806:: with SMTP id 6mr7800691oix.135.1586648153184;
        Sat, 11 Apr 2020 16:35:53 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id n38sm3487564otn.26.2020.04.11.16.35.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 11 Apr 2020 16:35:52 -0700 (PDT)
Date: Sat, 11 Apr 2020 16:35:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	=?iso-8859-1?Q?C=E9dric?= Le Goater <clg@fr.ibm.com>,
	qemu-ppc@nongnu.org, qemu-devel@nongnu.org,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200411233551.GA34862@ubuntu-s3-xlarge-x86>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
 <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
 <1586597161.xyshvdbjo6.astroid@bobo.none>
 <1586612535.6kk4az03np.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1586612535.6kk4az03np.astroid@bobo.none>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=auj0hqYc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Yes, with this patch applied on top of 5.0.0-rc2 and using the
pseries-3.1 and powernv8 machines, I do not see any hangs with a clang
built kernel at b032227c62939b5481bcd45442b36dfa263f4a7c across 100
boots.

If you happen to send it upstream:

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for looking into it!

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

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200411233551.GA34862%40ubuntu-s3-xlarge-x86.
