Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBL4KTOEQMGQE4HIWNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 883DB3F7EA5
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:33:20 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id z8-20020a25ad88000000b0059a94ada16fsf1060217ybi.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:33:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930799; cv=pass;
        d=google.com; s=arc-20160816;
        b=qipuNyoFt5TswG02rKp8zoPeWc1UhXaeSqarwdhWmQZ4aNj8D4NLeJPn1AmAJ4dpoZ
         ebcJFhjhG23UIoWd2c86QItxcOBJr8/OiINbrFLTDku08/rJ+3LEZWpOaKmFepYXuRIB
         pmx/sp4jXZQrJ8SGsLHM5/rpJqDZuyEdgVHlNRNgKhNeX1TSW/eLOfHd4dMMaAQIOFb6
         fpCormJufxaX+8U5te6VHxru+KcZ76jXKm5orWqK9u0pDbJAaOZb7M/CobGBhIH9au7C
         oYMZJAgdaOvNyo8NTVBiOGOEf+1rHx2OqUwo0PtHbkOfvwFZc+WKhC0oyiQmtyUc2Ork
         wjtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=8kAPfDgaTsu/e9zu40O3f/Ogz8ORQxDS6ls5yedyIvI=;
        b=vosJtekKFhZumi+FcKksuX9J319LJRNTWo+7OvNq5v//JdRWmYvQ+nPqMCV9Dndp2z
         V+Arf0zbAC+PKng4lYAn3nn9MA4g/6UbVnrQqXOckF4Efh/Ga6/WbHHbOGqWDFrckAXb
         HfA5BYQNVhY+utJgdMj+9eZXEKn6TfB0J/LMMoK2dyzME2m8VcYN0kSeAwug3ERw6BkT
         lWPP78LJ14xtgl2Y6wU+BRp5Zr9FxjBVJDfTErKgToRQ9y7Aek1sbSOeO2wEyrmkNmIY
         AQSGLNTp9nH6LnKbLElwc67XDmnRZC6YK36KD+JME95a7meqbar3Ovg9slMu+OxT4uu7
         ToZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HPFOPzBy;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8kAPfDgaTsu/e9zu40O3f/Ogz8ORQxDS6ls5yedyIvI=;
        b=gH3pwtTX2wPfL4mBAEm6Kf8cHVv/xexGNFWEAu2aOqmrYcVQcq8/zuc1NxEzKF2FKe
         Z6v3s8BToyzR3c5HbBF6iiHuRpyjaMuAWJAs9CT8usXKpgCZVDrP31hJQplBsrtd64uH
         c0oBLqVcifwU8TPMeCch8Fke+Sa7LQerikss9FR+8kaZmHcajwmBZtVLrbsOp6ZZTVck
         GqurONOYPsrNJmNGEqliQ4/3xFXahPGFqgqi6je4BWXfbH8YAKlW9f4zxrqvoLliRAj/
         OpB9DXoRhAWhbGpqDgCJxZK8CmUiHkBluF5v52EH13TzyLDwKigBKlGoF03zaCC0GG1q
         7lRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8kAPfDgaTsu/e9zu40O3f/Ogz8ORQxDS6ls5yedyIvI=;
        b=Ai/Z8Zcn/sJMPZWWDFxpnSPwbPf57h2tE/YaCESVJX9cIyUg6Cc8GpYF0EudUlJeFu
         OO46dHNPC7HY946CjqwXxeH4kkLzrfqCizlMDAHZyNMCVMjlCQpmCpX8f45NyCZ07XxC
         hVJNfFa0SMc/iqasU66ao0wX3f4XLy3GQPYf/TL+gk9RZ3BJD2VDX2i0F5woJhFvVJr3
         xgd/rOhdfi6wz9Gl7biG8R2ISqjVjE//5xZLwWMAsPsWzvA67vdob34rBHbRxXWVsurk
         WSN3OmfJHVJ3cvYlHfApIduwaZjcdIivOamIqHcxgwnoPDrTMv+PhDTVMgSrv9L6sm/x
         NHEw==
X-Gm-Message-State: AOAM530VslCROVUudN7cOq5f9O4Zui9KNASzuB+1+2ACiFswKd7xLunT
	lV8zBu7WDAY/jXNdefYEZ94=
X-Google-Smtp-Source: ABdhPJxAeZcaHQBjUjNPzkja/GgUsRzrKA+k7sFN6csn3Oagu1QzwEji7RRgoHB3DbtCGZ49AZWSUg==
X-Received: by 2002:a25:55d6:: with SMTP id j205mr1262800ybb.395.1629930799499;
        Wed, 25 Aug 2021 15:33:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls2058166ybr.9.gmail; Wed, 25 Aug
 2021 15:33:19 -0700 (PDT)
