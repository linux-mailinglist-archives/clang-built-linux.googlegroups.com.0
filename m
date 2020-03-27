Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUPO6XZQKGQE4LT426I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B651194FCC
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 04:47:30 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id d26sf7075594qtr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:47:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585280849; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSdEtCSoB93UFgswW/xTQJhpUt6pEdahmn3yUoINcR9z6DetIQIk2pTY2M2Crsm7T9
         6tJ6rcug02t5R/bhx7YpiipKsm9KTAb/u7aW6gCQKpDc4vjAjR6d8t1Yu/n4ate9ipLC
         oElixaS6uUkbrZv/xlu7Fvdin5WQZRY+ztbLPdWE5EwS/+rR14Gc1GaldHTptlVzMiQg
         CK3e4eOwP78mcLN/9aNsFwCH6D2JDm1vVmrpLq7oIMwlnHhTWQ0Ze3ABmHApP3/eayLD
         p31tWa3Tj+MaNOZfYPDpO8Sl/oy4QQLmIt2icPG295Dfou2612ugn0JMtB1s8M74SjXE
         t38A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mB999gKrqOC6zkOw3nTZGwdAZnV+1sa1FPEVe+k/mNs=;
        b=0IeuRfWaomlqARy5+oo0VG99UjPoQY9BxnWVCT87XohkNHAzEc/aMp6gT+iZpw0p35
         2UA/X96L6on6UymIn2CFzAnJwA4sOB76y/9dreueiE//vYXWFTy+VCdTAuYJdd4FkCxZ
         4SRSyQ1niEQzoYMCQjPRG6q8eFnRJoMy/ca//36eqq29VVKlHkn5gQs5NgCasSM3puyY
         b+jouLo3t1ge1RztldXRkIWTJelw9/Xm22ehQsxUFTRdrdAyiLstTJoeU4wZHq0f93NL
         rF2wAbT0cqWSM0fP1mPhrNbW+/j5vpPl94Fq3+fj9cq0SjowpZkt8LNcxMvXZsxr4F9b
         R/Pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VzoEpeYB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mB999gKrqOC6zkOw3nTZGwdAZnV+1sa1FPEVe+k/mNs=;
        b=eGyGtI6JNkEOF9QF9x9hsddyaZgO3WYbiyCoRQYNpWIJR4X/d2ybtZ466mcU/Cs84S
         jvOtwyybkdacMYgdlJN9aiMWD03phiAi3pw+nPTeOAj8INkl8DyK/2IgZhF7bsS12oYu
         fUomJC7kzuTd/kAEba5BAVesD486o2dwwsHsr/BKo0WGN1we1QDcZmqWFMsTzYh5IBgC
         gSCQxKj+g4AQY3fl5nnUJ5bjBBkOdOoYOXr7Zywg5vbwRMAXucAUNbMoW/2bth87ydw1
         V8vou6uhF1061NGqYkqW/kteFgGO7y5toAUDBZEdWGPh2zT73S8YuCNh3dyAngfo7m8b
         65mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mB999gKrqOC6zkOw3nTZGwdAZnV+1sa1FPEVe+k/mNs=;
        b=X+oQIyAHSYNkszpGkM0Z3GABtRd7uQYnM58qbRMwyIzafqID1FRE+E7IYSvbZf7xcc
         QhTNVlYFpahFWYL0RBThtGaxHmh89RgUl5tlaPiwCK99a6QGxhfV/3D15A9Gx9ShD4LW
         PuhtvdZH3JsQl8m6VQimAfQPMeQXMIHzBp6GrC3rj3psKTFwwbd4jhLf8b25CYbzGQAX
         evfd3yknT/aNofawjPAMPzB7Y05wIqJL7RzOtB6eOdoEnzDItOGkHZJdtKwT9BTto/RP
         Vex9Ozdcpo59SGcFsvpiw42U6R44HxHOi/2GJHs/ZJvHq7FKjXJUEbJWvA0Yixyklunz
         ye3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1ehVtIv8T/5bb4tJLgGxtRdiKqNYX6UT2rW4y5zGBVKuURNB8C
	JCTPdIwVKI6wv9FYmQVCbww=
