Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBFE4Q6EAMGQE5R2HAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F1B3D979B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:37:26 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id k12-20020a056830150cb02904ce6f14d298sf1416132otp.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:37:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627508245; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSv8CfWJx3aR2WIi+KaVzvt7Zs3KFQJaG2J4QRkk/gWm6GiUjH2UXKJTFKts3FNO4X
         JFreD+OvCXsqD+sFk7l1ii2gL9h7PgDdU7Mr5Z9h5aJjmKmg9EG245TXLEpgogxrgmxK
         k1+BOxPJsfy8RudfQBPSLzM+QKCQG4AvZ7Oyd4E5dcsIfWl/M6snShG8hL+GaDX4R5D3
         sP4wJeGbs+OGW0csP//l56MAr0vGVmxYeI7K+YXxkt9bqeGIDuY1Amr1FGh8/UjxNJos
         nB7wRGTOR/WXLKGStql/Tjj1IQR2FM85S4mvIr/juCSHP7VBsMOhfmZcQ8iJirl6U+bs
         CYPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=w89SJmThkp8dPjPPOQ7/JwNjpGjl2a6u0Oh+Ih6vpj0=;
        b=xZSZCdww5zTH0zbWGK2+Xo2Bif8HqJJDvo97N359mg7WZ53Zh89774upuDNskzjRUP
         GrkqmT7J5kpTucTy5nskP9P4X428wDEVm3/sPwJ62W9VxwGxqACDhmKOBfTsDerIhykr
         kxAfmC4mIXSgx1jym2sCcuZ5P0tDS3EoH7rTabbjhv8Y93pfLbP3NCpTjIX/19biIyvo
         E87SnA56WakmVYzngasuIsKKfV0lXZ5aqYvkw1IMmcfyrB1UASNfVkFkGg2jIdIqD6YW
         tO0d8wxtn4TCBxne1zSm5SWiwFRbBQ+QBAtGDHg0BB3kooPQoKc6Bjfp1O5udw/N25rt
         NoSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w89SJmThkp8dPjPPOQ7/JwNjpGjl2a6u0Oh+Ih6vpj0=;
        b=Ku3PE0ngdT8EWA8GZtb0ZeN6BwH6h3hjavWF4jk0E3wzWoAtTEolmxHcpUoM2cx5Nt
         SLfkbWpoSAq+qXRPTCpsF7LV+zWLJAPo76BPsJv7QPcb3dX4xT6ZNBW6Ua5v1OuHceEX
         w19iudOKdMEr7OR1VuMnhzZuEa8cIm0G0yFCkDjCQ8AQMKRx1qIzMYJ7k+FMe+/xRF6d
         MKUQUBL9aZVDSy7vl4H5l17MMs8Y10o8ibGrrRg+KDN26hrVwMPoDf94cQf5gbUy0CFb
         c1EtnG2QLFnN/gp6dDbyURqL/bDoauB8707qQ/HD2B1SoL6dwQQlh9lmBLarKFnTYg0g
         kOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w89SJmThkp8dPjPPOQ7/JwNjpGjl2a6u0Oh+Ih6vpj0=;
        b=AROFbYdNU7JhgyiDOIRj7RrsoZ8jULuDs83Pl9Eo9WB2xi+o5FfAZ2vPULYKoi9Zn6
         tVkzi8qqAQobxTm30H7vEXIW/LdWoXBHuAg3TYZy/EWb3n9vWM/DYMVwnhdhQn4DX/dq
         l1ebkTRf0TKI/NnjC8FBV6rAHUyOZA4r7resX292PFvXUs9xDwKKzBfKwZ3BqNmq+cZE
         2yh7UVl/33z+KBK7dHTqcp08yTgM5IddyV2WqGQYGZkrBXrYVyP5Iaq5oK1OTg+GL5Zx
         44o/QbQumaxQC8RYRDPJzvP2R9qvnUQUkljRVeYnsjGwgoR01l+2vOCwN2l9J1TzXirR
         ACjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/w4OujPXs+GVWgVhLuHy7WFiv9m6BmSWky3SjCJSBrGMYHymr
	zw4CyiujmGTRiUbnC05X+Bg=
X-Google-Smtp-Source: ABdhPJzf4T6GWpL98wMANei3puHgN7JuMfEXxINyz0f2Noxa02cEBDkEvd4AmgoAZTmDUmX+KQ/SkQ==
X-Received: by 2002:aca:48b:: with SMTP id 133mr983245oie.34.1627508244693;
        Wed, 28 Jul 2021 14:37:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:352:: with SMTP id 76ls938398otv.0.gmail; Wed, 28 Jul
 2021 14:37:24 -0700 (PDT)
