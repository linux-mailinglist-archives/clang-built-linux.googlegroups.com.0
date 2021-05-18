Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBLEZRSCQMGQELVWI45Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F74386E63
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 02:39:10 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id j188-20020a1febc50000b02901fadc53568dsf970087vkh.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 17:39:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621298349; cv=pass;
        d=google.com; s=arc-20160816;
        b=rhE+oRG8gsOU55ONowKjZBu27Woqng5lOUpyJ8Mgp6J1Yz+7bE/NiheaPnQpDo2NSS
         4YCVDJHbpVM7Uxghxbs7qY0rQUeeacglmEz8szBl3+M7EphjsmC8+n7bqrlEJrMteZ1C
         3a/9WfEKyTXr02T54zQNQ7kYzmR4ljbkIeMyVyPpuyZJcAjmnBFd4lt5oZT945SUTttG
         ffohYKQM3wRBB3HLiHaRKPTw9YzyS/VumkyYMmKrWdkNAJkH6NS55/RHxfFK7e47cCKv
         v3o9al0HfMJrqaJ3bcH6w4UOn3HmC+RwoxQdYBumv2x/a6Y8s7B6GNiychqMOrlw5E0L
         9Z5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=49aFMurqwEeNy+tLhbY9ytPHzH+sxzatwbLpDcyhW3Q=;
        b=ubAGzIvsZL/eSDrqrsqzsbBshZ3hXdPPRv9EVbGx2zZu2HZRAE3faFveMezY5o3Wfz
         Pb/cNSn5/Q+kLcmcQm8a5269r2/gBsO1a3Si6xtVvFXIYaaZHzjVVulGCUeN1pk82MR8
         /FoM5S2doT36QMczyuLWU0VMqBnvWA7qrEnJGmU3AejECOYrPkA3zj7cjNblIlD6K0IK
         6dpzPiioTpZfWk1avttr9EnjMdXLtl9Opj+3JUsjAz73pqTqOC2rviWcuE92LqWJR32y
         xDyhD865N2Fcfo2VqfYSglz9kc92DceRAXytWyKVwn83T+KjBlLv+62LDkCRfa4S/xFC
         8KEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XeKcnEwI;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49aFMurqwEeNy+tLhbY9ytPHzH+sxzatwbLpDcyhW3Q=;
        b=ImemrEiJ+B1nIGVCmKdxuTQVfSpmWbaJey5p9+McBrpmn5mcw4g5pgnBUif+pCaxFy
         MP5wqe6qMJTLcJtGySumbYOzWT8NozGyYto/UKsSpi32IXP9mmTy/nVSjvpjbJQ4iGLL
         qkPkBK7eW4OGFrS68H7O+Qju1PdRQ9g0Rv8H7e00CJqs8n9K5xLKJJd0ee0FRFhZkSZc
         qG+uNIAXTLU8tYO2FssD8OEx++PrATuyQMLTTZ9qpmV2eyPoQMqJBTA8JoHvg68vUmHw
         YKLi9B6oCx4tNeJ+OCrSY5u82+RF/3Cev0AljbcxlYDOnbO7mc5uelIKaIgsWm5aWIFu
         3B1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=49aFMurqwEeNy+tLhbY9ytPHzH+sxzatwbLpDcyhW3Q=;
        b=EC3LXnNTrkGx+79rUAUFIejTYZT9wfpJ6n7ZQLb/CqUmYfwKtmWJ7q24NWOCZS89X/
         r2tQpRiuI3jHq32mdNCIUREYgG12duGl1XfJ6F3e8B2UQXiZAjMzk/GgN7ZRqtkaAGr7
         fsBacBaA/sZhL/MV/78q0zba+Urb4LT4cBpSoU6nKsA7t+3IkYUq/NJEkEBY9PB9cdpR
         78wkv3ymoAszG6z47hqnAZy0iHiXPV74OEE+uyECwlP+mckG8uw7OQjxqVRBNzPaQeVT
         fXREL5avUpNwNpsnc0gQELJv16xRStvpixKUZT+FiK9dMYC8X41VqsY4c2cEHzFAXmpO
         3RJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=49aFMurqwEeNy+tLhbY9ytPHzH+sxzatwbLpDcyhW3Q=;
        b=jXhaTl6ScmB2Lp2ChQYOHUgnQhRbtNbugGfKv4tuzXzS260mDoGJBkWHXlpjWX2jFw
         mOJNwDRbyJaShK277700RVitT4MOR4gtxDozyCrhAQzK/9rt/z+GyRD6/DZt99P+FTIp
         tvb7mEOgPr6uIma3TZ5Xs/+i15DglAS72E66Es7g7MjAg413bDmeNeyfdfVwFyUOF5rw
         8woxKfDO4CjwrVIJ/iM0zi9fWggxgVvuY19NWGesvlS1QirXo7WYfVgmw0y2XU3boC96
         pKCu3UlbKOHH0Le4v4bHbRwc6N5y9fDHcEdpU9Uq8IWN/C8ZNG7q5i7FyUK7XNZP8YX6
         RwBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nWzQtMB21wzl2ScH5aB2NY/GMC8EbtmoxZofFHj1E8if2wDN2
	7w/mMB+aOQHqwA6wKlr9WSQ=
