Return-Path: <clang-built-linux+bncBD4LX4523YGBB5EIXPWQKGQEX2QMY4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3909CE0018
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 10:57:25 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id f11sf1534834otf.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 01:57:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571734644; cv=pass;
        d=google.com; s=arc-20160816;
        b=U+F+ntsX8j7okDewSbPQI72yWWpoPQKBCdrKdls9ZekLog77JXo1PyGnzA5frp8wse
         c5JG0rKWno3S+kOCHAWUP/mJeCUqqVy9HFLPeZ3LTMpW+oK4bKqz5J6nZUzyZe+4QWRA
         QbBMX107J+1P36Ak7QR6vHwisRH9fKDSPWdYSE4o/UN5ddptX5pz2C6kGyGrn7YHpC6/
         QCdS2qomnPk8bPNs0jLrh9FKLH1ogyb7PJlVRkwPHsIHIeq+o+ITNWxiDzwp6RjBDTZu
         8MuiaRZ0rkA58XGBP5znWPuPv10PJtgsnD2PLV8iOVHli7QZzfrYbCCa3yTMfEglWBgx
         LBLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SSqWZKhorTNbvo0NXI+r2rJ9WKgkBV5d0ids2lmetl8=;
        b=eYj+Xgv58mEXrnfr1WjCc+ocv1dOXRpWAyCRksl0ZxLth4i62/JUmsdlOz23UHhsBY
         0Htzjmem4ocS61dKxsT86yDMb7RvcGnGXCamKc5Uwaj97W/O87CbIwaKwNZcJnQ1b7jK
         N+dGf2b7B5jelB4xX5DBQgzwZj3GzBQ165Pgi26ySlS+9JWehOf3UhVR67ojxaEUo6I4
         BrZvvlPisjWOoft5rFtIMJoRxtp1cB/MSuTJCiadA2axPLbBGCKsxZ/B4/Uh7x53Ip/Q
         46etmxye9Yt3iIHL1r/8G6caBkdRA6fh6a+2THkK/QjLCn5iwXM4U7ciRv1Iu1R0EFmz
         WQ2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SSqWZKhorTNbvo0NXI+r2rJ9WKgkBV5d0ids2lmetl8=;
        b=eNj3gOfDmDIFx7XxlYaXRD4ChjNx197gRfs92HPusDiga5cijuTuvqAQdfGJexwqDu
         ymEQa3w9vTU1tbh/jPR6iJQdCs/qfq86nQtu3NZnWdJyGEDCwGkbZHTsiAOm64UBCB5c
         rR4FXcse/xZnArbTc7OWDChwrL4kKCEJlDA0cEZcavjTJVvuttZMSVJ7sIYvJw5CeKC6
         haWXENYfGAxNx1tfxtd5fc6HPG/PUJuMTVTUNtuNT3YOdAONhmrsopp8XaNaonjCqv0V
         P576/Vf8t3jxH+uSwTJZkag9nGtZUY3kKDjBxBvshgkpJ7MujUbF/sADwFnXnfrcI/U6
         ufwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SSqWZKhorTNbvo0NXI+r2rJ9WKgkBV5d0ids2lmetl8=;
        b=XNDbJF8Xfyffc0roMKETGJIuCC7DH1ZZG3GkhLn5oD3drv7BXxzYuNO97rl9NK7x75
         4PSaFoZndEKVpuv2d49q2VPJfL7OZQhglA3DNOa+DKc/tCTSACvspt9uQjmP4gBV7N1s
         zmzi+7OesMdbN18Vj5F981jU8VbqZt535NnPUmIINdfBUV5iTS84r2roL155GnfEmpyH
         y3GHmkkvE2GzEQOXlKKKgHO0xNvGn0TwtikrRA4dJvW0oSL4k9CK5TtIFKfAFzYovPhg
         Yx9apjYN3EPrRboCnLc42vowEhdftB8J06qEzB2en7CK69pX3oB5DhJ4iR6YrVmR09lY
         uBtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRMJrC3p5EHfoAjM1+TzdAbsa57kvzvHRHoU4YbgQO280eEclV
	r1DRtpPPWvwqGAPpqKn/boY=
