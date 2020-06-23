Return-Path: <clang-built-linux+bncBDV2D5O34IDRBFVCZL3QKGQEYGQIKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D74A206876
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 01:32:39 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id b9sf197386lfq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 16:32:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592955159; cv=pass;
        d=google.com; s=arc-20160816;
        b=NbJOoRPmYq6ZrS5eluTE6RYtHYQOUi//YL0Cba+JqBJWtLgEUQKwkSZGuFAHa0/e7S
         Rglsvix5qdfEO80g6TdrbD3slp+5auMqdQg6wJoQ183mWHofZnNP5holKRQIQI0XEs5u
         LO0cP1qap3dsAVlMRlTsaw+KSNaDPARnMXJlXKLWTK5SensY06XXpuYwq5g6QRu9liwz
         lWB2DRWe9oBxvUzpSoObqV1PxephqlRb4hUSa1/+rHWL0yr9ieSVjdBn6xjhtNSMCMaZ
         CqAZ6uTXtdmIDsPpQZGi1ZDwDR+zayBSYKHTyKMqPvJB11o8YBu8qnuojUGX4iZ8m9ML
         VlcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4xkh9HbJ3SfSieDOtpDYC9cXxbb8Z5aPuoi9XEs95lc=;
        b=HNzPtBIx+FMW6nAeqHb+MDYdHPJw1TxM/Ze9KRCuav+EY/IZ0Iji58d6sX4UstY4AW
         uQ3pgur9bp8aNtqHzlV7cNuZhu7/T1htJCSqgi8sTRn+iponvKm2Cf1y8UFVi1+/h+Zp
         2JhI02Rsi4nMVj5PJEgSnZBrHdgI5agBlArhpjtgp0Dc0Uw56uARvu9NTT9fGlI01nZO
         x0DUBy6j3BVn48nAzA3s+elyS/hggESeHd+a+DGHNBRaHWjUXoqxlw4B9idrlGzGMXFV
         grwH88Cz98trolw16VIJVN5Cu/LOIcZmvLBO0AGNKVCHCEUNhG0VDfljJ3aplAanzR0c
         zKyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=L1snu5U2;
       spf=temperror (google.com: error in processing during lookup of rdunlap@infradead.org: DNS error) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4xkh9HbJ3SfSieDOtpDYC9cXxbb8Z5aPuoi9XEs95lc=;
        b=MBxyZfbu4rJS7xzaLjVx9yE70agV5Gk/3Jp1Qv0TtNdbO6qbzk8xmSGqoWxNJ0Mt2Y
         3m0NcOOEixgixU2lhzwah0rleIe3awlMmXQjArJ9HrH6SMaDYT6ErbO+OShiFH49gZHX
         qtBTEMI6RthDjgfdNQ9ZZ01RJ8Pb6oMzWb+9yxdScb/hxf8Q260UN2P6QVb2qMJuzeoA
         NJLedAYW3KsRvVQgMIptxKnNlNqiVtOv0bLd1XWVBWi/bKu8cdS3CK8v6BdYmFunKt1K
         7JLg1u8Bvh2DbZRdk/VUOUv7Wyixh5AXNln2lMv/4LWzbS4kV6f9XSm61SDjUAKpMy2M
         8l2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4xkh9HbJ3SfSieDOtpDYC9cXxbb8Z5aPuoi9XEs95lc=;
        b=Yp/GSHGEiM0N5GpOImbLeelFoGayNIEoi1ZjeRN6QTo8rOH7ntJ56jEMcwbRK2T1gc
         FX3QfGah/82b+4WYlWfbsZ8BWbrhmkmrsZKJcKqwiyrmfq8OcclXX4DiPf7dNsJ/o7+p
         A3QAlqeABB1bAPkco9OFkKz5wQwujWUnAQlhFDK3LqKBjJLO+k85RLImY8nC100UBOok
         bOx1SIuWvGhDzZyVXnFXG/AptU3IxLCzqKIG4PjWmmdxmbxP5R0HsJThcBTgeU7LAUrS
         OEEOWM5UwF4MsYzPwU1LP248Vm0O7uMs+DHlMIuHFnF+xFk3FFeCdve9ItTfri5GS86i
         7vBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oaE108WyKa7Mz7LMrOcHbO6+W4zqnUWZtwamfWmoS8RZjrKfB
	Z43BEbj34bSLKmmSTnfl/ts=
X-Google-Smtp-Source: ABdhPJxuToFUuqpaoOv0rcHUlHuokU+b+GaxFAWiG5u8elwvu5o66cKcb+GVxJxmijMup7JUYvKFAA==
X-Received: by 2002:a19:1d1:: with SMTP id 200mr14129720lfb.57.1592955158853;
        Tue, 23 Jun 2020 16:32:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:864a:: with SMTP id i10ls57879ljj.8.gmail; Tue, 23 Jun
 2020 16:32:38 -0700 (PDT)
