Return-Path: <clang-built-linux+bncBDRZXY4CYYORBYOK6DWAKGQENH65POI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B09CF24C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 07:57:55 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id e14sf31241747iot.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 22:57:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570514273; cv=pass;
        d=google.com; s=arc-20160816;
        b=GA+/+oKT96QeYh4s4+d4cY3v4nNqWkGuDPvF1zMvHhwMulH0VWBwsqcyW+l0T96o4J
         CtlJtlIs/c9DQcYDyjP65tmA62FLOO2k3LcCAbaKynqLZUOpaWb1C07Fu6AGGfRCDDmZ
         7EGvip+k4yxyh4fMhJA3WgxYl2GSH2T6n4qomZNsmlc2TvUyEVOe/4BUfxuR17ZvqxNQ
         QO1wnEHUwa49txFqqdUK+9oP6Qk1H3NUSzAknifxlZsT6rJHe6qSmUZUMx/2QIV6ngXZ
         L19louk9yc45AiA/43qDgOD1c4w90g/+wViu3aG/T6VVNQB0D1+NXEplI70Bca6RvsEn
         ZGBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=110d9SHzVx1MJK+y6GCX5A5bU+nwtrW+wp4g3Xyy11Q=;
        b=0/iZVBmtMptsArPPqR6OXno7WZL2R2YtC6G5+Ljy6sn9w+zYLU45UZcyf0AKaKYNU5
         Mpj+Uzv2BMFVMBb0uxWA0BMrg3ju8JekTAzWPkPxxKcJiWB4Afxd9qZb0sH/Ud3jeZZ6
         1gF8yxix/DNWSpT2R4VLWi++iD1Yiwpmk+5WDjRdCArN4NgjaUmPktxyIS7xj/YlV7uq
         PSWm4EDAIdd36U9cgQy3xQULCii/oHHnB6y3b9h5w7kg/PfarW4BdyJx5/vPii9G11ZK
         P/cz5APZFjLC6KBEo0goh9ONFrVrRh4cMUM3KqMdz4Iov+6ZYeIvUWlLYTPom3+b3xYt
         QlEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=110d9SHzVx1MJK+y6GCX5A5bU+nwtrW+wp4g3Xyy11Q=;
        b=KpzN/i9aXZZ2YzGSx3o7spFtdVjLz6oUF1jeVGEWVZQDbmODgIV4A2UBHVXUOYSmxC
         siEprcl6tGSFaGJ0hWJwIl8BUOFPGLsZ6KSiaxYt9bZeaeug+qForuPVX+l/Y4RP5PxL
         1p2HUyb33ZaK6qPmIx3PItUylDLETw/G8GbiUqdEKA3hFNorf84w+rEXR8YnnydKGAPO
         YllGtXytcdBM368qEQ/g+DfjwcEQHMmEmkQhGTJOET/jwefnO0Ikx+9hExdeO3JQbetx
         ocXzuJ78H1k3KrjYgXqHizgiPokeatWlJGcQatPfU5EEsZq1ZrOR0Ylcf5g48v3/uvDA
         W0IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=110d9SHzVx1MJK+y6GCX5A5bU+nwtrW+wp4g3Xyy11Q=;
        b=E1uzP9h0SAUYpr2bH4XjYCp/pdl365IO2I+Cr+6IAg59xYISRKb71ujurDCLakQPQX
         LjEmrQJw7mI0Ap1jrYQOGnxCcn/Gj5RV7Ted8Ppc08NfmqIEJD01pzT+AAtkDGJPddSg
         wuRRssbGn/+gG2gjFb5FtgAB3pcv852x6i1vhMe76HhKvlaFdcxZvtbRBwTm1biBl9Hq
         hdjR8xfEvDYB+jsNIvfd+FLrUeL17qirmoziLP5QYMlHe83/6IaR6uyUkOWlqnKqBbPj
         j19pO4LfzvVCOiru4MAMdFTKhQ5evOWUQNyqMYlSSZhJYwN+dsQyBmGM47iZSGQqlw0u
         vqxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVk2LvUg5UqO5Lgt5ABmBKU5cp+KQYw7yXtK6DJ9W0JZiAFEEWA
	VgJeqk2WawQD6iSN+vbBeyc=
