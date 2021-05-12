Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBLML56CAMGQEQ5OTAKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 3019337BC45
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 14:10:23 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id g10-20020ab039ca0000b02901f7b6d6a473sf3093461uaw.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 05:10:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620821422; cv=pass;
        d=google.com; s=arc-20160816;
        b=h74fJm3NY0SFaUYfwhb4QjkD+a1DjzCAxHUr4ewsUQbn3c5nYI556mL+ptVag23NjD
         BeGkTUT1Uyl70qvsfNgVblu6UZz1HR/NUV/R1um4dRebvqcq+g0AisviFrYA5qwrRLNy
         v+QHQMnknXSvmnv2rNoUSmGNdvcfijfegfgXAKA5MoJHJllG/B6mYS3d0A+Dy3T1Wvcr
         VMNqtjtN3yJEAApV1mR/Wg1hNAAtstY7MShJR4jUfh5v2u4xrozghs+YXILZZqFSlX2y
         8UzDJRG+r91zcfaewn3A6khiycnZSqgj8VUKw3hdHtaKexIcrjw4xNJ05d+J0f2GQIA7
         m3Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5nZcT5yT2owYG0NGtDCvHQPRPQuHHyMUGrZiBUOQ+t4=;
        b=Z1d5RnZw1DTEcKr1mi1luwGsSII1oy18nmp0NOqr5ur6syVGp9tiyQvBqEb9jHH7at
         lf//XvJO9/jqu43i85K6ziWE8PPISxOyP5mmUKe09/Ae0f51d6huUuKzpP+D54+A+1Sg
         6gtgYxaniPY4iwvg+TJtDeCyPsT2Q3wk6QwCcos6hhdkYkQYFGL/KbbK6NaDAPVeUx2c
         dX2KA1jFRYOkiOQrHqkzYvP8MxwOBPtWbL7rmz5t/9c4gikZ0OUy/yLGlYsccIWEiTcT
         KKf2MyCxoLOQcjNkleJrFkfSEPp18606YWd3g9Y0qNfvXQvum0Wz76zXjqTF7zN5g52k
         orkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kcGZgEDV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5nZcT5yT2owYG0NGtDCvHQPRPQuHHyMUGrZiBUOQ+t4=;
        b=ngd/tqsG/qRcqaa2bvy7asD5MOaZ8/gudALlTtxEJbxQYR2rLiCEa8qd4RlWqz1LpT
         +ml7lCASQkfAg04ay7sKqGmaPwWSMZanmrCWn7R5H8X/l4f58yVNjBhShWTIQqKytw5F
         X9W7hQ3z0GgVj5XsYRyx8vE7ZozWfkVTQx7UYJMqxcZvwThdaOagLvOZ1QRV2B6+5Ghd
         qZYXvQDzCm+7zRZ9A6+DrD6oGx++rvNe8nImyewmjl+YUrpKDmDvBu9LkszC4XcLnaaI
         qLN/PfKmLsCNRPMWbdv8EzsDKr+9tjZCMUUbmy31za0AlFWktu0SMoyjBE34JAwSYi0k
         r7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5nZcT5yT2owYG0NGtDCvHQPRPQuHHyMUGrZiBUOQ+t4=;
        b=cTevJwetYErCeTZQkf5+kQnS/VPTaXEYTVl7mtx3HpinvVkeXi3aw5S1bb+jWAWOEF
         GDRVo0XGGN9nMEWlDrlBoBiNBqxwie4ixu9wAw3xaPvkhVo6NN66d8Bzc4ngvMJ57RD1
         HfuaM7P9VegglZsd1ZB89CK8hOpIUQIJBf8LyhvRKXMuHjWKYrX4Kisu5N48JljzaJ4s
         LaAECwaGNQrB8fJjo86gFs0iJ5/dUf9SZ1ETa/ZrKMnehQ4h/w/bskQgEclQS+RTT6pN
         WLYSZpR/PnJYkNN3DCbx/kQE6rfHCqtvL5TR9p5ZjDsUxeio6vpHUlgbAoc0vh067wTf
         fLSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rZ3leDfLOwMXyURxIyqtu24Q8//cYX7B1L7aqNIgGcYKF6/5L
	BGA7u5D7jOOZjqzEcepsWfA=
