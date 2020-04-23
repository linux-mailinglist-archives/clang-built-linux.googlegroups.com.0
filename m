Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLVQQ72QKGQE3YCLCCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C90841B62DE
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:02:23 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id i2sf7650138qkl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 11:02:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587664943; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5yEvP/GVy5ht0jGECgwEXFzPPnXqo3Qpv/POtMmYnIZi00AO/VgQCfAUBtu3oBP4l
         nxZlvtpYu5YBdkA0pzk8LpwYuhq6O1wZhudghscxF0joPdBlozCuw8vxZx4/nTvfs+9P
         onYktc4o6FdGgiwjumhWiFl+gPcU37a/VDh+3iCkRokjEsWpwCfa3lm2DXKDhMj9nL/A
         E7Jtc9SxTRU8wxdBjvwMUQAM9l7KLZ35TWzBrEixX2wlzR+WFGzzGPWpWodMisALbt+2
         +EMwMNKndaRtYj0s4T97G/Gbdha21qHCUE95cJzX3qYSsm7rPc02bskfrr4qigT/nU40
         Qobg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bPMCM7yeYydiTGi6ivOazCsDDqqnbjZSEqNrefYYFKE=;
        b=RnAGrXdbUd0FAQxda/kXWq2+aA8S4adiOw156sp6vnnyYG+sHnvcTDngUdcFbw7LBi
         MJCHDIyIoCurA069m3PdN4y+rkYSiOIaq1I9eI7Tg5i5Hyi77VJxxH+rFDE4z7Ldg9r9
         IVbPXAi2ClknSfrH79osgoby/EwUotvvh70I6rXACKHeKGnvzyZcwjH/w2+04gZtY396
         A+ad8fc0FZ8TGXw7DuVH1tB1N3X3jijnc0zvX+mzEw30+HSh+mCMHrfcZeZltIg35Who
         bbG9DJQL7zA/PMRzU/lwxJqaqIqCwdR6ku95D0ddQ8oZUYHodPvkJu0RIyLciu48eAGx
         CS3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FPRFXl+y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bPMCM7yeYydiTGi6ivOazCsDDqqnbjZSEqNrefYYFKE=;
        b=hedOFqnTkjlfo6BAiTrFPIswXE221kxG4PAF+naGCjL+1CGgfXYTzvmdyoUl211Kp/
         NEWaWRxRdOTIUl73GcB0OoyEEWYEcwHBDNXN4IxOqIENnQRUiO6SLkne8tN5HRxAQoB/
         o6fEAP90he5s+/nGCc/qZJ3+7LPuYYK3VAcuhnfA/8hkDF/ivqBQvllIotQh2akbCqMw
         0L+oppQRjlHHmlltALg7f2llX7juIWr6TZe8pIcxaYTZOuqMrhGJhB/jAjgufpzFLwWO
         ao0jYQ0WkrqFvlI/qJvihdhxljS6AY5kKiYLioTePPOxkjeuxw8VSlwbgMmGNgqENxYW
         1lVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bPMCM7yeYydiTGi6ivOazCsDDqqnbjZSEqNrefYYFKE=;
        b=AI6H+L/IFjIU0iqqCDv2r1YEWOkLV+K/NDnfdjymDTpw+5x8NAnIDxWE0zpq7M9iFE
         4qcIIxvtk8BSAQE/VKNFkLc7KuNIDEaCPYmz51Lf/jpny3UXbjYS6EEsQ9NFY8iXaAkZ
         6yVycVMyAYus/TydVExAx/EV9cb95BhLQXIYxjA1lcue3l43Di/QugmnZB+3qZQUf5sZ
         gWY4xFvqMNuARyU8aoHj5scm0B+6d8ciwU5XQpFYQJjbubhWsGE4TxezGgG7NlcaetpI
         P6hGC71q4DAbAdHIRvrDRL5z7+Vnq9kCH/Dm1viMF8HOzqyo4ord519HkSj2q5OKtnxw
         Oj+Q==
X-Gm-Message-State: AGi0PuYVbl7bAeMOe1gXzBU54uQRaLM8leJ8v/8e0brEmd2bX2YP6DGR
	b//MzzHKpFQDq6XdcA+W7jU=
X-Google-Smtp-Source: APiQypKHgEOsLkQwA8cCW2lS3Bbx87yhRcaz0h1XH18SvFiKdXkHDmQzNCBTDC9D1t7SYyDkfpkJfQ==
X-Received: by 2002:ad4:4f01:: with SMTP id fb1mr5597009qvb.162.1587664942800;
        Thu, 23 Apr 2020 11:02:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51c4:: with SMTP id d4ls3517235qtn.9.gmail; Thu, 23 Apr
 2020 11:02:22 -0700 (PDT)
