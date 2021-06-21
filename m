Return-Path: <clang-built-linux+bncBD66FMGZA4IPNPWDQYDBUBDWZWSSE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C09393AF5A6
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:50:30 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id q6-20020a05651c0546b029016e41a5a837sf350972ljp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624301430; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBilxkVj9UBVTAH3nDgguG2ZTAnYkfUnbbKbYsdSfv+5VeQb4UEQ70T2NbiNY+yX5s
         bdA1VZlzVYQmhPBCDrjEUMhH2gPqNWUn5fRdujE12VhocA4aE8ANKJ/uhT+nlQ7Hn/SC
         +qqhZVnEnBGHqU47EX6+s/r9xpP7X1DIGAqyCy89pDBzip+hBkNohIgfGawLdjSr5dGJ
         NW4EbKHyhuZs+SU53VKSZ8RWf9C5hdso9oCvcNFPEy2ATYYWi9r5z2z9BuKdTC9Kb1eu
         IYP2VyEbfdvKRRaImffzZ73+3y4SY3zZA3LF4RinB9JvhwFi0EMJMsz6em3H1jBKYmmJ
         bjxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OduuaMtXv5cpE6hQtKIwA9oaaFCv+YF3RJVNaQxc1js=;
        b=Scp73K1sK31e1lafrQ4pEaL2wVIOJ4tB8v1KAsilMkYTKc3wqtzkmtndDc9IAPcM+N
         nBh0oYlKfm7zcr6tl+z5gopwjA7k0zJBGI+0bUosCrtg7Dg4mpcKdURH1AiYPwPS7prR
         HoMyU1aGzA9uVzRl7xrM7FuXRCnxLXc+4FOn0sSA90VseVK2ObcKUvBx2aVuNATLp2H/
         +ftXhJdvr6vtnXkWKLslCas8KrLULt/3CUtejFuaNHzSoRsfQZnJnjDjItSI7uLgKjsx
         TTcVoFaN+TFOZFHkofIFsj4OMdztdb5j2gT8qBUf0Moa5LYCIdXfHznRWe1MfY1VxR4X
         HIAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fj1t9s64;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OduuaMtXv5cpE6hQtKIwA9oaaFCv+YF3RJVNaQxc1js=;
        b=SBpyBf+YQlqfiddzvwJEmqynU8Jx83krwNFrzNEYRLz2wtOc5LPVsIHUSIG2So2zuk
         naGmJmmsr+NzlMVOpqV1ybn1+DvGX/2GFq1FztdOXA1wx4jPm03SLB5tshnyYApFyL+t
         W/+FMg79QzwnrObltOhX5duwHguvS2XmmBqGb0TiiN4JHsqkgjWsr18VJvFs8INbCp72
         fn9WvT4052HRZ2i1tUuVSOIhNx6oG7d52rTTkWPyIMRCKnn/gW56q3/qcyyfgl6vk5R7
         qgFDvZOQvV4yu61i4Pkry6TeZRq79v3ZToUAcwZRfsFIM8tKkLx8/NSEoiKX3yA67hGi
         UY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OduuaMtXv5cpE6hQtKIwA9oaaFCv+YF3RJVNaQxc1js=;
        b=U5DAtReMko5xrojJtcQieV54niXB/br3YuKTQK7qM2B8u2dIvrje9jeSwQJ9p32Mg/
         zDGX3di5XgP7ITGFNNaNLoVVQS+XWdxWferZPCYYgRRabCH9/sICCG9tLtcGmcsXDmi2
         pzuzWjBb6/UujhP5xt3jEKRAR2zPGA4R6u5vhZ6e45YHU3K00I1BvEXrgJwjCwlD+OAa
         oa4A6XKf+bS9/DWk2aVjB2yqxEnwTDs2F4omr87ol/PVH17AXX+2zanZS0tclpkBTcxp
         A//EA039ovuq6+yUDQYAZOhWNFTesyknlARiwryGH0sRhcvuBurszzNGeT1iL6SvaeoU
         XXLQ==
X-Gm-Message-State: AOAM5334J0jf6kcwxOmFEMghiiUnB4DYIXFJQCsnUSownIrjfbF+scUb
	LUcpH74iMHqDQvktoRE0JDY=
X-Google-Smtp-Source: ABdhPJxGo+0IgsUXqd/wJ1m+nXz301HT38/Jud0olAgw+cjjA+jm5GON3Ya6U5+JTt2eWXyBGpBmig==
X-Received: by 2002:a2e:9188:: with SMTP id f8mr18146404ljg.178.1624301430311;
        Mon, 21 Jun 2021 11:50:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:46c6:: with SMTP id p6ls570924lfo.3.gmail; Mon, 21 Jun
 2021 11:50:29 -0700 (PDT)
