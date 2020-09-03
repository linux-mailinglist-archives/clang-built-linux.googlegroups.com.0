Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU6PYT5AKGQEBOHP6UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D1125C80C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 19:28:53 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id r15sf1986239pjo.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 10:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599154131; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtnocDkx6o9x6cPj5o2B3+9/UWkQ14avQfyhjlHH01fDaVjlIzzvEVfCy+f2etK3+t
         TWv+9guVkP2Yx4bybeJEjvNpy6613N+df1aNgLaa0U7cA7nhf2QsWY0CR5VlykCvk/qO
         9LVVDzXuGaFUxiNgWBXsf/Avs03AIwkKKTEiF9K4BVxNNRdZ6LMZnDugNHJlzQJJE+rP
         L2PUrfWR67GQ4twNEjq8Cot/CSNqYGFyn+Uvwl1V2JCn409KMo8Quk0goGxu9iXqyf4J
         UAfSgwzJkK4sayv1Dk4JtMyZ0RD86pYq+SEKx869Z8T9Rufn/i9x83gUaO5E4bD6UdN/
         6A+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=E6iOBMY6CGUjMDhsq4JxhOdKc3baA3CRdK7VwN6lLKw=;
        b=UW4pE5P/GaHciOBETfNcJLFywKPZnV1zbWyU7J/bjNx1IsNsyvD0Ywcj28/++ylhlt
         zURKGDbm2EKnHbHS9HGQgtr8gmF2A12XeQItCvdmCVkuwDOSKLecaaLgwO2BxdJCEYgS
         Dzhk6Him5qWxpp3zTnQ/Zy5FYDM64yBI8f3Po0FxbsHzzPzizqtQJdh4fsUM1OrTaPL7
         ONaNEARPHeUMOW5zedZgzYl2Xu93Tt3VnQxiDvE0w9mTjprJDSjKwPi5PJYxwQbSilNU
         RYcwRDKfRGiQQBVTCwPd75P0/WDUBrNYVZ67FMx2GSFJTW6hYxZiplpp+HVGSNQeQNGj
         Ep5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RkokC5+P;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6iOBMY6CGUjMDhsq4JxhOdKc3baA3CRdK7VwN6lLKw=;
        b=o4pprRrrlma7QesfiDRq6NdB2uv8iZ607RwewSCsN9WWgUjYBf3zHissRaHzy6V4IC
         ut4VpmZZiZj6BKY1AWaiHGjTc/yeIo24QRqFeLW4xNL+lcYoy1a9YNurVl7T1KclvZMa
         cDy4auGHW0x8S5prRnGYQeSth1bi8YaFZo8cz6N2+VvWJO5XupMNz8kYuVFef9oBF1cH
         EircWJNcevtYL/NINsCOuwRSJfpJ+v2FvHo92OezY+fSOuHL9VRffH8Zh/1PcxGmU3y2
         xONyEqPLAvjgIkk+qVD0oWEO9UZ2xCxK4fptUha2OwmFS/JtzOSHq4tLH36SFOwggHOV
         h6VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6iOBMY6CGUjMDhsq4JxhOdKc3baA3CRdK7VwN6lLKw=;
        b=IGV87Na8jS/AYaPUltyCU0SsNd9PaXgQ0t3ImwHKUf4epIELR3qnAnzY4AezuzXWJH
         dOgbLrMwK7ERiZnDlBFErlSLh9wmiomnXlF/uGeoLMeEEH7Qw1HDCra/pMIFodnHnwF1
         sfah9K1Gj9XtG/1TbdJRGRCRGYClSNfiARzMbEnXYf4D5/MZpQnr40UStd9F9Z2NIAB7
         V0fdh15yiy94KqMJJtP+t6YuFSPg99lQiXATLyqE0JnIcLR8Ysi067EKBiBuWqNUEf1p
         cWBsWaXp6NF0bQdtaxU7HIQ2b8OMgQ3VAlRiEcP1wLMaX7iV0TvnhP0vcQ8PbLFFeoh8
         RrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E6iOBMY6CGUjMDhsq4JxhOdKc3baA3CRdK7VwN6lLKw=;
        b=Ou6F1vDwaantUjvX58325fqEfb+oEWSP+xaGRq0Hi4oSo8Frjy1qh52NODD408188Z
         ZND80lbn8Hh/6etT40t334+HGzEad1y4nIT1zB/7QBcNpTllC5WIe3XUOLAbjI12PboN
         uOk7eCJ2auDof75s+JzTDdPOTRsWDVwhWVOhyiWyL/t2cZapaKZUZnBCzFuAMWn61Pcc
         f0gr2DmwHPD7n/TvgMjaxASHO//hDpsx0uIU3pgygUa5AETrtHaqSf48EAcc3b/2SNxo
         xDU7ICRcb6CP4hofDs+vTRvdqaEXoZtynfQxST+80oYRzDSCeuNNcIK0oMvxN0LHYO3n
         zfuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UXSiLGhkkOyOHz0ccjBQ9TicZ4CG6cBNv+wLZ5Ax+64oyFCjq
	z5g2eQ+WQEp0jnFBNQrEQ2o=
