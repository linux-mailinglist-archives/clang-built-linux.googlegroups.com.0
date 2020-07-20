Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPA274AKGQENWG6LGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id CD97F226F02
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 21:28:14 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id 14sf11868527ioz.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 12:28:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595273293; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3DWxNUal358WeWiSZeOFglUqiU/HzNDrMBOTbLOWn8wivGsFkBfmJRG77a5kOM9Gy
         KYJutdWtddFYtwZS8RRQueNACg6KoEnRbT9ARuuyfGipYUrO42Z0dAtq9YX1doLJeU8/
         5uYHCPNthdvK5hBmw99CiAvYZvkTLoV1EVTVvkTxYJ8i8h4xcpVgyLcDgP1YYEcGXK1K
         x/MbL2KX6PicQ5IroktjGbTLcrm4iVt0pAAHD8Zgc5lGkVwc7VQeBY/oJL6qACzhH6Ip
         Iufp+ECmtoDVdJbQi4Y6coSgp4fhCbQIxO26XHDdQzhD+9q+mpNAtwmVvc7Ob75WuEoX
         V4jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=An5ZokLw1sHbs4ETMRiLCckzMSm2cwkanQ+TVWPrvkw=;
        b=B463inn5SUlkkGJYgbtTV+KtjDevlN4SsmVHcZSxgMnvJQcQkSteWI4gg8f+wjMYya
         VhG4v41Q+eshQto4lNvka7SKfsQrfL0mhAp5S1j0a37bRC53FLCXOiAi8npjp4hqhu6k
         kGL8y+fUjudG3pRj1QUSBQKF8QXgtWlhoRE8krhTvJOtQKPFJ+eUSpTz3EKRDxEK4sfv
         XCTPqR5pN+WtLxXm2GgCg9D7ZkEm3USIbYsWKqG5jUiCfhGLU+i0SK8RQWkQ+wqSEuay
         c0WRjXgAINGndYlFEW9RdXM87IoYIgjiMoLYr8NxbC0iNmuGrl9VLfeRGew7jPoF2bT3
         M3uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q87Rwtko;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=An5ZokLw1sHbs4ETMRiLCckzMSm2cwkanQ+TVWPrvkw=;
        b=bILRXMl79BxmWVcIAEwrj2FiYcuv/pLt/wi74u6ivFKs610es71n8CtoVnipDYXeXb
         +moj+GB4+w4h2nr/ks+HwhGSzDymwVIwcEs65PlvmktcYoda4QxtgeSnBgGTezZDOXaU
         jH89ukr/jP/8nZWDwok26Bth9+y9jsRiyvcA6z+JCXREvbkVth05rh9lkOA+l5jgss2Q
         L/W6rEuxZ4HlZC8qqkf8aa9CXHBWF0Z/dfoZmo/i3SaaM3NmmsqtDLP2WsyZdStmcKsR
         4l+Wxe1bp2vO5GYmjg8qhaAYdAmLMobN8PUwwk8OZlf6oZ2O5aTVhqQVXgWl/bwiOKni
         HC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=An5ZokLw1sHbs4ETMRiLCckzMSm2cwkanQ+TVWPrvkw=;
        b=fpXNL0CR3+8FU4XO9exiIQmaceonmMDbtzM2hgVeyyfWr0bGOH7VY5iqIs2NXLW8f3
         jQ30jvcv1vf0LkVDBIwJQycgQN4moQWP8o5kNF3IilZgFaXxUUKaosp1j/Ypwurj9QEZ
         ZO65K5WEfxw5j5GpNMAMGxXoSH3kd8VxQedWbHJrqXr0QD7GgtAxxeIp3GDFml3Djmzs
         MJM2cuDg3UusadYEDqxl41zAwLoxLU6MGRHnKJrDZmYItV7CSRNzPfeiOYSOF+VvzLP0
         BSxYDVKCesm2EFGtsNqcn5XBfVGULNEo3ydImOIY/wjTOlrqCM+1Cl3S5Qy5OWDRP2DX
         0b4g==
X-Gm-Message-State: AOAM530GpVvE1M6YToZbB0c5uKHH/8dsCoZnXo9ggfSSEVdk0PqjAOo5
	NFcRiugjpIwtx03At3xfQJQ=
X-Google-Smtp-Source: ABdhPJzRF/pWi1yzhsJXEK9TrbfM5RsdJjDCNu5yI0iXVR8ha72/iWaOuuJbFjm9qYoWPAmu6/vXtw==
X-Received: by 2002:a05:6638:11c1:: with SMTP id g1mr27829707jas.34.1595273293682;
        Mon, 20 Jul 2020 12:28:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:12c4:: with SMTP id v4ls2589398jas.4.gmail; Mon, 20
 Jul 2020 12:28:13 -0700 (PDT)
