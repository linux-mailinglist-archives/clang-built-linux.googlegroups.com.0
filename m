Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD564H4QKGQEWNCOTII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id DD76E24543A
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 00:17:52 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id k72sf7946602pjb.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 15:17:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597529871; cv=pass;
        d=google.com; s=arc-20160816;
        b=bUcwjG+J09luhl7+4wihoKLij6LaB7UQ1fHEtinkV+9VwUo1W4NjVO60isz839y5ua
         f/qSUZZPP3hA1MQXoAL86G/fU/qCVeOF+au8eOOVpVckISWtTS0JTjKzFgry608Neumb
         Ke5u2jXW6D2L6ufOXCUHEbiToUEYwYb7IOS0e0UQ1MhsOxxcOoUiv7C2KuveOoTujKkJ
         1847ym5FdFfvo/pTS6hCER1DK4+dSU549V2k4LA7hD3iXnHKtzQbElEYVm/Kd7ckZds9
         6rAz6ACqxtQiQLdua9JCtLEcHwAsla7yllMGLgZD5C35psm2qheE44hDKCMZ2SttOAGW
         EIiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pd2l7v5GpUAZSVUgZzcD2iAJqAK7wXsTtZOipHKwjz0=;
        b=zcZOJf5wAWORK4qCxsl3XwcXemFsom/rOFBqlhAFcrXixrgtjQlnHJKAyx9eNuyIy1
         Ilg4s53hvrc/pZPtw6wXcT5hRMczM+FFHZwo2AqwdSoSNDEZ5RBS9gSH/4jzJtMt0yB/
         lMaLzRkZiSnAHMMGb16E0o+pfDbBkZ9T39gYxjQeGZ6rRGVPwbiP3uBUv5akJjGCzbed
         AjjapN8r4rIrK8YGv830VRSF/b/cniva8iicd9NTSfLX2Wqozyn2SeVDJhZ6bDd9yOvJ
         eZbSnz0LIfp/W4ZhTYUZOjQM3ABOsrYVAv0s+0t3EQx6GIaK6D1MR1DecZ2tyGVW6YqR
         qYqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M9w7CiNQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pd2l7v5GpUAZSVUgZzcD2iAJqAK7wXsTtZOipHKwjz0=;
        b=EyoPm687JUF3daVHO7hkLJjSv8QrhXDAI0PE5MLqJrlpx14xLc+X/7y2a0aVgjlGUj
         4gcmTnzRN9aabfbauPx0o/mzgG5fDwZgOvBtzBZHr+xctzOKSmKXRGWlXp+EpBIHvdqK
         QQ6VyPmtRMZSymzJeqJES92mnVYSDle0eRSveCuQ2h3rICX+XCH++lCr9/Kd2tKtKKdX
         YPyuJS6dUw6W0gCdvGMV7NiM9/4+VgKOFA5EtqA7NiwyMN/P+ytX6me2AxnkNmzOxhV5
         EwJvJpWXhlNMDBNby97bKkVWrhHhC3JT8NAhxL+n2aqYnFzE2zQUhv3taUfvfaSyl9Vs
         gimg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pd2l7v5GpUAZSVUgZzcD2iAJqAK7wXsTtZOipHKwjz0=;
        b=L6TSVP7TO7qeG+1a+l5W2z/wU+Gt64BhI0GOBWlHa0YNE9uMSdcA+0mciyZlb8eS6k
         hj+BrWOCpUe+9Rwa7t1ELyU+CT5etf7GlqKDs3XMgz1MR5RSrw5gzWgs+YdGdwA4zxcg
         gf5EoMOOiQKy+NxhRzrq+4TLDbYhhxx/6vH+zNIX5fF9h7cHWqwVyWb8SkORQHZXCgwM
         J2ZpDoWI5xLdy0Nw6RVs/+PNlnT1n0ZUJ4Flf4W7rPnLOXa8nNS1lw0BG0OxcQOkidFK
         aZnP+dG66C/63I+QOVK0FpkZSxFJcYXrTYrs3FGTUNrrvJ7KkKf0sFl/dRuuDsLA2Kvd
         j/lw==
X-Gm-Message-State: AOAM531EZLxL2isNKjox6Qt33xrw9o95uQ4JwsQxBDPrVd8f7gNiub5U
	5zz6zlj0GDRzvo4HjCLtPAI=
X-Google-Smtp-Source: ABdhPJzlzLTon2upeAPeud1ouHy21dGJid/7gp+WWvpCCS0mEL1nZtGEtt74+DeNIz96NoAuDYClig==
X-Received: by 2002:a05:6a00:7c7:: with SMTP id n7mr6417634pfu.291.1597529871570;
        Sat, 15 Aug 2020 15:17:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5c82:: with SMTP id a2ls3383676pgt.3.gmail; Sat, 15 Aug
 2020 15:17:51 -0700 (PDT)
