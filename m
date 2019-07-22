Return-Path: <clang-built-linux+bncBC5L5P75YUERBNGX23UQKGQEHFDPNVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B58A6FF99
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:27:32 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id f3sf26179053edx.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:27:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563798452; cv=pass;
        d=google.com; s=arc-20160816;
        b=JzEjYA7LR18LtHapfImhNLFhpZ41gY4eFSQPEBQD3jo0n9HMHsBa6wIePIcassyzGw
         ARhh18NwsZntOzftmZEKVFeYz6oBKSJJpwLqws8T/FWeRYd88g3qPBC8XScD8uDCXhW4
         gYf9URx+mz9Q4qTpIYsYzxGMEsBynWdmEz4c+RYlEPY1Gpdw6WpyQ/dnfayxBb/l9qEm
         XG0Yrt6MXQrkoj91S+w8U2ktgczknYriIsSpzCH00xd8QW3kEn10QzFWqVJ+Ai6cf/Nt
         v1MRiQW/eNttd4BUDQ71JrkQA0OkoPv2omLjU4lDnWJCEM2JSjmpqCRREyYsiQM5NHte
         05pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=T6HiS67oXKnqCMMbCgRJZ5n2EObOC3b7zOLqvjBTlh8=;
        b=sUsSHA7cjF1VSMHygCsOH5UaEbej5MbBb1lkbXQP7Qy/jukc84KJVmMLSg5794Q1zz
         Ncn/wpQdKVNL9IMZBqMb2d8i4XeDmBckvjm8VjvPoAElKGyLnHSgxgLmk1PNDZwJnpu8
         kO/HG+SQ310eUTlbHO9tF+skiHOiNVTgoPzjplsdviaumfIl2X1sepT3i2tzl9J/PkP7
         oakk2fw3nEkpfOoWJf0WdTnvFA7KsFBHZSaLEEbeGQgFo53jKEgygYGNQzB+C1zP0wmE
         C+jTY8Vman5uXektI1AvaBqnLzG+RFJagy240RVtMcYAFHYvjrhD8XkI1xlMNmz2azbE
         rjyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T6HiS67oXKnqCMMbCgRJZ5n2EObOC3b7zOLqvjBTlh8=;
        b=bmwoF/iyaRNu/8R3S8LlvjtK73PVuHUzEuVc7wldSDKsiojDVpEqO/qbgSolEO8A0o
         kkAcMnOEJLwmc0SLOuf2FCObnK14fP+On0LMSuN8wFsbmQgH4DhGoNFmONwCrbsxMEML
         N/fJ7Q8LIo7zmHRQWtsMqZnM68GqMCXfpL49FMYp3qEoeQzEcUSShMuP4/Y0SPeMj2Pt
         xsPlbuA4t+DMQKxvPAVgNTm4iFJgAl7920PjOv2CMsEhnfioiXiNcMNP3rLCK0VQ8RqG
         YSb1Mb7JQIRUjVhvZfzjr36q3e0CJWaMDyMkn08F+k9i39FV2K9HJJ7NS1YXzIsAZwcS
         t/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T6HiS67oXKnqCMMbCgRJZ5n2EObOC3b7zOLqvjBTlh8=;
        b=dTLJeGuVlHlyMz+0yYz3QdkkNHnoxG0eSFbW3kn9a03Rg5/r25mQscC/mpO8UP2sDC
         TYEy1K3R7usIUGD253g2I2gObBy8kmKU7uZ7oYmYp9tW1URs8gTlPCTXvszyh5MRQt/a
         qi6nsil8I7jlCTsEEBV/YUrkQwrFPZIzyMkbCs49Jyz0waaQuvyXpK7WF32xaHMsqKxX
         OjgXlFflK2hYSMNUaBCXL4zHYlj6IJybjU4XoGbOH346lzuJ2YWJeOrhKXCOWcwW1D5q
         eX/uuVpnD5qHR8kRnrTmmd3qQLjv/L0odWcb9wC+MZ1F+Tyl2tujyWUYy67557lMC8Ug
         et2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgfZV6YypRKezjI3zONo2/ngARflpV7MZ95p5WnORizySXPEuT
	4HHI3EnN9/AKt935uwXFCuQ=
