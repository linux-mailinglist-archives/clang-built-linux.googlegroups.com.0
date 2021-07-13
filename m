Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBS5WW6DQMGQEIUPQLYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 638A23C7675
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 20:28:28 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id w8-20020a056e021c88b02902095727d18dsf6818262ill.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 11:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626200907; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+E5KxPwywjOoVr2KVGjOnvQAe9h1BCJyOdQAPX51t5hlKax4OgrN1ZJTjgQLGbv7I
         8p77BH0P5S+aAW7L/stJqTPalDgZTH2bB6elEds4Im+FS988ZOnpCp6MvmgyN0iIY9d0
         LDZPzqH3cNY3/d91INRYWZUiWcFmc988Ypv1du2w82Nr2zfMO4W4qXM0YXuSkbB5uBQ3
         ElOfuJCeAIOeKNhPwLtbxCQ3dCCg+oBU5MLHZ8u/cY479NiybS2FY3nM5QdQ/zW1XRbc
         WydA30sD0aCeC/RIKZAFpviq2fHaZfpHKqv3fxkO562p8Th8oEBcLRgJtHNxT+CIOYn0
         tH2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Bt75AlGz38TuOaeLg8xX8xCO0xVwN113YDr/pT5vt7A=;
        b=Kdqz/0H0uMgPvbwBCf/QQ2441uelnMV2SAV/gFhnIQBJknSEAzq5JL8URanh+tQG8A
         OorHGSi9wttfqjUEv1Rs7ROBnzFisUxkhoYAO72+4f0o/ruQWW08cl/jXDazciQvzNQW
         PojAzAcfpPg/JBCoWyNAoeOpGD3RK0CiUHV37V2LCscXyz4YXb6uMM+kkBUk2IGx37jy
         gm9cCTYIQaKB3CzJz3LSEN6lLZTFd4HThwhvOGtSa+QFw5mBxnQbUFJpfkV+TJGM+a4e
         OarQ6x2Yv9swAqRQpiR2YlEnewmdQwC5IEdXvO1Mad1AkF8Kgh+sko+B2UyaLnH5rqS+
         fn7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=HsddlKPf;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.49.104 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bt75AlGz38TuOaeLg8xX8xCO0xVwN113YDr/pT5vt7A=;
        b=IcfzrFf5LNfHQpCcuWCP/9iq3/5mkZZ9y/uP0yXLMdkQEBG4IumgR8EKoH7rJI7N6w
         K6rkYz9/b9tWgoo5i8dnnK22NiEaiQJT2ZHYnKLtl086EBcXTCDIYyIP0If9gQRt/3pu
         OOUC0VX7M6IqLd3e1JWrcgT8OtlEcqDv9GuI/nDezDIUUBlSl0g3ooUyTZmEellOHMS1
         j618F2tS6+OAYrHzAfK8G0UWOeujtb2axFK1BVT4epC3n0PoM9X8zdK+mHcIj86x7Jyv
         wUEQ8cj5D1m+A4XhQqukG9rNQJCHWIwSkTqOUIXK+icihT3myLLA5PoXhfv2mYX9hV7/
         cPEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bt75AlGz38TuOaeLg8xX8xCO0xVwN113YDr/pT5vt7A=;
        b=CU9reZnQ17ti/afZSRIE/9DYmZOH2XFnnGO/x0WWQVJ4QmbvOzDQ8Ko2ymlKCQO/Tc
         S0QhTQsf7bwYFk5YZx29Br0EYOCKhz48wApuu6X43yGxOX6BuB+lneGSecUVM3kGnYn3
         XGA9qrJH6j8XjXpzgNr/9KCcrccxMBQKBVVWDcqXQEvgsG02cjKdHCv/Bde4HThIxmuA
         B8SjneW5tq7zOfDIHXCaELR5eym76xOlg2ZfqtPGNAD5eleDfdqFNBUiuoXKccoLlHRD
         3d4xX53HiSCkRnrss8dKtZJ6hwJ06UriaGiL5m1yRF68rA0EzVrrO/800PylsaFCYuEL
         DjEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vvUcRNRf961CB5mStv/aqWcs9bFL03U5kyDrgpJivJsvIz6Pd
	oARzzHOu7U//EmKmAq4DKiM=
X-Google-Smtp-Source: ABdhPJwB36j+wFZfZIiRDaXJL7dpxeD+0w70n/+grTl6YFHJC7d6CpZh3vGQz5FOYFiUw1MNjPupsw==
X-Received: by 2002:a6b:f813:: with SMTP id o19mr4072998ioh.49.1626200907386;
        Tue, 13 Jul 2021 11:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:14cf:: with SMTP id b15ls2614099iow.10.gmail; Tue,
 13 Jul 2021 11:28:27 -0700 (PDT)
