Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBAVYQ75QKGQE6BPDICQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 188A626C0AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:33:55 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id e2sf1363304vkn.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 02:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600248834; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7FEdI+WHIaipgOdOJA3ojzV0/+hBvOSL6arKRwUtXJDwn7oz8TON7a+R1qNn4mHDw
         nCAGvSFODd35qN+wZ+LTcIpNvcSTtlQwATSYEZfGjsncVblFjZeL72Xyh4E3JZ3iGRPs
         DRPF0cty70zyCBctllIQsYt7f1pIShZkvFmw02CvRM1rxxsu0QbTxE9H9qbXkoNjb4vd
         Jdt9FFM6KklsQ7EBnf4XYT84mQR3mrZvNekKombiDvFqpw57vbJa3xsVt50mMef/ig6k
         2/2acKg999O5oCqwDbk04c3RirIiMX5z+Yjl0E8zFykXfmGYeRE4uQK5iGHYdGQLwcK3
         G8tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QZc7LbrcOgwdQatZO2LejmEBfzr/+fDxD2uH6QbARHQ=;
        b=IPhRbEmQuas6GcISr3GGgAOjDQndBWDHtzGFkrdH7FUiwKoIwT4NkpwO0bkeybR6RK
         lbVaaiBR5se8AMvH/EEKeiNI51ADYYf+AJp+ZbxtDA/zSqoIqSQcmGwZyoboYMEaHGKL
         JSN8aVmPlIseiZZiCcYKRC5NyzE9TAZX6dOr6+HMr6XobFy1SWsYxRs3uR0cwv7QW5kN
         0B0WLCfKYni+zIFDpNaSmMq/+sJrmbFdqicoREBk5TYz4ga0E0pwdNrxoot+5XqJejH8
         n8aQgoDMBi+nsB+f0fSeS1bDzReg3z1U6dn5yQxIMfFPfjI9H2o59stZOD64TpokIGcT
         a7Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9Tdi+x3;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QZc7LbrcOgwdQatZO2LejmEBfzr/+fDxD2uH6QbARHQ=;
        b=ULFOQP5DTmlFnyu7i0nkaY2HbAM7gkrxwhUOPoPlCHef8etqfdkeHozXIYmZtZ4RhX
         qVqFNoKyHtc5AZWAHubXrHI15+1HsQlcCMIFumbQLNUSsd43MpI8yyOrCa2Pc7e8cRWv
         k94hXcMi4K2gyh13OJwHu3Kvrn9bZ9UVAptwURR0hYqMR+kIAaUFpXUmtpg1aBFTpceo
         LL15MBdf576oxjRIGMJh2eyYuHMk7qQch96BQhi5yWwp6E5cf/bxQSSfrbA76wtMABaJ
         SNmoIoD49O4++NZ79ErmQ6x6PrY4p7jKdOHw9lRsMEqd3bzPFumGqoJ12z3orvhnQBhc
         6Vqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QZc7LbrcOgwdQatZO2LejmEBfzr/+fDxD2uH6QbARHQ=;
        b=o6+hpsP7PYHE0gOE96yHr0h86dXpw4lY9X4DAQkOSC/Y0CgN8sevzlM5K9fsCbCO0t
         x5TxziZcGB8LIF2HUJ3KiNubeqbnVZ2ge/uRww9b0rZpR+fHo5H8iYqx7BagsJDQUE8+
         +j9kJDUZZqv5FpZsd2pjAZEOBDbZNopKdYSVy0+W8DaN9IcP1VXg4bXvQjpB/Cx5mBSd
         kcgaGwohqoiGDZyrJyvxtv+5iGxin4ovGMTng94F+Q1O9uh7582eChhObuI80D6bZPak
         zQ5ERFCOjB+RxvxYRIYSYEQaQd3P8Hjj659U08VbIwbSwPOj+PP7wThKmsLB6JpUo41Z
         rc3A==
X-Gm-Message-State: AOAM530x3CfcwtsZ8NyuGmqp4RFQzQVmF6tzowA5KmLWTypJ5Rixzcf2
	d9G/mzMux9zgy5sGYwPWbWY=