X-Google-Smtp-Source: ABdhPJwDTjE4J/iYWgJ1qIGnINeGuCoIHznVAKBUAOvdYf24Odxy3uENQtWA7a6Bozr6aImRHTEJ8Q==
X-Received: by 2002:ab0:12a:: with SMTP id 39mr3123624uak.19.1621298349117;
        Mon, 17 May 2021 17:39:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5a65:: with SMTP id m34ls1093099uad.8.gmail; Mon, 17 May
 2021 17:39:08 -0700 (PDT)
X-Received: by 2002:a9f:2d90:: with SMTP id v16mr3005398uaj.138.1621298348356;
        Mon, 17 May 2021 17:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621298348; cv=none;
        d=google.com; s=arc-20160816;
        b=Zarzh/c/b3FvpzRvZZm8WZwCRtEsG2UvQY5+GW026cq99camX6OYfJ1+LnTJPOsHiP
         ggOXRmQ9nlSwJXobRz/oRXNWpNtZW3wkL04OiUEe0J45vlXWIlMa95feAeUfR1WxEUzW
         5gZh8HrDBPN2h0vHYPRG037BQurywzZY6HDfHRLOtO9wTCr99xPEWVu6v5mrlcyxPRbp
         TF+5aKnT44bhsk8ElzuKnyQDDQCHNUeglI/fPsLA3wkLES95+Lf7E1GWm4OTW5X7W71z
         oKbjaEaUde9+qTPFvODdiDLs66RKlVPsT6OhiTd4INDNCMQK5RmkhcZVZly1LMqsyp2r
         FOEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XJERjlzz2JqpiW35y50+LdlSX0FgN6gm7UsIOMCxH9A=;
        b=htBp7VHolvMatX6fatS6j5yV4arkrxlo0wywrUwiMYEkAwTNWb+G9h11lY/F8w6oQg
         sSQ7Z0K7r4aaFby/DUYDfzEGmWFpvzUL1eDlg80evmYs1+SnJ/2k004Ob3VNOAda5aE+
         XqpJnvToV3lqv4/UeyCeiuHKmydLWmbjCucZz4Ezw0xgtivKI2UKSGm0nHpyKgixNiyz
         OIu43vTVYCx/KjOPbiiFLCpCn9gVUvcRxRS+taEXT5HlaEBjDp0rlnMnEvt04FX+zkLw
         3Leq/LbQaQwiWHU88KlIjyqb4iRrkVCUAxDo7QhiCkhz+i6iWyxUv/bizx0uOMEt8LHQ
         fXtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XeKcnEwI;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id a1si1344146uaq.0.2021.05.17.17.39.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 17:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id pf4-20020a17090b1d84b029015ccffe0f2eso580876pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 17 May 2021 17:39:08 -0700 (PDT)
X-Received: by 2002:a17:90a:fa5:: with SMTP id 34mr1938655pjz.113.1621298347440;
        Mon, 17 May 2021 17:39:07 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id z65sm10940314pfb.13.2021.05.17.17.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 17:39:07 -0700 (PDT)
Date: Tue, 18 May 2021 09:38:59 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
	iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
	cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210518003859.GC80297@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YKC9CeAfw3aBmHTU@archlinux-ax161>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XeKcnEwI;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
> This should work I think:

compiled well with clang-10.0.1, clang-11.0.0,
and gcc-10.2.0 with x86_64 default config.

is the condition CONFIG_CLANG_VERSION > 110000,
not including 110000 it self?

> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 9d316aac0aba..1b653266f2aa 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -413,7 +413,7 @@ static __always_inline unsigned int __kmalloc_index(size_t size,
>  	if (size <=  16 * 1024 * 1024) return 24;
>  	if (size <=  32 * 1024 * 1024) return 25;
>  
> -	if (size_is_constant)
> +	if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_VERSION > 110000) && size_is_constant)
>  		BUILD_BUG_ON_MSG(1, "unexpected size in kmalloc_index()");
>  	else
>  		BUG();

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518003859.GC80297%40hyeyoo.
