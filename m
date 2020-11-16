Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBDPGZL6QKGQEBHS7RTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF62B4C3E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:12:46 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id t1sf12021619pgo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:12:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605546765; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4wHUIyNBpvZtg9TMTJOL+DoKNFgB88pQwAx0XmZxt41QO8rgA2e2+SOEXaheByx7b
         3ndKJmOdy131YVOtMd8eBfxFuSPhus0T1wNaR9ANwQ1UsE7FfCwijene1qEIArAFa3kd
         MChsnuQTyGgsMNzniFFh3jEy5T//CzFva+cViE9F1DxQOM1AT+k53HYqya6GvaqlkVGN
         kYWI08K8CNVaRIKpdkB5FKq4376yHUOO5fjmLMamCWnwN6NPueL6o6ztx1uu6FOCsuB9
         bFJTSYaTc3fkr9aBNIMB6saIS8dOaUSNnlYOAiHIz8VQBpx9ZBVAEvNoMUFlOJtA9HOj
         e6Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xxD0DNePk1kKwRcu6Qs+0vpMPHcA3BVM/FD0P4VRhSs=;
        b=gr9pQmEvtouvYqDDRXgWGVwA1GQVGrA+SnZoIOvvFtAHwPh+PMCGK6730ubWHIZSQI
         451fmAqXoXBx+FSPE6bQNzSGmuiqkDabo1oWeJtb39eKVcSEcLGevXleqERIJ08et4Lt
         OOJDbyC1QXpSvVN/GQnCU+9e4jOfKDJSUFCLiByXtiWxRMwQ+kyV4iKPkXUxz3/EYIAM
         JQxZEuO87/r/7MgmNFwiRNANpN0Tt3OM63D6GBVYc3aEdvYl2bqCoBKqOoakpSsf/kH8
         /krLEiIFvS34X2m4zG5nJrOwbiwsUOzGndENsnt1bs1z/JqrRsBbik24nIfTBUSNTzmK
         Y1Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xd92LMg4;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xxD0DNePk1kKwRcu6Qs+0vpMPHcA3BVM/FD0P4VRhSs=;
        b=LNJ6H3JjHKXtbE7sc4GcSIceRf5v5q/vsL9RwuiyYgYTI1i+UDGdkRbcQZgSYI8YGU
         fPQkIQceCkIdUJ1zcMrcnetO5cYO/Vyn4s8QNaOXh+bxIjVDEaEQAq15UAGeia9qxAhT
         wGrxQ1bFFqKn+3TcGZcbGMS2OhDjRy5GOAlFx57SkDvufOCHQn7LPE3BJMXrz9Rds+WL
         hxm9inUpEcnSA1MXJG9kspQmmiAlcg96IqKuYQPnRKzX5xucBAaf76rPKl6vOvqKlfSJ
         2VM7iA5Y/ZEGBfWciVva7L2bClD2FCDGvuPWoxv+mgqgAtJpBsaB43unkogiMnKW1TAu
         8LdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xxD0DNePk1kKwRcu6Qs+0vpMPHcA3BVM/FD0P4VRhSs=;
        b=Tsq8PkHa65PWafZJsdFOEnjKHfXd9U6nn2VkJvCNbtvmf3XdfhIhbfVHdZq9Sy5QbJ
         WzgncIlgghI3+FScLDL/puTRMVLLD7REWsy5hUQOtcn7BeONPEafz//iGiXiqxGrFxam
         fjHaH/HB4wvXDW7mHip2HCR+u1E9VO2hDWrN50qgJ84CBtxFlJWx/iD/bnUs/VkjmC5E
         rzHMX7g6Um2/hAMFuoLl2YXgd7sHsysBmVPo4wwYdZFCsB7YtSPABzdo2I2C06sa9EUa
         gFopIXv/tj5mE7u+NPX7dKOPSZMFTYpzQqF2scR++NiSAADp6Vek3sZuwjz0JDIS8pvY
         zzkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lqMM0YTTXSnIIxcVXGoNHpd186tAz42zuYSjqn3dxCIsMU6QM
	DBCnZriOO74YDoCw59XBRio=
