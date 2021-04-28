Return-Path: <clang-built-linux+bncBC27X66SWQMBBQFVU2CAMGQE2RPF3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6574D36DE3B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 19:26:25 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id el4-20020ad459c40000b029019a47ec7a9dsf24976727qvb.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 10:26:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619630784; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0qtiv8sH3SZlcrM5u74E607Wjb7RZ88j+Qs+uKkMU+j5AkuNPkxWIHT70XDBuwYzh
         ttRBNSnsOlWwFTCr7V1Zs5c/958epW2fCZPoRVHroj5kd3PbTXeKl+rzK0WtAI8frcVV
         U8/59yEkMj/YWYrECl8tkIjwCJRQcV6ad/BdcVoFTk4AvMas4w52ubqKtBOUYwhubgSB
         ChYyFGvcKnJMBOtPeNAJgx+0rmLHp1+G9ODBMkxno/caaZ1yGOBfk3MsZJuv8PHg9yIH
         nYAgq4EndfUc++//lCWBgSyP/45Y4YFHpOgjdf0YZT+PHZo2m5Ml5U93RFPoHjp9KBJ4
         ELMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=MSURfQm4FwsimQ4x4iBiLRT9K/4qQRLqpiL5f+Bnyd0=;
        b=IctXIEGwyPNVZ6XMozqYc+7Iqyke+9z+o2Bavj4gTQR0hIPh5I43akxUnSliQXbidI
         lknd+HxY52x/zqeqFJIk+gvp2Lhj/VKVCdnZ2palqmmEs8CQE5sPrkT/KgarUYZTSwc5
         YVS52/sQR+LwQMQ1/42XEbZlWAWckiuE6ttQDgiPz7yVPJ71JyW+CGiszRZht7i47pOq
         JvdJqlsExjI/JmSAy4ohjSbi/t1+Ime8FNyCygr1/gu1Rzr+KbT1/aAuOP2vwXqzTjXS
         /JDLlGoD1GWNEWmi5DULoZvDGqxhiiMF08ac9f5FhfVRXScc67Jqu0ubVyMDamOulRao
         BmIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jPHfllZW;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSURfQm4FwsimQ4x4iBiLRT9K/4qQRLqpiL5f+Bnyd0=;
        b=GaGyY/CtQVx7bED2j/WMC6efN4YrB8ZZPxHoHPu0ZqvzHZeVpf6qio8Pd2FHZUHAQJ
         ujKypjDrlbL3l++iYoZKWdnL/fgjHDhIBGvq6SbF5e0oU37kPE/vLYfUD5fcl8YAOg/G
         6G6jmlXwOBqDbRcLCWp8suvyNy+9vVAhmvLBaTsEMI+us4IwRNa7kCakaiYIKPZtDR3E
         XYbWxbyVTVnFiqVA6tTcmjzpCDUmzZ0LhM0rs3Nv+2RfGjhrynLVXpH1xaHmSqkCrxPZ
         Y+SJ+uyhkrXoJsytHxVGfWFfwIIDQlKxbnFiGi7HX2LJ9EAV5Ybm/E1aJWnYEFmMrtAS
         hJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSURfQm4FwsimQ4x4iBiLRT9K/4qQRLqpiL5f+Bnyd0=;
        b=k6cwZA9siL7dX+DK0ycqIx8QfUvz1l6imbQ60mHMhW51M4ZcZfX8dtBn7whU8n6BKJ
         fQ/iF+jU9yjKI934VAhfnD0jt3QWIDCZYhq6KThLgdp/e3KC+/hopoZw/GlUqBIYlMT+
         MlkUcFyN8S8NjzJRO4JOGb0uIGR8ZdyAnDa9WMpcswhzJhOvYBHRw/VXohQSeuIHVZzX
         fD1KHUcLKGa5IeNRh2ypfoQ3ADJl5XHe4YNttvKh9j02aG4NQ59FTmZgHF7tCmUXrbJY
         CGCfiD8pM23JCHGR6bRPtH3yra3tvcqpdX61/dKK4kt2oISwcKWSXiq4CJ8LSdy0guDH
         rdzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bvadp39BM8oZu3Qmu2myng6u7AaiJ7bnazhJs6sDjE0SsoocL
	Gv2XYGh1iTWYfEZz0tKfLqc=
