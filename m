Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBU7MVX4AKGQEE34RZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E00021CB63
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 22:45:08 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id i22sf12015371lfj.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 13:45:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594586708; cv=pass;
        d=google.com; s=arc-20160816;
        b=FDgxB9Ib+AsbFxxKmAQInzeMzMzOjDuyo69a9P7CPbym1B+re7yveAwAb7HvNqAfBb
         sXU7yJhtf6+Nr7cZomDcTGFOOyxLW8OIwf6O3q+5ianHc8Z6wNwztCl0zcT/8GgdrRAX
         hUWKlvcDKUIQojGYwNF7b9P8Kp9zlfqRgTRh7d9X58uAIOZsrT0jS92F7V9rYHDtaCgP
         lL+1RKLeK3rWFBozCuuXKRFDK6bBgGdYDd6IRvKJGj39lr0TvB3WpNiktb+nNne1w9sc
         0TTuNwO9SSQrcOEQbj66jV0KGZitAIi2mdBphFixDFXUx35Ni5y4Vjd7K3KeBzJo8DCl
         eRmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dJLMCX4jZehD2wrTKHqJsNhhs9f6SXRyPgne+Qck8AM=;
        b=U4QKWJWTp6ORwqGVWG4OQm3/rEUw8WPyghkxa7rFg0+IelcgAhISeXjUNr8x+lsI5U
         JF224tL3T4RkjqBYqxTIeAMbhVFHfnsJS9WlZXjK1sSQEOZ9gWra0hkwtZo40kcdFbMc
         RBvEWl1XH9PsfGT5/bcE60nVZrSBWy+rwMHJt24PrPtIlEqDak+DWmPuadYsUY3wlbQH
         vgqpMeF7R338fVxuYErjgRstTxZq4e58ZnVeTMIae2DwT0d5h47nJRHbcKC7QmpymBTN
         l6j3SMYbwPoPecNdDOKKJMB3ii9OMIl8LrDzFQRQL2vb0jobGM1S7icKaPIpslxn4NfW
         X+fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJLMCX4jZehD2wrTKHqJsNhhs9f6SXRyPgne+Qck8AM=;
        b=aXe5eYv7rVDiEBu5M0Bp3aDaW8Qwf/3OKEwTOnGstV5NvMtkJVj8iTruX/87CAp28k
         xrcif63x6bIEMUvHIv+vAfAx42w/a9R4/i6IJEH8xxmpniNtTopEA6cBHZCD4aDrJqDg
         A2tD5ZLkdMmj4fPPP1e2K+njKuyfuzgfb7Kn+qJ70js+q1b2lTfLovTWD3i1Ln0nNMvb
         riA4h+Si109i9Rak8xPseH16TCYF/0InZbep+bHs1lHhDN9uTDGNlwJRAwDTTWArFoIs
         N9aacZ9JTORXgZU1pNQrVAPc53/v8lp7ABRfi4XNgLlRJyyLiUlK54PVxoYYoqmEXsi2
         utzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dJLMCX4jZehD2wrTKHqJsNhhs9f6SXRyPgne+Qck8AM=;
        b=pB6bZTxIpgGy2ieEtSXx6ADnlDvk+02aUnqkkXjz8Ev7flOJf3rTsruLd/cNJBMNi/
         u5OadT/1qhkxIDpzWTQtEr7hFTD90j19BhNTri/JmzLxJoNTo1YjZOKT704OwUzG38+u
         hirc3YbEF9MGWT8IpZGQIH0y5hFhuF809WUo5Gida0DL0Mb2xyAay+8M2yyUaUBp9hvz
         gxaxDXF19P4AxNzdNDmJHnrGy+XQlI0WJvdpwgFVXVv1jJO/cxnGsY492seApSX+NMry
         EIw4WmVEJUt70+YMBIV0G/e3xQ3TQbkfdr0NPMaCHdizbYyWYqRP1VcrmrFmFGnwTa92
         m9DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/809mXSZfmtgSiKDgHPYeXqP/HGRJsO9rRQivAAEmZeSiix7L
	YdKDr3A7ayf4EqFB7FPIbMQ=
