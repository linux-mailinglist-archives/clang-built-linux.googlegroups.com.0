Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBNN4KAAMGQE3ON5GRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65D30B3C5
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 01:02:14 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id l7sf6472988pgj.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 16:02:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612224133; cv=pass;
        d=google.com; s=arc-20160816;
        b=kR6ng+qLLdO36z+pigYPnW4+Z8r6FBbyPyOELOiIsiSWkz2pg/SXpdBKGXP6rmMxII
         tz5lwfHgUtkl4L/F9VaPH/bbNuDf72LUxOVYnmDYNMW9Z2UuzyVGgQWNt7uhSeGRepwG
         ouoE8a9ECqn62KiUpiK0Wftbrrq1Asa9sjY+X9YK4JAEzKF2ZEYm9sM5RikrcDERWmtr
         YVBAvsC6jiQa6qpbtDOtHtO/jzanPORQmWt+0cbEzRCKMmCHUZsHf+yy1RcEplbxk1/c
         JXwkAceX4LNx2zdh+c0ieBZfxCQQfaB5uVwtn+cnAgEcao5KSFYeLq9t0o+O+Hd/a4i+
         nB5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Tem/XMJLAeDgtQJ+wHI0JICk0zccwqBr+StZGv7g7nc=;
        b=bL2W9k49c7qbAmn2Vpg4ioW6sK62M5DAJhKTE8d99r84gXE1tLSK8F3m/Sm4a7AZmu
         MkT+VbfKbu6AF1WECNM7n66PYPxNnu0oNzA0KSpLWgQMJNTZDpeZ5m5h8CF5J1qMJaPR
         hzyiPIVu8PT1/fmb23orc4vaGTjL5u95g0P8GEyfzZkYfFyT2gDGM2eOVDuwzhlbb4kX
         byF9s5OwXjiaAiph+w7M4RTSsHlebDm0gUgMX17oG/pUQ71lM7ug4JQYBuXrfMI4lUim
         XLH3Nrd306uv+qxI1+p/pSnz8PaaOg3nGLA4bsikYkNjcVorAGRW9pNV24CBciGugpI5
         99cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Pf7dp5TH;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tem/XMJLAeDgtQJ+wHI0JICk0zccwqBr+StZGv7g7nc=;
        b=Uwh8JGgLhEIeSeLX3jXq74UMhpJpjHgGuqp/Vzow6Bd0laNUjb7WLpp2RGOG3mrpDr
         AK4SwufHZPOcFnhsOR83hOedaA/C5DTTSoUUcNcS+mbxU9YRVZQkEF/cJcwOujjWNSuf
         IppddUXyPa+OhzU5Q6srZa2nihwN5JcGlzyjZM6ZDwmdP/faN+E7jGbsvD8Se9/lVuKB
         9iTQkYh6wAEO7Irlr38ILZIYQ/NJRoEzu2fK/apWv1xVUh5xA8D9tCJC4QrCAc4Mv/6W
         jp5zFNk44+YX4Lhdl25phhd8Jm+OTCp185aFw8gS22RhSGILitsohr6lhMrIfNhQ6mL6
         l9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tem/XMJLAeDgtQJ+wHI0JICk0zccwqBr+StZGv7g7nc=;
        b=f+TNkFD7fcGyE69v/GYnr1eSGUZsgi1R5D/5FhLJntUmnrvQhpGg0Pt49IopVgORk8
         UJSYn98CG4wdxU4poeeEVl2s5NQSASbPFLzdKbQDZjqU4waCLvfFAS3+S81jmvlNIZnt
         +aBQ5CmlXzAAnw2B+cBlQVXQ3Mz/YCKS5nxKntnVsfSHynw3NmAo+Jv8Ol2c4MEy2uOM
         mVPsTG1Dgxojwdg4NlBBa3uElO0l7qX4F/M6smqadKVrt0A5Z2gNuf5BNkQCaIYBiqdB
         LAJC30VTCI/Uw2YSAlJVO+qnXTATeBYovxcZ22CQc3Cla7i8Wotmh/xL1cA3OYyvi0Hg
         ONgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335lObWcS8Ww889GebEJ6rN0aJvKLsIQKvconxSr7kcjRdSWGoY
	s6uqQQ4DvAvm3+e5sUy3mJA=
