Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBQ5EQX5QKGQEUC57SWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D3D26B57F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:46:13 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id f21sf3405961qve.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600213572; cv=pass;
        d=google.com; s=arc-20160816;
        b=MP0g06al8qDyomASAuCTfengNwxLHcZPcewwfcHwDFPxOIsMMY6+Y20gZZsXPTKrBZ
         Kxfm+5Ir1eRKWJJD1t3odmn0RXYRP1yZePBIWiaLxUzKOgIuoKxgPhrxP8fkjCg00bM+
         JOyPgpcLTWQ5h4XXV+G1jY2b9uXdV/gE4UMykwMTFP9/ZUEgzmKNl/8lpa7LC657rwJU
         Czuy08d17ldShF1CYzFBDWKu/80Ldk/Pc7HZpIJng60WAgkchs3AdWegwra41nQJUsUz
         +PPFlrQI77KFx+OcVJ9Q4+34CfFVQgTtIXbdqy5HQKh64Mam/l7oUz4ODpp7oPUCmg3b
         u6cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=kiOMl1F63sHe4ssCeIY79z1NN2JwCxkSGasLlwkbKW8=;
        b=v91ms5q5Ij0gl+Mp/3fIcGOV7TFIvzyCd7rHhhRmEJkmRut8xskTBwTVzu/SgnwHew
         97QTnGz+EppeVXQWBtVPH4tMLd2cNVJe/VaufwhCqXaA9INklrhuPJjdCyJuL++1wat6
         1jJZ/c/LzKmcA9IsdC8wuXmRsmFPFdY8zaU2VKyWLuqMa7rNzVLQ4i02xHVVhDXvbX68
         9eh/BExxe8DMUno8UM6d/gVwsx5IXjNR1aQr1EsW2LKfqJGOej4GtnmITL2FuX82+oPM
         BACon2/T9q5zr1HWjlu1RMiSJtFJ/JxNX6ksAgIAaB5JUC/QtIbOL+YqJhqmU+fpS5nT
         bpeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=IF4Ey7Ly;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kiOMl1F63sHe4ssCeIY79z1NN2JwCxkSGasLlwkbKW8=;
        b=rGQIn9qoq+iaZCtjpuMYlY4KxftLwgkH/ww+L1FwBmt/CIpN4jdwaP2IPLzgNr2aKN
         Z0RMQwvNncmpF47iCwckRoOtmXTNGYI3HYvzNg8rYeIM1qBqK6DICgIPAvrboRDSy8Fg
         wTKiJDMPFYiP69d4vnAN8A3JO1WHgHIJZWDjRneQIwSDFx91HOP47wSRfcFPZ7wIgtY3
         at14qcRAaOhCGwBD2AMGbZqcL7Mm2IkS7EE6U84hNXGxEeOftVrecs46yXP7CALLM27q
         DUFeaus9xmENY1BkfLFtLu/C5/6y3o/NjjcM+jxJvpb3Sk7a/WicFUtl+Wd/fgfTa/GN
         yrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kiOMl1F63sHe4ssCeIY79z1NN2JwCxkSGasLlwkbKW8=;
        b=a8dIkGiqGsCyYcYepID6q+teVBwFTPIRVdMAhksARccJSo3s/hd4ysiwg4lKeK/0Tq
         R33xTi5QPwDoFt/iJzHVP7eUolrqsTEbFWYNDwdiEYRsDIvNzqux9e0wsh5c3SfJc6tk
         JMs7eLzU3/muUX5ThrilpDH9s6yhSBnx/zrL/8fzYpt//SIKdyvJ3iD9uG0zGkVCjHfS
         sUinH5C1wbD19i7wd5WZY/0y4G3G6hsjm7Z4Lct3HACVowm5mBS9NZM5KksDnMPeDB51
         HV5i87+zoUGqh2GZFcpaI7AFCFWIAiS/0sv0FIauD3dwZaXNqVIH5Tv5hcEz6rHNBdJG
         85lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533q9oN1YFvMms4sNJ+p8tzIS0AToIBKFFhOzwpaH6V43lIIEG5M
	7E0N7tSbOs+mXkwi5pV1o3s=
