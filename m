Return-Path: <clang-built-linux+bncBDY3NC743AGBBLNB276AKGQE53YPSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BB629835B
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 20:23:27 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id m64sf4373453pfm.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 12:23:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603653805; cv=pass;
        d=google.com; s=arc-20160816;
        b=e/t7OiK2nBzpIFRXGGAsWisy6GJsYlTVfmB1AJcOkrRGkTiX5aq/6iisNlwc072L2L
         7cR63v76sKAZngBp+rwlTDCmUfcbuiEA5vRnwn/p7GsXrExgdP8sdSkg3RnEUvOvD3fD
         Taqq026EpCd/3HpvfdVcEAqKhw+rt1zY8A4v3vVi44qEz0kC9KIlJ9rzq7wuebn7pRaM
         5RFF2Zx3KgZl3C9h2SpycGfHbE74Sa9PCqXgZ2VEbnEKmc+gMC5UGw/hck0LlUeyEQ09
         nYZWAct03moWmqnSu0l12UPMuIymXJMQm1BhGbQcPkkYIymX6WFEK+Ufr77WGwlcBePT
         6bFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=8unvd63qaxis4J4cvDNKshoQoDgpLPiGaLapneNMqeY=;
        b=DZKZh5kdUyEQYsHyDcOeJoEcK1MJqfqUUXeGbRKqXKwoCkLGYNfnd6u3VYT7Sri2RI
         k54uX0OZQLmYpfdfQSAsS41nEpkTiQ0z0nMlyz/wv72VwZceD89Bof0I/nP4vEkw2QCV
         3bm2pRGOnmH66jG0/+IWoHeqt7+GFuSNfhUl2riWzEMAB1Bmldf+FTPJfqJonkJdGpqh
         4HewON096efAS+idKpL7Hag891Feef2I1Cufpd70iY1TPVX12Wbsfqfpx9x9Snf4iXCh
         FZj1qao5SE8A9DiTb/VZNU8Qke5Nx33/TmgU/TwcgMG83BxLwjk9IFweyWVML0fF11lA
         dbnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8unvd63qaxis4J4cvDNKshoQoDgpLPiGaLapneNMqeY=;
        b=G4ANxPSDhiqLsesg7pm80ZV+AVWT6GtyT2tjNlcwrpAIilJF54sKBj6S+8HTYFZCq9
         xyNYjQTYehsfSDVPVoT6aREJDwXLfQlkv5PtvJ2TBlsX20CZpoTVWHIVSr88fB0st5ur
         pDfl2c65Z1HGHLIlj1hEODaLEYBTaqbM/Y8jsDSJXQuZeAv0UZyXYHo+5NYRfNddDit7
         9uO7zEmaH2G4B5o3JRhYGae7adfvWiC35jsQf//w94rC9ladTV1qkuGQM8T2+aBaBCN3
         l2TXPbYhYN0IhGC9jNeC6owbGyLaZZbW3qmI/iu47HIhkPWQsB8AalI13rhDoIG5pwBe
         Xn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8unvd63qaxis4J4cvDNKshoQoDgpLPiGaLapneNMqeY=;
        b=H8Jo0rjkzAXgGeGc6f6MhVXPGzBx9zl7fuDZ/SBRdPeeIK8QrR5dsFaN+VcbDMapE0
         2wYMkD+KF0k3X0c51m0fUx/8SjsGRrdvcOOdwh5YpvzeLi44N3k27zU5Mo1RDtWc8zqy
         q4kd/7TGiPsGyrJR9pGyQii0o6FyoGTzbzn1asmDN2Wx1xvfKUws3py7XVlR2v3QcOfQ
         7YlmxRLGZPE3l53WEQYk6SnU07yedBJdQ9X7GREB3mfZXQa9gqQAWGsi1bve21pim2VT
         BoMIWfYnmL++br9RHp3xaDnbZa/+Fj83czr9ej2Fn4OYz/AL5D3J7U9heDy0QUw4JlkG
         H2TA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i8zzTTB4cOsTWQRgppzXPEKlT+kJ3jn8xkElyEPU4oNenGjnp
	tWHN7OCb7EXn2pvdcl9sH1Q=