X-Received: by 2002:a2e:8184:: with SMTP id e4mr13023790ljg.334.1592955158320;
        Tue, 23 Jun 2020 16:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592955158; cv=none;
        d=google.com; s=arc-20160816;
        b=DIAikDtS9XdbErNLUdwuUbALIjRa2BMLy7Rfce3HYFgUZ1MKC48zQj475agq3o5lE3
         4/8FHzXSsXyDJXWfN5RM7ruZwvqZAyP+B2d12gCk26tPpb/XQawYLJIrf+oWVv9yWRfL
         9W5Kc17OWGvA0lDvcfhZo2tiupREQDzxngy8wWSMeTTmmqeVPevIA/w21ER4tvBu1sBy
         Og5JmaHEuslS/5Q70lJpSXy6XaK7IX+nv73Xx3A/T0RS/o3kiB1VY8ylE4sg6mzPhmnb
         3PkFT0/NIEtkZEtU3IbLawNvo42YrnvI87/q7SDz05Omu81BwrGyO1zbDMeCp6teDfnQ
         8q/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=OVsi97xHW+lEj+KUOG+QvHgd6uEp9tOe09/6am2CW6I=;
        b=YZ1M6II/UL1DT+wcObQL+oz3Dx1oMuNRYqXV4JAvagaZz9unG90ZdMWZiKPiNfcIz7
         mWBoWt9jmZjPNgl2wP8YShbSZC+i09wVyXlG7V3da5CynHH/YEfEghnhCLSKZ7G1bkPu
         TxukarAIuPJ8556G37J4USh7sHmwAZvfof//X1IWl2+AZe0s38Ki4M3aB/NOXYvlWpKF
         k7H5nWZzuAaPnG9zeNhOZKxM7Z99Xmp5tZ+ACdqZnqFH7G8I2Ippqf3KvugjvkNIwPca
         tFHuI4Q0bR6YOeQ55Vfs4azeNUl0T5xeZ3pX02Xb2y2Asshnsh4S5MssH3dAMvOQM1iy
         SRsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=L1snu5U2;
       spf=temperror (google.com: error in processing during lookup of rdunlap@infradead.org: DNS error) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j19si961988lfe.2.2020.06.23.16.32.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 16:32:28 -0700 (PDT)
Received-SPF: temperror (google.com: error in processing during lookup of rdunlap@infradead.org: DNS error) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jnsOn-0002OP-Mn; Tue, 23 Jun 2020 23:32:18 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, linux-kselftest@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 richard -rw- weinberger <richard.weinberger@gmail.com>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
Date: Tue, 23 Jun 2020 16:32:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <202006231610.4993DC5@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=L1snu5U2;
       spf=temperror (google.com: error in processing during lookup of
 rdunlap@infradead.org: DNS error) smtp.mailfrom=rdunlap@infradead.org
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

On 6/23/20 4:10 PM, Kees Cook wrote:
> On Fri, May 29, 2020 at 01:03:43PM -0700, Kees Cook wrote:
>> Hi Greg,
>>
>> Can you please apply these patches to your drivers/misc tree for LKDTM?
>> It's mostly a collection of fixes and improvements and tweaks to the
>> selftest integration.
> 
> Friendly ping -- we're past -rc2 now. :)
> 
> Thanks!
> 
> -Kees
> 
>>
>> Thanks!
>>
>> -Kees
>>
>> Kees Cook (4):
>>   lkdtm: Avoid more compiler optimizations for bad writes
>>   lkdtm/heap: Avoid edge and middle of slabs
>>   selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
>>   lkdtm: Make arch-specific tests always available
>>
>>  drivers/misc/lkdtm/bugs.c               | 45 +++++++++++++------------
>>  drivers/misc/lkdtm/heap.c               |  9 ++---
>>  drivers/misc/lkdtm/lkdtm.h              |  2 --
>>  drivers/misc/lkdtm/perms.c              | 22 ++++++++----
>>  drivers/misc/lkdtm/usercopy.c           |  7 ++--
>>  tools/testing/selftests/lkdtm/run.sh    |  6 ++++
>>  tools/testing/selftests/lkdtm/tests.txt |  1 +
>>  7 files changed, 56 insertions(+), 36 deletions(-)
>>
>> -- 
>> 2.25.1
>>
> 

>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?

> True that, we can rip the file.

Has anyone fixed the uml build errors?

thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2356a78c-750b-538f-3d64-b9c78aff89cb%40infradead.org.
