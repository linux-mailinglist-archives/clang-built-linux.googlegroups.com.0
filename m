Return-Path: <clang-built-linux+bncBCS7XUWOUULBBC6ERP5QKGQE4MWGWOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2507B26D215
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 06:11:57 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id r9sf987180ybd.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 21:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600315916; cv=pass;
        d=google.com; s=arc-20160816;
        b=NwwOH4bcR6D7ZESlXRJgVAupgIFLy85yPNtDeZJ7i+y7fcbNgQVDVSoaFSrSlgPZSR
         kh4WJrrVaoKzIDdWlrpFxPOQKmVjIkKXhyZu5lzFVc33TzMF6+Qx0d/t8npmpD+32W3B
         rwOvzOziP4Uhr3Y9pSkI5nQYndlkyhD0OFVsZYZxTy6/Wo2zHFWEK5CMKITECBHPdrny
         OsQiwmtPKt2RFOAYvme7TZa3CaPoNvP3SMGcsLsSxCsGp9TDZM+9+hL0gNIivpuidXpt
         jGDPqzNPORb66LBU8QXMq6T2ixe7gaACqtT6DFSuds/HNXhhoeGXTHndGpu4+5OgnE9Z
         zWyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=clKxWUNysv2cRak2veCz8Xu8s8IgN4Fy/U+IOxyfuzE=;
        b=BA75rAW7r4uGF1i58LP+Ob3G/EcE83wfB0njDXio56roSYnmw6rjj9TagewUgOauNe
         dV/2hRYIrTg9EdT6XlZHovp+G5DElHjbfn47X4onsetEeCMbRluRZKe7yWQjShVlp7Sd
         hQ8ZmUpp1sag9newST7JEAhA1JC+oraRZkMu/AMbn2l7z90ieYOzMyrtOdbZGtcFVrci
         Ny9k5cXPNXfgP0Isbqhl2kelVA/RVB7YYaPak6r6cmrxJEuCMo2v07ydnie2z3XG26za
         ZQ40d3KI69J4n+Em9KZn+hYOxAcqy4Hfv0L3c8njHfhShXwPNJLac/HRwi5YbDFu9hAm
         MWHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcsH9qwk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=clKxWUNysv2cRak2veCz8Xu8s8IgN4Fy/U+IOxyfuzE=;
        b=PraXI5OK5AUvyv/+E1twOPk+CGH4iZYO6XaOmhLNwZ/mNuVUAuqiIY0sU+C0KcXU+U
         yK6beE2Bvmw2rD4LfKFWdXLhjhY5bnDooILgACYITY6IuquYbeN5fFPsU+7TAGSchqr4
         y6JgwPTbFSN9wjh0jiPgsg4g5Ecz/BpDysvv6/ZTzhx3iyrp2DIL2/yRMboCcA70pC/8
         +cmXSkr8WL8LzMhzinYYpfj/czRY51kZxvE3Hpi+fw/4b3kNY1sRNC7yB5AUe48aLdje
         uPKbyWd02zZQka4DdLeRwPZASodn+rHEpr2bBZHDg9/CeUE3dc5wIAK+aAT1XbcHAkvL
         matQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=clKxWUNysv2cRak2veCz8Xu8s8IgN4Fy/U+IOxyfuzE=;
        b=DGsB2JgH2AoTFe20P8cuXjMZn0nLHuTDKhvSi+nmFH+XPNIVX/wJibr6EG3t8IPFWY
         rjKECgRLgP1frKfoZttrNrYhIiZWrJ/p8YQYTW14cxfTfWzHWVa8BHc+a+qkOHjBDglB
         3AQBlr8QUQVvpD0MaEYzBCLHhYURzlgR6l//map1opxq+PVddefqXeAJ+2Ejj7iZ+arW
         gUlRl2HPdoPrn/Ob/+F710J64zgBuFnSVd9An2mR3PyMjO9TbnQhj2KdRv1i9pOYq1mV
         zBvx8SWz7YpvX1ObYlkULK5+3XNlkBlph/KtSCk6yd53kihWl9PKxK24j4GE2CYVRTbL
         a9IQ==