X-Received: by 2002:a5e:8f4a:: with SMTP id x10mr4277174iop.174.1626200906978;
        Tue, 13 Jul 2021 11:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626200906; cv=none;
        d=google.com; s=arc-20160816;
        b=gYcOv2MlbZH0Rn6NW08/rMFkwtB//68lahQfnkRLcmujrrMDNuvmrH1WlSul005PTK
         lPiCj6OzlLLALkT0AtOhX12gwr9eXYeVJ7KNUXZhveWq01eNzj5FmwXYGChOaEflXqKF
         JBubLoiQXnxHHCovFrgPAHCXLW6pw+Cai0lU1kDLPYKyDE0VopTLpWdk41VBCJcL+8Pg
         HuphO0pWhrEkf8I5kIbR4IkJYbplg+rxUfFUG80LYPqCAEJDzHHEsHe9Aod92VW2Dy1P
         OH8YYj+uaAZiYJp7Dln01YQL0aj7RQJrfoc5qimYt+WdDHk7gJJlL0Ody/WAKXpA2u8Y
         qFXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kF+VAeER5rJq3u83HMaWv+cgT0QDv5SbBD1lErZ7Vy4=;
        b=qbt1FxGCGNVh9WIFqMfaXRW19M6WI7vMrOVse2CmtbHpb0xkOR3Na2lo1VeVwxsF6C
         AXv3m5UpBoGN0wna9fSBhrZmwZdbHXo6EG30SOudA4a4emelLGlToi4ezf8W2OqQrKQo
         /S/t8ALbYpdYeEXdwH+BUlEiYXQn+iaH5dEBUPpjdxA86GCX6z0aQFcrjK9/jBkTTZlY
         rAKSG75f4d83zUJp9ZMoBwY56KzXYxWhkEZLjzYVwQzVfKGwNjr3Jz/BBL6C2La+c2g1
         9fh/lJsxi11+Tyq1ZpqirUL3iPEx1TKh3uTIWvs612WTV7CWiR7el0L+ZYn/XAZNpk27
         d9LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=HsddlKPf;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.49.104 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway23.websitewelcome.com (gateway23.websitewelcome.com. [192.185.49.104])
        by gmr-mx.google.com with ESMTPS id e16si1683422ilm.3.2021.07.13.11.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 11:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.49.104 as permitted sender) client-ip=192.185.49.104;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway23.websitewelcome.com (Postfix) with ESMTP id C2579269E0
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 13:28:23 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 3N8omwGRi7sOi3N8pmoiUu; Tue, 13 Jul 2021 13:28:23 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:46758 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m3N8n-001v1O-Iq; Tue, 13 Jul 2021 13:28:21 -0500
Subject: Re: -Wimplicit-fallthrough in -next
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
 <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
 <YO3FQgHxfIl4zR3m@archlinux-ax161>
 <3338acfc-3151-1169-fe2e-3e79002fc3b8@embeddedor.com>
 <YO3Y9huc+xMvSB2w@archlinux-ax161>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <64caa24b-faa9-776f-7f56-70a9f95c6627@embeddedor.com>
Date: Tue, 13 Jul 2021 13:30:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YO3Y9huc+xMvSB2w@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1m3N8n-001v1O-Iq
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:46758
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 8
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=HsddlKPf;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.49.104 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 7/13/21 13:18, Nathan Chancellor wrote:
> On Tue, Jul 13, 2021 at 01:04:12PM -0500, Gustavo A. R. Silva wrote:
>>
>>
>> On 7/13/21 11:54, Nathan Chancellor wrote:
>>> On Tue, Jul 13, 2021 at 11:17:01AM -0500, Gustavo A. R. Silva wrote:
>>>> Hi!
>>>>
>>>> On 7/13/21 11:03, Nathan Chancellor wrote:
>>>>> Hi Gustavo,
>>>>>
>>>>> Apologies for the HTML email, as I am mobile for a few days but I wanted to
>>>>> make sure you see this.
>>>>>
>>>>> Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
>>>>> the work you have put into it! Unfortunately, it looks like this breaks a
>>>>> few builds due to -Werror and there are still a few warnings lingering in
>>>>> architecture specific drivers. Would you mind taking a look? They can be
>>>>> viewed at the link below.
>>>>>
>>>>> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499
>>>>
>>>> I only see reports in this form:
>>>>
>>>> ARCH=mips LLVM=1 LLVM_VERSION=13 malta_defconfig+CONFIG_BLK_DEV_INITRD=y
>>>> unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
>>>>
>>>> Is it possible to see the file and line of code that triggers the warnings?
>>>> That'd be really helpful. :)
>>>
>>> Yes! If you click on the link right above the warning text in that view,
>>> you should either see the errors right away or click on the "boot test"
>>> item and the warnings should be highlighted in yellow.
>>>
>>> Ler me know if there are any issues.
>>
>> I still don't see any files or lines of code...
>>
>> All I see is:
>>
>> Set up job
>> ...
>> Boot test
>> ...
>>
>> Do you see any line of code on your side?
> 
> Click in the "Boot test" and the view should expand. The warnings will
> be at the bottom and should be highlighted in yellow. If you want a more
> plain view, search for "build.log", which should find the TuxSuite log
> link, which is plain text.
> 

aarggh... I wasn't logged in GitHub.

Now I see it. Thanks!

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64caa24b-faa9-776f-7f56-70a9f95c6627%40embeddedor.com.
