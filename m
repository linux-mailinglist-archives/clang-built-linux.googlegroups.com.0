Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBDHQUWAAMGQECNWFYEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA8D2FEA90
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:48:13 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id m15sf803378oig.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 04:48:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611233292; cv=pass;
        d=google.com; s=arc-20160816;
        b=SlX2O9RIrc3HvGANxb3p3LXpNoAvd205XyP/5BNgMbtJwVpnTZLbgER69T8XmzjhCH
         5NmIJDPt2fyb/6Ca/rE9ArwNm29UsSFD/aSE8uZZCWYwtlngTSDlkSlOSDuPOZKMfyKA
         5SWt6XOIuoohdwY1RErUdWYIQIXDHl26pH8R6KRBjpE7Bpw+bap+xXvi/M9TLV3jYn09
         TRg+MV2P8xB1RIbjh+MIsWX61j2nR5ziq5JbmTSeKKYmbp4qQXXCYrYvt9A8yCcfVova
         dl0ow7MHz6UrZr8XEvxi3TaFkGkfHg5BPYmFpfEFTabrFn5powuku0VDkxv2TCFsHVbc
         n5rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mskcp4fgav6NyisDcn682fOSz6NFD2H4c5C3Izy+Yew=;
        b=CewRWlmkxaREeneelDW+VprNt5wLn0ehPOv2qSQVw+TMAouHFbnfmvpOBUHT759lsW
         2mKpuL/uFdFimpkh7UCB80Qfu5LVlX3xfeniqRa9UmewPzpxh79UqZfgEuVhMPEQksTk
         TDJ26sL/AbsiK3RXN4SRbeikuVlaIMQUuZMG367VRgi9kBaQlc1yf/DTFCxFsj9hpOn/
         EvoSQkOYTX1NW4KO8aGpdK/iJhdD+V72lnRb5fR2bQrIa+DnIOiNp6fB2psg7fHNbvO9
         +BlTha3lvvNi9gD/29p3CejowKYr9kcLhEmLmYNgojinddzFJVFqWY0pb5rpaH99BbNI
         6nqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vtNhH7ey;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mskcp4fgav6NyisDcn682fOSz6NFD2H4c5C3Izy+Yew=;
        b=OHSbuflriPCARhZw3ioKlEB8FXEQAqAX5iWulOtvnj8lhw6k1zwIJRaP+UmVswHHZC
         dsE1srb7nMVSdWAmIz3FEe7w6/evcy6SQT+13G9bfKXCkJnqnbdXa0qpCt5P18mRkMe0
         SXCoiagb93F9yA7c9pB4zdeRWSvu1xR1tafB8WO+oyYuwBV/MSnMUQnaDDdqU4O8G8TK
         5LoWcBsM7CFoz3ufIbyGD5IqMyXm7kaK4UlI0eReOMPCVocTYjg6iy0+SGhFBgnhaeTl
         uEIPL+F51Njkpc5I5664RgV3rW7aiSysrh0d5DoS6k/uolHBBseZh2Tx67RIMDlqPkP0
         iHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mskcp4fgav6NyisDcn682fOSz6NFD2H4c5C3Izy+Yew=;
        b=XODlq9ba2AHJgMBtt5ZbKosxeekiXgiK0ON8lsFlVpVAUrkDTn2SeZtVOGng1GZ8mh
         gdXqAKCCDIKnkl1MwQfn8+tyQ6rcP/du4jCoUHCpEhDCOdsES0aIQgLPWYg2QOLnj5av
         8Kt0khC60Twjxs+Iu12ketfkUtPS+fHHQzhpexRSHxsFaNUo/q+0RMcnP4CUY9OLJy2N
         +wCabmcFSL0JVdu1XXRDlskOJYPTVK87+U0Dplc48Vunxi/n/KlF9jS6L4kh45aibcNT
         mUKECrfuiHbyc6j+I/dMKLc+9ttJGgzaAp1RRyNiGI96q/YuGgIH8fYIk+ZdwnC0Zb9I
         pjXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qNgQoJzg79qWgbGTGSBD0argiCUqu4f1dWDSver4XL77xlDd9
	xUEpFf9+bAQ1lu/unGh1rXc=
