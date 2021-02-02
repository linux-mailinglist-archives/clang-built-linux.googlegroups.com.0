Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBFOE46AAMGQE5UWTMMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id A49F830CFE9
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 00:36:54 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id k20sf3472400vsm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 15:36:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612309013; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdRRMagiZkZ3VkUrLZacxfusT1HmPD6vicOXjpbtnJTb0Pfj+LM5MHTAxMgdk7VBIT
         H7JKWohSFK2auzzfXsnaetX/tLkd2GWxco1hK9+lHFlALzVAxBvsyyasYvLlJMwKwHVr
         XK44/eLfebj0pSk2fxQnaizLoudJjk5yFzi6oEm/4uofnOD/w5uqetfAh6PPTIujXyz1
         niqEnktOMvqecMrJ2mwI5+Fh7nxyXv80BpW0ybFXDV1o3cj8RqjlDCG0edYLzo7V7qVv
         D2IRsWqLk9hCFg5o8ilV9t10MQV4pdb6k9KgsJPF7lPpdR+lqRWT0Gz5G9qYendkW8KS
         R4qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kEN9sdU+mp45lvXUPSRKMoc0SXW4BLDcVzm24WfxZ+w=;
        b=Upm9GtVqDleOFOr1j2zkYNCkHMSCzLshRdeVERoRTzyDbwaBGjKjCWHKUxmiYi0SsN
         hShNpfW1R2Yxej2cSuR77KHLDYvzRaCdmygdL4sX0GSdeB/CfLUcRz3xzPXnESm4sy2v
         ry1SBAhCjpMf3wGYWrSRLMYuofMgHZJ2WG51w5lGFdB0f+76dysmB+i1toZw5vvSqq+R
         idLowGPZhPkRlHOnC2dleSI7LUKBgShhJvk+FPkYIJcjhOast0n1J7lmQsB1j1S8pRKp
         4wSjT8v9pS/wHRTUm/B0XVA8PWtxvnZSwEuY+J8J3GmZUO5+C0JVgHhoZPBkDjggN7v2
         lXFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WFQlhIFj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kEN9sdU+mp45lvXUPSRKMoc0SXW4BLDcVzm24WfxZ+w=;
        b=aXYWQdskGiIAYgAWIHGk1P7ffJBGxbZGbFM2G3+tKtdEJh3gtM1sJl8HzvUx45chIE
         dB6oh83s+llot8pgdZkN7no94BZmUE2/clZind1z+fhgWMvK+6G3FxLHeDv3TdOB7T9Z
         wXsaTqx7qVQ5KcrzuIjZSHP0Cm2pd5HfxzS9hBQGj5SPpbNoMZKe3+L2n0xQswaSTVVP
         q/b7dplNwzdH7d2N1IOmgUDrCfOSI5ZeICCwMKXylK603+c2Wey6IJQJr86iWTNI2Lfm
         FDwxz2cXiJIYsEeHsd/ZTD5swGTBFUVKD5N1VHjeN3pF5W6Btk3yj9I79V3yTVjTGz4r
         zjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kEN9sdU+mp45lvXUPSRKMoc0SXW4BLDcVzm24WfxZ+w=;
        b=mfPTXmFGwyMumfYREhsK/AR8RKIEw0QX6x3ZYAeL7wC/gIye9T8m2N4oVl0ArgDsHd
         7Wlx6AZEuyR2QcQrjt0XL5Pog9UAEzShCOLrz4/5rWIP4970yjClaNjqZqfmvxHs32YV
         CpLO6TJOSFDHudC5vEaia+Nhh+7xzp64bVXWMTxFZQHBCFyaV69QgVAMOPgODadxSeob
         KFUEvE6JqYSsA0NvONlcBfOCuCnktYTTH5S+SZJtPaukUecgaDSLf8Mb5mUWJZur9z9c
         8g5BCw3cjYahNFqgUcd4Z0EV5sst4v8IORTgpsUQdjowJ1BBalJrvuRYegOGUSJxvE2s
         YzTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YTwyLfnDMc/7eQ2PVWmM4UGloxgkVnR4GKQPzf3zb4/USm8jR
	k+xaySprtkqvPKjpgjxSBaU=
