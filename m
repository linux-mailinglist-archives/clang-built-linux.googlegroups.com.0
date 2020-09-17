Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIEIRT5QKGQEK6EHWRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A91AA26D3BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:37:21 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id d195sf580347oig.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:37:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600324640; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6hD12XdL102umR/p1dw1DQry4uiFVG2H35JXJzfSbVlDZ5XLnBquC1lxwoacgFs+M
         E4fi/V16Y+OmDwrQWo5UlOCm36hy4d17Q4VY3HQEjkE+bonx3PqoOtQgqbJnV56arZ30
         IqkEoEfTIYcojvGVE6cJ9yftv68150ICSiIsdB4BxgH1nzny2+ztbyLBrDLbpXjZ0sGX
         dduJj7EJr3IjOYI2z+6AV7gdtY6xyEf8mI6El3qp0yawk9QTcriZvzl0GXid/yydKFM5
         RkowBBjjOZ6YqboC2nd9EjJnOV4kKUVTQQc7YYa+mZxvwUb0PcuM5x7mgsU5bBwPELV1
         gS8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5C/2dNodMUnvVq4r6ghnyQ9IlHlvbvf5QrnopoGE47o=;
        b=BjcdJTr66hg529KSJgN6ubaXQB/r/rc+Pbk6jQFVA3W1L1ivVpPCjoGuHCih4/KQEj
         ldJqqeK4SDUO5lhAB8vlx7M3TYT+wqX89cfbVF4ACD2mMLnZAmdXpag/Kl/MQ31VpL7v
         Ac3efibSlGvXCvYB0ZfU7OSHgdCL+AhsLafymBYE6pd+2ETQzJvZo2XhMIX+ul75qLIB
         zqwIHe7ZDZUgYtNLkJq95ZDYB5Ra36AYHkR+obabXTT+dcBppdI8mbsq+mAbGHdqHM+7
         tXGQihV9dPRp4y86ZdzwyzRXSyLJsNaXzoXRbMVJs6lMidXB6UjH1lPl8hPkDpCQXfGe
         dDpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dyKzxUO8;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5C/2dNodMUnvVq4r6ghnyQ9IlHlvbvf5QrnopoGE47o=;
        b=aiTMKus4gOQMOd30K8lQpP5ZN3yr0OiUCB4xoVueqYMHQX3EE9p0r3c1rDs+zuxpYP
         YBsdRr5tTziGZgrD3fm4IomUlnqNDEyEeHDYZQ+DAEYUoelW5tet0PTejUAOME3zI61i
         F07SILMglomKQ5JRPGZw6Qlf417chlnluWHBAkjcc0oH1YSHnzpNUInttBG0WoR7S5hw
         /ipT5GcW9ySZk7+/MPIXP0HdqItsUqlaItW2qBfiMXjRKfkrw4D4sPSRblPLdJHoeXlM
         /20s5OaCOoLTNRiv2VZMCi0TwgVYMbbMi24K4Buvq24zFHL+7/3R0tLqgAybW0GJOHlC
         knBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5C/2dNodMUnvVq4r6ghnyQ9IlHlvbvf5QrnopoGE47o=;
        b=OqvFh21FUUAlDuCPtQB0UlBUAQUmYd1g8B8Wk61gpwwVEHGmNizeBiukAwmKmz4Tb2
         3MDHyIS/jpOmYxdJRPtAgbP4SgWnwkIzhuGFCk9wAWQ2gz+GsOtvUtokhtHS1zRWr4YZ
         lEaMLB/cPbmkMLbVOrc2f7/Ne5oy3O61qO55SjUlaS4+drUgz9m09levRlZn7ZRZufFO
         s9GO4fEOjGBmGvkfUuXo/JVoIuXIMxYT0AscLdVuJ0FXpm2ErVwa+YCPU3DNpXPC03p/
         iq6y4QW10w+TExoDbRVXZvVK6qbVf+cR5eE7z7bxyXx+3vOG6gBYitrkywj2Fv/I2/vm
         F4AQ==
X-Gm-Message-State: AOAM532ZJaOjt8Jdf9doYW2Ka9HA5yqNWREnUFoWq6lwIM0dt6N63BJh
	hUUQx3AHnfRzY838hI0qk+c=
X-Google-Smtp-Source: ABdhPJwr/g7eIPi5wtci/audtvGZiQlh+ZffVp9vrdpkLBb6KDlasl0M8Pf8Dg4PcgtX09NTzwZfkQ==
X-Received: by 2002:aca:dd42:: with SMTP id u63mr4567062oig.135.1600324640494;
        Wed, 16 Sep 2020 23:37:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2208:: with SMTP id b8ls216996oic.9.gmail; Wed, 16 Sep
 2020 23:37:20 -0700 (PDT)
