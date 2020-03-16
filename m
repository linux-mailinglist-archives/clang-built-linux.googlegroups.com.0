Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMEKX7ZQKGQEAMWTLJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8716C18724A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 19:28:02 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 60sf12182469otp.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:28:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584383281; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYnFHuofkXKX0h2cKjtmfZMxvPRZy+RdYXfkd5ul7wdRn2nbikqJ/4KUJMWutYWfIC
         DD0HAuCONjXDXbfIP7kEjBGH1fDA/hRQiNdwarCUw0VQk9+2qnUHyQUzoZUhWmFW7siG
         SWiaDrJ6d1+uVylxMwx/+2wYTKpOvEL4tsTtmUfNMdyP4N/gHPOuH2u6wqAjDPyJRGk+
         3BKVuOYlBld7zEagCNWZjURY+RF5gbelNt6u+Vxp9+PZyND0MxKrspKo+zDikmPbIy7c
         chRJp+7LkjXt8rG2PqXKpcsWs/tSSXBbSjkw+yhclxlnhr6Op5+g8TiW75BYPRgiFVdq
         UNKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fNfDeQIjIVfQerZN4vG8z1/jrNUeyuRVy0rXBOB0kI0=;
        b=Vg5TjojmWtGOiPt8SCN21trgrsWl9SCwKf5nUqa3DHJrXt3rhOKnepqdfHXGKrEIj+
         f134hVLog/Uo+3ud4tIXRfxWRPvUCYC16vw1NC31e/OlJIYGjLo5HrlXp81i45S0ww3v
         KmOIgMKOKmwT+xvDtf4PZ7yjaQLe4Ee0EE1WhrqVNmKl9jA81Sl2tinoazIgOOiXI/e1
         GYuZkn5BzDK8x8qMbL7kPYBdwm3rfZ34CaQDpIhnuzIxY8av9aQ9KLbxZCVebrBEWTtz
         vCktTbolurdaeqOa4Sy0uxfeFd7k4uIsJwQ3Mmc1BieoBmiHbxD6LrSuOYiQnrUXGKcr
         7yKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HLG5FZJh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fNfDeQIjIVfQerZN4vG8z1/jrNUeyuRVy0rXBOB0kI0=;
        b=hoqgWHKVetJBMiwMQmmlseA7kYdlhXH8Qv9CcFHt7uEcGHppPItlPZSeKR4nvDGA+W
         Hs7m3IxiXPV7fStC63UAtNkGlx3lL9lAk8ruQnHxFmLxbimIEpmnS5umKmXS4oD9MS/w
         RA5aH3Lz0pugCSema99NDMKpQ/3hrBSpq+qov8YfpqmIF4CN9T17S/3suzkXnhBYPGXL
         skLpQnSsoQzd6reARDvKtF+ZqxCD7ch6dMWVEj4JaOpD2ez2A8M9u+1QK2xFwBtZNYut
         K81ohkLPSdvuJO9BFuld80e8KOsf4LnzfMfcrZvqCkfyVhWk21x+SvScYG2XtD9uIWYh
         VZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fNfDeQIjIVfQerZN4vG8z1/jrNUeyuRVy0rXBOB0kI0=;
        b=EDpp0RJVo2CPgjnLTsHfqwm3YzJ/O5g4nt7lJhn5D0kNlWNPxN+oVpToU9sQYYfhLx
         Z0OMj98bsKXHQb2Z/ziFbNEHY5pYIDBAowrJzruO5zQ+yUXnCLd4Af4D1ozsFf7tghes
         FMxxSCc2/j1anbYWpRUeic5/7KMoKkOppD4I+C+CMTGnvS7qMjH56Iiarbo08AJnMzvq
         gBuQODeflBBhaORztHGwHD3nWu0lKL9KxI2Myihh3a/zOV/VZ89rp1fnOcb/zz7yPVxN
         92PdT5PiKdYLBGfZvIhy+oUDbpgIYDPVnU1ARpfPYm78CtolghsNv3VYkSJ2E7tvcKDm
         36PA==
X-Gm-Message-State: ANhLgQ0dVIwpmhcwknrLcnF7CTbUS4wojArmxwlbNsswhgI3V7ulRMPR
	g1RAcBu42qv9qYyGuHHdLbY=
X-Google-Smtp-Source: ADFU+vvFWkkVhu8zPjKQy5BFAXAH13XVyCkOsEzbbRU+11mBKMErJaQquXmtRwSg8Gd1f0JeOYCxOw==
X-Received: by 2002:aca:b60a:: with SMTP id g10mr619759oif.102.1584383280982;
        Mon, 16 Mar 2020 11:28:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls6576077otj.8.gmail; Mon, 16 Mar
 2020 11:28:00 -0700 (PDT)
