Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBD4K3H7QKGQE7RTWWXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0993B2EC6AB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 00:17:37 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id k7sf6705743ybm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 15:17:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609975056; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pu2Txgni1w9rgLkPxNEL5ruThtMQXJqdMjQGkPPLqdZFYpFgfQWWWGSTvnAo/ssh6O
         FIcmr1K5Qr0+kNRmvEnJMxXNLNDUUS8YpCX664xzyjODzW1xoAgPi85OwylxJuZezozE
         Nr9X3cGou9TJdrL9kZNqEz9PMBNAyDfsnpHDSG9DM6Wv1Pevg1x6P/gs1JPM31MILQmj
         uwzMdlNq8LKy/wIOXWx94uWpxN1fwFp98HUtWjRsP4mrIqm2vufmSh5fZpGMv0FudAsl
         vg7JdeqCIQ4mSOZnAJQRvPpjJblMZMqp2/nFug61huDQPyUJxq55KTl18aD2oafuRc3Q
         zHRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=K63Ob2GXCsSAzqT3vCmNvowtQ+DWVqa2okSDDDhlrB0=;
        b=seDNVvN9UYzHTQ9IBHncKMu2dXcdoaHzPiigPykM/qyCGQ/REs/OIDlZSjCpg54UIZ
         qwiJqakrhhjnnpxIE8QVBtVrhGFkdn1dR5gd/vr300yda3T/wM0TbYZoDu1Rb/B7AGIK
         ACDHZhWeMwPt+JmN5023r9uQCKIm1rqWOzvL487xM5dIRbnChPHo8nG5ernqAL9dvn2Z
         cxNGTc+YMhv9+pqE2TZGXeLRF4avLF2gzDJgOkTNFKoLIQia7zelBK8d10arW2lXxwjz
         eN3wfOdLGJXK4G2FYqmZ3zgTW6XF4ASR7JyFeL6GwU4q6blW4PH8BAAzDPYkWjAliNRY
         WVTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8pUIx85;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K63Ob2GXCsSAzqT3vCmNvowtQ+DWVqa2okSDDDhlrB0=;
        b=ZTFXTQ6PialaN28UZ25mT/Woa9G6bp48A3/2dZ2DVZvXB+w94482Sk2kruNFVuDzmw
         2MKNZVtyiCCwu9qdBxMCzCTCfYpdTeFKcKelhd5TqbBh/om5HIRRrzLbMWtQlfnWyEPT
         +6Pukbs0yCfBuJtLwuKeaxTVQ1hUnDPs+OzjTK6fUVJ7Ewxnq/MGQwCoGnSKdUZ0Awyy
         TMUWFNE5LsFvoClbyAacxigW8FaU5LUlR+G2Rxoj8lVhvNfEbm4j9YvXzIwSQC7vFPPl
         RPkgpzBUVtevsKwhXOp5H5FfgfUjSjR9V4gfEyv/pkzt7FUOxAW1laMoe4VVELKEQNeq
         Wj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K63Ob2GXCsSAzqT3vCmNvowtQ+DWVqa2okSDDDhlrB0=;
        b=RuZj42JDUb+rMisAgu2Tq0dULF5q2ABijdq1jYwaXR/vb/sMySPe5NcZmpbL14fJuo
         WFiJ9L3CIpnfHB09+ti0F3dwF0GagTdQdZus5Iba83Sg/k333OJznnaHW5r40CzWqrB5
         EMCD/i8pN8Ipgg8XIpqONg2TXxDD+z2oqxOwQvhM4O+ZCefUzj7vujLHaz80ssNgBEwP
         IXl2w137MU7loy69GjhyIaSLwhYvuNs4c7xIj2/mu6c6zUM1r72rORkgudKUQI8+UwWV
         cMmBzE3Ke2YvzBQ2YU9XEvpaJeINbxe2uBrxJFcuvGYyIDGqpbUmV55eewsKg3CNf4+M
         Y/jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lzZidv0suJux3FxJiGAWRFG1s5vwk7YFMMYX7GngaReWz11lB
	aLKZIu4P3ZQ2bPyWbq+5Wg4=
