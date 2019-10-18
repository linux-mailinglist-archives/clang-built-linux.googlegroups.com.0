Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSMXVDWQKGQEZ6JMPOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2D2DCEDE
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 21:00:27 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id l6sf4860809pgq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 12:00:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571425226; cv=pass;
        d=google.com; s=arc-20160816;
        b=xsBbuWno+Kx0LPy2z3rw4MXkI+kRvwH8mEzNzYJUwV4zYQjWlUJ/rKB55pvYlC6tF2
         hF4LWV4Nwaycz63zKpZDoOj2t8qLs6pjUzRUuTOkmTlQQMawCzhKPs2+DzrtkeoTYlxo
         B7L4Yjc0e44AXkGPv82fn1Ck4GOdNDFWCrRmSqqavRZUa4VH9JrAQq1lNfDooMPz/3/E
         hMS74BtWaZofX4mf2JgtIrcNOQ8IP/YNDa57Rx8Z6jw1eAykX4Dg0qAAnZZ5wR0Ntnm3
         2P95QaoHQK0hi9P9i66WGhAD8XB/8seyOqUPYX1LPueectWYQGRJDM3f/XGXSTJNGPgV
         cRiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=dS7QBUMkjFGRWVxocQBV0yaODn6BMd0sQHaXPJZRyas=;
        b=pk4E7jLgzRAnsL4u/Sx3QNxqOkEIlyjwZfH701H/bQsc/sWqtY7urJtoOR6DPn31+4
         k7y0jaa5dcp4pF7Bkr+KbNIpbGiZ6ZfjLOrEymf3HNLPIGStfb3d6BnLEXBO/2xQMYhJ
         5r/lrqFEodKGbdxQzEPlGXyxggXdDdLdG+9Z2ap6gKqFqRDdmkhtfyxxzzBA1o1xbvlk
         N5uFqWkuUAiaG9sKAgyA3dsRr4aABApucgPGdUnMwmucyuJRnWNyhEaiPPE4IjUZHA2c
         H11G05eCvq3dCX2SP3JU28kJSErmZy/kFe70xlIfeysxatAOFb/tBgICyuZG3j3FM1Bn
         0SPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZI5aiYWM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dS7QBUMkjFGRWVxocQBV0yaODn6BMd0sQHaXPJZRyas=;
        b=aTZNMPKUkr9poiVjZ3F8A7OsmZF0sqRdEE1sknvJFjNscDZBr0mlVZOTAzBYuYJoOG
         xX9EEB9aBylZNYpfpIbpqM+TSsdtX0kG60KGQssybqUQgFGggopdZXZ+oQJQ2E8dS1Ek
         uuCbZJFB6MIITw20Cef2hLrdXS6ltNBvHqGnQuqUEhbwVUlaPnp6yZJhxdWT+v2T5Jff
         0d++bfyxxG+YjbM1CowOYutPTIUINAXA+ayKIcwBwS4jQ+9vzZ+W1JbQpAaIEStKPVh1
         CZcMfWfGYhinbIxk0iXaCKh3G9AACLFgtWEYHsXAg0yUWKR5JxDBJewHnJmaIEZ2ouKL
         0eIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dS7QBUMkjFGRWVxocQBV0yaODn6BMd0sQHaXPJZRyas=;
        b=cnsPkDJXBcpbC/5tVjXKOgL3UsZXVZONA/sDp0/dz0u1krgm73kPqgiTX8jWnhxR1R
         RvZW0XTkUVgFQGULB9jhYpwMnGQ2UsZBdJbz0WAqqs/mFsQbYzWqqJW7fKyesEEoD2kN
         cH3upcsKDIQAmb83wTTNmchE4lWd67Bwj88F7nSw5UV1GlukeZbHkJuLadkz4mkEpoxs
         026QT6BlQzqce/yiCzfpt8OLIlVQvKr3ph063onRzLjzyp8skUBIy6H8QvY1lTe/Foi2
         L6fASMFP74QeW/Ut3AR76iWhLD16N9pB0hJbHy0PNgFUVkOkhXSeZTIIeOP8OcLzSXGa
         Dkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dS7QBUMkjFGRWVxocQBV0yaODn6BMd0sQHaXPJZRyas=;
        b=QkQ28LYn/6ieiJIM/BQ/a+vpmDEL8plhVTrovpYxTngzVudQv6cIug7Va7WxpPrtEF
         UgZLZs+hfzjoNAgZ9b4hBfHB5nTqN6xD7NHRnkwgH2ZuTbR1F8A63n27K/kRyvJ6Ez9d
         gUkSLtcg5PUnYRuPUfWGItHo+TJewK51LyaAPbhIwIK75fT/iJOp8VM5JbFhKMmCubez
         YCffaNeCHmXX090Dc91Repx2+RQbw8OWNZR2Ajhb3YCP0cbmiFDxTEHK8VlxNCgC5UKc
         pSVUiVS9qW7fO48ornQj1U4QqxI4G2hbGLZ67hI4ff6ilol06XpQjx3R6kT6bLKPIODT
         vBUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXAT/GTSwCTDOLIdQPUm+DqZM0m9h09WKrif/yDGGzpcMWUXOgy
	xngLejbN6czgA6mljWk1qoA=
