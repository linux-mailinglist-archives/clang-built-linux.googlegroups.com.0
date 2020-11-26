Return-Path: <clang-built-linux+bncBD4LX4523YGBBNE6QD7AKGQESRRJXRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 349E82C5CF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 21:25:26 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id v4sf1567010oie.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 12:25:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606422325; cv=pass;
        d=google.com; s=arc-20160816;
        b=R+fH40jPHHVmoqvds2SxNfdTqfZ5k2PTHBtnNjlQW7lBd8H7MYHjWL96Lm4tKBrAHi
         7/H8Z8ZxU4kkLn50GFNYdzNpwL6rQd94HgDsi6y4ONsdD1BjZWO1S/O0/dYZwwMRCQmW
         o+cIBYs+cnm9FnzaVc7fFTJDjiaCFtea0HRPXZWyFL+jzhcVqGWm1Rf7l+mdvWj99niv
         wDHq6aYVe0+8VLgag4H2xW+zHhH98WPs88O+AIWny2YR1yDZ1DTSozy9ls66xRndxIIg
         36teX++KL+TmRBYpIA0hb9xMA5+S69fGlgQ5qvxWUzqpR5rE62kth55AiHXvl1CwywCi
         +rmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9ZddYgNQa3UGvKBnV+09GV08/E/zT9DvDNtFkUZCwYQ=;
        b=X6vNNOz5+m8zxdUGrcUS89Ph+Dv/dtycxpYur4rQMp8QWKREpA4EF7xjHC0rE070pZ
         ZGBqPhPPBCMgx+i7Ag2v0FNMCqQkf5HVUHDxp2+xtjZRYdjlo1RzNGFDhmapdRMA2q8m
         kcN9vxNGT/kKIXZoy4lg38RhmLzm53Eruw0QnxUq1JJg38cYdYoExU1ouAs+lQwg92G6
         7gSipMxYaIcHnxAm+w7YtwlSRLUcaDV3h0FqdNYqOd0O5KoYIZrRphiY2K0vtwlaxn8Y
         dE0kDnD+vA3itD4EB5CC4CMGKehHSVdaTalqYQv8IY+C+OVb2f2LortY9Fv92OuUfemW
         O3YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ZddYgNQa3UGvKBnV+09GV08/E/zT9DvDNtFkUZCwYQ=;
        b=r0FIjVXp1YPyhN3OJjioQxgQIskBZHRz2+q/0N8u/KHUBDOEyH28FKDRvXs3Vayqax
         wriWafmTyKwwmTluaupM2wcxYzgnInN1D/UAMWLud9CwP0jX6DmledLiP2iNOmjLoDuq
         7OzN1Qy/fKJTyKtPkm25pEaNCYAm24Sd1wpNTJe58PXpgYbylTnFh7Hj+N/Q7wjN1BQd
         8wPsyaDSnQAuf78V1qAlzVu3xGQBUv9HdachGlaVDfsdntZAQB3cUJoutlkiNJry0Juk
         x4ohLOS5bTtZ2eUG/f9Sd9RCQxpJd+oSuWFe9Yk9BGAy3El+Jieq7HK3ATDvc3gA8nsI
         PZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9ZddYgNQa3UGvKBnV+09GV08/E/zT9DvDNtFkUZCwYQ=;
        b=HIMNs1J3+Ms5rqbFmJCdbg80izO8EocA42pKh4lN8N8vEqBNihmXRAh7gA1KGMVjs1
         ASbTxnuvpMhcXIdUAryUJPRCFbkzGYpGlJZXRRbkd3h5v7q7JAXV2EJC6E9bF9hyzgQx
         on/VVFpqfPWmH4eT6ysXTHbH+JE4UmrBIjGbITr0EFbcamSqbeDohuPMP0a3dp8982cI
         qusd71wi2bIuzUXFuF91QHW0TvRGVpk4Nwmr6f75GBb70Z1XUxiDXo8E6c6jqSf6g+tA
         Ia/A5Roa2io75Z1p9eY2+gFMfIL9uGuY09u2LAxd6SAbk6Gu2wG6Pku/vqr0twUGmlCu
         GVzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RIr6nMUqv+tvq0uqv5jtwGIQ45W5TpIOFzavjGMfEmxGb3gha
	BYvB05WrVLgbIhJ6rUmGAAk=
X-Google-Smtp-Source: ABdhPJzBgPkmPHXhCfH/O4WQDhTqlLvu472sxPGOFMk5gWmBg2si7xO4jVRtVeZWzsQf/jfb/85nWQ==
X-Received: by 2002:a05:6830:225a:: with SMTP id t26mr3462367otd.266.1606422325058;
        Thu, 26 Nov 2020 12:25:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls697970oib.0.gmail; Thu, 26 Nov
 2020 12:25:24 -0800 (PST)
