Return-Path: <clang-built-linux+bncBDEPBSN75UNRBN7R7LZAKGQEVPPJYZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEE41783A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 21:06:17 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id x19sf3025711qkh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 12:06:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583265976; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZRL0wUIFNaVojlWeNTqO5sPmj4ULLrNtDBq1RTot9aFpaybdMfmxPeG6xEnCUyht5
         uYMaofT9Je1yomJkQfXYHKOaf14ySRrFSWvXOEHLGgRlP3pziYonIhim+QNSAOLQ9o1u
         4l3EqyXINK5iFTMGdlGT+j6LAmRmMDmK/Yl1V1bgkPw6QP2p7puYRpvzyNB5H5i9qbQk
         jjzWQaPyjFyJt2haa5+aayTMlEAMkM8m/cqOfbsO0lz1NWtpNI9KFIFOoDnI6gXA+9U4
         khZz29N2eCvuWZFQqOP+K5fQUt6Pe5n3egrcLn9Y37SiF49vHAFEit5P/nb+pjn5+e3P
         Z8NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=hckUXFMg+WmAFj+1Z3FrKFSQtUtuzmuCPEBxrOZH9WY=;
        b=eeTrt8nzTcWELFc3Wc9Bdxkv5iTzLzA+Me89P99HVBWbK+655asaLjorEBbg73d/wz
         InM/SzHpOqsXkuikcG39vZQ9GSSMIJ+VGdimjgMd2Ud/Lgi/B9swjVo642ODz7zJ5zXt
         ah60g1M2VgE2CSVSxbkMAivUib/8EWwbqX3EqDe6VD7xoccZ5+jR2jEplu/xiuMu6GDR
         S0fs9Y+lUqUAJEpDz/+zeIdudhSXjeey8hMdZxGw9IwkBSKPrun35p8Mj9BejE35KoJh
         0w2GqJqU/hflgBFSYNti+6GwfbvWLtvybIKSWYjI3z99RjMdSZo0IaBXsdF8i6b4OyzU
         16RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DUMndEeI;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hckUXFMg+WmAFj+1Z3FrKFSQtUtuzmuCPEBxrOZH9WY=;
        b=ApNIBfn7y8eS2ZbB7LmO8w5iuBrwtAln30ezTEg+GesZFzq+v//TOhlp8xzJ8tn2dp
         mBHL/f5OQAfIjt/cbsq8YPw3ikUg11nnRviSORLDI+vGrvmuWocREJdOArpMOVZaOcw0
         FuT2reGLWrd20TGKmOVL030sYtH8PH59/K8GlCultjLtR/FeJm1DjYMgALz4zhO1Hh4x
         KdLXBlKtKUaQUZJ6I2FLTmaZ93POut59UWu0mry35hUBNjIUP0FPQawdNuZYYECQOuUb
         NYfnbs5gsw9XIJqwCELhROSuKHNBIeWiVuku9cpkG06NHFWyBLvadsbcBLOb9fEbelNs
         T8+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hckUXFMg+WmAFj+1Z3FrKFSQtUtuzmuCPEBxrOZH9WY=;
        b=IzcWIGj81C9kUbf++cppQLNhwyXJBNsn1rU89lcVQrBvxb0A2ES4iBIff64uBZoUOg
         kdc0tljfOAMIq1aXzYTrFGy5cvyikAeua0CyIM9b0RnfMLTW5EfN6ypULTW9zNgnONfW
         zsZkf9si5VEe+zpy0nAfr0MLNfbNlvr02c6oyWlrWesEc0IMUIShK0CTEF22qtrCysyc
         vdATGsUTo8ELMeDwvbESkJg63knMBokhS/m/H9v34Y0zel/WA6FR3cLEJcDpHSUTNGhX
         2gQisytS8ZzXp9bEK6l8N+NJlcWy7d2LWE7RTzexq/zG4DhA9L8W/SMXr/QPiU5d8jAV
         IRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hckUXFMg+WmAFj+1Z3FrKFSQtUtuzmuCPEBxrOZH9WY=;
        b=Z3SveoEJU6lZamSbFUMIMi+zHJDs5pUdN1Zvq7WttfTnu9+OCYtpRtnEIXN4JMl67r
         EfJ1i3BamyzuvCQ15MEN93/aQVj+zADFVfMnW3fqxgIBjeQxjmdfZvrdGMeYkwu4tLAl
         fOP4frgy7zsU2IsfoOLK7hHJ4JoWBdRy/0w5dHzzBQzHzEXI+14uxr77kQxx06SrYTMP
         NErcthm5nBDMk4R4AW5cemyXT9TK1tkQpC0iwqNMZWbAvt7EHXPMqFkQkx25a5n7c3AQ
         TJ6sH74Wi1/rWo5Uz3LztuYdNDP3HfD6I1QfWVic0HsNMcj2AGFuzvRUEKAHbAknJYS6
         XPtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3sePGSjCf2BKB+S1yrNjjcVkpsHYbMN6Yz/Lm82y9J8GGm7EFQ
	Z5zwUW0rIdTq0wu0JyWML6U=