X-Google-Smtp-Source: ABdhPJy0bgrfnnjxi+WdymZk9+v6mrKDH9iJWTv4Z/5cNFnmyl8QXx1Ti092saP7NDH6aqG/yPHufw==
X-Received: by 2002:a5b:54a:: with SMTP id r10mr9551239ybp.250.1609975055975;
        Wed, 06 Jan 2021 15:17:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:946:: with SMTP id u6ls2648948ybm.1.gmail; Wed, 06 Jan
 2021 15:17:35 -0800 (PST)
X-Received: by 2002:a25:4049:: with SMTP id n70mr9496356yba.472.1609975055553;
        Wed, 06 Jan 2021 15:17:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609975055; cv=none;
        d=google.com; s=arc-20160816;
        b=U+REGZPye2exB4AVgWvypQ6q27GRFZyjsgbw36Jk3ylBb8yA3IEyk4Ip8Jnb/Qyfz3
         K+WWIBsHzofE8vKWACPZru/w8/rVVZNHbtiQ2xB+BoSZt6ewMdkd8vipP6z4DQZqiMme
         VxEJWer9tPvxH+RBf6Si8Lh7a3jigqJNGmNy56h6/74GDXaplS7I10hz6h6JVkaNPC/U
         emVUHj7+KxzoG2Pe/99QodHpwXFYhAWUIX4yjvGwUKrRxV+7V71zi0dGIuOWy7SfxfjO
         EeqeNS0/LJdsAxD8eFIxgsz2cMBSRU+2LfX17rfqXurf/0yZwxM1E32TIprO3d2R6rjD
         toHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=J3lGr4YZbk3BlMgDSCib4VSawc9GYX81ZHhsXt4/HtQ=;
        b=u1hnnIcFpOBiu7oHCGX4AitfwuKjzcxEBh/rMT9u/k1wEcjRYxz4hkegFCysTgampe
         fuDMHjnEZ0N3Lh2O30h9jFRnRoes5vY78cMWgP9U3SHaFOADLYu1nrZhFr57TJ/n9wav
         v7HCgFEXrC9+/oYEyGFnc44tdoTXGQiXGrNFfX6RCFGgKKV7tpCV4UFevRIcVKzevLSR
         8ZUYCvua1rFcHXic31cw+w3xnithG/xk7MwMeMMbW0llOefoPgHQ7TkXJndMDHodjCeT
         mmbTFDQym7+YzrHMMc8NUsUQv4yrCPmT2eB+aU+rskKAoFK0+S3swKBFwExQpKzviy2P
         9mWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j8pUIx85;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id 23si367199ybc.0.2021.01.06.15.17.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 15:17:35 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id c12so2589467pfo.10
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 15:17:35 -0800 (PST)
X-Received: by 2002:a05:6a00:a91:b029:19d:9421:847 with SMTP id b17-20020a056a000a91b029019d94210847mr6307899pfl.72.1609975054844;
        Wed, 06 Jan 2021 15:17:34 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q9sm3807528pgb.82.2021.01.06.15.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 15:17:34 -0800 (PST)
Date: Wed, 6 Jan 2021 15:17:33 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <202101061516.F0EA5F0@keescook>
References: <20201230154749.746641-1-arnd@kernel.org>
 <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j8pUIx85;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jan 06, 2021 at 11:12:18PM +0100, Arnd Bergmann wrote:
> On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> > On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > > index 8b635fd75fe4..e23873282ba7 100644
> > > --- a/lib/Kconfig.ubsan
> > > +++ b/lib/Kconfig.ubsan
> > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > >
> > >  config UBSAN_UNSIGNED_OVERFLOW
> > >       bool "Perform checking for unsigned arithmetic overflow"
> > > +     # clang hugely expands stack usage with -fsanitize=object-size
> > > +     depends on !CC_IS_CLANG
> > >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> >
> > Because of Clang implementation issues (see commit c637693b20da), this is
> > already "default n" (and not supported under GCC at all). IIUC, setting
> > this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?
> 
> Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
> dependency would hide it for me, which may be good enough for me.

I thought COMPILE_TEST does not get set for randconfig?

> > Is there some better way to mark this as "known to have issues, please
> > don't include in randconfig?"
> >
> > I'd like to keep it around so people can continue to work out the
> > problems with it, but not have unexpecting folks trip over it. ;)
> 
> I've reverted that patch locally now and default-enabled for randconfigs.
> Now that I have an otherwise clean build, this should provide me
> with a full set of files that produce the warning. If the number is
> small enough, I could try opening individual github issues.

Okay, let me know if something needs changing. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101061516.F0EA5F0%40keescook.
