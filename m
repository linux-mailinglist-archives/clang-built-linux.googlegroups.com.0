Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQP2UDVQKGQENI3OREQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9594BA288F
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 23:01:53 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id t9sf2729880wrx.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 14:01:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567112513; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/5aQWXYNcBqCkls3l1We1mdN49N1VrtRCC24dwsu1Mvgpiv9GjHGQj2MK8aKALBzk
         pDC0Qx1RQSYFbsq28AIEVdwMYMyE01ZmKXF1Q6rHMneGY1D/PTArY8lGmqQRap32aItr
         qsA87HVVqEQkYRCTZjj9gw7LRayp1wN2x61RfoJ7XLier9z0Kt6cg2pIlBJ68/Cpw0N9
         fou2BXcVJolL0qPgxmxeyzuvL6bItD6HfCGJlAPeyaqwaUzSmushxO+6cA4ssQYUTAZ/
         RN2896gokM7I6ukB99THsdYEW6KIApApz0LiBXrpeUE3W8QAFwZUoaoYUzO3PJh8+ci4
         fNzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9wKMJxOZ0kf18ViGWXdWuLT4kVzphcsWk1JFmj6dLSA=;
        b=0iWdzWdKX1QAsOgjRa/v7CuqGIKdEpQw4POgQs2rWoDJKCfHUdeFYMZKGUSQI1nBjv
         KFMhltcNzDf27HkRH9sAURPlTniCmnyaIkNJD9r6zy0WABFfNPV2xEPFYImgeTE0wrfb
         S7/YVTcvtvlsdo/A/2B7S1+w1nrHmB/jmAfi3iNVE9NM4st2NRXCCMOET7l+1E7/FQRy
         T9FcoIyPsCJvJEXA26UmUSypdFuEdz3ytB7Bg6HpDuJx90k/5ScV3YdixfIi/iyQNHBo
         hKHp987MRm8pJeAGdmB7cv96TUPUzxytFPJ7w7caEWXD1zW1L88fUSAG9nvFU1ewqbr1
         XqVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJK6irA1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9wKMJxOZ0kf18ViGWXdWuLT4kVzphcsWk1JFmj6dLSA=;
        b=qrqCZC/c1WtfI29xLdqCeAqBiwHVvmSZxPKmxhTSk4hlGSN6S/srhbo1V0kE3B2did
         DPntQM00gdOaar1Hw05GngYJwmWNqPej7IbCtCWM9rHJpQ6CIJEVouIcYtFx3Epg03cR
         E4i3Rj9JxlPDQMeO2ZPJ2FDxqDlyVmKtamoVLFlCR2a744s+HucfaxvPJBoOITnNpZeQ
         ELKbLvR4zfBB8kIlJmz+qZLgiTPyJUKe9Rd4/d1G23R8br0e7pABX9eWs5HZOV+Mfsti
         W1rZaOZorzfKRjTYjD6HO22TGFuS8YYKwdSi+Pjmz6lNT2+/lu44QDQ6KLkIpt2hWRKv
         gZZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wKMJxOZ0kf18ViGWXdWuLT4kVzphcsWk1JFmj6dLSA=;
        b=FhjyVyZg3b8IMbM4cKzmUakH6Q0AcNLexjXgawp28d3ERHFO+w99Hza458AhlA0fi7
         PdRxk/m8ZbRNVxU2mu7FtlkYl2FpPJowPKbW2HB4hZKT4rm7arv86ziBxB+OSe3/ePT8
         XPrXq9id7m6LtKR2jBWN4o/i7WTurRXRRFSHmR7eMPkhQ45Hko2nYN5GF530KWyjMaFz
         7xE59kymliUlGHSQSxyy7Ofx0InbdOrMiiY2RuzIcWha0cefPLF+gEeCSQ0KlKrHjxI8
         JQVKIhQmcZX/ZJPlJlEfp7XxrT03+6WNJhqF/gPg2UP7JzxabmyhQnq8mBn7aLWZLQlD
         a21g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wKMJxOZ0kf18ViGWXdWuLT4kVzphcsWk1JFmj6dLSA=;
        b=Sj1LFI6V4DaoXjLKIPhwM/o9/A8pp2vPZ/0Fvz4y0jmfl7WO3PQFBd27dOSkW4KYzg
         jzQaPW158ZaFf2GG+cBc16K/pkS58uZjc43N0tLe3kKf+vhBjnRN/XczeSU7iCIn9blb
         Mjw3z/1/4I3nUQ0ogwx7qsDAd9Rq1dx57EV8VDynFi1/HJvhmC8PLy9XjhznScy7MSP0
         2ZyPCS7rcMawJXNh6xzv2Fsw+Y1tsc4O2eLWn8X05nAsp3xyv471ZupEyin4rHnA85HM
         R3VxLi8EuNDpV9SGcTE7aA8P1oIhbFUlSNGyWFCNIZx3dZ1QkeGLtosVEHk/8Nzaq2Gn
         rwSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVer5xQnPTeghEIgtvD3F0QiliEIW0seGuf4xsZHpPuEcHwaOwL
	drCA8jj/PihctDkoFW+Z/G0=
X-Google-Smtp-Source: APXvYqyFruM7GpUDoNAJxSTIBPdvYrYyo7O2h/e25O8HomVp2J/rlOZxPUooh/47TEfJu5rtxt/UKw==
X-Received: by 2002:adf:f801:: with SMTP id s1mr14432375wrp.320.1567112513292;
        Thu, 29 Aug 2019 14:01:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls1485765wmi.1.gmail; Thu, 29 Aug
 2019 14:01:52 -0700 (PDT)
