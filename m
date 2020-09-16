Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB7VBQ75QKGQE4AXZ6VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E39226BFA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:46:56 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id s4sf3424063pgk.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:46:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600246014; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+eQiXMNNa18SexFHsxhY5Rc8b1N7vkWTVTRwSIsBtHpbGRrGYNUvu1BxnCG4Dou9L
         ApjyYmdlmLz0FTZgxT243Xvc8KBgRQrSrl0LtQt9Ra5YC0X3UEbMgDdGVQKbhou6C35c
         FMnTuBf9rDZaCCqurKpv8zT0I1lWfOgfQXFnxa4lmKRKPMr6Jr3XhZvzmHhZKPlSJSOi
         PLxxcmnpdcvJDmUeYa4H9u8NnfmeTqkDoLqdlOMmEeDOHWsFRlnScGdV2rqfa+3k8S6Q
         Uzy3t0CHge+TBrPaA7KUdnYGHjmBJaPEwSCypdesLTyzcE319GRsEYInMphCgPZP+ZlD
         YTyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HS0rseNlrzOuh2hE2zrq0r6RIfYF4qaa8xAmbVn3PNc=;
        b=0jReZuNMnnxA4aYOp/nf/O8g0ldCmz6NfSgIjSlWqL11UDbJymOWjnIncyxZLNaNyN
         Ft5REjJlPF8PrYOcslH7aS7h5RUVcfCXRbWzD0jhHcROIKZ4wf9YMYoNk4dgxE5l+Fxl
         eUkZ23uhDQ02mA0dI8oiggr4jnolV8XxmGYx5ntXaW9+xxKhpOo9j/bbUypc9OrLfjeV
         CoLGA7hZzypcBFIC+EfUhjy+CwxIKPY8oFqN4lGF5ZmKjQTwI2DkS0rDNDW9H3AQSyZE
         cwAqnuXnEyWN3PtdHxgyAbyyJYy0qinDPIN6fj+zYH/yDOebadJOeAPE6p7k5oxxfCD7
         9DoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3aJCgj3;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HS0rseNlrzOuh2hE2zrq0r6RIfYF4qaa8xAmbVn3PNc=;
        b=XJFCjr6RZ3vssDSuv0n3ArsXRsMP+MeCpa2DZJVFX5LOZq1cLA6Sz3DelT4IJ4HmL4
         5dfu3dWkC3ggdyevp/XwX0NFXd6pVtM214NKRy1821FE7OCZH2IUfwiaqfQhh0Q1vhlQ
         xFZi+UBVlqo6OMILejCYVO8hMdT42obD+RtdQQsPNX2GHkpgVgW9FxkuFmY49U5SQk0Q
         0plqvAFDac8aO7CMM+H1E1inINkiDhN0jL8HyeKUUewzhAcsCo/bPWMQVH/bojE4LA2P
         9Is/d2X1vZHXkEDmPIf69u09jFJGHN+zZvkQR06G5D5hod7s+T6qUiwGCMtnzdNEE0Rw
         AWsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HS0rseNlrzOuh2hE2zrq0r6RIfYF4qaa8xAmbVn3PNc=;
        b=PFBkBje7CgnYJ9yMNUMn+m/zxkMU9kHl+/U6Qq3p5qYF+WagvgG9y1+BX6pZdC0vxV
         cPkRmO5VYenYAj4H2I+hZDe/XjrOraE5UKz1UayZS1jZpxHwM9noIWEXF0e1LWTjyHLM
         E3rAs5nLRsWdAACPMfX9j4NfuJrkpnGEKBG4o5IuoG7DEGl3P4lGfyFEycNZM86ySPZI
         VujdAW9Hhg/gU6g6+sFlMhkXJ7OvzZLcG3I+6mpsuLyIpE6nYosyHnd+Q+SxWIir3fo6
         aLrDfBN+JpqqBSVuSYBp94pNFJ4v5hBG04XdyJs2gsRW4Ahqg3oMNAElnggcqbvsxlgo
         eGRQ==
X-Gm-Message-State: AOAM533RkOwa98lB9v5yEW9IVCY2F7G5HZnboLYA+Gu0fOB33IHC/nBw
	UFyEB9tzqm1S0VVsC0pu5kE=
X-Google-Smtp-Source: ABdhPJzO7AgL4/6CzAZ9JdsnISMuXONBchThF16O3D/kBn6YOggxgEMkkDk+Nj09hguM6KxsYlW04w==
X-Received: by 2002:a62:17cd:0:b029:13c:1611:652b with SMTP id 196-20020a6217cd0000b029013c1611652bmr22014564pfx.11.1600246014484;
        Wed, 16 Sep 2020 01:46:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4812:: with SMTP id kn18ls833438pjb.0.gmail; Wed, 16
 Sep 2020 01:46:53 -0700 (PDT)