X-Google-Smtp-Source: ABdhPJwNW7hGdKolDUEiZsjDuC+/EvRpuhOKr9wGhz8t/GWx2FWvQvuzNPTgd5ESNv1lgh5VSPgpBw==
X-Received: by 2002:a05:6102:2279:: with SMTP id v25mr199015vsd.11.1612309013762;
        Tue, 02 Feb 2021 15:36:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:804e:: with SMTP id b75ls18896vsd.1.gmail; Tue, 02 Feb
 2021 15:36:53 -0800 (PST)
X-Received: by 2002:a05:6102:1245:: with SMTP id p5mr157041vsg.53.1612309013333;
        Tue, 02 Feb 2021 15:36:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612309013; cv=none;
        d=google.com; s=arc-20160816;
        b=cAxHRtJjIkavso0msM8t3x/vtnNZPAi7M7wo6xvIBVT8Tm8862a1Mc9YqZiLilQ1Y3
         u4r+EZmzAbuk9Qy3CxrOUIvVDIMlP7i0v0zWh9ZMRWyHVG5XtZUOrpFTuZupesg5eM7L
         ByNwv6AVyVq2PcwJPPKvULJlQtaKCrJujXDeeAHs6qDdqBL0QWyhZGW1jVKkEwJyUflr
         whoJv1Kfr+K+t+g1SwMehWVpUBY3d4LVItU1o/VsU9HRywNj40TD74UaZNQI4i/5qxRZ
         yhnzUQiQ8cZATgKXRo/egB3eJ5lea7wvGPZzhh7hC23zk8/3WvlqyVxWR8c3wsoGwuMc
         hZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jss9BHM8ER2sH3J1Y701o3PQpwb7W/xqsNFGP2giOhw=;
        b=sSgY8zcky9M7YCpUo3bLdgpvDPdFyZtPqEZiWRdmIrtByCZ8Rs5pUsQicrjWcmE63E
         EAl5c+081obkGDHPHPu6MYlX+I/KNo3LU1/fZ/lfkB2mm63ZAwUYWjtlw6jDabVgQfx1
         nlS6rNUY2IZpa256S58DOgcdPtngf6hANo/XFHJypf8tMvzXBYm8RrTuIyEs9B/mCdNm
         eMiCrOKWFvRHVsueO/Vnt2azsSFaJ41iAp71UW+BrT12Cmti4f8TyUwEc7V6nyzfKyQf
         vq7uh45rgMkYKXCo2sS8kxaEgeiSxl2slhVB9IYPTvG+LbMGIEfg4+w8HEKDoRvBncW2
         6ihw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WFQlhIFj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p73si14951vkp.3.2021.02.02.15.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 15:36:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-sH3jKwTvP9a0zdxKzgF-SA-1; Tue, 02 Feb 2021 18:36:49 -0500
X-MC-Unique: sH3jKwTvP9a0zdxKzgF-SA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58CD51015C80;
	Tue,  2 Feb 2021 23:36:46 +0000 (UTC)
