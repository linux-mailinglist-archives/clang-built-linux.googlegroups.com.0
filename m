Return-Path: <clang-built-linux+bncBCQYFH77QIORBT5YXP4AKGQEII2GFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-f185.google.com (mail-pl1-f185.google.com [209.85.214.185])
	by mail.lfdr.de (Postfix) with ESMTPS id CF805220A21
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 12:37:04 +0200 (CEST)
Received: by mail-pl1-f185.google.com with SMTP id d13sf2106727plr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 03:37:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594809423; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Piz2R5AIq1qomy+FFKNv38CqPh9V+giXNUj4QEGio4Y4kBl1dX6qH60W3GZP5W6V0
         Z8Wwz/r1embnONhXqQUH02ghQD3BJNGnL8i9Bs3HXzjc68SEOfy0ESkPv/QRlMyh6LZZ
         itO73k0RMtJHn6RW4HkN5SN9zXzdhLnleIqFWNafYGpKBEw31fKJN974gu1HR3BkqiR9
         gs9Z1Io9o9aMRErm7q/0If+J4JlL3zfsZF98TGRs3oDkZdhPNVpE0fafocuEgxa/m+0W
         3Fxfh+5e1XeKPxUdzuZ4YcruuhWstZsy3I5Cv2zO4eRoOMwp5Ue/PtQ1fJUwCvCrGlJf
         IuIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=/bhpAgN7jE7kjNqBTKAX9wQI14I9vsU0uUX5bgDTzYc=;
        b=VkY7HH4Otp/E9fd6l9EqsVmyiMteNSGrnh4vD0JSGhbCzB/ZSXXpmPSmW4+vW/9Juo
         AFJL28RHa2Wt5D0ey3uwP+MV3hTFMZNisYaxtzj4vIGcLPXDpMtOG//lQk4b/1YXTUHl
         7lDGnm+QeDADloh/ajx15NshiZKNXr+xyNVhFoZlU5kkEWOtDLcQ92JKK5bCbQApjfxZ
         Z6M6jzeaXJx3rvxz/8hUbRaYDZJUgk6zd5NBhhLRZvjRjLeGGAvA3GH+FADTcZ0TQj8c
         t2LvdiM0kgCm29dmwXMxIkV4Nn9VeRsx42ecXsi46WTtDUfi7ydgUkgSdNbXCWRD+r6e
         78EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=RxHzZ7Ek;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/bhpAgN7jE7kjNqBTKAX9wQI14I9vsU0uUX5bgDTzYc=;
        b=PJEJfPiqXBIWVqihdyqIm5n1i+QkT1DXpwuwfL7PFDhi5DsgAlx0XKdPISbApjTEp/
         sVvYdciwqCjkVJ9R0RjD+7JFoVf2DtdIqSw2HNaRnJDWgnohUohGvwASV9wUSlrcwgFy
         uDw8JF3zl1RjsxAVjoBIGVBKuKvK9fPkqyH6uuJv2xdlipLbTN0PuMltXj1fX4JNiAc2
         gV2rOQHqKDfqlJydhWh0bzMjCHzYyOsRLWJvVAJh8qCbGeAmUHjLX2i1DHYCsBK5nTBt
         BALftLNuvRVir1C2eAaSgw/epTLEg0+hQ+UbmxIplOEcSagqW42JdJiUQW76bo0ZSf2p
         ccoQ==
X-Gm-Message-State: AOAM532PhLKPLLrH5BaRBGiSyodGRfoZyHj9pfVvYagJ8DPcjH5xgb/r
	MsQZwdVcVhkGMXI0rGArc+A=
X-Google-Smtp-Source: ABdhPJzUwBarZC6Vt/VmlQZi6J/xnD4iEpCnzmFkGlAkCUMXZ0OFFDvDyrmGUzhWDRrgJ753Vogj1w==
X-Received: by 2002:a63:f1a:: with SMTP id e26mr7697025pgl.80.1594809423210;
        Wed, 15 Jul 2020 03:37:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9798:: with SMTP id o24ls617658pfp.0.gmail; Wed, 15 Jul
 2020 03:37:02 -0700 (PDT)