X-Google-Smtp-Source: APXvYqx1Rh+iOWpeDdRd92OPqImPkTTd821e0i5wjCsbeNGwbb16IL1856OvOEweeGgbIkOzk4alug==
X-Received: by 2002:a9d:4818:: with SMTP id c24mr1429435otf.333.1571734644166;
        Tue, 22 Oct 2019 01:57:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls2637160oib.14.gmail; Tue, 22
 Oct 2019 01:57:23 -0700 (PDT)
X-Received: by 2002:aca:5395:: with SMTP id h143mr2005645oib.74.1571734643757;
        Tue, 22 Oct 2019 01:57:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571734643; cv=none;
        d=google.com; s=arc-20160816;
        b=Io7Kg/lWKUJ9MXZ2mQFgD1bbGQQ5wkujcx/HLKDCWqj73ke+dYx64qvUXOUllitIif
         PJy14+jj4xepd1scTo12xI3o0Rk4uZ7U29GPbd2ORy3xkwaDP0zId/Dx6Pi7GLeuk7qv
         ze/Ff6uE+cSMWIUm8sostGDaAXhQeKhI8d0AGFCjumlE3vBo+gai7at+ZLdbMmcKIWzA
         zXyqipyJN17kZAqcDqq5hx5JsPsfaGhS2OJ08lQxSofbLAhlNOPuplMistWJgb2tW2Tj
         cOm9pRUYjR+mBcAjlVbV/8aoCKETvwCPJ2DwqQtPJnpzUdlXhscsQOfYBLXY4cuQrLMB
         SK9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=eBfMkrs4iv2dAEwglaqjjrY61/ACXQ58yErP2/NQyu4=;
        b=pg3YIL5Q92Nj3vhljt4LKr+GIx/297zmdJ2LeZ1XsWaww8q6E6TzMW4U9kdZ7+6t4h
         uRZY5anYa2kjQOVmpGxU1oStfPje2tWHpY04kp7NV8PfkIz3zY+5QZefaa811aVIIdsy
         JgDEWilj0KBIUxoLP/5E5yCcfsxb6SFCew1XIElSjLgGqVCKQCQcqDBVpoWwDA/HIR34
         l/Wh4bjGX9Kf8YStMm04lfFo+hcS2xmKoY8f1hNzdeNp4jAxL/woZtGiUzyc2B/YmsC6
         IFc2sZthoxdIlvHYmHR/6uNEWRKjyY+CK1fmAUAtMYDdmDufW73Tmk5fN5xwG6M/DswN
         WioA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id c6si970958oto.5.2019.10.22.01.57.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 22 Oct 2019 01:57:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x9M8vAi3013910;
	Tue, 22 Oct 2019 03:57:10 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x9M8v9Dv013909;
	Tue, 22 Oct 2019 03:57:09 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 22 Oct 2019 03:57:09 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Message-ID: <20191022085709.GI28442@gate.crashing.org>
References: <20190911182049.77853-1-natechancellor@gmail.com> <20191014025101.18567-1-natechancellor@gmail.com> <20191014025101.18567-4-natechancellor@gmail.com> <20191014093501.GE28442@gate.crashing.org> <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com> <20191014191141.GK28442@gate.crashing.org> <20191018190022.GA1292@ubuntu-m2-xlarge-x86> <20191018200210.GR28442@gate.crashing.org> <20191022051529.GA44041@ubuntu-m2-xlarge-x86>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191022051529.GA44041@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Oct 21, 2019 at 10:15:29PM -0700, Nathan Chancellor wrote:
> On Fri, Oct 18, 2019 at 03:02:10PM -0500, Segher Boessenkool wrote:
> > I think the proper solution is for the kernel to *do* use -ffreestanding,
> > and then somehow tell the kernel that memcpy etc. are the standard
> > functions.  A freestanding GCC already requires memcpy, memmove, memset,
> > memcmp, and sometimes abort to exist and do the standard thing; why cannot
> > programs then also rely on it to be the standard functions.
> > 
> > What exact functions are the reason the kernel does not use -ffreestanding?
> > Is it just memcpy?  Is more wanted?
> 
> I think Linus summarized it pretty well here:
> 
> https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/

GCC recognises __builtin_memcpy (or any other __builtin) just fine even
with -ffreestanding.

So the kernel wants a warning (or error) whenever a call to one of these
library functions is generated by the compiler without the user asking
for it directly (via a __builtin)?  And that is all that is needed for
the kernel to use -ffreestanding?

That shouldn't be hard.  Anything missing here?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022085709.GI28442%40gate.crashing.org.
