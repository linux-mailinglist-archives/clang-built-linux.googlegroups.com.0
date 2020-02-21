Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN6PXXZAKGQEALRAILI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FF1166EE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 06:16:40 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id p3sf628491qvt.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 21:16:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582262199; cv=pass;
        d=google.com; s=arc-20160816;
        b=vww/iaTmR1ElKuMYehSQ7Kn0ugqDqKYwYktyyEF37TDh8Nn+Xph3gWy/w9AL+tYbWD
         /TN7u6iTq9PP+FsT9mkkW5kcTrE577QJSegfZ0ANYC+0jxmjvEi5CThquLTg0fu/u/hb
         jt7Khn8PaZ82ehWREw0Y/Zpa11gumtIpeVS49Fod+xkXWfW2DEdOg3GnVt9iVLeiV5ji
         dqc1Psd6NNGROCF2eVbJYFDtqPopcXK7dXBu9SesPoZ/GBQf4uORBESBC/zVrxHatep8
         oHFh97M6t/WQkqlZKtA5vPGPTfJbb4jygPlXyKBUuoKEIg/B8RlWf2ZKov87Ee3opb7r
         /bsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yrnvGqtBXw6lqsAgHUtbkk0iqNBrL5UEmWyJfWxswho=;
        b=JOYco/VM1A2qYlwLUa/vyqI/3fbt6GvX2Kr10TF2gaNOpE5WOTDimHOMp5BuGkxH99
         54vBOAni1mYbaEPz+OGM/p5mZmmv2NA0GXsP+4+enM+9vUr7pxsdKKL2PJnsp+qLlAle
         e/Je1uuHeQP0o/rT6ppIkoB7NDkhEO1B0rUeHiDltuJlFAps8t/fbuXqmv6XLvbCmcm7
         8u1d0SAGpVZQle8uiiQHuuYC7s27J0GLjux7wjdpooMuAC41PHMsIiz6FNItpDY3M0wd
         nGWcQ+dSfEYhYYtvdBVWC2kNiOb+7yMGsN2YrzKV2EOfs5fXgN/EjtXPe9cCLQU/nhUz
         3PrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FJV/rrd9";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yrnvGqtBXw6lqsAgHUtbkk0iqNBrL5UEmWyJfWxswho=;
        b=KQnIiTmO+uVC1sNedVHj68jU/4/ypSj/CnzZjKOQeKcacsgOB+FooDsDS7CAwfUCvw
         iFYveXMEbFboC10GAbIsM5lPT8mkK8kkNB/H1naF5nu55eRrJ4Q5uAfLRAop4Pm180H4
         Jxg0qQyR/f+3zXyeGajL5qjoL6r1hQx5AlMawvNzUh1/8cuQbTorDP478xHzngmeE8Kk
         yB+AFpcHrt5/YayA4F7Q2L8zQRT08s7SxnWz2ddOb9cuPa/7da1HViiiusXZeXc99RZH
         XWuLxjsK2KQp0+I9RyXcdQk38KZShhyXta8T7WIaMUrbRnReeGSUHG/A2lsAkVQnbhJK
         zF5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yrnvGqtBXw6lqsAgHUtbkk0iqNBrL5UEmWyJfWxswho=;
        b=nvKLj0TUftLlDLu+tsSyjOrCedDw3p2VgLpbjcMcVYiuRIcTAuH220hfV09LFviDqW
         mAm+vl3Quy1XNDVm/yH+cqpAq1kmEQQJn5fhcNn4WnUZuz5Sh5Ldmd2bamcMeknMvJRT
         s5V2OCHTZvOjsMb9hdnClI/qqjlXrkP+KV/EbwaIzPWMUDlB0scsmfIztiqU5syCBLou
         BwR53GSVbp4nOwUu06karjiha8isZrRA0tHWiuzaBIBp/dpGis2Ho/iODHlCwcBoG+gF
         XEyw1itzoJfXYBW3e1lC9f01bJ7Gx1/mlTo7kjxmxsioAHKJQyHE5yoHf33f856KmnqX
         9MLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yrnvGqtBXw6lqsAgHUtbkk0iqNBrL5UEmWyJfWxswho=;
        b=JAt8Rxs8EogLtbAD2CJd0dkU14w0uk9M5FvKpPcyucFQb5P2ak2uUYBddGlzP91JgR
         ubLek4U5SW6jscC4P3xd/Fuu7FJZJ7bWdKEeVuofm+HJum4OYeRR3zu4551laY4QE+TI
         sINS/PuvYuKyPsW/RMh37idDb0aFrc/tgCDKg+qSNdcytQSfV2mH+bWJw/hBu/VdHh/G
         eoDdI5EUdCgLG95iFI9K9P2CPaXrDEVsj9pOqPh89oSnQKEoy7XHXzSqY+FmN/WQ25Bi
         A1gGsYtkVUdAwmJ8GL83ghe0D0D/xQJzpLrlalHvt/71cCdpFewH/3doCWxtlfBp/6SH
         VTdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUj0JKS+EwbJaoD9Zx+f4cIQe99wwLigjhDfYF0rmbqBvwsQJpp
	oXazeEiI3agb+w326a2Xr5s=
