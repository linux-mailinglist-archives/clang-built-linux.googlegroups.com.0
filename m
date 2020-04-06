Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJHEVX2AKGQETGXQENA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D676019FCE6
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:17:09 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id 78sf258933pfy.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586197028; cv=pass;
        d=google.com; s=arc-20160816;
        b=to2/L6emkQM65fyxAtp4LmKJpiMN4UJA9foWcqi/fyQdukSrOeCC087mQEBd243+Jm
         5EEtOq2uBAb1+omEiX8h6mQ366dJxa0a7UAN2y8DCmURIX/gEM9Dxv9iVZ3pvbX0UjNe
         FQZ/1oD8ubkiGvn8elyLhAnXEdyDz2H1AbBsZP2m9x8r8Zqrf2QSJX4yycScmFVnskXA
         apJzOwxNIadj+sZ/alEOuxu1YKnLFwi1SE0LHp2Gs9gF25hwN2zz7gjlSOB4Zcq9NQJK
         m0myGec2cZMvqFaiFtRpIezDPquk3J7iMHE+4MnnQAb11TF+wl/Jj+t2yyhSf2mDmnKN
         usYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OsRtEuCN2sGYMKoWpYSnppV4+Us4zMPry99uOqomC5w=;
        b=Dpg969WY6DTcgOLwl6dXd+JAnuV/yaKMktrHeXxoUSs/uQ2hJhn8D54UPo/GMlLJRh
         NrOZxkUFSwxQ24nbJppYottCQXFMJsPvebN0Wm0JWcg4iWDbH5hc73GFzWOb/FY6b14D
         qmc+RDxprvXYtAvRLFrTFTQLV4JgibnjveFNmg9YOr7JN7kqjniuxc+nZ5RXPJVeUeep
         NINJbDoCl+/zmjtAB5K4Xe3OjUMEcPEmj3akxvj51yfHNd35LuSIgj+/YIVXU9XDHVKu
         TnJT1/hiDySezePloJLHx/+tgHUPiHooE7gnDJ15tRMroyxUGO7ZVPvOv7u23juidHQy
         pjNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i1GU0TXc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsRtEuCN2sGYMKoWpYSnppV4+Us4zMPry99uOqomC5w=;
        b=bpwYkhEiVOe4P0e+jCCqRsVaAl6yewqtLiVi3Erczy8MkEyJMxaJ9wV/pYPu6Qc8F/
         9FbQjXO/cuPjJgTQ/4Gl5zB3SoFulegxhd1oBjALVAz13RP65Mt9CefoJ1cd3+GoV1GN
         yqX5rj3XOKd5TcFVqdO3bF5OoFjKukKWdK3GZfzi1F1N6ZPmS50zdvPZtTFktqjOcUQ9
         HbrmEvgzQp5aBHjiwWPyo+1fTEqbpdZssPz78B8WdNe1t9xdRti6iq1Zk+WYoUYyN+Wq
         yIFoFGdk750FYQRq/LHJ84mS1oMlX+A2sL0Q3HRAI9NqHWfEMnMsUJvWsN+ZgNSeXzx9
         JXrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OsRtEuCN2sGYMKoWpYSnppV4+Us4zMPry99uOqomC5w=;
        b=RvHwNoy98HjlNG2CtYxCIiPe0q9+vn8/kQRxGsnZuEUnIj6U62WgXJdp04I4b9iEUw
         MwNGFwjsVk6/nRUwdbZqf1jo7plc7/3ZDvhFwcKHcPjjr/Qcpk6Vy5sbHxQGtSCHH3qi
         CVL7ax31JqV/Tq5Fbq5vTy24XDrKxeleks7gfelMXLJ3hfLabAGEBXS3D0NE42tpYeoX
         IYgJFcsFhQCy4zBbdOxACW7ZpjSldISRkFXK4DZwz3aXI1x3DAh1tN+Rr4G1Ym7xp4kr
         h0gRv2Dxbs93RuqDdh6lsshPo5XG06Kix52+AoCWQHW6wtJS1Xe+R2MzCVCvduvvPpdn
         XV0Q==
X-Gm-Message-State: AGi0PuYdtauVPeFLOePlJ1HG6gex3hHeYjUnAxtI0CBDSBci7vE+r5Q1
	Rn70g+ft5QYCjv4mSrHzgG8=
X-Google-Smtp-Source: APiQypLkyh/lqe6sCVABteVC37rx2K08KBBykfXcg1ENBguXrBI1SGT0ecJNYUACJ11Pe7rmcWfp2Q==
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr15235725plk.292.1586197028599;
        Mon, 06 Apr 2020 11:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls243294pln.5.gmail; Mon, 06
 Apr 2020 11:17:08 -0700 (PDT)
