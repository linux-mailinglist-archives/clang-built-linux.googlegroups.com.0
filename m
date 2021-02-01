Return-Path: <clang-built-linux+bncBAABBRPK4GAAMGQETTTSLWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C0C30B22E
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 22:40:22 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id c18sf5856862uao.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 13:40:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612215621; cv=pass;
        d=google.com; s=arc-20160816;
        b=mcV2Re1tHUkJ211HO6OnzIJU4p9ydn2FZSJHMbM1ba17GfBODnyq/jOD6meEXvG2Ej
         JJkDeu7k6fUe1RAhZqC1I60ZMlX4KBckhfTmRGlOiKroYximmv4ruwziwcXOKIS3JwUB
         gnXcXDueDB4gbI6Vt9yKtthxJTYO9LFAS7XNcgO2amYtvgINjarhYIkbhTxmp04VQYA+
         7Ir7rWvchXaHQ+CVgO60MjtsidWx+fUwQzjfjRIpNghwyg78M6n3bVUK1JW8n52biO6a
         YnpxWwXzbM1MAIYpBS/O4MDh8IWMT+qE9+eBlxic9wAFBaoUdts6yf+e0zCTLM4Pofpb
         C4cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WQf5aavK+WUa7l4MxJbQ+XeQrYu7pV+hwa8rA2PrRis=;
        b=umSNcHNje6PcqNh4aLeV3ASvD7ofbz7BKJc3MN78VhPBUaEjTvp5Jp/TEJ3XYRqRWd
         E0y/fQx0ByoNmdCwBdjAFacY1KcFuEeBJxZYWkVGCjhBzkSto+HY12dRp7bwOSe9ieqe
         y+ebYv8e+zKs1avWzG84coVRLjPZtm6DDuolelvtMJV8tsE97y+LfO61Ayw2lvcS6gGv
         aQGtDJLEMEZsCL7WlU8YZFvzjdXGQFKBlyCX5MISdy9jJBiisYZ1NLZ9k8x8gEZvcvst
         oRs/noY34iZGOUdIbRZHaSwLw9xZQh+OHskK15mxVmCQj1uXoHpAnske2OF8ODpIEaf+
         4Bug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g7sgU90H;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WQf5aavK+WUa7l4MxJbQ+XeQrYu7pV+hwa8rA2PrRis=;
        b=PIGgvINm7RaXxZlgY02KRs6gF9lWqaM+qgLy4XEgsS3npviim1HCDL0Zdqf53cTZrw
         i12Yle6EJNrbGuwZBKix95nCy5VlNrfzJ7yFKAGfx+DRkzGE7VUJfv1+mO+qeu9uygQA
         E6azXggxHFYA9l1gj5TzXor5soiAC9o6Foh1gmKjwY3JRvi49rnDMS0Q7sPRm+i2haiF
         92cm8kZbcnvHdc8RZvDG10fe+g7+cS1cNxGbg61QQW0gqGGjySiHov45M1v/MrvMOvqU
         UBITlVKGppF4EfvrtDn0HHsJtAjpmnFEh9zmr0w1YU+2acnn6RJf9Gpd8uSH6oHzOKKZ
         LILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WQf5aavK+WUa7l4MxJbQ+XeQrYu7pV+hwa8rA2PrRis=;
        b=hj9b2dibaX6d6yif3tif5PmLgVaPKJigCTZ2iEXRcOhKxttA+xH9DqsYjbrZEoc2jJ
         h/nOu0WkZvawwMBpE+FfXQb6LNTQfWo0iqqotgZGTdkd04x3bXzpkMt6zF20dbeGpwPt
         ngXlCy8L6gHMZ6+L0mr/wwR0AU84XtgVrbyAhY4kbEl320RKqiB0guLW20Lzi1nWTaKy
         sMoYZiqjq5S5+L/VjtbxsAV0z/cBR+4yosEufEYjglaZ4hFLUlEPeYqx0ZOiJh92+0e4
         vDd4Rn398Tvrdo0iH24uqpfNn6OuNH5F+Q+WxrwSIiVzvcVPPN535YdfAaisSj+xbM5J
         GJLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wAGasKQZHJoUVMwWjlP0HsOJ3orTQbeyQmXVM6y6u8Ix/kW/h
	6k4e7y1+57//N89OnU58G0o=
X-Google-Smtp-Source: ABdhPJywy/okMQPkAerv7Tj8LMjwNJSpEl8N5Y57dsH93nkNi+EdtTkdRsWnp4s7StZCSyv7wtUpcA==
X-Received: by 2002:ab0:4e29:: with SMTP id g41mr10735157uah.77.1612215621324;
        Mon, 01 Feb 2021 13:40:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls1356280uad.10.gmail; Mon, 01 Feb
 2021 13:40:21 -0800 (PST)
