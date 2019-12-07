Return-Path: <clang-built-linux+bncBCQNNJELXUCRBYMDV3XQKGQEPGVOXEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B57115BE1
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Dec 2019 11:41:37 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id r2sf4554487wrp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Dec 2019 02:41:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575715297; cv=pass;
        d=google.com; s=arc-20160816;
        b=VFBQJwiJPqWTPKFzFSe/fwusLcjz95MSSy6wpAm5LH6Ugsp28noMxANT6Jhq9nJ1qY
         hbr0s0Bcj1Qnf1ISfsmdzbSnmwLI2nMprk6hHY3ah5MRoAgGFEDK++YaXyoDEeQyZG9m
         dgzPHJfT8ChG//PqPdrkJXJFJcV8ZdORIIdmzyZ9YG7amWpHzdcdi+99ACc1rMPZseeW
         KRTXBylNmaut9lLPtpWM6mPwRep3PhKrBzt46Ph2WJLm6uvMpZgxowLZm9HqKuFf6r1k
         QBUZi72yTvkYov2QidBg/wnAt806AP/vAhac7cy+/RI5gKQDgBlxXigy3KwLUn8trJi2
         O4AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent
         :organization:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=4xrcwBrUqRmvK1jIGfck0SnwnEGlrCRpvPB/6EvOtbg=;
        b=pcv3ZPyPm8wDc2Y7Uq5ANengJlXQqbw19LiIdn1PFAmdR3E53hizLlU+PBxqS9GL9X
         ktHFaaUJuflqwTWrWQzkM7/eNDCT1RBT6BU4rNSC1OJpTn4YEn5XGqTKqDMoVHLrpFql
         EqcmLFbd8znJ4wFSbgZMB90t7uWotG8P7QDJjqSCROh3LL3iKNfN3z2b4TX6zCvDkMAk
         828zZIFXXQbuDk273KkHaVKLzkoJfZu8GcsHp3HjcTTsmaoKUMvXVTTbptl7OE4Rd13i
         CYtuhjZjg5nIu4lsKW3YM7PcX8/Wh5u3PrYmZNwJoO4fRvEr87pq4J87xkLBsth6lYPl
         DZ/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :organization:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4xrcwBrUqRmvK1jIGfck0SnwnEGlrCRpvPB/6EvOtbg=;
        b=NSuHSUvwpGxVODJ+w7MW21WERlrWTSPLdjAR9GZzv1hDr+5uWrN9yzCDqGNYPKJ7ly
         1Lneh8l28++isir49XjkE0p4prxZcziKJDvSNRs3Fszw1FNEy9m3igI7Uv/DzOS9fT2i
         /slEroqkoPmtNhQxJHCE7eTrZxmoPHfBLCqqZUpYj5Htr32Guq6ldb1HlbdPMH6RqAdH
         THGyWmAYANGOEuzECODxbv/YtMZsQODrCO5lP31jVd/KVyhnZxmsrQRIJ+CqvhHmGgQX
         7KkTmWEQGCcKw32viE2uaA6gt1ZwmEdGJo01goi8Q+DdPrE9DeaVyMaOVli5QlH3QfA0
         ajnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:organization:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4xrcwBrUqRmvK1jIGfck0SnwnEGlrCRpvPB/6EvOtbg=;
        b=er/rwkV40dgxPspx70aGeL+5lcQpOYgumFvaxHh8QQ19Cg+9E+mt7imEm6BDdwC0ol
         auQN9p2n1YM0mPCfcXQ+UJ/VIfNdKoUTO3lHxA/wOHyjeubLzwxUrg2CApoiCVr9wM9a
         bTV674qP88cGTIx7iX9kuSKwmh5h1G2k+dRZKxGrpMlIgC5hZx/6oK5h0PS2JoDPuSv4
         91rS4Z3xrbq+bptPD6QzAq6rSxD+BaRv9HfJRIYCMkNr2JXTZPo5VMKuAuy5cSFSW9n2
         FDtJwXPvIJhNVZ711ZE8Hn8xDRFR3Z+BKq4vBb8oDvtm66C+AbsWJSMyDwMZEOA7lfMl
         9gGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8x4JnFXo6o17ufxNwFTC/XGLrDr2VvRLv1jEbGfQkzffjrFwM
	+f/E2oPa4BY3+XhvM8zh+jE=
X-Google-Smtp-Source: APXvYqyyVZW8ppQ5DLornMSX+wCMfaqqcxv4TMrVMMv4bPYNUQMHBxek+Mrx8xV/iu2xa76HDeC6eg==
X-Received: by 2002:adf:f604:: with SMTP id t4mr21505160wrp.33.1575715297188;
        Sat, 07 Dec 2019 02:41:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cb0f:: with SMTP id u15ls1717105wmj.4.canary-gmail; Sat,
 07 Dec 2019 02:41:36 -0800 (PST)
