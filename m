Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB47I3XYAKGQEHQ4TETA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B36136053
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 19:44:04 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id u10sf4786963qkk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 10:44:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578595444; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnJ7h87+7uaNCJhaYJ/2E4AGXEGbHjnaWN56fCIukIkXv05Hzz1PP12w7P8+sXzn4P
         1wnk927svShT07yx2AJw2efmWa1DpV9w+SqameI/qUQM0ypnGSaL2H9JzqRDV0NN66vw
         cfvhqSxltYCL6iqQn0sy+zfvFb8h8ImTJ8lR1vX5xgNfQXu+V9mTTtnQ5OYUhoE18LeM
         jtDSEbYtVrkmwYXHmZrwQxk/mcOzUa/bFS4Kxq5SONypPloQoI9tuHRFp+mMnSYfnMks
         mgDi57v4yCVa2fsCcuTTgY/q98T7oQ/tjTDdFk3skvBeE/XYkvjydL0CP22E/rPDEaZ2
         /ogw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ymTWZkSgKKpwqD1qLdjczVD+0pmrlNSxtvSd7eTPDL0=;
        b=hTApQEQsYfnH00IDhzex7su2PK64DTwQwBhA1zcE+/Y92mhs6mxgCQ6Pg2CJu8dksy
         HS/1mB/eMb3hfcS4lOFXrnfkjMYkcdfzz+csXQPUL58OGJ4ax3EYyHExUR0v0KC0P8t3
         ebnL4rTabbcV42fUCjAq2qx4aUZGr3NeO6vSllfywcjXo4zswbYTAkw7tKyQa7zTcg0G
         c1FLcCL5I8uu4gsRM1zm1ODuySURTuUMrR8DNB4+OKwCR+Pg1IkWE+S2Ul0pQBtZXJP3
         Lpylq9cOleFagzR/+ROVPa6RPxJISWZciAMvINZLBOGl7/x20PueweaUWanx4lq2v3oX
         hBdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KH35/ig0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ymTWZkSgKKpwqD1qLdjczVD+0pmrlNSxtvSd7eTPDL0=;
        b=MsEL9p4Viil6manQuOO7IpZmocE+fdCo9r+yttcgfarzHERQsmhIa6JWivDfKoHhlT
         gunFskC2yIL6UkZ/o5DoZnYiRH27VcZdM9TFF/ZffERG1H7pHmR/RN9dh4JHQoCuFpWU
         b2RmfzV1e60JuA5ayk/sBApvPgPJ4v7cLUmwCIbsdCjb1Ihc4CI9X30oKAU2OTXC+8c5
         3Y8BfzNtyI7t8KXsuyC3fdkj5tSrnd8lYmeOavYZcp6yr+xZVEO6lfL/sbtJxfnUOvzU
         5MuPg9SiIPwKKr8CAQVMhNAx+STEIAiDb+d9JehDfZVBwRHK9wIg0Fc9TPVSIbfJJw9D
         n4xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ymTWZkSgKKpwqD1qLdjczVD+0pmrlNSxtvSd7eTPDL0=;
        b=q1HEtd/hhC2ux5QPlHn1M0eC8yvU6LITqXSXAmZSKPOiK5AG5w0pu46TexKBoY/Ncg
         FBh5x8cLPhgZ7A8oV8iT7fJHtbqzS17aDpRs4CKRH/9pO3b1XLD9BZcyCUDVK/KHA+mQ
         rbzxAU/6X1Fre/IBnQitYGKuRRZKznABPvOmer8HLOdxS4AMm6ODlg6FjeYqXaxLMZ6U
         a3TGd5kLLJ+9JuI5lO8mtDHJgQk57iMufP68vDUeJhwfHQuZc7Na61sc19pHAazqRp/Q
         DhQvF7vqu8gKRh9gWbKpH1IH0mBQ3aSUenSBqNHfCAmST3ewwGmBVHCu5+E0nmTVo6a8
         Z40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ymTWZkSgKKpwqD1qLdjczVD+0pmrlNSxtvSd7eTPDL0=;
        b=e2F/eUcHQRXg+IBLLoogaCFixT+dNJYxae+Q7JFq4nelst9JrmhZ8L9Y6c+r9j2dZZ
         0LCkrGtCNAwmOPDux50PX360EWK4U7xAg0vPV3it7ERSK4CIZUtnE+lUr2PjblNtOi7v
         OmPqeNsp9TuKIg69YMA3x5wzAcphpLJ7ygynAayJKHDm5G0qhXc46HwZ1z3nrmFmOwoH
         Y4395HJJ+2G7soa8DuU0vRXx/F+s+H3gbd5hNS3g1yuUEbbCSwL1DUaww69IX6VnTfmD
         uASdZYzA8tJF1HM8qzbO34mFygDvVG+9FD0Px8U4FGJfgeicP6tJlLH+shmdUSBwY2KR
         3y1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU0bDBJ3J2AQsV1nXjAameWXB2pm/E48VpstioGLXdLQxGb8f9
	pcCOdvM2hUYuB04A5M0AMYA=
