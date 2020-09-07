Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBMMA3H5AKGQE7775XUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B2025FBE2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 16:14:10 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id o9sf6988603pjg.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 07:14:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599488049; cv=pass;
        d=google.com; s=arc-20160816;
        b=YL+m31l/bOLiAcxLy/3ikSjwQTRUB218Gk+fZ4NWkN0BjlJNUo8NOt2aVY0Q3o02Of
         w/qlUiVJvmpBR+hnXWOrhAeFW41eIi+zw2KTP/EjC9FzNbYwsQNHWLpxNAv9+7ujzSFg
         ex+cl3UpHjWF5Iw67WDxlmwkz6CLXPbXn/9B36ZdQaDh/FZzgqhwqlE7DrB+doQa79Dh
         lfVEmhKcvmR2seq0J5NG9yCLFnjQ6Qe/kBTYTD7cDMGF7gqKhQoZnzHchwia2ZalSk6i
         DBWQ1Y+978JyUnGAcDkxZKXZ0fOf2cMx2F/OmOZe5tFxoaNOEO1liScvdmYHDaRrIvwV
         i5cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pL8Gatgj9ZL/qcw+ifP3+8tk5lZXEk1oFMzlF5lOgYA=;
        b=ymZEJHa3q2b+Mq3r6uCOohFuUht8BXskMq+srcQax/TnKa1yEuXvV0OcIGYecTUncJ
         fBlulXb8a3Lw51RuTvtWIzdJ/3+UKMO87mepYym/Mqaaej+rV4JIV3v5p4nyRMCx/O7J
         ose7dkWkwhmMapa9ZjBB4o9TkqcSDZxbOISpjggf6JgHDF9P13fHZSMY/M6QBNXUiIif
         9VndoAA/wWHUEJ0RVlxKixQxoVKBYOXEe7KPowAIj10MshLS1nBwIgv5SCKxQAd0wE19
         zYy4RAcaymmi41uy3VL51uaOybnw4eE3ZRbiIvijStdvpV7ky5PEMsspJUCwxaL8auSn
         sA6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f1Skm40O;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pL8Gatgj9ZL/qcw+ifP3+8tk5lZXEk1oFMzlF5lOgYA=;
        b=ah3wzjQzO3jFUgar8jQD3fsad7+h+3lyi+rBJyudS704I9wcCau6h85XH9WWpBhqX5
         uJBldXjvl9PZrNhZ16dzS4H2cmMOeUCRzXoutVuiUelCG4sQKYZRVpYHWzqut+dZKnhJ
         1IRgjJ2aHBgi9BAc2UYrbWu6qNhB66mE1ZFkP4EKjc9xqVA9w+EbBScRAfvcJwgjblJu
         AoMf0huF9afP/36Y4DJsSL7VG8CoXAm3WcFeYF7M1YbuM/Ak+JTP97aquFeT8dFWF+vC
         Z9aOZxpdXYQ6lmcRwJiyidhhztXqUP/Lh0gQXCUJRZhk3nzgaGb90u1Edgdm8Yds9Xzq
         nV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pL8Gatgj9ZL/qcw+ifP3+8tk5lZXEk1oFMzlF5lOgYA=;
        b=sVPSjeOrJa0lL1KwaSEAIuhoPYo+HmVtgExiHv2eiWhwrNfiJ4Lsnb1gP2Ayu5ZXuI
         BMv5AghLhbNztTUFhElWBhrhXTq27xwzlJg3B73EvZvSpmqRh7TbMpoP1L0+/fH8uluM
         7mWdtEfeL8MlF0gy5n6jZtLpDDkQOqQ9n2AjVRHv9+yzufwhadwqF8wQfd520KDTF8XU
         Lir4TCJuxyCSzpjSpO/3wzln5s2bZW8Ueyd++F5oQQCdExdqLB9Is8NXZgJQheNca1Qe
         GV1nzKqim3yImJ73Y0MqU60mZYnHYjQXtSI1Qgs/ygH9/nodk8ARvTzxSG+NAKKmqlGL
         k3iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FFbz6fEW9fxIM8vctD3qcpeRWHloyrzqpOQV/5B8zW2RZHME2
	k41iXxRFPvzfPlbxO7u9cgo=
X-Google-Smtp-Source: ABdhPJwL4nXYCFksLoTCnrjjnN2hHLss1KGaFqNrJ8t7Eewlx3rGa6ZR6HQ24zAR6iy+tDom40PwQA==
X-Received: by 2002:a63:5f8b:: with SMTP id t133mr17437631pgb.238.1599488049334;
        Mon, 07 Sep 2020 07:14:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:45:: with SMTP id 66ls7032190pfa.1.gmail; Mon, 07 Sep
 2020 07:14:08 -0700 (PDT)
