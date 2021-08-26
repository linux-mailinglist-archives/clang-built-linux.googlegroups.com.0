Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBFEDT6EQMGQEC5V6Q2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id C40FA3F8C33
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 18:30:19 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id j6-20020a17090ac486b0290178ffdbd20dsf173294pjt.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:30:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629995413; cv=pass;
        d=google.com; s=arc-20160816;
        b=BDlb5nWlzR2QkGv3GhueklYqt3p6C8v4OTednj2YCNqqMJJ0N+UNgEAhMLa1o10bq8
         8yTpPMD5U8ULaphJA/iIQImQC6HnbT72n0bn+yJBvYiKEV7lq/lqdqj3DoGKhayvfIl8
         jz1tOz2RVbtuUHJlDGEwsLNf3wsvfWdvrbcoc953jV5C4EUUkgZAhFYGMCeo+jiilbCE
         NxRf/uJcuVA8npCPZWlEfvJ+fnrdyTdvoMkRLFJTRai7tNpVWGMP3qniyKJ6gOCHaAi3
         K+hNVD3q1jtpZGl0vw6pKqR4plKzXfI/KhauQv0W/iKjX0aeA8L40goQlHSY7mgZI+r9
         znAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jU2qAB7wtR4B8fMIzpXC0rgRsM6nQvyQFIkE13bZZf8=;
        b=h1aPKmtyJ1W/7Ln+yJaB7bOLdifsSjh9pL0oFHymCe0OLkMwYWbtY55L1qESSMpIIX
         G/K3PfvpOcBuZpvr+UfT75/Lspww0jD1WZkkGuj3EnRakGtO4h5D9XlZJIRov/ONUUAc
         g9ihtdd+o05mzjsVlYsKzh06tIPDSWnXQCVyNLTtUMmib53+YQ7CMrNGTfkqrWe4HpkG
         K0e4cYG84wxgXf5Elp/7z5cQOHenLJOEyc8r0pkTUWKsDu9Bay4uD6UY2IejBVE/hkJs
         QH6hRtta5Lf/Ww/RdSf55tLliAG9nCV+z3wCk9H1Gt6kNx6z5ZvakCSttRT7qevXUdN9
         BIHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AM52ANEj;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jU2qAB7wtR4B8fMIzpXC0rgRsM6nQvyQFIkE13bZZf8=;
        b=hCf6E7DC8ZUJXTICIOFqK2iU4i4OzMZ9ibSRE4PuVZxd46ngRFi0cM2ka6RaASJFIG
         ynKibGHbanVnAuTzzArCK6u1NFlTXhqR5Kfr6l1jay8XUNez9FqTS7QdQwrxsJ91mDLS
         F0GN36AOjEUWtoXzkiR101JWD65rY4lyT5XaroZwTBiqgSU/PWoFc9yI7rT0bXZJIPNo
         5E+kMQ2CQveES/Ubi+mb1ekZ75iGo68gqFYz1aJ9kZS2UJxjc8JfzLuBP91b4rq9j04q
         9dobt/4Oa3lNerAKHRNtew+43kXmbX/JLh285S9IivmLdWKtRA6Do3DODs+CbgnFElT+
         2K+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jU2qAB7wtR4B8fMIzpXC0rgRsM6nQvyQFIkE13bZZf8=;
        b=Dg5Ko7I+1LltdjPpqepRGqB8xWYQ+UoIgZ8D4++Wy/Onk0ExYeIHb0qEQbjozFpwnH
         nmu7trhNLU29/9oq/YC5NLQMb4mhnZabyweG+3o0fQDABUW4N39399J5cufXDOJs6CER
         APFAb3ctLG2SP46uOALm/qhfbPLPyW1/NMqf5F1q5o7uIxvFo6E8K6zBSNPL0mjAJnsF
         ncKuxmVpi4eIXkselEk6qARgeqimEtkT+BhZP6+G+tGD0iiYxEV6hGntgO48BOYmZzYU
         vss2l899OSoJHXEOaLWO6MyZznOfFrxfIDChTps6LsAj6xn0O9gA9tWALMGO1aL3PDah
         U/Aw==
X-Gm-Message-State: AOAM531tP6yXwaqasUi2AYrZvC1EebmCIZn52tz/JrgFfRLMCxAuTOWA
	+F4OzrMTIZ5CpSF268xSiPs=
