Return-Path: <clang-built-linux+bncBAABBBEWUXVQKGQE56RWTOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E430A3BB4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:12:53 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id y67sf7840322qkc.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567181572; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKYo6H0NwNuZQEM0e2o30wC5st4ncW4nf7PoqWMlltfnDh2j8qlAXGko0fQTUa35Wo
         VthnN8uqH3D+emd2JZ5O4yBvyB5FpdmTlPHfObAxYwjiBog/SD8vvKKm0XchjsdhvXYL
         858INMTL9LDz9ft/M1dtI5eGlDg+GK4slr213oO2Qy5IL2Jk5aLAaWgxNRzgnwNRYtI4
         XGxu3JsNleEwAfzrmHsX2yTHa741ALdtlZgZcldNqZaqQamk7MsllILyalEQKrrKS5nK
         DTGTQFz4hS3gRrAOWW5/zKnoidrjLm5UE/BhgETEuciw+j7/LwCxlLWuCRPtYo2FTdUg
         j1UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:openpgp
         :from:references:cc:to:sender:dkim-signature;
        bh=TexLYAnD3tcCmnttEtYX07tDSd+lVgy/r1Xu4ca+tEU=;
        b=HuW1QDdu2iIdnV9uyphE5oMQk74jxcPz6Yw0/JsQWPoWzFu0SgDEHnz3rnceh8J1ig
         ncyvLRezYdbaCmHXiYN6lgIepG5f0kBAA+B/94OAPY83dS7kH4nWmTt3Cnf6DKwLx8L4
         FovWPE9A3VuopHQg4IG5IAaCwoFuPqggFPpdcxfQQuHx8N4UVhrT8JYprLhVTQhRLwGS
         txfDkkG9uTS0o7lt0ybbzmGdepDAWlDvF26Lxedlwl7r2aLcQV3/rLMKJ9aul25CEY85
         0yYmgRpO+bRYm9B7z8igs+6uZduLfcZmvAk/Mo6MPf95sISgTvzsRLr2mK4k753OcgMn
         QT+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=N481qjqo;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.45 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:openpgp:autocrypt:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TexLYAnD3tcCmnttEtYX07tDSd+lVgy/r1Xu4ca+tEU=;
        b=gQra5xrzpP1+K/hHi5IKwQ+wQcqH18eCSdk6CfkJ8obh+XOJqejYzPKmCGZyLMen50
         k4BLMupPwKwBz2bHV+L9vt0rDAaD5FRJiCkzgUDtT0HedKEY9YFzYNCnRyrAZk2I7BVP
         lqANfEpv72jgj82ROjb+8H0rIJvtMo21KDcrAhaGbsoIx8nSw/RoNyhhSiTj08GN6KbP
         OjtWnCqoDAIP3ajavqIESCuvmvupFN3cQrqujL0124oooIbZH4eOtzbVM3iw3c6PiMD2
         nRnBTXwEHHoGPxb//xqXc2oYpGYr/2v66IL/4YaXUqq6hA/GIf+mvuAZO5ZgpCbZcGAC
         Y9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:openpgp:autocrypt
         :subject:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TexLYAnD3tcCmnttEtYX07tDSd+lVgy/r1Xu4ca+tEU=;
        b=mrdjMKr+aiULomSm+Yqy/bBfxNXzuPrsU2RdNNwRs+T/UFVtUtV96QW6tJ4XsBcig0
         Yj+YKNCpDn6rlNwiv/N70KOr64eDHpBRMwPDKZC0RcShVkD1fiVZAMHaNvVN54uFxqOm
         KU8iuK3lynS+yVQqtLRcubvntfdRT8OO3FZadp17WiQXy0d/7WihyopS3hVx2S1h3LhZ
         N4JdNIA1sWfsbJn52MYuWvs4Po/R0Q7Ym58eumrzzP5pkB60TsuNBKlzVXpwn+WN7fc0
         myW64JeAEmsdRhvKLv9VqzMKkVPgLP4NZVonol8+06bne526uyTqTBxS7hc5I6NFEZa4
         JP1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUognAsDF8KhOgiNAE+CqKGb1c/ARZmfwReg+AR9QT9WsE3Xsxj
	Xgfu/qNq/aLh0OnFB2XuSpk=
X-Google-Smtp-Source: APXvYqyAVQVizUrrcXRjquL1vwVwLhdReHVu+EQfdQv8gscVGWwtd48ApwFo3js/9qQk/CtAtwjVZg==
X-Received: by 2002:a0c:80c3:: with SMTP id 61mr10492925qvb.33.1567181572381;
        Fri, 30 Aug 2019 09:12:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8741:: with SMTP id j62ls812800qkd.6.gmail; Fri, 30 Aug
 2019 09:12:52 -0700 (PDT)
