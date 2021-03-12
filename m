Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6F6V6BAMGQEAG2W3OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDC833992A
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 22:39:04 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id a9sf8214095lfb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 13:39:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615585144; cv=pass;
        d=google.com; s=arc-20160816;
        b=nKSOMikZoXKmSL8Fs2D+bbaZCx1Kp0e/5ag1Up2/AsrdVSz5dDsLK14QyqQydr/8qY
         WnU5lm8w55Jg3yU+bAYiLQsZfPz4A8JktwIRaveM8+KcgOcwoWihxBAaiqbZ8DhwNF0W
         hgJtmmEuUOaTwTX738Q0uu3xkfAoz6JHURVVvN/ewGTHqxlUFDlfC3BXu6sE/o/xh9RB
         bfCL80bSsZfK3c0jFRr9d0DOY8FJTPcxxPDlRkQZnMoKlTknMQtGEsPryy1tnDy9O2dr
         xdwhfJs4de3IUO6owRsJ+QN+1goNaEa4XnW0HIXrjeeEw3Ct8jFlgUXqHiwLnEURF77H
         UlCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sf1EWZfW/NlK8AEUer5AdbeOcfDkkyvH/NsFRNOf/C4=;
        b=BHB+WBhx3fivGranTRhtx+DRG/39jomh0vRq/Lwlzuf6LIchGSq2AbBmni2p6McAdd
         gsPBjtngQ0JskNoWRcqTWmgxlc00RypnPFkkquyH2zwFFJ7kvWIkPE4HqaowILZsyEjw
         QFYTSe3E9YGQMi7cYlTw/QUS4xtKD2DyRnChsS3j+KrsthqC/Zh0AhfI9Gg6983ty0Q3
         2Xtnv44avEWHtIAmHJnwmS35zIdo6DCSBWlUcWaYSgDiIloxMTYRW8EUrkWny9PRS4qE
         WX8CMSrjpyDuryCsQzyOjL7dUxkm14ayVghLdiJrQABjaJFlh5pxkTCFkevzm6VOgE6B
         AGbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OaWBFeMk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sf1EWZfW/NlK8AEUer5AdbeOcfDkkyvH/NsFRNOf/C4=;
        b=eC64KWLakS1SS6oyX/ZAr+Csfm87pB5Vgqo6C+xcFZ9Vx2cX6LYiEAlxvavtHJwG20
         tlC5Eb/qf/+xDeKIeBvLFPhTjQstUDTujD9eVZQFFMuRMOWOp1T8VmunUwliMyJPtCwy
         WkJmmWSnw1TcdkE0w5NzB04XebuRASRHtpGELCl706LxrKWwxAHp/E/9YVno9XvgzBrW
         J0rLeeYfvzo2qFIZ/Vjx+dmygw6JR04O2gjx48cqpi3sPPn6PFyIMvPQVlZv/dz4Z35+
         eK+HXiJjhiecBT1OzNYETBTxQeiz7X3vHp0BxHGn1wU8WXWJXuzXH65Z/sfwFsbPkarB
         raWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sf1EWZfW/NlK8AEUer5AdbeOcfDkkyvH/NsFRNOf/C4=;
        b=dr9HrSGHDpSsKyoHS8CodsIvzJSC+amnpgDrNA2zTruHGYs7KNZsIJlHpmf8VdhHew
         vEUzUhRD8O9Q3zQoUd/vZNuItL2ASlUOFrLfPINpHAC3anVDfPxYw+wYnaIfC7M3VwxT
         5Y2pxS1FoJW1VS//aDJ4R3dEb9Bq17R9gBqMbiAlijMHmti/r2CrRtlHizwxJ44VIl6V
         3JbmsWEB4uA1ffB05/WIwgQz7cukqkAOAjMxUKyvsyRmPJQ6l17Sy2nKK7sxI25Bufs5
         B9F0PQAU6TEdhRG/qH1tXOapnOswtD4TjBxOwfj3zy3f1/kC39SIY84z7WLJl2eNMGmo
         gZ0g==
X-Gm-Message-State: AOAM532Ia9Ibg16JLv2FJl2zYTPTstUR0vOvLymVk8NVNF7gQ3cHbYIH
	aRKxqdv2FvL9skAkBwrjrZQ=
X-Google-Smtp-Source: ABdhPJxrGE8BXXMJ/B/xnyS3QkE5cl4/2MN6DNioBu+H8ZRpKY7owinEHErOx/xzp3JRyEe7JU9lAw==
X-Received: by 2002:ac2:5e62:: with SMTP id a2mr743132lfr.385.1615585144356;
        Fri, 12 Mar 2021 13:39:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a48:: with SMTP id k8ls2275014ljj.10.gmail; Fri, 12 Mar
 2021 13:39:03 -0800 (PST)