X-Google-Smtp-Source: ABdhPJwHzQVBg7drkRONxcgehfsotDB4EHsM6LERp97GlAauS1h7Beev6iwSc3vUvjWCR3vrIWElbw==
X-Received: by 2002:a62:b417:0:b029:142:2501:35dc with SMTP id h23-20020a62b4170000b0290142250135dcmr9557563pfn.60.1603653805505;
        Sun, 25 Oct 2020 12:23:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b114:: with SMTP id q20ls3332371plr.5.gmail; Sun, 25
 Oct 2020 12:23:25 -0700 (PDT)
X-Received: by 2002:a17:90a:4213:: with SMTP id o19mr15941491pjg.62.1603653804998;
        Sun, 25 Oct 2020 12:23:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603653804; cv=none;
        d=google.com; s=arc-20160816;
        b=QHED95QzrLwGm0FZ9321pgQ7funbVjOO4QjVj+1m85kInFXfGQucY1BKwH4e+H72HM
         VEJcgOtYCmRcEqbhQe4irO+WdXZtE/GxnkgXvJ7lqnJUUvRQDcxhr0pl39Mko0+BFzM8
         IZ3G0hTFIoVEUfGzhnDUM2hcw4Wh4JbONJ/8fXqGe7vjLDBeb6uBC5eP48bIQDR+AXu1
         1ETFujnP23FzPyZsrXZpzZ+zAezNS6gjactdAHHXBcam3Qi64rsMhgQ20aYsJFaa2siV
         oxmfkc8Dhw8AN80bH9ZEY+qz9ObCPwdvhqq78l4HzHepyy/lFdwzXs6uCrf3N+QHquJo
         kGXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=BX7lM0Fdog9UKeyLy0jQzjRuLI7QP4nGPZQwWQS6fII=;
        b=LwgUreO7ZW6eJup9rUgz/ohdqgwyoOfdilMAMHa20bx01k6GCQsY2MXkGQuOqLc22b
         9bNV7pPwxIBSxMD2gtLfNZKgKr+glefnrVBk99TfA1K4IiKHSGg01w6a0/y5eTHUDDtM
         LBZRL/4qlvmYjFLuEmKUtJZLZhtRrEwhhBQ/WkaD4Pd1M/UYvKTRrAJW3J72qG/wqbQ8
         XgnwYvsH96LjpBfLU/Fgh33yNjcFSJLKMBelF55sgXYz9phOWu+p7i9bhxSsr6hv0tWm
         nLKVS+avzNl42pUMUHTw2ZzB026AELEyuMsYvkCIoUTQpcjU1bR2A0dGj3JFMaNn/aqY
         3PLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0212.hostedemail.com. [216.40.44.212])
        by gmr-mx.google.com with ESMTPS id mv6si501913pjb.0.2020.10.25.12.23.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 12:23:24 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.212 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.212;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id DFF89100E7B42;
	Sun, 25 Oct 2020 19:23:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:857:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3871:3872:3874:4321:4605:5007:8603:8879:9121:10004:10400:10471:10848:10967:11026:11232:11233:11658:11914:12043:12297:12438:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14181:14659:14721:21080:21611:21627:21660:21773:30012:30054:30062:30064:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: view04_0705c4a2726d
X-Filterd-Recvd-Size: 1750
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Sun, 25 Oct 2020 19:23:22 +0000 (UTC)
Message-ID: <7e76d1c3239bf2d33889c4874bc9919fee6b6ebe.camel@perches.com>
Subject: Re: drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame
 size of 13472 bytes in function 'ltv350qv_power'
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>, kernel test robot
 <lkp@intel.com>
Cc: Andrey Konovalov <andreyknvl@google.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Linux
	Memory Management List
	 <linux-mm@kvack.org>
Date: Sun, 25 Oct 2020 12:23:21 -0700
In-Reply-To: <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
References: <202010260230.VivTG0Gb-lkp@intel.com>
	 <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.212 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2020-10-25 at 12:17 -0700, Andrew Morton wrote:
> On Mon, 26 Oct 2020 02:15:37 +0800 kernel test robot <lkp@intel.com> wrote:
> > vim +/ltv350qv_power +192 drivers/video/backlight/ltv350qv.c
> 
> Odd - the code looks pretty normal.  It is possible that your compiler
> is (crazily) inlining ltv350qv_write_reg()?

There's a lot of stack used when gcc's compiler options include

           -fsanitize=object-size
               This option enables instrumentation of memory references using
               the "__builtin_object_size" function.  Various out of bounds
               pointer accesses are detected.

Perhaps this config enables it?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7e76d1c3239bf2d33889c4874bc9919fee6b6ebe.camel%40perches.com.
