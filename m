Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4HIR2BQMGQESJCAFHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id EA05734F50A
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 01:29:53 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id q20sf98438otn.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 16:29:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617146993; cv=pass;
        d=google.com; s=arc-20160816;
        b=03hN/JFQeK4DNOAJMaQDn+pue1/MV4sI5OlxRQbMHcYKL7tfpL0o7wd/EOBwyh0hfX
         eeDTNlC3m9Mt8nrD7mdLDmzjE57j/8SEROQCbrDjVomVSRfyXww5WgxTRvqIK2fJxxej
         PIY3Fny5EdP2CD4wi+av8KfqwY100nO3EExUHdslF1j2FAwwPdr50OFM1LJwlhUyZDDK
         kTLuICawIV4Ak+kp2XH0Y9xaV8O13FZzlGSzVRGZ5c9dWeKmG4LUFjHMG+696VQ6KsN1
         OvF+YN4lJ0CH6TZhQIzAnqFKsLCIGqjDMO67zAcLiBoG4XUn39QMOeDplO4QXU+UNDpV
         WJcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q1vJiOTFTNFlsiReWCWeYnM7aX0Rl0epem9RILxOcio=;
        b=X0/XtapTzA9/CfYkck9fnkOFlI/Drd8dLdpN6QqG35NPSgvwLcvIa6Nm9M7+CRZeDu
         ueAv1+rRp+TEx4mMEfC6+i4bDzieF4lawBoJyy+h+DPW7aSE7Dyns2TWAxF20JGWbNiM
         Xn8f8n5T/WdrZRKzuw2OzeqXf5T52oOMzEFrRslyQUXHGh/LIYGdBlzRnhKUw8iUaUGZ
         5+kAoDsd6OAnX5KWSBcp/wX5OGtkTPhuC1gVUrvococPIaawbjF8nUsY4brR6Ayn7gOS
         KXEZMSlVFEW6Rj8Wak3Q25m9t34DiUGBbXh6AHg7/IcGXCZoyeZZQjTeUyxzAyr949QG
         CiWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JNjyX8Ug;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q1vJiOTFTNFlsiReWCWeYnM7aX0Rl0epem9RILxOcio=;
        b=btcQwECv9URNEAORjD43EyAjBCxmL2mR61eKT0kJ/w/FrcDG/JSXVbyhPa4sjkrFzu
         LPNwcAtNY69ih8MHvgpK/FRQifseidDUsbm2Q28myrv86JG5hBnVmCF9D+NVU+A114jG
         QYI5vyfcSHh58Pfz81jCmqcAo17SxjGmnG1N8rMn7wYgwhgPxKRu7V9+N2QvJKZzsHk0
         3pLYFDg5lFJSWzrGDN5DQ6m2q+e2CnO0H2LDWX+VfFWQR8ypNbJNF0G02uiDHLzc8wxm
         bghgW51WXZqZDX4AX2dwTDeTsjbB/CeGA7ZoS1s/hY73GAMlgLmgzuZaCzA0LVrd03eQ
         JQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q1vJiOTFTNFlsiReWCWeYnM7aX0Rl0epem9RILxOcio=;
        b=c7p0N4dbPSd4Io1QcNMEq04I+BomPJ+ZOo3KSG4rnvjw0cYVA3Ng8NyaK9GhAzB1ej
         aGTd079XyADd0h5qGYe7ZWH0KMc4GxrPBVQMNFu5khYQ0RLXYz85goqoyvsZqz3384WU
         GoJP5/0lQt7J2CVQJpKPGsFfqCu9ihUB87pO4OCLbMJLfo53sWy/ICE8YPqZjmsUbAgI
         QHvWof/Y4U49FJigq7ane9hagLVqGQ9JMPUIV5gmndJGxC0ohkafE9OVZu0u0l8+B0hL
         7rJrxJ/MsCgjwWKV0pBMZ2YqpH7Pdg5iqwNlKNsBNIJSUxE9agMoEb3nwo05SXpgCvpn
         Ti1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302N2vQicjlTYZp9lfhYejRh3AKMJVbRDOlEoDAhN2xsKUXqvtF
	hr9JMxP+vFVpfMq1t0mitKw=
