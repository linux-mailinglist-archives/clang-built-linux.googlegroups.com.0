Return-Path: <clang-built-linux+bncBD63HSEZTUIBBG6LQD7AKGQE53F327A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 783612C5DB1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 23:01:00 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id t185sf1689869oif.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 14:01:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606428059; cv=pass;
        d=google.com; s=arc-20160816;
        b=UG+afZQuZdWXEl0M00Rbn8qM20rC+1bM5JU4sX2UUi4k4NxI+K6o3Zv5HjQIlsr2V7
         3faVPBoZEmadlnb/5UfbMTlOu7u1hdip3p0vtuYjgGdzVQabN1sfMXhYqC80poT/Iz4M
         SG6/fBck2GObF0J330Kw0oTeZNEWl+2yT6H4OAwbhNeyGUsseXnc35bDNlZnS17eHxbU
         PXxS840zrhmS7rh1jyuml75mD7LiuXhn7Yobgjd+kPfFIMm5i6mwblGRV/8xtPtbp31m
         vVbVfJXLUFAsa+n1XQpHvceMqNGmpJ54MTibvrCIolqbnVumT0YVqb2hiOdHCVFh4Ef1
         pxbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PNVInedj8cSx3vI2SKZxD0RvwKLtQYlsD2zv8K6uVkw=;
        b=0cs3EVo4geQQr6a/V2v+mMBdlFx/eLfU0DTatgToU+f1Ov6WH1+tZUz91xfKGVGYdw
         3lND6aGKt0Am0fsM8eL3Nk8Nu1IKrHHDd/GCluYSo3L8loyMBBEnoN0hKSgpcX6zE4Jo
         Kufk9vojiK9dPM9qvCfKc84rqA4pVvz81IRZ/sv0MEAW8LWiIaP2EHdIxmdjuBMbxGem
         IszTqDy1EpziKJO/rs+Cm8oDGmX472Nynka/tCihujVuLetQPqD/3kGeN4uoiFLU7DG4
         N1T+8UGeEzr+0yVhKkOqDJ0r4W9F8TfxThw3iI/RzeqaV2yWnySG/RFSbzZb6HiNjcD5
         /1aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yBdnOJfR;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNVInedj8cSx3vI2SKZxD0RvwKLtQYlsD2zv8K6uVkw=;
        b=lQk7A2/jqL1hbk8NYUa2p9ZgtnbNhnWD6HcNR1NZ88NPAcPaG503rXW3SQ1XPaySnu
         DSELu9BjlWpOVcexAf4k/Yj1Fa5nb7SIy5ko0H8qZqmEURDSVj1aquGnhoSrHJJrZDSM
         Yw/buYiMbAVbxPK/ZFK8XZQgrEjnIitNNsiF5IazjnrDYa7ldqHqN3HZ54svGMdZjBMH
         mxS3Rn6CWyqwTDStL/l0H2yEBDfXF2YU1a2IL/QUOkV4WczfitjUF9bvlMXbBAj450Pi
         O5GZl8/iD+31xxHu0hvl6JFESMkDAPsf5T8koxZbGKX5h9PyBfdGGpNMWvZSPCP7OoPt
         F4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNVInedj8cSx3vI2SKZxD0RvwKLtQYlsD2zv8K6uVkw=;
        b=ddWNdNGHdVJIMDBbDsNQXryx5CwWzXveNw5LpRpqeVAPpVuTHA17BhUCRS7nXmtVfn
         NPB3iaZTqGnaqtzMnYkiFyZHZ2AuuH8T+9Zc3vJTc1I3ODgId7YcdvZSeXhtQQgKYK0r
         j3ufa1Qp0SBDSp8JB243bJKw0jsFyyWPpBJbSF2jd0R2AVHrrmEY0k+6hyfxFZGZ2VnZ
         4EnqRxyBg2PuDxMNzhcCKtm0wX0A301n6nqH1l0iP94lvfqFp4t5GnlnlObP/dGLVU2N
         AGSDZlcOGtQGMm53ujA1z5kfPKyYQITAP9j9zfa5/xyGcCd3ehDE+EecVCgp4FSwcm8r
         kGrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313/UBRlAk7PNFG4dj1qnTmxM2+PXWjVCBJZ78WxRF37eGvJTrv
	OHJj/EoQj0Vdc9wOatoU72c=
