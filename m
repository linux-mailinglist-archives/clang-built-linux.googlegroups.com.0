Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS475LZQKGQEQYTVZHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B99191D21
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 23:55:08 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id o10sf264328qtk.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 15:55:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585090507; cv=pass;
        d=google.com; s=arc-20160816;
        b=qXVuuKAKtt9lTqxJ3+1Q7WYOOnu2Ytfa8JsW4ntH6Vh7eH/rDW7p2S7ezjOfaKC+xR
         6DasMBe6lASn5GaBr/HD7oqbEIhedhmlI9bZ9+orAlOuwBZCQtksg405ZA9gc0GrC22z
         2aiP0OcZFZ8rVtAfnrR/g24ZJjwj57cpcoadKhFAj+mC3k3p1jyRgfACNgIQbTApL2ZC
         tMTWrdwDD4gkd6+Mc4WxoEeI8eQgyNLWb62ut8uRzFNxDmyv7yV2z5V3s8jOrzMnUySs
         IDwNH772DGD8oovK8s41XXJJyHu7J6BKO2r9IbSJRH3jdybfxYvW5xtpzm37WbrbExUt
         LrrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7ll8NxpGUhAFCfXoqPWZd6oPKwqUF2yuLTRHXyHfOlY=;
        b=kStxxCiQ1oJFuKABO7YqApYWoQ8pQNB9ZWRa7qtnsomfdeaNqQ7im1JmQIEKQQYueK
         561s4Dggg9rZnjmojgKDp11pZVfBtuLUREQjnep50F2m0aFE4tq9Zwdf3770RLZmjG8B
         Um6B9TkU2sNW9bihvXa/TS2iuPli88uiIUQI7Y6FJ5+tSfYTPFRybr3bKbHHbcdRxCzZ
         u4vcQ0pJrEx1Z1w8EkbxZJrMJOWj2KrhCMtLjHxtW59zMYzm9HVgd+UEwt8Po3NIRZya
         ENF7oFi4X+XDBe1/9CoY7q/q7h/28BJTgJg+tRd8oPyP9asFpJnVkJj5tMR/SK0mm8Gr
         M5Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SH2Hgvdq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ll8NxpGUhAFCfXoqPWZd6oPKwqUF2yuLTRHXyHfOlY=;
        b=F7rmQGPaUEHVxDW2vceLk0NTMNlHaJhUDMzNYmR6dFC8nip9pwra3OA7fK4n2OT9e/
         WhTO/GlSivcR7ZU/iv6MfZegHnxFDM9KI4XVONx51xXnrffJnMoQ3gJAYxX8dfVEKVeH
         tVstUGR8Ddukb/a2D3fIsxEO9eKEAoX9qzUrdHDZ43lGwRm5wT9FYjxoVvR5G9Bfl0Mk
         WsNQOE+lZB3P2aDFS35B7QBzUI5nJHJhkhFsVFmqpSoq3q/nxAjj2xmunpAb/dMJtM5b
         lcL5cj+JVCM0PZFfQe9+UxW9TccXz5eL+9qQalocntWlEr9a0uxRL4kmrL3n9n5d/Dok
         6suA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ll8NxpGUhAFCfXoqPWZd6oPKwqUF2yuLTRHXyHfOlY=;
        b=rBFYxuhfobgw8Vea1PN5bkylG12J/N+5K8GTvpwcNCtl4IOaCR13zNbqspS6s6GnVg
         BU4M7nvehHpdWjfNzZyFMk3O+szRlvDCpQD32l+Ob1IzuWcJ1ZK+yIsTp5vKM6mATt4D
         dQX5MNwhfxTW6+pFiI5jDOM62zYqO3hQO/B+f66U8yKpM9j5OTxiWwAKgk+JpRN41Ujj
         n/lQWC4/ra0pLhknCltaWcMWpDTTK1CfZJC4oTpy0ZnqLIGnSwckQzad3HpF1ZQ0imBt
         ZHMz430vt7U6X+I2/o31ff2QMC2/wTRTqMLnkeYXoK1V1WopPBvc134aEaYzvAWGfpcn
         tLHQ==
X-Gm-Message-State: ANhLgQ3RBn8c9urCRGhw2GxrlfG6gxMG2u/IOmNFmdcHMRC0TFRFbkzV
	2Ofzok1rEt3XxP0TD6Aov3g=
X-Google-Smtp-Source: ADFU+vuboXtTu1uo6emmbgT14v+J1Sl/BysouUWmYnUfFgOzl71+VjMJBVvQgY6DdOHdkUyIB9KcMQ==
X-Received: by 2002:ad4:4774:: with SMTP id d20mr485297qvx.35.1585090507479;
        Tue, 24 Mar 2020 15:55:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a603:: with SMTP id p3ls2553167qke.6.gmail; Tue, 24 Mar
 2020 15:55:07 -0700 (PDT)