X-Received: by 2002:ac8:164e:: with SMTP id x14mr5332154qtk.196.1587664942429;
        Thu, 23 Apr 2020 11:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587664942; cv=none;
        d=google.com; s=arc-20160816;
        b=xGsurzj+62YKN9u53ZWrVFtRIX3piGSTIT6iaCylk3aZLqJ47ewDFtZzFXp97YCR0W
         x7yyEiav+qLnWv8uvcL96XJ7bAJhu9Rc9KBSTynXZTKM9+F3sJIN0HLF8xpdW1L494ta
         akpFoJgI1hmgCSFQ+XnzhhP71KaEhVcDo3f1dPJ+Ja879PjhakzQG8UNl7ERecOMYye9
         IKbkx7b8HpUJgSoHmSjfUPc4Q1P8EkMySfAhSJZN6QZ/RK0OiZOxdsQW7wJLT8jT8Cm0
         6HtMrPHR0gwPk2zHapuBNb3bcu5wrf3CDj6VfcSyuPHROx5ftpDHYC2MvXlQurAehrcQ
         1bOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sTaob3GXlKSGBoHiidXYon5bU7beeaSSUatTlUsNcXM=;
        b=yP8bTCW9eRBAvBkBZK/eVMap/Jjss0RqbnzD5tGs29Fs+6uy7OZ5vqecoNMnA5YIeu
         uo9gpj3x+nBcF9UjMaMZ25/RxpkI6gGpyLKJ1hw+0n8vFHxsL/aCAgX46cmWc9EXxq76
         q7TP8czTFe2kXaUgpPg1isZzddP8+1sLACdzYA7XBgyzaSKspBJcCmgILNqMJJ95EMNv
         6+qjJBSmT4BBOq8tLveGTjUxsLiWc9aoWTeYwZq0wl2p7DjrJuhrkzAcYAO8Rp2PyNqc
         FuB1GjPsPvyPpDnT93e3dI55vZ/VYxPenCJa7puvLLfwaHeAUOyid5/oRO8cc1QQ3ypr
         8zvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FPRFXl+y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id o3si303951qtm.0.2020.04.23.11.02.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 11:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id q18so3249638pgm.11
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 11:02:22 -0700 (PDT)
X-Received: by 2002:a62:5c6:: with SMTP id 189mr4877524pff.39.1587664941107;
 Thu, 23 Apr 2020 11:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de> <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic> <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic> <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic> <20200423161126.GD26021@zn.tnic> <20200423173058.GE26021@zn.tnic>
In-Reply-To: <20200423173058.GE26021@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 23 Apr 2020 11:02:09 -0700
Message-ID: <CAKwvOdmmuE=o-bGpraR1rJdzDgf2UYvgcx2-S7cdGSFWWkWurA@mail.gmail.com>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
To: Borislav Petkov <bp@alien8.de>
Cc: Michael Matz <matz@suse.de>, Jakub Jelinek <jakub@redhat.com>, 
	Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FPRFXl+y;       spf=pass
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

On Thu, Apr 23, 2020 at 10:31 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, Apr 23, 2020 at 06:12:24PM +0200, Borislav Petkov wrote:
> > Ok,
> >
> > I have tried to summarize our odyssey so far and here's what I came up
> > with. Just built latest gcc from the git repo and it seems to work.
> >
> > Next I need to come up with a slick way of testing the compiler...
>
> Maybe something like this. Seems to work with both.
>
> ---
> From: Borislav Petkov <bp@suse.de>
> Date: Thu, 23 Apr 2020 19:28:28 +0200
> Subject: [PATCH] Check compiler
>
> Signed-off-by: Borislav Petkov <bp@suse.de>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

It's too bad that $(CC) isn't exported yet; IIUC we include the arch
specific Makefiles then later export $(CC).  If that was the case, we
could just use $(CC) in the shell script, rather than passing it along
as an argument.  Oh well.

> ---
>  arch/x86/Makefile             | 4 ++++
>  scripts/x86-check-compiler.sh | 9 +++++++++
>  2 files changed, 13 insertions(+)
>  create mode 100755 scripts/x86-check-compiler.sh
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 00e378de8bc0..38d3eec5062e 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -1,6 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Unified Makefile for i386 and x86_64
>
> +#  Check the compiler
> +sane_compiler := $(shell $(srctree)/scripts/x86-check-compiler.sh $(CC))
> +$(if $(sane_compiler),$(error $(CC) check failed. Aborting),)

If I add `echo "hello world"` to the end of
scripts/x86-check-compiler.sh to verify this stops a build, this is
the error message I would observe:
arch/x86/Makefile:6: *** clang check failed. Aborting.  Stop.

> +
>  # select defconfig based on actual architecture
>  ifeq ($(ARCH),x86)
>    ifeq ($(shell uname -m),x86_64)
> diff --git a/scripts/x86-check-compiler.sh b/scripts/x86-check-compiler.sh
> new file mode 100755
> index 000000000000..b2b5b54b6939
> --- /dev/null
> +++ b/scripts/x86-check-compiler.sh
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Check whether the compiler tail-call optimizes across an asm() statement.
> +# Fail the build if it does.
> +
> +echo "int foo(int a); int bar(int a) { int r = foo(a); asm(\"\"); return r; }" |\
> +            $* -O2 -x c -c -S - -o - 2>/dev/null |\
> +            grep -E "^[[:blank:]]+jmp[[:blank:]]+.*"
> --
> 2.21.0
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmuE%3Do-bGpraR1rJdzDgf2UYvgcx2-S7cdGSFWWkWurA%40mail.gmail.com.