X-Google-Smtp-Source: APXvYqzMpJubaG8TMVEeU73aYNxtnBOMEfR44bxct0FaEwaESXmOPhjI/GXnXs5TKbXscWc5cAbd3w==
X-Received: by 2002:a17:90a:9dc5:: with SMTP id x5mr13318420pjv.85.1571425225923;
        Fri, 18 Oct 2019 12:00:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1103:: with SMTP id g3ls2014536pgl.11.gmail; Fri, 18 Oct
 2019 12:00:25 -0700 (PDT)
X-Received: by 2002:aa7:99c7:: with SMTP id v7mr8535173pfi.165.1571425225499;
        Fri, 18 Oct 2019 12:00:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571425225; cv=none;
        d=google.com; s=arc-20160816;
        b=Ye5T+SBmh/C2Zz00CgDUfkE96v9gxT7CyUVOMj/B7cQ09MUMwhhS0rBBC1Nu8AdCZi
         p7fCiYkdyLv57kGe65gNYduqRRWzuVBiEsF03tiVjFPU0bJJGWfWfLQ63/RuejgPBEXs
         MF/zdw0FCIyxp6D5eeyf5uwGU+R+FFoQwdNzsAq+dj4LbaY3VWkEDlT89cXLHGEL7Awx
         zM49bht2Ipuicyz+ZIhvYt7MkHVfynn6825p2Ca4dhOwgcrdbj8lDCO1f/HapS6c2LJp
         F11nMgbprVb3H4lXvSWIJLvK222gbIzBgC36pt0rM6eLECZOUVzCJNoUzgGzN3r97NYO
         Jxzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t99ObJB56KhBS/WNpgsgAnYcJ+G543s7eRggbvF+GSc=;
        b=lkouRLB56h7dDSlIwzf5FChsvI0sNrY3mLqXuDrG6ZB976WyB4OGTxQczP4iGpHJPr
         cOK2FasGV7upvAnk2ogFvckYLqu9HrzQWvwRi7ImjCz1KQ9Tv7bBObxUcaPiePb2dFk3
         0WBFMYsOFArsxfGppdpfh5IKUX9uU+mZOImHeM67yrR56KmdazlNwI6ntU6jeBCfsiFZ
         qem5aRPv81OML7qeXozPMbxDYRgpHaHBo5Zd+D9dUQHPMsmFHmnl11lksSnv39jBTLXn
         g/3xvPC0bjLPMev7BIUxFJM0fMF6FEORQY6kpe8SdaTLaKF/NmFaEKIEfy7+r1hvBS/b
         Yn4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZI5aiYWM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id o23si372792pjt.2.2019.10.18.12.00.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 12:00:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id t84so6062702oih.10
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 12:00:25 -0700 (PDT)
X-Received: by 2002:aca:1b04:: with SMTP id b4mr2309849oib.81.1571425224537;
        Fri, 18 Oct 2019 12:00:24 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u14sm1745760otj.61.2019.10.18.12.00.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 18 Oct 2019 12:00:23 -0700 (PDT)