X-Google-Smtp-Source: ABdhPJx+GVRgws16HJga0CkLy9JLbmNZ/ZmNnz4Y7/SNYkqZNvvBtGroqOGUzJV05bZKDP25QOPCKw==
X-Received: by 2002:a05:6830:1308:: with SMTP id p8mr3458391otq.330.1606428059457;
        Thu, 26 Nov 2020 14:00:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51cd:: with SMTP id d13ls760413oth.11.gmail; Thu, 26 Nov
 2020 14:00:59 -0800 (PST)
X-Received: by 2002:a9d:6189:: with SMTP id g9mr3732469otk.231.1606428059067;
        Thu, 26 Nov 2020 14:00:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606428059; cv=none;
        d=google.com; s=arc-20160816;
        b=E/pykUywceB8an7RUMcJwpOVUSZybYsiXU2kjJ4PyHFo5GZrcdq1/oiS45wdo4s677
         iGeJN4FKaBYa+BGG8KqN+HTtSv/frHkKPgxEqQN5icSAifL3pSvB+nsp+49poItSblov
         5655k1CJfVohzic5D4lsqlvj4wIBn9nB+QeZBjV1il3iLyRXhTM23Hsgwj9Rlj7sTs11
         A/iMKRcFnH4BSYuhBF8dajFlky3eH+6W381nsaFNZqByxLkxjFdBCVIwdQeeEb6N/VCX
         m4STwgYsHvgG0xDHhEu3lzH83nXWMvb9LtngBbKdotecZ2BeXBEnOAVmX5NDHp8hmW0/
         dFaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0ADaW4fYwxWZAUcb5+YUO9boz7WW8imo/aaJV1TPRrI=;
        b=ktgC4FWh/YjccHw0sSp/YyBBQzr5CLiEaBWK/c3z9JMh9X968zGPksOxlhXrne+bvx
         dHZr/G+ZK7mes7onILvnMzuQf1MjRiFOuPwczL+1MMk3q3qjxkWUWlxD47PpZ6kUcVXU
         77GA/dJe+tzPJAtC1HGMTEvW77OqcgEj9O/8f7ynO+5J1C1/10bBJjFNuEtQMcd73z/N
         K97mcsdirEogsQV/GAp3cBupVcxlbkqEffEFrAGsuuXwzlTFDfjNYaXEAPZ2FBGQyg0p
         E7Iu9d+IV9G0RFUNZiTPXSGg08gYwisY8S9A4udqWCJ09YPDrkB6FWQbS6Ne9kA+4UhE
         hr5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yBdnOJfR;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e7si87832oop.1.2020.11.26.14.00.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Nov 2020 14:00:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0212F2145D
	for <clang-built-linux@googlegroups.com>; Thu, 26 Nov 2020 22:00:58 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id f12so2968237oto.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Nov 2020 14:00:58 -0800 (PST)
X-Received: by 2002:a05:6830:214c:: with SMTP id r12mr3585489otd.90.1606428057438;
 Thu, 26 Nov 2020 14:00:57 -0800 (PST)
MIME-Version: 1.0
References: <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org> <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
 <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
 <202011251156.055E59A@keescook> <20201125230010.GC2672@gate.crashing.org>
 <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com> <20201126202207.GE2672@gate.crashing.org>
