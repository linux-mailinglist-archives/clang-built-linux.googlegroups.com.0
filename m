Return-Path: <clang-built-linux+bncBC27X66SWQMBB7MF3H5AKGQEWNOLDVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9394125FC01
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 16:26:07 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o184sf8467177pfb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 07:26:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599488766; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXk2gS/MdjEjcFUAemr8guz3QAOQR9rFq00jazUHgd6/B7XOi4NWHkY96wH0djB+KN
         m+T5qJkKQWUMiTl0DqzZSqwrS6xyKnoHfoeoTyrsq70CDFbQ6Qj/ilUD3S481XzNjxEM
         HjjXC/a+Q4LniaXUmc8CfwJAbLPcz3Uuy4+HK5cCten7+2sQSIZB/boa0xMdzlMU6TJN
         neDDp+KX0ntKlEnupyZ3BwAjl4BwLTTW5vI53IPt5lUxDsX0ai+Gm2L8mSus7GjWa/ay
         Sz8zhSweK9NixRRTRVAuOslTQ4MNvU1iK4HJYkB1ekJj9dGCiZRx5fYW8FHx2qxAH/iB
         c2aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=3iy/dbeibt9mF8BCpVn4n1yKDaWVx/erzD3dfQw3qv0=;
        b=uT2RbiJKiBvzVCm6eHx3FqXU2XuVQYlz6OCv7iWp9YQzxKHgse9TKgRY6Z2Z6ZGyTw
         pgV34maE3/sv7iWRNKYasab7vfsZ6LEv7kPyCfgzrSKtj0CHHTN8ENJZnZYUcPl6BKEv
         dTaAQEZ4oV0SlUXIjrcfliVNidmCKpEmApFlkNq3V1AhdHk/2OG+m7/ypsfhYaD89+GP
         vEe9+nL3jyY7VcBY8a8ZK4380v8TvMKx7NAtWQOJxufBLNkhqCmomdVRABAs3jGRDwMy
         nwnTS3rQQ+TsR8dfRvD8b9z/2kwHlJMQFU6QZjxFTGGxRd1NyJSC9ieVwD8GrIS/LYUQ
         aDag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cdboRjN+;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3iy/dbeibt9mF8BCpVn4n1yKDaWVx/erzD3dfQw3qv0=;
        b=cfJtLkCR3aAjw8GEuc4h0B1bdAgO+XQLCv99mwTu5gL+N4LjHQ4R1Qq89igsIDb38Y
         c0YoQk/g0WTL1k+ArMq8FhvgYhQikUXdh8xzNGa1AoSJqPmnKOIZJUz1UmD762pyctXv
         Kyyrl8gYvl8vdXp051ELTGUrIhQIGRfAF8/uBRB6D/WAZys/7X+9S2Jj8/B6wZmCM8MM
         7hug9uXXKYWCGtp2eb+s2hvWv1fQtCtNxVUvtlM/5kiqemSMMOo/kiBLwJ8SZLqGz6UK
         gTxa4R4DtjeUZFwd85SKb0pIR3prba0gMiDvYD8L7c8QHZcTv2/MusIGK6MmhAY1R45w
         Zu+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3iy/dbeibt9mF8BCpVn4n1yKDaWVx/erzD3dfQw3qv0=;
        b=DjJKtzts8Y5GlJ6MlIF+qmcDsgC0qZxCy/6vgmTwtSOUv4Elp8ybEs2rFrfce3OK1h
         8U4cvgFXCdP0oiJi0OiWM5o8IvylSNxK+GZz8ily4fJwN0QQvUGJiOp4ADq1l8fQtyt/
         AzLddRm66opYEotcYnlblM9Gg3bcE0HCEVt6tW/8UeeHlByylFIjv0NZhG6rekxEWhzM
         bg6pTvpX+etiM9Vz2OTioLNkhxhzR1e8ETtaLwmN5dLitIUwKxdVfwcx8egY4sPLTFRB
         AHIP9HzdsEIsZezLmucPSAXuZH34BFW9004BbYEEw6Oyo1RI7o97X6ExbRvH+gWF0RDe
         fMRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ja2/VLFG9u7VLCnW6garCTgOZaYqWLqOF96E+84HXlZw69Oh8
	akxpN6dn/MbcssuFaapGe34=
X-Google-Smtp-Source: ABdhPJzeCS3c11WETe+Q0QvbgFE2YGSD7LeBLB9Qj5fDPgXCGJ4alvBhp593pJg2DA9+4i+WN0nJ1A==
X-Received: by 2002:a17:902:b487:b029:d0:8970:622f with SMTP id y7-20020a170902b487b02900d08970622fmr18403016plr.1.1599488766095;
        Mon, 07 Sep 2020 07:26:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls7039174pfc.3.gmail; Mon, 07
 Sep 2020 07:26:05 -0700 (PDT)