X-Google-Smtp-Source: ABdhPJzy34w3Hzd3TtITiLTMZQucMk5tH/7AOp48z+VUxC/bgBSWbyvne3I/MfktqswbBGVjlvBP2g==
X-Received: by 2002:a17:90a:8593:: with SMTP id m19mr4325034pjn.104.1599154131519;
        Thu, 03 Sep 2020 10:28:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls2652927pfc.11.gmail; Thu, 03
 Sep 2020 10:28:51 -0700 (PDT)
X-Received: by 2002:a62:b608:: with SMTP id j8mr4815974pff.126.1599154131026;
        Thu, 03 Sep 2020 10:28:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599154131; cv=none;
        d=google.com; s=arc-20160816;
        b=q7qLfkcE6mRoPF3HvjWoKNZ/1b61OBad2sVxtUFOjeG89OJTOUg/hWi/YvkcmiETeT
         WkFWPePrxSuQMLs9PybarWHxMVKqvf3JyxsvqNbC1M8v27Wj1dy38j7zUbS5cTOrtc7T
         CkrFElPmAwBu4zdebXIw/SkgIb/+6Uv/lT9v9+wuABAt4M3jO7MNKkVLRr0CgrgPegms
         IDZqVOrW2645Sjs5QTTfaj5oOA+CdMm4kf4jC+qF17vAL/nC7DiBY+KPPdjryNYVXEMw
         +gmUdq/rvozEJccwNMA+xKErfIwiSNS+9tvC3xa4AVLQYj3BsLF63zpYhu9gv+efE0wL
         pn6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8bZzDR/YHw07CdeBNRtY2rjnE2ZQYtI7F2JutfxZiS8=;
        b=MaLuBDnGLpONUL0eYI9/VknhyVsuKilhnI3IzlGRLFQXqev6OgBLYjAx7nqanzuY87
         oAJAjkbPXRiotu7P5GNbWTppxOrYME0yLx7c2XJ+IauVNrCZWMN9cxwktmeXgWtqIWXa
         3qGrssm1EX5O3VkHIfQKmZOq+CxzQ7uvx9znfJm17Wl5dEVKQKtOkqvCANsOZVUY/9ON
         PFR/Hn/DrzK8Ndwgajgk79j0A5jcWvQLddJ5uGv0UT0WmpRpHV33U9QgwENTNU4zCnle
         1nxm925eU9npo6KdvtUzPeikdK+tn7fI7QKELmX95sgWMv2mBOj9R6+xil9beemAplYF
         xEXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RkokC5+P;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id lj12si249141pjb.0.2020.09.03.10.28.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 10:28:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id f11so1706664qvw.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 10:28:50 -0700 (PDT)
X-Received: by 2002:a0c:c98d:: with SMTP id b13mr2731192qvk.1.1599154130174;
        Thu, 03 Sep 2020 10:28:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 64sm2698328qko.117.2020.09.03.10.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 10:28:49 -0700 (PDT)
Date: Thu, 3 Sep 2020 10:28:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
Message-ID: <20200903172847.GA1928336@ubuntu-n2-xlarge-x86>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <CA+icZUXCLyGmYCnHSBJ+8s5QdbPRr+fsfpW43M7pYFEDFOOdJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXCLyGmYCnHSBJ+8s5QdbPRr+fsfpW43M7pYFEDFOOdJA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RkokC5+P;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 03, 2020 at 04:06:43PM +0200, Sedat Dilek wrote:
> On Thu, Sep 3, 2020 at 12:59 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Adds a compile time #error to compiler-clang.h setting the effective
> > minimum supported version to clang 10.0.1. A separate patch has already
> > been picked up into the Documentation/ tree also confirming the version.
> >
> > Next are a series of reverts. One for 32b arm is a partial revert.
> >
> > Then Marco suggested fixes to KASAN docs.
> >
> > Finally, improve the warning for GCC too as per Kees.
> >
> > Patches after 001 are new for v2.
> >
> > v3 just collects tags and fixes typos in a few commit messages.
> >
> 
> Through which Git tree is this patch-series going through?
> Do the new LLVM/Clang maintainers already have their own Git tree @
> git.kernel.org?

I would say this should go through either Andrew or Masahiro. We do not
have a formal git tree plus I believe there are other things that need
to happen before we can push stuff to Linus.

> Is this patch-series material for Linux v5.9 or v5.10?
> 
> - Sedat -

Given that this is not a regression or a bug fix, it should go into 5.10
in my opinion.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903172847.GA1928336%40ubuntu-n2-xlarge-x86.