X-Received: by 2002:a05:6512:1152:: with SMTP id m18mr2954989lfg.211.1624301429185;
        Mon, 21 Jun 2021 11:50:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624301429; cv=none;
        d=google.com; s=arc-20160816;
        b=Y77bJymNWFwMbCEoahp5dW1gEDklhNBwPN8hwC2ndSr5bQxMWYBS8OfSFHKx7exRxh
         e0wUyKgrc5nJcwJ2wQLJJpoPQfo6J6X8xv2+sUDM4EKTJX82Bb0pfXpBjqTUODYiwp8d
         jjQnffKzMKU0XSW3Ttl8lYEZWZrM3WrLHYiqbYsHvA1cCJSu9uYuQWycSwa3DJHaH7Mi
         nv9ymiCLUQ5aO2XtyQ9ZJttjO7SAq25TYGqFvHAYKI6wYByrPJCOyeKPzyqPoLW8ySc2
         w5yWJtrhGOoZfyp0egDQMWjWhhe5yMKBFB2oMgkMKuM/liLwfll2uM+mM+JjJRmkzzfE
         xOow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Su81jZ58rhgHEJ5xNq4SVnXH+2VzVF+NBRidhz73D1A=;
        b=V9RFjUPLGGTw6Ry1o7pF4jJdp91jWt/L8/2qCcqR8ohUCXrJ6JsVVXgmGRzrrz8aRD
         qW2/Ug3PudSdHMUDmGuJ+4Y3CdeJdBWLnjjs/pCscdrZ7GPCxsGkGWZ+A1eP63jkDj8x
         DeZAZS+bZ5FBx2MoXqAUJAlmnX/p2JFXo5+uEEq9xMzs6C4FL9Tw9ZeQWMXsthdbIfh8
         redHE8nzpdmhukIopZhpf6VlQK9Vssk7Raoaekck17MYXgGS9/6Fak/Kp1nwEU3Rqi/f
         MqfLhJG1TCZelZIXJe3x5AN8p/pDgh5TXlYUkajmiV6qaRwq7c4c9+72O4i1ppSo7vkJ
         fIVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fj1t9s64;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id o13si2583ljp.0.2021.06.21.11.50.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:50:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id my49so30383742ejc.7
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 11:50:29 -0700 (PDT)
X-Received: by 2002:a17:906:e108:: with SMTP id gj8mr25315960ejb.90.1624301428439;
 Mon, 21 Jun 2021 11:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com> <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
In-Reply-To: <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Jun 2021 11:50:17 -0700
Message-ID: <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Johannes Berg <johannes.berg@intel.com>, linux-toolchains@vger.kernel.org, 
	Marco Elver <elver@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fj1t9s64;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jun 21, 2021 at 11:22 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jun 18, 2021 at 11:23 PM Marco Elver <elver@google.com> wrote:
> >
> > On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > We don't want compiler instrumentation to touch noinstr functions, which
> > > are annotated with the no_profile function attribute. Add a Kconfig test
> > > for this and make PGO and GCOV depend on it.
> > >
> > > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  init/Kconfig        | 3 +++
> > >  kernel/gcov/Kconfig | 1 +
> > >  kernel/pgo/Kconfig  | 3 ++-
> > >  3 files changed, 6 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/init/Kconfig b/init/Kconfig
> > > index 1ea12c64e4c9..540f862b40c6 100644
> > > --- a/init/Kconfig
> > > +++ b/init/Kconfig
> > > @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
> > >  config CC_HAS_ASM_INLINE
> > >         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
> > >
> > > +config CC_HAS_NO_PROFILE_FN_ATTR
> > > +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> > > +
> > >  config CONSTRUCTORS
> > >         bool
> > >
> > > diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> > > index 58f87a3092f3..19facd4289cd 100644
> > > --- a/kernel/gcov/Kconfig
> > > +++ b/kernel/gcov/Kconfig
> > > @@ -5,6 +5,7 @@ config GCOV_KERNEL
> > >         bool "Enable gcov-based kernel profiling"
> > >         depends on DEBUG_FS
> > >         depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> > > +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
> >
> > [+Cc Mark]
> >
> > arm64 is also starting to rely on noinstr working properly.
>
> Sure,
> Will, Catalin, other arm64 folks:
> Any thoughts on requiring GCC 7.1+/Clang 13.0+ for GCOV support?  That
> way we can better guarantee that GCOV (and eventually, PGO) don't
> touch noinstr functions?
>
> If that's ok, I'll add modify the above like:
>
> + depends on !ARM64 || (ARM64 && CC_HAS_NO_PROFILE_FN_ATTR)
>
Wouldn't "!ARM64 || CC_HAS_NO_PROFILE_FN_ATTR" be more succinct?

> to the above hunk in v2.  Oh, looks like arch/s390 also uses noinstr.
> Same question applies then:
>
> + depends on !S390 || (S390 && CC_HAS_NO_PROFILE_FN_ATTR)
>
> Or, we could just do
>
> + depends on CC_HAS_NO_PROFILE_FN_ATTR
>
> Though that will penalize architectures not using noinstr, that still
> would like to use GCOV with versions of GCC older than 7.1.  Perhaps
> there are no such such users, or they should consider upgrading their
> tools to we can stick with the simpler Kconfig? Thoughts?
>
> >
> > This should probably be a 'select ARCH_HAS_GCOV_PROFILE_ALL if
> > CC_HAS_NO_PROFILE_FN_ATTR' in the relevant arch/../Kconfig.
> >
> > Alternatively, using:
> > https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net
> >
> > But I'd probably not overcomplicate things at this point and just use
> > ARCH_HAS_GCOV_PROFILE_ALL, because GCOV seems to be a) rarely used,
> > and b) if someone decides to selectively instrument stuff like entry
> > code, we can just say it's user error.
> >
> >
> > >         select CONSTRUCTORS
> > >         default n
> > >         help
> > > diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> > > index d2053df1111c..26f75ac4c6c1 100644
> > > --- a/kernel/pgo/Kconfig
> > > +++ b/kernel/pgo/Kconfig
> > > @@ -8,7 +8,8 @@ config PGO_CLANG
> > >         bool "Enable clang's PGO-based kernel profiling"
> > >         depends on DEBUG_FS
> > >         depends on ARCH_SUPPORTS_PGO_CLANG
> > > -       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> > > +       depends on CC_IS_CLANG
> > > +       depends on CC_HAS_NO_PROFILE_FN_ATTR
> > >         help
> > >           This option enables clang's PGO (Profile Guided Optimization) based
> > >           code profiling to better optimize the kernel.
> > > --
> > > 2.32.0.288.g62a8d224e6-goog
> > >
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag%40mail.gmail.com.
