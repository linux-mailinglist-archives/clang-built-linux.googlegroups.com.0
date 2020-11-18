Return-Path: <clang-built-linux+bncBCHZVHVFVMARBKOM2P6QKGQEIVV4RBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CF02B7A27
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 10:15:22 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id s10sf610683wme.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:15:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605690922; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sgy5r5zz4cluubBjeMlAC9kHnTgPHewEiEiGI/MfL7V/nStI62hiHJ7uKEZEC2uRYM
         lEEqJg/FZR/OjW5VQDWgviI6AG+OXKFsdv7+vqwlrMExADSzLPc+Y7QijLoy657rsNnc
         bXzOBoq5qekFUl/7toYr1U+MLCf1Y4w/mM8g3A/ssbSTQqCL/ojYQ2Zn6/v0+6/9L6Go
         XX+g/9UbEeur85/EpxtR9B2TQX7XG4qUUD+Acw+JJyIzR6WrZeFgT8HIgksTJXahePul
         NRcoa6g5q5dkvWBGKCh0LJrdKKkLt9jBAnBUxmddAiosyTz4KKXkllBkiEzBdrjjIEdE
         qJ+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=YPesXz7FeUyR+huVToOAnIA0bpfQd1dTLQ8Pei3s9Tg=;
        b=xBYvEC144oJOo3pdxr6cWGgaFIXn1k1CvCoPMQd1iNOscPWW+jBX4+SXvcYSUvVM1p
         zyNaMDBp4qTVIOLPGuTwEA/ZktHswWS3sRXGdkOlMJatGcP5F0fVIqaJbA5fJf+HhzXB
         DJHRSQmAmDmHBciQRf7a6pLVTvtL0zvLOHf/N6D5wcQJPgGb1/Bf2FBqBiFXz29L519z
         8BpuhQBNCa173W3DaOIVxC0aJzp/hJ6S8BMW/oXVI8c7ubnTNPVxg5sALGJDLM+dX7Lx
         IaAzKsazP25N4zx1f/MFc8q2SmQEvDy35PUQ95yhrNm4b1iQB2rswlqkv7+efowczlQO
         EWVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPesXz7FeUyR+huVToOAnIA0bpfQd1dTLQ8Pei3s9Tg=;
        b=fJWWkbGNI2ktf/NIRdRHBCU/oBD+xus/URlluFasgaAgf8n8nvl/D6rCRt66UQMy76
         sZeSQ70oAsfKx8tQ3lByKkeQm+rw7hKT/ssuowyzI/J7agUTZDq4W74YS5dt0Wv3+G/k
         g74dz+GjbQQCxwcxHGXx35N33aS0YVelO0ChaXX9cXRDF76Cora7JbR7QAzHlxzYKvRl
         wSKacCs/9eN0sFQFytVaStO5SdrtDfk+uWqU/4PUvhMOyFm47FrESjA+rkx3VlzSMDkR
         z+m9BhCtm4NpfcqtsXA3pxlqB5dkMUZORmGyttEB32WrSKG/ZpsZYB0qVOSmcfm95CxW
         oQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPesXz7FeUyR+huVToOAnIA0bpfQd1dTLQ8Pei3s9Tg=;
        b=pO4K6MtEFlUk4TsEL3G+2gaHwQSHGZ/qgK6ZYZo98jNt20DH+FiCzzOofUrJNs6Iru
         Lq4Eyus/oItjXlx+Y7DI2c4lStQY2DgyXN/rRtR6LJo5SC39Yy/JqwfbP8IsoGB7A9km
         PjmHBj8rbP9nIErBbaRqAkxXn3MjNQyhPYm8PUjGWMTaiKB6N4ymXhe0OsPFZ6wOUnE2
         yTgS1IAXUGhVeWssFpaDRJK6f/OwFKX/K1hM6MQ6zIrxVBQogxWz9JbD7jIclSv1snl0
         DV8p6iIR38ZACIgNoZ4AMXVAT0vMIWI7Tz7fo5IhNyR+9T1xy9l2rynIBXxZIaWVWvqj
         23IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EhrDXTMbfj7/kUgaCDX/5IKs9HK+UzfBJxgwyn1FuOKD4OjEf
	Gdx1sMbV6qWr8dlafyHczjU=
