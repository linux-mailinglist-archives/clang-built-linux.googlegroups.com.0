Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBWMGQT5QKGQE4XKNK6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ADC26AB87
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:09:30 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id f5sf3454046qtk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:09:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600193369; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fAiPtc7QWFDkJzUa3n/ZQJ19K6t2G0o5Mf0qhPQn4tNiFxesenGlzjjhyN1VIwYmt
         KKMSMO9FTm7lvhJu3nvFsnvhx71wMSvLMn5SbK8yFxomZPU4rhfdtAatZjSIbz/QayA+
         66T4fw+QWib8aYRmhMgAwZRUaX7fnTjNdK8vKaS+wR7fBhHiZ89FUPLSj0O2DSzQ/1up
         t5jtOjKwy6ja+IvQ3Mvl/9Qvp5vSyxTbXklKRTDFeGi5ozxU8cUHgy32qX8aqSxmaXJ+
         bPtAI3bTpd760JtlyMb5yJLTZ78bYbRDk8NwX85bDht4E6YwopzN8yiDR/El9Gf0HcUk
         cbJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VKdsvs4q7+L5VNWR2/DUtGO2eBI4gEpjsC1JGsQgaFU=;
        b=AdGr3map67M6MFppmsdd7zXATmSg/KLCA2szS7eHVwwwE5dmh4iTO6tM99dvsjJxwf
         LQ1V+9pRzZkp+Bh6/MrjJuOCmgSlWeGbHZMfNZPmH3z8q2MAw+EjpNLctCyZeGfjzOyT
         HqQtqK8lTVmqWUCdA1N7cMT6zimyik6dnCYFaG2mi5ZNjkHyfJN3y78l29WM+VREhzHa
         VGQT9wXC5/ro5t7axNfOK5DmNl2w9fNOJJgSoOsNZEodBkP/vBXYA088fh/QiigR+OUY
         YIv53ANZRTl7KbHFkjYFNkC6Qc/+P3RwMhqbB/p1iSsqSkqF5MjfIIwN74BzGdaZ0U6Y
         egEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YL4lnyzm;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VKdsvs4q7+L5VNWR2/DUtGO2eBI4gEpjsC1JGsQgaFU=;
        b=QEAst5u9KewpGe3NI34V7xplG8+JYi7Pfido6p0C0irU9QLYEMlbvYukUVgvF72593
         OfVyCUvG2Su2VAasNq0wIn4ya+WO+YlkLd8Yf281gaBf5LESCOMsrxhCTgb3y6OaL+2O
         lC0PRPcHokTkdrUU3Pc52yWOfxsM5yh8Jb2hPTce3nThtO9ZGThLULEVJok2RomV6d+f
         qnPeqXAp+4JMVaGk3met60mnffZVh/LXdqOCHKVcX0aO9RaG8BbX9cm9SkPzhCsRmdDq
         sQU2BQs937z7AUyj+HNC804hH4zc8WvEUualYNnNYloWNTXS/tvRVOFMUlJY11E2jlWp
         cptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VKdsvs4q7+L5VNWR2/DUtGO2eBI4gEpjsC1JGsQgaFU=;
        b=P/TtBBuk3xgmVgUzKhWyBXWltrsdQAcSprkYoAY8Zh6CFvsDbe1p70vReIoNbIAALA
         SvcD5rK3mU9FcQ/hq93rP5dzxwNluDYgaq0hcjhA9Elq3Xd9Mq1fHmr5PFtxw+Wev351
         3f+Pc4x1zC6Bae6h6RDqfCX1TRyI6TEggsk04AtG+qwMXgZ0FgwtEFIxf2Mg0gYlwClN
         BAK60yt6PidBcEQkCiwH4yu7MUZ6EvExxTySz0Bxjk5arPKf9/86gcJZv5EQWAAqrUq0
         KSvUIaIZ3xG1SlZNgg1gekwjqrNX/bLgX8j3sbTYXpampAKg7ShuKDFAvgDHgnRHCK56
         ZuCA==
X-Gm-Message-State: AOAM530AyHVTvAGWtQLyua07fMWD/EOP0X/CXDv+MIhYJPYfBunYCvqu
	DwmgTg+zo78SdneC1eryFMc=
