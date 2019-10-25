Return-Path: <clang-built-linux+bncBCU73AEHRQBBBJ5GZHWQKGQEJSUWZKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B96E4127
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 03:43:05 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id n34sf519735qta.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 18:43:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571967784; cv=pass;
        d=google.com; s=arc-20160816;
        b=gq1jUD0847e148wRdMCNMtVOhyBb222fR6SYP4Dj5J19N9d+GxELLKyF30kgplwEkp
         xZ4yHvmJ6nOZcS7udWprUsVm8qBwIqPew55hz3UUWE6TFlz3KNSl244wTCwWatTuG1GN
         Z96SRFe47sMUHrcvb+6FuoSGw9DpW9TeDRMT31bh3MIUdDTisaUo0G4Qh1kwof2GJhEE
         m+FRmm4EwGdW/LG4qeVD9u/MpfMZQezC9yu7hsbrnYF8xvfowuwTAgnF8PRLyrOGJjcb
         glkkBRP72r3OLtoLrZnCs/NkB1y6Q30oqO22OhR3MSvZl8kVAqObZG76Isgq03eKcTmW
         uvaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=olHgkWmWA1Lh63lGjnT27vmfP6XnPMn/oYV9Y9F11QA=;
        b=DwaZ8/xUjQx+3HU03HUk+S/ygkrrkMAA/nuqrzJLZhYw9N3fsiKHId7rAHCYMxe7/u
         0hKx7s49MYD3WNeVVqg1rjxaZpsxnKpJ4Yj4GsrMXH/ydglDZn8mRHlGEz5vHTZLHO4L
         aEmCn0y/H3OaBjanumYWo53iqcYyroYqWsJGEZjzPvxM7hVjSIG+7NJGh8ZNYyLQlgDZ
         LpwvG8Z6O4v3Q0myU7BL1PmU9wlQnAaTCYtOGz+dHgJph/3KQDrKvTMgZLTQ13Mlm1Dz
         ffI9arZiCb+xS326XPDE0InYcTUjHwBupZWb0W/IsW33aFTlksnrFrSoDzgj/FSX66YP
         D17w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=olHgkWmWA1Lh63lGjnT27vmfP6XnPMn/oYV9Y9F11QA=;
        b=lyFRf90SeEf+dq7ZnMXKJCblRtz8K9c7tdOU7QBKgjPxIXWZc394uLGCi2hY5bG/hb
         zueyDQ31PFe/ypXGb7uCQfAP4SzpMK3CIYdaSk0cuTO6iQ2coV8vvzESenW660BFCCSB
         1+1YrI5Lrig+fsjmoXoKFyOUgJfWE7FF1/pQBOfFwnnyPil57S+NQ81GL5Ng7FiCKmpk
         blpLSpzGEs75uqLuBPpEgKW+YuRvSKNTbW18bOP1z740KmYCsaSBWE1QINj6h0VL5aHI
         UGlPlqIifQF/+tTtNxK5JWS7czL9Yelfyh3ddPZGKDmWZdjmO4hYSBx2PygmDAnYmOh+
         p58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=olHgkWmWA1Lh63lGjnT27vmfP6XnPMn/oYV9Y9F11QA=;
        b=VLDYJK8ki42qHeN1Wo0V5xoKHM+I4m48LxmVlOvfZ/qVudPTgSquXzQtKqoqNP4yHF
         fDvM04wXCnzT5Bfpo+dJwyMZzyhYAuyLIgC/3DM10A+VS2lcEd7cmVUOm43ndeDmM6VR
         XtbMxpLOvtr9qwbL4Ur0hg0NyBiklw7kJcDKHqExMsXIV81ZORMKyKwLROuhb9qcVjFy
         kxpvgawOWGx7KyONvBsCDovguUsjqp9H1LrwgCU6EiCHDPSjQXcaPsIMiCrBB1Ypzzk7
         iJehZGYvyX1E3SSa3cgvYrMcYl6QWUAcmnwWJDq6xWKUULpiGxbpxOJ7WbgxIil/k4Vo
         k+wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXnEbfdFJIJC38tks+uAaAT3N1sRdhtm2KU51oI6lJijN27MkPD
	eMAl5SCJPIpC5sXC/SwQPr8=