X-Google-Smtp-Source: APXvYqzkPsFRlNtGlhT3DahPYrgI2Gt1ZK0x+OgBcuzBFL6pznvzg45A3nPUpjJSTaQnkr0rh0PsDw==
X-Received: by 2002:a50:8be8:: with SMTP id n37mr60101143edn.216.1563798452073;
        Mon, 22 Jul 2019 05:27:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:74d9:: with SMTP id z25ls8234791ejl.2.gmail; Mon, 22
 Jul 2019 05:27:31 -0700 (PDT)
X-Received: by 2002:a17:906:27c7:: with SMTP id k7mr53069527ejc.91.1563798451576;
        Mon, 22 Jul 2019 05:27:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563798451; cv=none;
        d=google.com; s=arc-20160816;
        b=bVZ58SmW9rQP9mbA/KT0J60fLUWcu5lX0K2OLZQ77RNZSU/6JoUwKAO0tpD+mWvp6J
         VP78GuaJCSSWTVBAtgMTPrtqolkeDouyasjFiJZSTv3iPOFkZKojA2emDXDmqNGbOalh
         zYvoQ4uG0S6zxVjpm52kLP94Q7pt/9yVsN97Vhvhy/rAnMhOkZD0VIFrifrA/q6oaSYo
         Jl0MWGS51GjzCHNRqYb64ufIgq2gQWd0g2yt3RPcMzMBcvpHlHk8Zr2nfHgoUxRToM1R
         R7HCInCk+2i6nvt+q76Sx1QmNu75xUmlt6ea7AX1oC8l7CYGWJQhO/ue4jwwibbqhSsI
         KyIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=HGbZrYtgdteixJksoX5urqxJe5NwvBfEFhd1tP6plds=;
        b=Idyl+HbCI/ywARIVov3PILonWxFOU1Ugq/6pCPVeAa/ZNUU004vw6E0j78ogwPVXK5
         89uk1NaWPjHTk9LwcbEvlIhgcks9aGg9hkU1irH56TJtaO/ZYz8/guNj7TSvIyBKKpk1
         AV6qz7v4R8rkQpdCJC48VBxykTfT89Ca6gT597fv42WP5TuFhgJP4iXdvI8upx/1Tg+s
         ej51nSdOtz0Gv/TgznwYIFbrRyclFxKzRmmAv0+MT75RWdDToTIcnzcuA0Syxyu1gWEl
         Gw9rPOcEFXqU5CBHgde9fPKXsc77VCCIGK7XUqwWo7G6LTRFGDygQ4kDzmjyagDQXSOz
         N5MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from relay.sw.ru (relay.sw.ru. [185.231.240.75])
        by gmr-mx.google.com with ESMTPS id t15si1928225ejq.1.2019.07.22.05.27.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:27:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) client-ip=185.231.240.75;
Received: from [172.16.25.12]
	by relay.sw.ru with esmtp (Exim 4.92)
	(envelope-from <aryabinin@virtuozzo.com>)
	id 1hpXPd-0001ls-PZ; Mon, 22 Jul 2019 15:27:29 +0300
Subject: Re: [PATCH] [v2] kasan: remove clang version check for KASAN_STACK
To: Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>
Cc: Qian Cai <cai@lca.pw>, Mark Brown <broonie@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190719200347.2596375-1-arnd@arndb.de>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <a3a12316-87b6-a6d9-d831-2f62f0bfbedc@virtuozzo.com>
Date: Mon, 22 Jul 2019 15:27:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719200347.2596375-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: aryabinin@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as
 permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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



On 7/19/19 11:03 PM, Arnd Bergmann wrote:
> asan-stack mode still uses dangerously large kernel stacks of
> tens of kilobytes in some drivers, and it does not seem that anyone
> is working on the clang bug.
> 
> Turn it off for all clang versions to prevent users from
> accidentally enabling it once they update to clang-9, and
> to help automated build testing with clang-9.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=38809
> Fixes: 6baec880d7a5 ("kasan: turn off asan-stack for clang-8 and earlier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a3a12316-87b6-a6d9-d831-2f62f0bfbedc%40virtuozzo.com.
