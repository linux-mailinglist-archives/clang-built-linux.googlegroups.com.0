Return-Path: <clang-built-linux+bncBDSZXKXZ3MMRBZEXXWCAMGQEFTKEIYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6041937103A
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 03:03:33 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id k10-20020a50cb8a0000b0290387e0173bf7sf3290226edi.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 18:03:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620003813; cv=pass;
        d=google.com; s=arc-20160816;
        b=V90fsC838wY6BdFYn2FhofwH1aCZAjYff0QgRqsT4gOLOCqiD+KeWrsHmQi1kwO0KW
         O8cNmBRmzlbMcfJCK9SxVUCTaBLsNI3hVlnMT7F6iJ2uHzSItGInTNqA7zNtvtynl1IQ
         eKVX1ZC9WjB/fIV/0F5QcSKxLmP1MrFaG+3s3TCfAqH1XHqZb7QFMv3s8NlTOrGoT4EZ
         dpdFpbDPGGD4IG+RX/ZJ483XpbURQlaQVjYnl7fLY7OKMLfKPR4ENuB4krIxfN5YzgT7
         Xv7ewPMxdjXpRMVFsi3TPvgOo6GeuKkreP56HgOtvvAZcCjxjUElyovtoxys2o1cYrN5
         /aOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xeQ6ZPYqDx9vyKfUqxXBkbHngC0RXzKxV6UoAYHca7g=;
        b=QJjdz7oLb84BVm7KJu7ncInrRgaGMulFFE9gQmIv7CwpxxuyMAqCeKTjJQTocOr5F7
         yRMVY6sL4Z6N6EOXJYbxELTGWdzZn86Pgr8ptpJL9qtvjbdZ6RJt2wAA9cuGCtoGpTTe
         s7PiE28frc/UekCGEob1NK7BGn2M3sVKZ3szl0tow3DIhL8p0nuA1PtSusyEiE8/MDOA
         dehWTobuZDnUlWoLLicZuRPVYiVu6CCfuQESrKicQe6dpfZO79TkjxTZNqMamBRxiJlD
         sodqGdS4Wmx2QpyDmUzoQx9EORVZcvfb3/3YLnHc0jVVkX09zXuVS9tspG+U7ycTnNNN
         ZfQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xeQ6ZPYqDx9vyKfUqxXBkbHngC0RXzKxV6UoAYHca7g=;
        b=KrR9rtFgywtUBHXI2aK5Ar5g4ypXfhlrWRE2V733snx6fECFjnljr2dPrvnnRYwUZy
         TOgsyiuPgXPKjEhFvbSjt83xPJQieE000rPRdMJ5ysvqsYZ48TFoUXYC5XZ33jAm2MnC
         XsiI2c/2h6Wr7YTPt7Lk9YKmPvBRDW9OnifUwka6Q2hrEVWIlDGu2uMUmFX0YgvbGYli
         rzRINlTzkJRles37mNa42rW5pha2wUy9iyVPOK7qT//u5hKea6Jkcz+P03Yv3XMYLAng
         CjAqYqfpDtWhYrp0zptBuLl4bVCnH0aX0n40E4rBs4mFLq+7Y5cRmK79J4mzciLd96ND
         e5dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xeQ6ZPYqDx9vyKfUqxXBkbHngC0RXzKxV6UoAYHca7g=;
        b=CFN0Le70Wy8xQxQstpdyYt+ldW8ml3Xej6pPIcW8pDD+ATL9049LNe8H66/ItDqjOB
         4bGIuG+J8ksQsyPcZ+WG60MpSqnkMsAKQzHYqQ76HQgm2faQEA/anAov2jv1nLOCPSvk
         H6lzbyYvH/x0SKp8A1UglD+pEgsHIf7NzGDhVmYqbKR0tmsOOs9D+XwTtHq1ky0g6wpk
         UMbDk1/q65B28g2idT8FtO7gpxQG/bSmhJ5Jhx6jm472gHDQKqk7I6W66Y7cfxPqGANv
         x1RMyoJPGg0fidR/RYcr6dXvx2zjmprhPHtOUumoANoPmk/BWBg+ZV4YCkefymN8j2s0
         daSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53027CInrVJwgtmifuR8Ce2lJPA3lVY4rBcdV72C39kFmttUTIGk
	ItuwlsPgVFTtmlGKDxT+WaY=
X-Google-Smtp-Source: ABdhPJyCEQLgySnCqA6r4DvPWgxosm/OIPKFKm8YxCex+Nxt2DfHEZRahKo57us37kOgZ7ymUgRc6g==
X-Received: by 2002:a17:906:1fca:: with SMTP id e10mr14428413ejt.486.1620003813080;
        Sun, 02 May 2021 18:03:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls5558050edw.2.gmail; Sun, 02
 May 2021 18:03:32 -0700 (PDT)
