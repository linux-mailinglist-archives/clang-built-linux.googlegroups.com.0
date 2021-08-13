Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBQ4X3OEAMGQENUXZY2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F164F3EBCA9
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 21:45:07 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id s1-20020a0565122141b02903bf02f21443sf2981286lfr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 12:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628883907; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHHw3btT7Fe5fmpAS9SlIsrlql1lCWiM7scPqwIEqph2eHK18R2ZaohZVoTlwRGL1n
         P53ziDP+WbkpfSR8ryJ8jyQNW5QYQf6+LjGeQDc2a0uRTWDMlItZPw8OICJ/Z1mudurf
         8DVdnvPjiLwXCar5lCOiHeu2KM3FWCu3Bpk2XQYeK3H5PYKA6wcPOdbjHwhFPszCLjSh
         ripMtkhxgWh6QFjBUMT+habgqK/e90hUg2DjwdevSz0j5e5fj3m1DScWuR1I2sKTJgUO
         yrKxTec4H06jNkm0MxJ9tndHiqL4JmEUHXMztklRjfY/9w6qroHVK/iKOeTqpzEkgCcz
         ROyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=APoBMUGvymA98yKs6THXyE7aejFU3ockb8W/yPev3Yc=;
        b=Uk7AMdF8V/kohyedAN5151CjLGFYcRwVJCCh9pbNW0PB0ODvW37LIma3PqchA8AcUL
         trRDwwadZFVuyQmQ+NAJi/SMD/IkLScotlcXgRM8GzlzLtSrPgJ3vpI0dNWhNShFvUic
         yMWbgFCuynfMT+rV2j6GGTQF2TrCPlOxQW+fwOp5eai7XB+M+WzjkQFWSOdt5aqAXQi9
         XG5V3c8qEC11Hm0qd4KOhEDVrhkWJ3sMWHUUz5gl7+3HThe/1K4atHkBr2nyeuZ0KHfG
         VuXS1iX7VlyDLHD2o0kLbTCOhE5Cg6H/iCQuePrW2fk77ZwoqOQ93J2Gut/+Ncy7WVIz
         Mm6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=S1xvMuBW;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=APoBMUGvymA98yKs6THXyE7aejFU3ockb8W/yPev3Yc=;
        b=SOKIR2lST99QB7Sx5mu22Iq1Wh3yz9JHaxSLLcF5O60E5i0WsVEOJHhUGX9qKvyC7b
         BqDGVkjO+F/YpHe+Hau2/k6klf3wcsqFipRjWvos6O3oGityRG6LQls2yOYbbm6DkW4p
         nq/8gYJOe1LmW8t9Rk+V6haqpB6+Treb4R54JPsiQhwXvWnPTFsAdk8DES0mh9yiD/0L
         exE7nQmqO+Tyk3UAslmhHFl7GC90zScO1oB20n+pIyWtWwUdXvsEXp2gLw8Z3ZzIqLV+
         A9wu9iTp0S6a+q9u3SReiw/7J3WhB+JO2qOcxRgnfLiEpozW6SqKq27ewdcFI7lE89JU
         BdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=APoBMUGvymA98yKs6THXyE7aejFU3ockb8W/yPev3Yc=;
        b=rxQyKdLjbY2zyM9brocqBlwAMhT5gfCSNWsXtqI3W+N6VOGM/nEQd6AXoaEXzqKKQ5
         6BNox9EQeLKvCmFWzZUub6Ihp8X+SlrcdNSwA1AjJ7NxRaZLwp7vrVxqzgFF0XfwJ/TL
         hytNqvXFX3Er26Rf3hYIeTG2Gj5v6kuQ4KtQWEWTF+Tob78mqogEpXYtnR5drOUdjVjF
         m3JC27XcojgWWhyRUEZeLFghh0ZFz58HSEFvW9WFJw6XLXHVKckkmzQha+MJyg3X0Y43
         T1l6s+VcPfH59ZvssPU3Zk/lpeMvpmLys1p2cig14fEQzZQJS0AssUUjp1Es7E5QDVWL
         GghA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rlPeYgZ7Osq/iafk4pKFVpfFdJP3vYFL8C+MPANjRY7BDfLxt
	XX0cratQXS9EViI/JNqR9HQ=