X-Google-Smtp-Source: ADFU+vuguvB/AG1/IHE/hJnwWhDEaR13OiWun51HSz6iJ4Odb35kHJbmM7ofBat349Xua2AFcw8WBA==
X-Received: by 2002:ac8:67d2:: with SMTP id r18mr12187658qtp.178.1585280849630;
        Thu, 26 Mar 2020 20:47:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:b48:: with SMTP id m8ls3120607qti.4.gmail; Thu, 26 Mar
 2020 20:47:29 -0700 (PDT)
X-Received: by 2002:ac8:6c5d:: with SMTP id z29mr10519805qtu.176.1585280849278;
        Thu, 26 Mar 2020 20:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585280849; cv=none;
        d=google.com; s=arc-20160816;
        b=doOjlcvr4UsA1YdqD2lUBW75uLQEaqBRHywfPxcv8t4Cpisir82qvT2Nlm8/dcqcB/
         LDqyDbvlmmz4aqwlcQpsmrq65Q6y/x1o0YEqHvTTHW0pU0R1rk5r90r10DQDOezvV0/a
         Z7xbU2o0IKRmUTBqqp1pBHKLBTILS0VAiUOpq2k4FTqAc+p6q0D+gELCbPiQiBwmlttC
         hVLJE7E831LXo8Ig12z03d58TFLELhlORRYLYf7O2amV2p6oCiTm5bPTXQAYMu3nygep
         rHlH3sO1sDRvjdkLcSAkGDcAUi0tbyCOcj22TSaI0U6DiSfq+oTaLxMZWTQeG11bhQ9y
         1M9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tUQvgyt9fZn8xfJxxt4SzV2ArMD+KQYTN88/Sf4mzs4=;
        b=OEih1UF1cdCGw4ATTg4J1kKctHn+MdURqj/APwh7SsrQAMhuzp1e6kv8Eg0rovCcum
         5tBjo/Ad0a7lg9FfMinCGFNUY4ku/IlJqicF0/I7ALPWiWsC5YTf7jbfyf3g6Wbnylye
         vJlj5YExhViLrZUrSQm2qA2a891qTreBOia7oJ4T7L/5ObYFr6HA4gJj9oabS2myUDdI
         v4hk3qwgtg2HdonLJFFJIBGwA9TKlGzwKmfQ3LTY3dzSqJVdCD7td7q/T1avOfr3/B2v
         9+NpNGhYlSwG2ddlwwfKWeAl7Mguv5wumUImmJk/fO1owkhy6cCFwrYEWDNWBqVCAt8d
         l6lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VzoEpeYB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id p11si273645qkh.3.2020.03.26.20.47.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 20:47:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id q3so3837499pff.13
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 20:47:29 -0700 (PDT)
X-Received: by 2002:a62:7d4e:: with SMTP id y75mr12343003pfc.32.1585280848407;
        Thu, 26 Mar 2020 20:47:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 66sm2973991pfb.150.2020.03.26.20.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 20:47:27 -0700 (PDT)
Date: Thu, 26 Mar 2020 20:47:26 -0700
From: Kees Cook <keescook@chromium.org>
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: kernelci@groups.io, ndesaulniers@google.com,
	Guillaume Tucker <guillaume.tucker@collabora.com>,
	"kernelci.org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
Message-ID: <202003262045.892E199B0C@keescook>
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
 <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
 <20200326204843.GA24981@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200326204843.GA24981@sirena.org.uk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VzoEpeYB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431
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

On Thu, Mar 26, 2020 at 08:48:43PM +0000, Mark Brown wrote:
> [-- Begin signature information --]
> *BAD* signature from: Mark Brown <broonie@sirena.org.uk>
>                  aka: Mark Brown <broonie@debian.org>
>                  aka: Mark Brown <broonie@kernel.org>
>                  aka: Mark Brown <broonie@tardis.ed.ac.uk>
>                  aka: Mark Brown <broonie@linaro.org>
>                  aka: Mark Brown <Mark.Brown@linaro.org>
> [-- End signature information --]
> 
> [-- The following data is signed --]
> 
> On Thu, Mar 26, 2020 at 11:49:21AM -0700, Nick Desaulniers via Groups.Io wrote:
> [...]
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326204843.GA24981%40sirena.org.uk.
> [-- End of signed data --]

Say, Nick, can we turn off the automatic footer appending on the list?
It's breaking GPG signatures. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003262045.892E199B0C%40keescook.