X-Google-Smtp-Source: ABdhPJw37uv/cV1iHzEMA+kuhjWTjMXHcKagv9rzc++oQfaEn+YpmpFEd0NggVUddT+K0e+hwClp+w==
X-Received: by 2002:a17:90a:a10e:: with SMTP id s14mr1295168pjp.133.1612224133451;
        Mon, 01 Feb 2021 16:02:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fb01:: with SMTP id o1ls7117766pgh.7.gmail; Mon, 01 Feb
 2021 16:02:12 -0800 (PST)
X-Received: by 2002:a63:db08:: with SMTP id e8mr19154459pgg.261.1612224132866;
        Mon, 01 Feb 2021 16:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612224132; cv=none;
        d=google.com; s=arc-20160816;
        b=h7E1PfSLyv5GfKCEzGru/bpDA3k3giqgO8Ynz5qkJe49pe4rgkpWNqMU8uZ2JaQRHu
         d4V3yafU/dFSPuama9t02UVnGlTkB2aDg3oXJlh4uYqq5EuI6MBy4DnnZlT+JOjC91RI
         jjVbCaIKiHE/jAZLlYcakGIW/BCMIfciG+uYhpKMxqEkJRo2QsJnQre81Yb4+a8xxeTI
         vhEgthsA8N9zsFskichn7X0DUnIs6TgpGpMvRXL2cpsyTy97zUyMfHZXUw69qs7h/XPS
         GM7GUmDA3/g4FSqTGD80M9myOOjH7MPX3+2xEHCtcIySxuvcluELIU6QS3tutMZEIy2H
         VfBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xMnypghb7eobehgvuvyvI6ftY8R6Uotx581HxzZ88OM=;
        b=UAfM/D7dgVvrWfC2qpwhwfUeTbG4/X0Dg2f2Llf0ELkYz/pVbu4ha5Rl0M3D0W/7w/
         BHamx5EBg5bY5OcX41svPQ7RsuLqMa5FrEgr2CATc4vi00ccBnAQwZkrAxBPdvqjQA/L
         cAYj6vnaT6AoHJWXkmVMncKWKvW7rGu7Ui1x7lj9wyKlqbROCt/KhRUZ/YTr8aOJRIFK
         ldkCck9J+k5QMXLVczNsH74qmpjlnbIoNBvM9PA5EsSTDjdN9taxjWOZ681mfAgG/C8+
         qv4DZ4tBgAHh4kcwhRdr2VhjfV3/G4BJSbrW/U2mn8AThB9N1H+2xgNNOhWXESPTrmUX
         laNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Pf7dp5TH;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id 13si1020311pgf.0.2021.02.01.16.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 16:02:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-507-PjoyMbgUNiSDiR5nWhS47g-1; Mon, 01 Feb 2021 19:02:10 -0500
X-MC-Unique: PjoyMbgUNiSDiR5nWhS47g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FE43107ACE6;
	Tue,  2 Feb 2021 00:02:07 +0000 (UTC)
