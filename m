Return-Path: <clang-built-linux+bncBC2JZN6WSAHRB2NHUDZQKGQEIQIURPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A98180B81
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:25:46 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x14sf18071ilp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583879145; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9HQtgld/CEVJlcieFiVPhe6neP+C9vvUwcVF4uwc6VOq4V3F5fjxKjJ5b2PIg8vGF
         pT+JmEU1FMWvrtvE19G/GTU5rZPobYHXEvzt4940iY/r407GdNTxV4ZAe3nkhpRRHz33
         gJJOFqy7bmQwYwntFPo94G3zN5Pf/8no0mRal4BxZt1mkZojK8UIyKSpHjDpYNBf0Mg3
         vYy5zlk/U7L7C21u17LBqPlchzNtxAZHMZUiQIB/ocrPIwEP+sKsOGgZeOOZqUxkddaQ
         u24tHprnjX9aEU+ZJggjogRZwfTsa/RifnsQOMHdFPzgFwOwXOwqduq7pUYJ+KFq3BUi
         aayg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ycFylWfeT4nwtFUnHFk2fboQex8WJo425zgRd2bgsRM=;
        b=vl26/f06bek/Zy4QaDAOk5gOqZFCU1MHCosYPJB37KjtmJfhPvh6zimuUrT0gBvyKt
         fd9tvs8hBcbmnxex1sWpVA4L4L/si3IgZ0GjSQ1sxGFJfSZuuA28ccusq5BlIFgEltz6
         0E72QeZjWgQiG7VRWHbZ2ZRl6Ve9X/RHrn6cwXzgS9+n02BmOEpoyg+ql/hEHLD4bwgs
         eiHdFLKSM0jF4lHaz5uRrnKKOK1YZz119Y5L8IDDfYE1lKaEvpsNidxAvV8XQjQdPvzR
         YSyf+bBef5pnkB6A5BdEPSqqFiU2EzmpY74+mrwsHqxqO5HBc9JBG58g1y+7QmMiQa1Z
         RfHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kXz7Nuyq;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ycFylWfeT4nwtFUnHFk2fboQex8WJo425zgRd2bgsRM=;
        b=BmVsfdnv280AZ/yJxG3t6SalADcyAZinFYwmHSNL2nmLNCizES147HvLtJYzqO2mTe
         zrv4q/adDNSODR8bGYmbpahXobfl/QnDTgr16m1yYqtKnbBj6mV1CfNfbvdJqX4hEv/1
         9fQJS4VESgduSNpM7mFkPIR5gWZFkLIp3A4+GmFv0gHjNWuUoaykb1KFOJTpJWxscOkI
         iIDM0Mi9Vj5Id8TLGaXFDt2pFdFgUVVIX+bsnO4OCeFYL+N+9xHvk9oWMopfJ2p9vLtm
         fd73OW+G7xdzYmT5kVNn5yVYlmFIAs1vXUxY6ANIp0D6jK8A3DKR6kaRD3BC+FTG913r
         ufwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ycFylWfeT4nwtFUnHFk2fboQex8WJo425zgRd2bgsRM=;
        b=IFvhXDG3w+LMP8K2ra8oaoOhaQaIWI9sx6ErPnK/tnNEpaecH8kN1E1EACyxN9+Aab
         JNTAXWS1hFhrBexZFc8Jx3xRFIZppbAJCF3n1l/r5MgNVHVgtiY7ZFo1r6paEhdHQx8m
         LhGVuGKEI8dRvBZuu+hhY5oB+yY0NK2Dmz2s2enM3PzdIttqZPqk0yihe2sMKvUnCLYb
         MDQr3vG06BoFvOznW4vSuO6ROsLB4CymP2FCkPUPTZ0g4FUqbzuJ3G8rKEVdIQFLa3Gy
         gqMnEIJ76N0QsIuiNEK4o8s3jIPglM2qrlfm419Obx79VSNWgPbQB9BIhHKQN2zgmyLn
         I4NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Tk9MYh/bdCFHVZdKbaupVfNoLX8Dz93Kqt1fdD/k84q+9fUTE
	lfT2Fpr5QUOl1BnZqoltmzQ=
X-Google-Smtp-Source: ADFU+vv1zmc420yd8NHjttIazlpH/5L357kErcO2sAmETFH77Uhg/gFp4Aq57JMGS8ki7Roh8tutpw==
X-Received: by 2002:a05:6e02:606:: with SMTP id t6mr227246ils.271.1583879145609;
        Tue, 10 Mar 2020 15:25:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5a49:: with SMTP id o70ls66369ilb.0.gmail; Tue, 10 Mar
 2020 15:25:45 -0700 (PDT)