X-Received: by 2002:a63:c401:: with SMTP id h1mr1840573pgd.164.1597529871115;
        Sat, 15 Aug 2020 15:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597529871; cv=none;
        d=google.com; s=arc-20160816;
        b=QxJn8n3asxlnNwYgTtYrTB1J4b9tZOy1Nt8dDklIyNQsrqxpDnoZkAHlLuOpIXpp8N
         p8owgBhtHmbKSeo602/y3MNvQbHJXrf85sdfA/P1OnmvioH/JhqNROt8OaEbLuINLS3e
         D0emZh8epUZcoE/f4wOFAKGku8LuE+OqEB0Zl7jD/mnHk69qw9VimRYMhcO/S9uwved8
         7W8H1Ggoc5kn5A//xiOFJ+APWiOjjyvdxfkE1QIG6G9haprauyyWfHwoZ2nwpqwfJrDV
         UKTmFgNwB7lfnJym0HaMZ43maCIzLviLq3kJeHamso0rNUZM/NntIIqLPUq9K1L9or3g
         h8FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Cyp9kIv6qMIcFE2qdHMexk3h45R1hTJMbabxmKvKOOQ=;
        b=Jtb3dd26+58UmuOX+0Feom/GoKPuCIgTMB2sPdjNn07IrTUwFxe2yf8Oim/CEaLlDE
         kMiT6dUG0jqoL+Lso2StClHfNl2nPnC9XxGZtvkNvX9ZSJPs1QYajLs5znnPvlF9pC+q
         ktHGWrUYmBOlRLc1TI39GfvN+gA+PS0qitc7rPEo2IULxxsc3IP3qBc6S0+YlUzXzqMt
         JUX9x+BpOpKisrcTGjUcRt0s2yr24mA9lo5lk/Mq/j4ckH5wZDsPX7spOO+asMwLRp/u
         0fs3eeIK4EfT8DZG9/N5V8D3ciHaRGJHP0g67SJmZOnBk8PQ7bjzs3xhBDu85t2aosVj
         Z1CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M9w7CiNQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id n6si584620plk.5.2020.08.15.15.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 15:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id f9so5897114pju.4
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 15:17:51 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr7177172pjp.32.1597529870544;
 Sat, 15 Aug 2020 15:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook> <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com> <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
In-Reply-To: <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 15 Aug 2020 15:17:39 -0700
Message-ID: <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Joe Perches <joe@perches.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Sami Tolvanen <samitolvanen@google.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M9w7CiNQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Sat, Aug 15, 2020 at 2:31 PM Joe Perches <joe@perches.com> wrote:
>
> On Sat, 2020-08-15 at 14:28 -0700, Nick Desaulniers wrote:
> > On Sat, Aug 15, 2020 at 2:24 PM Joe Perches <joe@perches.com> wrote:
> > > On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
> > > > On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
> > > > > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> > > > > > LLVM implemented a recent "libcall optimization" that lowers calls to
> > > > > > `sprintf(dest, "%s", str)` where the return value is used to
> > > > > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > > > > > in parsing format strings.  Calling `sprintf` with overlapping arguments
> > > > > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> > > > > >
> > > > > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> > > > > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> > > > > > one statement.
> > > > >
> > > > > O_O What?
> > > > >
> > > > > No; this is a _terrible_ API: there is no bounds checking, there are no
> > > > > buffer sizes. Anything using the example sprintf() pattern is _already_
> > > > > wrong and must be removed from the kernel. (Yes, I realize that the
> > > > > kernel is *filled* with this bad assumption that "I'll never write more
> > > > > than PAGE_SIZE bytes to this buffer", but that's both theoretically
> > > > > wrong ("640k is enough for anybody") and has been known to be wrong in
> > > > > practice too (e.g. when suddenly your writing routine is reachable by
> > > > > splice(2) and you may not have a PAGE_SIZE buffer).
> > > > >
> > > > > But we cannot _add_ another dangerous string API. We're already in a
> > > > > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> > > > > needs to be addressed up by removing the unbounded sprintf() uses. (And
> > > > > to do so without introducing bugs related to using snprintf() when
> > > > > scnprintf() is expected[4].)
> > > >
> > > > Well, everything (-next, mainline, stable) is broken right now (with
> > > > ToT Clang) without providing this symbol.  I'm not going to go clean
> > > > the entire kernel's use of sprintf to get our CI back to being green.
> > >
> > > Maybe this should get place in compiler-clang.h so it isn't
> > > generic and public.
> >
> > https://bugs.llvm.org/show_bug.cgi?id=47162#c7 and
> > https://bugs.llvm.org/show_bug.cgi?id=47144
> > Seem to imply that Clang is not the only compiler that can lower a
> > sequence of libcalls to stpcpy.  Do we want to wait until we have a
> > fire drill w/ GCC to move such an implementation from
> > include/linux/compiler-clang.h back in to lib/string.c?
>
> My guess is yes, wait until gcc, if ever, needs it.

The suggestion to use static inline doesn't even make sense. The
compiler is lowering calls to other library routines; `stpcpy` isn't
being explicitly called.  Even if it was, not sure we want it being
inlined.  No symbol definition will be emitted; problem not solved.
And I refuse to add any more code using `extern inline`.  Putting the
definition in lib/string.c is the most straightforward and avoids
revisiting this issue in the future for other toolchains.  I'll limit
access by removing the declaration, and adding a comment to avoid its
use.  But if you're going to use a gnu target triple without using
-ffreestanding because you *want* libcall optimizations, then you have
to provide symbols for all possible library routines!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DQkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ%40mail.gmail.com.