X-Google-Smtp-Source: ABdhPJyUEpr5Gk8tHeVfj+vjU9C9sJRNsbilSBmGW9yfJZIjEvghAqgi4gBhvYWH4nYg+0zynHqXGQ==
X-Received: by 2002:a9d:6852:: with SMTP id c18mr6632484oto.166.1611233292239;
        Thu, 21 Jan 2021 04:48:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:7259:: with SMTP id r25ls136329ooe.3.gmail; Thu, 21 Jan
 2021 04:48:11 -0800 (PST)
X-Received: by 2002:a4a:364a:: with SMTP id p10mr9489762ooe.48.1611233291808;
        Thu, 21 Jan 2021 04:48:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611233291; cv=none;
        d=google.com; s=arc-20160816;
        b=gTqu20B477y7niOMBqEkvcYEX26m5krDci4j6jBTCM6kV+m/R7dZluD4h9rEx2nN0Z
         Iy6ez7am2X3UqvnVM9Tr0U2wni2KsMinW1kaugdJbhLssGvvhepEz6JjSPbW3tMYB/Oa
         Iz11MypAi7EUk9OmeXdcMz0XYN/uQZKCLs/2RwJTOidDZGTX2yFh9EccsqWafuJo0K+A
         8Be1bggslQwc+xh7XQ5zr848GHF2hTsO0LKRZy3Ajz8w1dGDvEMf9rOpzpJQIKfj0Vr1
         ZtR2bip9g3Z0OhoUGWfe/9Tq9nYSV/lJe+Z1hH7xMzitEqUmTu8SxlSUJPQCsjEikEmh
         EoNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YP9afOwj5bOpoxLyPfGgakzMuUinGOZOS+VtfQdnp1I=;
        b=SzCNVjhpV18HNTwzPq5c5iQL/IY2POu9IxOf9xoqBI3tQy0hZpM4PhoQiuEqomrjDD
         44HRcR9aoTrRsFu9KHf9lzNhK33zhCVax74QVyjyEBLoeAciQStzcVcSxvTSioGy3m/J
         AI1eRJWBvgamimegyOYzCq1Rgmhc1eRBbcdVfu71IW/lldXmX6tvhCiFd/0fmvlfKtr0
         v2w+GBN+sYnNrgsa4JC+N52xHOzA9kdhvz5WcYqdwRdVgpeFhwdhiDHMgjorQAjGfPI7
         Mn/fIEm+RP5QWAET5g5EtMH2aW44jve8K4OJbWMxw6k/yDvv2cNaohsgvSalD8JMOLzY
         aMkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=vtNhH7ey;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si393977oib.1.2021.01.21.04.48.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 04:48:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7274823A00;
	Thu, 21 Jan 2021 12:48:10 +0000 (UTC)
Date: Thu, 21 Jan 2021 13:48:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Jian Cai <jiancai@google.com>
Subject: Re: 44623b2818f4 to 4.19
Message-ID: <YAl4CFZtgfIVdFI+@kroah.com>
References: <CAKwvOdk_U6SEwOC-ykaVTMu1ZmEjWC8cCiTetvU2k2dQ6WPCoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk_U6SEwOC-ykaVTMu1ZmEjWC8cCiTetvU2k2dQ6WPCoQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=vtNhH7ey;       spf=pass
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

On Wed, Jan 20, 2021 at 12:23:49PM -0800, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider cherry-picking
> commit 44623b2818f4 ("arch/x86/crypto/crc32c-pcl-intel-asm_64.S")
> to stable-4.19.y.  This will allow us to use LLVM_IAS=1 for Android on
> x86_64 allmodconfig.  The commit first landed in 5.8.  It has already
> landed in 5.4.74 as f73328c3192e.
>
> The backport to 5.4.74 (f73328c3192e) will apply cleanly.  Jian Cai
> sent it to 5.4 for CrOS, but we're trying to be a bit more aggressive
> in Android supporting 4.19+ with LLVM_IAS=1.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAl4CFZtgfIVdFI%2B%40kroah.com.