X-Google-Smtp-Source: ADFU+vsFYF/jNDqZM28ZZXHCgjfv0aTM0rcHRSrGoSKhfXv8siWsymjg1eWq1hKDL/+LNhVeuJ3uSQ==
X-Received: by 2002:aed:2a86:: with SMTP id t6mr6062214qtd.341.1583265975876;
        Tue, 03 Mar 2020 12:06:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls2514626qke.3.gmail; Tue, 03
 Mar 2020 12:06:15 -0800 (PST)
X-Received: by 2002:a37:4a48:: with SMTP id x69mr5613483qka.57.1583265975462;
        Tue, 03 Mar 2020 12:06:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583265975; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8aASQYhHoabgx1fqJU4MOrT/nqRN9J5gigJajoqTBSeybeEnop5RnjUpkTLYj0PJF
         v7PxOvXTXwloP4H4VnZcL9BV5nYDKqHWbqab42BQuuUsLThUC9qbb6Y0IMBYAA7koAs6
         K2DW7oZ/ZaTDg9E4NmTFTn1aHVP4fbeQ3kXnfyqJMWCeiHiCKJedvbYAmQf7T5JULaiS
         /UDJIROQWX1g8GZ74r8x4Qgx5oilFdcIovBs625OnEs/XtPH+WZDLZV9VsQ2WcLMHtOE
         0KSfB9fF+NvgvDXLf4rM1J898XtAX3eBQQ+a9w0y8wB1FSFpHcW+kfAk1n4f3dTE0ZWw
         d2NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=jEKaLTA95LrXk5siOJJk3w+e3Hyr7fPl8lCKPh+BAqc=;
        b=wRstH0CxMgMnvP7HjBCyLSNnAzCEQDVYD/fcroHn0tv3FlZ1r9EKB/9k/NA/CWn8we
         U4T8755oyU5B2q+FWyQERCNa96oT1b6XziJrX1KwUUgDma6uIfDC8DaPcuNdEpMUffTd
         657IbzS9sfvVXNYUCDSLMngHAs/oByxsJqMJQKvjhwe6Jz135/6/Key5+L3Um3QpUleo
         XnJZz6uqcBSDcJKe8NCUgVdC+iUwI2lGcw+3AE5l0suMXIE6t6XMqDzdfopqZqdBdGdc
         G+GOYdR+3D56DfXChcD+6BMfMh9x0vjCPXymdB2ZrlfunQ5Yi+v/hOa8mKIksDUBM/nZ
         zq3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DUMndEeI;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id o21si415805qtf.5.2020.03.03.12.06.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 12:06:15 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id e13so3852086qts.6
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 12:06:15 -0800 (PST)
X-Received: by 2002:ac8:40ca:: with SMTP id f10mr6136727qtm.377.1583265974981;
        Tue, 03 Mar 2020 12:06:14 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id n74sm12811814qke.63.2020.03.03.12.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 12:06:14 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id E489A403AD; Tue,  3 Mar 2020 17:06:11 -0300 (-03)
Date: Tue, 3 Mar 2020 17:06:11 -0300
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Ian Rogers <irogers@google.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>,
	Changbin Du <changbin.du@intel.com>,
	John Keeping <john@metanate.com>, Song Liu <songliubraving@fb.com>,
	LKML <linux-kernel@vger.kernel.org>,
	David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH] perf: fix -Wstring-compare
Message-ID: <20200303200611.GB5550@kernel.org>
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
 <CAP-5=fU=+uYZDb2uSFO8CTJ-Ange4Nxh4mmsOC1MS=Tedois9g@mail.gmail.com>
 <dad75d5a7aa443e39dc20972d80ee83c@AcuMS.aculab.com>
 <CAP-5=fXO+YMO9asspqYdvXATZONCbBYMGbdVNU_3+W3BdeunGg@mail.gmail.com>
 <CAKwvOdko+Qb=h_Pm=oFUnsiBg7Am9u=Z83g8cNyY1QZQS=Mh7g@mail.gmail.com>
 <7fe0ca3e6fb64ca59986584fffa824e6@AcuMS.aculab.com>
 <CAKwvOd=vQjs=nPdCEhY0yd8E6zx6BvMgr2EDQyNztbZf1LaTsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=vQjs=nPdCEhY0yd8E6zx6BvMgr2EDQyNztbZf1LaTsg@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DUMndEeI;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Tue, Feb 25, 2020 at 01:28:50PM -0800, Nick Desaulniers escreveu:
