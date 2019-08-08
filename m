Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFWUV3VAKGQEHX25LAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 629008597C
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 06:50:31 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id w17sf11173064lff.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 21:50:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565239831; cv=pass;
        d=google.com; s=arc-20160816;
        b=RLy7t5gWf43AFGbWGecusHpVbq7Hq9PBk9EQx0Imr+US5zogR4j0XfkGbpjvjgc1Pg
         k1uvWRTmscrLmqzba817XhnUXaw+vLnSSPtyuBQfQiJnTnR6vevX4mRbUYfQmnUmrfPP
         6/Un02EjjUmT1k8cmfn7UaafhJ9okfGYe+aOpdMJ0H1zAubIx11L2VP3jTVUghWVpFhy
         jQAE7srgQRCxVjSg/F5aOVf9I4wY7fqUZbkmGoul52PVmOfaLY/J+iLVvjlMGP8uvgmD
         IkJ9EM5058vlbOBZzxvxveip81kbk5LnFetAB9YwoDO2DBjaapkjFI6ZDvxOU5KiN5h4
         Gx7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=n9JsY3EYcmQZ2MjaUp+acN+UeZ7eAF2IqWm56qglHeU=;
        b=csf87npeqTglDwlG9HqoWK+/wvii7u4gVxJsZ115J3qe5nuukghIIL/KTdBVzD1Cau
         3kOhghyAMQzazVNVP/Z0611M4Gl6P/HROk2Nt45IchaBa0wS/s+FdZJ/DbImP/YEeXPY
         CR7aBROp6DlJF2//D2Q/aGY1S7m4MeGIWMguECkVk3Kiu2BymxrxYsaS7TfVmsFBlQsE
         VvQKYqbvYBCq4K6vmAK6E1e0jm1KInV0OfRDBX8eX+szzwaYFRsS6DcnzrzZR7HmCt9N
         Iq10DqEdvsDFAsNIJ+PhEhFSCTBjpuy2Kg0PXCwDLVuxIy1F5e+bsE8bFYYzbKof2PNX
         RyYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EnK2WRFC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9JsY3EYcmQZ2MjaUp+acN+UeZ7eAF2IqWm56qglHeU=;
        b=ln+IEEBkHaPljZta2fgVy1j4+CaclhxqaJyTR4+OyzClspMFaaAwY5U51Ff8jyGDUj
         HgxQqRMdv5N50uxkoNOvr8n5vxNFSm+DssjT2Nrii3Z151Ouhwad/v/chDymxq/5BzyG
         eFwiykTUD82ujNPX1VCUcZMyyHnPLdLriHfdurNI5CbEqs9/KCk8dRxWeu/IjszOnhEh
         m+DJSxDo2WUJd3ciIcsoBsvNh2baXyHwTvnSngtNC5EJbq4uzEyD7GglM0TYo+6bj2LZ
         ycEuThC5Sitat8a4WI2yu9RSNYF+SWdj2WAmNfN7QmL9fP78owF09HRrgPYh2aAlb4d/
         OhZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9JsY3EYcmQZ2MjaUp+acN+UeZ7eAF2IqWm56qglHeU=;
        b=SERKOcGPaH8E9lLiacwnJ10nm3pdjL/iMG3AYjwPYi361+lw9s4rTyP1aroRCW3hSl
         neNyi/LnjOhpkeyOIyL3wmKzmjpa5hgXPIsprWQmGSJveWqKWxPw+k9r6R1+R3o0WQNQ
         CWJoMKwoLNDvaLPWDIRRDoM2qwMwXnA70gxeR7WBQ84SSM4ZprLc6WGCorHF4WTTWBGx
         pEsB5lCAFn6lr6TUaZLAuUdIh17i+ZFbiYsXwLo1O3+GTkOkh/MWCQ0aC+tGugAKm+eh
         +H3hbPLBxPtjmyPilICJSouq5U4Ny/PFym038Inlkcal1H2IvtvxT6dSY4HcQKvQ2wRV
         mcIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n9JsY3EYcmQZ2MjaUp+acN+UeZ7eAF2IqWm56qglHeU=;
        b=QvTftvWB/t+OFHmahPb8Sjy4r5XxDwRTYjwZZrw4W0qKIWcL8cHb0u9+CSQkGtzKRS
         TzdBoPteIJzJdAo0a6NI22CZ5FfVin6i0LPbsyMD4umTcWt831EftXil4gchcNbAEsyJ
         WXAi8U3aIV2zwaQ3UZmj8sYCz/icm/xLqZs3jGdej4uwHJOclTnQ/Yp+CduyEqH3okGW
         qXE98PQdHUoP/B6I4hZpx9JX1E4AQpZMqyBAYIFDECKMwKiYi21YwQLvznPHThEGKH3k
         vBb8cWcm0ZT2kYm66B/O2/qZiV2xhK6l/eT7RCk39kww2UARzFx6mfelJWyPBwMudZv3
         X7Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVL87GR7fKzEdv6YnN3Adcnc7WUBWvYEeqi3gwWt9PQatfqjFlI
	yOOrpTJ7fr3f2lyCBYYgESs=
