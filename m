Return-Path: <clang-built-linux+bncBCBZ56EIVYOBB6GXYP3QKGQEBQTYMBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CBA203E1B
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:35:53 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id w142sf6347164lff.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592847353; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+UC6BSY8NkkMUlu7+WbA/bzb5fnDIHLs7QriEM1xTOWNnmzphfDevpv1YO0vlZ0DG
         ZUhOHG5nUSqhQdksv9qdco1i3qX6mQqTd2kqSO482sQkiIw6lly0IlHowfGQt664SE8S
         pxIhdeztMzqoeLJ14RnL5k/7jTorFz5DVHCvr44t39b0nmg0xHg0lle64rugWl+6C+3F
         nLKbURDmiKwZRlEjqaGXyGRH+GNJoLts07mDtnk85LiTwo31losbORDzIyF/3uWXlzZx
         TNbdK9JsqP9bAXnJ7QXw7oE46xnz4CO7QRFYZTEfk7P8Ss8ONrj2NNdPH5rLrtvORgzd
         IHWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Fxxuni+9fA24NehRQIfBNM70hiV7Kjw7TL+wwDrbHhM=;
        b=xn5GBznRDKqyA6eXLYlEcXg966cw2ulwhe7IqUw7xQdLlFHPzADz/Q0ePIVhM5N0L0
         Z0DaSBoIBjOrpD7iLoeTUQWk2ZekkBDI2s0fh430RiZVh32hHE5M0isSgYxrmKJJhS8N
         jaHdEfa3Bl5+GkZNws7/Ak7I8TOOG9gCIAMETPkfYD73NpFo4xXPWGCBvKVg/1WTi9b6
         2NfAB7QKmFZ5AOK0hI/6LGEjr27K5VCR58n1GnvUlnekwYz/U2HO3a4QYb//0FfRFBve
         M+RD+rell1rpRtmqviRKOPgtijfkhjh0U8zoUC6I1IHnKnnls5p3blg7R3zVfcHDAYhe
         pYXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fxxuni+9fA24NehRQIfBNM70hiV7Kjw7TL+wwDrbHhM=;
        b=L+QyKILd/KTgeOMTSGdVpXkbVgzweZytlDfl6X54t3Ee5llncAOVy6AkyXANXS98DK
         Yh2oIOzKvXhQLp/U9J0b3AtUq2jffblMiWBD42mhLuYTzR/ibRuQTDfNnI8zfhw8ELdm
         4Y6T/5e7RFrDlUUOWtCJOnuuaPB1GJhushv8hqx96gzOBNNeERBA8Ko1zZ8ysYYk9Fg4
         28hzFPzcDJT4U3/ZUaGU7kEv2mGOhOIcUvTidZ0cyeMIcKTlaoBtXUbNJUFEMblj6Qn8
         i2ruHDkzu0lFOPyOOhHmfg5vNy+Njr4RuvPLgPXVWrcODQ1M9WrJTzarXrngDnPvw5FB
         /i1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fxxuni+9fA24NehRQIfBNM70hiV7Kjw7TL+wwDrbHhM=;
        b=NI8Tq5OlNApeFHnsWMpUhFV+MAH5ONmwE4VhAlMmuJ1i4GaLh5HuqOODRG6fCJ1KpZ
         W1WWb9ALMLzCxME8DyKrz1fnAS/BNQOTEGu5A8iyZVNpL/pZXoQ2yGCWHVhYGLSybGTB
         dXInhGttkDxHW6x/FHyT20MxwzeQ8qw+bzQJrYqX7ibwoioAvVypy7QefX24bMmfNwQR
         iDC41zoe2IRmGgUWwBwxDKCyq7ojznjEMFJTPJZLPcQYappvfs6Uw7xyvmH3xq/I5OZc
         BnnOnxlt4uNmsaQeVyGNKanuH1RRnw2GfgVgsvBjn9TK7O3I8RG4bjjd7erhvj1pF9w0
         Q5+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KyWl1pyQF8trSmW/XnkXgrjnnXSE0Tizuf7JqPDeq/KAydM/i
	IfBvbnbG61poSvNVnoybfsw=