X-Google-Smtp-Source: ABdhPJynAmnFYXTdA9dNXQmqkO3IWECyayrIVdD6wl1ffmKfWXpuA4oig08la+f5mu/2nmkNx4juGw==
X-Received: by 2002:a17:90a:7881:: with SMTP id x1mr5374040pjk.102.1629995413165;
        Thu, 26 Aug 2021 09:30:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls3412544plb.10.gmail; Thu,
 26 Aug 2021 09:30:12 -0700 (PDT)
X-Received: by 2002:a17:90a:bc49:: with SMTP id t9mr5254772pjv.48.1629995412238;
        Thu, 26 Aug 2021 09:30:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629995412; cv=none;
        d=google.com; s=arc-20160816;
        b=oDO014O+Z6T6THIEvb8SqgrGgW1ADvvFL1SGUjoyO4U21BLAkomHLD8zcRWEdLZXtD
         XWc9Yepm/lG4c9y8zEHUs79rTrE1BJgXCiMcSr5UQQMDJvvIdkbI/V9GWBrSYhnF5oKY
         EksTx1T2jY2HA4Bt0p1iRBYJZoqf5j+mLhmzH23t/PWDIVq2fAIR0FPa7ZJsoFxFZAqt
         8BP5KRGNDYql/Vc36/BPfkCKQ8Uk6wnqy5tMvM2Z4s5oY6T+2y7tgKhhS5wDf2pCaoTP
         xSk12iileYzjLN/a5khNq28ukULvBHD6GofmSFR1MlR9S5cVGP3krNU30CWc85xF1F/j
         Kv7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=PR6KS+LXmrB0wt1ro7MtuwxKA0BwjesWn81kF/Hh73o=;
        b=S7e06oROOY9AvLDB1JLDE1yKahn4cnFpz8AIz0Mh3e7K5cVIPK9xY7UvSS2pxTalX4
         ZT/DhpXbPPyNkJNetFNSOUNdi2DGeEEQ7nGLx0SwgvxGNyy/1HxX6NPwpZdbYJSAw9Ux
         d9rQtmPOZlbBLzjZYGm1b+CfXftUQ5IlnoujLEvXW3vusWTkgbdTuGFBsmQ86R5lB3kL
         Cdf8V+3V9KgZ72Em8YF/K0KXtBNnvkx3IRukNIdcHjE0KoEewY/EBKzMS+uxLzTCZgtu
         G5vF2VrS4GnDxxwAknanmK18I0C+c5LkdDYobSvK0hOWlXiqt7SpX0y5IYEzcy0F5uup
         yuGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AM52ANEj;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id nu6si498368pjb.3.2021.08.26.09.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:30:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Received: by mail-oi1-x22e.google.com with SMTP id o185so5308543oih.13
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 09:30:12 -0700 (PDT)
X-Received: by 2002:aca:df88:: with SMTP id w130mr3113319oig.82.1629995410455;
        Thu, 26 Aug 2021 09:30:10 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id a23sm671483otp.44.2021.08.26.09.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 09:30:09 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH] coresight: syscfg: fix compiler warnings
To: Doug Anderson <dianders@chromium.org>, Jian Cai <jiancai@google.com>
Cc: Mike Leach <mike.leach@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 coresight@lists.linaro.org, Linux ARM
 <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>
References: <20210825222514.2107728-1-jiancai@google.com>
 <CAD=FV=VAkWz0QSN7GivNrkv9uv3JKisush4C+Tb-PMpNokt8Wg@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a9aa266a-7481-a991-508b-8c32cd03f519@roeck-us.net>
Date: Thu, 26 Aug 2021 09:30:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=VAkWz0QSN7GivNrkv9uv3JKisush4C+Tb-PMpNokt8Wg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AM52ANEj;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22e as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 8/26/21 9:19 AM, Doug Anderson wrote:
> Hi,
> 
> On Wed, Aug 25, 2021 at 3:25 PM Jian Cai <jiancai@google.com> wrote:
>>
>> This fixes warnings with -Wimplicit-function-declaration, e.g.
>>
>> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
>>          csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
>> ^[[0;1;32m                     ^
>>
>> Signed-off-by: Jian Cai <jiancai@google.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>>   1 file changed, 1 insertion(+)
> 
> Can you figure out which patch introduced these warnings and add a "Fixes" tag?
> 

Assuming the SHA is stable, that would be commit 85e2414c518a
("coresight: syscfg: Initial coresight system configuration")

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a9aa266a-7481-a991-508b-8c32cd03f519%40roeck-us.net.