X-Google-Smtp-Source: ABdhPJyvGMxSXzryspScYlKPcF4qc/1mRPzKcIF3SXoXyvmwI0V1zsK0IBt7YXwocQp+YPaMhthI2w==
X-Received: by 2002:aca:39c6:: with SMTP id g189mr255820oia.46.1617146992960;
        Tue, 30 Mar 2021 16:29:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a47:: with SMTP id h7ls45434otn.9.gmail; Tue, 30 Mar
 2021 16:29:52 -0700 (PDT)
X-Received: by 2002:a9d:17e7:: with SMTP id j94mr261692otj.41.1617146992591;
        Tue, 30 Mar 2021 16:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617146992; cv=none;
        d=google.com; s=arc-20160816;
        b=moHxIqgcyckgypuiFVzK2q/eFcPg55yntuhUi5xT/EUGCj4KzqW6g/dy+4mpTVNV3Y
         aoIRWDrAn9KWP5ATk+sSnQH2zZiCzskIZPPzSKwYFNIxBK7kg8hJTpLf8KeGqaxRCOpU
         xSPLfXjYE/Kn29M2qXaVWJw2biX4VTAnPCpqHa3SNP2tydgQAqZkvcv5O9I4AVI+UVDj
         2UkIoz40OVqTfo/x/wEHxcMMCXerSfjRBVVAa3UPTO/uxIM2dqwpwnvnok421UrY4S1X
         NEJwjSj4b//ithbk80qOYCCmsIZAbUPbvl3GZTeFs6SNyuOZtBJI/aMiEZ3mU11d9onU
         vndw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JFLjN+V6qhh1JShJZARV2EusiaL34Xnt311pGYtDg+M=;
        b=Bcnj2W5dENr5AnstMKZ9LQSmNcowffRlyFc7/gmHf1G+QHo3EfVnolDI7pRFMQf7R6
         +gGG23gPhXqWHM1IsA/qXN3LZZpcvZXvBxWUmXHOBCHjXT8KkmXPe17OjjjXkK+aZ1sW
         4fUdvCyMzfW9I0k7nmKRMaWalaPNTpuHVEMiAjaXiK0wGa90ee0xC65e3eOVg9M27cS6
         ImCv58dnJz77OCdtfaC+vGp1AnL6f0F5FN+Us9pClaygy6v3g7XqRQR7DnZktK/7Oy8o
         fzEMK3nmUbUX9W4UXBJ818iO8ToZk9qa77vMN+T0pZtHKIGOGUVzaC7JEe7twCs5Vtxl
         Nt2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JNjyX8Ug;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a12si24169oid.0.2021.03.30.16.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 16:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CC9B3619B9;
	Tue, 30 Mar 2021 23:29:49 +0000 (UTC)
Date: Tue, 30 Mar 2021 16:29:46 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: cjdb@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Guenter Roeck <linux@roeck-us.net>, Jens Axboe <axboe@kernel.dk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
Message-ID: <20210330232946.m5p7426macyjduzm@archlinux-ax161>
References: <20210330230249.709221-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210330230249.709221-1-jiancai@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JNjyX8Ug;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jian,

On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> This fixes the mismatch of alignments between csd and its use as an
> argument to smp_call_function_single_async, which causes build failure
> when -Walign-mismatch in Clang is used.
> 
> Link:
> http://crrev.com/c/1193732
> 
> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Jian Cai <jiancai@google.com>

Thanks for the patch. This is effectively a revert of commit
4ccafe032005 ("block: unalign call_single_data in struct request"),
which I had brought up in this thread:

https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/

This is obviously a correct fix, I am not just sure what the impact to
'struct request' will be.

Cheers,
Nathan

> ---
>  include/linux/blkdev.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> index bc6bc8383b43..3b92330d95ad 100644
> --- a/include/linux/blkdev.h
> +++ b/include/linux/blkdev.h
> @@ -231,7 +231,7 @@ struct request {
>  	unsigned long deadline;
>  
>  	union {
> -		struct __call_single_data csd;
> +		call_single_data_t csd;
>  		u64 fifo_time;
>  	};
>  
> -- 
> 2.31.0.291.g576ba9dcdaf-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210330232946.m5p7426macyjduzm%40archlinux-ax161.