X-Google-Smtp-Source: APXvYqwdBNSwBd3cifMPjbyV9+fvj7/UEebN+b5QozVoRsOPuXIgWndQRBbxS2YXDOGP6FqFzvezdg==
X-Received: by 2002:a5e:c745:: with SMTP id g5mr1126303iop.9.1570514273768;
        Mon, 07 Oct 2019 22:57:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:9108:: with SMTP id t8ls488178iod.14.gmail; Mon, 07 Oct
 2019 22:57:53 -0700 (PDT)
X-Received: by 2002:a6b:680f:: with SMTP id d15mr16132912ioc.52.1570514273250;
        Mon, 07 Oct 2019 22:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570514273; cv=none;
        d=google.com; s=arc-20160816;
        b=P/YeaCl9M+sqpgbvvoMMz8uRG+zGmkG9tpMH/MSGv8fq2lLR/MnMVr1VSTJ8Nt4qG/
         MlhOHJRtpI0RXFyEj6Ve9CiW4rlBby+c7b9jCGy3l7cTz19JvetpJhJ4qhrT/+qjWGPg
         hrziKob13WgQar6HrZP8Zevgd9HyihzvXDAZB/CZces4TDMljNJ8LrR6h7UAqRI5f6aZ
         +WCNk9Jua6HhBpr24JiZhumGGK2ifAWz06s3C/S0XpWagMGmhmxiTSWYNvy3dOBD03sz
         ynhKzB8BByS835TwEX15axE5UpZykpazeOzND1zqt4R0mnQKSQfPlWlymqDzQgt2prqP
         aM6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=96PxzNS/roeRm2gnd1um4lvGRp5P7xMQ5XDPc+SliqQ=;
        b=Pa9Azii4QJjUyw8gf/EqbVW/B76m62Prth7kdhgvWmmbKKXbAQhS8n1iuE4zPysDiZ
         ymG40U5ZmQQRlCwO58x/CzoUST1vk8RPAMI/06EkUlNpgv7WZqvEk6M4ZlkR/PWIqmfb
         CJXvIXhU61PYDhmPoMYSpk1kzoP4dc/8EhuseUcgmbL4L2yCgnhx2GpqPVGfRdwvRRi6
         cUd2ka6igCqOiIQnCLDkrbDWb4X0runelbsCsHFuMa7zAWdi6VVWfHZxZ1Y3/eq7kXPs
         0gK36In3DcqUmWmPCNsyOEX0WnWVzDvuVhF2XMczIYdzAUs+Qb430tZqjueLKBGsTby3
         b9WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id i8si927527ilq.4.2019.10.07.22.57.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3D890C04AC69
	for <clang-built-linux@googlegroups.com>; Tue,  8 Oct 2019 05:57:52 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id m2so10477213eds.12
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 22:57:52 -0700 (PDT)
X-Received: by 2002:a17:906:f204:: with SMTP id gt4mr27096783ejb.299.1570514269679;
        Mon, 07 Oct 2019 22:57:49 -0700 (PDT)
X-Received: by 2002:a17:906:f204:: with SMTP id gt4mr27096740ejb.299.1570514268755;
        Mon, 07 Oct 2019 22:57:48 -0700 (PDT)
Received: from shalem.localdomain (2001-1c00-0c14-2800-ec23-a060-24d5-2453.cable.dynamic.v6.ziggo.nl. [2001:1c00:c14:2800:ec23:a060:24d5:2453])
        by smtp.gmail.com with ESMTPSA id gl4sm2147160ejb.6.2019.10.07.22.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:57:47 -0700 (PDT)
Subject: Re: [PATCH] x86/purgatory: Make sure we fail the build if
 purgatory.ro has missing symbols
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20191007175546.3395-1-hdegoede@redhat.com>
 <20191007200529.GA716619@archlinux-threadripper>
 <c24d8bef-ad76-4986-0c16-268e7d09bf7c@redhat.com>
 <20191007215213.GA405660@rani.riverdale.lan>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2b54d142-a2e9-2caa-8ff1-b419ed880601@redhat.com>