X-Google-Smtp-Source: ABdhPJyzemBb51Rt0A2UKV2/t9oZEXBx06wh+QJyANaA5XMHhB/f6e5QdwLnIi8Q5/qUE/GOb0Dq0Q==
X-Received: by 2002:a67:ef5e:: with SMTP id k30mr31184712vsr.22.1620821422093;
        Wed, 12 May 2021 05:10:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:de96:: with SMTP id r22ls525408vsk.7.gmail; Wed, 12 May
 2021 05:10:21 -0700 (PDT)
X-Received: by 2002:a67:324e:: with SMTP id y75mr17751344vsy.26.1620821419557;
        Wed, 12 May 2021 05:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620821419; cv=none;
        d=google.com; s=arc-20160816;
        b=JVNeDiwyqCAucSIldINpGDOdFLuNACev+x+2oUrXA8jcZIJbDC1LblP70qUVKuxa0f
         pge+DW8DSRUMrWq56xJLCyZ5bBIm34itDK3Bm/SWot/eqhTqEQ1YuFIcfSrRFh75Bu+e
         SEyhgRW6Fm6YWD2UTibdfQbeDMk+UsLONMwVFiP13hJF7o61ObyileHCW9msyBSS+QvN
         zAwWk6tRDxI/Fw0TTJP8SOu0gNy1+Nb20dYuvdxecpcgKSH/fKsmOPCKpRrP5+DZ2csP
         h9m76ikiH4Qrv0IM3rttGUkD30WHFuxTe8EnupEpmbAGQ+sVEOwK3I+5xsBQHgXcblA6
         R36Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q4pTR5RD4z0sgaAH+uj4b8ihqbG+ezc/Q4QLMaEC+eM=;
        b=GzXoO39+/FfXoiLMdX9t4xXXKl0x+adsVHNf9XrHjmIvz+6qXjxSv6R2/oNDaubXDj
         yCEKvKWRGMr2X5JT1XYMnf7zzp5JEAtpPPZg48Hs2YIoQH6AONk0s2j/+VTyA711uvIc
         ghvKPgXHj+Ed0DL1dFb8tOn6ZZlqRzFtMDMRrFazB2XOwFHjIHUwGHf78FTxsY9SQ02Q
         V11mIlJy3wP0mHYWW99G8amGV/fK3czWCfgHNiRlRKghEqDU8r8DV3TuJOaP3F3tEBqG
         4WBiR17vNewrrEAM7dnu97y3eFj99B5ggmwTRVUIwJjVi0ncDyoN7JWc5PLbI/hN0Qvv
         zwsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kcGZgEDV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w22si349385vko.5.2021.05.12.05.10.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 05:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E7DC613F9;
	Wed, 12 May 2021 12:10:17 +0000 (UTC)
Date: Wed, 12 May 2021 14:10:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Jian Cai <jiancai@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: Backport of 1139aeb1c521 for all supported stable branches
Message-ID: <YJvFpqMLM1HWbIyQ@kroah.com>
References: <YJmneuxxFWIrqyWN@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YJmneuxxFWIrqyWN@archlinux-ax161>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=kcGZgEDV;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, May 10, 2021 at 02:36:58PM -0700, Nathan Chancellor wrote:
> Hi Greg and Sasha,
> 
> Please find attached backports of commit 1139aeb1c521 ("smp: Fix
> smp_call_function_single_async prototype") upstream, which resolves a
> serious looking clang warning seen across several different builds. It
> has been build tested with gcc and clang for x86_64 defconfig and
> allmodconfig.
> 
> Please let me know if there are any problems.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJvFpqMLM1HWbIyQ%40kroah.com.