X-Received: by 2002:a25:77c4:: with SMTP id s187mr1304292ybc.163.1629930799024;
        Wed, 25 Aug 2021 15:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930799; cv=none;
        d=google.com; s=arc-20160816;
        b=jDm5O5opEa8HELWPas/GwktnZb8uLpJJVoHmK6T0+M9AOIWOjmtl5spEpHn9yFAsKW
         bME9C68lZxv+mtlG3BDcdS0HIm7uvy2SyWQuZoO0hZCnXDn9+tljykeVLIdPWPMJs38A
         288bKzQgONk9oeuCJMX1f0GHcHun5ZVQddC2B4z3FYFBDNFbJYPigA/fIiyu+52gRi+y
         AJtRHdrpBTZloDpCpE3P4IzYIUq/OV+q8Mg7SawdpmbcNLS+NOlOQFWCjxkXscG1Qq0W
         Ldwvbx8sDuFWenPWIiSD8Oz+Q1qPuPV55LimYgz2y0JRAwT3Bhy1JrbZ92N5qAXjtcKl
         rFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=Kgp5GiEz4WmpnGVoTlE6arLJUO3fxcnpVDrKqn7lWLw=;
        b=LVYf/se1C9Ri7aDkorVrGAd1Zwk7hUly5WBm36h1f1ZQs3fLlO0lOwlBQ/2UC7CrSy
         ic+A7ypDeGx+cw8HKUPHH5ZebRlMm+yB9T3croYAvMcZPW+iZsAInCmjo7cw673hLahZ
         5HpIcYo1tPnfvmv6wGMrf5QXBO2qAZld3Bywwi6vUvWGJBbjGIoM2BMy7q6AVaKyTY5s
         tmiiDcttp1J5BRCohJFIROA0D/cRdWu6PUzOdE4CQUhc1VIDv/dsCtdc0ArnvGC2gFQg
         xqujU3bkQed/IlFkC2qTP7ciYsltw8v73XHx35Q8V4L3aksajRu9ksRwFSOJKrk34kw2
         OBaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HPFOPzBy;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id u17si76041ybc.5.2021.08.25.15.33.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id a93so1949979ybi.1
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:33:19 -0700 (PDT)
X-Received: by 2002:a25:9847:: with SMTP id k7mt1238940ybo.170.1629930798648;
 Wed, 25 Aug 2021 15:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210825222514.2107728-1-jiancai@google.com> <CA+SOCLLyKaEmCSrSNUKfpgPmUxcu8RyZLqZxpmw87BiO=m84Mg@mail.gmail.com>
In-Reply-To: <CA+SOCLLyKaEmCSrSNUKfpgPmUxcu8RyZLqZxpmw87BiO=m84Mg@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:33:06 -0700
Message-ID: <CA+SOCLKS=C6rNHXbbro+qHE2P-_M+nGg9kCdAuZPuZq0-VMLMQ@mail.gmail.com>
Subject: Re: [PATCH] coresight: syscfg: fix compiler warnings
Cc: mike.leach@linaro.org, dianders@chromium.org, mka@chromium.org, 
	Guenter Roeck <linux@roeck-us.net>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HPFOPzBy;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b36
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

The last message was meant for the wrong patch. Please ignore. Sorry
for the noise.

On Wed, Aug 25, 2021 at 3:27 PM Jian Cai <jiancai@google.com> wrote:
>
> Please ignore this patch. The title is incorrect, I've updated and resented it at https://lore.kernel.org/lkml/20210825222514.2107728-1-jiancai@google.com/. Sorry for any inconvenience.
>
> On Wed, Aug 25, 2021 at 3:25 PM Jian Cai <jiancai@google.com> wrote:
>>
>> This fixes warnings with -Wimplicit-function-declaration, e.g.
>>
>> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
>>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
>> ^[[0;1;32m                     ^
>>
>> Signed-off-by: Jian Cai <jiancai@google.com>
>> ---
>>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c b/drivers/hwtracing/coresight/coresight-syscfg.c
>> index fc0760f55c53..43054568430f 100644
>> --- a/drivers/hwtracing/coresight/coresight-syscfg.c
>> +++ b/drivers/hwtracing/coresight/coresight-syscfg.c
>> @@ -5,6 +5,7 @@
>>   */
>>
>>  #include <linux/platform_device.h>
>> +#include <linux/slab.h>
>>
>>  #include "coresight-config.h"
>>  #include "coresight-etm-perf.h"
>> --
>> 2.33.0.259.gc128427fd7-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKS%3DC6rNHXbbro%2BqHE2P-_M%2BnGg9kCdAuZPuZq0-VMLMQ%40mail.gmail.com.