X-Google-Smtp-Source: ABdhPJwzy4wvx7suHe+jAlUVXJxnWdvzXLPC+j9jU/XlUfKg3sXg61uRUP6i++o4yLEi+frYjNsRUg==
X-Received: by 2002:a0c:8c03:: with SMTP id n3mr23073406qvb.32.1619630784545;
        Wed, 28 Apr 2021 10:26:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:21ca:: with SMTP id h10ls185669qka.10.gmail; Wed,
 28 Apr 2021 10:26:24 -0700 (PDT)
X-Received: by 2002:a37:ccb:: with SMTP id 194mr13205213qkm.45.1619630783844;
        Wed, 28 Apr 2021 10:26:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619630783; cv=none;
        d=google.com; s=arc-20160816;
        b=e3jWGl4HLQEAEPZ0wPYVp/BlmLE/sEaizRd0qagAFNezbyNxlHj4JkDFWZn47qGADg
         5RgeM7EZhUc/a7FEo76zFnzP5IsDWfNebWlysxE9mtgRhJ1WCH/Knmo29TqoPGcyL1Im
         jZKsGlz0AXCBgwFyBDuYZdiA5IniJ/I4F29Kddx8wEbHemEvePq/nA4OHIQl9177xhcz
         Puls7STOtpCZ1iTYn71YfZtCrkHVI97/Ed64j13fs2VOYIscJuVRlXrko/90JTQ3G83M
         lkaXSoZEMhfre9Pab1p/hpbsgPXdHmasyg2YCPGJQRnk3WRWpGsUAh/xneeY4Q3YAeO8
         tOQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gG7pVgMu1dn0fnwqtPsC3vyUDfxQRZUfZPSBpjAVrzc=;
        b=LREErZtOc3iFHnTLp/p/05EguFTggnrzcG1DRFqzrBdMd695shhwrtNjK2ZEpmA0q7
         /CCFwpbjvUEK58vNsKPjQPbtpOUt7QOXUKTqixDydmYRPStoV+vqNzXQjsb4r3l8TaPq
         6SRSKIy8Lph1OdwPdnJwzrHU5mNIUSkJOlk/isdyujCTpLSLaAPY6vseHD7af4hWxMe9
         VGRbqDKoq9+WhhGA7nhs9J5GBPaEL/Ugie6D7LgpvZjeMmz5FhuGV78EwXSGDaPrAawo
         yLn4r/VCF7v91wsr8yTB1hJaFTVbnaev4u3FusUpQk/jNoq8eQ3B7nwEhu5he82N7Vwq
         XTmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jPHfllZW;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n63si63799qkn.7.2021.04.28.10.26.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 10:26:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-388-JSR9eHu3NPOouJ03hTj4PQ-1; Wed, 28 Apr 2021 13:26:21 -0400
X-MC-Unique: JSR9eHu3NPOouJ03hTj4PQ-1
Received: by mail-qv1-f70.google.com with SMTP id el4-20020ad459c40000b029019a47ec7a9dso24976617qvb.21
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 10:26:20 -0700 (PDT)
X-Received: by 2002:ac8:490c:: with SMTP id e12mr27530989qtq.351.1619630779712;
        Wed, 28 Apr 2021 10:26:19 -0700 (PDT)
X-Received: by 2002:ac8:490c:: with SMTP id e12mr27530954qtq.351.1619630779252;
        Wed, 28 Apr 2021 10:26:19 -0700 (PDT)
