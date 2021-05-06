Return-Path: <clang-built-linux+bncBCA5V7WWQMGRBYGHZ6CAMGQED5X2SGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id F08583753F6
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 14:41:05 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id h28-20020a056830035cb02902a5ea00385csf2996034ote.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 05:41:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620304864; cv=pass;
        d=google.com; s=arc-20160816;
        b=seQADT1HPzSrOcjHxx6m5eRptfXnbv+mHauuO2ffxn1EuCjtzXtRkEMd1/PluC0+aQ
         2uJ38t6hRJUyOrV2uTfycUVDjTm8t7nd+4n9SlPFsJW0W6NhKRptI42uLainr46yLA0F
         kYEgqS4LgovWLw0LKQuPWIq8YN3QII30MxxOC1ck7faLQGEYdQtYATxb7ajhlrEGjIoA
         PBsbeH/mhm4diAmjaZhasdFMlC1JKVUaDSfJvhivVL5tUrNXpx1Yu+uPJb2Z7EaYmMQD
         5qRhiv/ooQaZH1AUZO5MW4sZFsI+5OML8YCIzbM3LK2LI5IK5fZkXsXUiDnIzFvUw6a1
         jZ1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:to:from:subject
         :sender:dkim-signature;
        bh=x5k67jyEtdQmI9hhppKw/Z2tF+dhjiuqkerONbqetmQ=;
        b=VQQrOirCLZQtZYXj3aA+IolblTCJkkFYOLUYQWJM12LtwD3jLUzA5MgNABeLhWKrkk
         0XlPI6ep1CJuMl8Dz8scH9i9nFdNLsLEqxq5hpJyvqlxa71oZiFWidszA4pYAmUClsna
         qtObeNwJYfGe9i71Xn8mVMRVCKnBaJiRzr2gGkKHeWg4EAwnVj7q3/qHOnTAyQ4lZGfJ
         L7gn2qjMMGNCrEe6hlx9cjJfH2ES5JL+i0vbyQbVFiNeooFxPR0Gejr6F5R0u10qIDG3
         y2zcEYE6RrMM5F7nHGALnKUYbE9b59aVYVEZSWlo70x+s24DXbnjA/hP1s5gOsUv0Kyn
         tr9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=abaci@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x5k67jyEtdQmI9hhppKw/Z2tF+dhjiuqkerONbqetmQ=;
        b=V90t8qpEkYQEFr6mPZG+NZPC1+xBAUBVGzTza6HNRsuXCLdHbD637kOzXyHP5W/dTR
         QI/XJg27SssmOg7Rq/U8Hga0FVoFdIK9XDYVEeEYWxlrB8tqlBEaoZFGmho2hlGec1PS
         PLFvpNk4yGCZsWqcni9yROY+7vgWFHWu5l1MJI1axbLjoCMPWsJgoKMNB1onQMnBsO1n
         yAlyqHY4AHGudZ33AV0zLEEDieHSvjEkaSyd2Iu07GNaB4FpAYsM47hT3Pg7NVqSYOMw
         06pBV+jny8/67kebGX1weB6UFfigb24xbBiSPJzo64ufi3z6OkAEb0tRO6Rs7RkvBdte
         y7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x5k67jyEtdQmI9hhppKw/Z2tF+dhjiuqkerONbqetmQ=;
        b=FY+J22dnujENeEae/ZyuCfyhQlHXTPj3ZW2jrTx4lSuNQm/NoDvf3ncU5Ggw7/Kofu
         fy6VS0d9ZnqN0gvPio1lLmj3FEHtaNBB0BEqjbiBDZR1PEl+HXEE04mZ6DY6swlxhXG+
         39zX/buMpKpRwnp2EWRH3P/+sBi+V1amGyHfn9SmI8KAHPhGn91eI/s1kzqh0hSooYdH
         1lTQ69W53tFXN9Y4N5I3NJdlg8WCXOUJ8zdUxJaWumucQ7QA0Ny4hRcy0UHFdofeHq1i
         tuFvDyUlz7AB54EmMrdA+HsyPTiB8HyE93VT4LFGV0zf60VOT0++DhBSnR2eQkrqKSnn
         jFCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wKJ6QOAuJ6xhqA0HeGLC9V0k3ZpYvoNS2vr143u3u/v/O9/7A
	q9IK3yVoYzsbBvHh3CfTnEE=
X-Google-Smtp-Source: ABdhPJzuiZYxliagNdlPG6YpcYmZSl1Kj7vam5cwhOikVqeKWW01Q9Hh1tk0HBM+0d2U+rSk2028xg==
X-Received: by 2002:a05:6808:148a:: with SMTP id e10mr2941639oiw.138.1620304864824;
        Thu, 06 May 2021 05:41:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:200d:: with SMTP id e13ls709699otp.4.gmail; Thu, 06
 May 2021 05:41:04 -0700 (PDT)
