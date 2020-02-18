Return-Path: <clang-built-linux+bncBAABBUVDWDZAKGQEQVLSVTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEA5162AAE
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 17:33:23 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id a2sf17520013ill.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 08:33:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582043602; cv=pass;
        d=google.com; s=arc-20160816;
        b=O611a/WPTiD5hYHqw/ermTL0dIJG0bY0NB8PcqfR2gVkrTVWIEdcDuLZwKeH2hhUiy
         ZaQ8CUBX271isxhtVMo5gn3mycyA2qPWaplohIZWAtyuFvI7HxeG0W7wY8KynGsUckzD
         ExySe1OW2/Mv7YoE0v44OmYK8b35uz61vhbJeKjrAK+jUFDneO8EFfND3CO5Mi7jImI7
         wJu+Gs7Stlke0qQnKzC2M/Csf+LdfMRZ53PuGiFS+nu0PvY9jP5UUhnJWY1OGRMV19Cc
         GUdYcKrEUNQgAk/9hX9UEExJKW1RG5tewa7YGRXhNXEWCGvazHgQ8hasdxLIzHxHUnV8
         JQiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bZbw+lGq2R01ZAwQCVRu8biyuQkWyWVxLBZR/54uxE0=;
        b=W3e10aJDS3R4pwUxV8oxm6HgovY7NKpGmFReYN34gqRGSezGDlpgEYfDoQcInTkpab
         Tb7hteQFRpoOrMZQDjxThNDJ9HZsFKu1NIiYjhAePLOXEWSUfVngHHYeWsgJHDiabCMW
         SzZG2qFuWa+SsKwPo9pU6Fw3eCn45jYSgY88YaKE1ozsK6TxmI9Gb8+9mL60i3i0+HCO
         dSD3JE5o1qJkWRU/MIMT3fblpywNz+0GZ4m58p9G3QLBxEmdsb/oYJY3k05gLX6KFUk+
         No40iBfPIftTV22pp/nJC6IHpvaR1x+FSAiLyXS0A8k/HKawm1jZZl63rZll3EOoPv9V
         JzHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r2Z6PIhb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bZbw+lGq2R01ZAwQCVRu8biyuQkWyWVxLBZR/54uxE0=;
        b=U7M6ylnE8mKYGKCBzKV8xTf0gRkWMfN5puDRdwQEy+CV+0AVPTlhSi+5pnbJy9GZ9m
         Ctoy6KQfwvg5pECzPuSWZUd3F+tjtWqi0+tI/+6MRn5Hv8Uf7ehJI4gDm4UIMPNbDTwn
         we2lcE4GlCR3VDHbiHN7bvwTG7CL0re5GUF1NuuJYV/2/VFxSpfgIeE2ks7wU0+zc80w
         o0XYV9ggaH8wqrtNP7/56dqTNSRlMpddNzr2+XoAWtij1tdM8AFGjseCWGJCjnXr6m+J
         R9opF81ZB8X6YhelxPRN7sblWftqaPV1IyDh+w8e97JMPQMU1uuApNxALpmae2U3llhh
         nkSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bZbw+lGq2R01ZAwQCVRu8biyuQkWyWVxLBZR/54uxE0=;
        b=lGqa2/1vlTESWUSnolvzckK6kqzSsrX8WZfO0+6ptxDLmw2n90NSsudUBAzNEKE8AN
         pBnDVXu5vUwPctB1SSTM5nsDSmr6BqJkqPfAwweCdgkWh0Qj122R9WnLIGPd/QuPGnh+
         Eu6dMUBq7DgSIVXd6rlN93hQnXErabLyZyfZ44E8SMfcQwQPpYg1ukA1i+VSwUgr0Q3L
         xlXRwrbtOhib//out2tZT9zo8N8edDUeyvVQar4JQr8rOfosPc9BwJzur6a92GMG4os/
         Knwf7avE37O+9ZfGTXXhqwX1C3zfLrSHxZUekPXY/aaRA5KQKzIhxIezCFEE4xZ2HDPW
         00OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUvJQ0BC2ZmHR8yud3AgtqSA4HffNQo5/UzaP9v1av+RosPAUL/
	xETKLmb6WvxHD3B8hoo/7Ww=
X-Google-Smtp-Source: APXvYqxQGv/4z5+e1NWCdFEpuMzmCKAYU7rP/8j+43kwvUSRT5CL37rKV7nguP2bzvIG5vl9zKFNjA==
X-Received: by 2002:a92:290a:: with SMTP id l10mr20288775ilg.151.1582043602469;
        Tue, 18 Feb 2020 08:33:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls2862266iog.6.gmail; Tue, 18 Feb
 2020 08:33:22 -0800 (PST)
X-Received: by 2002:a6b:3c13:: with SMTP id k19mr16724468iob.25.1582043602105;
        Tue, 18 Feb 2020 08:33:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582043602; cv=none;
        d=google.com; s=arc-20160816;
        b=UNx93t60EYMDVs20I1YsAjjS4YdLYlWG382S0y0i71Jw8sh+cL9fNzko+N/WYTJHHF
         jSX7dR4TNWvNpUU/6R22JiTjbZ0eLGsQxeuEMd31XBq00LI7uNbLec4MfOKXkgh3SbRq
         Sgj12JLqJsMqvBwjDVxoBzw0FQbYjIjrj1XE06jqRMa+ZPRSGqs3S+JtX/Jd0Ha6+aCD
         7E4DZ//ueh+qcQ9UIiCfkTAvinFo7AlC74SX5NC4EHZp7/aJ+884VKshIdGamgPeV3Ln
         e4BpQC7zU361WeVAuKp9J2OniWEAmuB6JZXvFXHyjbLTF0Vhta9IEEhEst/8vmt+LF9o
         g99g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=20nrAdZ7qfLp8KsSQ9i02fuDkh81xJiDH+GPsjgblDw=;
        b=SArMNRHo9VpVMQLTIRg4BJuBg1oUUCfzPslKXWjoLn/CFi4Fn6d/UmvFgCmfSUuPbg
         e9tUxcC0X8GgO5e5VcdoHSdn6EXX9DpHJ7Nqlc539MC+i/oLC26TuWoWN7HGX9NAAjcu
         pme7GWllv6lbpW3rE+taTFNZbyxPW0uGXHSnturUjR+Q1+vaJwMX4DKopmGWr4FJ4EUC
         pxSTn5CeytZcHqPvIu+JMo/E8IMIZubdbMferXCRsia/SiBP7/vLmii8lZFHZnV+3lcc
         /lgFL55m4n7jdUm0a/Y1kdV3IF3L1rCuHkw2afZxRCWa7HzwwvaUVTiVU8Rn4ObAtl7I
         7q7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r2Z6PIhb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si185628ioi.1.2020.02.18.08.33.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2020 08:33:22 -0800 (PST)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [213.57.247.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AEB062067D;
	Tue, 18 Feb 2020 16:33:20 +0000 (UTC)
Date: Tue, 18 Feb 2020 18:33:16 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/core: Fix use of logical OR in get_new_pps
Message-ID: <20200218163316.GA11536@unreal>
References: <20200217204318.13609-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200217204318.13609-1-natechancellor@gmail.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=r2Z6PIhb;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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
> ---
>  drivers/infiniband/core/security.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Thanks,
Reviewed-by: Leon Romanovsky <leonro@mellanox.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218163316.GA11536%40unreal.
