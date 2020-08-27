Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBJ5EUD5AKGQEZB4CF6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BA34F254FB6
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 22:06:00 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id e3sf5199425pgs.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 13:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598558759; cv=pass;
        d=google.com; s=arc-20160816;
        b=xsi2P5drtrntNkdPTeQtne3Az8Sau5llxYXpWeMEHF2Me53WzS0Ce1d4geuLC6PLg1
         v9ZNI0NDqgiNRmL4RBCaR5e3rF+vfLYBj62nh3ejxzqEi2uax77iIF+wAM0Y0KEIpmjV
         GTxhWfSUWV/aqORjgPUPnOzYkaHzg2zN6zB+V4O4OxzuFmskubEcaXlNIEyb0B964O9z
         PHSXVmGTugItvccAgyhnSFh73ihUOxjGjCHeB9IcKq0ZapCSDozXD0zKjNNHfGsSAq7b
         jyYSO78me75nXTzdd0z34Qk7XSd/Vsl80qu9YlUKvSvIRzW4/jrdPIqZ+9dyyw7QeTow
         E3Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=G+L01G0SwBsOnfeidw2Hjw1PXdYY1wPiNqs3jnMGS5I=;
        b=srgIoGn2SOu2miRRYJ2Q9CJZP/b87oyG6QUsvzxtrJwckxuJH+3rVJWKc1foRjEWHY
         qX7QIbxfNCj51Fqgu5CMA05wTf7DxDuBP8dJawnqhAJjYMfEzYj/82+ZghZBAs/SSiSU
         W34SE8gvwoxSlhoAA+mwQoyt7yKvQKqiC2UbNhmbM+zEGan//rMF6cQvmMLG4dYrFyN7
         iLoe+Kz89BOXM5hCmQb2FqgvfBb13eM61SDEgLTmg0OoI9UpGGFQR8AW55F+AqFGlu19
         q2EaESfGxwNH7FZi/iJMUd4g3q44g6+Np3d7CYWyDCDUNw4jKyl5kiIIttvQkauVGjdZ
         7cYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A0KhOfe6;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+L01G0SwBsOnfeidw2Hjw1PXdYY1wPiNqs3jnMGS5I=;
        b=msrdRcO+6pUHgoxh4L3Q+HrQ9g7TBKMz6lg1hvlIr0QLaTGKV8dI68FVFg2B5IDG1O
         ltXvsMTrWoTBoRRXoXfj0m5nz1ElXp2FAkMxyDHYuiNY6T35jOsYOApmna7rSsZeHPlc
         qyp8xfO2VPBO4lKJ7mk+tZmNDq/J2a/gXsk7vpnl3nmsgpoE6Mqx3IVWzyglJ0SFy7rP
         cccwGLchQ/M2KeG1Nhmp/HQRyRRfnG6NNceMyfvnDbRPc/jmk+pFiGMEjc9g0K5ieYLR
         GX8WciYbDV/c4Z5YodmtZ4K1M3UoWXceebOzUuKjuIKdhGRkdG9LdwAbouJU0334ybxi
         7OSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+L01G0SwBsOnfeidw2Hjw1PXdYY1wPiNqs3jnMGS5I=;
        b=lMmm2Gi+qHHdgL6jSnGZFelP27FCokB/QTAfGihUxale+nyfaTgVIDNF+A/35h+q+M
         5Ia2u2x8TeaR3UUHi6ULjFvusl00qgbYlc/h4JmRYyK3EeJIkFxXS1nFMGsEcUOxb1Ai
         UxqXvlUZwFIaSbW0txT8DXFge2HfbPCw3N9SZgo6sunPO2qp6+Lzw7n7od8CX2t7Jx06
         XoFaihZsOKjLGq6DnTeaVQ4YiylYkIpSif4LqUQ3Hg3qPXGsSGkykz9Ve+kXYqEyCqDO
         aby3tn8G8kpzSENWp5i+I2aFQE+nJCBU41OnX+8ke0sF+c7Lp8BwinIbsauNFGNQfooY
         Y8ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G+L01G0SwBsOnfeidw2Hjw1PXdYY1wPiNqs3jnMGS5I=;
        b=S4JA/R34avoC5yMXcaA32SmkYyWZcrh1XzTaFHChGeeAT2ZcQrQUo4FmTg/S0pvfKb
         FCM5LRxljSmoVc2DCPd2j49TyJHqRyrjBFRHIqlL052VxahdrXr8Jk1aS4WPwBo0PKTL
         M8fmt6PNe3B8wPhh5RVFQBD9gEXlJqJ2QmHYEyqdnYDmpvbdphIqp5xSeCF1KRFEfyyD
         OyoXKQDgjXB5QKN9qZyC2nPxLUqqgeqBnt2q6+GoAc/CQHri2D+vWgsK8um5EHpaHjHt
         CP09NNc8SO9TElS29oRaEililH7C82ZO0U0Fxj/O+Svz4/sJpNhPDcVeoX024z+zj/sz
         LpJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313jqVEhcWZt5PNCjHM8OSZgxq1H21URX5IxewgM2lCoiPTKuyP
	+Cvw17apBawhBdERuv5S2Dg=