X-Received: by 2002:a2e:8111:: with SMTP id d17mr3449574ljg.337.1615585143336;
        Fri, 12 Mar 2021 13:39:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615585143; cv=none;
        d=google.com; s=arc-20160816;
        b=bVrh2PPZDFfmwKPBqRMij7ESA+2XH7ahK4Chc0DUOkseIRvrmoXblBRhJ5Pt7cszog
         HyElYnl7D3UV3nrg6FuT27L+P4v9Gn2uzaW7fpqX+F2BAeAXVRqnlKYqPU7kq2YeK9Kz
         ejX9jTGiyNLH30czdsQCItOKxW47iv/lEc9fPSRIuiJ0NySNpodVtMO9blaGtAYq0cGl
         +auyRzWVaX+elJ4cF9lEKZ/Hx/hwWA/ZTb3RD8DOsGbxTY5AYOrstFxFAno85p373tpa
         30IK8b8H5t9oSxfHaLNvMGITCeRXKohkS/9MoufXexAlKoUMJcg2YyeF/myRLjjrDW6L
         wPzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WV6iTMu03uChDms5bBNns9hCvCHH9+fuZrgLAjE0Aog=;
        b=rSt7BsHCePaCz45XyeAkGFZ/FRDqpOHH26vMVcSWXONJ1/XtV2gzCZ31JLakKDJHWj
         S4K1YRm/bX2ix1bhAGe+UThVJ4WH6YeDDY02g6vDNdPvlbQqI0AuRslhj49ACR271fDP
         E9Dgl8SkBGFk3XZlcx/z32GbYbAN/tjlXysW5Hk5cpSLmrZOoyoYhRTUgwQZ1/4Hyw2x
         +GeRkLOjLzeI65MHaX3owT3T2rZkDgCgIRMB/0R6dKskDFmatTArKyrmaju4GrwFoMcA
         uG7FJrYp0/OVnnJA0nxuT2ft2cH3pxLByBhijjjTjisRu8Wsn66GPpWigsgDPiZliVRU
         SQDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OaWBFeMk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id v3si321668lfd.4.2021.03.12.13.39.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 13:39:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id s17so9099656ljc.5
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 13:39:03 -0800 (PST)
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr3598813ljc.0.1615585142886;
 Fri, 12 Mar 2021 13:39:02 -0800 (PST)
MIME-Version: 1.0
References: <20210312010942.1546679-1-ndesaulniers@google.com> <CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J+aQZGESSQ9yA@mail.gmail.com>
In-Reply-To: <CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J+aQZGESSQ9yA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 13:38:51 -0800
Message-ID: <CAKwvOdkNoo+7pDiiNdnciRhHB8LpVTOr7ROpDxfEnLS-Qn9dJA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Candle Sun <candlesea@gmail.com>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OaWBFeMk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Fri, Mar 12, 2021 at 9:55 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Mar 11, 2021 at 5:09 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > -Wframe-larger-than= requires stack frame information, which the
> > frontend cannot provide. This diagnostic is emitted late during
> > compilation once stack frame size is available.
> >
> > When building with LTO, the frontend simply lowers C to LLVM IR and does
> > not have stack frame information, so it cannot emit this diagnostic.
> > When the linker drives LTO, it restarts optimizations and lowers LLVM IR
> > to object code. At that point, it has stack frame information but
> > doesn't know to check for a specific max stack frame size.
> >
> > I consider this a bug in LLVM that we need to fix. There are some
> > details we're working out related to LTO such as which value to use when
> > there are multiple different values specified per TU, or how to
> > propagate these to compiler synthesized routines properly, if at all.
> >
> > Until it's fixed, ensure we don't miss these. At that point we can wrap
> > this in a compiler version guard or revert this based on the minimum
> > support version of Clang.
> >
> > The error message is not generated during link:
> >   LTO     vmlinux.o
> > ld.lld: warning: stack size limit exceeded (8224) in foobarbaz
> >
> > Cc: Sami Tolvanen <samitolvanen@google.com>
> > Reported-by: Candle Sun <candlesea@gmail.com>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > LTO users might want to `make clean` or `rm -rf .thinlto-cache` to test
> > this.
> >
> >  Makefile | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index f9b54da2fca0..74566b1417b8 100644
> > --- a/Makefile
> > +++ b/Makefile
>
> Candle sent me a private message that we probably also want coverage
> for kernel modules. Let me revise this and test/send a v2.

False alarm, seems specific to Android's LTO support pre-5.11. I will
fix that in Android trees.  This patch is still relevant going
forward.

>
> > @@ -910,6 +910,11 @@ CC_FLAGS_LTO       += -fvisibility=hidden
> >
> >  # Limit inlining across translation units to reduce binary size
> >  KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
> > +
> > +# Check for frame size exceeding threshold during prolog/epilog insertion.
> > +ifneq ($(CONFIG_FRAME_WARN),0)
> > +KBUILD_LDFLAGS += -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
> > +endif
> >  endif
> >
> >  ifdef CONFIG_LTO
> > --
> > 2.31.0.rc2.261.g7f71774620-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkNoo%2B7pDiiNdnciRhHB8LpVTOr7ROpDxfEnLS-Qn9dJA%40mail.gmail.com.
