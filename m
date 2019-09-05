Return-Path: <clang-built-linux+bncBCLY5BP6XMFRBKNJYHVQKGQEIHY3LLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7455A9797
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 02:19:54 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id c2sf378604otn.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 17:19:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567642793; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnZmkeyEtSfgp6SVnHnopcDonCt2fFGBOGsJV9ZiouZENXQJJaNcBNFltov3mDu+Bm
         d6Z1DowYHSKDLWLtNn/75mFRxQqOFwdvgVyMn4F9AzsqhjFhY04glsm8kKOk79KbXJyt
         4iN1E9UoOg4TnXnxNikSbDdF7AtA+SXzULGBDaNVlKrvH4betlB7hTQne5ao7JCccVDQ
         MdYnKUn8cqcOSr+yDQZfrlgwOtzycuQgwbkB3591bGd0QkFEegWG4AAA/57a1GDaIpXu
         csL23QlGJoyA04bHDdAN7vDYOjc/zLiyElfRbnnXOZGDF2X+VuV/UpsL7tiFORKq716L
         pVvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sD9pDcDsl2Dm6IWHWMyz5wjBiy2DztSnPzPMpSnFdjk=;
        b=cV0syMFj/X0+WdjyLSPfgHBBPuM6hxDQOEFr4X6d6M+z6obqNuSjQ54BiNJweCbnxR
         7w83FfEOixC0vOnv0Oz3UWtHMt8VL6VYhrrnJaF0Ji/EHzM6gDF3yjMyoVaGVA/dzjjq
         N67skx2OKpqYBpjoBjXM1744LifTobSXTeV1IN/QMWym1LsD+jgKxqfIymwbtLqsk/fq
         2AL9tM34EsNNIRKYHQjmKVGX1rLjTM0lUXnpaCYyfggy54YiN2JeQKB1bkxrqQ8oYu+/
         6BoVGn1Bf1atxtrNDohaQCqY0N3Nwrstsybee9OaQGGN8KXXvJQM5QuXtrO/8A1qmWfJ
         A8mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JIHX+RDg;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sD9pDcDsl2Dm6IWHWMyz5wjBiy2DztSnPzPMpSnFdjk=;
        b=ONUNjx4tnmm7OPveDXx752irtFo0Afvy6RMcklm907gMVrfWgDfoSliJp4MjXd4+kr
         cWi4aTmkqu3p6f6ERJl+f9VmCKibsQapwrgYg3o0eXi0v1TJjI+z0qHCD/7lExHWViXm
         TLjy5+AMilrTD2DZIcEqb29TKg02t9YnkTfhwHSLjST/MLUa1IlawHQxsSi0DS5PRYg1
         SNIfz9ySbbLf8xrZ83K1wSS4Ep/aOLhMulfVo4/tIlurGHDB1tF0CQln0CwukJ0o6M9H
         XNVtcg/tP6tS06naJu8ntzqG0iAheK/fQVKTE2NrF8WLQJRQ/C6xq6oGXHLW9kXjXn70
         ihXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sD9pDcDsl2Dm6IWHWMyz5wjBiy2DztSnPzPMpSnFdjk=;
        b=knQDN4kCwz7fcTPcu/S0bzN/JTxLI2MkU/FexjK4GfTiNr6A5cT8wpDSNrIl4kFuEr
         XFx0DAh9odRvp6vBQnn8MRkegZfgd/if3B3UhPlL+HZ95w86G1VZ0dumMOp8Gl8TkbQQ
         oTuianpg5C5WUN4PeE1kRsE8sTfotqFIGqxxnzxVg/qqu6OfQM7oJl9GK+e/TaTe5Os4
         XknGt+FqBqOqA6H7f04PSMcLBC05Gl9+tcFMGuxmA4yvtlv+dGxPw0KL9cutL3zsUuQV
         sPxPRS/1U2hPJ0s+M6mToPn4CX/lZyMkOt71BguwpsklcH24htt7jhEA2ef34Y6Hmubw
         XmHQ==
X-Gm-Message-State: APjAAAWqzjHxqDVBSpDWVo0rXopAzZlgKfO18P4ei5V2EphVCuX7tN9I
	Q3SeSURdc9FVbsLXdCkACVc=
