Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBANUSLZQKGQEZBXBTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EAB17D22A
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Mar 2020 08:08:50 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id r9sf4588656qvs.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 23:08:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583651329; cv=pass;
        d=google.com; s=arc-20160816;
        b=TrPtrqJo0kQSblmtRH1ZdVe6oaIWF8JD4meSy3tLlRD6pLLLBFn2Tc6YpxrKWdigBB
         3uf9n9//gINPCCzL25BB8NZWMkBDJGTNSfhNZ1LGlMmRYA0TwxTpQSENoyEbdG4MJLz6
         4XW5sClvs7frNk5KKWKcDGQgoBq+XLWWfNaOmsYtj8aMmZBYUj2NzuaNjF6n1OjIdwai
         Vbsu3TsGA8kELjIY/ofOSkK4YqdXEhl9G4lfns8EsjeKmBiHTVV7sSwJOJomvxjOSlwi
         u0+bzGFaMmww3Kqp1DDm+Kv+GXQxsl1BEnWrOdwPqxphpSCnA599QXRAfuSrVqXeogW2
         qxOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=g+XRA64nTfwbsqLqAYy+NjjOOQNQE8qSqIDxbuwKCbY=;
        b=VzWsvPfFvOpTfmzPsQzzW39+TXvmIZMKRrs+IZnul8fXhRYcGEGxrrEZ7J5Cgo8ci4
         mezV7Gb0zSW6Ia9uIaFZF2EwpXHw89NWr9emo10H2qP5FBxZIng3utJLCF3q1k5Y13iV
         z/54FFXtVUIiiodSviRO17ZJHfgt5WoeCCS+eoD/z/aafgPfXsiDqef5juYRIXUvtw8o
         ofTeF41s0JxsdIb9Ar247CmBOg7L2qSouuavHbiPn68ueQJLesi88YvlgNOIfDw2142m
         7WdAf5nKpjt9u8axjV4CqlrZNESsJ6lf8g+2Hep+JbHzdLaB8i+9ieHNhI+Az3rAwV1S
         funw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="ITeB/bPP";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+XRA64nTfwbsqLqAYy+NjjOOQNQE8qSqIDxbuwKCbY=;
        b=keQPgBlkCtMdcnsvBEZNKcUOjh94lZn/niuQd7XwVwKOoapXdIMQ0fkiYwJWxS+WM4
         SB9LIYJITlozPp+Hmci6wBV2dzUUoxxsumYBqZh12saHKy81cDjLmbwWfJOVL2bXel36
         bJB6M+pr3msW2WnBWLAm7wXcQKgggeosEM79PoAxWDFzhv/LLuuU6NOEqvPmAjJMBYw9
         J8VWmXYS3rsVH/s90mtXMJV1J6remy283UOqZHfhKeuhyUsQ0P4HlC3jDZJYohm3u5YU
         XXqG7fGVHSlsA8PMYDowptlfYXxCvIvSK9I2c6CMJwTpG5oqff0glCydnQn0EulQUYv9
         a5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+XRA64nTfwbsqLqAYy+NjjOOQNQE8qSqIDxbuwKCbY=;
        b=pk8AQ72uzfGclHGnW63sB7lwCHPqoioVGunR+qFDrT07PqnxMht/MoL6Cfeo/xYGC/
         5asLRYtB8kY5ZHYo3DAuwwmHOGU58btkCTTu8+P8OR4T313c9atkIpkeUlbexJsBikNr
         /xJwx6YbECPuIbXDVN4jFjJc9uNs0Cyq5j6gLTiiz1jbX21MbrJJYhgrC5mdg+4ewONR
         hgwCivukiML8f9VVFhjneJTk7DdDsuKJs2B5eYljHoaBcS3mfgfjtZb7S5hvYVUFu2vV
         ktYF3q2ULqIoAaQfY0DJHrzvRyim4IeUkFyWF7ucFnBMUGMtTzrLQME5e/Am4ctxiYUD
         8OFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1jNjUvIglr09GYoDJkk/JQhPRXu8f78eE6IKkS07ChL1vx/JfX
	hdoXoBH/FDHHNegATMxPtVE=