X-Google-Smtp-Source: ABdhPJx0MJYhAEZIVwTMjYBhEuBVfEHgxeY4VoFyvtIeiO+meQH1SNMDeT8o4ijSndbWRfLGWNVBVg==
X-Received: by 2002:a19:8c09:: with SMTP id o9mr2212350lfd.160.1592847353016;
        Mon, 22 Jun 2020 10:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9597:: with SMTP id w23ls3415999ljh.8.gmail; Mon, 22 Jun
 2020 10:35:52 -0700 (PDT)
X-Received: by 2002:a05:651c:1022:: with SMTP id w2mr9687637ljm.262.1592847352465;
        Mon, 22 Jun 2020 10:35:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592847352; cv=none;
        d=google.com; s=arc-20160816;
        b=HQuZ/AX8GpOd5YAa9pDK5xHdY/by9l9yAObQ9tkJT9fqtGTQxENwvHek3moM/lLbEV
         MM8fUme7cZsLf3iU7jfELxK7gPc3t9IifR2yTsCLvWeK+edaiZCJc4bvicdhPoEAsXzF
         WHtqxBxnWgimscr1amJW3ZnkT0MT+6LbHTcvltHTvIYvtWv7CKdYMWddi6xfaU0XmNvq
         GoIMvAohsygRJNnxMhSXbHSmDA3ll5HLsl3XcWu+A/h0+04MVbnOFmRlripQZPUKG5Cw
         OSXxgp7vtibCJTo/AwbIKxTh2ac40yxVX0qOiudB0FG6DAFm3biW308/oUHwG2aIp7dd
         cDyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=NEKHzf/GL9ZwPfgQXBvYS+yP8VGwUDqvJ8f8kdnEoCA=;
        b=zibMBJi35H/LGf5y7yePzUrg9L4N2ygxnfQIBOXcak1hHWUzRpJKfv1nkwHxjlFm01
         iDG3kS8/6OPCcTJCqXcKHnKOfxrkTf6eO023VMLRnYawdchV68EqRCmvFU0mXCrSInYr
         ebvzj3H62ctZu7qrwaRDbdiaWYLojO5nqPoLHtbj6vMf5neMP4xUHKK8xVf2n63ivGYN
         Qhh4U+NnBnqys7r9gbx3Nhu/ETUefLVv5kmKEdXfK0qBea0wbXBdS8LaiSKXeZ1cP+sE
         RYcGg94GIu1SdGPMTAI2YcPkWxBoNvkQA37o6r9e7CE/eJlrhUlrpKejsyvbdcSxo+Rr
         igoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net. [109.247.116.15])
        by gmr-mx.google.com with ESMTPS id u11si870740lfl.4.2020.06.22.10.35.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:35:52 -0700 (PDT)
Received-SPF: neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) client-ip=109.247.116.15;
Received: from ravnborg.org (unknown [188.228.123.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by asavdk4.altibox.net (Postfix) with ESMTPS id 4A6B4804D8;
	Mon, 22 Jun 2020 19:35:50 +0200 (CEST)
Date: Mon, 22 Jun 2020 19:35:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: kernel test robot <lkp@intel.com>, thierry.reding@gmail.com,
	airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	lkml <linux-kernel@vger.kernel.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: drivers/gpu/drm/panel/panel-samsung-ld9040.c:240:12: warning:
 stack frame size of 8312 bytes in function 'ld9040_prepare'
Message-ID: <20200622173548.GA770766@ravnborg.org>
References: <202006210249.QHly8bQZ%lkp@intel.com>
 <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=G88y7es5 c=1 sm=1 tr=0
	a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
	a=kj9zAlcOel0A:10 a=jUwGT8AIfRSel3yE9RIA:9 a=CjuIK1q_8ugA:10
X-Original-Sender: sam@ravnborg.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.247.116.15 is neither permitted nor denied by best guess
 record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
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

Hi Vladimir

> I really don't get what's the problem here. The listing of
> ld9040_prepare at the given commit and with the given .config is:

The culprint is likely ld9040_brightness_set() that is inlined.

I think we have troubles with

    static u8 const ld9040_gammas[25][22]

I did not look closely but if you can reproduce this is where I think you
should look.

	Sam

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622173548.GA770766%40ravnborg.org.