X-Received: by 2002:a9d:7392:: with SMTP id j18mr510151otk.186.1584383280574;
        Mon, 16 Mar 2020 11:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584383280; cv=none;
        d=google.com; s=arc-20160816;
        b=V1JtfNINRWEQqnTcKxCci9/QmZ1lA/ywzAO7iwA60mL2dETHtMANE6gSExJSZSP5J5
         mMLINg3dwFJHzWX3PYig+0BgSy+OytuA+MhUUM73PmJ5+FuGwlEkoVeipfIS5Hcha6/z
         P/QE8UOedNEXRrC4c5W49mdB8NUiX6wK7wruqkOwN9IR2I/elnNIR8I2FDZ3syhJSk4D
         bKSLLxFk+j8nl+yjlfvLys9cK26BaNS8EqrgjP+vKmdISB0ch/bRWusGiz49jq/QeUba
         JUScL2FSUcPvgqgWleWWUTeQ+wpctmaMBQC0N4M+qXr1SSV89VQL87mIeohBPc+ArRmC
         iLvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q6i+NIErXTACukpZDXd3M1UymhJuziUk+l8s48a9c8A=;
        b=A8wZof7ztV02QF1KNw28Rrurju1r4x6GOxi8tV3TEerEHrnW6zsXr5DIzEA4PY5HFq
         qnJaIjlvBBt81IlTKb3B7T/Z+mEYOK42ED019lXh60jCiwRfIDX+RAcQo7E0Baocu0/A
         fqvRxGmqTf7K3fkO0q2Pr052z7xnXUALKmQPLEw4LqCvN/2JGSG85GHNSrnDzZwGZIyD
         R0k9PbMFOXUIvxj5Z2GySFkD9YVWVyNEicFXHZW/9vb3D48DbfbvZ9NRNLX4TYzLmvGf
         e8eeAGYCVffre5MkC/6c/daBdZUfydnKzYb242nKgWpH/kWGHTi1vxsk1zD7sXNPy2z3
         l1JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HLG5FZJh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t81si65526oie.5.2020.03.16.11.28.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 11:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 37so10201012pgm.11
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 11:28:00 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr921178pfo.169.1584383279372;
 Mon, 16 Mar 2020 11:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <20200220234858.145546-2-ndesaulniers@google.com> <202002201643.2C3B1577E@keescook>
In-Reply-To: <202002201643.2C3B1577E@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 11:27:47 -0700
Message-ID: <CAKwvOdmVWB7+cCbKnQ1QYUeB4+R+_ohwohFTHA3Acp--hs5_Hg@mail.gmail.com>
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
To: Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HLG5FZJh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Feb 20, 2020 at 4:45 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Feb 20, 2020 at 03:48:58PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Prior to this patch, building the Linux kernel with Clang
> > looked like:
> >
> > $ make CC=clang
> >
> > or when cross compiling:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> >
> > which got very verbose and unwieldy when using all of LLVM's substitutes
> > for GNU binutils:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
> >   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> >   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
> >   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> >   HOSTLD=ld.lld
> >
> > This change adds a new Makefile under scripts/ which will be included in
> > the top level Makefile AFTER CC and friends are set, in order to make
> > the use of LLVM utilities when building a Linux kernel more ergonomic.
> >
> > With this patch, the above now looks like:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1
>
> I like this idea, but I think it might not be happening in the right
> place... but I'm not sure what that place is. This will collide, for
> example, with the Clang LTO series from Sami, as that _requires_ the
> LLVM utilities in many places. I think some coordination with Kconfig
> will be needed to not make this kind of crazy.
>
> e.g. Sami currently has to hard-code this logic:
>
> https://github.com/samitolvanen/linux/commit/42572f50c5f951cac7ea4720658d9abd2b995529#diff-b67911656ef5d18c4ae36cb6741b7965R652

