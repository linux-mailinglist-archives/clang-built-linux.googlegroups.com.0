Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY6AR75QKGQE2SFSIRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7368426E810
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 00:17:09 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id t4sf2425701qvr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 15:17:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600381028; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0IK995AKzmW7bZcB00XYtfJBrTU9rJobzJ6lGbUjFhJIhF1fnjTsepCvhJFiboTsC
         RLaGuL0Asoi6DC1QFUYb43aDNyFVGNJVIY7a/RyawPAYn/SfFUsEeot3/tCENhEJnbmV
         mNTcA4FQnZxx2649tY+zm4UA9bOTtsYupRV/mj9bq9UaVHwtb+AlplxImF7LaDf/T9fG
         mA4rG/l1fsWFUZEH5Za81//6Asx8DbTkPPIdW5NTbOdc1KcH4HomqCCciFViUvMdiUb4
         dIRKWIbPdHB7DgZmGlLmqxYFWC7XNqkB1KSxuj/KwlaOAn238xduO0EAEvGlNv2ollUi
         1IxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KzQ1JnVGhfhIgYULu9Z4/CtTmX93ENIsWKk4GutXDGo=;
        b=m+av8/WEXbDyQF8NkQeQ5GnA2AjWLOiBKzSzqCtY94mSZP/qtvCCs4DpXEtFHeeQ7J
         Wk9NhCUM1WHzkalnVbYhp1G7TyGQn00ve3T5dV0g8NOA16ia5C5ubSAXJsBuzDlB57Qm
         6rsYVrVv+iQlrHIuOjBbW47LpgN6GY+GoDZmGSaf7zHWTnEmZDefsfoVuRPAUjRcxzY4
         EdILLFd7tcrfVQk3MQwdlcTotBnZ+2x/CX8VuRp1J1Fl7OzJZ4Iar1KIg7ETVtJx94Gv
         rcR/qaQNOfmfwGGxqaT8NGWVcH1F3ER+2nLUTdc5xfPDj9xduwSU74ewmeOLJIEFmhok
         QF6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HbZxUoaq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KzQ1JnVGhfhIgYULu9Z4/CtTmX93ENIsWKk4GutXDGo=;
        b=Of1TB6jmD1bzYuMWG2dDtoSaC9Un6nfdOEyqze91MwyIyG47pxrENNbWLBX+xofe6W
         RcUQZEuym7zGyvOYbQHog48H61WYeVtfWGzu1JsHf2RQ9gNwwLUuHYQrHiZQhKhgD2Eq
         qOyor+gfUQ1Rng6+oT/rHY/6acE2e6yQtsk31k+ZQAt5e9z9k36OOQads/Mkj5o/ZFwi
         QPM8Mfr7Oc7IX51qoqWFPD2cZSFKtPKdERGJ48OsbeZ8JPu/67u5rdFPQZ0HaTwGhGwG
         6tOYB+Kv2Pidtdp3Z6JOCnds7snKx7FlK+PHHg/DwosGsnZUC47mEs22O3V3LYF9N7q9
         5g0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KzQ1JnVGhfhIgYULu9Z4/CtTmX93ENIsWKk4GutXDGo=;
        b=uDLr8GEwHs9zFl/a0TeTDr64CeJA49tOoBptIjhQQJvkN6PpNnhErK5YkcNBBpsTIL
         Y/btoEg0J2bJHOrLOe3SPiu5TOywsNBwhlH6X1xSSsGBpiTKJZn7ZAnZT9rAoiIsssOl
         XEKpzUQwlbNatJKScIW+DBPYmxBC9R5wG4cYi73XvrvxAQnisy/s4VPf/QPBS+nrTgev
         m/C4pfyMo6G/kWOAdavbKxJwzuJmsJUwFT/adYEyDR8vdydA38t9P6Xl6ggjX7IP1k2P
         KtxA/NzYC5LaKHRDQGH7e3hNqeuy0mtJLaBbH0RNdz8U7PsufDqJWXQAPlu5KgA8zwRF
         H8gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XPMW3okXh4kuxP51aXR0q5UJu1QsoQ3DB3kDmK3Y0dTfm7K7s
	O/M9UYvQs9oPilLQPXz6sqc=
