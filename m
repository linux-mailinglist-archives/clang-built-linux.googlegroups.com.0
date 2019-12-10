Return-Path: <clang-built-linux+bncBAABBWG5XTXQKGQEHV2S24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C9310117FCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 06:36:24 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id o205sf584917wmo.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 21:36:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575956184; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqMJgf03ZeEDjlovJGpDKdZcVGc+9webo3BFkqysG5KvgrAG9ZPDEqCT4ss4VpgEkE
         H/AwCOY2+LGO4w868b7T0oPbT49Hkdd3zWGHLgwpjjn6LQ59Ki9RlqLIXEG2TivJyzIX
         EYmtcVH1mgUM02RvuJ51+IwCngM0XvVnn35rQQkDLPCBZUeGfKH/rjAZbaWSe1rpZR9u
         CXM5ePo6Hu2t5HYlVvQSM+BUZOIJEUP7VwGar8hlzM7DFE43q7gemR7ZLl0ykWmZ+ZVO
         J9w12fw/eccuxzFssMuF6+hw9DX+giqOb+9smsq74EScOmHI5GhxCfNUiQSSWwbYM0l9
         UEaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=VlBJ1gEtW//Z+h+vspDYDLDmmlPyczg70/1ynkYr2o8=;
        b=aZ4fdlFX7kMjR64r/0+wjPHL1lGG5s9dzkNcFK6fhFQ+1CMzzj76v+QqLr8XkBnGyT
         zcCULgg6oroWEJRSDDVUEg/iVgphhMR9ajYItKr7RgPUj/kBKHgNZ9PjGluS0dMfPMgP
         tTWU7SmcMf4NKpEFr+TCBzN1Hj6clfUcVxFFJJTxxQhygqv3+o9OTGcXJ9s/1J5ddKeo
         sTJvFMucz9XAR1/lhkMIGbyySVhHlUHKbLkIVq8TRgm8vrrx2NZmYqp0SAVuYiYSorzc
         XFvLyrF0YezBXLvlIqCz9kQPPBq1XCGh52AzXT8cgcfbkj4Ft5StVev8QXb2D8Io/mC8
         xQbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VlBJ1gEtW//Z+h+vspDYDLDmmlPyczg70/1ynkYr2o8=;
        b=I0OsOfCF/+JCneKxEHrJt7J1nsSXhMAFLJTJjcZX9Zsd5RW2GaFR9FMHIUQ7EtBkc0
         +HHc+pFqXLb0c2zbMTnbISKDBDURprETJwlzz7xHql8TlacpFfP8/UTSKozRMy9mHAtw
         fvb3cc+IzO1mJm/t+g+pdu0PwzQAbZBen6uUxTGT5Er73gRqZCXRkZSMe2YKR+aJt0bC
         gadi5dt81yIUpEZjgebhYveZIIYsm8/dvfHYmBpLFeQSWRDFXsNLNoX0CiTrAsi4hJWl
         68i0hDw/1+BisuFjqJ11S8nx2+z7WPb7QAZ0gUgYjOh9vlePQuzoAw/aPhOAG0KasYoL
         R2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VlBJ1gEtW//Z+h+vspDYDLDmmlPyczg70/1ynkYr2o8=;
        b=OjPwxDm1YLRH5iN1k7MCP/M2BBC32Cc+3HEA0OHRD5F6ZTesCuuBpYRf8hAqM/ZAFc
         xMburlmXTGh42l4KxXqR/m4I9paO3z7GGu+aWWGNGZQM5rE5Ay2oeh76RP1Dxuj67BnS
         53ULnpOy2AzoTJmEqHKQ+ax5VKtE2KlhCkqSkNzNYvBRuY5M/URQkYsXDyhq2mZNWpeJ
         GFB2xS911P1aPlogRV1r6okQCiOCrp+fZAeVNzV88kM4HcoO1jFL/C9NVveZ70yaBSUB
         kpVILUoa/UChZEQgSekZSZ/3XN3oY5c5SKAzAS0Kx4LnyfJ/cDARpDHgIag1K4lUia5X
         9/5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbJtsHbdRvE8cdPIwb1LuHVlhFN3V8xq84IoRgdQZbviNH+Ft4
	cwF6Xf94vF6LlbSwU9rHMdM=