In-Reply-To: <20201126202207.GE2672@gate.crashing.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 26 Nov 2020 23:00:46 +0100
X-Gmail-Original-Message-ID: <CAMj1kXFBa_151M7o4svzoezVf=CE0-RSopykACUu9rLaQ24wdg@mail.gmail.com>
Message-ID: <CAMj1kXFBa_151M7o4svzoezVf=CE0-RSopykACUu9rLaQ24wdg@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yBdnOJfR;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 26 Nov 2020 at 21:25, Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Thu, Nov 26, 2020 at 07:40:10AM +0100, Ard Biesheuvel wrote:
> > On Thu, 26 Nov 2020 at 00:03, Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Wed, Nov 25, 2020 at 11:56:40AM -0800, Kees Cook wrote:
> > > > On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> > > > > In spite of the apparent difference of opinion here, there are two
> > > > > irrefutable facts about __attribute__((optimize)) on GCC that can only
> > > > > lead to the conclusion that we must never use it in Linux:
> > > > > - the GCC developers refuse to rigorously define its behavior, so we
> > > > > don't know what it actually does;
> > >
> > > This is because it isn't clear at all what it *should* do, for some
> > > options.  For others it is obvious, and it works just fine for those.
> >
> > The problem is that the distinction of some vs. others is not
> > documented, and may change between architectures or GCC versions.
>
> And obvious is still obvious.
>

Not really, due to the way it interacts with other options set on the
command line.

> > > (And we do not rigorously define the behaviour of almost *anything*, not
> > > in the user manual anyway!)
> > >
> > > The interface has huge usability problems.  We want to wean people off
> > > of using this attribute.  But claiming all kinds of FUD about it is a
> > > disservice to users: it works fine for where it does work, there is no
> > > reason for people to hurriedly change their code (or change it at all).
> >
> > What do you mean by all kinds of FUD? The kind of FUD appearing on the
> > GCC wiki? I'll quote it again here for everyone's convenience.
>
> <snip>
>
> No, saying "ohnoes this feature (that always worked fine for many
> purposes) is so broken that it is super dangerous to keep using it even
> a minute longer".  _That_ FUD.
>

It is. When we add -fno-stack-protector on the command line, we do
that for a reason. When we notice that __attribute__((optimize)) makes
GCC forget about that, we have a problem.

> > The reason we have to change code in the kernel is because it actually
> > breaks stuff.
>
> That makes sense.  Then please write *that*?  :-)
>

See above.

> > For instance, functions using __attribute__((optimize))
> > to disable GCSE are suddenly compiled with or without stack protector
> > checks or frame pointers, even though the opposite option is set at
> > the compilation unit level.
>
> Not that disabling GCSE makes much sense anyway (there are other passes
> that do many of the same things, for example).  So why was this added?
> To avoid some bug on some older compiler version?
>

No, it is related to x86 specific tooling (objtool) that exists in
Linux, which gets confused when code containing indirect gotos is
built with GCSE.

So the proposed fix was to use something like
__attribute__((optimize("-fno-gcse,-fno-stack-protector,-fomit-frame-pointer")))
because just disabling GCSE interferes with those other options as
well. I'm sure you can agree that this is not maintainable, and so
__attribute__((optimize)) is simply not suitable for our use.

But let's not get into objtool, that is another can of worms I'd
prefer to keep closed.

> > I am not disputing that __attribute__((optimize)) is highly useful in
> > some cases, I am just arguing that such cases don't exist in a Linux
> > kernel running on a production system.
>
> And I am saying that before you can remove something, you probably
> should look at why it was added in the first place, and see if you need
> a replacement for that, etc.  Just destroying stuff you do not agree
> with is iconoclasm.
>

I will point out again that this is not about whether the option
itself takes effect or not, it is about the fact that other,
completely unrelated options are affected as well, and those options
may affect code generation in a way that can cause crashes or other
catastrophic failures.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFBa_151M7o4svzoezVf%3DCE0-RSopykACUu9rLaQ24wdg%40mail.gmail.com.