X-Received: by 2002:a17:90b:4018:: with SMTP id ie24mr3138619pjb.9.1600246013890;
        Wed, 16 Sep 2020 01:46:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600246013; cv=none;
        d=google.com; s=arc-20160816;
        b=HHM7Na3gdfTj+FqzAgCcoO9n0ZcJ614esZbm7paZC8VTFatY1eskM9i4jH53SOu9yn
         22LPuuWFyesFDpmYX9ozfflX+y2N2uxSoKTd8qIjYf7sP6FuclZ+68rxz3/kuykfBfVc
         meLkSj1vE2uKjrr1fdTxiZWmfKd1P3GnW/h3gZerOA1uI3Wm2UseopPN8iNOSvZSOINU
         jYDpdiSzu2i0zvaP8hIojgygAfUKWGdoIICnjabOmVdx/wMhG++/GtsnL8mIcMto7lPE
         eMp38EmBGbVXEhGzbDcA2q+dzej/up7JuvyK3w5jUMC1Rmrd/9yAUBHBACcNeZqH9MFZ
         z2KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mFHlsqUTp6bF1BGPzUjg3LJj5CvZI8A5XHbHTxJpfjI=;
        b=sXWphiw/GkhSD46oJzK9buU4heXLveCuSYb5ME2zZKIyywyH2dx1n8qIs/OnthE+oG
         ByadnjdNGABwMG3Ds30HA+QXZ+tzA0CKfftfK4FDfYB80y0vMK/YzwftxApSrDTNjx50
         grNEOe+E6mwgVZMQ7e4z9HxDnPDUQaj7KWbeBalkRAgD+Jg5uDLiMYIGIgC9UqQXk5oN
         k02V1UTbwr7W70xCQ7x4Z4PMHRlUO4qbBO3Hr1w7MZUq/+HEdVFO6Flk7/kQsOJXU9FT
         0wA5Fdr2lNTLT0WTVkzNmUbBKI26CMn2Z0VDZ7wcmDkuaw9dNnzmXeeJT229HFGhqGGb
         mHXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s3aJCgj3;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id mj1si181595pjb.3.2020.09.16.01.46.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:46:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id n61so5923278ota.10
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 01:46:53 -0700 (PDT)
X-Received: by 2002:a9d:66a:: with SMTP id 97mr2793069otn.233.1600246013074;
 Wed, 16 Sep 2020 01:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com> <20200916083032.GL2674@hirez.programming.kicks-ass.net>
In-Reply-To: <20200916083032.GL2674@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 10:46:41 +0200
Message-ID: <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=s3aJCgj3;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as
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

On Wed, 16 Sep 2020 at 10:30, <peterz@infradead.org> wrote:
> On Tue, Sep 15, 2020 at 08:09:16PM +0200, Marco Elver wrote:
> > On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
>
> > > > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > > > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > > > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> >
> > This one also appears with Clang 11. This is new I think because we
> > started emitting ASAN ctors for globals redzone initialization.
> >
> > I think we really do not care about precise stack frames in these
> > compiler-generated functions. So, would it be reasonable to make
> > objtool ignore all *san.module_ctor and *san.module_dtor functions (we
> > have them for ASAN, TSAN, MSAN)?
>
> The thing is, if objtool cannot follow, it cannot generate ORC data and
> our unwinder cannot unwind through the instrumentation, and that is a
> fail.
>
> Or am I missing something here?

They aren't about the actual instrumentation. The warnings are about
module_ctor/module_dtor functions which are compiler-generated, and
these are only called on initialization/destruction (dtors only for
modules I guess).

E.g. for KASAN it's the calls to __asan_register_globals that are
called from asan.module_ctor. For KCSAN the tsan.module_ctor is
effectively a noop (because __tsan_init() is a noop), so it really
doesn't matter much.

Is my assumption correct that the only effect would be if something
called by them fails, we just don't see the full stack trace? I think
we can live with that, there are only few central places that deal
with ctors/dtors (do_ctors(), ...?).

The "real" fix would be to teach the compilers about "frame pointer
save/setup" for generated functions, but I don't think that's
realistic.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOBUp0kRTODJMuSLteE%3D-woFZ2nUzk1%3DH8wqcusvi%2BT_g%40mail.gmail.com.