X-Google-Smtp-Source: APXvYqzyhfhGMoa5/UFz8rdRZN4uicTmiY9hsf3PMRB3rOoWfc9lNFgKryTe6wl6+x/OP428jDZaEg==
X-Received: by 2002:a9d:2642:: with SMTP id a60mr226432otb.247.1567642793638;
        Wed, 04 Sep 2019 17:19:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:648:: with SMTP id z8ls84343oih.14.gmail; Wed, 04
 Sep 2019 17:19:53 -0700 (PDT)
X-Received: by 2002:a05:6808:30d:: with SMTP id i13mr565404oie.39.1567642793367;
        Wed, 04 Sep 2019 17:19:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567642793; cv=none;
        d=google.com; s=arc-20160816;
        b=xFXB/A5dyYJ5JkE5K7Puhv8xTQel8ZIsdYbLPVHVnmnC+IVItHcFQpYMiKNM/rjUlE
         2nZ+ESMV7PcU48KlHX7ySWsbxLxUdcuuPgN41hI5QBAwtprjBtvZ1UxJFXDZcEl8VKdd
         KqHtraUSzxGN5KEkWEJGmR8PfI3mXaitNI8Ro/aQRuNr/c20rMp2f0wHLcthxzHy6fFn
         U1OPCmW3ofOjXPwYdgOnmErTN44PGEvQyr6nK4Y0LfCexqPXphaEnRf49NlJjJCoVyYG
         HxVY/MS9/n6Pl9I6KnIQ3n/ElfPzq5xeh9mRSQjUL3GjhOiguCr8YIsnyy8wqoes7jjP
         ap9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I8FjvM+xZTfjefVntC7Dkwl+p61IeCQldrgQjZXcaMg=;
        b=qZ4MyaVe7qXn6mNAnOg/rf/qXx5CdsqabxT+33r5e6tSPdnz/XNuh2ggFJC/vyXWgl
         Z3x2j/wMGzM22MuOTueupc8FbintfyA/rkCVAayKymJo5S8CPn/h0lRQQ/sudLkY/YcI
         lhSuWy3OQYc4Y8NMHWPJk2tY8ImRASJ2Bz0Uj7VC8RAcFsW6m3EkMctlh93m14Gnz+D9
         s9HPzPDDbghKlgGJPstnVVA54NoFMvfEbRrxuQ7kjEwCTYW7Cv1O/Hk+ZBn4HOSFAlcI
         xLf0ENjRss7G+DLMVBcMdyDtR7pI7Zqm+jhgfW7x8cbrRHi5Q7qp2Rzk7la7CVhQ8Cks
         vWxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JIHX+RDg;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id m4si23202otk.1.2019.09.04.17.19.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 17:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id p12so658072iog.5
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 17:19:53 -0700 (PDT)
X-Received: by 2002:a5d:9696:: with SMTP id m22mr936477ion.14.1567642792697;
 Wed, 04 Sep 2019 17:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
 <CAMVonLiOB4PnbnLGo9gP8MK8kGd_e9vW_t+GOPuHMO_RqmkKNA@mail.gmail.com>