> On Tue, Feb 25, 2020 at 1:35 AM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Nick Desaulniers
> > > Sent: 24 February 2020 22:06
> > > On Mon, Feb 24, 2020 at 10:20 AM 'Ian Rogers' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Mon, Feb 24, 2020 at 8:03 AM David Laight <David.Laight@aculab.com> wrote:
> > > > >
> > > > > From: Ian Rogers
> > > > > > Sent: 24 February 2020 05:56
> > > > > > On Sun, Feb 23, 2020 at 11:35 AM Nick Desaulniers
> > > > > > <nick.desaulniers@gmail.com> wrote:
> > > > > > >
> > > > > > > Clang warns:
> > > > > > >
> > > > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > > instead) [-Werror,-Wstring-compare]
> > > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > > instead) [-Werror,-Wstring-compare]
> > > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > > > util/block-info.c:298:18: error: result of comparison against a string
> > > > > > > literal is unspecified (use an explicit string
> > > > > > > comparison function instead) [-Werror,-Wstring-compare]
> > > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > > >                         ^  ~~~~~~~~~~~~~~~
> > > > > > > util/block-info.c:298:51: error: result of comparison against a string
> > > > > > > literal is unspecified (use an explicit string comparison function
> > > > > > > instead) [-Werror,-Wstring-compare]
> > > > > > >         if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
> > > > > > >                                                          ^  ~~~~~~~~~~~~~~~
> > > > > > > util/map.c:434:15: error: result of comparison against a string literal
> > > > > > > is unspecified (use an explicit string comparison function instead)
> > > > > > > [-Werror,-Wstring-compare]
> > > > > > >                 if (srcline != SRCLINE_UNKNOWN)
> > > > > > >                             ^  ~~~~~~~~~~~~~~~
> > > > > > >
> > > > > > > Link: https://github.com/ClangBuiltLinux/linux/issues/900
> > > > > > > Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> > > > > > > ---
> > > > > > > Note: was generated off of mainline; can rebase on -next if it doesn't
> > > > > > > apply cleanly.
> > > >
> > > > Reviewed-by: Ian Rogers <irogers@google.com>
> > > >
> > > > > > Looks good to me. Some more context:
> > > > > > https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
> > > > > > The spec says:
> > > > > > J.1 Unspecified behavior
> > > > > > The following are unspecified:
> > > > > > .. Whether two string literals result in distinct arrays (6.4.5).
> > > > >
> > > > > Just change the (probable):
> > > > > #define SRCLINE_UNKNOWN "unknown"
> > > > > with
> > > > > static const char SRC_LINE_UNKNOWN[] = "unk";
> > > > >
> > > > >         David
> > > >
> > > >
> > > > The SRCLINE_UNKNOWN is used to convey information. Having multiple
> > > > distinct pointers (static) would mean the compiler could likely remove
> > > > all comparisons as the compiler could prove that pointer is never
> > > > returned by a function - ie comparisons are either known to be true
> > > > (!=) or false (==).
> > >
> > > I wouldn't define a static string in a header.  Though I could:
> > > 1. forward declare it in the header with extern linkage.
> > > 2. define it in *one* .c source file.
> > >
> > > Thoughts on that vs the current approach?
> >
> > The string compares are just stupid.
> > If the 'fake' strings are not printed you could use:
> > #define SRCLINE_UNKNOWN ((const char *)1)
> >
> > Otherwise defining the strings in one of the C files is better.
> > Relying on the linker to merge the strings from different compilation
> > units is so broken...
> 
> Note: it looks like free_srcline() already does strcmp, so my patch
> basically does a more consistent job for string comparisons.  Forward
> declaring then defining in tools/perf/util/srcline.c involves changing
> the function signatures and struct members to `const char*` rather
> than `char*`, which is of questionable value.  I wouldn't mind
> changing my patch to just use strcmp instead of strncmp, or convert
> free_srcline() to use strncmp instead, if folks felt strongly about
> being consistent. Otherwise I think my patch with Ian's Reviewed-by is
> the best approach.

Fair enough, applying it with Ian's reviewed-by,

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303200611.GB5550%40kernel.org.
