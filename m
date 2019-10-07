Return-Path: <clang-built-linux+bncBDRZXY4CYYORBOWB53WAKGQE4TUTFEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 12716CED76
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 22:31:56 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id q18sf28556786ios.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 13:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570480314; cv=pass;
        d=google.com; s=arc-20160816;
        b=dw9O0i+/nE3x3LRW/Um/MFHK7t3M7FOGw+tYpXxKuQxIatcgzPBUZkMYRgbqvrNVG1
         Cm7Yw3cNZ7XtnLgpty4+l245SGCIBl8N2NWomPvvr89fQEigKmcgw7/mAp11Yg0G/yU2
         XLFulAe86/hpF1BAjecRrQoJCNmPgw4aamUQypXPTvEqvuUQRlqzoVIz8eBmc0qGZZEz
         Peic1HbqHorhPhXF5P4CJyuDHNWWF39ZLKUzsZFSkvTqmJ1afZz08XeTfovoFVJwlFhz
         smoCwiW48hbtRxPkAGb3z5u2sLjH83h42DRwlb1qpH7ROOGSfTNBGkQXK1DLYOGTdM8t
         g0qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=eygWt30MII5NAXpr/h3eBGtoJCpkQYVjRR49KfgvI0I=;
        b=XbcMg3oIW8SFbTrxirxM9+218C0PekzcHMwo8JFrmh/Ud/E9COChUXll/3QzBwlsNR
         eBR3JElnTmcAhbL9T7ke7P4wxZw1+V2/FEXFEXqutj6pvEwNdJRZ5hwmyvHAZ34wyQmC
         64DenrK0j6mhnFwybC1gnvtN36XbZCeif9m/E00ygxz2Y2t8UkbrKcSMQCc/bDpJI9Sq
         gJq3RoMAGauuHyw0DWxY3u98KWu0aGqczyhs3mTLvV2QPMOaIl8kKPqe7kopBVzc7Ygr
         GcJ/O73HAFQpY9S9AlqGrvaoROGEAjbLtF3Jxzbxogcw9tPmVP/SQjM9Lew1/eMgT1YX
         9zuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eygWt30MII5NAXpr/h3eBGtoJCpkQYVjRR49KfgvI0I=;
        b=UdZPKYEE1TLntrwMwVVsO21hz00purwmxwPxxvbljquwRgX6UigA1OpprNnscL0l9d
         nxBEnZcrUzDDLwXPZGJ8bN3ZhQ9eN+9cX94dKQdR9OcsikeLAUwh//LXXsCdKbImS+dX
         p2eHAdEWCLi2TutGiJYeyDJvQP0VyAY0W1vzrE4KXn2ITV+uaNckqWbeBhKEi3vg+rSU
         fs8Po6AevzGi/Gfja5v+IENdKoCUXC21wsG51hJOHcgS8VVveH27viuUtNMMWYu4Bzgz
         5A72E9fx2qNVz5BuZzULx0vUyVocjHB69YMmlEU1dDF4PbGcrqjLsBltfVVluyL8+dp6
         FDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eygWt30MII5NAXpr/h3eBGtoJCpkQYVjRR49KfgvI0I=;
        b=PyZCzbKkUjjHErWw8Zyeiaj6B8bCf0NwI3/wU5wrtFvOcc0o/Yt9df4M0jrd31teY1
         w3ZjVll+/qlXSNp93uKj0iXa+266T6honi6O8DSiddYDq235PSObByxiCx+bxKpC2Iz1
         y9jNte2Eyn+kruH8hm7p/nsrvQccO6P0uW8mgGTEp+/ECRMjNjoJWb7dKa0QJ2S7CDKZ
         pOnvxKCcZBri83jURq9FVEdj5KdroEtuI5L3TTGtw8YBoM4I4PkvqhE8oKPlKVyY09La
         Z/SPYOwRfHNjywB+24vtGKjDGgVwYqhSa7VpHEzAoUVxt++x9EBkQ3lZcYo8mraYobBC
         pWmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMOkBc6uyPg8Jr2FhQRHiiey4liTyUJRfXzNW08fdm+VKP9DBc
	DLTokPahk8zzO81VS94O0JY=
X-Google-Smtp-Source: APXvYqxMctEvNWSnSFq+Bk2/5+ra6feM7fJ1tgqu6xJBJTlUA7L393A+YgO6bhJQOFidjVpt2rDEVQ==
X-Received: by 2002:a92:7ecf:: with SMTP id q76mr32210395ill.134.1570480314469;
        Mon, 07 Oct 2019 13:31:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5d01:: with SMTP id w1ls93328jaa.2.gmail; Mon, 07 Oct
 2019 13:31:54 -0700 (PDT)