In-Reply-To: <CAMVonLiOB4PnbnLGo9gP8MK8kGd_e9vW_t+GOPuHMO_RqmkKNA@mail.gmail.com>
From: "'Vaibhav Rustagi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Sep 2019 17:19:41 -0700
Message-ID: <CAMVonLjBcJm2DqyhybLjCDsm8P9jqSybvq0geDAfvbVn=P0N-g@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, russ.anderson@hpe.com, 
	dimitri.sivanich@hpe.com, mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavrustagi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JIHX+RDg;       spf=pass
 (google.com: domain of vaibhavrustagi@google.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Vaibhav Rustagi <vaibhavrustagi@google.com>
Reply-To: Vaibhav Rustagi <vaibhavrustagi@google.com>
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

On Wed, Sep 4, 2019 at 3:28 PM Vaibhav Rustagi
<vaibhavrustagi@google.com> wrote:
>
> On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > + (folks recommended by ./scripts/get_maintainer.pl <patchfile>)
> > (See also, step 7:
> > https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/)
> >
> > On Wed, Sep 4, 2019 at 2:45 PM Steve Wahl <steve.wahl@hpe.com> wrote:
> > >
> > > The last change to this Makefile caused relocation errors when loading
> >
> > It's good to add a fixes tag like below when a patch fixes a
> > regression, so that stable backports the fix as far back as the
> > regression:
> > Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
> > reset KBUILD_CFLAGS")
> >
> > > a kdump kernel.  This change restores the appropriate flags, without
> > > reverting to the former practice of resetting KBUILD_CFLAGS.
> > >
> > > Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
> > > ---
> > >  arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
> > >  1 file changed, 19 insertions(+), 16 deletions(-)
> > >
> > > diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> > > index 8901a1f89cf5..9f0bfef1f5db 100644
> > > --- a/arch/x86/purgatory/Makefile
> > > +++ b/arch/x86/purgatory/Makefile
> > > @@ -18,37 +18,40 @@ targets += purgatory.ro
> > >  KASAN_SANITIZE := n
> > >  KCOV_INSTRUMENT := n
> > >
> > > +# These are adjustments to the compiler flags used for objects that
> > > +# make up the standalone porgatory.ro
> > > +
> > > +PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
> > > +PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
> >
> > Thanks for confirming the fix.  While it sounds like -mcmodel=large is
> > the only necessary change, I don't object to -ffreestanding of
> > -fno-zero-initialized-in-bss being readded, especially since I think
> > what you've done with PURGATORY_CFLAGS_REMOVE is more concise.
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Vaibhav, do you still have an environment setup to quickly test this
> > again w/ Clang builds?
>
> I will setup the environment and will try the changes.
>
I tried the changes and kdump was working.

> > Tglx, we'll likely want to get this into 5.3 if it's not too late (I
> > saw Miguel Ojeda mention there might be an -rc8)?
> >
> > > +
> > >  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
> > >  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> > >  # sure how to relocate those.
> > >  ifdef CONFIG_FUNCTION_TRACER
> > > -CFLAGS_REMOVE_sha256.o         += $(CC_FLAGS_FTRACE)
> > > -CFLAGS_REMOVE_purgatory.o      += $(CC_FLAGS_FTRACE)
> > > -CFLAGS_REMOVE_string.o         += $(CC_FLAGS_FTRACE)
> > > -CFLAGS_REMOVE_kexec-purgatory.o        += $(CC_FLAGS_FTRACE)
> > > +PURGATORY_CFLAGS_REMOVE                += $(CC_FLAGS_FTRACE)
> > >  endif
> > >
> > >  ifdef CONFIG_STACKPROTECTOR
> > > -CFLAGS_REMOVE_sha256.o         += -fstack-protector
> > > -CFLAGS_REMOVE_purgatory.o      += -fstack-protector
> > > -CFLAGS_REMOVE_string.o         += -fstack-protector
> > > -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector
> > > +PURGATORY_CFLAGS_REMOVE                += -fstack-protector
> > >  endif
> > >
> > >  ifdef CONFIG_STACKPROTECTOR_STRONG
> > > -CFLAGS_REMOVE_sha256.o         += -fstack-protector-strong
> > > -CFLAGS_REMOVE_purgatory.o      += -fstack-protector-strong
> > > -CFLAGS_REMOVE_string.o         += -fstack-protector-strong
> > > -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector-strong
> > > +PURGATORY_CFLAGS_REMOVE                += -fstack-protector-strong
> > >  endif
> > >
> > >  ifdef CONFIG_RETPOLINE
> > > -CFLAGS_REMOVE_sha256.o         += $(RETPOLINE_CFLAGS)
> > > -CFLAGS_REMOVE_purgatory.o      += $(RETPOLINE_CFLAGS)
> > > -CFLAGS_REMOVE_string.o         += $(RETPOLINE_CFLAGS)
> > > -CFLAGS_REMOVE_kexec-purgatory.o        += $(RETPOLINE_CFLAGS)
> > > +PURGATORY_CFLAGS_REMOVE                += $(RETPOLINE_CFLAGS)
> > >  endif
> > >
> > > +CFLAGS_REMOVE_purgatory.o      += $(PURGATORY_CFLAGS_REMOVE)
> > > +CFLAGS_purgatory.o             += $(PURGATORY_CFLAGS)
> > > +
> > > +CFLAGS_REMOVE_sha256.o         += $(PURGATORY_CFLAGS_REMOVE)
> > > +CFLAGS_sha256.o                        += $(PURGATORY_CFLAGS)
> > > +
> > > +CFLAGS_REMOVE_string.o         += $(PURGATORY_CFLAGS_REMOVE)
> > > +CFLAGS_string.o                        += $(PURGATORY_CFLAGS)
> > > +
> > >  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
> > >                 $(call if_changed,ld)
> > >
> > > --
> > > 2.12.3
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMVonLjBcJm2DqyhybLjCDsm8P9jqSybvq0geDAfvbVn%3DP0N-g%40mail.gmail.com.
