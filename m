Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBIFKW6DQMGQEBTONHRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 845043C7610
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 20:02:09 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id a4-20020a25f5040000b029054df41d5ccesf28202093ybe.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 11:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626199328; cv=pass;
        d=google.com; s=arc-20160816;
        b=U45laNTo15RfIdUVh+Il2GM7MCG49yuFp7ofd5uAk9xFvdH91UTQl3trimzqh3/Omd
         Kfv5QViBI6cXSY5DAw+s/RQqpG0n8D+uI31nvnVGMvgbg7PuTaiJ37i2Gl0pS60krKJd
         8ZWeZ/dUpjd0txcVvJ53PgimpOe9+RTHvrW+LgL5PkumRaQlzw/+Ndzj55fsAk3n0HVG
         ZPoy3i7TohT9T92hLtw2g7Sm2TMkasNG15TLpHm+0pqZHCsW4PD76IVd3M67bAgA4HmS
         gz+nOBAyivNc6jTK/N22kaHYPAKMLFCqkRA1LR7mssp7q3xmpi5vbHaG47OSX9RDzUsb
         lcZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=nAIzMEgwbhD1KzL67qjKkwUuQoxmQFhrJtrZyq67/6U=;
        b=E6rFjnMwCOfHnFDzCwNog0VVNnx4g33dNBEAFgLgJ5kUBy/zY2Ol694ktA0uHRUzSH
         2nvjBqffaGKMPOZFIGYHUWwnrM8j9goiUknKYstwp1lsosFLk9sKJ4N29JYekdEsILSe
         BC+6GzTPXEwvx939EQ73jUyyYvdpyg094Uenspt/3IrIgzp/BhN5N/1JgzJZ4tR9NOvT
         IWyiIzkEBCRqaeYFNghYIgNM0Ik6MREUBRS6MZTfDHPDmdLzIeBr1OXZY8bBMlLxKByP
         nzscZPn51TmoBFZ7prp0yg789DbPn+AsS5qkPriFUjTQrWU49sCf4k/CPVUI0e+O3C9w
         K0YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=YvTRgAT2;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.12 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nAIzMEgwbhD1KzL67qjKkwUuQoxmQFhrJtrZyq67/6U=;
        b=gjpBPoI+UZNkR3QfLGefBbmwxi9KHaGdHM8ZkULjrpFjhTlS0aLdnHQBdIBGgqCa6r
         NIiFZ5QhnAU677bGO+VkYBxs/mBi+1Lw0HCryZB1YMNQNEqteBQc6uG9XOnZonkHMWbs
         PSzJoWLRn1Sao188LKJ5oFNa6VSg0sGe4hx8BlL6+cDdy3kOyn2T7PpBMTIXP+Yx/elA
         WbG7ws8pwGIl6RpT12bLhFTsCcyScKwqFO3sBEuk/aC539hs9+/KYaUGkaPIteeWO+UZ
         S0T8ELY9tXSh+g3aAsrneAjlEPi3JiWc14cixcXAq3UPS7h56Q5l6gsFd20MvAKAfnvv
         2P+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nAIzMEgwbhD1KzL67qjKkwUuQoxmQFhrJtrZyq67/6U=;
        b=djqDB9YG2DyPgYb3tLDPpiY1M5qnL+VyQlTo+JqeWg9ejOrW+wwzruoXUHxa20OIfy
         SBiC1xSsdVF5gZIissoR/9OvirePeq2/ra078iNGgI4aelFw3LuEnBG6S5KRmzGrMv1I
         gJRV4n+yrwRXlsZOx85nIGJYnqjgVo8pjxPWhutIlJulwQ9y/pLuQp9L9aXguJTwK5By
         oY6MqhfJ7A15Y9htKMm4qeHXXAF4n6uEVI3S28VdV3e2BGjZXFhJ6eionAOhK5nrotO6
         daFoMi9A/hxPSnYltnUw3msCebvzm/9t7HsrD7KocMJKB0zAaEe4RJ7w2JLLRwaHwr0U
         PkDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AZkLT5cJrbnnkBXmdXNKGKqSsPRxaRvXhliLLLKwrzfmTl79a
	p0uh4sAy/G5plIltyPjcnvc=
X-Google-Smtp-Source: ABdhPJy6EHOJG9kjaRNsIyiX6WJEKUWSH3c9RLj62br6Na15Mzj6Hql8U8T+IYFiMMrGHK4PBuqwkQ==
X-Received: by 2002:a25:b8d:: with SMTP id 135mr8115438ybl.12.1626199328433;
        Tue, 13 Jul 2021 11:02:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls515872ybc.2.gmail; Tue, 13 Jul
 2021 11:02:08 -0700 (PDT)