X-Google-Smtp-Source: ABdhPJwcq/IaxlrlH4TxUNSv+ZydIuZR/q0V/i5OfcsreyBDh9WQGYJo632JVKdgDHnrxq0N2jkAjw==
X-Received: by 2002:a63:83:: with SMTP id 125mr159368pga.423.1605546765398;
        Mon, 16 Nov 2020 09:12:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls6644019plp.5.gmail; Mon, 16
 Nov 2020 09:12:44 -0800 (PST)
X-Received: by 2002:a17:90a:ec17:: with SMTP id l23mr17299079pjy.154.1605546764722;
        Mon, 16 Nov 2020 09:12:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605546764; cv=none;
        d=google.com; s=arc-20160816;
        b=WXmNRTb+OEcXC5hPHW3y2bbY4HLqeb7PGWi1162HXBg6HoCnX+WWvXYs9Io20KpZEb
         cKmwAF4HQTyArLncECWcNOxEa6C+X4SJ5tZS6p+d2DkHbzHpFCE3ZgG71DDJKrG6/otJ
         WMZ4YRnugyZxT2YonMlHrBMbo+t9Ld5VJxVbw1xUDZ55pTZkpjW8EMVvrofC5iT+L0jk
         jRBAcpzZBfNKFFkI1VwNEvK7W35SKn2t1gCTOeiBsn6pPH+4r3yipSNAjYjdeDnWga9I
         C4bIhKZFitV/LkTZtGaDvCV1Vqf4r3xhO0j3tGwuPBuUQaANeFfQz5453qMRuHvM/Rqq
         QRVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uN45kQ5Y2+9hizDEFDM6uawqSr/+yUGvptSL4YelpLQ=;
        b=PsdgakY9tAy8rfgutJJmWjhzmmXH9qd//WlVCT8xAAphmmHz18NUMVrRnLCgqFMqPo
         TsHsWIuOEhvfNPsfu0NFkB42Y361P1nqiN4tUAZZNRbWiBtJfGIxO10lhTjtDQS6PWoK
         GxxJ3+PfbpVFiczugn8C3mF7pQchXsdxEG8cTfRnMS3+TLzFJrMfzkdLNTlJMl3tQjgi
         1uTli2az0cVX/tPAQQxVBZNvIFld6DtI76WvclT1mhj3jeBQHAldzWwq3s0yRryTE598
         Bkv5TS4QmN3OukxBsdytSDOP/61dJndGp7asL+ggyaBcsxgX/t93vDgZfip6DdaNSt6M
         YOIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xd92LMg4;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e2si56233pjm.2.2020.11.16.09.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:12:44 -0800 (PST)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.171.203.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 687A120797;
	Mon, 16 Nov 2020 17:12:43 +0000 (UTC)
Date: Mon, 16 Nov 2020 22:42:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Maciej Sosnowski <maciej.sosnowski@intel.com>,
	Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dmaengine: ioatdma: remove unused function missed during
 dma_v2 removal
Message-ID: <20201116171239.GX7499@vkoul-mobl>
References: <20201113081248.26416-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113081248.26416-1-lukas.bulwahn@gmail.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xd92LMg4;       spf=pass
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

On 13-11-20, 09:12, Lukas Bulwahn wrote:
> Commit 7f832645d0e5 ("dmaengine: ioatdma: remove ioatdma v2 registration")
> missed to remove dca2_tag_map_valid() during its removal. Hence, since
> then, dca2_tag_map_valid() is unused and make CC=clang W=1 warns:
> 
>   drivers/dma/ioat/dca.c:44:19:
>     warning: unused function 'dca2_tag_map_valid' [-Wunused-function]
> 
> So, remove this unused function and get rid of a -Wused-function warning.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116171239.GX7499%40vkoul-mobl.
