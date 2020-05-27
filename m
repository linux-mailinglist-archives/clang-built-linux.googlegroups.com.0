Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJFSXL3AKGQEZDT56OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52F1E4AB0
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 18:45:26 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id s7sf5424051plp.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:45:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590597925; cv=pass;
        d=google.com; s=arc-20160816;
        b=e0E+jKI1tXFQWHRDEvTyljLEP2M2/1H+jbPPLBlG4SOGsgxS7LNAWhHdzqgxm8dXEg
         lyvqT5ZhZwqz1mPs+THcT9641d2hGjN/n2bQyftdH/GwaJZkQQvcTXWmVnTFpTADFC55
         Oo54oNr5QS9NSaGO/JcTn449SeiXKlkB1zRMvSrpJHPzk1HAUuDCDgNFS0xoSicqrYhu
         P7MoPl8WwdKfa8zSjtugfRN5eCJylPEoIuRrYuPos4SJGUUhSdXeCFJOkPimZMEF/58O
         5vTLl2A5sgUegY5uVA4aE5a9nUOrVsyfBJsL/j+q8NXsf+Pl6deY76LBE6yyV0kPK8OX
         M2rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LdwrOsB5V5pM6vFUYf2zvP/w+7A5jSpb0XH8p7pmEyU=;
        b=pgLMS5zhu0HwPDVU/p79zy1OKb7jDLqQTN6YVwWUoVHOFxYRqEtKsKzuKlBzkyyQn4
         xbAYpKggnEqNpg556qxukljKAQsC39Sep5TdCdIaVMQJFQYAnFGsP3UqXJsqkjKSTt72
         m4H0WqEmemUF8RCyTwnjD+MorfnFeJ0Ng8dfGkeYsCM1awbwISMygXKDgBU7zdV0t6FD
         OLI74qOcGCYVtVQPldo6h1FRDijesg6/1DBpksWhiZz9W4F2Pbj75aIMVGy3bJLPBg7m
         uhd1ukcDoHfoy9npDoxrSu5c4vD3AkUmMkb6JBqLL/sWiLlWQ/QK4InfQW9c9hiK9Gwx
         kg0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p4Ckd5wa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LdwrOsB5V5pM6vFUYf2zvP/w+7A5jSpb0XH8p7pmEyU=;
        b=e6i9/GTZ/Z7lF7P3ptOHASohMehkcK8vK9ThjEs9DezkIXc0gyCJrTU+Rwq1RHH1Zc
         wMn5MPpZryIk7/+kUKysUcYAXwd/bbym/YLs4FOh01YCrCssEPcRmEmDs8BckgWvR8Ho
         8REo5yZupFZoT0iEHLIEERtMwbgscfgMnz8Lb6JMpOIR6zmzIlCaI9grH5h5cxjz3lTt
         jl7fT6pjX9y+do6acbOpuhKeNXvWaWFAochkZBvesw8YdnbvJ8ZVMv77a4FqeYxNcqRG
         0qS+8rawrdQz1eYUW9oIIxw5CgbZ0CtdC/Kvr+CvnI5dmCKoZSSd42U0RWlwjLs4kBwN
         Im/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LdwrOsB5V5pM6vFUYf2zvP/w+7A5jSpb0XH8p7pmEyU=;
        b=u+qaVW02g+0PQXuz+dYfHwKEFuWizoU4wvHf3kKSaUIInL80kLTTqEN57Qbf1JLrjM
         bsLYLmg7RY6gm9yReMx6drUpFmaKBgssDyJlwL6+ASrez6q5k48IVnx0VaTnQAf7Aucu
         r9mhhuym2FfmbUcU3Br5L832KEM0A1B9YSfULT1+PxhKwE5mBTxwAdLr3I19w0uoMFI1
         62qIrLP0l7cEcskXMVz4IZrVCZaAER+/25sCIF8aKf9tEcaDlGGGa82GHQyzst6Ko/Gw
         MGuOXq2RjQpW7mWbN6VInL1gmLRsZZOxaUoH5kvOWJWiz1UUAE8GxBcZ5C8Pv9vaz7Gs
         Ok3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LdwrOsB5V5pM6vFUYf2zvP/w+7A5jSpb0XH8p7pmEyU=;
        b=hoZfCcKj/J5umIb3HKRVZ6/KAWYhk9k2wuEzLAyZZ0KGaKg2wXkUu6HNqNlA2wnFMd
         LpPvuHmaHiW+Xef5cOTnDEcHXeXKPCQ1BvOr0z8MV8Ye8Qpla3wx0L0lmn8usF3MEptt
         +0+lTPeVbqy6BQE0/d02nqOMumbeUh9Gv+CWsvypWHLh5G3lZZw0ywmY43UksvNWpcva
         7uJsYwIJpZLI2hRIy2iTSw02DmPFQUvFRNeqKyVMRNSxeRKAtA+3e7ZYM93JnntA8c0V
         LX7B7oI98YVz+nYANACwERrf2OJ5iihIbRqeSzvKBSkKJKGBLMlnoXoGrr5TreRkj1lm
         cY2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zL1lguvw3BoINoMd4vRV34+VqOncWcqhIheUNvpTJlf1z1mUp
	K8e5UbAM9YCSQZBu+/cLzwY=