X-Received: by 2002:a62:648c:: with SMTP id y134mr21139509pfb.114.1599488048873;
        Mon, 07 Sep 2020 07:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599488048; cv=none;
        d=google.com; s=arc-20160816;
        b=tzvV3h3LcHZqdbDKJtZJpqOZDltj76lmeVVVdqIckNYt+tNkls6eKk+ihl4ew0tTdS
         o6+rsrKpnVhZBkyE4lqI1gyeVcpc6hFekX2lFgLZbXRFPPd/TMLoV/iHaLFZt0lmcKJR
         MFEUTx8OGXSsAmPFu2ZRYwdIYSA2f5rz9XcMunbG03G5ovynAopJsVD+dpdMkGoZA5t/
         wzE7TJyFpVoSqLbE5JJDA6hQMPIQbGQMwd3FAnGJXimKtWnRJx5/whhoO4KoiSr6GWCc
         I6oYzLNJvLHeN6PQSn/8SOQxCALJwpbvyGo8hWwitmeAyZRJWn/Nzt8zaDB+7B1ZybYf
         Msbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=euFStoLcpY/ugYdfUdY7Mlitl56noKxpeFONt6NdaAA=;
        b=lcBJlp74EqBQLUVuD1kSKB42bJNLVVUU34TdC1l0g10/eSVCrUh975tuqWoMK9Sm4p
         SQkEBQrypjHjNfi7X5kHo+zcY8hqxvSVJEV+nN7RFYKPrQBNrUzVtnMFqkViSk4bM58x
         dc6wUGNvmeKLEd1BByt4VdjZcS3Dzus6v9Sk8RRhq1jH2ruVSz9T4jzKwq71yXezacD/
         b7u5+AvN/Ie8IHKAuuXpEOfDv6dfyMealYKP9KZTC0/aBeKxx/zfcITHITqA/QbNQQCr
         K0us5WcSFs6lBsX9cTCbD67PDk5OKCNIoKuJB1LBYWaKz6F0fycE3zbP3CsVPS6iiXGp
         9M8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f1Skm40O;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v62si745060pgv.0.2020.09.07.07.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 07:14:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.167.151.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C5762064B;
	Mon,  7 Sep 2020 14:14:07 +0000 (UTC)
Date: Mon, 7 Sep 2020 19:44:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: trix@redhat.com
Cc: yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com, natechancellor@gmail.com,
	ndesaulniers@google.com, guennadi.liakhovetski@linux.intel.com,
	kai.vehmanen@linux.intel.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] soundwire: stream: fix an invalid free
Message-ID: <20200907141402.GC2639@vkoul-mobl>
References: <20200905192613.420-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200905192613.420-1-trix@redhat.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f1Skm40O;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hello Tom,

On 05-09-20, 12:26, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> stream.c:872:2: warning: Argument to kfree() is a constant
>   address (18446744073709551092), which is not memory
>   allocated by malloc()
>         kfree(stream);
>         ^~~~~~~~~~~~~
> 
> In sdw_shutdown_stream() the stream to free is set by
> a call to snd_soc_dai_get_sdw_stream().  The problem block
> is the check if the call was successful.
> 
> 	if (!sdw_stream) {
> 		dev_err(rtd->dev, "no stream found...
> 		return;
> 	}
> 
> When snd_soc_dai_get_sdw_stream() fails, it does not
> always return null, sometimes it returns -ENOTSUPP.
> 
> So also check for error codes.
> Fixes: 4550569bd779 ("soundwire: stream: add helper to startup/shutdown streams")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/soundwire/stream.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
> index 6e36deb505b1..950231d593c2 100644
> --- a/drivers/soundwire/stream.c
> +++ b/drivers/soundwire/stream.c
> @@ -1913,7 +1913,7 @@ void sdw_shutdown_stream(void *sdw_substream)
>  
>  	sdw_stream = snd_soc_dai_get_sdw_stream(dai, substream->stream);
>  
> -	if (!sdw_stream) {
> +	if (IS_ERR_OR_NULL(sdw_stream)) {

Thanks for the patch. Please see commit 3471d2a192ba ("soundwire:
stream: fix NULL/IS_ERR confusion") in soundwire-next. This has already
been updated to IS_ERR() and Bard has already sent patches for
snd_soc_dai_get_sdw_stream() to return proper values.

So I you can rerun this on next, you should see this fixed.

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907141402.GC2639%40vkoul-mobl.