X-Google-Smtp-Source: ABdhPJwRBMPKMF0TUZ/gHbMhCBbQ+pjh3iaqthkJ3DpjKIENoUInEFsoSHTcelxwPE4aLnMzFlqbdg==
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr3971197wrt.358.1605690922087;
        Wed, 18 Nov 2020 01:15:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2d14:: with SMTP id t20ls2730470wmt.3.canary-gmail; Wed,
 18 Nov 2020 01:15:21 -0800 (PST)
X-Received: by 2002:a1c:7402:: with SMTP id p2mr3524157wmc.104.1605690921164;
        Wed, 18 Nov 2020 01:15:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605690921; cv=none;
        d=google.com; s=arc-20160816;
        b=yx4/+QsnTk9Cg4xgvfxINZ8KTG8V5UhdR8WEH3tylS9AsVQX95e5C7shJw/w9C9rep
         +RGHTtcWTKZhLtkQ21+AIn3lcODGcSBu+yePMFAqWJi3F4z+WhQNtv/fHG88I+XlE9gi
         l1uH6yyKivbSbbeX5I3YzegcXNGCXcKq5VOk1ZMl8PyaON59J+RMJbXT9SMrLfJ7JC5E
         RDoAw3e4bvt7xc5HVSdNJhBfeVXh26gTh9EXakhunWL2mBeUOZoCL4RC+7HxRNAubU7k
         SGkikL/dEVLT4odVVqw6bnhaRTXmepXa5jDTd9VVqg8bviOjfyE7P7+vsYLPyfBucK0k
         hSJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=T1lQsBS1abk/cP4+pHflj+x8Gfk2fPZIN6IEvNTT2nA=;
        b=JOnB918zERh7ILqyFwlL5wuGQuIGuZJ9jjvocfXz89QPGhqyA7E6CZvjPIEtl2NuJ8
         nGrAUYvOeIXL31S1JbNyfuZXSFqy3nu59EblEBp22Xo7mP9tnqzn13tFAYMcveiMck7O
         2xKgLMbhugqG7+Nmb9UdHOxOcGwiEkjNl3Wlry/U8i3CbwQ9E0Bsu0UAp9BhfPkPOf9z
         rz4hs/yvSIv2IlWKKk45i/5rKi60oxzieIDMUmFqAXKgRwcfez7A9MdHSiZpwHaWalEf
         KAwbkpi+WRKfVv5yPcfduMADYtMmBj2P8Gbfu5vHw1CkgjkXSv1XhcyAt8OmeoQnAUz+
         akeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v10si626131wrr.3.2020.11.18.01.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 01:15:21 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A72EAAD45;
	Wed, 18 Nov 2020 09:15:20 +0000 (UTC)
Subject: Re: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
To: Ming Lei <ming.lei@redhat.com>
Cc: kernel test robot <lkp@intel.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumanesh Samanta <sumanesh.samanta@broadcom.com>,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
 "Ewan D . Milne" <emilne@redhat.com>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com> <20201118023507.GA92339@T590>
 <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de> <20201118074405.GA111852@T590>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <145b2f31-674c-567a-f901-dde3f6f16b3a@suse.de>
Date: Wed, 18 Nov 2020 10:15:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201118074405.GA111852@T590>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

