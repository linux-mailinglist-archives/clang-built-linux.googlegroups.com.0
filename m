Return-Path: <clang-built-linux+bncBDB3FXND3YBBBOVESP6AKGQEYBHQHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 887B928C46E
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 00:01:31 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id s14sf6925079otr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 15:01:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602540090; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrUyU71G18ZEKvXF8KT/VFFRNMC7N2t/i5EeVFxrMkeI4nC5meCsc4NsmK/aAa0HbU
         sk3Bpj2R3P45EUk0OYPFTYER4fLEwxA5VgML1XW2NpW0zHlAznW5mNKxoQLsKz8bZLLr
         SGcuKsqz0lOinhlZxwLomG9xJIAszs7qhStxosUR12GQLavvcf0/xsRJFOsqe2CnOud3
         LUOzBYNReLgNRFTN6YRLJVKSWdOc+QaCWE8/l+gULIB+ca8szRDFMUz9xnNaWBXwWtW4
         4jjJ2AgiAHCe362LbFP9grBGzO6DqNUAg0mAe1PxkTZ3Czl1D5AxXQvpcCcBGJDdt7mn
         5H/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=OZgHzxMogy85pqTi+AIxtnVlFQyNd0N5zzuv0xg8IIw=;
        b=CB/9cg9hJ/ZpUduWk99hkelpEtJYhbE9p6OIsdZ/OEcZPhRnz8msvZ2YyrddZ4KHYR
         GDHGru4eUUPJPsTRSyBnrmMse0FHSi/BeDY1ypcJr6a0NYVdr/jJc6cndfOTrsfQeUJk
         PZcIdl3fYPmPd8y3eaUclgvV93mSwHKBDa7p0suT1OCAi2o9Z9yzP4MFbkgF0VzFzVnK
         eTE1Y2nP298ZLvjPKM30uj6Y5reLE+GvurLrgEsdic/UtiVBMfW7WnsI9SdlYB145r7f
         gMtscPImOuFGRlVZHtDCqBZZDmUe0pjzpOEg1G3rYxUUMNa9RgbzVIoZTRJyTPsG5q9u
         gsAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxA2YTmX;
       spf=pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OZgHzxMogy85pqTi+AIxtnVlFQyNd0N5zzuv0xg8IIw=;
        b=Pjqhvc8tY9D8Lfnp4RA82JmfVJkyKUf+1osz1rRCk0rVqRT2+sC7MTa+przHCWbFcK
         ifkfyFQdL2vkEvvGi9PBDIiXXu6WCgp2AZCUhKaoKf09bPSnGn7TWubKC21xyXbTM/gx
         AGheAvO7GsGEKXHCsrzEdGtbdOf9dHTzgVCNnZevMmrdYv3FX0Chi7ud+jJbE2xgT7Sw
         2qSi0zwTavHVMhzZNRa7l5+Qo4qWrREuPQRhmV9omHrjj9QmFbTCQmx7SMwyYZH7OUT3
         m5DkXFqidrgH2TBE8RfHSmn+lBjKVK8x0e9O68zTRIrGTk9MvBfaVoZ2+lZPznnKK3E2
         tsFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OZgHzxMogy85pqTi+AIxtnVlFQyNd0N5zzuv0xg8IIw=;
        b=T3pqNXZ4sieoZp3CDZvi+Iby7jLY73LTJedIq/6GqtJyGih17kdjLMtRey+m1XjUeL
         kXPCZ++fZt/TJNSzHMoD/U/bbecWnomRu8G0xR+9idPSYXsE/BBMfcdlyELf1Rj/ATtC
         pCht8yiTV5YlhJmvF3Yk3M46mSRfrzrof7y1wmsxfIzR6v65FE5AeLAIX2FzsG+6zBdv
         o6+Er33hzTFhRYgQsLfE9U3Axi14NxPfMIeKiHtcOz13pfSQFNodYNt5IiBMUZPkwgL9
         AnhmbZl7m89LgyyJWGgp/RbXcNYBmKWZ8rf0Fh0Iz3khazrSkiX3YtiIZ6GyPemIZcgY
         ieqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OZgHzxMogy85pqTi+AIxtnVlFQyNd0N5zzuv0xg8IIw=;
        b=YY7MObgIhHWiSUB5nSSprscxo2y64zwDk3NP/2U4akkoeIi0X275XWDC/0m/TcjFfl
         O9oct9wUItyptqjGMLX8sMWyOrZUnm9TcVIX42q/44H6UiI+YZlJvFCWyXhcGyaSKNU9
         LsQzpA6uWzg6MMMA2XHiRgsykYMxUMCNuos/C9u3vnwgys3aXSp0dvBO7ixzjUdGulTn
         tAcecM/J2paNCAOyIpuwKRXIzbGrWB1Sqe5LL/mPCCMZXw9swp3h1uHSdjB4/VTinUYj
         xel/SXyORNf9KGlGl+Giuc41hmhKMuGGXYbpFXedz7kjFNId5cDXnrgS3l1/xQ5zR24S
         n6bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bqdrL1DPvOWbhv6nqaAtk1eHhs+rhv9AZnWAcRuUVNjOUCKyt
	IzLZSQq6E7+v20/HNI9mzcM=