X-Google-Smtp-Source: APXvYqwYifVmLn9FqnbP9GaQhujG8aCxX40YdfkSzKxagMtJUokHQcajSR2Ve808SRHW8EnyrgD2+A==
X-Received: by 2002:a37:ad17:: with SMTP id f23mr10835570qkm.24.1578595443914;
        Thu, 09 Jan 2020 10:44:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls1150587qka.10.gmail; Thu, 09
 Jan 2020 10:44:03 -0800 (PST)
X-Received: by 2002:ae9:f819:: with SMTP id x25mr10791253qkh.192.1578595443591;
        Thu, 09 Jan 2020 10:44:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578595443; cv=none;
        d=google.com; s=arc-20160816;
        b=RFUJ5VyL2iHqygfnH9kIRL3SxAkl8XnamqM9HqIYOil9Wh1gby8y/upLWupvaeEdla
         fudHfhI1zSeUdRNN0mXN9oVF6bZblsGlitcatLKcd6Udz+MPrUJdl+ZFCZdR1CXQvGnB
         myBwjPwdpQjKXYScpTAEkS9ZAIsxTO3cqSL+cjDFrgp1/3hK319lzjjConGF+bLuDYt3
         6+tM61EI3ZqWXBYzv2VifUIozdhTaSwGf8zqrcQOQY5M58AEUMBgbCEFDJvrSaTuYNes
         5bQycQeg//0/JsbI+KjTEzSZ/POjsIJ6K2R7XcoMkDSRk63IulBvP8a8bGQ/AqjwAK0R
         pxQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x/ELEx1MfLoGSiHORQQ4jrNbqxaItNsvKqvaJBtAs0k=;
        b=DfPTRkJpRj1ZLI6VicgGa2J4Jb5L9s48V+Pg0UwmXnHMIKQ3wAVNpK0STunVARh/1/
         ob6Xyss2xyq494xBA2I1K4Svw7GsQxl8p2gLThe/AA0Rmc73Xe3AjJAPluLMJN/thpxe
         gCLKbvd9P1dHNll1Y8CmEosxnxYU9xJ2pqxiokPK56BmeDEev30JjUCohRyyxM4ngfW3
         Ta3m8TUsETUppdY+xuvPDLvuoLRYwDGQtwxIPyOQEUmNhstIHOqRDc5G9BUDMvkVyP5d
         5wWjLn8pwBAUn3Acw0wlWvRr6i1RpRQPnJZCS2HTMcXiPOt2MPvlsXpPvJU0ohh7ERCc
         zXZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KH35/ig0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i53si369118qte.2.2020.01.09.10.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 10:44:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id l35so1519444pje.3
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 10:44:03 -0800 (PST)
X-Received: by 2002:a17:902:7406:: with SMTP id g6mr13372439pll.103.1578595442577;
        Thu, 09 Jan 2020 10:44:02 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.84])
        by smtp.gmail.com with ESMTPSA id z19sm8165544pfn.49.2020.01.09.10.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2020 10:44:02 -0800 (PST)
Date: Thu, 9 Jan 2020 11:44:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Lakha, Bhawanpreet" <Bhawanpreet.Lakha@amd.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	TCWG Validation <tcwg-validation@linaro.org>,
	Arnd Bergmann <arnd@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	CI Notify <ci_notify@linaro.org>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 64 - Successful!
Message-ID: <20200109184401.GA23228@Ryzen-7-3700X.localdomain>
References: <1328215807.12067.1578548274951.JavaMail.javamailuser@localhost>
 <CAKwvOdm3u6VO5+fw0rDxLQOjgk7U7tHJtPvhV9AEqF0ZTkqYiw@mail.gmail.com>
 <DM6PR12MB42367F181F3371D1CC4495F9F9390@DM6PR12MB4236.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <DM6PR12MB42367F181F3371D1CC4495F9F9390@DM6PR12MB4236.namprd12.prod.outlook.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="KH35/ig0";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 09, 2020 at 06:36:17PM +0000, Lakha, Bhawanpreet wrote:
> [AMD Official Use Only - Internal Distribution Only]
> 
> Hi,
> 
> If this is regarding the udelay() for arm only allowing 2ms. A solution for this would be to call udelay in a loop. Does that work?
> 
> udelay() is used here because we need the accuracy and cannot use msleep. Please let me know thanks
> 
> 
> Bhawan

This has already been fixed by Alex Deucher:

https://cgit.freedesktop.org/drm/drm/commit/?id=5f773e551a3b977013df24d570d486645f326672

You can try converting it back to udelay with loops but I seem to recall
that still tripping the __bad_udelay.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200109184401.GA23228%40Ryzen-7-3700X.localdomain.