X-Google-Smtp-Source: ABdhPJy/u/RCBVwLxy6CbZg7jBa0BY6LoG03o9VE3SK02QFnHehL9E8s9MFyB954HCLsIqLxwMXj7w==
X-Received: by 2002:a65:4847:: with SMTP id i7mr15670338pgs.385.1598558759407;
        Thu, 27 Aug 2020 13:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls1306008pfd.6.gmail; Thu, 27
 Aug 2020 13:05:58 -0700 (PDT)
X-Received: by 2002:a63:5542:: with SMTP id f2mr15511635pgm.196.1598558758838;
        Thu, 27 Aug 2020 13:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598558758; cv=none;
        d=google.com; s=arc-20160816;
        b=s6wNMDB6i1O6vGKtJjLeJEbAbxEu1FWFI3TlnOMjkA0adfi64pVNukr8ZbNVchfpmN
         rdpWVPRPE/WOH2BpzUMbjgql/QXILpnMjt9b8rcEmegDtUp+zRJHx5zqMJa8Mk2GrMyN
         Q3xGHvjbXueXgnP+gPeLoCxOzgSvdc8WFFPXJI0o0Itu+8jodnOb1ELbf1mRJPTfE4+3
         yFr2kGJAblPx3gKzrz0SMvf95wKMZfXaONn3G0QLTvNs/BjYyyMPYkf2RzPo+y7APFWK
         0yPUJ9/jAU/EN9eiLgthqyAOi7AlXhNHqK32oQQZTkTqNJV1/HSgMzCA8FZulnS7PTlL
         NerA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ub0Bu40C+ajnp8gPyXN/uxHJUWCLLoo1qQzKb0q6mUo=;
        b=uRyeiASRPf1tKXa3zYo7ONHSC59Coz1caWTNuZGDnZYCp6WtfsaJoagggCfedXAuRo
         6s6OcXB4qiYPbFfH9ZvX4w5AMBqxTIi3caag778IJp62AufZ9gYW8VRCB6s/bn2BbU35
         i4gshEI7Mrrf6ZDxKjXado/zmJulugKKAEHVvjgK/yt9QHJUx9RSs+tSaTHQvArLYmCw
         JnsC0z3pZiJ9D4Eejj3bglgtsFJtusjBfkmfL0CLL12Pv6axi6IgzpDGlIUXKSYY48+l
         sUMchsFmCkF61Y/RSF34w19ENRyluj6umU4Jee8bIrhMbhsfajg+50edYut0zXau5JgJ
         cDIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A0KhOfe6;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l26si273127pfe.2.2020.08.27.13.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 13:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id t185so4330862pfd.13
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 13:05:58 -0700 (PDT)
X-Received: by 2002:a63:c543:: with SMTP id g3mr8431840pgd.203.1598558758497;
 Thu, 27 Aug 2020 13:05:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
 <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
 <CAKwvOd=YrVtPsB7HYPO0N=K7QJm9KstayqqeYQERSaGtGy2Bjg@mail.gmail.com>
 <CAK7LNAQKwOo=Oas+7Du9+neSm=Ev6pxdPV7ges7eEEpW+jh8Ug@mail.gmail.com>
 <202008261627.7B2B02A@keescook> <CAHp75VfniSw3AFTyyDk2OoAChGx7S6wF7sZKpJXNHmk97BoRXA@mail.gmail.com>
 <202008271126.2C397BF6D@keescook>
In-Reply-To: <202008271126.2C397BF6D@keescook>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 23:05:42 +0300
Message-ID: <CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw@mail.gmail.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Sami Tolvanen <samitolvanen@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A0KhOfe6;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Thu, Aug 27, 2020 at 9:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Aug 27, 2020 at 11:59:24AM +0300, Andy Shevchenko wrote:
> > strcpy() is not a bad API for the cases when you know what you are
> > doing. A problem that most of the developers do not know what they are
> > doing.
> > No need to split everything to bad and good by its name or semantics,
> > each API has its own pros and cons and programmers must use their
> > brains.
>
> I equate "unsafe" or "fragile" with "bad". There's no reason to use our
> brains for remembering what's safe or not when we can just remove unsafe
> things from the available APIs, and/or lean on the compiler to help
> (e.g. CONFIG_FORTIFY_SOURCE).
>
> Most of the uses of strcpy() in the kernel are just copying between two
> known-at-compile-time NUL-terminated character arrays. We had wanted to
> introduce stracpy() for this, but Linus objected to yet more string
> functions. So for now, I'm aimed at removing strlcpy() completely first,
> then look at strcpy() -> strscpy() for cases where target size is NOT
> compile-time known, and then to convert the kernel's strcpy() into
> _requiring_ that source/dest lengths are known at compile time.
>
> And then tackle strncpy(), which is a mess.

In general it's better to have a robust API, but what may go wrong
with the interface where we have no length of  the buffer passed, but
we all know that it's PAGE_SIZE?
So, what's wrong with doing something like
strcpy(buf, "Yes, we know we won't overflow here\n");
?


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VeA6asim81CwxPD7LKc--DEvOWH9fwgQ9Bbb1Xf55OYKw%40mail.gmail.com.
