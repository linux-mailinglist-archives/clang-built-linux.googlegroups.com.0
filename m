Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5PRH5QKGQEKGNHWQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B35C26C741
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 20:22:16 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id j20sf7879140ybt.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:22:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600280535; cv=pass;
        d=google.com; s=arc-20160816;
        b=tLSYwU7cFkpJnQyLUbMI4cuC2L+kZJ5XMbjChhnSwTWcLkfLI+DBLsI1p/Bv34fIdA
         +hhGVwq/H8MwSEdZo2eOMcx/4P7QWHTcYOJYZ267+TIBpZ6Pb54nwxmsDbOCFi1o6OtY
         gS9+hAdlNVIbL61XAPXO0/fo/bn+fJMlyWg1voqd6gS7Q0IbC9wTGTHaDljKVs0wmkZA
         YX5yMhqkMCZEJv3c8p44UZd1uOG3vva0KNxZwcKI1n/Cn6deechd85QVWftISZkkEgxL
         3aytPYm3JH3Sqwjdj7yfwO/YPp34K7LDASBmitAEnDYpinEhIDtZuYAM/1Fv2SFCtoXW
         JS7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0omh+jolNhFiYcLsjx3FFg1SQV7OCUL0QR5KcdhfSvg=;
        b=qyOqlPR06MBZ57nuu7Q1u0p0HeX+E+m4oPAnPpXrR0LMtOrPzxnyAxYVQbzAQXR2Pa
         U5UBfPQCoG1pw7qhd7Ll0mh/owi2kFxQ1SdD6fqRwuhKK2/Of3AU/bupYu1qYvVdWyQy
         ElaqTbuIwFdlMnxg1cSzyJC6Gu2/AbaEw79OlJezMvl5WOPm7Ixag5CvLDGQZMNnPTMT
         f7cHhpTG67LaWgn927sz05QeqqQmXPIOG/4mlYIbcyJQSDa4uGYWrICYmeWcG2VVwL92
         Opgi48+sY/dVSp6IXoKu/9KHxazllwigdPpmtaZD2ubwCTCTar/UhqNdPFjRccNpKmqA
         6NSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uaTByqfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0omh+jolNhFiYcLsjx3FFg1SQV7OCUL0QR5KcdhfSvg=;
        b=IuHXtLS/2mnlRfq4GRE4RHH/jnyBiTX5hHPeFXeyExV4PFNbYEhRKHrTdwjcyyPcAc
         QXR07mR/haF9kMNZWakjY+B4W0riascZt3Tmcavr9oFY26zn3RGGocR04+GlnwWBY9Tb
         BR0FA3BV6NsDqnaGWVkr8Q1FRt3X6/rGgNivsuf+//faLs5J+qcmC76iK26fJYC3gFU2
         1SHjXYAf++j4JT0GKP0rpcbKCEynFgYOl4P81xZ/pJ0He7pbuWbJNSn1T9DLl68AJL1u
         bodx2pphIAyb53VVcupHGkY7r3fe34bTbd2/P9vI7WOCL1bYnxrHpbnmxj+XE6htweSf
         PoxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0omh+jolNhFiYcLsjx3FFg1SQV7OCUL0QR5KcdhfSvg=;
        b=tCxBtOcbccdbcaKO5LkFeEmMEuHUzhvYeMb2yk80Xl38Wx/+GZpw3suHE91sPS7jTg
         gKD7oDBG4igZcdQjd7Wt7xA2bzDLd6aq7pDdkJsXVQ8MM0p8lONy/6quzVKGSUOe7lDB
         VNkDvvUviL56wNCE9RtQvvCjPLi70uWo3DshSOQvGpoUC3IsNJKRL3xgEvN2mtGUb3AI
         XEz9h9BHnc5tL+odHHHp90gDBWSs3HGCHcgc1PJ0wcvuJnsWeAU0nKOm1dzoO42vpw8n
         DtlW9Mb3GBw1FHwOZ0Hl/a/OtEEbrgBnwJqMCcPDoR9dVULVEBtsVw+K3unz24mRrtT5
         k7AA==
X-Gm-Message-State: AOAM533wrdramJPgWgtButOsslAt1sWj2s12oSYT7UiuKbbIlElMGAVe
	iWf/L1wFa/Zjifel/ncRipk=
X-Google-Smtp-Source: ABdhPJwnNum4J3X0bi9oiZ+6T4NP5Tyo4JabPiLTGbNeriajr1xzgYnDG8YUDIXCyMMaiv7fJLNF6g==
X-Received: by 2002:a25:34c3:: with SMTP id b186mr35557846yba.384.1600280535484;
        Wed, 16 Sep 2020 11:22:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cd89:: with SMTP id d131ls1289148ybf.9.gmail; Wed, 16
 Sep 2020 11:22:15 -0700 (PDT)