X-Received: by 2002:aca:3158:: with SMTP id x85mr5572038oix.112.1600324640124;
        Wed, 16 Sep 2020 23:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600324640; cv=none;
        d=google.com; s=arc-20160816;
        b=LPLTqQjqFa5EVrs8PHYJm9SAgQZOR6F82y19reXNvbzXuKGrfGh/8e/KLps2uP5L6d
         KPGohV9qHnTaSjlJqmfUJ12/GLHmVhxL3KTt7No/coza4TO7ftANS5c1MAUu3E7eat/H
         Z5ShBlPvlHWu6eGmqEC12NeMT98a1Z+oq534gln+SEHLKIC0vJbzX7Ywpi+rq2RlNY7m
         C1DinbVDbRLEkYbzHp+h1US/ozR+ecXeGA8D6A9b1aJ1xtzdlfLcZlhz6xjhpXwz6j2m
         a3ehNfMX2nk0ebWNkORaTJ/Z++CZjzLhgSvOOE4rJwoXQr6HOwxGbMNzN1ie1C1n2Urw
         Jy1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DmH7lVb417eXI2VeqeItQgKBp0xKHSxQ9iYZKyDox1E=;
        b=t502QaihhqsLMma0uPVKIxMnnSxD9xmVesdGPWLOL3a0ztQuxkRmTaFO4R2NN2oY+8
         YoCb65J49oXyThzMc3T1wPzX4T1S4BZB0bu9z8T41s1mROf6MSenK9ztF4JH9+TOO0PU
         lOpfM/CFRPTkeJtcY9pKASLtUoxHpvmBIHR1spyBTVExnyGLZvyZb2uVqHnlsaW8FZqT
         B4FdFAaMFBszEMVJtD9RWkp0iMlIdnNXgHgF/WjCceYMG6GJgl5KoJuMUxnxknPPdrcx
         cX77J5NlDi7jGMYUTVD0AX/IKcybV1YnSLTNsijfDv8ZfmuZN2ctF0C/L2xe9HaSXO5B
         HMpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dyKzxUO8;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id m3si1816836otk.4.2020.09.16.23.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 23:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id y6so1258677oie.5
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 23:37:20 -0700 (PDT)
X-Received: by 2002:aca:5158:: with SMTP id f85mr5592894oib.121.1600324639579;
 Wed, 16 Sep 2020 23:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com> <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com> <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com> <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
 <20200916074027.GA2946587@google.com> <CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq++_TcEv=7AuA@mail.gmail.com>
 <20200916121401.GA3362356@google.com> <20200916134029.GA1146904@elver.google.com>
In-Reply-To: <20200916134029.GA1146904@elver.google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Sep 2020 08:37:07 +0200
Message-ID: <CANpmjNOfgeR0zpL-4AtOt0FL56BFZ_sud-mR3CrYB7OCMg0PaA@mail.gmail.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
To: George Popescu <georgepope@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, james.morse@arm.com, 
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org, Fangrui Song <maskray@google.com>, 
	Andrew Scull <ascull@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dyKzxUO8;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 16 Sep 2020 at 15:40, Marco Elver <elver@google.com> wrote:
> On Wed, Sep 16, 2020 at 12:14PM +0000, George Popescu wrote:
> > On Wed, Sep 16, 2020 at 10:32:40AM +0200, Marco Elver wrote:
> > > On Wed, 16 Sep 2020 at 09:40, George Popescu <georgepope@google.com> wrote:
> > > > On Tue, Sep 15, 2020 at 07:32:28PM +0200, Marco Elver wrote:
> > > > > On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
> > > > > > On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > > > > > > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > > > > > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > > > > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > > > > > > From: George Popescu <georgepope@google.com>
> > > > > > > > > >
> > > > > > > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > > > > > > the handler call, preventing it from printing any information processed
> > > > > > > > > > inside the buffer.
> > > > > > > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > > > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > > > > > > call
> > > > > > > > >
> > > > > > > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > > > > > > local-bounds and with a locally defined array on the stack and it works fine
> > > > > > > > (the handler is called and the error reported). For me it feels like
> > > > > > > > --array-bounds and --local-bounds are triggered for the same type of
> > > > > > > > undefined_behaviours but they are handling them different.
> > > > > > >
> > > > > > > Does -fno-sanitize-trap=bounds help?
> [...]
> > > Your full config would be good, because it includes compiler version etc.
> > My full config is:
>
> Thanks. Yes, I can reproduce, and the longer I keep digging I start
> wondering why we have local-bounds at all.
>
> It appears that local-bounds finds a tiny subset of the issues that
> KASAN finds:
>
>         http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
>         http://llvm.org/viewvc/llvm-project?view=revision&revision=193205
>
> fsanitize=undefined also does not include local-bounds:
>
>         https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html#available-checks
>
> And the reason is that we do want to enable KASAN and UBSAN together;
> but local-bounds is useless overhead if we already have KASAN.
>
> I'm inclined to say that what you propose is reasonable (but the commit
> message needs to be more detailed explaining the relationship with
> KASAN) -- but I have no idea if this is going to break somebody's
> usecase (e.g. find some OOB bugs, but without KASAN -- but then why not
> use KASAN?!)

So, it seems that local-bounds can still catch some rare OOB accesses,
where KASAN fails to catch it because the access might skip over the
redzone.

The other more interesting bit of history is that
-fsanitize=local-bounds used to be -fbounds-checking, and meant for
production use as a hardening feature:
http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html

And local-bounds just does not behave like any other sanitizer as a
result, it just traps. The fact that it's enabled via
-fsanitize=local-bounds (or just bounds) but hasn't much changed in
behaviour is a little unfortunate.

I suppose there are 3 options:

1. George implements trap handling somehow. Is this feasible? If not,
why not? Maybe that should also have been explained in the commit
message.

2. Only enable -fsanitize=local-bounds if UBSAN_TRAP was selected, at
least for as long as Clang traps for local-bounds. I think this makes
sense either way, because if we do not expect UBSAN to trap, it really
should not trap!

3. Change the compiler. As always, this will take a while to implement
and then to reach whoever should have that updated compiler.

Preferences?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOfgeR0zpL-4AtOt0FL56BFZ_sud-mR3CrYB7OCMg0PaA%40mail.gmail.com.
