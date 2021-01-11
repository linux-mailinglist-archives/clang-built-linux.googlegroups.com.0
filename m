Return-Path: <clang-built-linux+bncBC27X66SWQMBBCOL6H7QKGQE67A3KSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DB12F18AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 15:49:47 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id p19sf9430854plr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 06:49:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610376586; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAOYNzZgW50gjSy12l3FjMGKdMzirnsYbYIKBchPSlRnQrSK0Pkk+5U1t1Ab+tOqau
         qvs8X6RE+6CZbROnbtA4+M5CoFlXuI/sV8ArEmS3VG9lt2Yhqg7juMt4NdsY93F4ZH9M
         i/VCBGfpp5Ff0tB887m1QNLa7E8jflQAGQQA4RytqMGKtYcKeDglTLf6rc40UUeOnvsw
         mCcGW2PK9acL91LoJgLwm1mQZZ41Ln/mGt0WGGmQDNqIqm59dCT2bJIi3nNjXBfpPK9I
         k31QKaZ4GfhcMoca7+vzVfwCe44aAgib+mzRgjr2E1yX1R1+dgY0BT3mGRaNgs4Vf3TG
         HAcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=tMHFzphOpPkuGuzVlpBjV1WZbTgLWHAocNAjh74fs8s=;
        b=mqNzsCgxS4UGEnwkrlCgp58cxLSWN4RFrXNAc9VfgR1gyfRQwaZ/K2iYJr3UMRyFtC
         SpxEn7dhR4/ebPWm4fpqhN2LQ+GoKyiUlmEb09Th1yRjsUovFpQ8BVWzCBJLRjaIy5NJ
         rZwPlTI5TGjt8t+i7vsm7gF6q7mCRx/0Ylk8lIYt8YTeRjOcUXfIZ3b7XcmL8mW0MYYx
         sxpVx/MggKkL4sy7nVenG+Hh3UEf6XVW6bF7JtBQeC0BOFa4H6Tiyb2B/UBPJFpWsNeq
         G4WwDp58vSNej9WJY1v+d3xfTIz/jHlXfBLrvOPoiGqs3B+naeO/Su/cNmsx97XmSsDJ
         /wKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RSOz4PC9;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMHFzphOpPkuGuzVlpBjV1WZbTgLWHAocNAjh74fs8s=;
        b=GHDKXM14DZkMGJcJUqwAKG3JgSi+hbUikbiSHGzE5PjUeKSuIJQ0lDxgqD9sLbeR2/
         2F1/PABSo3030wzjBijs2zrEGtyvcnfpenQP01vzQiYYv+nNhwbt/4bfecJXWSK0oON4
         pPxAbvQ819UVzl9O/P8Bx/aw5UO1pDbjT8UgfhGfUE2DFe5v3HQ8oNKZliNS3RSKueIR
         ZjVrHUZ3sahdfSaQGsdaIoHf38+MRNU0KgYB+VLVf7MuNbJix2YM1XmDpqgeue7Khhs5
         AxhWaoOk236wos4hcQhR2mWAbXfhd92XzMJUe/XvuHeXfMjFlvWsVGlaSoeDHb/kbmJp
         Q4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tMHFzphOpPkuGuzVlpBjV1WZbTgLWHAocNAjh74fs8s=;
        b=Mx5uqhwCF5siEmw2cxvlwx8jzKODSpPqeCbZ144i8xMmXFyokP37dWgowSY2ebAzcy
         gM5t2OVFEhx+A5djA5Idehwdtj8dGQ4+17tSevy4aMPKLm9GnIS2bmwN3HOK8rJJ7AWK
         UvkWFWr017NtI6s969nJiyKxCPfYOaf1gj5Oo7+X+P7vHMj7WPZ4oY1QKsY2e1WO/z9X
         sHU3Swh8fJdX5MUoMMaUq7mDt9q4QpPIutngq1ipDVLU3YXEFD5VLz03tgCwsA8LJSfl
         s3O0DtYdY+TeI6eH233UQY0sDrmvG0Wr6FITaDBJ9rG4JjG6CMraDEQ0xn6RujOPxSzQ
         IGiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wZPZQRrYZ6mVGXYfJSyVzlyu2ofLizIrhVQmv7F9VZNcnSNBf
	Ym900gfkpiZX7X1atvOxXeA=