X-Received: by 2002:a05:6830:308a:: with SMTP id f10mr3391358ots.147.1620304864459;
        Thu, 06 May 2021 05:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620304864; cv=none;
        d=google.com; s=arc-20160816;
        b=c0yWwagZY2noUhLD9mQQfVzLppEmxq3BpLhfpOpSrcqfG++0jLnd+ZnzQrPn5nHQB4
         zN4qZovcNmDNGtBDmHnJtOlZTmRmj7psdHVPgpG3UViJ1SL/zjgiJ9PVOqyBodjl3QYF
         DOfkfftUAiHEiTYxvbC0k2Hqr9dZUSxoAvwWMAFssEHRstYz8xtN/FWzVgU2jt60AYFh
         /65+Z8y4sp2lMzZwgzOA19m9OoxZsWxJ/Kj0Vii3NgDfojx3fC6WuPTXH5wsSlFeO8ri
         7R869TFJ8sq0xssPEl7IV6N2wMYGFQqRpV0Mf1f2ej2fKPGkhrN7Hjui0C/MX6Tf8+mb
         5wJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:to:from:subject;
        bh=G7u8S5tklRpYQ6Y6M3EwkENoXZhO5MhfL6yJ3625yOQ=;
        b=xx2wSJ9kjGH0CMZdeRXQzSrCl4BkPsmBskQJ9UBztiQwt2MzTa3mL1O/BvWorvU/LC
         4c8z/B4mxSoOgNo0JY6yJO+oP/Oylp4E7btGd3WhatmUWY5QYnBsz6xAnzMiKm0pKnEM
         m6m/uIFKuH6bNnry84Bba45rMUukr0+2FeCicdnGJ2Xn3jMG68XaAJoXoq5/OuQmKcIs
         IWUckXpgF3RHm3HaoWPMb3/OzfFjs/0eaul9mR8YD3AEJffsq9bf55pKd+ytEMxh7+5m
         JTSKQTZvcwA/jyV+HgjAC+fbN66SJ9Z8kLWwmmS/B+cVUemb6tK94SjcshbdkX7li2FM
         ZOSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of abaci@linux.alibaba.com designates 115.124.30.44 as permitted sender) smtp.mailfrom=abaci@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-44.freemail.mail.aliyun.com (out30-44.freemail.mail.aliyun.com. [115.124.30.44])
        by gmr-mx.google.com with ESMTPS id k4si233364oot.1.2021.05.06.05.41.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 05:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of abaci@linux.alibaba.com designates 115.124.30.44 as permitted sender) client-ip=115.124.30.44;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R591e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=abaci@linux.alibaba.com;NM=1;PH=DS;RN=3;SR=0;TI=SMTPD_---0UXzRcVU_1620304856;
Received: from B-V3K2HV2H-1858.local(mailfrom:abaci@linux.alibaba.com fp:SMTPD_---0UXzRcVU_1620304856)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 06 May 2021 20:40:57 +0800
Subject: Re: [PATCH] fs/ntfs: drop unneeded assignment in ntfs_perform_write()
From: Abaci Robot <abaci@linux.alibaba.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Huckleberry <nhuck15@gmail.com>
References: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
 <CAKwvOd=-NdUHevj9eBtKmihL8D0BSVyiOr9pMUNMYTWm1Y=KGg@mail.gmail.com>
 <421ff56c-1aef-c244-00c9-9ccd0894a571@linux.alibaba.com>
Message-ID: <97ed07f0-0333-799c-8554-8f7cc6b6b3b1@linux.alibaba.com>
Date: Thu, 6 May 2021 20:40:56 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <421ff56c-1aef-c244-00c9-9ccd0894a571@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: abaci@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of abaci@linux.alibaba.com designates 115.124.30.44 as
 permitted sender) smtp.mailfrom=abaci@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Hi Nick,

I am so sorry for the late reply because we have a 5-day vacation, so I 
did not check my email...

 > Thank you, but I can run `make clang-analyzer` myself; my intern wrote
 > support for that in Kbuild and I reviewed the patches, so I have a
 > good idea how it works and what it looks like.

Thanks for your kind work to support the clang analyzer in Kbuild. It is 
a nice checker and easy to use. We use it for just a few weeks, and we 
hope for your guidance in our patches.

 > But it's news to me that anyone is running it, continuously, and
 > fixing reports! That's great! Is there a website that describes,
 > _what_ Abaci Robot is

We are building the website but not complete yet. And we have some doc 
in Chinese, but no English version now. We will do these work soon.

 > or what it's running besides clang-analyzer?

We try to do something like lkp or hulkci, we now try to use checkers 
like clang-analyzer, coccicheck, sparse, build warning...

Sorry again for my late reply.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97ed07f0-0333-799c-8554-8f7cc6b6b3b1%40linux.alibaba.com.