X-Google-Smtp-Source: ABdhPJyU7RBSGgfSRfsWT7FQ1Br3tVcLTLFGeBBeaz3MwvAEAv2SjT5KP3JuX3oDxUxO6pYcG+oN5A==
X-Received: by 2002:a05:620a:101a:: with SMTP id z26mr18957177qkj.300.1600193369458;
        Tue, 15 Sep 2020 11:09:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:bd24:: with SMTP id m36ls3502627qvg.6.gmail; Tue, 15 Sep
 2020 11:09:29 -0700 (PDT)
X-Received: by 2002:a05:6214:1225:: with SMTP id p5mr19173833qvv.29.1600193368691;
        Tue, 15 Sep 2020 11:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600193368; cv=none;
        d=google.com; s=arc-20160816;
        b=vCE6F3Hs3bb9FM7hYlh1PgoJ8BnWoT4ZzgfUTQS7lW2zcPwgmNFfl6XfcyklTbyBJv
         nvVoakL4zsAml9YlpXGB2Gn3xnMZvfOxjPGqdJe2u0gzUfxAE6macXvpouhEigIYNX2Y
         UtEgr+3diSuKCWvXuki326402WdpaTfrAaumW2WdE5gyCsn7+v5mc+QY4PR9s0ay6MVX
         pxW2DrASDgCA7uwPGmrQlAabZBzPvSrC0r/w1E5pQqbhBARSqpTSvGfNCzKbcN3B9K2n
         0pI8uZJYdTMAbkUaYQAkxJA3bpKWpm7Zejim9VPW3VFefwbMmXYgy4/pAncrPFNx04q0
         3sIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aWsKZVXnxNV86nxwMhidD6aX4g78p96DDVvRBJQ0WvQ=;
        b=JsrmE3vvoHEe/7ep0gqVcj6zRafYgrB8tLiBOu7QNsDgEIqo+8LlgOj2GT9SA2Hjxh
         OsRQaZga74j9LM1K+S/Z1KlgOR4rF4Oe51FCGATcLHIhRuHco352vqnGU688sN5RDF1C
         T9r6zWXXdcLD1YG4iaiBzsvBp7+QNMuqayZhjcQtYlb+Ht9bgJuIqiMa7sW3T9ZmSI0+
         Jq7S4+T8+C8jlPVANy0DKx4YnGiY+ZHvwXeRyRl/OP572UHlmhR4lGNITtbbWpPp31gJ
         pbd7keRDUmgfWNxIp1I7Pn5dU+WPpXEtEX4XiS2CPIjR/XcSusXnCQR5DiCmvpf3yhal
         krsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YL4lnyzm;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a2si848206qkl.4.2020.09.15.11.09.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id o6so4163494ota.2
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 11:09:28 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr13003629otk.251.1600193367937;
 Tue, 15 Sep 2020 11:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <20200915172152.GR14436@zn.tnic> <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
In-Reply-To: <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 20:09:16 +0200
Message-ID: <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YL4lnyzm;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::343 as
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

On Tue, 15 Sep 2020 at 19:40, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 10:21 AM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Tue, Sep 15, 2020 at 12:02:48PM -0500, Josh Poimboeuf wrote:
> > > If somebody can share the .o file, I can take a look.
> >
> > If only I could reproduce...
> >
> > So I built:
> >
> > /home/share/src/llvm/tc-build/install/bin/clang-12 --version
> > ClangBuiltLinux clang version 12.0.0 (https://github.com/llvm/llvm-project 74a9c6d7e1c49cd0e3a8e8072b8aa03f7a84caff)
> > Target: x86_64-unknown-linux-gnu
> > Thread model: posix
> > InstalledDir: /home/share/src/llvm/tc-build/install/bin
> >
> > and I don't trigger that warning even with that compiler.
> >
> > What I do get is a lot of those pairs:
> >
> > init/calibrate.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > init/calibrate.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > init/version.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > init/version.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
> > certs/system_keyring.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
> > certs/system_keyring.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup

This one also appears with Clang 11. This is new I think because we
started emitting ASAN ctors for globals redzone initialization.

I think we really do not care about precise stack frames in these
compiler-generated functions. So, would it be reasonable to make
objtool ignore all *san.module_ctor and *san.module_dtor functions (we
have them for ASAN, TSAN, MSAN)?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA%40mail.gmail.com.
