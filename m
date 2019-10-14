Return-Path: <clang-built-linux+bncBD4LX4523YGBB54QSPWQKGQEA7IBKOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E56D69E9
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 21:11:53 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id s28sf17890011qkm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 12:11:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571080312; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wl2IJW5F4vamWDOP0LWotNmvJRZjFXCOYEUp4mMYxuTIJZ9RfJhnIEy22IxnfoNJAu
         t5tYMHIB1cI871/zHhpZYjKaxTcg5NjF5NwIs0c5eXSSqIHUVrmBVlW1ocMdXKV8cOFG
         y1zlorKx3j2PYn/SmXt3lH9rrx1SJmSL5H/6RauiqIx36t1GxNA3anFfFxncqtGAKvWn
         cokfAiy5ExQ1eAXWN7L4vloAgwu7gO4YLywjbj7H1UaHFzumeGAxZeFDRm/q7ZXbfRnu
         mMGTKgaywTC7hCnk6F535ZXkIJ/lLcVcw1mFLW/PoJ3D0YGVm75pnPxBSOIrDxVxSQo2
         4e2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fNmShX1CjycrrTQsktoxmt/t2PgjhZCDskOVPoesDiA=;
        b=Sw3MpTtKghS/UvNqc8qcUKvm1bPtRALWhIbCyY0xyZMZOiahfLBxXO/DSu4cNqZv2g
         KFAHQuneT+CMNOjTb4gkF+rmhxUOvKmPYAlcLkFoGN2vbmrQwSf8CLx/tHtgG3LOKRJa
         flzb94b4hbKwKtJsAT+81RblfL+cW+DeRSZSMdCbEUTIOOOWiRY/6tQOZOTssDoNLgYs
         amkBC/ScKQoPW0Y+P2wRAoxEzC5x4+zuBnAfrW1NvvaNviGA8Cr+R6HfdSZ2n36o8h3Z
         7uYcaKJis+8VoKz1emFl4H5kRaJcbThEE4z4qoUDkJ/QGXz+8x9F8H8gUcZhDwpBks8t
         uMbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fNmShX1CjycrrTQsktoxmt/t2PgjhZCDskOVPoesDiA=;
        b=nqjKgfTm/O8QMuUQKtHdu4xxQK7Nuj4VCpmCXa79Ki0WNKUpgVjr9c6xUct4qQ1yrK
         MeDrXyjqAy0O2+zoJTMz3hONayqDovaU5WimAhOxVvDIBOfxABTNf0L6kEqOxFzGtZGw
         kX+RxCzpCzf+WOLE6pUZcEWtEyhMYEXfmpck7qgBk8munvahNqDCUYHeoUq/y5ASx9Iy
         zw3La9v9pwzpt2oxlCG8SrDe5mFjHaSIpkpeeHmHnijk3ABOpuypGR5BUlhf5fKPY/en
         AszUVMfo7CXAJApxVBvz5IzrfzMUwdEQt2vSJXc5Z41hIKWr9V0U1ewE+M4HE402Z6f0
         N9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fNmShX1CjycrrTQsktoxmt/t2PgjhZCDskOVPoesDiA=;
        b=GzWnJmVar0opZnIyUrqzAo/mx+500MLwSG6s0OkTM9rt13M4yqJvtOUKt6MkwZ29Vg
         DhCa3RqFV6qAb+YHnWMt7y2uZp0iAPXLKfaACaJpyQfxwpw44OVnwlQewDhrj0Qsu5f4
         iJ+z+HJzsQG/WlgPYIJNoSqydxX8CFEvfvMCpTW4j8ZQkNPEdgC8qS4WidIY9wPDss3Q
         yqjqBPq2F1Sqh0+5G44o3+RU+DHW7BVqKrAFHVufJ+N8eJPiGUMCYCeiOyk800KIWmyX
         zj33QSWaSMfLG/ff+HaORTi6AmteQtsMmzPuM2SI5rg8KH5tKtsPDvyiDFhqOgabmwLb
         nS3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOd6+QkHMquucRbOF89hgC+KeG3nqBka9rlpJsgtGQtDf2ypWg
	WWQMzOlxE5+tvjJlGn7oSNw=
X-Google-Smtp-Source: APXvYqwoosina7g7lX7TCiFb5b+R0o7N4Vw4VauEKRays8F1uSmZSx9vl8JdE7com8g0tNs05OgCEg==
X-Received: by 2002:ac8:2e3b:: with SMTP id r56mr34785140qta.6.1571080312691;
        Mon, 14 Oct 2019 12:11:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4e04:: with SMTP id c4ls4621318qkb.3.gmail; Mon, 14 Oct
 2019 12:11:51 -0700 (PDT)
