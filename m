Return-Path: <clang-built-linux+bncBCK2XL5R4APRBK7U376AKGQEF3227RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4BF29A9F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 11:45:00 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id z62sf454103wmb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 03:45:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603795500; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBubzOULRow9EyBcZwWB45yCE1uTyjO2OThwHP6pa73eaACRPMlUsPcFQIL7aJoMSc
         wWwH1WsDmJ/j1crahQBCHH2Ve5nFCmvdNuoaygtWqj3EpW5+siDV6vXkAZwHqdLv4pWB
         tTyE7epTgUYoVKQ4dcpaidrxvAoIYe9XcgwRGlz6JDCAuecvglfbi12ouqAHhfUbF2RA
         yF5Wd0G11uNw6XV2BERAn+AIcQOIM/QtOYauvL1ocWAJs0uXFM6mXs8thgHu3UB6D44t
         0bMK71+GQTxpkpHbMuZ8qqIf9xDNpZXh3WFn7GEFj+RkLt2eRRc9sf/xXmRxrNVJfHmz
         3ZBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ype36PXixDjSlff7kAJlRz7c8cdxJLJ9Bsjr1YuqXOM=;
        b=UaOyIGPtFrC0NsswrCmPiLPI4RJGwexHU4OhoiwO4BHYY1QJzfxnmaA9ddti6kDKLl
         1f6GigiIbV/J+VOTuwXEADaRSQ/v0KO1/1Db2/YmS7NS1ihlFG8ohbvFrdncR3eQDOWc
         iZJsy/wGqNOQA3sLZW71H2/5P7TaFTS140Gm4VpLSH59QfHbBXPAHqmgthgULPq1nboh
         f00imjqS798ycVO4GMvPoKEQm/YZSRpJKaSK6ti5pjMzpZMJbnue8DIJHmVXJOF4Oizt
         dFoI68S1c1DmJFDqJR24UZeW5Dv6i77aVt4YQnGMmR83KjEPUn6CwVIKTsTg+yIXO+sF
         esPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="e/y8y89g";
       spf=pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ype36PXixDjSlff7kAJlRz7c8cdxJLJ9Bsjr1YuqXOM=;
        b=EivhbrH4W3YJGIconuCdRbWuMSprp/gON+CMSP+GDgaX1/9PJcYad9NDSqT+NZn0kv
         JZ1ot+/EHRdYFWWxUU7G/FxaX6m1z+tBGBSo42M0XSU3dWJlOsYNKHOlrtlJPYbYWHBD
         RdJHvO9GtzP1VD5bhkVKhXgZIX+eacG5v17ZWkOomaf13UXh8lyTPZN6R6Hno1bvLJnm
         Y2gBP1yz422COPcn9Ac8KjUmqXB3vmmvHJfN/s1QbokMd3Z1U/3AzCSsQYG3QSCtGaYd
         DYZCgNKiRMLo+vRf+3LfezqufaQb0fi4IQEuJz5oZuvueNhT1nRNTYcfTfYS0aG/66eB
         Ufdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ype36PXixDjSlff7kAJlRz7c8cdxJLJ9Bsjr1YuqXOM=;
        b=M7HToqzYyR1VYuC8KOVDszCZHPbNMNR/iNwAoGh6zKZwBD9pzJyG23Xpd1mQfmdAsS
         6taRmiFKygKFG5BTsL1XUXmhKZZEEhZgOSivxn2fr5aM/lBdwKlrQdVODR8eoqJNB4CG
         4ZoJSloMv1ZuaQ6augP40DGEMdaRPD72UdjQy6JOzyL3w9QsQHOZjZROMMg5pWgRMhkg
         NtheCsxy7tSdCPhLqhuMbHH4daflQmiPim7ASsvVkyltfHWyCiB25CsxUclc4xAdjI63
         PMQ1fAYRPq6Zy66HfpjD/TNgouLtLlXIlELLylS+fWC5bQHjSXcSvLhQcZAGx6WXZ+Ac
         495A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ff0045f70flBe74A7cGWEn8aB6DeseAByUD0+wAM5e54h3YSw
	hQaTGm5Xhi1Ak8VqHixoQVc=
