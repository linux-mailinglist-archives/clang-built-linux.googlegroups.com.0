Return-Path: <clang-built-linux+bncBAABBDEMXXXQKGQEOO6AV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id C580F11812E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 08:15:24 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id r21sf10709179edx.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 23:15:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575962124; cv=pass;
        d=google.com; s=arc-20160816;
        b=ghqAh8AZ4inToWeGLoNOwqYvGeGmPvgh5hL56XQmfxPMldN5BHFKxz+VpTp9XOVmT5
         qw5IH5Wvnno2dqDq4VKFioY8mFbGzqVKRnaZK9Z7WGtxv8+RnADMlgyiNEO8tk4hIh1m
         4rCILraa8dAuLT9Il+r9d2sDf4tWSc+i7P8jpf8zua4Yiw6Km65FcmHfnVMDC07AzSEW
         2qQevh92iFEYWaRSIVj5eoiowxXJSQ10WwcIn12dW3jO43eWu4lYFXNMlHCStMk308uv
         +9MMTcNMW0jkGW49CAro8E8VLutAAhpI6Px5es4IKW4nd+V+d5MEicawEiE6vfNbWe7J
         AlUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=hYMBddWmLwnocWqFR/kUayA5/s7+6JEMa92CWNhhXUM=;
        b=q/ziiGfkM2KERHWFDr73NZzNcfiRNOEru8vOGqIty1unOd+HF4tkS8tu7FGNYjqwTx
         xAt/TYa4KNBjnJiFaV757IJMbZBjT+uX3L5kUdX7XZvbFfc+l+pr+0UKHzBORhwnB+K8
         ITzr1GwL1TSgVBhmROLjUVNpfQ9lRs6iNkPhhIcEboQBsrvVcHSglf05n5uA3m4IHISL
         4WSw5+3Ijexn+2nHsC0nRgJHQUeXegIJihE1yFdgUDzC/3+5NTVdO3jNFKmp5+oBIwLi
         TVeLURUBBgY5w8cTrXbD0C2VvphxqZCf+rCJuSA4OTRe4eNcwFbKCwvpDfN0EiNbp9re
         KLkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hYMBddWmLwnocWqFR/kUayA5/s7+6JEMa92CWNhhXUM=;
        b=rkkWzn+OLdce4CoDOnquhrzQg7FoZyee2KH5HBVyCZ+8UhGzgkeoAkhsCrD2TZYW7E
         V603JZ1bNjNkktWZ3nvxpNb/2alOhbLJgyTniHPe6YbCQ0EPH37OfTgLuINyhkVoeWT5
         lVSqNO7hTQs9cOAWSjaHo4FOe63bGDu1rjQgU5o/dKw6gNdzV6/OYlA058rjdm07TJYT
         p6K9EE2ZzVp/ASiKgWW9A8nUw35NR9RP0lTMxXSkYB2Mb1vwaBZpva7JEOJNCbL6lghK
         LHQaIt4usdriDE1LAU1JDZ5EpYqUCwQWd6/Akje5bJHtc/9SmXSd7zB7EcJCocVVefrm
         FdiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hYMBddWmLwnocWqFR/kUayA5/s7+6JEMa92CWNhhXUM=;
        b=MHIDK4UVtfTCg89SyaXfD6LeozGaeDiodX3DNZD3kldumpCxYCXplpwhtXfNMPWg94
         WBy6GpNGy/GkAN2Hc9k1L/Lsbli0nrTIGaBgFdYdyclO8z1jGmR+WqFqY9hWngxOpRwJ
         i7pLaep7RHcwFhUyx4xKYwjEbuod0BgmRuJ7F4PqyJZQbU71TsIonvRz6dICppvVLQFq
         hrh0X7ZdF+haNcdE5Olxrq97nu20wzjrKx1qBC3oOAEnJG5p/GV1pfreXPoqurtC3COk
         29QuyCffoeNWKSbBlRokfBgUiyOAi3dj+Q4FJASPn0mQIge8p6/IrwHC5OCJwSoPGoYE
         RrZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXn7yfLLij/oSYKkcM7S25D4KVYELLZgby39QrXfXAr/Rv+21Dm
	ckHPnt4JbKYCtmyA6YhpXZE=