Received: from localhost.localdomain (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id m14sm426385qtq.59.2021.04.28.10.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 10:26:18 -0700 (PDT)
Subject: Re: [PATCH] bus: fsl-mc: fix improper free of mc_dev
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: stuyoder@gmail.com, laurentiu.tudor@nxp.com,
 Nathan Chancellor <nathan@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210427183624.2790305-1-trix@redhat.com>
 <CAKwvOd=LSs6gdGj-FAuCTrPrH6ik6PVxYX+_tFK9G1OW0vdMAA@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <975e8af4-d1b6-0440-7447-1e06e514ca8a@redhat.com>
Date: Wed, 28 Apr 2021 10:26:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=LSs6gdGj-FAuCTrPrH6ik6PVxYX+_tFK9G1OW0vdMAA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jPHfllZW;
       spf=pass (google.com: domain of trix@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 4/27/21 12:19 PM, Nick Desaulniers wrote:
> On Tue, Apr 27, 2021 at 11:36 AM <trix@redhat.com> wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> Clang static analysis reports this error
>>
>> fsl-mc-bus.c:891:2: warning: Attempt to free released memory
>>          kfree(mc_dev);
>>          ^~~~~~~~~~~~~
>>
>> In this block of code
>>
>> if (strcmp(obj_desc->type, "dprc") =3D=3D 0) {
>> ..
>>    mc_bus =3D kzalloc(..)
>>    mc_dev =3D &mc_bus->mc_dev;
> Thanks for the patch.
>
> Aren't the allocations for mc_bus and mc_dev mutually exclusive based
> on that conditional? If so...
>
>> mc_dev is not alloc-ed, so it should not be freed.
>> Old handler triggers a false positive from checkpatch, so add a
>> comment and change logic a bit.
>>
>> Fixes: a042fbed0290 ("staging: fsl-mc: simplify couple of deallocations"=
)
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>   drivers/bus/fsl-mc/fsl-mc-bus.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc=
-bus.c
>> index 380ad1fdb745..fb3e1d8a7f63 100644
>> --- a/drivers/bus/fsl-mc/fsl-mc-bus.c
>> +++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
>> @@ -887,8 +887,10 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_d=
esc,
>>
>>   error_cleanup_dev:
>>          kfree(mc_dev->regions);
>> +       /* mc_dev is only allocated when it is not part of mc_bus */
>> +       if (!mc_bus)
>> +               kfree(mc_dev);
>>          kfree(mc_bus);
>> -       kfree(mc_dev);
> The error handling here seems quite wrong (regardless of your patch).
> mc_dev->regions is allocated by fsl_mc_device_get_mmio_regions() IIUC.
> Wouldn't the first `goto error_cleanup_dev;` taken end up passing an
> uninitialized pointer to kfree()?

On the first goto, mc_dev->regions, because of the kzalloc, the value=20
would be

mc_bus->mc_dev.regions , should be 0 or

mc_dev->regions, which also should be 0

and kfree handles 0.

>
> what if `strcmp(obj_desc->type, "dprc") =3D=3D 0` is false? We allocate
> `mc_dev`, but then call kfree on `mc_bus`?

mc_bus is initialized to NULL, which makes the call to kfree safe.

The original handler was

if (mc_bus)

 =C2=A0 kfree(mc_bus)

else

 =C2=A0 kfree(mc_dev)

I tried this first, which works, but checkpatch throw a warning for=20
kfree(mc_bus).

This change makes the 'else' with the !mc_bus

> I think it would be safer to locally save the result of
> `strcmp(obj_desc->type, "dprc") =3D=3D 0`, then check that throughout thi=
s
the local mc_bus is only set in this block, so I don't think another=20
local is needed.
> function, including the error handling at the end, or use multiple
> labels to unwind the allocations correctly.

The goto's could be finer grained because some of the mc_dev->regions=20
are known to be unallocated.

Changing these would not be a fix and it could be argued the simpler,=20
less efficent error handling works as designed.

Tom

>
>>          return error;
>>   }
>> --
>
> --
> Thanks,
> ~Nick Desaulniers
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/975e8af4-d1b6-0440-7447-1e06e514ca8a%40redhat.com.
