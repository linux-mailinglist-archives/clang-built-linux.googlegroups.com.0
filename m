Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVVWXTZAKGQELNEZLXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D495166B33
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:50:47 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id m62sf302369ybc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 15:50:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582242646; cv=pass;
        d=google.com; s=arc-20160816;
        b=oyeLt24n2N/XGj73yzI+Ws1z9ddbT9eiF6LOVkj8M7tPfCAENb/aFzJTzU7jtfpUtk
         vBmF2f50YOZf/fB/LzgbumjQj3ZGZ/fXLcsNVkV3Bfaa6snFkB+aEk0Thci24aJv/J6R
         t2LTih6TqaARd6U9Fp5vBNs4n7VaBs0H9G+cyHNSRkVhcmrUh2cnRQUewqM7Z3rNygtm
         DB97L5hsMAmRtF+XK8+Do9XAQG1neh4FoY+LudsVdvokUHE6Jqty/g454+sx8B8trhoM
         U+Z0pbjEAWiDjoP8H597KKu0EuMILnv9OBU89r3NE+t711Yu4qqSp+ANpkhEg3+wQ1Uk
         1GcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YFMhbz7qh+OBEipe/qHZjanG74z+EJPgrEDfYBTeWYM=;
        b=tUYxPA9cFm/dDsBv+KRunJy4ogffyYEbyCWXYl8cStCmuEenyF3FUzQexDNylVOtx/
         kG4H7Yfjod4Pcr98YIJADOnEiXLgtO0RAnllMtYpSMdjOMQtGY6wCMzykvEWkZoVeEpL
         y0H0+/rFEys0LlXYgL5HckYKRKLpGiYv2CfJN7+Msp0te4fodsHHghn+pVMGJ7GYGoMf
         Jp7q5pHK4FQqdZ+gP8wJLD/+OeyYW2en7O7r6Izdgwe+SY/u0vuxw0TEgx0q5FNkS+c+
         AlMvveYBtaTMkTWcbC5obW0AhvKwDTuFzM4i48As85uPFydq31YtTuskqN7fO67LvVOi
         zgUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CQNG/N5S";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFMhbz7qh+OBEipe/qHZjanG74z+EJPgrEDfYBTeWYM=;
        b=JtH+ZY6z9v6Hfx2nOyOxtVvY7HVzLPYszT2NXYdQkQ9WJJhUfKwjiNNp7nEL/0DlJr
         MjTXSqjvAiJvs0/nhqLMrDRNMOl3lkbu3tDhzgqD3wBkIqmlbxfaOsTp572YDk/4K1tH
         mzgTIzzSMExsaXdzTdpNt6Nv6dObzP8xc4XMtX1zy4bfaxUSJRNl+eQ/Q7ydhZWxVHzD
         gnQA6dl5MobMvK6/kZdxEGBZJJqfMNJ5W4fGDh7vvSsOf8hEKc6dTa5K+mBgHGWMdJu+
         dTRVifJsxkgjva478d4AwZPvAz0RGPNAK11OkyOdKKD9OYNBj0xEvOIWmq2Q5b9XUXYh
         8dKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFMhbz7qh+OBEipe/qHZjanG74z+EJPgrEDfYBTeWYM=;
        b=p2Z+8B6WeYxKEIvHi3puWvR9lBxNVrlQuq7GERINCQQP6ZgpQbMrbeYfgQNpijyhZK
         57Fj/JqIf5rOk2SVLJxbqTO51B/uY42JvK6+fv9w86UubHmGSj2PNqzvZY3iRuYJGzAG
         JCv7mA7zF6trmN6J9anfhjyxN7kZEG6MjKvTO+gtSopWyqJhTMx1Qx+bMF90QrvWPrTG
         fSKaUbtd8JsY5HpU+QhTm+P+VYVEZIgSuV02EeiR3Kk3aoqQ2yWeYWV66ZvCbG3rhXEZ
         dR6kXwtZIYSsaXwx3bx9lAahWx8gNkogQ8nQdvHKTlcXjLjhMdp/vzK5F17Atm4hpjEL
         kL2Q==