X-Google-Smtp-Source: ABdhPJxfCff/NxGlyeoYBOyvduVkt18Vk3sChwzDDgERlIIDGyeQ9WDws0vkx5ONYcpM5899eJtT8g==
X-Received: by 2002:a17:902:ee05:b029:dd:f952:db11 with SMTP id z5-20020a170902ee05b02900ddf952db11mr14850648plb.42.1610376585734;
        Mon, 11 Jan 2021 06:49:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7615:: with SMTP id r21ls6835167pfc.4.gmail; Mon, 11 Jan
 2021 06:49:45 -0800 (PST)
X-Received: by 2002:a63:5c53:: with SMTP id n19mr19792670pgm.116.1610376585084;
        Mon, 11 Jan 2021 06:49:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610376585; cv=none;
        d=google.com; s=arc-20160816;
        b=QpBPirybD8I0qlN1fdsyf6meU6Y3SK/5K4B10D8M5CqS4bxmmun16UtTOkabPmzrMC
         KSRIJwqH5jFMVlVawqzyg86ywD2d6tU+FjNuqgHuXO/4PN7wV+D5QNRsML/1YDWyj1S6
         1hrW1eLlmiHWuIW0fj7JZHZY/r8hFTuGm89hJfBtr5LjL8pu0KIkg2la60F8wy3vJOnS
         jyQMCTswSKvJWNuTIGkiR+mZHbbWrJAJ/daMuzJxCF2MjvqQ4ysTrjtd1zKk4Kz2n+rm
         chToNAWRsyTVeREwioLX6NegXlkV1mFjm6xFI6/SIIFIF6dXSsJxmO7x8z3gAMae2a2W
         gjLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tqZH7PucLcSk/Qb7NQ3SkFiM8vGpSQE/gSgpg3BnCno=;
        b=UJw0uUS8HcFCOilueyxWJkYJRdNjwv5c6AemJ5BoMmj72Bumf7vPioMZGJBO6o3Nwu
         ZV1Ra3B5ZyYoNsKRQBhNNIdh8byPTe4ITiQYUhJ6w9pa4wpeP0KQsGGhSJmw8va1lWkr
         Mmztju9YS0YPoCY5Puyi1usXdjjRaKBU+k+VQzVAbbXToWd60/EQSyVDwy7D1/XTHJBO
         6NkhBwJaDvxkvy067/g+UbDNnVuI++/WwEa4mHCuhLuEhjNUXACZsQt+4patuQBoNyrT
         nm7RlnynoOFhcjKeVhVF32VLMXc7Ajqp35+fmOaBm3dxndkynA1NIdMBH/cyq+HPJdGm
         9qQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RSOz4PC9;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o14si1316344pjt.0.2021.01.11.06.49.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 06:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-MkWZgQUzPk67Fsz3d61k1Q-1; Mon, 11 Jan 2021 09:49:42 -0500
X-MC-Unique: MkWZgQUzPk67Fsz3d61k1Q-1
Received: by mail-il1-f200.google.com with SMTP id f19so17344753ilk.8
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 06:49:42 -0800 (PST)
X-Received: by 2002:a05:6638:11d0:: with SMTP id g16mr124968jas.26.1610376582087;
        Mon, 11 Jan 2021 06:49:42 -0800 (PST)
X-Received: by 2002:a05:6638:11d0:: with SMTP id g16mr124950jas.26.1610376581745;
        Mon, 11 Jan 2021 06:49:41 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id a9sm11033641ion.53.2021.01.11.06.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 06:49:41 -0800 (PST)
Subject: Re: [PATCH] block/rnbd-clt: improve find_or_create_sess() return
 check
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: danil.kipnis@cloud.ionos.com, jinpu.wang@cloud.ionos.com,
 axboe@kernel.dk, ndesaulniers@google.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210110215726.861269-1-trix@redhat.com>
 <20210111051431.GA4167786@ubuntu-m3-large-x86>