X-Received: by 2002:a62:37c1:: with SMTP id e184mr21184608pfa.224.1599488765647;
        Mon, 07 Sep 2020 07:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599488765; cv=none;
        d=google.com; s=arc-20160816;
        b=qsDbne6kIuWI3MHOZYszXFYWvtDtS+g1RrHo1VBzcLySa+vutZ2DxVzRkBGFODttsC
         7WT/3QO36ESD3u4OeGi99Q+exzp+O4KXoLRbxRqkVYcKosXF5FcJY1xj1qvmidhVRlDf
         LoE6EAXaW0Cvc04E/BmkZYayyKomFDUL2IPFf1NSX0YuCA47p5yhT7bYQTPRkDpKjAQn
         6i9Ut90jyxOTQyBMQTDvm0dQLlxpoA8+9XBw6Zh5I64ayCUF2P26jEiPQCHxwUIesn9l
         rhax0gmyW+0mTSHBBx3f1ArTop+hD89//5SofiUl4LUPs1/zb6DSlCh4gH+4AO+REB63
         U8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=zTmBPadsM0369P4dgmmlV6u5vQHhp1sa+9yqI7VZ1Zk=;
        b=GL8s791GQ+00HeExj5++Mmw720xT39DvbVSmL8LNYnHQZYR7WLoCVQf49n649bWrWk
         3s39DjVePuJtLwJlVjKyfhgwvGwn6kjIjwfR+8NLXLruprxcEmzz8dnz25JTU/Cqw0v4
         7fl7wNxRiB+s5Poe8PB5Jaf9KXWrGLvnLIgg9LQxAMsjM8g+JMHzLcv5YRiBXHf8QrnT
         Rd2zVopE9OVffPFa5aK1Spudf2Pq6sWV4QtL+d4JlDVE5PH3U67zoafjbsR/M8IW0OTk
         jD/9uh3W7P9Iz1DVnZ2t7uXtI6JVFL0cvB0S3+ZuxX67Z9RNdE8Ofx8mtwbQYgolPG8S
         hF6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cdboRjN+;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id w15si339403pfu.6.2020.09.07.07.26.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 07:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-224-tPKmJBHVPSa54ILM_Cgq5A-1; Mon, 07 Sep 2020 10:26:03 -0400
X-MC-Unique: tPKmJBHVPSa54ILM_Cgq5A-1
Received: by mail-qv1-f72.google.com with SMTP id t4so6239537qvr.21
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 07:26:03 -0700 (PDT)
X-Received: by 2002:ac8:501:: with SMTP id u1mr21438782qtg.261.1599488762420;
        Mon, 07 Sep 2020 07:26:02 -0700 (PDT)
X-Received: by 2002:ac8:501:: with SMTP id u1mr21438763qtg.261.1599488762185;
        Mon, 07 Sep 2020 07:26:02 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id k48sm12271020qtk.44.2020.09.07.07.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 07:26:01 -0700 (PDT)
Subject: Re: [PATCH] soundwire: stream: fix an invalid free
To: Vinod Koul <vkoul@kernel.org>
Cc: yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 sanyog.r.kale@intel.com, natechancellor@gmail.com, ndesaulniers@google.com,
 guennadi.liakhovetski@linux.intel.com, kai.vehmanen@linux.intel.com,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200905192613.420-1-trix@redhat.com>
 <20200907141402.GC2639@vkoul-mobl>
From: Tom Rix <trix@redhat.com>
Message-ID: <93b672ef-76c9-e87c-4526-897b0af01945@redhat.com>
Date: Mon, 7 Sep 2020 07:25:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200907141402.GC2639@vkoul-mobl>
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cdboRjN+;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 9/7/20 7:14 AM, Vinod Koul wrote:
> Hello Tom,
>
> On 05-09-20, 12:26, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analyzer reports this problem
>>
>> stream.c:872:2: warning: Argument to kfree() is a constant
>>   address (18446744073709551092), which is not memory
>>   allocated by malloc()
>>         kfree(stream);
>>         ^~~~~~~~~~~~~
>>
>> In sdw_shutdown_stream() the stream to free is set by
>> a call to snd_soc_dai_get_sdw_stream().  The problem block
>> is the check if the call was successful.
>>
>> 	if (!sdw_stream) {
>> 		dev_err(rtd->dev, "no stream found...
>> 		return;
>> 	}
>>
>> When snd_soc_dai_get_sdw_stream() fails, it does not
>> always return null, sometimes it returns -ENOTSUPP.
>>
>> So also check for error codes.
>> Fixes: 4550569bd779 ("soundwire: stream: add helper to startup/shutdown =
streams")
>> Signed-off-by: Tom Rix <trix@redhat.com>
>> ---
>>  drivers/soundwire/stream.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
>> index 6e36deb505b1..950231d593c2 100644
>> --- a/drivers/soundwire/stream.c
>> +++ b/drivers/soundwire/stream.c
>> @@ -1913,7 +1913,7 @@ void sdw_shutdown_stream(void *sdw_substream)
>> =20
>>  	sdw_stream =3D snd_soc_dai_get_sdw_stream(dai, substream->stream);
>> =20
>> -	if (!sdw_stream) {
>> +	if (IS_ERR_OR_NULL(sdw_stream)) {
> Thanks for the patch. Please see commit 3471d2a192ba ("soundwire:
> stream: fix NULL/IS_ERR confusion") in soundwire-next. This has already
> been updated to IS_ERR() and Bard has already sent patches for
> snd_soc_dai_get_sdw_stream() to return proper values.
>
> So I you can rerun this on next, you should see this fixed.

I am working on linux-next, so I will see Bard's patch when it lands there.

Sorry for not working on soundwire-next, but since i am fixing everywhere l=
inux-next is easiest.=C2=A0

Thank you for the update.

Tom

>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/93b672ef-76c9-e87c-4526-897b0af01945%40redhat.com.