X-Google-Smtp-Source: ABdhPJwcBeui1SmKHla793aW4wCFHlah4oW1ZwpQIVUZyMGOO0VxkQ6Sj5aO5ieasZ/sboS9VTQMEA==
X-Received: by 2002:a05:6512:3486:: with SMTP id v6mr2770533lfr.535.1628883907545;
        Fri, 13 Aug 2021 12:45:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls745336lfa.3.gmail; Fri, 13
 Aug 2021 12:45:06 -0700 (PDT)
X-Received: by 2002:a05:6512:3c9a:: with SMTP id h26mr2756202lfv.300.1628883906583;
        Fri, 13 Aug 2021 12:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628883906; cv=none;
        d=google.com; s=arc-20160816;
        b=RiHWOlKpwx3etmIe83t7vckT8rrxd8IGuNBiUaxChFDw+RAnmBDYx0F6r0Lu+Bn6uV
         MorGC3S8ULa/n52CfHwnsuYbM1OjeFbXURNlK1xqot49AkN416eGv2Rb8mO0GJ19qUa2
         QbZsytpmfHf+ymqHlCeBGDBt4nop27mgV0QWdAjxyBTc2RJIgnhHWivHP1A1Jk+DcEay
         EmHNuNEKEVk3TbZkqv/MJY9JgFL/MlmsD+w7Uz+FtHan8AyQHbbFzreTAZ1DI+GotO3c
         ALEr0H+C+MYlUb2LKUQarGyR7D5hCpIOfaV9K0xfVYTt7TVg0c2Wrwqb/0WtQpkKP6lv
         kqVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=vGxwLQwFO2S7TTjs1yBKTvR75GNMnpeXiG3mZABQ1io=;
        b=hs9oGXAbjO0BqBtxLa5wuHbacgOm4tm1NJ95cusCBY65OePGUWCX7BSv+AggHSf8dN
         sPJ7haFF+oMiqH0cy+sIxmMk1d4lzI6dpzgnx+UP/Hxh6WHOd3a/hB9nVCFnmCSAqo/N
         zH9jSApj+Zm1gpqlY55I4nQrbEyhQ9LUG5YwjP3mVSVFms5/Iztfp3XwAuwiICFxBXcw
         SVGEfstUUN786PVIyhae+KiCRAZN6nupGtcupXPatPi6lhnf7sDTgoWq3GHNUYCP0qf1
         xVXVayIZMP3yFs3BGkO+nVFU2h2hLR0bA6IdZ+D4qQYVcJQx3EXztG9Anmy9PaW1uY0h
         47kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=S1xvMuBW;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id v15si104178lfa.6.2021.08.13.12.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 12:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mEd6u-00ANL4-Up; Fri, 13 Aug 2021 21:44:57 +0200
Message-ID: <6488ed24d2ce0ccb1987c271064e25bc72c30863.camel@sipsolutions.net>
Subject: Re: [PATCH 10/64] lib80211: Use struct_group() for memcpy() region
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton
 <akpm@linux-foundation.org>,  linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
Date: Fri, 13 Aug 2021 21:44:55 +0200
In-Reply-To: <202108130846.EC339BCA@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-11-keescook@chromium.org>
	 <a9c8ae9e05cfe2679cd8a7ef0ab20b66cf38b930.camel@sipsolutions.net>
	 <202108130846.EC339BCA@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=S1xvMuBW;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Fri, 2021-08-13 at 08:49 -0700, Kees Cook wrote:
> 
> Ah! Yes, thanks for pointing this out. During earlier development I split
> the "cross-field write" changes from the "cross-field read" changes, and
> it looks like I missed moving lib80211_crypt_ccmp.c into that portion of
> the series (which I haven't posted nor finished -- it's lower priority
> than fixing the cross-field writes).

Oh, OK. I think all of this patch was cross-field read though.

Anyway, the patch itself is fine, just seems incomplete and somewhat
badly organised :)

johannes


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6488ed24d2ce0ccb1987c271064e25bc72c30863.camel%40sipsolutions.net.