X-Received: by 2002:aa7:cf86:: with SMTP id z6mr17304060edx.120.1620003812218;
        Sun, 02 May 2021 18:03:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620003812; cv=none;
        d=google.com; s=arc-20160816;
        b=twCwLEANEkFjEUMgXpJ/jRkFR+i3K8GrU653zcTQZfKqyCXa69glZ7zsnn+Rp5TpG6
         QKhuXPfKl3yqDx+r3fw8iTCCsNPD/KbhRYGKqRin34N0h2lJRbKDBCYlEcv9FDnobfIp
         CsDDPirL2zvGtHgLiNhnWtSJuKP3CNhu685XZ+4xCkN1opY5YuYSNeIdWeL4VKLOsI8H
         eGUHCjm+LZQb/DgFQsAuonn4aGNc9T37j4FAJjF/m/h0Ba2YzhKY3yeqJl452MqnmH7i
         tqOgvIQLnGtT3OTSU1e5HSZ7uRGLvB+9xWAUCUNM8zTkJbZV7ppc5dPt7SsoivKVyJPG
         NPKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=xnGTJkiS118ZTcYahCmsgqZh0YNMV1gqNvwB2mIfbb0=;
        b=QBdqAm9gFqoiB8RE4Ji3KBFYoJO2kNZiFp4cJiHrjXB87m2VoDjW3Z9/RxOBfi56JL
         0gs0J09ZTGe3NVw4XoCV0AxgAieaou/tVWRzraM/gQ4Vo0BcNURokTbPBb5BBF6Bhojo
         zMqA2Y2NiWu6kMuewPatNc/3rssImVQQXXwaV7JwN1RUCH5cXW8SqfaeJPzh64Fg8lNh
         htt+fW8IX7tS8P3/7vBv403pS5O3tauo6dhYjRzqHvv7+p+R00hmwDa8w4+2X9rBtYC7
         x5EXpceeHE0EkkKgoejFK4g8eUBe/pWlnTbz95dvAp9oZqbP+uAtkiQe+0pVWkkkkSw/
         Pqdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
Received: from angie.orcam.me.uk (angie.orcam.me.uk. [2001:4190:8020::4])
        by gmr-mx.google.com with ESMTP id n10si147142eds.0.2021.05.02.18.03.32
        for <clang-built-linux@googlegroups.com>;
        Sun, 02 May 2021 18:03:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@orcam.me.uk designates 2001:4190:8020::4 as permitted sender) client-ip=2001:4190:8020::4;
Received: by angie.orcam.me.uk (Postfix, from userid 500)
	id 30AE692009C; Mon,  3 May 2021 03:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by angie.orcam.me.uk (Postfix) with ESMTP id 2A1E992009B;
	Mon,  3 May 2021 03:03:31 +0200 (CEST)
Date: Mon, 3 May 2021 03:03:31 +0200 (CEST)
From: "Maciej W. Rozycki" <macro@orcam.me.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
cc: Tom Stellard <tstellar@redhat.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Masahiro Yamada <masahiroy@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>, 
    Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
In-Reply-To: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com> <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com> <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com> <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com> <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com> <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com> <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@orcam.me.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@orcam.me.uk designates
 2001:4190:8020::4 as permitted sender) smtp.mailfrom=macro@orcam.me.uk
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

On Sat, 1 May 2021, Linus Torvalds wrote:

> > Yes, it's intentional.  Dynamic linking libraries from other packages is
> > the Fedora policy[1], and clang and llvm are separate packages (in Fedora).
> 
> Side note: I really wish Fedora stopped doing that.

 I wish they never stop.

> Shared libraries are not a good thing in general. They add a lot of
> overhead in this case, but more importantly they also add lots of
> unnecessary dependencies and complexity, and almost no shared
> libraries are actually version-safe, so it adds absolutely zero
> upside.

 I agree shared libraries are a tough compromise, but there is an 
important upside.  Let me quote myself from a recent discussion 
<https://lore.kernel.org/linux-mips/alpine.DEB.2.21.2103191500040.21463@angie.orcam.me.uk/>:

"Dynamic shared objects (libraries) were invented in early 1990s for two
reasons:

1. To limit the use of virtual memory.  Memory conservation may not be as
   important nowadays in many applications where vast amounts of RAM are
   available, though of course this does not apply everywhere, and still
   it has to be weighed up whether any waste of resources is justified and
   compensated by a gain elsewhere.

2. To make it easy to replace a piece of code shared among many programs,
   so that you don't have to relink them all (or recompile if sources are
   available) when say an issue is found or a feature is added that is
   transparent to applications (for instance a new protocol or a better
   algorithm).  This still stands very much nowadays.

People went through great efforts to support shared libraries, sacrificed
performance for it even back then when the computing power was much lower
than nowadays.  Support was implemented in Linux for the a.out binary
format even, despite the need to go through horrible hoops to get a.out
shared libraries built.  Some COFF environments were adapted for shared
library support too."

 And the context here is a bug in the linker caused all programs built by 
Golang to be broken WRT FPU handling for the 32-bit MIPS configuration, 
due to a bad ABI annotation causing the wrong per-process FPU mode being 
set up at run time (Golang seemed to have got stuck in early 2000s as far 
the MIPS ABI goes and chose to produce what has been considered legacy 
objects for some 10 years now, and nobody noticed in 10 years or so that 
the GNU linker does not handle legacy MIPS objects correctly anymore).  
This could have been fixed easily by rebuilding the Go runtime, but as it 
happens Google chose not to create a shared Go runtime and all programs 
are linked statically except for libc.

 This had led to a desperate attempt to work the issue around crudely in 
the kernel (which cannot be done in a completely foolproof way, because 
there's missing information) so that Debian does not have to rebuild 2000+ 
packages in a stable distribution, which OTOH is a no-no for them.

 Whether distributions package shared libraries in a reasonable manner is 
another matter, and I've lost hope it will ever happen, at least widely 
(there has been an attempt to address that with a distribution called PLD, 
where the policy used to have it that shared libraries coming from a given 
source package need to go into a separate binary package on their own, so 
that several versions of different SONAMEs each of the same shared library 
package can safely coexist in a single system, but I haven't checked it in 
many years whether the policy has been retained, nor actually ever used 
PLD myself).

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2105020346520.2587%40angie.orcam.me.uk.