X-Google-Smtp-Source: ABdhPJxQdw3gkDyCxR22imK072RoEF2LjHFbcJZkEFxSIOVtpRuQd3LygorWadGGf7SpvqD4HMaQYw==
X-Received: by 2002:aca:c490:: with SMTP id u138mr12016768oif.54.1602540090541;
        Mon, 12 Oct 2020 15:01:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4011:: with SMTP id h17ls4269595ots.5.gmail; Mon,
 12 Oct 2020 15:01:30 -0700 (PDT)
X-Received: by 2002:a9d:4047:: with SMTP id o7mr20711744oti.49.1602540090035;
        Mon, 12 Oct 2020 15:01:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602540090; cv=none;
        d=google.com; s=arc-20160816;
        b=Lmz7Z1UX4S8egh0oBOEvYxR2V7rpdCLIjt69eXbfhw8mMmp2aa8E4Rn6rFY2xbocVs
         TZ4jvS0fGpTMpTJG+mY8ZEmU1/zfqAZGC4Q3SK8lh6mBOHBkzxJiu0/uxCXTgKB9P8tC
         LhtnjsnKyVHCS6qgyXQCcAtFZWd6NVC70epk+qIeF4fQNWmxhxuY8mrE7u9WRqKlIyVG
         ElSYbvTFL1uqJACvDOMVtteFe4zAmqoJLb2Wxi/Ts7Z4zB2nnzb1vZQL6v8GI7y7vQmP
         2HCrE7xg5ApxTeY2wg34Mc1xWH2XLngiGkALy72boJ4Pee9ADw+1r4F5CDf0jh3jA3Yq
         n5YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bfkpkKc5//vLPHmkF2yidzgAEep/vbh2udDMyO66d9I=;
        b=QWsGcAR+3Y0Rb+LR6++Nyg9KyObT3rOkm/QCFGPVygAvfq96e9MQz01UtdulBIKHHH
         bWJwmLQD8XVfZcp0XCbxEwsB/TdBhlwrBNjXRxH8u+uNWnJoFreerkzVHw5lgQWWEraX
         GxTHo4bfqw1XQIJqH8IIQyuMFWrVftIateQqAJDYXP3AuoA7QwYFOSA/vFou/l2JS03V
         UQMM+5PYcMIrvs4rUJNxnM+y797hw1BCbr7QZkbfegvtGvWMZ+6E9eTpaCT0szYMMdSt
         13TNcRRpcx0hH2vpXLer3cZWeVh6RCgPz2RCmum70c0rfx2hTOpbJxWr32r601s1xAcH
         meFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LxA2YTmX;
       spf=pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id b15si796715otj.3.2020.10.12.15.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 15:01:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id j7so4988667pgk.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 15:01:30 -0700 (PDT)
X-Received: by 2002:a17:90a:e64f:: with SMTP id ep15mr8806928pjb.95.1602540089414;
        Mon, 12 Oct 2020 15:01:29 -0700 (PDT)
Received: from hoboy (c-73-241-114-122.hsd1.ca.comcast.net. [73.241.114.122])
        by smtp.gmail.com with ESMTPSA id d145sm22065668pfd.136.2020.10.12.15.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 15:01:28 -0700 (PDT)
Date: Mon, 12 Oct 2020 15:01:26 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: trix@redhat.com
Cc: natechancellor@gmail.com, ndesaulniers@google.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ptp: ptp_clockmatrix: initialize variables
Message-ID: <20201012220126.GB1310@hoboy>
References: <20201011200955.29992-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201011200955.29992-1-trix@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: richardcochran@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LxA2YTmX;       spf=pass
 (google.com: domain of richardcochran@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Oct 11, 2020 at 01:09:55PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Clang static analysis reports this representative problem
> 
> ptp_clockmatrix.c:1852:2: warning: 5th function call argument
>   is an uninitialized value
>         snprintf(idtcm->version, sizeof(idtcm->version), "%u.%u.%u",
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> idtcm_display_version_info() calls several idtcm_read_*'s without
> checking a return status.

So why not check the return status?

Your patch papers over the issue.

Thanks,
Richard

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012220126.GB1310%40hoboy.