X-Received: by 2002:a9d:2cf:: with SMTP id 73mr1371765otl.314.1627508244225;
        Wed, 28 Jul 2021 14:37:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627508244; cv=none;
        d=google.com; s=arc-20160816;
        b=Ws2OwnQZQHXVzD/6n4VkubFw1vr0qEJFfliWwXDNFWHYL2DfLBzgBr9bkSyTYFJp1N
         qoHZTEMEDonX5SJdqnri4K30lWPsM87SoyogFZrMU1iJE6ijIWuV+4g3ZkSspay+OJHL
         JpRZ/KNdc6SbtG+Mi3zo02cW+Klk4LsMRUoEXuqG1ijT577FI2fmw9jdNX9JmtruPUJu
         pZGEUE/jb6Cfa6w0bBktNzJf04qZipXdSe+3QB1v7RyQo+6DRCgtwZ9cU7c9vYKKvlUW
         g6q68B0j/zjP5tG3OlLxwr4LY0vKnc6tdqA5MWT2QPfUKnE4fxaRZXd4XxjQdwjRMnsz
         wGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=CSb4kSgsWGnwPSdmUAsGp2plOhe3boBZns6CpvCX17k=;
        b=NK04qbmMQaHxooe8AV8BN7q3nkHfUlslC445mcgTX8s5+41q55OL8hzkJMZb5mRsdx
         rqhrjlfRIfcdNg0iWVQaUxobsOhQUpdp0GbDnySSzM68eQ4ujsJZ2slwJ9MY6xF2RCb/
         QxStJgtJum933czX/XjkvJHaXNIalo+yQMXZKwp0hek1yB6EYuPCjgxfRPJgZRikUoac
         x8MLgBzvXalA4pp/hJgJPe0DJNMx3VsK74mOE9GqMmH0dHhl/ufeo6XQkC/+yCKtrda9
         CkxmGc5MY7dNVsrOS7zCgamm2dl0QOCEZXKguQgfOLwXLqe2VMgq1kTXHhgUX7venqV4
         sm/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com. [209.85.216.50])
        by gmr-mx.google.com with ESMTPS id j26si136909ooj.0.2021.07.28.14.37.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:37:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.50 as permitted sender) client-ip=209.85.216.50;
Received: by mail-pj1-f50.google.com with SMTP id k4-20020a17090a5144b02901731c776526so12192264pjm.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:37:24 -0700 (PDT)
X-Received: by 2002:a63:1926:: with SMTP id z38mr816981pgl.451.1627508243326;
        Wed, 28 Jul 2021 14:37:23 -0700 (PDT)
Received: from bvanassche-linux.mtv.corp.google.com ([2620:15c:211:1:3328:5f8d:f6e2:85ea])
        by smtp.gmail.com with ESMTPSA id o8sm693212pjm.21.2021.07.28.14.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:37:22 -0700 (PDT)
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
To: Dan Carpenter <dan.carpenter@oracle.com>, dsterba@suse.cz,
 Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, nborisov@suse.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz> <20210728091434.GQ1931@kadam>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
Date: Wed, 28 Jul 2021 14:37:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210728091434.GQ1931@kadam>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.216.50 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 7/28/21 2:14 AM, Dan Carpenter wrote:
> On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
>>>   drivers/media/platform/omap3isp/ispstat.c |  5 +--
>>>   include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
>>>   2 files changed, 36 insertions(+), 13 deletions(-)
>>>
>>> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
>>> index 5b9b57f4d9bf..ea8222fed38e 100644
>>> --- a/drivers/media/platform/omap3isp/ispstat.c
>>> +++ b/drivers/media/platform/omap3isp/ispstat.c
>>> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
>>>   int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
>>>   					struct omap3isp_stat_data_time32 *data)
>>>   {
>>> -	struct omap3isp_stat_data data64;
>>> +	struct omap3isp_stat_data data64 = { };
>>
>> Should this be { 0 } ?
>>
>> We've seen patches trying to switch from { 0 } to {  } but the answer
>> was that { 0 } is supposed to be used,
>> http://www.ex-parrot.com/~chris/random/initialise.html
>>
>> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/)
> 
> In the kernel we don't care about portability so much.  Use the = { }
> GCC extension.  If the first member of the struct is a pointer then
> Sparse will complain about = { 0 }.

+1 for { }. BTW, my understanding is that neither the C standard nor the 
C++ standard guarantee anything about initialization of padding bytes 
nor about the initialization of unnamed bitfields for stack variables 
when using aggregate initialization.

Bart.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c52a52d9-a9e0-5020-80fe-4aada39035d3%40acm.org.