On 11/18/20 8:44 AM, Ming Lei wrote:
> On Wed, Nov 18, 2020 at 08:15:47AM +0100, Hannes Reinecke wrote:
>> Hey Ming,
>>
>> On 11/18/20 3:35 AM, Ming Lei wrote:
>>> Hello Kashyap & Sumanesh,
>>>
>>> On Mon, Nov 16, 2020 at 07:49:31PM +0800, kernel test robot wrote:
>>>> Hi Ming,
>>>>
>>>> Thank you for the patch! Yet something to improve:
>>>>
>>>> [auto build test ERROR on block/for-next]
>>>> [also build test ERROR on mkp-scsi/for-next scsi/for-next v5.10-rc4 ne=
xt-20201116]
>>>> [If your patch is applied to the wrong git tree, kindly drop us a note=
.
>>>> And when submitting patch, we suggest to use '--base' as documented in
>>>> https://git-scm.com/docs/git-format-patch]
>>>>
>>>> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-scsi-=
tracking-device-queue-depth-via-sbitmap/20201116-171449
>>>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-bl=
ock.git for-next
>>>> config: powerpc64-randconfig-r026-20201116 (attached as .config)
>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c=
044709b8fbea2a9a375e4173a6bd735f6866c0c)
>>>> reproduce (this is a W=3D1 build):
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           # install powerpc64 cross compiling tool for clang build
>>>>           # apt-get install binutils-powerpc64-linux-gnu
>>>>           # https://github.com/0day-ci/linux/commit/cc286ae987be50d7b8=
e152cc80a5ccaa8682e3ff
>>>>           git remote add linux-review https://github.com/0day-ci/linux
>>>>           git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-tracki=
ng-device-queue-depth-via-sbitmap/20201116-171449
>>>>           git checkout cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
>>>>           # save the attached .config to linux build tree
>>>>           COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dpowerpc64
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>>> drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no member=
 named 'device_busy' in 'struct scsi_device'
>>>>              sdev_busy =3D atomic_read(&scmd->device->device_busy);
>>>
>>> This new reference to sdev->device_busy is added by recent shared host
>>> tag patch, and according to the comment, you may have planed to convert=
 into
>>> one megaraid internal counter.
>>>
>>>           /* TBD - if sml remove device_busy in future, driver
>>>            * should track counter in internal structure.
>>>            */
>>>
>>> So can you post one patch? And I am happy to fold it into this series.
>>>
>> Seeing that we already have the accessor 'scsi_device_busy()' it's proba=
bly
>> easier to just use that and not fiddle with driver internals.
>> See the attached patch.
>>
>> Cheers,
>>
>> Hannes
>> --=20
>> Dr. Hannes Reinecke                Kernel Storage Architect
>> hare@suse.de                              +49 911 74053 688
>> SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
>> HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=
=B6rffer
>=20
>>  From d8fa5e61187dbe851b8da9c65a5df5ec5809f8ea Mon Sep 17 00:00:00 2001
>> From: Hannes Reinecke <hare@suse.de>
>> Date: Wed, 18 Nov 2020 08:08:41 +0100
>> Subject: [PATCH] megaraid_sas: use scsi_device_busy() instead of direct =
access
>>   to atomic counter
>>
>> It's always a bad style to access structure internals, especially if
>> there is an accessor for it. So convert to use scsi_device_busy()
>> intead of accessing the atomic counter directly.
>>
>> Cc: Kashyap Desai <kashyap.desai@broadcom.com>
>> Cc: Sumanesh Samanta <sumanesh.samanta@broadcom.com>
>> Signed-off-by: Hannes Reinecke <hare@suse.de>
>> ---
>>   drivers/scsi/megaraid/megaraid_sas_fusion.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/=
megaraid/megaraid_sas_fusion.c
>> index fd607287608e..272ff123bc6b 100644
>> --- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
>> +++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
>> @@ -362,7 +362,7 @@ megasas_get_msix_index(struct megasas_instance *inst=
ance,
>>   	/* TBD - if sml remove device_busy in future, driver
>>   	 * should track counter in internal structure.
>>   	 */
>> -	sdev_busy =3D atomic_read(&scmd->device->device_busy);
>> +	sdev_busy =3D scsi_device_busy(scmd->device);
>=20
> megasas_get_msix_index() is called in .queuecommand() path,
> scsi_device_busy() might take more cycles since it has to iterate over
> each sbitmap words, especially when the sbitmap depth is high.
>=20
> I'd suggest Kashyap/Sumanesh to check if there is better way to
> deal with it. If not, scsi_device_busy() should be fine.
>=20
I guess this whole codepath will become obsolete if and when support for=20
polling queues / io_uring will be implemented for megaraid_sas.
This whole section deals with spreading the load over several hardware=20
queues once the dedicated one is at risk of being congested.
But this is only required if someone want to reach high IOPS; so if we=20
have poll/io_uring support there won't be a need for this anymore.
Or that's the theory, at least :-)

But the patch should be good enough for now to get your patchset in.

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                Kernel Storage Architect
hare@suse.de                              +49 911 74053 688
SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6r=
ffer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/145b2f31-674c-567a-f901-dde3f6f16b3a%40suse.de.