X-Gm-Message-State: AOAM533yK23mYo5Tm1RTb0SVbeGQyo9BscGjhSVKPkjDwevvIogxp9pE
	5Da93mKkTO7whZrvlPOzNNU=
X-Google-Smtp-Source: ABdhPJz8dQmLV3cD4frqqlNgX0oYEcdhCGKVfFFHadZF0AL201iJ8wVgERYc9fBK7CwzJn8WZYMNVg==
X-Received: by 2002:a25:3dc2:: with SMTP id k185mr26131091yba.469.1600315915996;
        Wed, 16 Sep 2020 21:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ef05:: with SMTP id g5ls364416ybd.0.gmail; Wed, 16 Sep
 2020 21:11:55 -0700 (PDT)
X-Received: by 2002:a25:818e:: with SMTP id p14mr6141244ybk.399.1600315915492;
        Wed, 16 Sep 2020 21:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600315915; cv=none;
        d=google.com; s=arc-20160816;
        b=sKajOgGkgqMKFshzqis+FLVTi74ifv9eMNO57gmaJRN90C79GPOiOTVretaYQRVq/F
         99f0nsQSsQqbaqveW86S6kTe1CLHuZciAYAA7aB2lFDgYn+hWLCfnWUt0hJ4pl6bRHSk
         fUkk+bX3cAT/uUTjy+zpwYkoQskVXGV4RA8YOBJg4pud88mBSIp1R9UkAGp8ovG48wQl
         YzKuzkAv5ruZ/9UDf4qtrx6wJ/as2cxY0NhJHPtiBAnlsc3pZb3RxhL8YUTwFiOL9eOo
         6TD0GsuCkljVCMh5lA9NzVW43Ri/37H+CrrmwBXrU4/bjkssHp6DAMKvsC/o5C5TZ5/k
         PRCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hmyX2VLobpv/xATMsYUo+l7NUXTBFoGrvmN52O6thLs=;
        b=p6rXng0jb8IIq2HhzscZIQpgRZM1H0EmzeU97Nu3QzyYM/oDC1VK6s9m4TTe8jB68S
         pDq3yJVrAQMmLpmsSvTbMA6F59YNmaP2xBFmRexglDwmjcIxBZGfUUN6ifuakHMSVl9o
         WIEKC7ABeAFnU7nrTwbd964MyfyrEiAIEvqZmKlvtRRUEoMwQkj8sH4qulA5QA7OQTDC
         XIMboZCJoKC8JtNIBdS3fIL28yjs2TMAGaftArFzAwqRpKbwU1FLEV6XBCU/EtIf0OHG
         VgMr60HJ+FwDRXk5gQMKQcc6qDn4Z9bc3xqSdazcgZyLZu5MWnDhX/PawNHutjYIztvh
         cGsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcsH9qwk;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id v129si1043942ybe.2.2020.09.16.21.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 21:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id z18so405114pfg.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 21:11:55 -0700 (PDT)
X-Received: by 2002:a63:5f87:: with SMTP id t129mr2413690pgb.288.1600315914506;
        Wed, 16 Sep 2020 21:11:54 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id a13sm15937462pgq.41.2020.09.16.21.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 21:11:53 -0700 (PDT)
Date: Wed, 16 Sep 2020 21:11:50 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Marco Elver <elver@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Daniel Kiss <daniel.kiss@arm.com>, momchil.velikov@arm.com,
	Mark Rutland <mark.rutland@arm.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200917041150.3xfmi5pqyd7qm2fg@google.com>
References: <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net>
 <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
 <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lcsH9qwk;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-09-16, 'Marco Elver' via Clang Built Linux wrote:
>On Wed, 16 Sep 2020 at 20:22, 'Nick Desaulniers' via kasan-dev
><kasan-dev@googlegroups.com> wrote:
>>
>> On Wed, Sep 16, 2020 at 1:46 AM Marco Elver <elver@google.com> wrote:
>> >
>> > On Wed, 16 Sep 2020 at 10:30, <peterz@infradead.org> wrote:
>> > > On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
>> > > > On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
>> > > > > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
>> > >
>> > > > > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
>> > > > > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
>> > > > > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
>> > > > > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
>> > > > > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
>> > > > > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
>> > > >
>> > > > This one also appears with Clang 11. This is new I think because we
>> > > > started emitting ASAN ctors for globals redzone initialization.
>> > > >
>> > > > I think we really do not care about precise stack frames in these
>> > > > compiler-generated functions. So, would it be reasonable to make
>> > > > objtool ignore all *san.module_ctor and *san.module_dtor functions (we
>> > > > have them for ASAN, TSAN, MSAN)?
>> > >
>> > > The thing is, if objtool cannot follow, it cannot generate ORC data and
>> > > our unwinder cannot unwind through the instrumentation, and that is a
>> > > fail.
>> > >
>> > > Or am I missing something here?
>> >
>> > They aren't about the actual instrumentation. The warnings are about
>> > module_ctor/module_dtor functions which are compiler-generated, and
>> > these are only called on initialization/destruction (dtors only for
>> > modules I guess).
>> >
>> > E.g. for KASAN it's the calls to __asan_register_globals that are
>> > called from asan.module_ctor. For KCSAN the tsan.module_ctor is
>> > effectively a noop (because __tsan_init() is a noop), so it really
>> > doesn't matter much.
>> >
>> > Is my assumption correct that the only effect would be if something
>> > called by them fails, we just don't see the full stack trace? I think
>> > we can live with that, there are only few central places that deal
>> > with ctors/dtors (do_ctors(), ...?).
>> >
>> > The "real" fix would be to teach the compilers about "frame pointer
>> > save/setup" for generated functions, but I don't think that's
>> > realistic.
>>
>> So this has come up before, specifically in the context of gcov:
>> https://github.com/ClangBuiltLinux/linux/issues/955.
>>
>> I looked into this a bit, and IIRC, the issue was that compiler
>> generated functions aren't very good about keeping track of whether
>> they should or should not emit framepointer setup/teardown
>> prolog/epilogs.  In LLVM's IR, -fno-omit-frame-pointer gets attached
>> to every function as a function level attribute.
>> https://godbolt.org/z/fcn9c6 ("frame-pointer"="all").
>>
>> There were some recent LLVM patches for BTI (arm64) that made some BTI
>> related command line flags module level attributes, which I thought
>> was interesting; I was wondering last night if -fno-omit-frame-pointer
>> and maybe even the level of stack protector should be?  I guess LTO
>> would complicate things; not sure it would be good to merge modules
>> with different attributes; I'm not sure how that's handled today in
>> LLVM.
>>
>> Basically, when the compiler is synthesizing a new function
>> definition, it should check whether a frame pointer should be emitted
>> or not.  We could do that today by maybe scanning all other function
>> definitions for the presence of "frame-pointer"="all" fn attr,
>> breaking early if we find one, and emitting the frame pointer setup in
>> that case.  Though I guess it's "frame-pointer"="none" otherwise, so
>> maybe checking any other fn def would be fine; I don't see any C fn
>> attr's that allow you to keep frame pointers or not.  What's tricky is
>> that the front end flag was resolved much earlier than where this code
>> gets generated, so it would need to look for traces that the flag ever
>> existed, which sounds brittle on paper to me.
>
>Thanks for the summary -- yeah, that was my suspicion, that some
>attribute was being lost somewhere. And I think if we generalize this,
>and don't just try to attach "frame-pointer" attr to the function, we
>probably also solve the BTI issue that Mark still pointed out with
>these module_ctor/dtors.
>
>I was trying to see if there was a generic way to attach all the
>common attributes to the function generated here:
>https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transforms/Utils/ModuleUtils.cpp#L122
>-- but we probably can't attach all attributes, and need to remove a
>bunch of them again like the sanitizers (or alternatively just select
>the ones we need). But, I'm still digging for the function that
>attaches all the common attributes...
>
>Thanks,
>-- Marco

Speaking of gcov, do people know whether frame pointers in
kernel's libgcov implementation help?

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94394 "random kernel panic during collecting kernel code coverage"

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917041150.3xfmi5pqyd7qm2fg%40google.com.