Thanks for the link.  I don't think Sami's patch should hard code
these values.  My change will set these values BEFORE Sami's first
hunk (my Makefile change is L472, his is L652.  I think with my patch,
Sami could:
1. drop the first hunk outright.
2. use `$(NM)` in scripts/Makefile.build. (Notice how it does this
with `$(AR)`, and does not export `LLVM_AR`).
3. require the use of LLVM=1 for CONFIG_LTO_CLANG, either via
documentation, or build time test.

I don't think we should have to suffer at the command line for tools
that need additional test coverage, for an out of tree patch (sorry
Sami, I'll still do whatever I can to help rectify that).  I want
`make LLVM=1` to be the default way we build things going forward; if
that complicates some workflows somewhere, sorry, and we'll help you
fix it, but we're not going to hold up the train over it.

Nathan & Masahiro, I was really hoping to get your thoughts on this RFC.

>
> -Kees
>
> >
> > Then you can "opt out" of certain LLVM utilities explicitly:
> >
> > $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 AS=as
> >
> > will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> >
> > This would make it more verbose to opt into just one tool from LLVM, but
> > this patch doesn't actually break the old style; just leave off LLVM=1.
> > Also, LLVM=1 CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> > In that case, it's recommended to just drop LLVM=1 and use the old
> > style. So LLVM=1 can be thought of as default to LLVM with explicit opt
> > ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> >
> > A key part of the design of this patch is to be minimally invasive to
> > the top level Makefile and not break existing workflows. We could get
> > more aggressive, but I'd prefer to save larger refactorings for another
> > day.
> >
> > About the script:
> > The pattern used in the script is in the form:
> >
> > ifeq "$(origin $(CC))" "file"
> > $(CC) := $(clang)
> > else
> > override $(CC) := $(CROSS_COMPILE)$(CC)
> > endif
> >
> > "Metaprogramming" (eval) is used to template the above to make it more
> > concise for specifying all of the substitutions.
> >
> > The "origin" of a variable tracks whether a variable was explicitly set
> > via "command line", "environment", was defined earlier via Makefile
> > "file", was provided by "default", or was "undefined".
> >
> > Variable assignment in GNU Make has some special and complicated rules.
> >
> > If the variable was set earlier explicitly in the Makefile, we can
> > simply reassign a new value to it. If a variable was unspecified, then
> > earlier assignments were executed and change the origin to file.
> > Otherwise, the variable was explicitly specified.
> >
> > If a variable's "origin" was "command line" or "environment",
> > non-"override" assignments are not executed. The "override" directive
> > forces the assignment regardless of "origin".
> >
> > Some tips I found useful for debugging for future travelers:
> >
> > $(info $$origin of $$CC is $(origin CC))
> >
> > at the start of the new script for all of the variables can help you
> > understand "default" vs "undefined" variable origins.
> >
> > $(info $$CC is [${CC}])
> >
> > in the top level Makefile after including the new script, for all of the
> > variables can help you check that they're being set as expected.
> >
> > Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> > Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile              |  4 ++++
> >  scripts/Makefile.llvm | 24 ++++++++++++++++++++++++
> >  2 files changed, 28 insertions(+)
> >  create mode 100644 scripts/Makefile.llvm
> >
> > diff --git a/Makefile b/Makefile
> > index b954c304c479..8c8888ebb822 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -472,6 +472,10 @@ KBUILD_LDFLAGS :=
> >  GCC_PLUGINS_CFLAGS :=
> >  CLANG_FLAGS :=
> >
> > +ifeq ($(LLVM),1)
> > +include scripts/Makefile.llvm
> > +endif
> > +
> >  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> >  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
> >  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> > diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> > new file mode 100644
> > index 000000000000..a4401c8677dc
> > --- /dev/null
> > +++ b/scripts/Makefile.llvm
> > @@ -0,0 +1,24 @@
> > +define META_set =
> > +ifeq "$(origin $(1))" "file"
> > +$(1) := $(2)
> > +else
> > +override $(1) := $(CROSS_COMPILE)$($(1))
> > +endif
> > +endef
> > +
> > +$(eval $(call META_set,CC,clang))
> > +$(eval $(call META_set,AS,clang))
> > +$(eval $(call META_set,LD,ld.lld))
> > +$(eval $(call META_set,AR,llvm-ar))
> > +$(eval $(call META_set,NM,llvm-nm))
> > +$(eval $(call META_set,STRIP,llvm-strip))
> > +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> > +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> > +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> > +$(eval $(call META_set,READELF,llvm-readelf))
> > +$(eval $(call META_set,HOSTCC,clang))
> > +$(eval $(call META_set,HOSTCXX,clang++))
> > +$(eval $(call META_set,HOSTAR,llvm-ar))
> > +$(eval $(call META_set,HOSTLD,ld.lld))
> > +
> > +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> > --
> > 2.25.0.265.gbab2e86ba0-goog
> >
> > -
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmVWB7%2BcCbKnQ1QYUeB4%2BR%2B_ohwohFTHA3Acp--hs5_Hg%40mail.gmail.com.
