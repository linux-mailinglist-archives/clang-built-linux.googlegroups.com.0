Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYMKVDWQKGQEUX3EVYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 01443DCDFD
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 20:33:06 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id q9sf3132137wmj.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 11:33:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571423585; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8bGyg8Lrw080WICp8O5iu8idsXDYl4tMsErv9/PFIVbEWYTAzdwYd2fz56TFC1vrt
         oR106K+zOe6Row3/RJI1p65NTYXghBIDR8EOVWYdK3z3T5Wcngjffccn++E9c6cPFtwi
         m9APxlWWZ0Zgb5TI2Nn57uIcDDAAgAngqNXq/QtRBgdfa9KRcbNxp4D8DP0+VtM9RYZz
         jfsakbc0cf4yPET9VvVOoeDwgDFkuRT1s4TT3w5Nh8sSClm9x+T28Ief6PWm0OQnsWX6
         CNqhDkcjnV1UJ2fN4LLgI3/T1VdRV/SS5UVLBVJMgjMSy1u17lJe088a0uYKQtj7LR7o
         b/rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zaBa5c8evnLhmmrGf7v+O3ii9djkx5LJYLEheuwQOhs=;
        b=w1kGP/D7wc2xLUXENNuhCaqAngeitxUzefb8wrGz8CTKGYDN2MGH5jb/9IyzwS1d2C
         bu8lqs+5XTQdNXULo9a9alF1wZHJu1NsSgilydhJy3rzoMs9YPYZ5dyxDNWmq70zA5cC
         jgx+CvlZH8lTU+pMOKco/mDrcSdLGAuDiAwEcBCv6hEOL3yyMYf2z3SVN7l55E14ybn+
         qvbti7z+rJ4VMHm5vXWwDsUXZ225QLkvu3z+XWIgF0EKUksAMS31ARsm6Q/MhzbvvaRi
         Axpp16TFmZA6O/O0nFRwCs39FgLO18IHTlmgLHurQnMh4vv0HF/Ka7KGH4o9hLwP7XA2
         Pmjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7PltKw1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zaBa5c8evnLhmmrGf7v+O3ii9djkx5LJYLEheuwQOhs=;
        b=ICzdN1XkcaUhW2poUPWCDsGzYRkmUYazdRTTDj8Cc0M7NHLcPCAH7EKvEkXzig9FDV
         X635jn8ZVvcAPVrGcRl5oAhtjz21Qb7veVU0lLtcOntVAustRyVTHTF9eSzCWobq4pKs
         F5uEXFEx014Gdb3CGRsFbF9NF73On/IibrDfLdnlH9IBwPteAhLmsM0cCrazzg/0cEE+
         imt56xDL07Kw5nLRGsEQRRAQ6g7htN1ouXViXkBE+JXp+lhuR66yoktjUcwJzH4KA6wZ
         4J7YfGlGmdWlCm/qoIoihNFKCoPh94oqvgccYPzpCQxuULBhvFCxFAnIGy4J7xIDijts
         ipXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zaBa5c8evnLhmmrGf7v+O3ii9djkx5LJYLEheuwQOhs=;
        b=fzlBExlkiNFXu1roy5ZDvBgHCN3E5Q62x2LCJLZml0KdTAxtlPGsVY8yHeur1cdbpt
         dHUGPTokQmS1an2yEfDslPQdfHWOW3RrhsKN13dhPTbb0WLHjNIlb/bClp3nkJNydRJJ
         yR7dljCgpw21amMS7yaGmsNeRgoR0RWXhFQ/kdn1gdP9RbrQuRqSlaMx8tL0krZNmtxK
         gR7L6lCjQ3h+fcW0P3lVHM0j0xYJlZfaxA7f5TwTqdoPbC2m6Vazjiv9G+ORYmivzO1O
         wqWCUi/6k2WKiFE70QRiVN8LkdSTFEvlDYrAjGIni9occlm9jlEsxyQJVzBcNog4TUvW
         Qqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zaBa5c8evnLhmmrGf7v+O3ii9djkx5LJYLEheuwQOhs=;
        b=WOSuKxeBRa4O6mW3d28GspDvrFPp9vaVjI2ieVRGMuqAYvYtQUBzxrJh7ImF2qklKQ
         u4BKUmrUKzRvsiqIbYymZQnqMMw3fd8VeY65YogE5Jf70DBdTjCXeHOsztDxyvyQtqI+
         6EoApsn8EJsMmhcHtNHfXNejxRPIr/6DeBfI+CG6uJu4bvQDq9EEB8s9zzE6rlXs/Pxl
         ImTfFY4ZOHQrqWEq82aJH9F/xKkS/u+whUWIDG5NFSX5NUgbZiSgeQ4vGzPjQnlsntyl
         kquND6xIPPu9XQYin9SY6/5WOkPVUWznCa6wKHFPW5NKjJqOidPKtnUBu3Qig96h3M33
         soug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWPmw4/2/VQwffuHgx9k8+jmgh6TS/lIP3uJTz1apZlswqr2SIa
	wu6AAVqjLz/vRCGZ/9Vs5p8=