Received: from treble (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4250E5D9CA;
	Tue,  2 Feb 2021 00:02:05 +0000 (UTC)
Date: Mon, 1 Feb 2021 18:02:03 -0600
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
	Bill Wendling <morbo@google.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Message-ID: <20210202000203.rk7lh5mx4aflgkwr@treble>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Pf7dp5TH;
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

On Mon, Feb 01, 2021 at 03:17:40PM -0800, Nick Desaulniers wrote:
> > > > > Rather than tightly couple this feature to a particular toolchain via
> > > > > plugin, it might be nice to consider what features could be spec'ed out
> > > > > for toolchains to implement (perhaps via a -f flag).
> > > >
> > > > The problem is being able to detect switch statement jump table vectors.
> > > >
> > > > For a given indirect branch (due to a switch statement), what are all
> > > > the corresponding jump targets?
> > > >
> > > > We would need the compiler to annotate that information somehow.
> > >
> > > Makes sense, the compiler should have this information.  How is this
> > > problem solved on x86?
> >
> > Thus far we've been able to successfully reverse engineer it on x86,
> > though it hasn't been easy.
> >
> > There were some particulars for arm64 which made doing so impossible.
> > (I don't remember the details.)
> 
> I think the details are pertinent to finding a portable solution.  The
> commit message of this commit in particular doesn't document such
> details, such as why such an approach is necessary or how the data is
> laid out for objtool to consume it.

Agreed, the commit message needs more details.

> > > > > Distributions (like Android, CrOS) wont be able to use such a feature as
> > > > > is.
> > > >
> > > > Would a Clang plugin be out of the question?
> > >
> > > Generally, we frown on out of tree kernel modules for a couple reasons.
> > >
> > > Maintaining ABI compatibility when the core kernel changes is
> > > generally not instantaneous; someone has to notice the ABI has changed
> > > which will be more delayed than if the module was in tree.  Worse is
> > > when semantics subtly change.  While we must not break userspace, we
> > > provide no such guarantees within the kernel proper.
> > >
> > > Also, it's less likely that out of tree kernel modules have been
> > > reviewed by kernel developers.  They may not have the same quality,
> > > use the recommended interfaces, follow coding conventions, etc..
> > >
> > > Oh, did I say "out of tree kernel modules?"  I meant "compiler
> > > plugins."  But it's two different sides of the same coin to me.
> >
> > I thought Android already relied on OOT modules.
> 
> Android Common Kernel does not *rely* on OOT modules or compiler
> plugins.  Android doesn't forbid vendors from using OOT modules,
> though, just as the mainline kernel does not prevent modules from
> being built out of tree, or users from insmod'ing them.  It's
> certainly a pragmatic approach; idealism doesn't work for all OEMs.

No judgement, RHEL is similar.  Linux is nothing if not pragmatic.

> Personally, I lean more towards idealistic; I prefer in-tree modules,
> dislike compiler plugins (for much the same reasons), and idealize
> loose coupling of software components. This series looks to me like it
> tightly couples arm64 live patching to objtool and GCC.
> 
> On the earlier thread, Julien writes:
> 
> >> I think most people interested in livepatching are using GCC built
> >> kernels, but I could be mistaken (althought in the long run, both
> >> compilers should be supported, and yes, I realize the objtool solution
> >> currently only would support GCC).
> 
> Google's production kernels are using livepatching and are built with
> Clang.  Getting similar functionality working for arm64 would be of
> interest.

Well, that's cool.  I had no idea.

I'm curious how they're generating livepatch modules?  Because
kpatch-build doesn't support Clang (AFAIK), and if they're not using
kpatch-build then there are some traps to look out for.

> > GCC plugins generally enforce the exact same GCC version for OOT
> > modules.  So there's no ABI to worry about.  I assume Clang does the
> > same?
> >
> > Or did I miss your point?
> 
> I think so.  It would seem that the current solution for stack
> validation would require multiple different compiler plugins to work
> reliably.  If jump tables are an issue, I don't see why you wouldn't
> pursue a more portable option like -fno-jump-tables first, then work
> to claw back any performance loss from that, if relevant?  Then
> there's no complaint about toolchain specific implementations or tight
> coupling.
> 
> Objtool support on arm64 is interesting to me though, because it has
> found bugs in LLVM codegen. That alone is extremely valuable.  But not
> it's not helpful if it's predicated or tightly coupled to GCC, as this
> series appears to do.

I agree 100%, if there are actual Clang livepatch users (which it sounds
like there are) then we should target both compilers.

And yes, objtool has been pretty good at finding compiler bugs, so the
more coverage the better.

I like the -fno-jump-tables suggestion, assuming it doesn't affect
performance significantly.

> The idea of rebuilding control flow from binary analysis and using
> that to find codegen bugs is a really cool idea (novel, even? idk),
> and I wish we had some analog for userspace binaries that could
> perform similar checks.

Objtool is generic in many ways -- in fact I recently heard from a PhD
candidate who used it successfully on another kernel for an ORC
unwinder.

It could probably be used on user space without much effort.  That was
an early original stated goal but I definitely don't have the bandwidth
or incentive to work on it.

> > > FWIW, I think the approach taken by -mstack-protector-guard-reg= is a
> > > useful case study.  It was prototyped as a GCC extension, then added
> > > to GCC proper, then added to LLVM (currently only x86, but most of the
> > > machinery is in place in the compiler to get it running on arm64).  My
> > > recommendation is to skip the plugin part and work on a standard
> > > interface for compilers to implement, with input from compiler
> > > developers.
> >
> > I like the idea.  Is there a recommended forum for such discussions?
> > Just an email to GCC/Clang development lists?
> 
> linux-toolchains@vger.kernel.org is probably a good start.

Thanks, I'll write something up (maybe a more specific proposal) and
post it.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202000203.rk7lh5mx4aflgkwr%40treble.
