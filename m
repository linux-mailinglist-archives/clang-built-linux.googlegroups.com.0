Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBRF5RH5QKGQE6URL7ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F52326C882
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 20:51:49 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id j13sf3280177oij.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:51:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600282308; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGzQKUPPJwTaugw+Sv64dVafVjoQd1fqDecN1aIaFMUZntt7t9UZhVVWs74To0/kd/
         e/hznLw6iJ3gsQ5cw9xzCeGRJopWEQvPKNuPTvrmamfwKVbCwp6eNQn8ujIKgJAU78H4
         uoEOPqW4aINVEfFGHrlwtPFMR6tM7X5AsQ2LkQ1TAJvQHrSUfu+duJ9gQpw6LIBI1VVd
         2k+BshTaXRP+lVU6yAn3VsstI6a6vAAw/UIHgPEE4FbLV/B2PTeimRF5n2gDKEjOyN01
         qs0HYtTYjiNCkfmNBvu4lT975qmZp+u5XFw+i8f57PCEQNkabYDOMK4k6dvoNki9/2nM
         v9Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ovT81SEQMDwymJFfcLZpPRg8xGF9We+Mw1DiQpW8rwo=;
        b=DfK+1oBDy5cnLs+rdGwf/894Gj9F13mUjQA5DFELW9pSmZD0R3uZCTGi0rUhIKEWn1
         D0PHwUSjrpio27bbF54NmCkAjVW1WWvORY4M2DOwO0c4Tc/aj0a5q8vxrkr9kXJ1v+36
         HxzzgISDzMbJh683xdqktKVHHp4Jd434ODB9uSZsufE0LzVub/9EKg4DPgoGUykEfXmq
         alOubj/+F9ZgfcfjOrhWlvpxcVHLIzNrKTpIfnI2U/FOYhWZzNGydO/VvzoikfWwc+L9
         JgCQGdjX+F58slgak5wsgOsMow23j81+eDEhU1xPmRdNKo37nfu08zIZ5i4covDIdX+g
         W7dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lj8dJnoA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovT81SEQMDwymJFfcLZpPRg8xGF9We+Mw1DiQpW8rwo=;
        b=GC/pzsVn6Hhl4GPak7PdrhgejaiMN7eUSBuJ1TGePIP5DJtPOdrvKYsdCITD0xOL2G
         kJ043V9q4Tc40Bn3vowsZ3ByXYEBtnB9CXkS5KmSMIdF9SkI46uTGHn29aNbFBdgjhaL
         5GAdcUlIOOY48mO68I7LIlVHXa8Tgo/1cOFM12/sg9iKfcfx80pL4WLM6CYy++oeVFpE
         RuOwDA79dQ/miOxdBa7fXbpg3mf/ml+bC5LI7NUgbLRvPkM34pXrUswksK1/ANfUrNWE
         aO6Nim2Cy7MAjFc1iPtJu6DS8t4+CKQhXDVpMYXREaYCrLksu6GOXJ6rGkMWf5gvhVxY
         iA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ovT81SEQMDwymJFfcLZpPRg8xGF9We+Mw1DiQpW8rwo=;
        b=oDv9e8ZSKX0t86DHSjRzLifQEkVKVS76gjRONsnOTk13Qfk+ZELTawZZBQf9/NGpuw
         vSCT8Olb1b37BxWB+HTb7zzEs9tbXdGmJoYjFjt2PqjZBUavYQFMKEFj5Eporguztex4
         w6KZhJAWSFJFAQsMsxroJ3faHjBzPb80fcX2tdNjKZiph5Y7sdCwSqSENc9cnAgCCYuR
         RoLuPvvbWLAA72BBm3R8+dUZwQirYqSz8urYQimUVwcLOrKllKnKN+NA8rLg75vNIeN6
         BQNgnKAX54cip+53djJ2QupJrouj3k2pmhvfxXMcwZbO+t/whPXbBDYm/TZ9Jgfpi895
         BZmg==
X-Gm-Message-State: AOAM5337j1LNr4zjxMqWxHGU4UY3YfIo3U0NInezAY21zuRqJW6EHjyg
	yOVtREAPdmK9Eq8dvoc20mE=
X-Google-Smtp-Source: ABdhPJx8QlzV0BWp5W8k9E8nuA/AKqDr5EAz/WNUHP1LbR+1LIxKgM49pvWZ7WYUUGCfOLKllkcd4A==
X-Received: by 2002:a05:6808:8c1:: with SMTP id k1mr4231960oij.92.1600282308115;
        Wed, 16 Sep 2020 11:51:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:312:: with SMTP id l18ls191775ooe.3.gmail; Wed, 16
 Sep 2020 11:51:47 -0700 (PDT)