X-Google-Smtp-Source: APXvYqwyeqrNi2IiJvli11skgTTwWL/LWkr7o6uL2+x8sOW1eQzcE62hRiY3QgrTBtSsd4ZhYyeneg==
X-Received: by 2002:a37:6351:: with SMTP id x78mr32215351qkb.298.1582262199520;
        Thu, 20 Feb 2020 21:16:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1650:: with SMTP id f16ls238948qvw.0.gmail; Thu, 20
 Feb 2020 21:16:39 -0800 (PST)
X-Received: by 2002:ad4:4a69:: with SMTP id cn9mr29397962qvb.218.1582262199153;
        Thu, 20 Feb 2020 21:16:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582262199; cv=none;
        d=google.com; s=arc-20160816;
        b=wxqx2duQ+kQ3+oGUX+QQbzOrENNwhBCJ3juPBThFcIxnK2JN9B0GyQb0t1sVW+79km
         JrhZZo/uwByQMCRJstjz8kNS1vbcNe0y+gBch9jAsSZG6R5fEwjDSz1RDfepImTwNtKB
         xFHDG4rWNZk/Af+TAfp08CEUQBFr7pmkNp/Z/TDqoFyleVXW21mPDp+H+cTwDJfrdVbo
         N3xLBuHdkOxtfahYDneNBwy8lP009y/BPuFFd05Fu7Vk/Mur4YnUSGuc6b3P4vcDGvXK
         k+iN5FQ16oXIox6/xWTtuILUk/GlUN/i1NUuPpiMqeAstys7gL3LmHyeTLPYsnUgrJVW
         3BQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MIJMVMivdIiIQ4UEVnK6Lov577WmudX3qjqch/O7iDw=;
        b=MfSUu0f2tm+HWMLvnTMq4dgtIYII8o4KsfS2dseKS9u4iDAnEuSvPaLBT+DNBo351n
         M+rsfr8dTodo4I+9Gooz2m1Lgol4dWPO5SygRqckpLswoGfoJWEf3i31JVGbnZQ3RCha
         xnZyRlm3mHgIEOI4TuWJygAmP4G37RHsGENim/P/4Quqi4PLAuNRmbGjbGdcHW0l6Qp2
         T8h+0UNWdk1ravX/xURN4ek9zcWdLscdSO/cSYxLIsFsSAWtxtq/KwV7+V0pMxQrFw+r
         yg1u/rWNbkLcCXhaPsJRUTB/ls6lexeOPlnTkK4NkQ1zSjv541SSPVmqqNHElTFjGm5P
         zPdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FJV/rrd9";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id m18si95037qkm.0.2020.02.20.21.16.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 21:16:39 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id j20so990856otq.3
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 21:16:39 -0800 (PST)
X-Received: by 2002:a9d:6e98:: with SMTP id a24mr25601365otr.53.1582262198477;
        Thu, 20 Feb 2020 21:16:38 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 5sm672078otr.13.2020.02.20.21.16.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 21:16:37 -0800 (PST)