X-Google-Smtp-Source: ADFU+vvHMTKCCvyEARJFvVS4+naUCTHybw/Eydbe4BrwulIZH65IrLk9CztFFqv6ymG/yp33Bi7RSg==
X-Received: by 2002:ad4:4e73:: with SMTP id ec19mr9500844qvb.78.1583651329733;
        Sat, 07 Mar 2020 23:08:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:34c6:: with SMTP id x64ls684968qtd.5.gmail; Sat, 07 Mar
 2020 23:08:49 -0800 (PST)
X-Received: by 2002:ac8:b42:: with SMTP id m2mr9885511qti.67.1583651329325;
        Sat, 07 Mar 2020 23:08:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583651329; cv=none;
        d=google.com; s=arc-20160816;
        b=w64X8hjDe/Y5+V2dPRShVbXRffDclFHpZEWdhFxhsxb9+pIwtNOTnL1vbPPI4NhVkn
         GIIOTDrzo4ivNuUAglukXL1F5yVToXN31Ip+HbX7Dc6p5JI+JXWNhFKW/BDyDSjCE+P+
         +Ab9PF/0t/RfOY38Azzgenq+aNN+IueBmJY5Uia9ZweJkZQt63s7+WZ9CI06PwBlMfMN
         3z2C0oaivRb8m893ZxiPQCqrLVJdzZDFt151D1Pcn5o+eEbtC0gBWFsVE7nd9TAUTBrK
         /E2MMDlOQ4AjpFxxQ3draERqFSgeU+XxAIrmYj1CWQZz258dlu8zHP+/6gWFHxU1mGdc
         9+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=IAgpkP6acU0qXJjRHhctRd6OvDzpVmjXQmT9YBJtSK0=;
        b=gkKl2qBKtD/Shq46c1vU9uWBV+dSlYWKBl4RHekMF1sX5VYdXrhBG6v2/SG68fmb47
         f93j3i0rSjtSIvogqXk9RDftAC3EaCwoxTcjyUzYZ0BDe9PfIdraoRVrRQAPZpCiyvcw
         ht3ifZ1N9FolzFon5Jm7LRE1omYR82Dm7vDCUSRNOo04Z6PyUpq5BQLYvYTsdpRhnwAe
         BbnUvgKWcvPo7XaLjOAGA36yI4IbfbYSBosq6uLRfNQcm9onzUzkt7/LZt1KMVR6eaT9
         vUwq8daRQvhyUKnAcJUI0rxnUMJoELwRjA2AErcAW5PHkg78Tcu2T28WKYXfPjTqErAi
         QkFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b="ITeB/bPP";
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.45.27])
        by gmr-mx.google.com with ESMTPS id r32si493428qtb.2.2020.03.07.23.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 23:08:49 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) client-ip=192.185.45.27;
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id E726A400FA88A
	for <clang-built-linux@googlegroups.com>; Sat,  7 Mar 2020 23:53:55 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id Aq3MjcpfBXVkQAq3Mjw4do; Sun, 08 Mar 2020 01:08:48 -0600
X-Authority-Reason: nr=8
Received: from [201.162.167.15] (port=3102 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jAq3M-003CWv-45; Sun, 08 Mar 2020 01:08:48 -0600
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
 <576fe2ab-7937-4698-b32a-8599813d6ad1@embeddedor.com>
 <4304de54a44b7c8c22d8c2d9249d716664cf5ce8.camel@perches.com>
 <6773b7e3-8ce4-55d1-8bb7-bde6d9f6e887@embeddedor.com>
 <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <1f71509d-6c58-412d-a817-45b1cc78c06e@embeddedor.com>
Date: Sun, 8 Mar 2020 01:11:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <259f405155a948f90229d3fc8cad928d434b46f9.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.167.15
X-Source-L: No
X-Exim-ID: 1jAq3M-003CWv-45
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.167.15]:3102
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b="ITeB/bPP";       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as
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



On 3/8/20 01:02, Joe Perches wrote:

>> or if you are suggesting that
>> the maintainers will have the predisposition of applying
>> patches that will modify their coding style and then go and
>> willingly fix that. I doubt the latter, though.
> 
> If any do actually use the script, I guess we'll see.
> 

Yep. In the meantime is a NACK from me for this version
of your patch.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f71509d-6c58-412d-a817-45b1cc78c06e%40embeddedor.com.