X-Google-Smtp-Source: APXvYqxe2B/kDyIUcXtz1r140zjbOoUwc6GQvaOx1hCXZcq8wTKbcGfZZLcMSc6bA2OAa7VojnaL+Q==
X-Received: by 2002:a1c:a141:: with SMTP id k62mr2740084wme.98.1575956184509;
        Mon, 09 Dec 2019 21:36:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6912:: with SMTP id t18ls6509656wru.7.gmail; Mon, 09 Dec
 2019 21:36:24 -0800 (PST)
X-Received: by 2002:adf:e547:: with SMTP id z7mr920423wrm.258.1575956184104;
        Mon, 09 Dec 2019 21:36:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575956184; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXm2bDkZbhT1lm2oyiomBHqRI9n5lJt/37DbhQXDw6n25dnjuDAfi1oFpeVnV1Qx/i
         5q13RVAxB5JgAYlsUSiPHeDtpL59Tl+zM4OspMPZTSB6tlAsCxy1J8shwJ4fLVu1R1nG
         H812WAzASwrpixZT5WZw4XXRl7sShKjcS6s5p5fbuxMGQpDOEDT1s8c2Jw7YCZettwwr
         Jh8QFUE+LQVNT7tQDHsZii93HnIQYJ9xNnN/i66nxoAKKU+3GthImP1ucOW0cZ3cE9O4
         rPazohg4yULv/9ihcqRLw5E5uKO/RsBHRhtgSTnGDXDbSucrO2o9rZAxzFg8Vk9qfVDL
         y3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=jW8cDnXM8H1bPDjcRguRqNRW53QYFt/UNBTTMnhgq3M=;
        b=LAmICwhHSkqxCEaPg3fcUZtBgMvj+sbyuMWrdy9jGLI4+MD/roUnm8J5RXstNAGAGN
         ufirYijxDr5306iK311egUb5Bs+1Yt5ykxEhx0vcY7BpAhT1KoyC1Cdhc+brR2kldA6l
         ctI+v9UmvEqxRf8++Jbl2P6+1tKZ+RVK4/28ctmXvlR0d2sh5ndFhK6xNWSRnS3/pIUR
         mwD08hnPa6X8m+m5MAFh3GEEKw6YNYTvc8//Lm8BwA97LgTtviKvNYFLf9jjtW3ohHeY
         JSort9sSADDj0fJrkkIrkm7g42LMJlgdP5wHYTrfB08Yr7gkLcws4bplXLuJvUfNy2Ho
         Ya4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i11si72567wml.0.2019.12.09.21.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 21:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 24A7DAC5F;
	Tue, 10 Dec 2019 05:36:23 +0000 (UTC)
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>,
 Jens Axboe <axboe@kernel.dk>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20191209201444.33243-1-natechancellor@gmail.com>
 <CAKwvOdmrGGn6f+XBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA@mail.gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <fa48a214-7c12-9123-88d0-00e99359f335@suse.com>
Date: Tue, 10 Dec 2019 06:36:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmrGGn6f+XBOO3GCm-jVftLsFTUXdbhS9_iJVY03XqCjA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 09.12.19 22:07, Nick Desaulniers wrote:
> On Mon, Dec 9, 2019 at 12:14 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> Clang warns:
>>
>> ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
>> statement is not part of the previous 'if' [-Wmisleading-indentation]
>>                  nr_parts = PARTS_PER_DISK;
>>                  ^
>> ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
>>                  if (err)
>>                  ^
>>
>> This is because there is a space at the beginning of this line; remove
>> it so that the indentation is consistent according to the Linux kernel
>> coding style and clang no longer warns.
>>
>> While we are here, the previous line has some trailing whitespace; clean
>> that up as well.
>>
>> Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/791
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>>   drivers/block/xen-blkfront.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/block/xen-blkfront.c b/drivers/block/xen-blkfront.c
>> index a74d03913822..c02be06c5299 100644
>> --- a/drivers/block/xen-blkfront.c
>> +++ b/drivers/block/xen-blkfront.c
>> @@ -1113,8 +1113,8 @@ static int xlvbd_alloc_gendisk(blkif_sector_t capacity,
> 
> While you're here, would you please also removing the single space
> before the labels in this function?

AFAIK those are intended to be there.

Having labels indented by a space makes diff not believe those are
function declarations. So a patching a function with a label won't show
the label, but the function in the diff block header.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa48a214-7c12-9123-88d0-00e99359f335%40suse.com.