Date: Thu, 20 Feb 2020 22:16:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC 1/2] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <20200221051636.GA41266@ubuntu-m2-xlarge-x86>
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <202002201639.EAE5416C83@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002201639.EAE5416C83@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FJV/rrd9";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Feb 20, 2020 at 04:42:39PM -0800, Kees Cook wrote:
> On Thu, Feb 20, 2020 at 03:48:57PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Added to kbuild documentation. Provides more official info on building
> > kernels with Clang and LLVM than our wiki.
> > 
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Documentation/kbuild/index.rst |  1 +
> >  Documentation/kbuild/llvm.rst  | 59 ++++++++++++++++++++++++++++++++++
> >  2 files changed, 60 insertions(+)
> >  create mode 100644 Documentation/kbuild/llvm.rst
> > 
> > diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
> > index 0f144fad99a6..3882bd5f7728 100644
> > --- a/Documentation/kbuild/index.rst
> > +++ b/Documentation/kbuild/index.rst
> > @@ -19,6 +19,7 @@ Kernel Build System
> >  
> >      issues
> >      reproducible-builds
> > +    llvm
> >  
> >  .. only::  subproject and html
> >  
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > new file mode 100644
> > index 000000000000..05c9a28a5a6d
> > --- /dev/null
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -0,0 +1,59 @@
> > +==============================
> > +Building Linux with Clang/LLVM
> > +==============================
> > +
> > +This document covers how to build the Linux kernel with Clang and LLVM
> > +utilities.
> > +
> > +About
> > +-----
> > +
> > +The Linux kernel has always traditionally been compiled with GNU toolchains
> > +such as GCC and binutils. On going work has allowed for `Clang
> > +<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
> > +used as viable substitutes. Distributions such as Android, ChromeOS, and
> > +OpenMandriva use Clang built kernels.  `LLVM is a collection of toolchain
> > +components implemented in terms of C++ objects
> > +<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
> > +supports C and the GNU C extensions required by the kernel, and is pronounced
> > +"klang," not "see-lang."
> > +
> > +Clang
> > +-----
> > +
> > +The compiler used can be swapped out via `CC=` command line argument to `make`.
> > +`CC=` should be set when selecting a config and during a build.
> > +
> > +	make CC=clang defconfig
> > +
> > +	make CC=clang
> > +
> > +Cross Compiling
> > +---------------
> > +
> > +A single Clang binary will typically contain all supported backends, which can
> 
> For clarity for people who have only ever seen GCC, I would add
> "compiler":
> 
> 	"A single Clang compiler binary ..."
> 
> > +help simplify cross compiling.
> > +
> > +	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
> 
> Maybe note that CROSS_COMPILE, when using Clang, gets parse for the
> architecture triple, and doesn't get used (as with GCC) as an executable
> prefix for locating the appropriate compiler binary...
> 
> > +
> > +LLVM Utilities
> > +--------------
> > +
> > +LLVM has substitutes for GNU binutils utilities. These can be invoked as
> > +additional parameters to `make`.
> > +
> > +	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> > +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> > +	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
> > +	  HOSTLD=ld.lld
> 
> Do you want to add a section for "building latest Clang" here, or is
> that just asking for needing constant updates to this doc?

Mentioning tc-build might be nice since I have been active in keeping
that up to date and it tries to make building a new version of clang as
brainless as possible since most people don't want to muck around with
build options and such. However, it might be best to just link to the
LLVM building documentation that way it always stays up to date.

Or just do both?

> Otherwise, yes, looks great!
> 
> -Kees
> 
> > +
> > +Getting Help
> > +------------
> > +
> > +- `Website <https://clangbuiltlinux.github.io/>`_
> > +- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
> > +- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
> > +- IRC: #clangbuiltlinux on chat.freenode.net
> > +- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
> > +- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
> > +- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
> > -- 
> > 2.25.0.265.gbab2e86ba0-goog

Otherwise, I think the document looks good. I should probably try to
build it at some point to make sure everything passes and looks good.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221051636.GA41266%40ubuntu-m2-xlarge-x86.