X-Google-Smtp-Source: APXvYqziZZrepBnBbiSzlUaZf7//cm+3t2yRCn6Yb8vKssdYq7L/ghS2IdzPsxsxreyw8bhFWP/AWA==
X-Received: by 2002:ac2:5596:: with SMTP id v22mr7689259lfg.132.1565239830956;
        Wed, 07 Aug 2019 21:50:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5213:: with SMTP id a19ls7891130lfl.8.gmail; Wed, 07 Aug
 2019 21:50:30 -0700 (PDT)
X-Received: by 2002:ac2:4351:: with SMTP id o17mr1520558lfl.21.1565239830514;
        Wed, 07 Aug 2019 21:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565239830; cv=none;
        d=google.com; s=arc-20160816;
        b=qcgUlL3jtcL025uo91ApAxuQLqrE7P7jlzz+s59wiXbwQX2BsEwRx1fRKcOwecDHLN
         5aG+tjhaWGX985hEsJ5fnC7G1xx2yW6WsoNHhgBZORTH6fNUYb5R+jxH/GJdIyuOzHWR
         Lg5GoptaW9OGsJyHy8wVVk3wMJsAXvgLeIWppQIRDNSl/nKtgCsgNisi4yuDtRdbqVOG
         kUcsMH9hy8mOgYm7jR3O8vM3QUPpzx1XmlCKp0OqBNh2foL9ulyS2rW8r2W7tVZUwlzr
         t3RYL3zxqpngQ732Avq5WFE9nZ0YTfwn8uzyQH7gyiGHCHhowPsscWDrWzN8VfIEHSh1
         KOBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=c2ctl4XAji46HwbaOhdkmf4zUAn2rV12GD6HMJfhhu0=;
        b=h3j+iRfi1Rf5oS9X6hUp7l9Qqu+cPA0jQCt+jhn8g3c0BnmJGY1DLYxvdPyvMq9Z+2
         YjEIQmGI9s4jiSGKLXA1bLvWqfH9kZD2Atvk8ouWPfyrMfLpaIOLbPHwLX+nBaz/gdlL
         CwDQKs2YRrIiCl4sSKeCjUZPTozUd1/sYueFM0cAwpNZYz3dzKZFcZM/XSyAFo9m7Dh3
         Gc6VHT+qiNR1sKCyCIUtMpvk91Ure5+oi8dCi9wru60JvHLnd2yIKT8lyBh3aUsLdAQv
         18sSQgE04GkZzBG51sAX3WVnpDN5597wW27YtI9W72ulUD+NhaBLw7bpOpHdyoAe+vhr
         BJPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EnK2WRFC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r27si1236033ljn.3.2019.08.07.21.50.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 21:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id u25so987128wmc.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 21:50:30 -0700 (PDT)
X-Received: by 2002:a7b:c8c3:: with SMTP id f3mr1823749wml.124.1565239829705;
        Wed, 07 Aug 2019 21:50:29 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 2sm136472106wrn.29.2019.08.07.21.50.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 21:50:29 -0700 (PDT)
Date: Wed, 7 Aug 2019 21:50:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Cc: will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808045027.GA34150@archlinux-threadripper>
References: <20190808032916.879-1-cai@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190808032916.879-1-cai@lca.pw>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EnK2WRFC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC (and
> Clang) with -Winitializer-overrides),
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VIPT]  = "VIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_PIPT]  = "PIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                          ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice. Since
> arm64 developers are keen to keep the style of initializing a static
> array with a non-zero pattern first, just disable those warnings for
> both GCC and Clang of this file.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>

It's a shame we can't just use one cc-disable-warning statement but
-Woverride-init wasn't added for GCC compatibility until clang 8.0.0
and we don't have an established minimum clang version.

With that said, I applied your patch and I don't see with warning with
W=1 anymore and I see both options get added to the clang command line
with V=1.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Cheers!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808045027.GA34150%40archlinux-threadripper.
