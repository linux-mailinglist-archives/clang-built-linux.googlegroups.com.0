Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFPL677QKGQE4EGZOKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA42F39D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:16:38 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id x17sf2042786iov.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:16:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610478997; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZhqDtdaqpZd6hr09gSi8GGeq64ZyTkbKX5NOudDPaD2LVrBsmjhjShN1hZ0mN4+cN
         Jt6nyEKbcJlKs6VelzzPEXktjH9KqH4TXZlZnQJ341o8eHt9Ef5aqWT8HJdhvdi3yHdu
         gxo5jwSs+MFIoFGpjVcqYFWeT9cHKrEbi1YLvqu2yiJ8hjKO8I6rmRb2JfIBN0aPBNQ6
         OqrFNvbEnoN2nxXFz/+CNyYhOp9rth0o3Ej+Eh/J/s9umLkFBjtOcC5OFIoQADLM2d7Y
         vqm6GJRXgXD2bge9tgsPMiuWfxiHg0Ti9HtksMRmTP0vGxKIrEFOtWYe/CEbUgDjDhK9
         KlpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=R5lY86a076WfL/urHljbGUSHWrPr0Lflq/a8LBlOIi4=;
        b=sewlt1UiV1JBM5SXMGBWnna51AjRn1pJ7Cfc+4Ismyt1qRxUIftxXtIKK3PrHhWXW5
         C3LJz1ciA/zrnSqPgcH1ZAsngcP7xCHglPknKoXKOoWA32scu/KXF29bIVFKf8jqQW4H
         kmxQsINepRlibsxkHNTBjezpoeLSWvhu6EIAdRFc+2e+SOTkF5YZptvquY4KqNFJX531
         xTYJy/ypoRrITgr5A+TEMeu0+HwjiGR8AwZth+Gd/yGstokKCDUcSnwlDqqcNeRGcr6R
         HorLSsO5d8FRRpANppL9mSZyl9fnYCnEqg3gAIvLieIdSXJtYN8/M2vN6+pRBZcURjHE
         38SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da7TPxsZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5lY86a076WfL/urHljbGUSHWrPr0Lflq/a8LBlOIi4=;
        b=OlYltVTyQHsnlqPiIClTlqUk1Xti+//fBQT75jO8ZRmqNZjESSeHxhRUhu7za5IN3B
         fVmbdz8+/wHpsUs2jIrvxeBYO2ptjTrI/lwKUy+6QWTdwaNktdhcthOUbU5DFGqviC+w
         QjS85Zp5YU0PsY+/6F8I/s0AI4Ekwcah1DemQ/UW22XmYzCCCCYz2u5mX6QvZnTZyzqq
         xriwy3uLtRMyFgISIUqnN9/5Vj/cFVkH/rPSLI2x3TAF+yzVoSKyj/uYXxAvgeMaztsp
         kVBKbrYBAbxuFJaiQeQ8hcQ2c9wkwIRzHiCuPl8ziY/F4lXbNY++onMxgH2JmS24Z25J
         cRrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5lY86a076WfL/urHljbGUSHWrPr0Lflq/a8LBlOIi4=;
        b=h1q6eQuZO2Dw/E5LsoWls3P81yfCg9ki8dsXvuf7ZH6Jqxiib5ERN1k+aYoT9Q8L5U
         Mx9asIAec6mOXnVspbq+N+yB20FH6JWKqjwAN53G3Du5QriOwMWCFSIrtQpSre8ZFdab
         2UazNcSEJ8u9iwv+x8jbRCxoPOvjgB7j8hG5xKnn9oy5EeKWKlr7HyasBMZ/Fm5pD1zo
         pWqJE3s9xjSEg2CGuC7mzGJOUUn6RKz1WQ3Vyw03c01/A9GVyQ88iJnv5G/MPh9aJWb+
         D7kCWxbhcDYWzSeVNjCXnnMIk9MF1BnLKHevOVArq+Fyrbwkker8wZId46jnBJLoyGTW
         1pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R5lY86a076WfL/urHljbGUSHWrPr0Lflq/a8LBlOIi4=;
        b=I+oNdbJ1UtbqtL+Um6X7pb25xFMWKF0g1EDEkw5TIHv1oRcQ9PeYL7JXmJHLP8fsGI
         EfUANpHHAdLzsSxJYOgJzrQCyzz+SRhA3bWEkTUlbmlCdWnx0x6JiTv96EbpJ7/vDE/v
         6UFho/c/z2hx13cBToJeXSyG+a78qsG18u1aKfvyzlDXBhWfFa+mKn4G4b6V1CPYSbVX
         sngvE7AZHJDctJd/v4i+oSronmfp3VXPsxrUIk1s6eL7p45zuEOXAkZa00BvUI87D00M
         go8msHS/J8b8hejjPyTmS7NoZUr9UTUKZVvSzQpveFFLe+pFsLYkXtud5F5YjTwyMmbw
         L1ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y0vy+AJqpluGWGM023wqvomOl5HSQNu+4tOdWIFICSWxsV+/d
	qMH1U7CxY8hkgT+O8D+zAng=