X-Google-Smtp-Source: ABdhPJzry7HPC37RDaoV13v9/SwHj2rtEK3JQn+VT1cJGov8UV2oEXjg9wSXS1jxdIxAMCWHQBEUEg==
X-Received: by 2002:a05:620a:1247:: with SMTP id a7mr20306815qkl.154.1600213572064;
        Tue, 15 Sep 2020 16:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e90:: with SMTP id 16ls10996qtp.11.gmail; Tue, 15 Sep
 2020 16:46:11 -0700 (PDT)
X-Received: by 2002:ac8:7613:: with SMTP id t19mr20915204qtq.259.1600213571555;
        Tue, 15 Sep 2020 16:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600213571; cv=none;
        d=google.com; s=arc-20160816;
        b=XtbeVGZXCGoaVjv0aVL3lA7hxBt+UxpnyYVLkULvY3eMK19tU5FVLPSsNNa6KvRR00
         w90WnIB0qQzc6rfFXzThH+umvVZj+fXHi7szQLeRDjoP8UuHxFOq858VtV4hasIU0vrX
         UwANY6BQF/wRT66R/0sIgZct0XN+N309KNzGamY6IffnPoGd7CBomK05oFn+FHYFIIfW
         RsX86q78iKAVIQKvMprKuX9+u2aRpfxGY9g0VZbAc3AedHi3QaYDq+iP1hHqrQWPc/Wa
         MJue5dX6HUyUoprgSIKogCdFMOdDZCLAkZH0q3JDKVXh49hc8rC9DdmIW6fHpfzMHvyb
         tAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=/t+iBVK7e2CzEdx+psCol4xSPYU8GovkqktUo9zOgWs=;
        b=YdXxQNmLgXJaJOW88nznw6Ryv1WZeuGR4bKdAGUMDLEcbSp8dVJqBjD9AU6CgozozT
         0zjKNEifPYlKZIwsK7QXacW9od305MZl9ekd73cE3rwp7lO/tRMpZ/TspugdvMf1qLlc
         CgPCSo2sR5yaiPu/NCS25XKKjzxjM+JbsY3uDoJjJVU3BhRN2iLZI3Or2nc5UIGK7tEh
         1rJ/DM2o7dmFZKz3sHc7VWcndnfnG+2pN5UCt69NBargX0bYtei5PrR3t9IIT/hD8IWd
         HD3rp3siTFJ4An+7FdPjPE+1zNou1aTXuk8BERgF1GaMgVekJtfX8UXAHS9nQyIC6UHk
         n5/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=IF4Ey7Ly;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.45.27])
        by gmr-mx.google.com with ESMTPS id c40si44547qte.3.2020.09.15.16.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.45.27 as permitted sender) client-ip=192.185.45.27;
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 556CA400C2F46
	for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 17:21:26 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id IKeIko88oXp2AIKeIksV4e; Tue, 15 Sep 2020 18:46:10 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:59478 helo=[192.168.15.4])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1kIKeI-000fs2-97; Tue, 15 Sep 2020 18:46:10 -0500
Subject: Re: [PATCH] nfs: remove incorrect fallthrough label
To: Joe Perches <joe@perches.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker <anna.schumaker@netapp.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Miaohe Lin <linmiaohe@huawei.com>, Hongxiang Lou <louhongxiang@huawei.com>,
 linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200915225751.274531-1-ndesaulniers@google.com>
 <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 AP7RWS474w==
Message-ID: <55f1ff08-fc3c-62ed-429d-c9ae285a3a49@embeddedor.com>
Date: Tue, 15 Sep 2020 18:51:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
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
X-Exim-ID: 1kIKeI-000fs2-97
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.4]) [187.162.31.110]:59478
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 10
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=IF4Ey7Ly;       spf=pass
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



On 9/15/20 18:29, Joe Perches wrote:
> On Tue, 2020-09-15 at 15:57 -0700, Nick Desaulniers wrote:
>> There is no case after the default from which to fallthrough to. Clang
>> will error in this case (unhelpfully without context, see link below)
>> and GCC will with -Wswitch-unreachable.
>>
>> The previous commit should have just removed the comment.
> []
>> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
> []
>> @@ -889,7 +889,6 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>>  		default:
>>  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
>>  				continue;
>> -			fallthrough;
> 
> My preference would be to convert the fallthrough
> to a break here so if someone ever adds another
> label after default: for any reason, the code would
> still work as expected.

I agree with Joe.

Thanks
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55f1ff08-fc3c-62ed-429d-c9ae285a3a49%40embeddedor.com.
