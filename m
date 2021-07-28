Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBN66QOEAMGQEMEKB6XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EA83D875B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:46:32 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id y18-20020a0568081312b029025c79c4ad56sf940927oiv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:46:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451191; cv=pass;
        d=google.com; s=arc-20160816;
        b=HMetSIRlMtFBVR+oogbA3MAoSnH4j5RyTQ0VDxRXu1x8zp7FtDPGnnEtvoRhNfaxGu
         hBdkF8JrUHVTQit5dx9tIRqhfVxr6foPUYzXcy6+7Oxhg59RHpmv2IdFVuHHaVTrEMQb
         T694Mt+dXYPiKirdMO9HfQgYoAQbPPwNoVtate05LLe8nNHxHX7TK9nbVb71riiPLsbq
         Rm1ulcXreGDwOWfA6ELBYpG3CXHB/aE8VrfuASIhXpTDeDaulXuDjMeGy0nTkMfiuLEi
         huvODbkx3k4l+ftmkzSC3TiJa2C3+4nW1YFCW2aDNg0tOe9G/uvlw3q0rS+kn7aS5JI6
         D5Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bdtuCogTSX9ybjN5SXhwpGWdjzsVKFhOw1DNQVl1rjk=;
        b=BK7Lv139el5Gf+hVU4G1tFtXNr9NKfjVQH7VNB+hleyHNBzA6X1LJpCQD2juhwCh03
         cGCHxqGYsUzRo/i1xwUk6RgXqbVpL7aYkZQ4LqgV50MboF/YJluHsanWmBAs0XY5KKfP
         DdyCRYoJ06U+tsUJxzUM55icyL/kbaFghILahMMV2+g4p/GNcAxZsyEc+on6fMXW4iR4
         yx4KwtPJBG1V1E1vSjg6wekUwD4huA1SR8YKaVEQN+N3DWaY41HbKgER1oE3odYP2ZvZ
         GUPIGnmHgVZWZ30aQBPT/ZbFwE2w1yKo0RKSsF4fRNOjR/TWGdHFOFvHGpZ67zsATpKC
         8IFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DSebIApW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bdtuCogTSX9ybjN5SXhwpGWdjzsVKFhOw1DNQVl1rjk=;
        b=hrfeeXfBFqQ0iojzkzKIkU4QiyJuJchZ5hPX3OBzBNsiTSZATKWt7Oi+8XLp5UmHle
         iLQVZy04XJpC/yqonW5sYxAigZVIZCCivU9wP6JJSeyLaG7lzpCk637Q8kQVmC73oQIY
         vS0A9Evd2vdvhNr6RQPt3Agr8Rq9yWkeACPyYbE17Ymf9nzZm6nEDvPqWsX+P1cCpx4B
         juPZarUMkxPKyurZ+GBGM2SjzbrPtlCKdtk/T4A4ZthUbg5DA7qaLquZ0CB/BAKPnWZG
         VkfnEbXHfCzCNd+j7Z7ujlY9oOxh8ADKABCpjo9I2lZE/S6Uvylt2Vt3tTf0taKIslFX
         1q2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bdtuCogTSX9ybjN5SXhwpGWdjzsVKFhOw1DNQVl1rjk=;
        b=fd8/4rG7X3rFSDkNFHxubp4Lxh+ZsvPWg8uBCUwS80PmqfFBVkpR+Xaj+dvP8q2n4V
         ZDeNdbZBJsn3M14ExNDTSiEji5Hc7hHAJSKtkS2FZrlqxyA4g4jpaTL9Wdu5l8jv0a94
         8/BqfFGyfcmrdJtPM+tYsDNM3kv8ApAO5K1DvLsUYz0YeidnYQ7xBjorj2bQ4Nm0TuSL
         jZg+wFJ0gyWjDLGUmX0cRS4CGHNhp1k4DOR0FRXKcoA52dZRrpyjYAAioegeG4rkuD11
         KJYHdooXMjuIFgbtp0yIWo4GeBuKlCmvDLm//DPHRbeADsltNAtJCiDL5yBFc6v5bpoS
         g/Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RT0d4/3s1ZxmPmkCHZ2UALbZf01FGfG6pMdIzatmk2YFsAzkV
	SJ7AX+FIHciAHGfL3tuhSPA=
X-Google-Smtp-Source: ABdhPJyY3pcrN52thwYrOI2vgRRCbmwf9rmfrtJv9IYHXCKtEuAbQehw7UZ6dQG6utv4qGnkSDBJ9g==
X-Received: by 2002:a05:6830:9c8:: with SMTP id y8mr17983032ott.258.1627451191386;
        Tue, 27 Jul 2021 22:46:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e24f:: with SMTP id c15ls68355oot.8.gmail; Tue, 27 Jul
 2021 22:46:31 -0700 (PDT)
X-Received: by 2002:a4a:98b0:: with SMTP id a45mr16250301ooj.22.1627451191009;
        Tue, 27 Jul 2021 22:46:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451191; cv=none;
        d=google.com; s=arc-20160816;
        b=N+yZBXw2LK6g8dXVu8nVuU02FEDdqvWyWPejHN0KKCdTThGg00c/WSnuQ80+yIbKTv
         xHW0fr8+L/CmJP7UkEUJ/PKlwuvngGmddhVNuwnssl7vZu0Sq+zkBTJnedehUuXE3OGp
         2b1WQKfeDNaBB8k8hiHZMpN960li6RutaN9/iq70jFNCqTP4/lMc+P4N3mplcQ2PF64m
         MiCYGcacol2KpyHGNlzc54Y0XAVLamZ4RaMTCEAJZHiGJRTBfJvxMDWB69ohtX7GzaRf
         M0s1dmirHYyKlaYk1WE/WzV3pYYUtnjI5FvF3jsWb2+P2KxNHxcIYg7xxnCZUclXd0he
         tPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hK+o1fsQWpRuswjy578iceQe0BzKqzeghes+OuupFvg=;
        b=InWzo5hHAN2qex8KdOmMZqq+Az+A76/sffs6KOz2sC695c0DyTmtxU4lX7lmc81kB7
         FvVVdOzUnixvj2xJZ2SQSjZrP7kLWtWvJ/d3krl2Kiar8k3yc26H+aSkZoSYyKx4TCGt
         mzhncBbGO4WO7tZ+0p6L3hswlRqv2G+WWBlWcChFFQiE8jrQQzmvhxlQJp7k56xB/umr
         pcNSsw+Li7Z7J7ruXCESdE3iKR2VjzQJvfJfj6/vKWSFTh+TW5Y1pPw/ah0P3VH2/CSW
         1fsU+z1JOSktVuq3Py2W3KGAURifohD9digBVirmT9KX12TG8Oh5R5e+nAGmbScGu2YH
         pWkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DSebIApW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si496880oij.1.2021.07.27.22.46.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:46:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB34560F00;
	Wed, 28 Jul 2021 05:46:29 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:46:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/64] staging: rtl8723bs: Avoid field-overflowing
 memcpy()
Message-ID: <YQDvM4r2KomO9p+J@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-10-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-10-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=DSebIApW;       spf=pass
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

On Tue, Jul 27, 2021 at 01:58:00PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Adjust memcpy() destination to be the named structure itself, rather than
> the first member, allowing memcpy() to correctly reason about the size.
> 
> "objdump -d" shows no object code changes.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDvM4r2KomO9p%2BJ%40kroah.com.