X-Google-Smtp-Source: ABdhPJxCNcLsJrfsuR2GFPXlmlyO6LG62dudvrKF2QMC4Mt6/HpOynQuDhx38j4VEsK7/k2pafLHGg==
X-Received: by 2002:a2e:8890:: with SMTP id k16mr43917850lji.113.1594586708077;
        Sun, 12 Jul 2020 13:45:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls2677758ljg.11.gmail; Sun, 12
 Jul 2020 13:45:07 -0700 (PDT)
X-Received: by 2002:a2e:9cd6:: with SMTP id g22mr40833087ljj.429.1594586707469;
        Sun, 12 Jul 2020 13:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594586707; cv=none;
        d=google.com; s=arc-20160816;
        b=lj5TKuLafqzN7lSvJ1crtrJ8bG7K1aAYdwsS5vnUPggyn5DctXIPc4Jhi6G4Nb1303
         qMbp5ABPsSDLYCgWtyEYKkze3Rh3bAKz9DCaf6GjBIVlCQ6PDob7B9KlQi8zU1TmATdP
         2wqaWOcfJAtj1wKzixUWbSn3/bRH+0uTUnPPam8vyrGevTTpn+3aR/GBVZavAFqhGnOz
         oI12SayBh2JlX8/c+s/ua5GTkOsY8eZyIl3SBX06CX0KadDG8ehImlfPtSSctWfV3RB8
         My6PjqiRqKT1VyxWdFPfSuuUb0iP82RUeoqCnvbNBT4I9eoqxt8cGBvNqpgIrxnWn36i
         cuuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ywQWcik91c0C99yUlp3jj80J+yy25pTO8d09JUAfClk=;
        b=nypnpt3j/C0Jn5rBnpeqOAs1i6sPLgFk9wdjwPOCkDQeA9PTtJiWr8w+WGA7EZqcSR
         wsiQZCg3jtJkhQ9hdytvWTbkHyMGM1rnUSoOiOWc3n/cmT+v7nQ5Xov0jYNot9zRK63S
         0LIZraBV8ac9QIaYanjtT0MCcjQOaTYijiPaWEILnTTx+WqEdAojRg2IGsr0GNn6dUXf
         UWHLnMMAQC4qHSdZDT490GOkrdSyEnHSJOC0O2jpmE35IRW4GOqgy4h+JodAnZhtBi7S
         vb8D3yOCa82qVYQbtOdv5H24/TEzGTClkGKnvf7expu5xTzbkJheEcan1hKBvVR9C+LC
         8EdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id i10si650086ljj.4.2020.07.12.13.45.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 13:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4B4f0v3T5Cz29;
	Sun, 12 Jul 2020 22:45:03 +0200 (CEST)
Date: Sun, 12 Jul 2020 23:45:01 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200712204501.GC25970@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost>
 <20200712193944.GA81641@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200712193944.GA81641@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Jul 12, 2020 at 12:39:44PM -0700, Josh Triplett wrote:
> On Sun, Jul 12, 2020 at 03:31:51PM +0300, Adrian Bunk wrote:
> > On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> > >...
> > > but also a larger question of "should we do
> > > this?" or "how might we place limits on where this can be used?"
> > >...
> > 
> > I won't attend, but I do have a topic that should be covered:
> > 
> > Firefox always depends on recent Rust, which forces distributions to 
> > update Rust in stable releases.
> > 
> > As an example:
> > Ubuntu LTS releases upgrade to a new Rust version every 1-2 months.
> > Ubuntu 16.04 started with Rust 1.7.0 and is now at Rust 1.41.0.
> > 
> > It would not sound good to me if security updates of distribution
> > kernels might additionally end up using a different version of the
> > Rust compiler - the toolchain for the kernel should be stable.
> > 
> > Would Rust usage in the kernel require distributions to ship
> > a "Rust for Firefox" and a "Rust for the kernel"?
> 
> Rust has hard stability guarantees when upgrading from one stable
> version to the next. If code compiles with a given stable version of
> Rust, it'll compile with a newer stable version of Rust. Given that, a
> stable distribution will just need a single sufficiently up-to-date Rust
> that meets the minimum version requirements of both Firefox and Linux.
>...

API stability avoids problems that are visible early as build errors.

Rust cannot offer a hard stability guarantee that there will never be 
a code generation regression on any platform.

Rust gets updated frequently.
Sometimes this also changes the LLVM version used by Rust.
Debian stable supports targets like ARMv5 and 32bit MIPS.
Distribution kernel updates are often automatically installed
on user hardware.

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200712204501.GC25970%40localhost.