X-Received: by 2002:a25:8047:: with SMTP id a7mr27155755ybn.11.1600280534950;
        Wed, 16 Sep 2020 11:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600280534; cv=none;
        d=google.com; s=arc-20160816;
        b=xqQS30TBCoCy9+HrSTznenvVMapJSmuiwIO5doGYN2L9eEh0RqulvClxwdGXcQeqPt
         /4orXmufQvvrsbSWGaxtSmeHQqDTFshB6zktUdknoUd5bkE+KqDpGdp1gqf0JqnGQpeE
         xtz3+y7/lqoins/t0XX+dnSJT1+9TOGbtAuGsTtyg1wTBxUXPgiqtg0vrKb3RAk6GAZ5
         /fRy2+IKfHYXApNVJsLXrbNsUctI+AohFabN7FqBWxUx1TXyZIrb9Jqiy1Mpg/LEf8Vr
         vi+BcMlLdIASqehdzJlexa9QzaZOjjy8IIv3zMyj5twAx+6suvhD5r0/CELa5q4+EZRO
         Yfog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G4+iKrUyandKRtKRuuCLFiJQwudPWpGc6jdXc33Pspo=;
        b=lZI3Ig05VqJGgAmEP4+ww71x5DKm2giVVAuufGL54S6Bo8c0Em0x8Z0+OWjmeQOu0R
         jwhApeQ7Zbf33A5pGweBmdEwl17QG01RsWZPsSakPWV3970fBuTpq6q5IQ2p+W2OciGC
         sesim69HxXtYi5sl2Flm6k12YauIqWLqmzfZTgASLyPr/Iy7yuT/2Epdv050gASNA+v/
         81wGSzRWbj/bidbIZRptKFowF3kbOoygwaRn5JCSTKqFyLPkKBUFUlMjyCqBkvZIfHML
         Vr9LNwamSKKf9ukhgxS/SCL+LChH8wanc7AIXlR8WjVw5v0jTDqsR5PXAvzo5on44jYL
         wPIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uaTByqfC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id l203si1018867ybf.0.2020.09.16.11.22.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 11:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id e4so3640926pln.10
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 11:22:14 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr4866165pjy.25.1600280533846;
 Wed, 16 Sep 2020 11:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net> <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
In-Reply-To: <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 11:22:02 -0700
Message-ID: <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Marco Elver <elver@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Daniel Kiss <daniel.kiss@arm.com>, momchil.velikov@arm.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uaTByqfC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
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

On Wed, Sep 16, 2020 at 1:46 AM Marco Elver <elver@google.com> wrote:
>
> On Wed, 16 Sep 2020 at 10:30, <peterz@infradead.org> wrote:
> > On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
> > > On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > > > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > >
> > > This one also appears with Clang 11. This is new I think because we
> > > started emitting ASAN ctors for globals redzone initialization.
> > >
> > > I think we really do not care about precise stack frames in these
> > > compiler-generated functions. So, would it be reasonable to make
> > > objtool ignore all *san.module_ctor and *san.module_dtor functions (we
> > > have them for ASAN, TSAN, MSAN)?
> >
> > The thing is, if objtool cannot follow, it cannot generate ORC data and
> > our unwinder cannot unwind through the instrumentation, and that is a
> > fail.
> >
> > Or am I missing something here?
>
> They aren't about the actual instrumentation. The warnings are about
> module_ctor/module_dtor functions which are compiler-generated, and
> these are only called on initialization/destruction (dtors only for
> modules I guess).
>
> E.g. for KASAN it's the calls to __asan_register_globals that are
> called from asan.module_ctor. For KCSAN the tsan.module_ctor is
> effectively a noop (because __tsan_init() is a noop), so it really
> doesn't matter much.
>
> Is my assumption correct that the only effect would be if something
> called by them fails, we just don't see the full stack trace? I think
> we can live with that, there are only few central places that deal
> with ctors/dtors (do_ctors(), ...?).
>
> The "real" fix would be to teach the compilers about "frame pointer
> save/setup" for generated functions, but I don't think that's
> realistic.

So this has come up before, specifically in the context of gcov:
https://github.com/ClangBuiltLinux/linux/issues/955.

I looked into this a bit, and IIRC, the issue was that compiler
generated functions aren't very good about keeping track of whether
they should or should not emit framepointer setup/teardown
prolog/epilogs.  In LLVM's IR, -fno-omit-frame-pointer gets attached
to every function as a function level attribute.
https://godbolt.org/z/fcn9c6 ("frame-pointer"="all").

There were some recent LLVM patches for BTI (arm64) that made some BTI
related command line flags module level attributes, which I thought
was interesting; I was wondering last night if -fno-omit-frame-pointer
and maybe even the level of stack protector should be?  I guess LTO
would complicate things; not sure it would be good to merge modules
with different attributes; I'm not sure how that's handled today in
LLVM.

Basically, when the compiler is synthesizing a new function
definition, it should check whether a frame pointer should be emitted
or not.  We could do that today by maybe scanning all other function
definitions for the presence of "frame-pointer"="all" fn attr,
breaking early if we find one, and emitting the frame pointer setup in
that case.  Though I guess it's "frame-pointer"="none" otherwise, so
maybe checking any other fn def would be fine; I don't see any C fn
attr's that allow you to keep frame pointers or not.  What's tricky is
that the front end flag was resolved much earlier than where this code
gets generated, so it would need to look for traces that the flag ever
existed, which sounds brittle on paper to me.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DT3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ%40mail.gmail.com.