X-Received: by 2002:a37:64c6:: with SMTP id y189mr273982qkb.12.1585090507111;
        Tue, 24 Mar 2020 15:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585090507; cv=none;
        d=google.com; s=arc-20160816;
        b=a3ppQeGrezl7FRNqowVtfDxzPnalVH1SuQpGnJU2/5LI127oj6PPPEfFmcKEpV+MVi
         3rgNugAOyJ6fv+jSkuHg20eFOC1qmGupXlQoWJZZI8T/9418+s4qG1yg7HYQbC/8baZ6
         m1LUV9Ee8srzlAgHtWyuNTgn40/pznnHhij1w/0Ix578/dneoPIcMo8iZG2uBypYae9V
         NbWgvA4hlHGW3A0+eeQ1kIIZdFxlpVzXwSXXrQSuAZowHNs5HlJlAP7IdbxdiCAhTm1b
         ysS2YtOqwpuCxc0TU4sPO9pNNWgj36Hf/n05UBPLyzeM9MnmlEUS66scibMaSUO3+F4m
         ku1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AMqHNZF1N2myGuwlnPoMXAEWhq/lVFwaveJl75tFaGA=;
        b=K/l/voyWIduob4ly201Iu5iaLcMSqq0oxntscy2zzXGIehcmyoyVVPSpA+9crgAjDj
         CNC3rkcuX1glqjnBCrHqAM9mzH65hXHV1isOXl2q1dDIOkMXoGBxaqs6x+CTxP1pP7y3
         vmywMuty7ZR3KYG9RRP25IVrpc527l4txzbc76qZt0EHiq4Ar6t+zQMhaMQDCjRnxUTV
         yoBfO8AQvTeE/gyxuueIaVrU1Rfq/sNT8R9Favy3eWkVtJgw2Xg6Kk7LK+0VzkxHji9U
         3FFdrO6ONlJwBi8MvAGaYL7JOsUXafKiVNDGBxz7jWKqmo5axT3tIRxDFdEJmtqxCajI
         /srw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SH2Hgvdq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t24si1375933qtt.1.2020.03.24.15.55.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 15:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id a32so188718pga.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 15:55:07 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr137742pfk.108.1585090505789;
 Tue, 24 Mar 2020 15:55:05 -0700 (PDT)
MIME-Version: 1.0
References: <M2AyAx0--3-2@kdrag0n.dev> <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
 <202003121636.265F4852B@keescook>
In-Reply-To: <202003121636.265F4852B@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 15:54:53 -0700
Message-ID: <CAKwvOd=R-p0bn7K3cp2X=_jk_MqspEynFtBZOX5YqRZkbNDW1A@mail.gmail.com>
Subject: Re: LLVM Polly optimizations for Android
To: Kees Cook <keescook@chromium.org>
Cc: Danny Lin <danny@kdrag0n.dev>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	android-llvm <android-llvm@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SH2Hgvdq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Mar 12, 2020 at 4:43 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Mar 12, 2020 at 10:27:13AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Wed, Mar 11, 2020 at 4:40 PM Danny Lin <danny@kdrag0n.dev> wrote:
> > > I have a kernel commit that exposes the ones I deemed useful through a Kconfig option: https://github.com/kdrag0n/proton_zf6/commit/00f711eead423
> > > And a prebuilt toolchain with Polly support that can be used for preliminary testing and evaluation: https://github.com/kdrag0n/proton-clang
> >
> > So no new compiler warnings, boot issues, or otherwise noticeable
> > runtime issues? That's impressive, and worth paying attention to.
>
> Neat! This should be very upstreamable into the kernel (though it
> can be updated to actually test, from Kconfig, for the available
> options). I'm sure someone will want to bikeshed the details, but it'd

Did someone say bikeshed? *ears perk up*

> be nice to gain CONFIG_LLVM_POLLY in upstream.
>
> The Kconfig would look like this:
>
> config LLVM_POLLY
>         bool "Enable LLVM's polyhedral loop optimizer (Polly)"
>         depends on $(cc-option,-mllvm -polly)
>         depends on $(cc-option,-mllvm -polly-run-dce)
>         depends on $(cc-option,-mllvm -polly-run-inliner)
>         depends on $(cc-option,-mllvm -polly-opt-fusion=max)
>         depends on $(cc-option,-mllvm -polly-ast-use-context)
>         depends on $(cc-option,-mllvm -polly-detect-keep-going)
>         depends on $(cc-option,-mllvm -polly-vectorizer=stripmine)
>         depends on $(cc-option,-mllvm -polly-invariant-load-hoisting)

Rather than shell out the compiler 8 times, why don't we do it once,
with all 8 specified?  Let's support all or nothing, that way we don't
have to chase compiler bugs for combinations of the above.

>         help
> ...
>
> And then the CONFIG won't even show up in the compiler doesn't support
> it. (Which is the preferred way to doing things now; see
> STACKPROTECTOR_STRONG for example.)
>
> I imagine a commit log would included details on an N=100 hackbench,
> N=9 kernel builds, and probably a "size" output before/after of the
> resulting defconfig-built kernel.
>
> I'm adding polly to my local LLVM builds right now. :)

How were the results?

Do you plan on posting the above as a patch, or were you suggesting
Danny dip their toes into upstream kernel development? ;) Maybe you
could help mentor another padawan?  (Careful, Sith have this weird
thing where the pupil becomes the master and...not suggesting anyone
is Sith, but everytime it seems they've all been eliminated, it turns
out they've just been hiding "in deep space," which is such a cliche.)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DR-p0bn7K3cp2X%3D_jk_MqspEynFtBZOX5YqRZkbNDW1A%40mail.gmail.com.