X-Google-Smtp-Source: ABdhPJyutewd/fpPp6lwx7zAWeJdfgcc98zoAZ4Qq2dW69IFa99Mea3DM54CMNyzWOMTij2xoBTSaQ==
X-Received: by 2002:a37:71c6:: with SMTP id m189mr31089929qkc.327.1600381028047;
        Thu, 17 Sep 2020 15:17:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1a02:: with SMTP id v2ls1483303qtj.2.gmail; Thu, 17 Sep
 2020 15:17:07 -0700 (PDT)
X-Received: by 2002:ac8:5d14:: with SMTP id f20mr30415823qtx.104.1600381027368;
        Thu, 17 Sep 2020 15:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600381027; cv=none;
        d=google.com; s=arc-20160816;
        b=fbI9U5E3INIX5xNG2gmvq8LNrInYMg7TjfRWCB/gUvwG4ChXxbCd7WbfMzCf5lv9BB
         e5bTtGnrQ6AFUd3iXynNrzVuDyo7cimNhYs3NDxT79sTH3sfg0eo5loP/XXYqa8+Hk35
         dGnxgK39n23bPfF4QCGbpK4cEK3IXgWtpA8EusdY/w1sXq1DoqgiAabu+en+ZXy2GJiG
         Gb9pFSc9xokzFTZ2ijxgiWE8b19GbcBaI6ljV9NqVe72Y1RQY5vSW/aX+FAEQ2gsskth
         RoFiVHezAtP7teibvEC4geS8rFN9U+v9QhLOkSN2EV90Xp/6KwSmOO4G0KhpOlQ3Ju8u
         uOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=15AUeIGCB8Co4ppPyHutmBPEoR96J0ZC+70DS6d6lEA=;
        b=djto1sKqhn6v2nFptUvJLiVrl7qbwNHDoWeWzkhh8h7eAYQrJjzM9ogr45iPRS23II
         Z/kqjbwaDmmqq1UQn/2o9vTFo7lHfgggiGq8I89QYlqaYEpMmk4x4wQEp2iMeHINS1Wi
         8BmpGfxTCUjHEWnxjVEM2eJ4YXglcE/Cdib/izlMBNX815e2k/32BDgn9ejWyPjN1Lzi
         9Q2OpeIgwLCevZVbUO1An9A0FYRwCSPxiiE+LxVrywKN/vghcJqgIHRGQK9XrCuLwC8L
         Hqaq9VoYkDHrdnKq/4PFuE1Qdl5JEYcy5DjcimXGZvv/aBy09qptiaQMwl0mx9uh3ufe
         Y7DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HbZxUoaq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c40si83648qte.3.2020.09.17.15.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 15:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d19so1891174pld.0
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 15:17:07 -0700 (PDT)
X-Received: by 2002:a17:902:9343:b029:d1:f3e1:c190 with SMTP id g3-20020a1709029343b02900d1f3e1c190mr7793977plp.2.1600381026580;
        Thu, 17 Sep 2020 15:17:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h35sm626057pgl.31.2020.09.17.15.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 15:17:05 -0700 (PDT)
Date: Thu, 17 Sep 2020 15:17:04 -0700
From: Kees Cook <keescook@chromium.org>
To: George Popescu <georgepope@google.com>
Cc: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	ascull@google.com, akpm@linux-foundation.org, dvyukov@google.com,
	elver@google.com, tglx@linutronix.de, arnd@arndb.de
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <202009171516.6543C7649@keescook>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
 <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200915102458.GA1650630@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HbZxUoaq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Tue, Sep 15, 2020 at 10:24:58AM +0000, George Popescu wrote:
> This would mean losing the local-bounds coverage. I tried to  test it without
> local-bounds and with a locally defined array on the stack and it works fine
> (the handler is called and the error reported). For me it feels like
> --array-bounds and --local-bounds are triggered for the same type of
> undefined_behaviours but they are handling them different.

Er, if --array-bounds still works on local arrays, what does
local-bounds actually do? >_> :P If we don't have a reduction in
coverage, yeah, I'm fine to turn that off.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009171516.6543C7649%40keescook.