X-Google-Smtp-Source: ABdhPJzseEuJLTT8T8u9IVdQhC/sHwP6PES+PflvTiriTyiQ1qXfNx6aqaoimrokov/H+Ptss2QB0A==
X-Received: by 2002:ab0:6803:: with SMTP id z3mr11398355uar.46.1600248834150;
        Wed, 16 Sep 2020 02:33:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bb07:: with SMTP id m7ls176026vsn.4.gmail; Wed, 16 Sep
 2020 02:33:53 -0700 (PDT)
X-Received: by 2002:a67:ed84:: with SMTP id d4mr13735718vsp.27.1600248833619;
        Wed, 16 Sep 2020 02:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600248833; cv=none;
        d=google.com; s=arc-20160816;
        b=MmRB+WmJ3itjPrJgV5hYFL+9GmXH2aIb8dzzgjxdF6Kema/0TjKDFVixXs2z5F0DbG
         W34juVeiOjgN5eMRTFCLpCda45eH164NiKca5/Kv7g6U/cUulO3W8YS2wOV5C0M1+yKX
         paa2TTCvDz+d93mcBLq78ubgVMX2CpJJF3d1qG5b6dddze4rxk6P20TJxTpQBA1w2Nig
         kC/dxsJDZlIM7BNjt2TAGpWCPOSK+R3Vyf04MZ5CEk7Z0gWQ6zwMTScBQdnkPjHaNRaw
         GEnP8gObb/E7cjD0CwlOU+RQ3VLkrNMzg2sg1yKTMh4dMrky3R3G+wJhACHQsJDwcP9+
         oI+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+69jB+wV3csf3KfbgPgpUDFiF1twt7Lc/K19h4NVXE8=;
        b=dWOCW+1efzKb65FBzC5LmIhcLHsfkeFYLtfqVMqusmEL5y0kt8yujQa34m/QpuKcRI
         gXEDsM0zk6mYoocOsitsF84u01f84T48BTaUdbzeeth57vtnOCtaAm5Gg6JXJzbqCxjD
         mKtRjzBbEpfOEz7Kgw0G2nhZ14ZSnuxqHZYUTIsV49fyRGLjS923WhJqBOevhl35eEMj
         dbzkp0T9ifnJ7QwSjgeuso4Eg8D8qmK7caQM45B2JzW2o0JRwyPPD/LXzMzPYK4eTxfd
         GjCnN3ANg1KC708AlZ7BAmYilJVJPL1sCZa9NC0RARTM/uGdaxJpRvZoAHIgx2CDXGkY
         fjeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b9Tdi+x3;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id m5si1051008vkh.4.2020.09.16.02.33.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 02:33:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id h17so6094219otr.1
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 02:33:53 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr14889445otk.251.1600248832924;
 Wed, 16 Sep 2020 02:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net> <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <20200916090620.GN2674@hirez.programming.kicks-ass.net>
In-Reply-To: <20200916090620.GN2674@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 11:33:41 +0200
Message-ID: <CANpmjNPnnkfkRetEHWNwafP43qjbKypsWxLrBVidrzjrTOCFaQ@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b9Tdi+x3;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as
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

On Wed, 16 Sep 2020 at 11:06, <peterz@infradead.org> wrote:
> On Wed, Sep 16, 2020 at 10:46:41AM +0200, Marco Elver wrote:
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
>
> Not only fails, lockdep for example likes to store stack traces of
> various callsites etc.. Also perf (NMI) likes to think it can unwind at
> all times.

That's fair, and I would also prefer a proper fix. :-)

> > The "real" fix would be to teach the compilers about "frame pointer
> > save/setup" for generated functions, but I don't think that's
> > realistic.
>
> How is that unrealistic? If you build with framepointers enabled, the
> compiler is supposed to know about this stuff.

If it's a bug in current compilers, it'll be hard to get the fix into
those. My suspicion is there's a bug somewhere. We can try to make new
compiler versions do the right thing. Or maybe we're just missing some
flags, which would be nice. I'll investigate some more.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPnnkfkRetEHWNwafP43qjbKypsWxLrBVidrzjrTOCFaQ%40mail.gmail.com.