X-Received: by 2002:ab0:6cf3:: with SMTP id l19mr10394604uai.55.1612215621030;
        Mon, 01 Feb 2021 13:40:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612215621; cv=none;
        d=google.com; s=arc-20160816;
        b=J2LHBzhxGW54Xd2n3d52WtEUQ/kzhZp4rcEohxnCo8errmbqQ3Oqeil2srlbrAqqsv
         XHOqSL3scCiBIAjyW8rkJv+jnwDZ8vgmPHxBNqbdTruZfu5//n0WMhXkdSMY1Do9LArg
         o7dXqC/w3/UqUX8aesFJJqH/2bF4M/0wN7QGJD8HhViR1xLDnLmzS1Rbe5kiRVanJLeU
         eK+REU6KFod4TReKIh8iC0pnMA7CuLwv9Q5ExqSfkHqHvtxYvHltg/nAYbQTMV1We11a
         2ZVKJfzy50phX58RIwSf16xidMiO6LTs25DnLieHYrzq+gepJw+gx9OoT19nmTQ6Z7Go
         YbJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rAadk9lTnWAuDOqix1J8AkDV2X5nYnTlaBkVT0hB3/c=;
        b=rSt5N7UOgroE0ygADHHJ+ngWXf398gTvH0BBcHdQz8F/coevRTqChErwcHL61LVQCa
         Lzg3n90t1s5kzVIF8h6UNhonLhVmHdZU3tlJc015refQgcet/PLHSc7TjCctYUR1RFRz
         aLdBl71SsrVtof/SNvcWzaZQIk67UNhUyYTU/L3ZTdP4RMiJjQKyqishifoKqdxdqvUE
         O8tLi0yzfin/88iBE+3vg7V6KRywQNQ3AzLWlmLVBXxE2J7GhXk64+FyXnFT2tqgiOLQ
         sJKAq3Qk6XzuaRfkKJ1H5lRoZcFeOiniZZkfFjph2p+Ak7FRxDCTKog+qsdkaRYBFqx8
         vjZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=g7sgU90H;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q11si1409067ual.1.2021.02.01.13.40.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 13:40:20 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B6FDC64ED4
	for <clang-built-linux@googlegroups.com>; Mon,  1 Feb 2021 21:40:19 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id x71so20476450oia.9
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 13:40:19 -0800 (PST)
X-Received: by 2002:aca:e103:: with SMTP id y3mr586346oig.11.1612215619015;
 Mon, 01 Feb 2021 13:40:19 -0800 (PST)
MIME-Version: 1.0
References: <20210129212009.GA2659554@localhost> <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
 <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com>
In-Reply-To: <CAKwvOdm3sFE=hpai0NLJ_UAYNG2RO2mZGY33uHqmFgZm7fy_KQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 1 Feb 2021 22:40:02 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Wgcp__qHepBU06dPr44PsOxMkL_SvTssqYyWtGA0EQA@mail.gmail.com>
Message-ID: <CAK8P3a0Wgcp__qHepBU06dPr44PsOxMkL_SvTssqYyWtGA0EQA@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=g7sgU90H;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Feb 1, 2021 at 10:19 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jan 29, 2021 at 3:36 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > I'm actually more worried about the reverse: as there is six year
> > long-term support for kernels, do we expect to be able to build
> > the oldest kernel with the latest version of llvm at the end of that?
> >
> > E.g. would a linux-5.4 that today can be built with clang-8 through
> > clang-12 allow being built with clang-8 through clang-21 at the
> > end of its life in 2025, or do we assume that LTS kernel users also
> > have to use old compilers?
>
> I would think so.  The newer compiler should always be better or an
> improvement.  Can you think of a case where an old compiler must be
> used for older versions of kernel sources?  Stable has said they will
> always accept patches for newer toolchain support.

The most common reason is compiler warnings. New compiler versions
tend to add warnings for stuff that used to be accepted by older compilers,
and that's generally a good thing, but it can clutter up your builds if it
happens a lot. We generally backport those warning fixes.

Feature removal is another case, but there is clearly nothing to do
about that: If clang drops support for unmaintained architectures, those
architectures architectures are frozen in time, and presumably mainline
clang won't remove them before the kernel has already dropped them
first.

The hardest part would be kernel code that accidentally relies on
undefined behavior, which can get changed by the compiler. There
are sometimes regressions that cause a kernel not to boot when
built with a newer kernel. If the kernel fix is too complex, e.g. because
it requires dropping support for an older compiler in return, backporting
might get tricky.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0Wgcp__qHepBU06dPr44PsOxMkL_SvTssqYyWtGA0EQA%40mail.gmail.com.
