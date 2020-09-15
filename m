Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDMDQX5QKGQERRUPTPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B51B26B1B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 00:34:54 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id d195sf2091230oig.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 15:34:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600209293; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZAf+Go5XsL5fD8NNimxUzI/Rc18yXwDiXvU8IRurFd2/2+7LgabthRggRdIvtZFhE
         9rBci62a+IUO0gIYLgqSsPuSdaY2eZz1e0t3YQyb5YJvmAiq93YTWgEjEA6h0B2v93OT
         QK6hhrZBV+h2hNaEIpkceG5LsM0NKDmS3qD06pEGYHV6MFdGKacNeOEQ280OuUooVcue
         m8QOyvXArmC0pcHms/rYPLijYhAPhTZKjezG31I1hCN0wBjwwIpMUphd/xdvzOhecgKu
         jCHLQkUjVkPyxZSuooJKUj3TZbtqgkkxaZxRBcyv7GzwoTCwTvvwgrPCf2fQdc79UMLB
         sv3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qe1tpa8hAn8SlKCCStdLGJWq5jVXdYTohWDlTpK7+AI=;
        b=E5umlPjsKZ9e3O8QN1RApP2LxRNcQVIzA0tyxd/RByYQBa6X5M3CUIVwUjV1QPogml
         kfb/1ieBLISqZq4qNlZijkNlRZwbC5v8CNPLurlAGfPfdQ4FZIxUZsHw5e6Nw8wyZtA3
         H+xijRn6A5yJwv9jvDwPLgNq3Yf3UtpJDwFqveqGOCVchjJJTc8FI+DQjycpiC/WHU/+
         Ij/dmgBpAKG36rChlnKUfoKjDA9reQ9m9QadPjmHBhxGCa/VWS5w6urPOa4Z1QvjUp6P
         VQPK03lmzulqw9XX1XUlor7hkiYhkCBYwo1tWJejI1Fzt9YbnrmlhkrSnHeXIbZFeVlb
         Opeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bGjml3eD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe1tpa8hAn8SlKCCStdLGJWq5jVXdYTohWDlTpK7+AI=;
        b=K00+30itYmxtER4RGGpiQpfYh3p8jvAl5CngVTxkMAw2LChkqRa0fKScD+nuRw8Byo
         mGDi4lOJXXWSBEAK6BqoLk/tIEgRShn+kWxONCPEGCV59DiMO9I21rLksIi+yaeI2UIx
         sBu0C6AlctZa0hsP32F6lICnpQF9/RJltd13UP6Fjr4Xh08bSDbNLMhR439n08rj4rUE
         29+RvBTC2rFFQUWK85TsmRF/r+HGuWvwOvfkEAx+y6or/CFgrWyBzbpX2vS8fTGXOStW
         Ztp2I5p1erPTnfDsLWHNbjrmtgoD5gB7WA/cFZ+7R2hL3KH5yu4ZTJcwauRd2nLnrmZc
         QtKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qe1tpa8hAn8SlKCCStdLGJWq5jVXdYTohWDlTpK7+AI=;
        b=V/iOFrv4IcAEqcs6fMqhcYmvHDXgGS9JNCYIN5ho5EYXZUt15f+n/gLPVHfejjD887
         AYnYfviu+pSHHxag/Hc+NXJ+f+zWb3k4EdhvR1TdcfLTcGyWBCa8u/hkowEVyTqluG0v
         X8895XBe6GwuRgDAdsd8KK5ScutK3yY8eo5O2rw4G+EDxSHwRkiFO4DHpUw9voZ2O3Nk
         6EO/X0ljp9EzRlfX5sU2MS4viKiXWLnYPnpN0qgLY7lbLLzTY65/1X3Nl9UPmSuts/xk
         Mj5WTAtYXyecckssB2IObcDo57dcE8lqrLbbE6loT1iXRUJeagj7P3/373EjDIM4LtPI
         wS9w==
X-Gm-Message-State: AOAM530ccuyLb2QGXtcA6DSmEYtHlCWj3/pXcs45rO6YiI+vzOV3nZl9
	GKn4j6uLcnwz3AqZCdrc9/c=