X-Received: by 2002:a92:c9cb:: with SMTP id k11mr285169ilq.132.1583879145268;
        Tue, 10 Mar 2020 15:25:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583879145; cv=none;
        d=google.com; s=arc-20160816;
        b=kbe5LpzFPm1Leq8RmMtwGfS6NZIMA+sWRaiNuzFBNdEY0M2NXqLMR2KdQd2P/LWp2s
         BpjgHncSwNYzABDDdl4P46vkJigJaezc73PtUiuTb+f5dv8w3B5M01nDw7YXvaLvJHHb
         8w+oqr+PiDEPx3TRxS/wLMkPvZQdYFveFZtw9CTfNjMZT7zdL49ekrirWC3EMFTckvZH
         TMJaF8CwgaT7IFlO1qleKPVoinM4bG4P/3MWxS156ZvY1f8XhqTAt8ADtY+nNgqglFzr
         9F+tHUxDLbaphbBoeOFWzawd9vu/aXWToecEVktYZ6n7+nK/WyAHrnuvrQMLebIfnntq
         h/TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+SMw3KzwW0qIsxOajP3cV8dZM1F0dvmhCHxZU/Nkvn4=;
        b=nVewsRe52WLmmvGgP98+JE+cfw3+QhFUEXo1g81fcyaA1vNIGhRy4ewkYzzfpCq+jM
         Xs5V+8gvmTkZxdFJieoRpXFt+1F4/HShJuAPAt3dQZhyowh4vHgqPUccud9UI1WeFWbZ
         YZqHgyycv+9/gFhJDo50QoTykeqtP4j2CHVce5h7jZBsaL+Remicog3SiI6qFVcnftMH
         i3K+jQRux7jPwKNksLtd5i3fg7ekNxQO9/fF/C9hYP7Fps707fPlXkaPQvD7xUqnX4C4
         2t/cqFSqXg8LcNYqCKMfIpYXGg2goIUYuQr0d0/oSVJfxAlhjcB/ugK5tvB6W1k5hUs8
         cDBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kXz7Nuyq;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r16si2292iot.3.2020.03.10.15.25.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 15:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u12so53297pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 15:25:45 -0700 (PDT)
X-Received: by 2002:a65:5905:: with SMTP id f5mr21428215pgu.87.1583879144413;
        Tue, 10 Mar 2020 15:25:44 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id q9sm47191418pgs.89.2020.03.10.15.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:25:43 -0700 (PDT)
Date: Tue, 10 Mar 2020 15:25:41 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] remoteproc/mediatek: Use size_t type for len in
 scp_da_to_va
Message-ID: <20200310222541.GG14744@builder>
References: <20200310211514.32288-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200310211514.32288-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kXz7Nuyq;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue 10 Mar 14:15 PDT 2020, Nathan Chancellor wrote:

> Clang errors:
> 
> drivers/remoteproc/mtk_scp.c:364:14: error: incompatible function
> pointer types initializing 'void *(*)(struct rproc *, u64, size_t)' (aka
> 'void *(*)(struct rproc *, unsigned long long, unsigned int)') with an
> expression of type 'void *(struct rproc *, u64, int)' (aka 'void
> *(struct rproc *, unsigned long long, int)')
> [-Werror,-Wincompatible-function-pointer-types]
>         .da_to_va       = scp_da_to_va,
>                           ^~~~~~~~~~~~
> 1 error generated.
> 
> Make the same change as commit 0fcbb369f052 ("remoteproc: Use size_t
> type for len in da_to_va"), which was not updated for the acceptance of
> commit 63c13d61eafe ("remoteproc/mediatek: add SCP support for mt8183").
> 
> Fixes: 0fcbb369f052 ("remoteproc: Use size_t type for len in da_to_va")
> Link: https://github.com/ClangBuiltLinux/linux/issues/927
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thank you.

Regards,
Bjorn

> ---
>  drivers/remoteproc/mtk_scp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 7ccdf64ff3ea..ea3743e7e794 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -320,7 +320,7 @@ static int scp_start(struct rproc *rproc)
>  	return ret;
>  }
>  
> -static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
> +static void *scp_da_to_va(struct rproc *rproc, u64 da, size_t len)
>  {
>  	struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
>  	int offset;
> -- 
> 2.26.0.rc1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310222541.GG14744%40builder.