X-Gm-Message-State: APjAAAVrkc8/L+NaNEcFGeQ+MHHkjqHcIDAeSfUOGnB4bUTk1VJ5f4Yx
	5rw0GS47O/zY/6t0jQZvPTE=
X-Google-Smtp-Source: APXvYqw3hOfkkgdP+F9C88dx98ikejcXiXIshipOr+pPuGeuFmCRtzYAmK5iiXKpBGeaIBtnTkDaKg==
X-Received: by 2002:a81:528e:: with SMTP id g136mr25194166ywb.468.1582242646264;
        Thu, 20 Feb 2020 15:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8012:: with SMTP id m18ls16144ybk.9.gmail; Thu, 20 Feb
 2020 15:50:45 -0800 (PST)
X-Received: by 2002:a25:38c2:: with SMTP id f185mr3572338yba.490.1582242645882;
        Thu, 20 Feb 2020 15:50:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582242645; cv=none;
        d=google.com; s=arc-20160816;
        b=BiLigyl8TOA0f9YymstbLgVOsIiVqi6rH1R/6brfv48JPHtvALTdVdgyrQofHgDPfJ
         003FiojUR14CRIPw3Vwo129GZ5UOrBQJs1FM72s/j3g0n3DaL8EJIiH8pTx4+nBZQwEp
         AjQuw00fRV15vMPAOLeNZciQAeyjcBjbfVf58l0ZMJ6vy2EFGgLbUNojDP+S4PXBAXvE
         o9DX2M3nNTmcSqMx1QXOtGrXxUhLw9xyCGi3UumJ5S/s/xK70HbN6Rh3D5XFJSf2gas5
         q00yRQDGLX9q8OvDxrmfhyZzmtJbjGiQtXxKV35rx/BHcFhOxDcdow2qndP61xTWShas
         ucVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+RGgBRQ++pVEgV/sAMB4bQ95+BYIw40WlpP5m/DywxA=;
        b=ttrhWEuDPEJsOpXOEWC9WvRepz5rh98ApIVtGmLTeBHiJHm9IMVoGM1bKlByrpvLCv
         D60B78mxR6DreJQFfx3PQXgUwpYrbacOuW/uCV1nzgKIWluuuO3AZdkLcQSj1aStJs5f
         Cox/+8E+Bqnj0GgtIEccIuKS3BKcHovH1JY+3uyqmw2dFzAf5bupnhMMoLK6Td3XLimW
         Vd+GXMRff82Q8ZP4POm1mgIdPf9WPUwYmFUsMds01bhLT+WZ5G913Jj4HUFhuqL3EkkG
         7m4VAkAzYf1TmGZmlqNlWqCFBpgk9arP8gq27Whe9oYv5n8tPV5RUuZDUFZ/3qGpJ6NU
         uY8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="CQNG/N5S";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s2si90624ybc.0.2020.02.20.15.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d6so45235pgn.5
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 15:50:45 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr34549783pgk.381.1582242644529;
 Thu, 20 Feb 2020 15:50:44 -0800 (PST)
MIME-Version: 1.0
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <20200220234858.145546-2-ndesaulniers@google.com> <CAKwvOdneKbdLS1Ap2ussLFKDNe0=DMbNHfUg0BQM9t6e-r_aiQ@mail.gmail.com>
In-Reply-To: <CAKwvOdneKbdLS1Ap2ussLFKDNe0=DMbNHfUg0BQM9t6e-r_aiQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Feb 2020 15:50:33 -0800
Message-ID: <CAKwvOdkRcG+Ua4UD524gUVxpjVeC6wxvsob6g3=n3Yz3rLGapQ@mail.gmail.com>
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, =?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="CQNG/N5S";       spf=pass
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

+ Masahiro, Matthias

On Thu, Feb 20, 2020 at 3:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Alistair, Sandeep
>
> On Thu, Feb 20, 2020 at 3:49 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
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
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkRcG%2BUa4UD524gUVxpjVeC6wxvsob6g3%3Dn3Yz3rLGapQ%40mail.gmail.com.
