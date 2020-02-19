Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBI55W3ZAKGQEPL3QCAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A26165035
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:46:28 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id n9sf461031vkc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:46:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582145187; cv=pass;
        d=google.com; s=arc-20160816;
        b=glYePnLzAGSKzj3sAeSNSNm8AredtH9zm91ZURy+cFyhgSYgzvus7uCQNcttjKo85T
         zPC5cd4fggj2YdqKIJkp1Enqmaw+x4t7Ae2HQe0Jhlo83KHj7WD2DLOa3CCwhkfk5U98
         dRT1zvo6hgn73oBI1w2F00mdl0ab3Xa+ro0nciEOPgdxCYWiGVFGJ5qyAG6JuVmKeEYW
         c3WqJnKg+RgX7FCWhxjvSltQYU6dE1Lkzg+DvDhrU/V5VaCLxTR6CvllhYowvD54zp0t
         vp9H9dhLGd4LcIFJzdKFKS5jQy6B9de6E1qDh/va8XOSvG4g4rrEsBMaiIsz61NOCrdQ
         R8IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/43hJTQP12yAddocEz1/nFPn6MVinDASFBFe62CDpPk=;
        b=OYQXj23ktZEsuFQFbVmrbinr4CBsiwhsrwUYOyBR4xilAq88rd2znvOJpVzEQJTAyR
         H0CN70zScYH0ltLpPV497aKIC4mEoNRYvObjHNE06lfbfo5cDt9Et9mj9cKn7T1hQtjj
         HHAdm8SidOAmp3wfOj1S0VDtAKzof9yxivCkK+T+vIiHrIWg+dLpI0m1Cm0fnwH9QrQx
         Tf+A5lA4O5ALjZm/cwmd3p9Su1+gQ8Vfa0XrcFMUT/dlHvGIHR6/RaX9pX+6OY91eIEu
         R9NDNX20bP/aFckS9/+smjH4RHeq556QGS6CVGtnQlvsJ/FeRKDNyJkE76fLcWtqZNlk
         il8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="N6NW/wD1";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/43hJTQP12yAddocEz1/nFPn6MVinDASFBFe62CDpPk=;
        b=gSPxic4Q4o2UmHWtYAwF2c+kXj6Pui3TmxDrj8ta3EJNEZc4qhez2P347dG0F+htyV
         AdfEpEmaK0S6OEuSE2Kv6f3rt/BDir9c8Wg5y+H+cvqx/g19g6mJcvAd3sYPaeJs+zED
         Y+0jlf43jOzgJggwEqZMjEWeESO8U9Qd/ksxP1KdjvPVEyGfwXdLoaM64ngn73X78DxF
         5MMloa4eUvhqq7PuXy5hlxutL+W603ivSgCi1E7F+yD8eyt8K97TvAWHAQWSeNL8KDgp
         88vJRBf8YKzOS1h5JA1nb0iURnIL3x8ch/T74BROo3+hf1LQsDUzId9fNbozwnThLv1x
         ThAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/43hJTQP12yAddocEz1/nFPn6MVinDASFBFe62CDpPk=;
        b=W/c+TKs+ewuw2HXnuoW7zpZPycZXrm7DCPtumnwagCU3DevxekHq80C2LQKQ+7zr7S
         3mGko6jDTy2GpnYAQ60yTB6fTFo5ixPU5BYg2itIOsZb+/2BJ5M8L7hC0docQXbDf4gu
         tAJLeD32wQlClj0UcA49vEc0RWUTFHoxxTR16Su3QI+YZTrYskrw2jK3evk7TQpCwifn
         kx8rxNBGWtGA2sHf2Kjq6DN3Tdwr+ctemfrZmwLS6YqRYL1HWUzFii3k5NEHHkNlxX1M
         olx/Jenn7cNrV8DeqayY4ES7RFLF7kko4GDD4ch0vHRpqBzXwm26L9+Ea9gHN0fpMS7X
         uKMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3qFQsgLLe47j/V/nk8qvG78NCl79wksdCcq0DwDQEHFpFELe7
	LTK5qVDkD9VCJhctBGhb1RE=