X-Received: by 2002:ae9:eb03:: with SMTP id b3mr11488788qkg.207.1567181572243;
        Fri, 30 Aug 2019 09:12:52 -0700 (PDT)
Received: by 2002:a05:620a:1410:0:0:0:0 with SMTP id d16msqkj;
        Wed, 28 Aug 2019 11:02:42 -0700 (PDT)
X-Received: by 2002:a37:ad04:: with SMTP id f4mr5472942qkm.144.1567015362751;
        Wed, 28 Aug 2019 11:02:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567015362; cv=none;
        d=google.com; s=arc-20160816;
        b=iB2T0S6mlVnKp1UgR3cTzxP1Mxf+zZUv6us98fcQWfUi8Ga+Oo8lYQUNIXPfktAQ0k
         xLdHKcUqqNFekcjAh1phU/zDf2V2PF51sXE0Opk8GW9Jx5RzoX9WE5+HSUIvdUW3D5Je
         Q/rD6EsLQtnSjZinFMEz3x3N5D3qh3WkrDmi2Y52vhsi2pEg8aVDKvdoP6GljjeFX3Oo
         CsTjV8HIZpGUiTwErPHuNVzahkgJY25+jVd0QpuDUo3/XwhlFi1Vj663Hu7mR+zrzRJk
         wYhN0O/so41ak5jnV6he0JpVB8N4LUdTFsnW1Z6OOg1SxOb7tddnsfx2npQr9QxneCPb
         89PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:openpgp:from
         :references:cc:to:dkim-signature;
        bh=less7Zf5BNV9IyHefo9kL2fqjZkjaeKMuZG75GoyiY0=;
        b=U45H/SBSGlamoUWajgoKUIekxY0+rawTNwJnYVOzcvcREoWefhSN3h4B98zvEQN2SS
         hylQvIE7wz0QY4Sh+hWr7ATHYj3Gu5Xzj3VEHFJzeM6etGZClQznE9s0EQDAXCt8XJ7Q
         WenUUpu8Iz3SgLjg3Ad3clhTAdgMt4ErUX6I3nQ+D1YnoV17UZiiQu/DyiIO7y1NDMQF
         ChT7fK00UXqHQvGBKnHWR3drYzRZBVzI7UIJ0ygHdlZACesr9qhQoqxXoYGgqfG547/s
         kJU+9H3b1Fz0nyLn7b7UmPowHN1yzZ5PTKUtoA/ov5bHRW0Cfw6FKLXR6MZwQWnxMZdO
         QHwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=N481qjqo;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.45 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com. [192.185.50.45])
        by gmr-mx.google.com with ESMTPS id r68si189183qkb.1.2019.08.28.11.02.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:02:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.50.45 as permitted sender) client-ip=192.185.50.45;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id EDEB8944B
	for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 13:02:41 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 32HJiqMoT4FKp32HJiucl2; Wed, 28 Aug 2019 13:02:41 -0500
X-Authority-Reason: nr=8
Received: from [189.152.216.116] (port=46728 helo=[192.168.43.131])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1i32HJ-003KpM-D1; Wed, 28 Aug 2019 13:02:41 -0500
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Huckleberry <nhuck@google.com>, Joe Perches <joe@perches.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20190815225844.145726-1-nhuck@google.com>
 <20190827004155.11366-1-natechancellor@gmail.com>
 <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Openpgp: preference=signencrypt
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
Message-ID: <d42b1f1c-f0fe-39ca-0573-04147c58b9e5@embeddedor.com>
Date: Wed, 28 Aug 2019 13:02:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.152.216.116
X-Source-L: No
X-Exim-ID: 1i32HJ-003KpM-D1
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [189.152.216.116]:46728
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=N481qjqo;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.50.45 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>



On 8/28/19 11:20 AM, Masahiro Yamada wrote:

>>
>> Given these two problems need discussion and coordination, do not enable
>> -Wimplicit-fallthrough with clang right now. Add a comment to explain
>> what is going on as well. This commit should be reverted once these two
>> issues are fully flushed out and resolved.
>>
>> Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
> 
> Applied to linux-kbuild. Thanks.
> 
> (If other clang folks give tags, I will add them later.)
> 

Acked-by: Gustavo A. R. Silva <gustavo@embeddedor.com>


Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d42b1f1c-f0fe-39ca-0573-04147c58b9e5%40embeddedor.com.