X-Received: by 2002:a4a:c541:: with SMTP id j1mr18763782ooq.13.1600282307268;
        Wed, 16 Sep 2020 11:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600282307; cv=none;
        d=google.com; s=arc-20160816;
        b=y5xATggpvfvvUC69jE5PMbvs1Cg2N+dz6aIbT3rZaz/1qWq4+AqP5RJsUFjQh6KPV3
         eWYy8KxZownksX8vki1m3o6mKLn+FIJe5whYJNUb3RtCsufzak+6aQpyaaTgRSHopuaQ
         oS5YIkpXAUMsNOheOWWMqynZkX8j3BEh6bTdzfkqBOVebvzCDE19uMZderiByqzi9rQ1
         kzev2ZZ1cU7XS6aSKt3VBubbD1JPimaT68sCJ/BEA7mYC2pMPC9eRi4flK2MELbroouy
         M9+dQZcYgOlOsgZN46xIiBD+m+qAwo7Efxo8ib0nSs5EbfMVWqlRAzi5AhiLDVd6GXIo
         3v5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4+WHdAVlCFgmzmA4En+naGrx650M8JLZGe/WluGaEDs=;
        b=Dg3n7z3OBGquCOMCoZXRXSBtlThsRuybrxACkiMelio6LmQdwYrsYEiRWNiDREIKc1
         2txvltWsKweCPPljqNckscidw/BysbAI3Vj/BxFw8ZNH4S+FYdjCgDA0cAl1gtp272Zy
         3XlKYf+8VOVslv5uHVtokwksxkS0EBzeD/Zme2auBdRgd4VTJe+H/tLrSYeUoY5Pt462
         QWMkOCPtYVtf5z1V1Vt0cZR04HH8zb8tNMVsLmdGP0M8Vn3AIrkhVCg5/lzDA5LjQ2Iy
         QNBh23Fiq2wsNr3nOSFZ8n73SkhfGokgPwRSUHMfzTkesG3B5tmVDWt1FeokD4S0A+Un
         x7WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lj8dJnoA;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id k7si1210637oif.3.2020.09.16.11.51.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 11:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Received: by mail-oi1-x22f.google.com with SMTP id x14so9272296oic.9
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 11:51:47 -0700 (PDT)
X-Received: by 2002:aca:3d07:: with SMTP id k7mr2932773oia.172.1600282306393;
 Wed, 16 Sep 2020 11:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net> <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 20:51:34 +0200
Message-ID: <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Daniel Kiss <daniel.kiss@arm.com>, momchil.velikov@arm.com, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lj8dJnoA;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::22f as
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

On Wed, 16 Sep 2020 at 20:22, 'Nick Desaulniers' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Wed, Sep 16, 2020 at 1:46 AM Marco Elver <elver@google.com> wrote:
> >
> > On Wed, 16 Sep 2020 at 10:30, <peterz@infradead.org> wrote:
> > > On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
> > > > On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > > > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > >
> > > > This one also appears with Clang 11. This is new I think because we
> > > > started emitting ASAN ctors for globals redzone initialization.
> > > >
> > > > I think we really do not care about precise stack frames in these
> > > > compiler-generated functions. So, would it be reasonable to make
> > > > objtool ignore all *san.module_ctor and *san.module_dtor functions (we
> > > > have them for ASAN, TSAN, MSAN)?
> > >
> > > The thing is, if objtool cannot follow, it cannot generate ORC data and
> > > our unwinder cannot unwind through the instrumentation, and that is a
> > > fail.
> > >
> > > Or am I missing something here?
> >
> > They aren't about the actual instrumentation. The warnings are about
> > module_ctor/module_dtor functions which are compiler-generated, and
> > these are only called on initialization/destruction (dtors only for
> > modules I guess).
> >
> > E.g. for KASAN it's the calls to __asan_register_globals that are
> > called from asan.module_ctor. For KCSAN the tsan.module_ctor is
> > effectively a noop (because __tsan_init() is a noop), so it really
> > doesn't matter much.
> >
> > Is my assumption correct that the only effect would be if something
> > called by them fails, we just don't see the full stack trace? I think
> > we can live with that, there are only few central places that deal
> > with ctors/dtors (do_ctors(), ...?).
> >
> > The "real" fix would be to teach the compilers about "frame pointer
> > save/setup" for generated functions, but I don't think that's
> > realistic.
>
> So this has come up before, specifically in the context of gcov:
> https://github.com/ClangBuiltLinux/linux/issues/955.
>
> I looked into this a bit, and IIRC, the issue was that compiler
> generated functions aren't very good about keeping track of whether
> they should or should not emit framepointer setup/teardown
> prolog/epilogs.  In LLVM's IR, -fno-omit-frame-pointer gets attached
> to every function as a function level attribute.
> https://godbolt.org/z/fcn9c6 ("frame-pointer"="all").
>
> There were some recent LLVM patches for BTI (arm64) that made some BTI
> related command line flags module level attributes, which I thought
> was interesting; I was wondering last night if -fno-omit-frame-pointer
> and maybe even the level of stack protector should be?  I guess LTO
> would complicate things; not sure it would be good to merge modules
> with different attributes; I'm not sure how that's handled today in
> LLVM.
>
> Basically, when the compiler is synthesizing a new function
> definition, it should check whether a frame pointer should be emitted
> or not.  We could do that today by maybe scanning all other function
> definitions for the presence of "frame-pointer"="all" fn attr,
> breaking early if we find one, and emitting the frame pointer setup in
> that case.  Though I guess it's "frame-pointer"="none" otherwise, so
> maybe checking any other fn def would be fine; I don't see any C fn
> attr's that allow you to keep frame pointers or not.  What's tricky is
> that the front end flag was resolved much earlier than where this code
> gets generated, so it would need to look for traces that the flag ever
> existed, which sounds brittle on paper to me.

Thanks for the summary -- yeah, that was my suspicion, that some
attribute was being lost somewhere. And I think if we generalize this,
and don't just try to attach "frame-pointer" attr to the function, we
probably also solve the BTI issue that Mark still pointed out with
these module_ctor/dtors.

I was trying to see if there was a generic way to attach all the
common attributes to the function generated here:
https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transforms/Utils/ModuleUtils.cpp#L122
-- but we probably can't attach all attributes, and need to remove a
bunch of them again like the sanitizers (or alternatively just select
the ones we need). But, I'm still digging for the function that
attaches all the common attributes...

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w%40mail.gmail.com.
