Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT4FSL3AKGQEUAMGTGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6CD1DA6F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 03:07:28 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id n1sf763663vke.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 18:07:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589936848; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajKgZKrV4ZDslvl5cKtKBNmOecZRAj7IdwhjIDcwy0ejxixO1LVEW0QVOzEsyQAm4P
         EfqPQWP5FhspD+qNgzIa5DvZgavjDOuT8txt5Kc31InmHqRVAdADCt+htyroZt7EpH/s
         7RPS0Z1g9UQWV2dUlwofOBKTD2sIn2TSJ2dhjVwvzM7azuXDSoIUojfIC33uNgvpVQD+
         xan1jJWghUGY21GP2CK/FFlPpqKgoJ01ySAurtoCiC1rxvf6oQaAzGKnsgFlmCQNdXuc
         IGi3HMLQ3pW3dmQrVgTFXS9muONdm9o7R0OPLK63u/SHQxSp2P/57ZzxQQ6saSSNwgnC
         AJSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6c8SOjka/RuSlc7rXsQJalq6l+sqFX3z6I8+PiPXteE=;
        b=d733G9wV5M45TII4O5VZwTu9m3OeNTXVjtilR8J/K/47pJBEgZG9+Nw5vG3bS9EUzq
         F02pDws78A+zGzcHhtS+7OV5FcWMWcIjt0xOei2PwgkMCJNKlaND22j/Vq6ZyTRpaoj/
         vdqWEnL72zGX5tzS/H/x2o8Ta035Rsjknerh3aNOQ4pnvKXfGkmWJpYIJLTz3N8/taHX
         eM881/8BdbShV31+5U/tHkB6B3NFEbMFGefI/y/ZE1SiSF4sLK5N/kGeVZCTSLoS9NRc
         47xz8sjj6dXJh1/eibFBNnFpwUAtf1r6Qm37+EWMzvjKjoa+Qmt3UFVLjZlsRktSN0gZ
         u3Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PWEbg5o8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6c8SOjka/RuSlc7rXsQJalq6l+sqFX3z6I8+PiPXteE=;
        b=r+/MYZsv0GOOmC72zRAKYxm+Vt3cd6spbtLk2RCKejmhRuAqh0dhpm57+1MIW0Dpyc
         dUYw9RzntVEp6MnW4AnOZLtuAJyLIa6Nn/C39J+QwBBhaUyXigGLug0Q2Q4Ct/aSDtWi
         hcuvFCRmWX3CgxDbGQhGrTsIRQG1MoiqYG+Aj/nu7wPLBFVWgCol2z1vfTJgaaebMVs9
         VAQdY9rVLEDhOVtQurhaAj2Qx6QniJXNwClgnYIgKC7QUuoUmC3y4jfyorE38cwk6RNA
         kalsZK89GmDBUcAWutnP3LYnIQH6+Seq5GopHsoemSuZVQZTGJyLdc9Yx7zTyMvHqlGV
         N4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6c8SOjka/RuSlc7rXsQJalq6l+sqFX3z6I8+PiPXteE=;
        b=RZuYt/9doTrpOHwcCM+22N/iKv54VoHH2EipHT7ChdlQOwmiEfS/gCVM5AmgRJgrIv
         Cg1IMmqpaVra6VScy+2hdaw+ifNw5bhkR96ace1Pptg2c8CLgir2oVwGadhqMMQmP6/6
         Oj6dmsXhAIlq2BjZOv6hKvjmRI3uibb3ek1qTrcmHQMQshQ1s7mH2aEhJPoPgZc8I06L
         AUDzeJWuwsybl7Avh6L57yxWw9SiYI57cvc7QBsz5qCfYdFgXulEWIpd1fkUht+gsdbb
         rLVCEtHN56NItA3772mjkmIhN0ODOa2AtbpUdpAYrtggm/KyJeoIVM8/oiXwxf+3EJAm
         Ir5w==
X-Gm-Message-State: AOAM532qodz2p9xLVLJay8zdkzK39sQzt6TuKiFH7P6jR3Z/Gija0SDw
	TnjiRzRZISGr+wCfKpYVENo=
X-Google-Smtp-Source: ABdhPJwQqE54AldykamjzzXuCx/dT6LEqJ95wRg3M/+vWHIJEFZ+lPThTOMe6rOQNdryP4KM9W6S3Q==
X-Received: by 2002:a9f:372e:: with SMTP id z43mr1690321uad.54.1589936847843;
        Tue, 19 May 2020 18:07:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2d99:: with SMTP id v25ls100770uaj.10.gmail; Tue, 19 May
 2020 18:07:27 -0700 (PDT)