X-Received: by 2002:a25:a4a5:: with SMTP id g34mr7388907ybi.473.1626199327920;
        Tue, 13 Jul 2021 11:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626199327; cv=none;
        d=google.com; s=arc-20160816;
        b=Jr38e20k8PkX/QgUF9KL3qARisUkbqrZALvtZ/BKxukuPRhjt4pj+KQ4IOPhahNtZC
         jr+mqaWCWKbCR/Vu0qK08ecVisBZbFNP2Tving9fo1pAlElt5LpbFvLNkXa5MX6wkvcH
         +pP36+NSLc6mN71iFNjPLkQPgqsmVm/n93d3qK0x66y1Qw6jVj7A9z2V307aYOQw2IFX
         W64vJ7JPx/jQKnGBHbZiWGmQuikN50VRZ5ZZWxRCfzG6uP8N6YTNsiWeK49A+BDU8tBN
         58CQThQ9Z14qyomJXlai41aYFdxtKbRbeNUnqaejpRnqEyDDVhLcGxlia7fzgTiDc0Q3
         M3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VTkl60x3O/9Ybjhhi/1/1FrisvS/6rv0okczPbCcSu8=;
        b=RVxbcY4WQ5rnNanQeQqL4q+JhlcVvRuoQ711R/k3MNvwc9FXZxn6xidNQgYhg5z/U1
         aFopCh8Zywd0NPg7lJRn7xyLSL8bkywXmnyvjCljpzv2j3PfuC28CZAzxg8OL9oXdmB5
         NRjv/b4Yvd0V2b96JA54qO1R8qURoDPtbm2wze3VHE/1he7yOYaM3DIgPY/roPO/vabw
         zGg1vvznlHIZ65KhrDziko6Il1UKzfLuYD0zZpedBnlOuy4TlXL8O8PEeOkOoSM8nyrr
         Z//WAN8a9E2jO5O+2YR4EWYnTTh6i8g2mKnCyhqulCRP4lwSVNQd762aMKDAbWnuqJnh
         l3QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=YvTRgAT2;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.12 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com. [192.185.145.12])
        by gmr-mx.google.com with ESMTPS id o187si1547941ybo.0.2021.07.13.11.02.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 11:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.145.12 as permitted sender) client-ip=192.185.145.12;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway32.websitewelcome.com (Postfix) with ESMTP id 0D1E7F4F8A
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 13:02:07 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 3MjOmLXpRpGxH3MjPmeNGZ; Tue, 13 Jul 2021 13:02:07 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:46652 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m3MjN-001P6L-O4; Tue, 13 Jul 2021 13:02:05 -0500
Subject: Re: -Wimplicit-fallthrough in -next
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
 <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
 <YO3FQgHxfIl4zR3m@archlinux-ax161>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <3338acfc-3151-1169-fe2e-3e79002fc3b8@embeddedor.com>
Date: Tue, 13 Jul 2021 13:04:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YO3FQgHxfIl4zR3m@archlinux-ax161>
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
X-Exim-ID: 1m3MjN-001P6L-O4
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:46652
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=YvTRgAT2;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.145.12 as
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



On 7/13/21 11:54, Nathan Chancellor wrote:
> On Tue, Jul 13, 2021 at 11:17:01AM -0500, Gustavo A. R. Silva wrote:
>> Hi!
>>
>> On 7/13/21 11:03, Nathan Chancellor wrote:
>>> Hi Gustavo,
>>>
>>> Apologies for the HTML email, as I am mobile for a few days but I wanted to
>>> make sure you see this.
>>>
>>> Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
>>> the work you have put into it! Unfortunately, it looks like this breaks a
>>> few builds due to -Werror and there are still a few warnings lingering in
>>> architecture specific drivers. Would you mind taking a look? They can be
>>> viewed at the link below.
>>>
>>> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499
>>
>> I only see reports in this form:
>>
>> ARCH=mips LLVM=1 LLVM_VERSION=13 malta_defconfig+CONFIG_BLK_DEV_INITRD=y
>> unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
>>
>> Is it possible to see the file and line of code that triggers the warnings?
>> That'd be really helpful. :)
> 
> Yes! If you click on the link right above the warning text in that view,
> you should either see the errors right away or click on the "boot test"
> item and the warnings should be highlighted in yellow.
> 
> Ler me know if there are any issues.

I still don't see any files or lines of code...

All I see is:

Set up job
...
Boot test
...

Do you see any line of code on your side?

--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3338acfc-3151-1169-fe2e-3e79002fc3b8%40embeddedor.com.