X-Google-Smtp-Source: APXvYqxdzxPgw/vsPQ/l1FFSef6b18axvBWj8w8mipEEzeJhGVMCZjImQ++QJrHb20RABRGLBFjjIg==
X-Received: by 2002:a67:2f06:: with SMTP id v6mr14679003vsv.12.1582145187395;
        Wed, 19 Feb 2020 12:46:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1d14:: with SMTP id j20ls1309877uak.4.gmail; Wed, 19 Feb
 2020 12:46:27 -0800 (PST)
X-Received: by 2002:ab0:7550:: with SMTP id k16mr5800499uaq.51.1582145186952;
        Wed, 19 Feb 2020 12:46:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582145186; cv=none;
        d=google.com; s=arc-20160816;
        b=d2+znOlIT6Q1Cmw8aKmG9KPeCV3StQoMxNdRJ/T3Af8/+HgCrYvQ7x+7kFgbUq41R3
         cSvtATpHokF/5fis/B5WzEfz5T4ClRIKe3Wfihjf77Q9Hl/R/sVM6Em1jF68PoDRZDC8
         n+iCnDoKkqdprsKu4+6Exbd/43J2bf8xE1PxgKN0+MLDvoC723vIXKRxeLnua1mc9/vB
         iuJBbvWb5EWwYiTVfHh/YLQLHKV+Ey5vEXjjVs2OGp1gd5l/Oa/49vREOKlP1tcKKNVe
         uCvCpi6OPtdxzldiiXv4QXiiDZ05xe1+N7j2wlCiAk69/PaBw5npyy9VINAdy3pBBH9b
         yMMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mMv6ZohV9vWAZb5AuOsCpS0uJmYFOu3/CP4E2vVtix4=;
        b=pvj508WvDEGe3KemY0axrobCKKSAjG+qAzJzd7r+OlUEjfED51aC/HviUiz4LAXHir
         qqOOz10YBS3zcaYJyy1wvwdoM1tczbK/yYqAroundsXVplYvbq3xN0gfs88pGuOZ4TqX
         lGRs31zKKohgpF9p5sOcqDgWCDk39LvatkOYcdku+bNeuWQE/HiYHlRsR3t3yG24q6Kf
         oMVjtSlVLjAG5PY6FCOr/5BfUU0FDtgb7irafUeKtRrLqXhoaLAqbPfYE4aVFVLtm3+J
         Z/AbuAo0qBmGxXxHZP3Mz/heZTuyay2JSHqGETlXWoQx9SPuDnBTd2z0IiX3+qOw3WTN
         7WrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b="N6NW/wD1";
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id o19si91792vka.4.2020.02.19.12.46.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:46:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id i14so1240254qtv.13
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:46:26 -0800 (PST)
X-Received: by 2002:ac8:3aa6:: with SMTP id x35mr7267344qte.38.1582145186541;
        Wed, 19 Feb 2020 12:46:26 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id h20sm456455qkk.64.2020.02.19.12.46.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 12:46:26 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1j4WEj-0003Mn-Lz; Wed, 19 Feb 2020 16:46:25 -0400
Date: Wed, 19 Feb 2020 16:46:25 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leon@kernel.org>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/core: Fix use of logical OR in get_new_pps
Message-ID: <20200219204625.GA12915@ziepe.ca>
References: <20200217204318.13609-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200217204318.13609-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b="N6NW/wD1";       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Mon, Feb 17, 2020 at 01:43:18PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/infiniband/core/security.c:351:41: warning: converting the
> enum constant to a boolean [-Wint-in-bool-context]
>         if (!(qp_attr_mask & (IB_QP_PKEY_INDEX || IB_QP_PORT)) && qp_pps) {
>                                                ^
> 1 warning generated.
> 
> A bitwise OR should have been used instead.
> 
> Fixes: 1dd017882e01 ("RDMA/core: Fix protection fault in get_pkey_idx_qp_list")
> Link: https://github.com/ClangBuiltLinux/linux/issues/889
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>  drivers/infiniband/core/security.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next, thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219204625.GA12915%40ziepe.ca.