X-Received: by 2002:ab0:7408:: with SMTP id r8mr1737581uap.138.1589936847492;
        Tue, 19 May 2020 18:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589936847; cv=none;
        d=google.com; s=arc-20160816;
        b=ysCGsjh9skgg6ZCOmhTY6em/uLhdbdwMM1pUFmyps1EUEKzd8tmB+PVbvT7Lj2GRMp
         aiT6JqixlF0BCTXstVFpZyAZOiXQqnuklmGajYiwlrmDMwswOul9ZDK48RNWqjUpMZQx
         DMx2bS7zEvBlNxidnPfBNu/whL2QvDiy+MUiTMuKGJadpPq5uYHaUv/YfqvTLjPtliM/
         C+W37+341AgneDUIqHyrKnB35sFcyTs5HdAPTeoAhiLzo7QiMBDQz+mb2qrBvq0Pv3qq
         MZHtvpBMH/2ShKx+uw9NzVxV95lpAeDwKfzWKvzVHzEhFv844yvmz+PevS+lCq+TzLtc
         Ehag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lG3a8U8tELpoem/GKo/e09JaApoUoFBNqjTmoRhBoMw=;
        b=Jbjvf6YmWPeMN1DxmSnMAMURAFUEshk544a1i20qmiockZnshWNYTz+CsQ9Lw3R2sl
         CeQ5Esaz2t6C5yh1fYf0LIoQ1oLlmWELwFWmMLX0PcGjLUibxOgWxp+7qbVqjOyuStQM
         K/zUTq+dfgyottJy41zHv9eFUcojCn3GegWmNM10yFqjgkn39dlfEYDbXYEFvHVcfh/C
         W+E5zKNpALaDoC1aQ0dhr9QoFswRwEf5THxwzXDLdStLmYX/7Yi17Uqpy3fIhPn+JXYf
         0PXhPK9AOzrl9rsokLMYm8h5cg1AVCjJpFhBIu0IkqwmwclPRavtCEFQHdETIuRtSjh3
         voIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PWEbg5o8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id q123si86234vkb.3.2020.05.19.18.07.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 18:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id n15so491887pjt.4
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 18:07:27 -0700 (PDT)
X-Received: by 2002:a17:90a:2a4a:: with SMTP id d10mr2434484pjg.32.1589936846245;
 Tue, 19 May 2020 18:07:26 -0700 (PDT)
MIME-Version: 1.0
References: <202005200123.gFjGzJEH%lkp@intel.com> <20200519205505.GD444@zn.tnic>
 <20200519212541.GA3580016@ubuntu-s3-xlarge-x86> <CAKwvOdk+JwddxLaXc9S7SMMTye8bDaGEckcs7zu5tEMD0G3Yog@mail.gmail.com>
 <831EE4E5E37DCC428EB295A351E6624952648ACF@shsmsx102.ccr.corp.intel.com>
 <CAKwvOdmoA5ZFCiUQ5fVf7+970Y4bxvU=kYWb49NENQzxdm7F1Q@mail.gmail.com> <20200520005218.GA3101@intel.com>
In-Reply-To: <20200520005218.GA3101@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 18:07:14 -0700
Message-ID: <CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ@mail.gmail.com>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
To: Philip Li <philip.li@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Borislav Petkov <bp@alien8.de>, lkp <lkp@intel.com>, 
	Christoph Hellwig <hch@lst.de>, "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Benjamin Thiel <b.thiel@posteo.de>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PWEbg5o8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, May 19, 2020 at 5:53 PM Philip Li <philip.li@intel.com> wrote:
>
> On Tue, May 19, 2020 at 05:26:18PM -0700, Nick Desaulniers wrote:
> > I think having in the top of the warning that this is a W=1 build will
> > make it more obvious.
> >
> > I get that -Wmissing-prototypes can be noisy, but it's trivial to fix.
> > I do worry what other warnings lurk in W=1 though...
> with some monitoring, so far, issue like unused-but-set-variable is quite
> helpful. We will keep monitor for other issues and feedbacks.

Hey, I'm always happy to see more warnings turned on.  In our
experience, we had to get a sense of how many instances of a newly
enabled warning there are, and estimate how much time it would take to
fix them all.  It's further complicated by the fix going into
different maintainers' trees and reaching mainline at different points
in time, while regressions continue to sneak in until the warning is
enabled.

It may be time to consider "promoting" some warnings from W=1 to be on
by default.  But that takes careful manual review and estimation of
the work involved.  Turning on W=1 may be blasting people with a lot
of new warnings, but if developers treat them with the same respect as
the default enabled ones for Kbuild then I'm not complaining.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPW2p-4fDUNT6so3DrxiJgtUNEFPJcHNf7VROozc4wjQ%40mail.gmail.com.
