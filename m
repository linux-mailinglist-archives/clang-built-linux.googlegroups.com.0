Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBBFJQX5QKGQEEJROUKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3194D26B5FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:55:49 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id j35sf4418713qtk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:55:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600214148; cv=pass;
        d=google.com; s=arc-20160816;
        b=paPSp//gDoLW1Tw9zHeasFl2eQ3ribMLwavu/ogV7mHXPXkXHA2hth5Ag4EUyjUQ/p
         hXNXKc/32an/1XQdbB5sGkSY+jIiNKes66icMBF1BHl//mc5F6UH79kKkX7oWtZN0LKM
         dBxrN2jqLiylCeE4acdwbNhVLBj08XbVgRm5wK2Zc3aaon582JVkBzznEXAqZpNCH23n
         gEc/2trQZFnXrrKVPT3wVMufAZ1Ogz+SWzC24feFviEFoeQsgafJiG5Qi+Zro/meiZsr
         utgaoDa7wSSAYl9rj0dNJsFXddngFt6IQdf4FNzMcEzw+CsMidSDCMohMhcmOaZGCt3Z
         zMaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:references:cc:to
         :from:subject:sender:dkim-signature;
        bh=tPtnlmrH0KC0IYK+JsUd1Z6rQbM/FVJPiHEw4QRwnjY=;
        b=SPZ6EyJ/79vJtUSvWZHB1MmExfm5BikzBhRBEr8jnSbxQ9zJEvRrX+dhtuTg/O2rW/
         XUvSiiXTVfHMvinDLFBPZADdHp//SuMlz0aCpsxUC4uh5A98PxEIDYnDarv/k3xaK9jz
         UCyBbtr/J9Ej/GxFBB1J0edcw0Xh3pVPTUBP03rUMTHfnZQmOHVARcXdZy6ed1GRK41e
         gHTi6XoSFBxijqlp5nqaEZFKwQ0YnqeRS4GKP8AdgePwvWPkB8/AmhgZUwr/gtp8bGsy
         Y0ZJccSLbCiv1PQutQdUd6b9m8GJK23O5UnFRho8lihLdLcck9LpZ8z5Qlqwaapw+28W
         f4VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=gMmjBScf;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.204 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tPtnlmrH0KC0IYK+JsUd1Z6rQbM/FVJPiHEw4QRwnjY=;
        b=DMtjZ1VSMOYY9n8TlRI7hto9ScebB3+EgFGhSDt50LcYeN2vAHcse+f6+b3Kw7YR7/
         utTxaFyn6GfB8HAZRSxulKEdLrKLoz7AuQH2Y9OeAdXcMinpwpHvmm7thrFHrHnaCZA/
         VN4+Vg6SorBUGCbXqUQEPdfV6pyWhIx2g4dQDv/BXBAos04nw0PGouxjxInGDS9XeZ8L
         th14ysB2OZVREH2EG/AOYx+frBIy2hU82IRdAVUjxs2gSPvv7qSfemP4wvCdBPHiFJsu
         fZbdYyn9wCDBgRtZUjVbPt/aZaGqL37Vl1+kd4YmRnUsN4Qs37GqBqRJ9rSOk0E4CV2G
         UDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tPtnlmrH0KC0IYK+JsUd1Z6rQbM/FVJPiHEw4QRwnjY=;
        b=WqIHIqzVLlDmEPIoZxCx8JnGiGzXyxWHOCEfvuub8m1v0au8LF/sfezsE0tDuRvKHa
         X79HD6TB3QFUMKJJ9DooJp/l8EwLVEn8dSxPBbT+smkWAC/gt6mweRIKauyyk3sgb31X
         LPNfQIeZfji/MnVX1M4PKfjNu3BG3Y/9hZj7jvV49wooLUIDX5LXN0ez32cQ2eNpMZpZ
         QvqWnyTxp48I1m35CYOj+jYGEBQCsgMahvYsgGnfm2X9uvGzb0nrm+GO0U6VrLCUM5WD
         bWYw2xcNDbo+i8RWO/F2Bxq9jBfnzDKM11EiXUW2jfNQFNMOXMv7yysG4J73LioZzfES
         kgaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531G5Jr+2WXbNAJAYiQp2sg5Lr44WyxqAxSHct/7O083is34lHFP
	JVmAUEdp71wlWuIQ/X02AaE=
X-Google-Smtp-Source: ABdhPJwUlnUbAMRlHovV9xpPr5/M6D3Y6KPDy17NAQGRZVITBHN+9et8o4W3EZ0zBVJIqLcfPWAkQg==
X-Received: by 2002:a37:480f:: with SMTP id v15mr12723091qka.279.1600214148302;
        Tue, 15 Sep 2020 16:55:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:228d:: with SMTP id o13ls206705qkh.9.gmail; Tue, 15
 Sep 2020 16:55:47 -0700 (PDT)