Date: Tue, 8 Oct 2019 07:57:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191007215213.GA405660@rani.riverdale.lan>
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

On 07-10-2019 23:52, Arvind Sankar wrote:
> On Mon, Oct 07, 2019 at 10:31:49PM +0200, Hans de Goede wrote:
>> HI,
>>
>> On 07-10-2019 22:05, Nathan Chancellor wrote:
>>> On Mon, Oct 07, 2019 at 07:55:46PM +0200, Hans de Goede wrote:
>>>> Since we link purgatory.ro with -r aka we enable "incremental linking"
>>>> no checks for unresolved symbols is done while linking purgatory.ro.
>>>>
>>>> Changes to the sha256 code has caused the purgatory in 5.4-rc1 to have
>>>> a missing symbol on memzero_explicit, yet things still happily build.
>>>>
>>>> This commit adds an extra check for unresolved symbols by calling ld
>>>> without -r before running bin2c to generate kexec-purgatory.c.
>>>>
>>>> This causes a build of 5.4-rc1 with this patch added to fail as it should:
>>>>
>>>>     CHK     arch/x86/purgatory/purgatory.ro
>>>> ld: arch/x86/purgatory/purgatory.ro: in function `sha256_transform':
>>>> sha256.c:(.text+0x1c0c): undefined reference to `memzero_explicit'
>>>> make[2]: *** [arch/x86/purgatory/Makefile:72:
>>>>       arch/x86/purgatory/kexec-purgatory.c] Error 1
>>>> make[1]: *** [scripts/Makefile.build:509: arch/x86/purgatory] Error 2
>>>> make: *** [Makefile:1650: arch/x86] Error 2
>>>>
>>>> This will help us catch missing symbols in the purgatory sooner.
>>>>
>>>> Note this commit also removes --no-undefined from LDFLAGS_purgatory.ro
>>>> as that has no effect.
>>>>
>>>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>>>> ---
>>>>    arch/x86/purgatory/Makefile | 8 +++++++-
>>>>    1 file changed, 7 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
>>>> index fb4ee5444379..0da0794ef1f0 100644
>>>> --- a/arch/x86/purgatory/Makefile
>>>> +++ b/arch/x86/purgatory/Makefile
>>>> @@ -14,7 +14,7 @@ $(obj)/sha256.o: $(srctree)/lib/crypto/sha256.c FORCE
>>>>    
>>>>    CFLAGS_sha256.o := -D__DISABLE_EXPORTS
>>>>    
>>>> -LDFLAGS_purgatory.ro := -e purgatory_start -r --no-undefined -nostdlib -z nodefaultlib
>>>> +LDFLAGS_purgatory.ro := -e purgatory_start -r -nostdlib -z nodefaultlib
>>>>    targets += purgatory.ro
>>>>    
>>>>    KASAN_SANITIZE	:= n
>>>> @@ -60,10 +60,16 @@ $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>>>>    
>>>>    targets += kexec-purgatory.c
>>>>    
>>>> +# Since we link purgatory.ro with -r unresolved symbols are not checked,
>>>> +# so we check this before generating kexec-purgatory.c instead
>>>> +quiet_cmd_check_purgatory = CHK     $<
>>>> +      cmd_check_purgatory = ld -e purgatory_start $<
>>>
>>> I think this should be $(LD) -e ... so that using a cross compile prefix
>>> (like x86_64-linux-) or an alternative linker like ld.lld works properly.
>>
>> Good point, also the ld command is actually outputting an a.out file
>> which is also something which we do not want.
>>
>> I will prepare a new version fixing both.
>>
>> Regards,
>>
>> Hans
> 
> We could just use $(NM) -u, right?

That would require wrapping it in some shell code like this (untested):

SHOULD_BE_EMPTY=$(nm -u purgatory.ro); if [ "$SHOULD_BE_EMPTY" == "" ]; then true; else false; fi

And then escaping the $ in there and in injecting $(NM) into it, IMHO
it is easier to just do:

$(LD) $PURGATORY_LDFLAGS) purgatory.ro -o /dev/null

Also it seems better to actually use the linker for this test then usig an other
tool which may have subtly different semantics.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b54d142-a2e9-2caa-8ff1-b419ed880601%40redhat.com.