X-Received: by 2002:a62:3744:: with SMTP id e65mr8660927pfa.20.1594809422759;
        Wed, 15 Jul 2020 03:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594809422; cv=none;
        d=google.com; s=arc-20160816;
        b=pSCHpdkWufXNs8WcZAxRDSK2i3kGuZIa37wtt1TqKG98dkLCzt8VQDyyZzKsM/sizG
         3oSkP1TuZWRwtuSDLv3SXfrEB0kVuCLz7AdGta1JRJkpWrkvkrURduXgPEpW46vBRa2f
         aa/OdXEhc1htMv+ULI6rh7JCycUTySKASw7wK020DHc0j/ja2xe2n8AUME9cE5Sz/Nfq
         8WPsOEzyO6bg/3eriVHg1hVxsl0xxrlzyGKqFux6KukGUrfAXLmTSbsdbkj6Ux7yR6qs
         SEJtPomIOxsGu3h8j29av4cLfT61vSJJZdQS3j66lPKV8UkD+Swjvdlk6HzOPPgK/kQd
         +TiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=pYgx74LtrBLVD12x3ELyZuAqEdnOVxhRlDanXsj1kC8=;
        b=KhGCvIWf4ZqOK6p2usfeSSFXa3WR4YwWJJwtTjq1FXLuEBkyYcCb0Q1+48mSvGHIIq
         eru2IosALxwY5A4uh5ILvbQbT6kGA69R8PNOb5w+7Ao+wICJbPTNJTfSzXXzLGDZmIEA
         CaRhikXsUOErQ3Iif45dvyC0407rzlFlfsE+lrc5MmFL4T55bvHDfpZ1ax/M/byRM/T0
         j2tQN1AqGP3xsW+p+0qxpHbRdjk/CE3jCDwGfRNQylcY0tVSWDDUn8ta9AVY24/knveU
         DQ+w/OJR2O3OQCGpledyzc1KHFwB7A2eYStj8aoEOg3oeArUvOdGKOFf6jH2A1c+6yh2
         I29Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=RxHzZ7Ek;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info. [104.130.122.29])
        by gmr-mx.google.com with UTF8SMTPS id g22si37739plq.1.2020.07.15.03.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 03:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) client-ip=104.130.122.29;
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n18.prod.us-west-2.postgun.com with SMTP id
 5f0edc4d75eeb235f66abd67 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 15 Jul 2020 10:37:01
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 49464C433B6; Wed, 15 Jul 2020 10:37:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
	MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 639D1C433CA;
	Wed, 15 Jul 2020 10:36:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 639D1C433CA
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH v2 04/16] b43: Remove uninitialized_var() usage
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200620033007.1444705-5-keescook@chromium.org>
References: <20200620033007.1444705-5-keescook@chromium.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>,
 Andy Whitcroft <apw@canonical.com>, x86@kernel.org,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 b43-dev@lists.infradead.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mm@kvack.org,
 clang-built-linux@googlegroups.com
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200715103701.49464C433B6@smtp.codeaurora.org>
Date: Wed, 15 Jul 2020 10:37:01 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=RxHzZ7Ek;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Kees Cook <keescook@chromium.org> wrote:

> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL.
> No later NULL deref is possible due to the early returns outside of the
> (phy->rev >= 7 && phy->rev < 19) case, which explicitly tests for NULL.
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Fixes: 58619b14d106 ("b43: move under broadcom vendor directory")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

2 patches applied to wireless-drivers-next.git, thanks.

800e7a205a0f b43: Remove uninitialized_var() usage
f8279dad4e36 rtlwifi: rtl8192cu: Remove uninitialized_var() usage

-- 
https://patchwork.kernel.org/patch/11615573/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715103701.49464C433B6%40smtp.codeaurora.org.