X-Received: by 2002:a02:c983:: with SMTP id b3mr29027018jap.120.1570480314089;
        Mon, 07 Oct 2019 13:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570480314; cv=none;
        d=google.com; s=arc-20160816;
        b=A2pWOW5+bIGa0uAKgK4OspJ61ztJZz2O9VOULZfFdm/nncxNIj0FlQdOY8m/qJo6/x
         kD36pV7DgOaOyr02xnb/UDwSqXYGU+vwEL7O6P7YuApGhqzl4QhYsCUV0/n7sI1gvcRc
         6J75Ww6kqovLxICCqSXRQEuolQ+8/QHMw428e359SiS1cRtHqDAVFvv3KrgV7GEy5bjI
         FHz9kRoa7asag3AOtYcccO3rd7zSR60P0n/toWFJ/gJnEEujrllBJ7X+DAnsaCv3LaVM
         s1tIdWGiy/WpK/z4/jY4c/oDoHtPn5hDryqtIIBCz72Lcna0XLap7plci7EozL0Yh5Lj
         4/zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ZahjNxBnWmuuim9IzUhby0wk2/Lj6XTRdRHJ5wVrf9E=;
        b=otm6By0midJgoKqxQPu+VFbipxkzPejqn2XUGq7r562/s/33HSTsvCOXc3Ps7Op74p
         OHT5jQSWN8MAPaMt28o8uVrlc/TirqPVa/aSxwqv1aQbH5yzbt7X/fr/9kingNcd6wcF
         /RW31o4weXfuWIruEsHu2xLZDR4pAVd3wEq3Nh3dpNP1i9FSrh5LhenPD7k8kQ+OIE1S
         ZLOdWSehTVOR1u4flbkNyVV+VwSetwh4vp9JprxI9Goub50n9dkymO8Pv9/Aq+/AwEnT
         vLUgLDI9jiMMmaduSnMYW84mkFdcxP1OTBkr7igBanfCSM0MgbQzzcWSuTz9gMeq4DoI
         EHhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id x3si453163iom.2.2019.10.07.13.31.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1B496796E0
	for <clang-built-linux@googlegroups.com>; Mon,  7 Oct 2019 20:31:53 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id s15so9793105edj.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 13:31:53 -0700 (PDT)
X-Received: by 2002:aa7:cf86:: with SMTP id z6mr29916235edx.230.1570480311310;
        Mon, 07 Oct 2019 13:31:51 -0700 (PDT)
X-Received: by 2002:aa7:cf86:: with SMTP id z6mr29916216edx.230.1570480311090;
        Mon, 07 Oct 2019 13:31:51 -0700 (PDT)
Received: from shalem.localdomain (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl. [2001:1c00:c14:2800:ec23:a060:24d5:2453])
        by smtp.gmail.com with ESMTPSA id e52sm3525184eda.36.2019.10.07.13.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:31:50 -0700 (PDT)
Subject: Re: [PATCH] x86/purgatory: Make sure we fail the build if
 purgatory.ro has missing symbols
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, x86@kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20191007175546.3395-1-hdegoede@redhat.com>
 <20191007200529.GA716619@archlinux-threadripper>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c24d8bef-ad76-4986-0c16-268e7d09bf7c@redhat.com>
Date: Mon, 7 Oct 2019 22:31:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191007200529.GA716619@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=hdegoede@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

HI,

On 07-10-2019 22:05, Nathan Chancellor wrote:
> On Mon, Oct 07, 2019 at 07:55:46PM +0200, Hans de Goede wrote:
>> Since we link purgatory.ro with -r aka we enable "incremental linking"
>> no checks for unresolved symbols is done while linking purgatory.ro.
>>
>> Changes to the sha256 code has caused the purgatory in 5.4-rc1 to have
>> a missing symbol on memzero_explicit, yet things still happily build.
>>
>> This commit adds an extra check for unresolved symbols by calling ld
>> without -r before running bin2c to generate kexec-purgatory.c.
>>
>> This causes a build of 5.4-rc1 with this patch added to fail as it should:
>>
>>    CHK     arch/x86/purgatory/purgatory.ro
>> ld: arch/x86/purgatory/purgatory.ro: in function `sha256_transform':
>> sha256.c:(.text+0x1c0c): undefined reference to `memzero_explicit'
>> make[2]: *** [arch/x86/purgatory/Makefile:72:
>>      arch/x86/purgatory/kexec-purgatory.c] Error 1
>> make[1]: *** [scripts/Makefile.build:509: arch/x86/purgatory] Error 2
>> make: *** [Makefile:1650: arch/x86] Error 2
>>
>> This will help us catch missing symbols in the purgatory sooner.
>>
>> Note this commit also removes --no-undefined from LDFLAGS_purgatory.ro
>> as that has no effect.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   arch/x86/purgatory/Makefile | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
>> index fb4ee5444379..0da0794ef1f0 100644
>> --- a/arch/x86/purgatory/Makefile
>> +++ b/arch/x86/purgatory/Makefile
>> @@ -14,7 +14,7 @@ $(obj)/sha256.o: $(srctree)/lib/crypto/sha256.c FORCE
>>   
>>   CFLAGS_sha256.o := -D__DISABLE_EXPORTS
>>   
>> -LDFLAGS_purgatory.ro := -e purgatory_start -r --no-undefined -nostdlib -z nodefaultlib
>> +LDFLAGS_purgatory.ro := -e purgatory_start -r -nostdlib -z nodefaultlib
>>   targets += purgatory.ro
>>   
>>   KASAN_SANITIZE	:= n
>> @@ -60,10 +60,16 @@ $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>>   
>>   targets += kexec-purgatory.c
>>   
>> +# Since we link purgatory.ro with -r unresolved symbols are not checked,
>> +# so we check this before generating kexec-purgatory.c instead
>> +quiet_cmd_check_purgatory = CHK     $<
>> +      cmd_check_purgatory = ld -e purgatory_start $<
> 
> I think this should be $(LD) -e ... so that using a cross compile prefix
> (like x86_64-linux-) or an alternative linker like ld.lld works properly.

Good point, also the ld command is actually outputting an a.out file
which is also something which we do not want.

I will prepare a new version fixing both.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c24d8bef-ad76-4986-0c16-268e7d09bf7c%40redhat.com.