Received: from treble (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A89B6E510;
	Tue,  2 Feb 2021 23:36:43 +0000 (UTC)
Date: Tue, 2 Feb 2021 17:36:36 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Bill Wendling <morbo@google.com>, swine@google.com,
	yonghyun@google.com, live-patching@vger.kernel.org
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210202233636.nvbl6wivgnhacbvg@treble>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <20210202000203.rk7lh5mx4aflgkwr@treble>
 <CAKwvOd=R_ELec5Q3+oe9zuYXrwSGfLkqomAPOTr=UH=SZPtKUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=R_ELec5Q3+oe9zuYXrwSGfLkqomAPOTr=UH=SZPtKUw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WFQlhIFj;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Feb 02, 2021 at 02:33:38PM -0800, Nick Desaulniers wrote:
> On Mon, Feb 1, 2021 at 4:02 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Mon, Feb 01, 2021 at 03:17:40PM -0800, Nick Desaulniers wrote:
> > > On the earlier thread, Julien writes:
> > >
> > > >> I think most people interested in livepatching are using GCC built
> > > >> kernels, but I could be mistaken (althought in the long run, both
> > > >> compilers should be supported, and yes, I realize the objtool solution
> > > >> currently only would support GCC).
> > >
> > > Google's production kernels are using livepatching and are built with
> > > Clang.  Getting similar functionality working for arm64 would be of
> > > interest.
> >
> > Well, that's cool.  I had no idea.
> >
> > I'm curious how they're generating livepatch modules?  Because
> > kpatch-build doesn't support Clang (AFAIK), and if they're not using
> > kpatch-build then there are some traps to look out for.
> 
> Ok, I just met with a bunch of folks that are actively working on
> this.  Let me intro
> Yonghyun Hwang <yonghyun@google.com>
> Pete Swain <swine@google.com>
> who will be the folks on point for this from Google.

Nice to meet you all.  Adding the live-patching ML sub-thread.

> My understanding after some clarifications today is that Google is
> currently using a proprietary kernel patching mechanism that developed
> around a decade ago, "pre-ksplice Oracle acquisition."  But we are
> looking to transition to kpatch, and help towards supporting arm64.
> Live patching is important for deploying kernel fixes faster than
> predetermined scheduled draining of jobs in clusters.
> 
> The first steps for kpatch transition is supporting builds with Clang.
> Yonghyun is working on that and my hope is he will have patches for
> you for that soon.

That would be great!

> Curiously, the proprietary mechanism doesn't rely on stack validation.

If this proprietary mechanism relies on stack traces, that could
problematic.  Livepatch originally made the same assumption, but it was
shot down quickly:

  https://lwn.net/Articles/634649/
  https://lwn.net/Articles/658333/

> I think that such dependency was questioned on the cover letter
> patch's thread as well.

Yes, though it's generally agreed that unvalidated compiler-generated
unwinder metadata isn't going to be robust enough for kernel live
patching.

> Maybe there's "some traps to look out for" you're referring to there?

The "traps" are more about how the patches are generated.  If they're
built with source code, like a normal kernel module, you have to be
extra careful because of function ABI nastiness.  kpatch-build avoids
this problem.  Unfortunately this still isn't documented.

> I'm not privy to the details, though I would guess it has to do with
> ensuring kernel threads aren't executing (or planning to return
> through) code regions that are trying to be patched/unpatched.

Right.  There are some good details in
Documentation/livepatch/livepatch.rst.

> I am curious about frame pointers never being omitted for arm64; is
> frame pointer chasing is unreliable in certain contexts?

Yes, problematic areas are interrupts, exceptions, inline asm,
hand-coded asm.  A nice document was recently added in
Documentation/livepatch/reliable-stacktrace.rst which covers a lot of
this stuff.

> The internal functionality has been used heavily in production for
> almost a decade, though without it being public or supporting arm64;
> I'm not sure precisely how they solve such issues (or how others might
> review such an approach).

Very impressive to run it in production that long.  Their experience and
expertise is definitely welcome.

> Either way, the dependencies for live patching are less important, so
> long as they are toolchain portable.  The ability to live patch kernel
> images is ___important___ to Google.
> 
> > > Objtool support on arm64 is interesting to me though, because it has
> > > found bugs in LLVM codegen. That alone is extremely valuable.  But not
> > > it's not helpful if it's predicated or tightly coupled to GCC, as this
> > > series appears to do.
> >
> > I agree 100%, if there are actual Clang livepatch users (which it sounds
> > like there are) then we should target both compilers.
> 
> Or will be. (Sorry, I didn't know we hadn't completed the transition
> to kpatch yet.  It is "the opposite side of the house" from where I
> work; I literally have 8 bosses, not kidding).
> 
> Though if kpatch moves to requiring GCC plugins for architectures we
> use extensively or would like to use more of, that's probably going to
> throw a wrench in multiple transition plans.  (The fleet's transition
> to Clang is done, I'm not worried about that).

Hopefully we can just forget the GCC plugin idea.

It would be really nice to see some performance numbers for
-fno-jump-tables so we can justify doing that instead, at least in the
short-term.  I'd suspect the difference isn't measurable in the real
world.

(In the case of GCC+retpolines, it would be a performance improvement.)

> > And yes, objtool has been pretty good at finding compiler bugs, so the
> > more coverage the better.
> > > The idea of rebuilding control flow from binary analysis and using
> > > that to find codegen bugs is a really cool idea (novel, even? idk),
> > > and I wish we had some analog for userspace binaries that could
> > > perform similar checks.
> >
> > Objtool is generic in many ways -- in fact I recently heard from a PhD
> > candidate who used it successfully on another kernel for an ORC
> > unwinder.
> 
> That's pretty cool!  Reuse outside the initial context is always a
> good sign that something was designed right.

So basically you're saying objtool is both useful and well-designed.  I
will quote you on that!

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202233636.nvbl6wivgnhacbvg%40treble.