X-Received: by 2002:a17:902:968f:: with SMTP id n15mr2468589plp.11.1586197028051;
        Mon, 06 Apr 2020 11:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586197028; cv=none;
        d=google.com; s=arc-20160816;
        b=xrK/PeDTZC6Bb14Cs2spHZ3HTWpIew+1zO6to3/w97TqYaGPPdLTf7W1lBr9qb4Gmz
         aHhYe8jeOM0iUoMUCenz9YGhM2FU5A16rKqKWLGtBcTtQ8+lmsfWpV86QupyYc2q3ka9
         y+9cO3YS89vae4b1t8iTJcxXA9ngRW7Hd5J9+zoOfDXQSP5sYiDSFoUCruMNDWNg+phG
         5RSlTdEpEiTO42sLPEjwz7FqxbdBYZDFe1bf3r9XyiUfAqA0j88YkDU0kHH88bIeignE
         jjSCVReF8sHizzc3cuwxggEpt5sB+MpuQg7MsucMymZMjl6HzlJeH7WwyfsRyGhRJjbM
         4/Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QajOetIheYc6yFfn5cGXMzoheGBlCxA/mL7SE7Ps7+Y=;
        b=G4iFgMmVla27LGfLljEHbv/8IvnwBjfe5bN3Gy3SdBy16Ra8rRAkSVac49qVcVgkp4
         MoqvEbrNrYEhk3voLEm1QYXnkQR/9GA7cwxQgR4si4WJke5lZvf7tE2S+usp8UjZRvPx
         sXyCrLhJrYcFbhOz+Ve8vQNt9q0cxZuEZKd6071q1svGwR93LMgJR/LjAFeNDrZ04Lsr
         kQ/oaFSIsktblHxxuaEvLLDJqHDwCsSFJ+I2B8x4I5KlZU5U3xZZqeVZWGf/QAuJM6nc
         oLpS745V9AwMdSl/ItqTU3YSaXkt8z5o6gQ41PFPAvgDU8eCd1o/hmP/gWgBbBEL/30g
         jOaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i1GU0TXc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 62si64324pgf.0.2020.04.06.11.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id h11so128027plr.11
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:17:08 -0700 (PDT)
X-Received: by 2002:a17:902:bb91:: with SMTP id m17mr21132416pls.223.1586197027464;
 Mon, 06 Apr 2020 11:17:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200405163052.18942-1-masahiroy@kernel.org>
In-Reply-To: <20200405163052.18942-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 11:16:57 -0700
Message-ID: <CAKwvOdmEcC7SszqpEYeT3v_gi89vAyDyofZaKkfF_YhEXu=E5A@mail.gmail.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and prom_free_prom_memory
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Linux-MIPS <linux-mips@linux-mips.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Burton <paulburton@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i1GU0TXc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sun, Apr 5, 2020 at 9:31 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> CONFIG_SGI_IP32 is enabled.

I'm curious if this issue is affected by other combinations of files
that each define prom_meminit with external linkage and symbol
visibility.  I would expect __weak to be used when there's a base
implementation that we expect to be overridden, but I don't think
that's what's happening in this case.  It's not clear to me which
definition would be the default, let alone the one in
arch/mips/fw/arc/memory.c.

Looks like CONFIG_SGI_IP32 selects CONFIG_FW_ARC, so it's not clear
why arch/mips/sgi-ip32/ip32-memory.c and arch/mips/fw/arc/memory.c
define different implementations of prom_meminit, and which one was
expected to be used.

Hopefully the maintainers can clarify.

>
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.
>
> As a groundwork, we must fix multiple definitions that have previously
> been hidden by lib-y.
>
> The prom_cleanup() in this file is already marked as __weak (because
> it is overridden by the one in arch/mips/sgi-ip22/ip22-mc.c).
> I think it should be OK to do the same for these two.
>
> [1]: https://github.com/ClangBuiltLinux/linux/issues/515
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> If MIPS maintainers ack this patch,
> I want to inser it before the following patch:
>
> https://patchwork.kernel.org/patch/11432969/
>
>  arch/mips/fw/arc/memory.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/mips/fw/arc/memory.c b/arch/mips/fw/arc/memory.c
> index dbbcddc82823..89fa6e62a3b3 100644
> --- a/arch/mips/fw/arc/memory.c
> +++ b/arch/mips/fw/arc/memory.c
> @@ -117,7 +117,7 @@ static int __init prom_memtype_classify(union linux_memtypes type)
>         return memtype_classify_arc(type);
>  }
>
> -void __init prom_meminit(void)
> +void __weak __init prom_meminit(void)
>  {
>         struct linux_mdesc *p;
>
> @@ -162,7 +162,7 @@ void __weak __init prom_cleanup(void)
>  {
>  }
>
> -void __init prom_free_prom_memory(void)
> +void __weak __init prom_free_prom_memory(void)
>  {
>         int i;
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEcC7SszqpEYeT3v_gi89vAyDyofZaKkfF_YhEXu%3DE5A%40mail.gmail.com.
