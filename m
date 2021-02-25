Return-Path: <clang-built-linux+bncBAABB3UH4CAQMGQEYSWGYMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D463C325750
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:09:19 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 81sf4972208pfv.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:09:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614283758; cv=pass;
        d=google.com; s=arc-20160816;
        b=1LovBmLNym17esjUJvaBufzVVFvh/IoXkN7O2bc80F0kZbErVFVeMsaa9+isqRmfS4
         RXwO9O7fIokShg9ZlLO2uIsVGeQN34+AHFFICfAVoy1XhyFbLsCygGBUC5iWwcFsOlU/
         vtnsW0dkJEU8S4sFqnC966i0qPaAoaZxVA0AxcGilJuWkl2VEbkRqDrrHoH7WbOkwUAh
         EJb7h0eczquyg3KKtPdKrHS+bWyFwxBRn5SJt3m19fDdWvBtPaIGKa5prgkc5MI5+NWO
         nBFjHXMk5Z4S8rgqFrFdDBnVFqQHCMzNSJb6KWctKJe+vgIycd0rLOpKMByMG2JAhPuY
         vn6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CjXlsXHNxRMYSwkHiryrVSzCsuTP86P9VfbaOFqCLlw=;
        b=RP1XGOOE7JNnQJrN4TM1T9OXAKxfjcYvKSamRPbM7FkhTcV3LjnsPwcCVMEJ5RFEZS
         Ou/ZpK9PqyPZghWgU4eP8ulVWn17roV5jwq8curIPZGBsI0JN9G6cHg5nwAOKO2FINv3
         vSa96P67GJJWtG6+CN8yxIL3FTM3FWIg1n75y2tzXDq0z0lsgbbqFKWvo5Tu+Uzg0H3x
         ayLXyeup5k1w7vlYSmm9ZPhwn/Vdq/67Q4KXixZbDkDuSIIMB8nsmVduz8hM/Os0qVwL
         x1idXIkj6fbhCLuKfFUaeQt4HB0ljp1KvV1ari/pcuchLBVOZ4fTN2/+g0SgO0VDLEu8
         cHkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HB+M50wR;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjXlsXHNxRMYSwkHiryrVSzCsuTP86P9VfbaOFqCLlw=;
        b=sO/tEayXZRZDTNO4CerWSOvzdk+LMnTrUxasFiZAGJNLoiKrCw3CQ8KY1AaqzNuMIt
         viseltNLLD1XqwxFWxiW6/NIDw61GENT+7SyhJCRi4rmihK6jWEDM5oiQaCmG9ukhRwR
         xPkN0fPkwtZ+GxSCr1RZ1qNDvn1mIgl3q78+EjfxwgmO1gDLXVi+apFQwBpGv9P5CM59
         BzL/eJ3rPWlKPP2yOstgU5rJ4Semf8xiTGVZtBGQUd/QibPjCO8GP8ygqt+CE2NFtV1i
         KBuBpD6UHkd2h5+ekEd0sph9Gau6GYElqAa9sAfvMmZAPWd8o1F7vXrCBMxf1adUct1D
         JwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjXlsXHNxRMYSwkHiryrVSzCsuTP86P9VfbaOFqCLlw=;
        b=sY5SoYJLUn46s7QVDyBeaW5qkQvhI2KxF2rX6p1e5cjAPMIL6W3G/PNANSRWeG+v+5
         o/t5FP0tf/HCNQ2HIwsIpW18e/lUDCemEGju7bvcjf7yXThqC5nxRjqvcCEf6zJI+F6N
         XJivIgo5YCtPOw+o6YAwClj9OuZtTkTbtrEyDQmDFqKg1Uv0+lPR405cQq+ozw5SdHSd
         kWhGaeO868FUn0dwkQp+Oq7ImfhHfagUFvGGsHrNBf1FYJVTMRde5yl0TKWVfjxbLbuT
         oRDurKwZ7Xhoy/6HTzP/bsYEvEF16xq+Kd+yVmqtH86k8hc5MHaDyYQHaXCaa9CzmzXk
         DI/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BUK6CXrREeeSY8zmaB/2Hy2QF7VLA0DQ1bfq7fwTf0dItR3iP
	DvApf6kyujDkmtkJlOKxqag=
X-Google-Smtp-Source: ABdhPJyCcC9aKaXh2L+eDA2vn9XLBd1O+XT5DjoRpuvWAaH4fdLXN/ps5BazGkpJnFHW0PSQ3hDs9g==
X-Received: by 2002:a63:505d:: with SMTP id q29mr4438403pgl.218.1614283758317;
        Thu, 25 Feb 2021 12:09:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:78a:: with SMTP id 132ls2605357pgh.4.gmail; Thu, 25 Feb
 2021 12:09:17 -0800 (PST)