X-Google-Smtp-Source: APXvYqyr1HOJToT0pDG2TnLkTyogoDrJ6sYSXFDp1fj0U+5dg0PYzZItwovSxuR6u4YWLFU/nEmWgA==
X-Received: by 2002:a7b:c40a:: with SMTP id k10mr9509269wmi.115.1571423585578;
        Fri, 18 Oct 2019 11:33:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:54cc:: with SMTP id x12ls3213410wrv.0.gmail; Fri, 18 Oct
 2019 11:33:05 -0700 (PDT)
X-Received: by 2002:adf:8526:: with SMTP id 35mr9729929wrh.266.1571423584988;
        Fri, 18 Oct 2019 11:33:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571423584; cv=none;
        d=google.com; s=arc-20160816;
        b=oRTIfWJmecKXI1JFwpmovVsIbDqWi/5wJfE64Oa0DsB1CtHLJfayOdA22MgVFYoZqT
         WvbuTeE6Kha4lBcSqb3LX/rNSJGe5iRBxaivOB1H9TwoLdFIeN8sP6uXmsUKtX76WaE9
         QLs/rML2b5QGTgz5cVIkWj2GYeXEYHGUKBipFpYj6MyguhoitkMck+hmbMXTn3FmKAxl
         pIQ6diCN0X7Xkwhh6LbEnoihmw47dQ380qs77SgTVoDc2BNyJLKDN3g+AXNYB++N/tTv
         yfagRT5tJKnyviGuWPivJBO2tYUWIBdl3UXCsD4o/g7DwNGYQ0Or/f1OcePhiEL6AB/p
         Gr+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GbeDXmo9y5jCjWaekiMahqEUs5l1VadqHf+/T7BBGBs=;
        b=pdzRjpJwriVFQIww69D6VL+fJAnyrsUa+0IlY/EHCNbEB8NaI6qC3E2wRkLHgeg8Kr
         cHWLGn07fUQ8FQ9XNXAw/H8/khUIPysUMybyGFdPdX/aMht5eGTphXPb+de56SHA3VL/
         MEsZTluVTah6NMjlpMrRao6wR3nb2Eo5T91Uu74Xj1CgARqhs7vEuQRcXt4RTVOM8IOQ
         3+KiOR2yqzASounx/Y/dMVoI7rHDeRT5dIooacMo3AHT76fgGexj0NgpeZJ+rcp0I3k4
         wLaBx6RY9sJWB48ljbB1+536SldLtmNchGEeheUXmrdD0/8jTMJmV3sQA8rT/6VzegCB
         wf1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O7PltKw1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x8si453841wmk.2.2019.10.18.11.33.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 11:33:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id g21so4320102lfh.4
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 11:33:04 -0700 (PDT)
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr6942077lfg.173.1571423584708;
 Fri, 18 Oct 2019 11:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
In-Reply-To: <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 18 Oct 2019 20:32:53 +0200
Message-ID: <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O7PltKw1;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Oct 18, 2019 at 7:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > > index 333a6695a918..9af08391f205 100644
> > > --- a/include/linux/compiler-clang.h
> > > +++ b/include/linux/compiler-clang.h
> > > @@ -42,3 +42,5 @@
> > >   * compilers, like ICC.
> > >   */
> > >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > > +
> > > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
> >
> > It looks like this attribute, (and thus a requirement to use this
> > feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> > (as noted above)
> >
> > I think it's better to put __noscs behind a __has_attribute guard in
> > include/linux/compiler_attributes.h.  Otherwise, what will happen when
> > Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> > happen).
>
> Good point, I'll fix this in v2. Thanks.

+1, please CC whenever you send it!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DPSzufQkW%2B2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg%40mail.gmail.com.