Date: Fri, 18 Oct 2019 12:00:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
Message-ID: <20191018190022.GA1292@ubuntu-m2-xlarge-x86>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
 <20191014025101.18567-4-natechancellor@gmail.com>
 <20191014093501.GE28442@gate.crashing.org>
 <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
 <20191014191141.GK28442@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191014191141.GK28442@gate.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZI5aiYWM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 14, 2019 at 02:11:41PM -0500, Segher Boessenkool wrote:
> On Mon, Oct 14, 2019 at 08:56:12AM -0700, Nick Desaulniers wrote:
> > On Mon, Oct 14, 2019 at 2:35 AM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > >
> > > On Sun, Oct 13, 2019 at 07:51:01PM -0700, Nathan Chancellor wrote:
> > > > r374662 gives LLVM the ability to convert certain loops into a reference
> > > > to bcmp as an optimization; this breaks prom_init_check.sh:
> > >
> > > When/why does LLVM think this is okay?  This function has been removed
> > > from POSIX over a decade ago (and before that it always was marked as
> > > legacy).
> > 
> > Segher, do you have links for any of the above? If so, that would be
> > helpful to me.
> 
> Sure!
> 
> https://pubs.opengroup.org/onlinepubs/9699919799/xrat/V4_xsh_chap03.html
> 
> Older versions are harder to find online, unfortunately.  But there is
> 
> https://kernel.org/pub/linux/docs/man-pages/man-pages-posix/
> 
> in which man3p/bcmp.3p says:
> 
> FUTURE DIRECTIONS
>        This function may be withdrawn in a future version.
> 
> Finally, the Linux man pages say (man bcmp):
> 
> CONFORMING TO
>        4.3BSD.   This  function   is   deprecated   (marked   as   LEGACY   in
>        POSIX.1-2001): use memcmp(3) in new programs.  POSIX.1-2008 removes the
>        specification of bcmp().
> 
> 
> > I'm arguing against certain transforms that assume that
> > one library function is faster than another, when such claims are
> > based on measurements from one stdlib implementation.
> 
> Wow.  The difference between memcmp and bcmp is trivial (just the return
> value is different, and that costs hardly anything to add).  And memcmp
> is guaranteed to exist since C89/C90 at least.
> 
> > The rationale for why it was added was that memcmp takes a measurable
> > amount of time in Google's fleet, and most calls to memcmp don't care
> > about the position of the mismatch; bcmp is lower overhead (or at
> > least for our libc implementation, not sure about others).
> 
> You just have to do the read of the last words you compare as big-endian,
> and then you can just subtract the two words, convert that to "int" (which
> is very inconvenient to do, but hardly expensive), and there you go.
> 
> Or on x86 use the bswap insn, or something like it.
> 
> Or, if you use GCC, it has __builtin_memcmp but also __builtin_memcmp_eq,
> and those are automatically used, too.
> 
> 
> Segher

Just as an FYI, there was some more discussion around the availablity
and use of bcmp in this LLVM bug which spawned
commit 5f074f3e192f ("lib/string.c: implement a basic bcmp").

https://bugs.llvm.org/show_bug.cgi?id=41035#c13

I believe this is the proper solution but I am fine with whatever works,
I just want our CI to be green without any out of tree patches again...

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018190022.GA1292%40ubuntu-m2-xlarge-x86.