X-Google-Smtp-Source: ABdhPJzSozfJlMzj1bkZottv18VaG+Qb52gKAL7iqr2ceWyiYnM7kcTAJjjkO49RGU+ZNdvqM1mhjQ==
X-Received: by 2002:a05:6830:d2:: with SMTP id x18mr2551839oto.195.1600209293398;
        Tue, 15 Sep 2020 15:34:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:614b:: with SMTP id c11ls28803otk.2.gmail; Tue, 15 Sep
 2020 15:34:53 -0700 (PDT)
X-Received: by 2002:a9d:5eb:: with SMTP id 98mr15057705otd.317.1600209293018;
        Tue, 15 Sep 2020 15:34:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600209293; cv=none;
        d=google.com; s=arc-20160816;
        b=X+xiKes0hEbXwQ0IpJ9Txlje3EMREQpgUQmqBP3Rlp1dwxvb0wSYeW7orOD7BQXGlW
         nhE2b6yZJJEIHvYW8+Ruml0D+LZDEbTE9CdpaQhfFmycs47IQY7uLVj+Cj2VzZXb2jxj
         NbgSKKIpMHmabuywXDyVBPmY6wdzl+h+0ks3TCgKpEKOcpv99ZnBsAoLnhx6qON4hzQr
         4Taps3M08r5LpPNsV63MrdhF3CWCcsiKfAiNlBrfSle88Ld1UX2Xk+V8Uv7bsNjiKOfL
         CUcRdKevvTgCBRukhvxuZbmVYtnbt8gdvZpf8jn7OjwA6bHScf28aetfcwvFSA/2jsw/
         7UjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+RefOWSaF/+yw4enLs3JNCZKSsuLRuxsPClHLLnrcCk=;
        b=E2IBwP4Z8tB0N80YtucLoVyWkG3d83ZqIWckuBBQlcyP3GERMkqnKF8oGSfjoTpg/c
         wnF4WkGVdhUrZyyjLc5oMoADM9jBuwClDgPUzdr7jAP3NHPFD4sFdPGYdf788mQUi3KR
         IblLeg6rZRCCSfttNpNhlhn1aHdz3c2i42qdMKFziMJw9havYqx3zeHrtoCT4zbb4OSU
         8a9hRKz93hMwAe9WZGM+Lff9sQ3z8tVYG95F8GGZqC2ohLFnnoX6x6nbehg02BdBz847
         bY3AovQChkLBlY8UbC54JKRKUr6eH2WSu4ARE7R4kVhA/dkRPmGBubh3ewXT4Ydp9qoE
         sudA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bGjml3eD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id l15si1709289otb.0.2020.09.15.15.34.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 15:34:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id jw11so518022pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 15:34:52 -0700 (PDT)
X-Received: by 2002:a17:902:7295:b029:d1:e3bd:48cc with SMTP id
 d21-20020a1709027295b02900d1e3bd48ccmr5124412pll.10.1600209292167; Tue, 15
 Sep 2020 15:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic> <20200915210231.ysaibtkeibdm4zps@treble>
In-Reply-To: <20200915210231.ysaibtkeibdm4zps@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 15:34:39 -0700
Message-ID: <CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Josh Poimboeuf <jpoimboe@redhat.com>, Marco Elver <elver@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bGjml3eD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, Sep 15, 2020 at 2:02 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> panic() is noreturn, so the compiler is enforcing the fact that it
> doesn't return, by trapping if it does return.
>
> I seem to remember that's caused by CONFIG_UBSAN_TRAP.

Indeed, if I remove CONFIG_UBSAN_TRAP from the 0day report's
randconfig, these unreachable instruction warnings all go away.

So what's the right way to fix this?

CONFIG_UBSAN_TRAP enables -fsanitize-undefined-trap-on-error  (not
sure why that's wrapped in cc-option; it shouldn't be selectable via
Kconfig if unsupported by the toolchain).

Should clang not be emitting `ud2` trapping instructions for this flag
for no-return functions?

or

Should objtool be made aware of the config option and then not check
traps after no-returns?

I suspect the latter, but I'm not sure how feasible it is to
implement.  Josh, Marco, do you have thoughts on the above?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmptEpi8fiOyWUo%3DAiZJiX%2BZ%2BVHJOM2buLPrWsMTwLnyw%40mail.gmail.com.