X-Google-Smtp-Source: ABdhPJxVOCLGjIBs0h/mzNv6P4JiGhmqCzjNMcwyvuNSb/7RrHTDRB6TgNDD3aDGwK7VhtbzBvS5Hw==
X-Received: by 2002:a5d:6407:: with SMTP id z7mr2225361wru.271.1603795500112;
        Tue, 27 Oct 2020 03:45:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7e4e:: with SMTP id z75ls574167wmc.0.canary-gmail; Tue,
 27 Oct 2020 03:44:59 -0700 (PDT)
X-Received: by 2002:a7b:cc89:: with SMTP id p9mr2104241wma.4.1603795499286;
        Tue, 27 Oct 2020 03:44:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603795499; cv=none;
        d=google.com; s=arc-20160816;
        b=jumCbfFuAlUEflmDjOFdrfQa7p0FyzmKYy0neXCryErYicBRqHN5McrfGP+MiFWL4V
         HJTTq1GwCrds2e0qY+TnB5eQlVeYGx5jlKhGr+qgO+fL3PIHxp7SD02k7Q0jlumIQEbT
         V2xR5zvBlP7bObXPMZiphIvBbwnADTS6DTOsNbD4K3+EZRFGHIdH+etu+CtTcdnl8pK8
         p7zv9tEjZioWXhlVUVmt6OW7Bn/6HIQroXcjCWWFVmaPHJwWg72YoNQmU1hRE62Tat+k
         6T3irfT4420xZeiSlpEC8cqwpBIbFtAbmGcpucbt9t7iDUiVL4Uz7VnmTexXqZcGJPSW
         QNSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F58e9lenK+1xet9ATHqeZj7trQCacmvynWTT0IRQJmA=;
        b=mIG5YmeoMUYYNfaUczfElqAJcr5ElnQ3GizHKO9VL00SNsOO2Pwy6Ci1nr12e7qOUC
         X10r7mis3u74lpWjd1zV8mG5MzzQzo7u0Cgn1MsXcVrCyU1odETlhpYRtkFL2DF6kd7H
         i0Pi5emPstDeI/3TP5UIdFMVxodsVCO5kJaj/T4cpXpbJOS742RFBZQJavhz2T3jn7Ls
         qDOhPdGFbrIeTMR4ctZ2Cu1qraMbSI2V9BrI7BtVnCOU8bD3Eh5J2L7E8PFcilqIEfZa
         wGx/vq3fQDuMZQiFBDCsNja/FahiZUbVZcxbs5K20zEBE4PLlX+DHJ6va2Q0Kzdbt2vl
         Io1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="e/y8y89g";
       spf=pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id f131si35565wme.1.2020.10.27.03.44.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 03:44:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXMTC-0002QN-PH; Tue, 27 Oct 2020 10:44:50 +0000
Date: Tue, 27 Oct 2020 10:44:50 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Amir Goldstein <amir73il@gmail.com>,
	Jan Kara <jack@suse.cz>, Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] seq_file: fix clang warning for NULL pointer arithmetic
Message-ID: <20201027104450.GA8864@infradead.org>
References: <20201026215321.3894419-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026215321.3894419-1-arnd@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="e/y8y89g";
       spf=pass (google.com: best guess record for domain of
 batv+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+aa0a192a1872a4578dd5+6274+infradead.org+hch@casper.srs.infradead.org
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

> index f277d023ebcd..b55e6ef4d677 100644
> --- a/fs/kernfs/file.c
> +++ b/fs/kernfs/file.c
> @@ -124,7 +124,7 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
>  		 * The same behavior and code as single_open().  Returns
>  		 * !NULL if pos is at the beginning; otherwise, NULL.
>  		 */
> -		return NULL + !*ppos;
> +		return (void *)(uintptr_t)!*ppos;

Yikes.  This is just horrible, why bnot the completely obvious:

	if (ops->seq_start) {
		...
		return next;
	}

	if (*ppos)
		return NULL;
	return ppos; /* random cookie */

>  static void *single_start(struct seq_file *p, loff_t *pos)
>  {
> -	return NULL + (*pos == 0);
> +	return (void *)(uintptr_t)(*pos == 0);

Same here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027104450.GA8864%40infradead.org.