X-Google-Smtp-Source: APXvYqwjWxjCfvr+d+UhPS3R2hNKWUTdxTlw3mKnr/hh5TEr9BkoXtEYWa4uE798fmZlkfC3np3DyA==
X-Received: by 2002:a0c:f787:: with SMTP id s7mr911835qvn.221.1571967783993;
        Thu, 24 Oct 2019 18:43:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2276:: with SMTP id o51ls2391846qtc.12.gmail; Thu, 24
 Oct 2019 18:43:03 -0700 (PDT)
X-Received: by 2002:ac8:4608:: with SMTP id p8mr700808qtn.345.1571967783433;
        Thu, 24 Oct 2019 18:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571967783; cv=none;
        d=google.com; s=arc-20160816;
        b=h7KHI3ELowAhoG4yXeE+AkVMw9dvQD/U9yQHB87nRhUwAqFM/gxkXfGO5e6MSYtGyf
         wwLMCrsymT4wZ//V6aopw1IHSb1fv6uJMsnLuKq0X7rvojevNUz5yC/71LkYigSG1xGJ
         i2CmS9RbP+gn/CPDTBfr5mpy/oEmwLXGE+UXNCSZ8Wi5KkCaFDFohU6tSlZ+81Qs3WAU
         rp+fskOQ9NMfq+TA7nbS9n7GJotnqUOmCGrduOTg25gEtillX8yKa1WO6krgiO2hIeCe
         xqNnQ1nNO2Rw3Opz0UeaRRQM+venjBsZaNbnQb2hWLaMB42YA9aVLaarIuofN9V+cv/Q
         G5eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=R6OJAZZENVv9PFjkLIYFDwbPruXUs+9xhrPzJQ/WLPI=;
        b=E3XuhCGMJwc5f9FxWx+43COWkOxcha/e2InNWOeEYiXKS/RUf+s4tLwj4+xYM5aGvu
         wPF8/HR07W7N71n2Bi4Mc5wXOqB6yOp2KebjfFR55sdafqgZmreHKh3VUSjflBkNH9FW
         LpO5nETktpo0oJznwKXjEIittGaidh7xuQuP7dqHAlOc14STd9jLhj0Jmp1W30sddzJj
         GB1OYpk0FKAVd96svdMc7TS7Sk1bbAxIl23NA/h/f/k+ZpbcGIPTSW02X/ovvqMglAUk
         gJX06XDHL4hj1tI9ac6/4eDMzrdWK1DkWP61fq1s84Z2L2dUks+PiO/aMz9JVk5RA9bM
         e08A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z41si20623qtj.1.2019.10.24.18.43.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 18:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1EF3721D7F;
	Fri, 25 Oct 2019 01:43:01 +0000 (UTC)
Date: Thu, 24 Oct 2019 21:42:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave
 Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
Message-ID: <20191024214259.1b37535c@gandalf.local.home>
In-Reply-To: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191024225132.13410-1-samitolvanen@google.com>
	<20191024225132.13410-17-samitolvanen@google.com>
	<CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=mph5=ys=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mph5=YS=goodmis.org=rostedt@kernel.org"
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

On Fri, 25 Oct 2019 10:29:47 +0900
Masahiro Yamada <yamada.masahiro@socionext.com> wrote:

> On Fri, Oct 25, 2019 at 7:52 AM <samitolvanen@google.com> wrote:
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/arm64/kvm/hyp/Makefile | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> > index ea710f674cb6..8289ea086e5e 100644
> > --- a/arch/arm64/kvm/hyp/Makefile
> > +++ b/arch/arm64/kvm/hyp/Makefile
> > @@ -28,3 +28,6 @@ GCOV_PROFILE  := n
> >  KASAN_SANITIZE := n
> >  UBSAN_SANITIZE := n
> >  KCOV_INSTRUMENT        := n
> > +
> > +ORIG_CFLAGS := $(KBUILD_CFLAGS)
> > +KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))  
> 
> 
> $(subst ... ) is not the correct use here.
> 
> It works like sed,   s/$(CC_CFLAGS_SCS)//
> instead of matching by word.
> 
> 
> 
> 
> KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
> 
> is more correct, and simpler.

I guess that would work too. Not sure why I never used it. I see mips
used it for their -pg flags.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024214259.1b37535c%40gandalf.local.home.