X-Received: by 2002:a1c:2582:: with SMTP id l124mr14887658wml.153.1567112512759;
        Thu, 29 Aug 2019 14:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567112512; cv=none;
        d=google.com; s=arc-20160816;
        b=i1VWvjdnua3oU62aN8h3RFD4B6GlDkaEYp6nBT3VZa/oygsTPVlDfwO9rRL/ysG8S9
         vftaGHlpDKZLwW6Nnpej4LxSBR6f00al1GQmWQivu1xMbQBpIYMnCz1wlne69chS1vai
         AbiMMybGIWyfghVyf+iYBDCIFMu7XD3VhZyh9NZHR7lNSFA/On+SKcZvObdFMiJ9CUMj
         u9nqbw/FiQCZFftL+zD3hqJsOp7lYzniuXrfWslN86iNhfKziKCKe5JeyqEEKoMz+c3a
         BGfWouJw5xcB3vLbtqRuwCrJlFNSXybsJqMt5e7EzTiYjSvy/zHxXXO2rKpTuEA0JMnx
         1Ehw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZgMiCDsvAhR2S/cT0qUBSbvUO2xWHZnNLYMNHL1KOXk=;
        b=dLxxAdxN1o43FObsvSWnAptnhvAqKLSdwgosBt75vb5hcH8xwY3kon7nY395Za9dDS
         JwaqABlvBup3wjbFD5yLw4fnIqgjHo2S1JwolGJvsb+TeRpdvk/Z2sdgFvRSNEwpaleo
         0H41CrOVeyikdVlncsnnZm0G28rwKBRpDu7q2l59ctB9vXqbLP0JHMsS+f/4r8L1nwDP
         UCcrI4yg9TCD6KzNvrJm5gvqdh46izuFiLPtGrvdPHCTFEevFbVTlFOBJV59yqZqeex3
         c1R9kPzoXBSALql/Ya/2Kiwpp/hnN2q9wmPwpPiEDURSj209B/6xD3nvAl7cuA7Y6ENe
         i0qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJK6irA1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k13si242369wrv.0.2019.08.29.14.01.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 14:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id 10so5102620wmp.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 14:01:52 -0700 (PDT)
X-Received: by 2002:a7b:cf21:: with SMTP id m1mr2380971wmg.150.1567112512410;
 Thu, 29 Aug 2019 14:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190829181231.5920-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190829181231.5920-1-yamada.masahiro@socionext.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 29 Aug 2019 23:01:39 +0200
Message-ID: <CA+icZUX0WvZ9Kfvvkq2Xhgv=kEkmHi7bF8VSONKcXnJx28bKGg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AJK6irA1;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 29, 2019 at 8:13 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Instead of the warning-[123] magic, let's accumulate compiler options
> to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> easier to understand what is going on in this file.
>
> This commit slightly changes the behavior, I think all of which are OK.
>
> [1] Currently, cc-option calls are needlessly evaluated. For example,
>       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
>     needs evaluating only when W=3, but it is actually evaluated for
>     W=1, W=2 as well. With this commit, only relevant cc-option calls
>     will be evaluated. This is a slight optimization.
>
> [2] Currently, unsupported level like W=4 is checked by:
>       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
>     This will no longer be checked, but I do not think it is a big
>     deal.
>
> [3] Currently, 4 Clang warnings (Winitializer-overrides, Wformat,
>     Wsign-compare, Wformat-zero-length) are shown by any of W=1, W=2,
>     and W=3. With this commit, they will be warned only by W=1. I
>     think this is a more correct behavior since each warning belongs
>     to only one group.
>
> For understanding this commit correctly:
>
> We have 3 warning groups, W=1, W=2, and W=3. You may think W=3 has a
> higher level than W=1, but they are actually independent. If you like,
> you can combine them like W=13. To enable all the warnings, you can
> pass W=123. This is shown by 'make help', but it is often missed
> unfortunately. Since we support W= combination, there should not exist
> intersection among the three groups. If we enable Winitializer-overrides
> for W=1, we do not need to for W=2 or W=3. This is why I believe the
> change [3] makes sense.
>
> The documentation says -Winitializer-overrides is enabled by default.
> (https://clang.llvm.org/docs/DiagnosticsReference.html#winitializer-overrides)
> We negate it by passing -Wno-initializer-overrides for the normal
> build, but we do not do that for W=1. This means, W=1 effectively
> enables -Winitializer-overrides by the clang's default. The same for
> the other three. I wonder if this logic needs detailed commenting,
> but I do not want to be bothered any more. I added comments.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> Changes in v2:
>   - Added comments and more commit log
>
>  scripts/Makefile.extrawarn | 105 +++++++++++++++++++------------------
>  1 file changed, 54 insertions(+), 51 deletions(-)
>

Thanks for the v2.

I am impressed by the very informative commit-log.

But... I still miss relevant infos in the "kbuild-docs" aka in
<Documentation/kbuild/kbuild.rst file>

I also was not aware I can combine W=... settings like W=123 (W=132
and W=321 does the same I guess).
In my little world W=3 should include W=1 and W=2.
Such informations I would like to have in kbuild-docs.

BTW, I mixed up kbuild-system with kconfig-system as I normally get in
touch with the 2nd.

Renaming the kbuild-variable is up to you.
I am OK when you want to wait for Arnd's rework of extrawarn compiler options.
I did change it in one of my patches treewide.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX0WvZ9Kfvvkq2Xhgv%3DkEkmHi7bF8VSONKcXnJx28bKGg%40mail.gmail.com.