X-Received: by 2002:a37:628d:: with SMTP id w135mr31184837qkb.6.1571080311139;
        Mon, 14 Oct 2019 12:11:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571080311; cv=none;
        d=google.com; s=arc-20160816;
        b=bD7LCRgCUSjPfuP67X8K+vaWu0Yxur2QWKcVwSSao2rFUVVJtMQJSKV2cb66SP0pR+
         2e3IcopMUwT0SOWTnPHSc8ldwSaB2lu1mS0dEPcCPGoBE4u3zKKGatwV8jbpRD6C+lGL
         n/imXF6WyhHF/9kIi3pa0wx+urmGUr0FZjlJWBP382HDVFLJM2qPNJeBat3qi8nNMtXk
         rDbSgNUKvje9MSuLfJXgupX+UE6t5GdgLnyXsjcC9chS186fJCyMvSh4dmH9AH27Cj9e
         XrEbThU9kc6RlbrbvVCgG2fjvJnrZH4TBpytmyBQLVnrzVDF6f9pA0kvA9ewcwFHcsyz
         uVwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Lw+dlNSOW1blwyz7LrsxUFCPlh216aneJ2xW1iaJxcA=;
        b=doc6QYmdjKuvs1DmpEGqPxj9zmvRXtqD5Zqwl45dp+XNUuAbSe2KFZfzK2M3soKb7p
         DMEPpC3smgIiNVvVIsnKEdulB9dcia9hRYWPVoaxADLty4ZJPqkjtN5ZyS1xDb/7vHEN
         02uOWjb2tRL0TcfqxgvH8WUXMdI8pQBOYuAW9PEe9NJlyeEyykH2kHI4SIjguHPnpyD3
         zhe5fvn2dK1rdGSNSK+DXP+BmqNdwYuvMDYjzj239phqv0mDerHHzMW384Qr3APj7Hjs
         S60pb6JtoUmCljFFdI8j2OB198lcfmuGWlcShGOLKmDecMwVqlhJXeI1mSqwiA0DtLKP
         yjDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id o13si1057449qkj.4.2019.10.14.12.11.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 14 Oct 2019 12:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x9EJBhSD000977;
	Mon, 14 Oct 2019 14:11:43 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x9EJBgBM000976;
	Mon, 14 Oct 2019 14:11:42 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 14 Oct 2019 14:11:41 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Message-ID: <20191014191141.GK28442@gate.crashing.org>
References: <20190911182049.77853-1-natechancellor@gmail.com> <20191014025101.18567-1-natechancellor@gmail.com> <20191014025101.18567-4-natechancellor@gmail.com> <20191014093501.GE28442@gate.crashing.org> <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
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

On Mon, Oct 14, 2019 at 08:56:12AM -0700, Nick Desaulniers wrote:
> On Mon, Oct 14, 2019 at 2:35 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > On Sun, Oct 13, 2019 at 07:51:01PM -0700, Nathan Chancellor wrote:
> > > r374662 gives LLVM the ability to convert certain loops into a reference
> > > to bcmp as an optimization; this breaks prom_init_check.sh:
> >
> > When/why does LLVM think this is okay?  This function has been removed
> > from POSIX over a decade ago (and before that it always was marked as
> > legacy).
> 
> Segher, do you have links for any of the above? If so, that would be
> helpful to me.

Sure!

https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xsh_chap03.html

Older versions are harder to find online, unfortunately.  But there is

https://kernel.org/pub/linux/docs/man-pages/man-pages-posix/

in which man3p/bcmp.3p says:

FUTURE DIRECTIONS
       This function may be withdrawn in a future version.

Finally, the Linux man pages say (man bcmp):

CONFORMING TO
       4.3BSD.   This  function   is   deprecated   (marked   as   LEGACY   in
       POSIX.1-2001): use memcmp(3) in new programs.  POSIX.1-2008 removes the
       specification of bcmp().


> I'm arguing against certain transforms that assume that
> one library function is faster than another, when such claims are
> based on measurements from one stdlib implementation.

Wow.  The difference between memcmp and bcmp is trivial (just the return
value is different, and that costs hardly anything to add).  And memcmp
is guaranteed to exist since C89/C90 at least.

> The rationale for why it was added was that memcmp takes a measurable
> amount of time in Google's fleet, and most calls to memcmp don't care
> about the position of the mismatch; bcmp is lower overhead (or at
> least for our libc implementation, not sure about others).

You just have to do the read of the last words you compare as big-endian,
and then you can just subtract the two words, convert that to "int" (which
is very inconvenient to do, but hardly expensive), and there you go.

Or on x86 use the bswap insn, or something like it.

Or, if you use GCC, it has __builtin_memcmp but also __builtin_memcmp_eq,
and those are automatically used, too.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014191141.GK28442%40gate.crashing.org.