X-Received: by 2002:a37:66d1:: with SMTP id a200mr20277841qkc.342.1600214147745;
        Tue, 15 Sep 2020 16:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600214147; cv=none;
        d=google.com; s=arc-20160816;
        b=0MN/VblFrLicCaqmJlg2yxqSgp1j4SPh3EtVoyuA201ixiB29xvjmaWVbHb/fA44kk
         L0DVNYIKLIdnCRjW1MyzhTrrOVL7gfLQQ3BcXZIL4L0YQFXklTf9diDXaI9N35iFx4+g
         Vbb95XiqfCyk8fbiPonEcCXPk5nJx/7OjqrTG0icO+s1GUaOmsjWj6iviMr3bPGvfdVH
         Ld0Gv6jjcwkyjZlazOFUPkJNlB3B6vxKy9CaQ5tDOHrNGSvMhdmWr02XeDSEQ4KHAJTo
         3XCChK/7MCspSjhl7YwQ6esY5JKTgsreU7riM/DBTkHRlEMb9AOTLtnQPY6dII99r2tD
         ZNzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:references:cc:to:from:subject
         :dkim-signature;
        bh=fLHgTl3JALwyAGhJdI3AHMd3LuGgE8cTB9sRD2ehXUY=;
        b=afNu31wmiMs7OoDot3oxwjDkU0Gztng6z+MNGpg0RGQjfTpa13pv1LNEmcvYh0E4Sg
         o6YHhYjr0q41kGw1LbmfrhuRe9UpjqJ7SpB59sJO0E4LTJNnO7wxiTyDNfLiAvry0PoJ
         ZRKuKTQ6oQipMvRI5USizMz4Vd7XePDuGziq8AjMN7rKFRT0A2dW47Klv8HRGJohta+w
         UFWVWPipfF8AZn2SqKv5pdD3WR3JF9hJzycUfLQx/1EFOMspFyqDKiQj8R9QTzd1Ovf+
         HWbe4XQnkgHeHEvYeBciUm/ywJO2zPwBPEdqtuZymLVtyabjKdcGpNA6HVWBb9piyuU1
         /4lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=gMmjBScf;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.204 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com. [192.185.148.204])
        by gmr-mx.google.com with ESMTPS id l38si742593qta.5.2020.09.15.16.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.148.204 as permitted sender) client-ip=192.185.148.204;
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id 4B15D853AA
	for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 18:55:47 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id IKnbkcVUOCjCVIKnbkDQkA; Tue, 15 Sep 2020 18:55:47 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:59606 helo=[192.168.15.4])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1kIKna-000lEw-R6; Tue, 15 Sep 2020 18:55:46 -0500
Subject: Re: [PATCH] nfs: remove incorrect fallthrough label
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Joe Perches <joe@perches.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker <anna.schumaker@netapp.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Miaohe Lin <linmiaohe@huawei.com>, Hongxiang Lou <louhongxiang@huawei.com>,
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200915225751.274531-1-ndesaulniers@google.com>
 <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
 <55f1ff08-fc3c-62ed-429d-c9ae285a3a49@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 AP7RWS474w==
Message-ID: <de27c65b-ae7d-a2ba-3ab8-717c10f297c3@embeddedor.com>
Date: Tue, 15 Sep 2020 19:01:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <55f1ff08-fc3c-62ed-429d-c9ae285a3a49@embeddedor.com>
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
X-Exim-ID: 1kIKna-000lEw-R6
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.4]) [187.162.31.110]:59606
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 20
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=gMmjBScf;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.148.204 as
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



On 9/15/20 18:51, Gustavo A. R. Silva wrote:
> 
> 
> On 9/15/20 18:29, Joe Perches wrote:
>> On Tue, 2020-09-15 at 15:57 -0700, Nick Desaulniers wrote:
>>> There is no case after the default from which to fallthrough to. Clang
>>> will error in this case (unhelpfully without context, see link below)
>>> and GCC will with -Wswitch-unreachable.
>>>
>>> The previous commit should have just removed the comment.
>> []
>>> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
>> []
>>> @@ -889,7 +889,6 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>>>  		default:
>>>  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
>>>  				continue;
>>> -			fallthrough;
>>
>> My preference would be to convert the fallthrough
>> to a break here so if someone ever adds another
>> label after default: for any reason, the code would
>> still work as expected.
> 
> I agree with Joe.

Actually, this is part of the work I plan to do to enable -Wimplicit-fallthrough
for Clang: audit every place where we could use a break instead of a fallthrough.

I'm on vacation this week. So, I'll get back to this next week.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/de27c65b-ae7d-a2ba-3ab8-717c10f297c3%40embeddedor.com.