X-Received: by 2002:a02:5b83:: with SMTP id g125mr27717560jab.91.1595273293281;
        Mon, 20 Jul 2020 12:28:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595273293; cv=none;
        d=google.com; s=arc-20160816;
        b=q6/gNOdgFnXg46mN8XEgg3JzIqNt76B9Y6BB/2Ng8MEkQ2b8k2PQgm3w/qIAofjocL
         mK5r+iG0/0HbEcDpHfP+X4sd+rdXLadYjd+8umDwbtYnrTC0Xo29V5nRH/LvDBOWHaiO
         ZlPY81NHKgv97QfENPrkIE8ltTu1Ey+ZMFZCyaHWLq+VLmH+0Ld/Yldhm8tr8cQXyN5Z
         4/uhQ3mn+VtxjxIW+2nNz79Aa7/tQwDZA3bUQPtAVS1/9qmS6wRKWLtVfIwz0IFd3ZQN
         UTWB4+mOYLytYKkT6YwahPny960dfxT6QMOrj27ISPcS1ZOVfak4EYVuXwBKebSvecik
         aJ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qQtHutRKhkC0xmSMdXzm89kbzbrbZVJj4BoYmmxXY+o=;
        b=R9lMxt1Gzdw0ALp2iyJnBcUzN9y9XurFNOYqvXCbkB+54YFjgmDvKZMaJK0NiHthOS
         dA5l7hHticZujaJ9LY2dXeHcnQHR8WM42iI3iFFXQ/5VPAd2aBZI/v3r4GRu0bV+JvkK
         HZnrIxpjzR9x3qT+QDUaxU0gNA3d4UkpS1p7ohyMcEiXEsxVGENPEM7YxXuhJjLjeeTn
         1ik6XXYPTO4tb2mvv7t+INcCYAJqr/11QppU6U2j+Sa7074v16wRCFZYN/Z1QsQJpQJY
         TEqYwQcpu/GLks+lFHCgS7BsTllICSmkUT4gAXtl2lZGQErNGuUnOPXldnoLKybfocdZ
         BisQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q87Rwtko;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o15si975538ilg.3.2020.07.20.12.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 12:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x72so9532381pfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 12:28:13 -0700 (PDT)
X-Received: by 2002:a62:86cc:: with SMTP id x195mr20778276pfd.39.1595273292322;
 Mon, 20 Jul 2020 12:28:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200720181237.3015826-1-maskray@google.com> <20200720181646.GA6160@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200720181646.GA6160@ubuntu-n2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 20 Jul 2020 12:28:01 -0700
Message-ID: <CAKwvOd=tF7j-mTHMKvvmRkxjFZ-a2ah2+4zLY527WtebZzum8Q@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q87Rwtko;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Mon, Jul 20, 2020 at 11:16 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jul 20, 2020 at 11:12:22AM -0700, Fangrui Song wrote:
> > When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> > $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-,
> > GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> > /usr/bin/ and Clang as of 11 will search for both
> > $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
> >
> > GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> > $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> > $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
> >
> > To better model how GCC's -B/--prefix takes in effect in practice, newer
> > Clang only searches for $(prefix)$needle and for example it will find

"newer Clang" requires the reader to recall that "Clang as of 11" was
the previous frame of reference. I think it would be clearer to:
1. call of clang-12 as having a difference in behavior.
2. explicitly link to the commit, ie:
Link: https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90

> > /usr/bin/as instead of /usr/bin/aarch64-linux-gnu-as.

That's a common source of pain (for example, when cross compiling
without having the proper cross binutils installed, it's common to get
spooky errors about unsupported configs or host binutils not
recognizing flags specific to cross building).

/usr/bin/as: unrecognized option '-EL'

being the most common.  So in that case, I'm actually very happy with
the llvm change if it solves that particularly common pain point.

> >
> > Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> > (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> > appropriate cross compiling GNU as (when -no-integrated-as is in
> > effect).
> >
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1099
>
> Sorry that I did not pay attention before but this needs
>
> Cc: stable@vger.kernel.org

Agreed.  This change to llvm will blow up all of our CI jobs that
cross compile if not backported to stable.

>
> in the body so that it gets automatically backported into all of our
> stable branches. I am not sure if Masahiro is okay with adding that
> after the fact or if he will want a v2.
>
> I am fine with having my signed-off-by on the patch but I did not really
> do much :) I am fine with having that downgraded to

Not a big deal, but there's only really two cases I can think of where
it's appropriate to attach someone else's "SOB" to a patch:
1. It's their patch that you're resending on their behalf, possibly as
part of a larger series.
2. You're a maintainer, and...well I guess that's also case 1 above.

Reported-by is more appropriate, and you can include the tags
collected from this thread.  Please ping me internally for help
sending a v2, if needed.

>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>

I tested with this llvm pre- and post-
https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90.
I also tested downstream Android kernel builds with
3452a0d8c17f7166f479706b293caf6ac76ffd90. Builds that don't make use
of CROSS_COMPILE (native host targets) are obviously unaffected.  We
might see this issue pop up a few more times internally if the patch
isn't picked up by stable, or if those downstream kernel trees don't
rebase on stable kernel trees as often as they refresh their
toolchain.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> if people find it odd.
>
> Thanks for sending this along!
>
> Cheers,
> Nathan
>
> > ---
> >  Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 0b5f8538bde5..3ac83e375b61 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> >  ifneq ($(CROSS_COMPILE),)
> >  CLANG_FLAGS  += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> > -CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)
> > +CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> >  GCC_TOOLCHAIN        := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> >  endif
> >  ifneq ($(GCC_TOOLCHAIN),)
> > --
> > 2.28.0.rc0.105.gf9edc3c819-goog
> >
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DtF7j-mTHMKvvmRkxjFZ-a2ah2%2B4zLY527WtebZzum8Q%40mail.gmail.com.