X-Received: by 2002:aca:3944:: with SMTP id g65mr3051710oia.36.1606422324547;
        Thu, 26 Nov 2020 12:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606422324; cv=none;
        d=google.com; s=arc-20160816;
        b=Vlb2NWhBU2PcC7A/N0RFsVrAS+venFluNuCVpS8DzceWFFvyPJZxBezJ6LE9XRS10p
         aVKPXpel2DwU8LFrIU1Q+lgJPpE0rtrbzgSrRtvf+WDSzO3H3/5RmizvZ7dV+CTiS3+a
         1IIcXbCNeaSzpaUah6dYWtFRxKrKvobPYt68GFWqw9qWv+oi1H55WJ7LEA4o2KfkybpX
         ss/NnVahu8Y5agfnwEsxYmsHb8SWVuHD84oUW8F4IcWmOEMjbSp5TRoYkCCYrT809xtT
         oejJeYGKoo6gl4uq04SAEvLlZf/4XMQxNj/LckxtBImvHqA8B+TB5Bd69taj4Pb7l6WQ
         6XAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=l/0g0oqlyCkNnzM/86BzVRXfarP9vTU8R44/dlLUGUA=;
        b=dmhTf8K12j0wZAkxhOVpyh+0qIomHeT2RyhlaE5Zbb7ExGAT5+vU/heI3daAjLLxSi
         qJuWYCFryPGLJcim4nIuVvQreRsXyp91HguqzXe4r7KLAwlpFT8lADUa2piQ5h/aVVrh
         eXjkXP/MpIQZfx10Hf+K4/sZW1uHFRShzfaopTDa+XtlHaI2nXCCttBIxfWc0lNajVje
         3McdMJ9WMVfs5JlZOYdamXsNJEh0n+JgvgIus/l+mU/rRbhCS62mB7Qg8y6oN8HlG7jL
         yI09mMljUPMji6qr/je1HsuGqwhJrNvRvtisXMQcnrid8jYtyLtVDPVmlOmOzhj1p50z
         zIxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id j1si516972ooe.2.2020.11.26.12.25.24
        for <clang-built-linux@googlegroups.com>;
        Thu, 26 Nov 2020 12:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AQKM96R001256;
	Thu, 26 Nov 2020 14:22:09 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AQKM7fw001255;
	Thu, 26 Nov 2020 14:22:07 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 26 Nov 2020 14:22:07 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Alexandre Chartre <alexandre.chartre@oracle.com>,
        kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST entry C handlers
Message-ID: <20201126202207.GE2672@gate.crashing.org>
References: <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com> <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com> <20201114002624.GX2672@gate.crashing.org> <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com> <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com> <202011251156.055E59A@keescook> <20201125230010.GC2672@gate.crashing.org> <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com>
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

On Thu, Nov 26, 2020 at 07:40:10AM +0100, Ard Biesheuvel wrote:
> On Thu, 26 Nov 2020 at 00:03, Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > On Wed, Nov 25, 2020 at 11:56:40AM -0800, Kees Cook wrote:
> > > On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> > > > In spite of the apparent difference of opinion here, there are two
> > > > irrefutable facts about __attribute__((optimize)) on GCC that can only
> > > > lead to the conclusion that we must never use it in Linux:
> > > > - the GCC developers refuse to rigorously define its behavior, so we
> > > > don't know what it actually does;
> >
> > This is because it isn't clear at all what it *should* do, for some
> > options.  For others it is obvious, and it works just fine for those.
> 
> The problem is that the distinction of some vs. others is not
> documented, and may change between architectures or GCC versions.

And obvious is still obvious.

> > (And we do not rigorously define the behaviour of almost *anything*, not
> > in the user manual anyway!)
> >
> > The interface has huge usability problems.  We want to wean people off
> > of using this attribute.  But claiming all kinds of FUD about it is a
> > disservice to users: it works fine for where it does work, there is no
> > reason for people to hurriedly change their code (or change it at all).
> 
> What do you mean by all kinds of FUD? The kind of FUD appearing on the
> GCC wiki? I'll quote it again here for everyone's convenience.

<snip>

No, saying "ohnoes this feature (that always worked fine for many
purposes) is so broken that it is super dangerous to keep using it even
a minute longer".  _That_ FUD.

> The reason we have to change code in the kernel is because it actually
> breaks stuff.

That makes sense.  Then please write *that*?  :-)

> For instance, functions using __attribute__((optimize))
> to disable GCSE are suddenly compiled with or without stack protector
> checks or frame pointers, even though the opposite option is set at
> the compilation unit level.

Not that disabling GCSE makes much sense anyway (there are other passes
that do many of the same things, for example).  So why was this added?
To avoid some bug on some older compiler version?

> I am not disputing that __attribute__((optimize)) is highly useful in
> some cases, I am just arguing that such cases don't exist in a Linux
> kernel running on a production system.

And I am saying that before you can remove something, you probably
should look at why it was added in the first place, and see if you need
a replacement for that, etc.  Just destroying stuff you do not agree
with is iconoclasm.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201126202207.GE2672%40gate.crashing.org.
