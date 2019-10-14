Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVZR7WQKGQE7SHDL4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C958AD5989
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:25:47 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id f80sf9138560oig.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571019946; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZdezfU9zcLLfELHErFrS+ErxKtrfbj9f3UiISJYZgnlbmcnp1PZtEv4uAcZoMASI0
         WWiAn7jtqYjnqNhUxBChsWRkKGj4HRJ1HRJ2m4Nchtf+ICA0u7z6lYYGXl7J5QxijNvm
         9PawZRlDJSMd6BE5HA4X4KM4iMtzQXxC7gekwfsjQf8kXMeFTD3egaukN+omTSVUli67
         OsD1diGX0W9fX0Uy1NSNprXHLz6BwugE9O95+W1fEzhty49ina0KIytpVULiWGP0zQN6
         41U9OHL2ntTMGUTstLDM1hUTmtw1cQ9IYqjsvw50U5pyFdwifHtkKxrOuYlal3TJPW+9
         q71g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=JvEyrQBWki/MAhhld9VGxloOx4h/wT4/Q11hV8PJFUE=;
        b=KIvfKzjsewwI4E788In5YDm39jaqg8vWiStL3MaZiE1cm7XySZwdvMD0rep2rb92kX
         XPItd7QNnvmyxRMkufY53VIE0QjwTFxVR2fGrx2IDPzb6cwhr8YiWQA7xiXvFpDfiR4i
         wr+sGmXJAp4KhyKuBbF7nvgcj6YGV9XqmRwMkHsJ4Z7q81T+35+0H3cdR0049wi34IQP
         91eXuxb19LnI/dYbM24P4iHjpmXRu7zW1Zu2ECKLTKhVJdJxg+Kh+9X/mXpQ+BX77Fq3
         lBvaYCYDhxVw3TUReGwJSxyRALCoLMewgI4xRhBv1O6q5MvxG1NwUuxh2TQBkU/Jfx8Z
         HViQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IS5BQ/44";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JvEyrQBWki/MAhhld9VGxloOx4h/wT4/Q11hV8PJFUE=;
        b=Zl7RxDZ3TDhAboEk8M1v3aD9e5vtePjZw35CAwH+v3juM7LDHOa3hsd6kmFUlbcdI3
         ZmWIx27gLAmbGJ0JaCP9qRgCjkG5x1LiyHT0EPjli0ue4h4WlLqLTY83g7PtASfO+mLj
         fQVAXsvJCHbv5YBYpENeNBncIkniw7xgSDZZ3L8P4KafN5kljXhs8mpnwO2UhfCvyFMU
         VeWIiNyesf9gzN8Vt1Aa0Svjo7lwKJI+DOg3mIsm2iDGmgWvGtVeKB3UPnbZxlXZfNFd
         FlB53K5UZaK4DlW+ssc8c9WGeSVi26C0wKm82XQnt7u1yTH8yZxUqFOknC6SpsaH8wEZ
         AxCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JvEyrQBWki/MAhhld9VGxloOx4h/wT4/Q11hV8PJFUE=;
        b=puNFvgK4iRWk/jvzveTPkTt9AKnz6lVGlozkAxIJjUdDnRHBIWkxHKo+G3gENv6Px1
         kt3yxHSLg4T+n6dbdmnC1CKEZjJISPpcTRTNoq9NZmEz07+0kSX9+FQ2dlJF8FMd31SJ
         Tm+lnCrC5Ztb49y/2cjje+voNbU4/TsT/InOwvnp5HvxexHUUAILFEBAkFIFQe7ObqOB
         oHafPErHj5G1serjBlNH9sox5uZdYeoMOlXQRHwC/GW7IL1FEc4W+lUmhXwBOgANGHQt
         9jYWjf0pyzVJbSpZH4e6fITCXKLMG4W3ltKCqJhqh0PGwOtohbzQpKfcY1DeH9jOs7I6
         KH9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JvEyrQBWki/MAhhld9VGxloOx4h/wT4/Q11hV8PJFUE=;
        b=NmzDRPeW/+Oe9s9pn2e/g5di0Sj8QOdFS7KxyBOuPq25fzURIoVPRT2oEzHYJXBIwz
         wM3dYKikEcu3RY7btg3YruhOuX0z9ZDw58F3D//K5nCSAjqCZHCHuQhvs4OSOrXKXIeq
         Y7KpusP4vZolJIym96fsZLXajI0cF/vGSnhHWzmfW7lA9c1sZroZ8ikHVfIalJdhNXng
         lHhu2PrY7hyt4s9sBzOo5NTbMKIkMTZhvhqRUq/Hc18YEa5rcGdIp2hawM7vDOcQDQQl
         WXDjnaNXBKVkG04O5yeDp7jEYfjlk7ALBdtW6yh/zOAXdIOrA2DEltpCJqlw++OgAJxa
         k44w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPMpoDEEORi+CmlzypgFjR5Hk5va27TlU0qXkKkikQ9StfBmtd
	Dtmo5W4o9DJgiQuouL7uJeU=
X-Google-Smtp-Source: APXvYqzd4jV63JDE3lO4izT7YdadoCu4yYwHEvPdDHgtgVO13yq7yBNMC+dTOCI1RYs/6ZXTeEKXBQ==
X-Received: by 2002:aca:c5c6:: with SMTP id v189mr21664401oif.169.1571019946425;
        Sun, 13 Oct 2019 19:25:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls2396281otg.11.gmail; Sun, 13
 Oct 2019 19:25:46 -0700 (PDT)