X-Google-Smtp-Source: APXvYqybmEetiSUqRPM3QttDNCGKVTuuscLTdswq4XJIl0zUsK/UKY592EuvdikQhxVEkRsvPb8+aA==
X-Received: by 2002:a17:906:9511:: with SMTP id u17mr1999574ejx.13.1575962124516;
        Mon, 09 Dec 2019 23:15:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:fac7:: with SMTP id lu7ls4428383ejb.2.gmail; Mon, 09
 Dec 2019 23:15:24 -0800 (PST)
X-Received: by 2002:a17:906:bc51:: with SMTP id s17mr2027319ejv.137.1575962124113;
        Mon, 09 Dec 2019 23:15:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575962124; cv=none;
        d=google.com; s=arc-20160816;
        b=ITa2mnuvFget7kKuVhALKHxFEMC1EGI5aHdgdc8qloPxe+d306DptX2djQRmmcQydK
         hFmxamPzotU3j6O11NSCU+dUHhEzyIH/UmcLwl+1EWAcnNGcqp+j/xyrzFcSha7PoCCU
         Ypunuh4wrcYgrAvUZtcbEfXfq7XC2lnHHIiQTP9Uv35epxuoEgxx6VtiBY2nLOLslmtm
         5xqSHT1dTm75Ot+vC5rSb60YOjuw0H1plV26GAoqforImgYbQZwuHNV5OvdErqcp3eut
         mPRulB0bFiypRM+kMyTB182RAX+lfXsxn+knvD1GoDJG2Y1C98nzcgAHRwSYgksFoNuN
         Womw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=0R3KaMjKwhxSbmovr28pJ/aPLoJUn83PCNuAkV2Qh8A=;
        b=zS+LW4nAxMh0bK+x8wKHxqNzm+TGlcjHVqLV5jmUIzON+t3essIcGCYvqhD2oJ/S3+
         ROCVfKrtkey79WFFHER+HpZK/tm+olyGOOPfy5ZddHCg97ssu6ADYf/cBuC5hSHqJ1vr
         5/gFFF4oUZwD8Zyo1n/VRqrf/GxsCkIVRGRfKZNottZLcWexAihs6b6DbPoNWjx0DEDE
         8fAylM1icPMEnykcg+wv5pA0wH1q6y1exd3YCrak8TfNJpJAo337s1rYp7VOB/z3/fzK
         FpkpDE8sjtZuG+p8+3g1R8sQggKjVjJ18AqooB38Stvlb5Bxd/L0aKMZD+7XzXCzTTDI
         cFwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h11si66457edv.1.2019.12.09.23.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 23:15:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 66DA6AC9A;
	Tue, 10 Dec 2019 07:15:23 +0000 (UTC)
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
To: Nathan Chancellor <natechancellor@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>,
 Jens Axboe <axboe@kernel.dk>
Cc: Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20191209201444.33243-1-natechancellor@gmail.com>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <bf13410c-b62e-d82f-6351-ee49d7964fe7@suse.com>
Date: Tue, 10 Dec 2019 08:15:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191209201444.33243-1-natechancellor@gmail.com>
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

On 09.12.19 21:14, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>                  nr_parts = PARTS_PER_DISK;
>                  ^
> ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is here
>                  if (err)
>                  ^
> 
> This is because there is a space at the beginning of this line; remove
> it so that the indentation is consistent according to the Linux kernel
> coding style and clang no longer warns.
> 
> While we are here, the previous line has some trailing whitespace; clean
> that up as well.
> 
> Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than XENVBD")
> Link: https://github.com/ClangBuiltLinux/linux/issues/791
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Juergen Gross <jgross@suse.com>


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bf13410c-b62e-d82f-6351-ee49d7964fe7%40suse.com.