X-Received: by 2002:a1c:2186:: with SMTP id h128mr15523083wmh.14.1575715296700;
        Sat, 07 Dec 2019 02:41:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575715296; cv=none;
        d=google.com; s=arc-20160816;
        b=vOUS015QmCQWoJr1AHEylaj7hqrkYnjBUZ4kS75dQ6BMliGQwSnfvZMEzAXPu2Z1z0
         dX+dDYfk7P7lCWLPbkyKMhDp/becb22uvWoE+9KAvTASdvqPfZNbkC6ZPzbvra7Ws8c3
         up/gT7rPKB2WDPL/S2nZu4HqJ/T42mAU6z5M/FGJcHASMffcdZPmrDJYCgOkRndx26co
         1x/U3mCIE3Ar/Kbh6FelPHFACtmYzfI3l1uvQhGEbzAixHzpk7soNQcSZH1/dZusMc6l
         yxQOzZ3hKiVfVQ4bcyPtv4B2z0H6YHoromB6sOPYaKth+27M0wDdAsR6evrnx9rVHqQM
         hPOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=1aU6kqgEmKX8CFFAuyQTsWU0X/it7u7ZOr0CR75jvhs=;
        b=ZTTWdECVhn/4YIEItWR+KR8evfVpBsU8FiyeeLPpoz84vr8BDuIHFjqXCgvjo9Tr56
         1Nkvqp3GTRfKES/pfQ37PuXpR2Mhaxiycve1ilZm0zsIc3qfoHCmZuOn8H26q+2oQ1MB
         cPVSm2jRnvlIwT5HnUfkIed3quStnvZvKjcacWxd//Km7zdxQPodGYQwGLWGPR+hRthA
         +BtoEofAO1bDJ6Xx0ekdFd0ykNVs+DkstxNkk7LVT+WH46g2eFKcV05aUGNta7DPLm/4
         b92jKvEs9+zfW854QXB6rpiIBZPslnAEorjMyAA6gEOE9LtsG96XnKiJLsNxV8Oh/d6S
         aFXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id p16si682306wre.4.2019.12.07.02.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 07 Dec 2019 02:41:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id A4916283C82
Message-ID: <79cb93108abc1f0a11f41ad3ab02cc5535b3e784.camel@collabora.com>
Subject: Re: [PATCH v2] media: v4l2-device.h: Explicitly compare grpmask to
 zero in v4l2_device_mask_call_all
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Nick Desaulniers
 <ndesaulniers@google.com>
Date: Sat, 07 Dec 2019 07:41:27 -0300
In-Reply-To: <20191105045907.26123-1-natechancellor@gmail.com>
References: <20191024201240.49063-1-natechancellor@gmail.com>
	 <20191105045907.26123-1-natechancellor@gmail.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: ezequiel@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=ezequiel@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

(Adding Hans)

Hi Nathan, Nick,

Thanks for the patch (and the patience).

On Mon, 2019-11-04 at 21:59 -0700, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-constant-compare, several of
> the ivtv drivers warn along the lines of:
> 

Nitpick: s/ivtv/ivtv and cx18

>  drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
>  result of '<<' to a boolean always evaluates to true
>  [-Wtautological-constant-compare]
>                          cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
>                                          ^
>  drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
>  'CX18_HW_GPIO_RESET_CTRL'
>  #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
>                                            ^
>  1 warning generated.
> 
> This is because the shift operation is implicitly converted to a boolean
> in v4l2_device_mask_call_all before being negated. This can be solved by
> just comparing the mask result to 0 explicitly so that there is no
> boolean conversion.
> 

Perhaps it's interesting to mention the reason for this change,
which you mentioned as a comment before:

"""
 The ultimate goal is to get
-Wtautological-compare enabled because there are several subwarnings
that would be helpful to have and right now they are all disabled.
"""

> Link: https://github.com/ClangBuiltLinux/linux/issues/752
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> v1 -> v2: https://lore.kernel.org/lkml/20191024201240.49063-1-natechancellor@gmail.com/
> 
> * Fix typo in commit message
> * Add Nick's Reviewed-by.
> 
>  include/media/v4l2-device.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
> index e0b8f2602670..8564b3227887 100644
> --- a/include/media/v4l2-device.h
> +++ b/include/media/v4l2-device.h
> @@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
>  		struct v4l2_subdev *__sd;				\
>  									\
>  		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
> -			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
> -			##args);					\
> +			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
> +			f , ##args);					\
>  	} while (0)
>  
>  /**

The change is small enough and if it helps enabling helpful
warnings, then it seems a good idea.

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

For consistency, it would be good to also patch the other case(s).

Thanks,
Ezequiel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/79cb93108abc1f0a11f41ad3ab02cc5535b3e784.camel%40collabora.com.