From: Tom Rix <trix@redhat.com>
Message-ID: <e63aa1a6-8be6-d3b7-dbad-19b1eec287a5@redhat.com>
Date: Mon, 11 Jan 2021 06:49:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210111051431.GA4167786@ubuntu-m3-large-x86>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RSOz4PC9;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 1/10/21 9:14 PM, Nathan Chancellor wrote:
> On Sun, Jan 10, 2021 at 01:57:26PM -0800, trix@redhat.com wrote:
>> From: Tom Rix <trix@redhat.com>
>>
>> clang static analysis reports this problem
>>
>> rnbd-clt.c:1212:11: warning: Branch condition evaluates to a
>>   garbage value
>>         else if (!first)
>>                  ^~~~~~
> Ah, is it complaining that the 'if (IS_ERR(sess)) {' section in
> find_or_create_sess() does not initialize first even though that will be
> caught by the 'if (sess == ERR_PTR(-ENOMEM))' in
> find_and_get_or_create_sess() because alloc_sess() only returns an
> -ENOMEM error pointer?

Reviewing the code, failure looks like it returns only -ENOMEM.

So the check is correct but brittle.

>
>> This is triggered in the find_and_get_or_create_sess() call
>> because the variable first is not initialized and the
>> earlier check is specifically for
>>
>> 	if (sess == ERR_PTR(-ENOMEM))
>>
>> This is false positive.
>>
>> But the if-check can be reduced by initializing first to
>> false and then returning if the call to find_or_creat_sess()
>> does not set it to true.  When it remains false, either
>> sess will be valid or not.  The not case is caught by
>> find_and_get_or_create_sess()'s caller rnbd_clt_map_device()
>>
>> 	sess = find_and_get_or_create_sess(...);
>> 	if (IS_ERR(sess))
>> 		return ERR_CAST(sess);
>>
>> Since find_and_get_or_create_sess() initializes first to false
>> setting it in find_or_create_sess() is not needed.
>>
>> Signed-off-by: Tom Rix <trix@redhat.com>
> Every maintainer has their preference for where and how stuff gets
> initialized but this makes sense to me. I am not sure the commit above
> find_or_create_sess() is needed but again, personal preference.

Mostly this removes two unneeded branches at the cost of initializing a variable.

Secondary, the static analysis complaint is resolved.

Tom

>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
>> ---
>>  drivers/block/rnbd/rnbd-clt.c | 10 ++++------
>>  1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/block/rnbd/rnbd-clt.c b/drivers/block/rnbd/rnbd-clt.c
>> index 96e3f9fe8241..251f747cf10d 100644
>> --- a/drivers/block/rnbd/rnbd-clt.c
>> +++ b/drivers/block/rnbd/rnbd-clt.c
>> @@ -919,6 +919,7 @@ static struct rnbd_clt_session *__find_and_get_sess(const char *sessname)
>>  	return NULL;
>>  }
>>  
>> +/* caller is responsible for initializing 'first' to false */
>>  static struct
>>  rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>>  {
>> @@ -934,8 +935,7 @@ rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
>>  		}
>>  		list_add(&sess->list, &sess_list);
>>  		*first = true;
>> -	} else
>> -		*first = false;
>> +	}
>>  	mutex_unlock(&sess_lock);
>>  
>>  	return sess;
>> @@ -1203,13 +1203,11 @@ find_and_get_or_create_sess(const char *sessname,
>>  	struct rnbd_clt_session *sess;
>>  	struct rtrs_attrs attrs;
>>  	int err;
>> -	bool first;
>> +	bool first = false;
>>  	struct rtrs_clt_ops rtrs_ops;
>>  
>>  	sess = find_or_create_sess(sessname, &first);
>> -	if (sess == ERR_PTR(-ENOMEM))
>> -		return ERR_PTR(-ENOMEM);
>> -	else if (!first)
>> +	if (!first)
>>  		return sess;
>>  
>>  	if (!path_cnt) {
>> -- 
>> 2.27.0
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e63aa1a6-8be6-d3b7-dbad-19b1eec287a5%40redhat.com.