X-Google-Smtp-Source: ABdhPJyz7s2/Ke6GcHI3rKSD3ZWVkOOQaOMy0m1qR6/SDsy6doN4X22rbEed+QCMWLkcYSFGR+u3Ow==
X-Received: by 2002:a17:90b:2396:: with SMTP id mr22mr6049730pjb.118.1590597925059;
        Wed, 27 May 2020 09:45:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:920f:: with SMTP id o15ls4834487pgd.11.gmail; Wed, 27
 May 2020 09:45:24 -0700 (PDT)
X-Received: by 2002:a63:1608:: with SMTP id w8mr4862152pgl.232.1590597924611;
        Wed, 27 May 2020 09:45:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590597924; cv=none;
        d=google.com; s=arc-20160816;
        b=vvAiSJxuJndVo650VtBRwuGNXWFkh8cVPK+MD808+rYRJLLJw/T7dbYKPLzikrJVY5
         WYQ2lqCXYdLAldvZ+PwSecE2J+IVvQQoNkEGkSprNiKCMyVVrsrdTkiIoXfqfx4a96wc
         kpMPq0jYRiM8vB3rSx0v+uVcusVlP7ATJVeeG1t9siBfy2dFhOmZ6ArVhv+gnxkLJysE
         AknNRhJJplZ6GvdHWkkCWXXtep3UQ2x1pYiJOzbDtz+aX57UqS/eCBSD6xvjiEg/T8EQ
         9v01xCk/iUU5A9OZaadNAy3GNPVx+/R4YSC1UU/SluNw7Gkzmu8YzljZ9icP1QxF0+01
         nqkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HOBnpx8HZKNA2mYIrdIzHPO79IIq+OTFtfJlgxpJynw=;
        b=C4r4kGaFpH60igmsp2XkH0M40QcBzW0h14gc52oqJ1qB9nyNzhYvEyCj0JqUTlKMzA
         BsxxS6atfJHAPrUxrgqBC0nchETlNbnQ6eslXoLC2FHk/e1OwOJ1G7flx6bN97LIsJ75
         kPiEUOhLWaz8EwIpAY8kKerFxZ8mFkQZju0y3PsstZ3mLSr3GuLpHIG4SUn+6E/u+3My
         K0Kt5OrtRxIClZfcNHO7kQpT+LgmqljPFVhx6k5WDflN4NOBKc4Kp8SG5FBz+IR8CBWf
         f/KbklhohNnYVSKslOO/agM4rjFfu+lJvCBX5f3TWaZKtcbJcQp662Jl/HHkTLqyp/HI
         QluQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p4Ckd5wa;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id e13si337591plq.3.2020.05.27.09.45.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 09:45:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id cx22so1753505pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 09:45:24 -0700 (PDT)
X-Received: by 2002:a17:902:a584:: with SMTP id az4mr6717595plb.201.1590597924251;
        Wed, 27 May 2020 09:45:24 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c12sm3147692pjm.46.2020.05.27.09.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 09:45:23 -0700 (PDT)
Date: Wed, 27 May 2020 09:45:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/7] media: atomisp: Address several clang warnings
Message-ID: <20200527164521.GA1239557@ubuntu-s3-xlarge-x86>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
 <20200527104525.5e6cd93b@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527104525.5e6cd93b@coco.lan>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=p4Ckd5wa;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 27, 2020 at 10:45:25AM +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 27 May 2020 00:11:43 -0700
> Nathan Chancellor <natechancellor@gmail.com> escreveu:
> 
> > Hi all,
> > 
> > This series aims to clean up the code while addressing the majority of
> > clang warnings in this driver, some found by the 0day bot and others
> > found by me.
> > 
> > There are several enum conversion warnings that happen, which I do not
> > really know how to solve without understanding how exactly this driver
> > works. I would appreciate some guidance or a solution. Below are the
> > warnings, sorry for not wrapping them but they would be hard to read
> > otherwise.
> 
> ... 
> > ../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
> > #define CSS_ID(val)     (IA_ ## val)
> ...
> 
> I actually wrote a patch getting rid of this ugly thing:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=atomisp_v3&id=cf6a15543ace1e99364911c0b7a2f6b8f2f43021
> 
> This one was already submitted upstream (not merged yet), but there
> are also lots of other patches on my working tree.

Ah excellent, that makes the warnings a lot more readable. I am still
not sure how to reconcile the differences, it might be easier to just
change the types in the struct to int.

../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
        ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
        ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:47:34: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, IA_CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
        ~                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
5 warnings generated.

> I'll try to apply your patch series on it, once I'll be able to
> fix a bug with mmap support.

It looks like all of them apply to your experimental branch aside from
patch 3, which you handled in a different way.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527164521.GA1239557%40ubuntu-s3-xlarge-x86.