X-Received: by 2002:a63:194c:: with SMTP id 12mr4544531pgz.198.1614283757787;
        Thu, 25 Feb 2021 12:09:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614283757; cv=none;
        d=google.com; s=arc-20160816;
        b=VWhtaDlaVKEGRpOJNuHgUMGyOVr8/mzz5WuKdQ6Bitt67edcT1qPVxDHXpt55dIqgl
         5upqyhUiIBL1lQvwpj8kuqvyCDfH/qhglTjMDZbq1eOMLCDlzMamJGoJVCsryWN2ws/I
         WutNUtQCOaMkE2tb3FzkRUE085t5UDCExH29K6VZK7iUKQ/voA4pEJq2/e03Xbp5OIhR
         nbijkkS1nY2oGeCulZl6SElj/8qyjNeV01aWYeQJWsrUlkz0471AAxf4POkJfpo8KwCc
         DKTRfFVYLSlHU69iZ22C0881CnHOlkoFgHE7Eb226l88hRma+TDearsFQzFwr/seXwMv
         v5sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RjeINcz/Rd536f/bo6FhqRgVRcp3IkVrBQtAQ7gr6Qc=;
        b=gEfXBPcrpQ1moVn8Qcuxv/5QfsO9hYaS1IoZ6xyOFCa4D/rK6vaai1JNPJ9lVVorJ7
         lOKoDMFVLBih9DqbJKPKz2AtWfAi4A3psrF6TabCNSgZlyd56VCGxpWeIqKWzVLkRCFw
         UIhFcv2BzDbX6S09jayJDnrtZCbyl+nfqb8itgutsfw8dVgzdWAlqhl+o2hQqZEkBesY
         oRojyc+Ahi2mmAQx2UswwI6CET11zvsxnHyW0jV/QPnAW3Qt822DTyWZzaxlt5A/bfvd
         LQobJ2FFtVDp/Tk+FB54kgIAeYngVnB41uUBh24KLOWizzGD682c1apTdSccEyUhD19M
         JVCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HB+M50wR;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si308314pjl.3.2021.02.25.12.09.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:09:17 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2321664F2C
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 20:09:17 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id c16so6976651otp.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 12:09:17 -0800 (PST)
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr3778751otq.251.1614283756180;
 Thu, 25 Feb 2021 12:09:16 -0800 (PST)
MIME-Version: 1.0
References: <20210225094324.3542511-1-arnd@kernel.org> <20210225164522.GA3554437@xps15>
In-Reply-To: <20210225164522.GA3554437@xps15>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 21:08:58 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3nnPKOcVUN=wUBrPDAQh3E4P8ApC_D+37H8W-DZTn_xw@mail.gmail.com>
Message-ID: <CAK8P3a3nnPKOcVUN=wUBrPDAQh3E4P8ApC_D+37H8W-DZTn_xw@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: work around clang-12+ build failure
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HB+M50wR;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 5:45 PM Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
> On Thu, Feb 25, 2021 at 10:42:58AM +0100, Arnd Bergmann wrote:
> > index 15016f757828..4cccf874a602 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-core.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-core.c
> > @@ -691,13 +691,13 @@ static void etm4_disable_hw(void *info)
> >                       "timeout while waiting for PM stable Trace Status\n");
> >
> >       /* read the status of the single shot comparators */
> > -     for (i = 0; i < drvdata->nr_ss_cmp; i++) {
> > +     for (i = 0; i < min_t(u32, drvdata->nr_ss_cmp, ETM_MAX_SS_CMP); i++) {
> >               config->ss_status[i] =
> >                       etm4x_relaxed_read32(csa, TRCSSCSRn(i));
> >       }
> >
> >       /* read back the current counter values */
> > -     for (i = 0; i < drvdata->nr_cntr; i++) {
> > +     for (i = 0; i < min_t(u32, drvdata->nr_cntr, ETMv4_MAX_CNTR); i++) {
>
> This patch will work and I'd be happy to apply it if this was the only instance,
> but there are dozens of places in the coresight drivers where such patterns are
> used.  Why are those not flagged as well?  And shouldn't the real fix be with
> clang?

This is the only one I see in randconfig build tests. In fact I only actually
see the second one of the two causing problems, but it seemed silly
to change only one of them. I had not noticed the other similar
loops that use etm4x_read32() instead of etm4x_relaxed_read32().

I first suspected that the memory clobber in  __iormb() prevents the
compiler from running into the same problem there, but changing all
etm4x_read32() to etm4x_relaxed_read32() did not make it show up
in other places either.

While I expect this will be fixed in mainline clang, the workaround should
be harmless and let us use the existing releases as well.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3nnPKOcVUN%3DwUBrPDAQh3E4P8ApC_D%2B37H8W-DZTn_xw%40mail.gmail.com.