X-Google-Smtp-Source: ABdhPJy9RWJ9mvdvfSS0cqj3vKbluzEgtchzj8h/Ju+pBpUmTGOu8hCAhRjmKGo+/B9bz/ARlAgivg==
X-Received: by 2002:a6b:6106:: with SMTP id v6mr381676iob.39.1610478997299;
        Tue, 12 Jan 2021 11:16:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9844:: with SMTP id l65ls1302867ili.3.gmail; Tue, 12 Jan
 2021 11:16:36 -0800 (PST)
X-Received: by 2002:a92:40c4:: with SMTP id d65mr530048ill.197.1610478996867;
        Tue, 12 Jan 2021 11:16:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610478996; cv=none;
        d=google.com; s=arc-20160816;
        b=j0Qgp0HZ9She+mO2tqagpLhkdQf6iywzOdBNEw6/Bf5bn/6C0IKUX1lSiyCiha4Qei
         OcHnDclihgJHaNKUcd7n/LTIWGTYJOAgsVuDYvi7PCe0tezw/iNMTmpLa0EBIq0HN7sF
         2Ir89lvA7g0iX9dK6QbgdqL1EGnM9cg2QKPoJK017LhSRDLNtotNd+Ec9xz/58X/ToJ6
         5PNqBNewLM9ycc6tk12YpoxPnQi7L+iqHPNhXpSXY5TOKFKx/6H6EdQlIO08sjl+jpD6
         Ap4YKT5lM1K1hQcjMC3BWhOBQxh744y0PSt5md3MorlCiVPkf7fSE1dENmL/omt6Xebd
         SYGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o1zIRVvlIdRblMLiKBkvOC2xTqqgWEYJWublDCntGKI=;
        b=RzFjUHbTJ2r6rCSV1IFAcRyzWZGqTSOYBthSUzk933XJa6RNq2oacCoWYuoYYubF+h
         31ZyrYg7xvw+rFa/n5B10JyffAXS6GZd19OOwUESbgcEqLWo/3MNdRJYJcvZ/pfwXQqC
         IyhmBLDhfy3UgSOqs/Xeb0j6sBEyp+OtaKJx1GD66IQvXPdnUEgAYAGLHtKkTFYOdknD
         jhtReqG7Bhxl4PHEk2jQv0x28aO+vYdVvTp3m/MT4M4Wy73kanDxXTZ1WorMNRbO2+Vs
         179RapajSbdJOXRHN9fFg38oE4nwZjLFPrwJzoGypLjUUAYk5ANPBOPUyeOa2SBl5zt1
         +fuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Da7TPxsZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id t69si433286ill.3.2021.01.12.11.16.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:16:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id 22so2907378qkf.9
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 11:16:36 -0800 (PST)
X-Received: by 2002:a05:620a:983:: with SMTP id x3mr885878qkx.231.1610478996551;
        Tue, 12 Jan 2021 11:16:36 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h26sm1694864qtc.81.2021.01.12.11.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 11:16:35 -0800 (PST)
Date: Tue, 12 Jan 2021 12:16:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <20210112191634.GA1587546@ubuntu-m3-large-x86>
References: <20201230154104.522605-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230154104.522605-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Da7TPxsZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Dec 30, 2020 at 04:40:40PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang cannt evaluate this function argument at compile time
> when the function is not inlined, which leads to a link
> time failure:
> 
> ld.lld: error: undefined symbol: __compiletime_assert_414
> >>> referenced by mremap.c
> >>>               mremap.o:(get_extent) in archive mm/built-in.a
> 
> Mark the function as __always_inline to avoid it.
> 
> Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I would like to see some movement on getting this fixed in 5.11. As it
stands, this is one of three __compiletime_assert references with
CONFIG_UBSAN_UNSIGNED_OVERFLOW. If we want to keep the BUILD_BUG()
around, I think this is fine. Alternatively, turning it into a runtime
check would be fine too.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  mm/mremap.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/mremap.c b/mm/mremap.c
> index c5590afe7165..1cb464a07184 100644
> --- a/mm/mremap.c
> +++ b/mm/mremap.c
> @@ -336,8 +336,9 @@ enum pgt_entry {
>   * valid. Else returns a smaller extent bounded by the end of the source and
>   * destination pgt_entry.
>   */
> -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> -			unsigned long old_end, unsigned long new_addr)
> +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> +			unsigned long old_addr, unsigned long old_end,
> +			unsigned long new_addr)
>  {
>  	unsigned long next, extent, mask, size;
>  
> -- 
> 2.29.2
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112191634.GA1587546%40ubuntu-m3-large-x86.