X-Received: by 2002:a9d:1d2:: with SMTP id e76mr23814159ote.30.1571019946111;
        Sun, 13 Oct 2019 19:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571019946; cv=none;
        d=google.com; s=arc-20160816;
        b=L5gvL5We/lH4x7Zr64A3s28sxeg5u2qhZYfN71I7QLRbIuikV1FnzicFmLYLqOufom
         t35KQSn4+8MIoQQcwLuB4L2m04bqm25NSAUessQ/2ivd+Zkd0WXszT/kuO7FNGxWqYF9
         OzP0YQFvJGGz7xJbx/gt0J+bQTfpxFTqw3tZZ8jVygbT1GpTWKnnFPkPhwllamK9jvOf
         nqT0B016AFIgngeIvmJOuc1sFrE2Hqke35Hw1TaI/Blso28e1vcljGAvlv2u11uApm3t
         lgJCC7FNPqApjiZkdBhKnmNXYZXW5q5mzIllOJjmA6A01PzXklgGSgKrcYl0Oe5LjZk/
         uUNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lP906qLGyTEBqe55BgoOje0n/wNr+NcPtklrVASvvHA=;
        b=Llm6P5Q7YlaHVYf2kqgFVZkUZpAXKfP/R5AWcQ/GYPFgreApqv9idbbK/RdAMLjKEb
         i4qpP6EeAqGzZhKhuVdBkt/3j89OFB3aRCg0vGtvAUhs6JOP74UmDgE8mln8l10Iw4ci
         Yvcf49/oowV04X0X7aHb95kaekhabNg+kPEovvTYSpy7YKmwmpxmRwyOSza5ev2b1yFt
         99zmrUzn+QEEKVGhAs0P1+y48oRQUGQIT5CyS0iIOvh4GHSVypYrm1eCqTD6ELwoyzYN
         akPF2H1e/Hi3ESdcylVskQpYUvTuzAQZAMXM5zAp6oJr/TIiQVLw05L1nLD966Bx+ffA
         JGOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IS5BQ/44";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c67si295541oig.1.2019.10.13.19.25.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id o44so12535204ota.10
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:25:46 -0700 (PDT)
X-Received: by 2002:a9d:12ac:: with SMTP id g41mr21703818otg.57.1571019945644;
        Sun, 13 Oct 2019 19:25:45 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d95sm5617723otb.25.2019.10.13.19.25.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 13 Oct 2019 19:25:45 -0700 (PDT)
Date: Sun, 13 Oct 2019 19:25:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Shyam Saini <mayhs11saini@gmail.com>
Cc: kernel-hardening@lists.openwall.com, iommu@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	Christoph Hellwig <hch@lst.de>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Matthew Wilcox <willy@infradead.org>,
	Christopher Lameter <cl@linux.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kernel: dma: Make CMA boot parameters __ro_after_init
Message-ID: <20191014022543.GA2674@ubuntu-m2-xlarge-x86>
References: <20191012122918.8066-1-mayhs11saini@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191012122918.8066-1-mayhs11saini@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="IS5BQ/44";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Oct 12, 2019 at 05:59:18PM +0530, Shyam Saini wrote:
> This parameters are not changed after early boot.
> By making them __ro_after_init will reduce any attack surface in the
> kernel.
> 
> Link: https://lwn.net/Articles/676145/
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Christopher Lameter <cl@linux.com>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Shyam Saini <mayhs11saini@gmail.com>
> ---
>  kernel/dma/contiguous.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 69cfb4345388..1b689b1303cd 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -42,10 +42,10 @@ struct cma *dma_contiguous_default_area;
>   * Users, who want to set the size of global CMA area for their system
>   * should use cma= kernel parameter.
>   */
> -static const phys_addr_t size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
> -static phys_addr_t size_cmdline = -1;
> -static phys_addr_t base_cmdline;
> -static phys_addr_t limit_cmdline;
> +static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;

The 0day bot reported an issue with this change with clang:

https://groups.google.com/d/msgid/clang-built-linux/201910140334.nhultlt8%25lkp%40intel.com

kernel/dma/contiguous.c:46:36: error: 'size_cmdline' causes a section type conflict with 'size_bytes'
static phys_addr_t __ro_after_init size_cmdline = -1;
                                   ^
kernel/dma/contiguous.c:45:42: note: declared here
static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
                                         ^
kernel/dma/contiguous.c:47:36: error: 'base_cmdline' causes a section type conflict with 'size_bytes'
static phys_addr_t __ro_after_init base_cmdline;
                                   ^
kernel/dma/contiguous.c:45:42: note: declared here
static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
                                         ^
kernel/dma/contiguous.c:48:36: error: 'limit_cmdline' causes a section type conflict with 'size_bytes'
static phys_addr_t __ro_after_init limit_cmdline;
                                   ^
kernel/dma/contiguous.c:45:42: note: declared here
static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
                                         ^
3 errors generated.

The errors seem kind of cryptic at first but something that is const
should automatically be in the read only section, this part of the
commit seems unnecessary. Removing that part of the change fixes the error.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014022543.GA2674%40ubuntu-m2-xlarge-x86.
