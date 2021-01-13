Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ7S7D7QKGQE346VLKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2398A2F3CB4
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:06:00 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id p184sf189828vkd.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:06:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610496359; cv=pass;
        d=google.com; s=arc-20160816;
        b=lrxaeiSsCq6X/HdYJZc6Gj7M8/ta+dEzzpZ52fJhV2/uR2K1N5f9zeXikpGgb0sJ9U
         Bvxad2RyKrKqZ+a3CpZqx+yz1j0YSPuTtSgEcuGHjHlRexg1p4hML/pNHqhbvc9UVrO4
         khg6m0b5e8G7l0tFwklaSXZzDLoe1E2zt/ZK1xlxnanShzx6TCGCsDTqGfueY1RGbm0d
         uLz6oTSp1CzqSkHOnQyZ0Jmfs+n5DlxrJ4Hb+I7UwA4kPYUTxy1E1cb6kYRhny8TuXAQ
         IfVEyOAMU46O/nGTDOi2YTqGB6kVUEfMf+ACjep+zo3nrW4fq3QBphrK5T8pUj7wMRs3
         71AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=J5+z2O+JnimUZe9YKpnuEHoPihD8wtb2njZdQJ90Wcw=;
        b=k2Mb51hi8p2nUHzSMEJyUuulHnluiRueSl/pEN3s93B0LnOio8zX6LoCdN9R5/XfZ0
         Od1JxZ8meE1hPFvfaUMep623v5Uca/X39GogqoP5ePtd/iChfBsKzMwAsHR+UHUEC4g4
         +ZSH2AkkxuA79802AOBn/dFS7RxcyGlbIBZMEhs3Ym8jvyVttSLnRoRA1wW3TaSU4dCV
         2fd+uaBO/qprpiWWluCApXVKXumP2MI4XcN9PE+QOzqRm/lnZHWhONJjYVnSf+rHm8FR
         yqoTKQMr3iBdEq9EHXoo9h2cKEKen37aDHthcMFRgP4nQnB473WACakO01VyJl/44lBi
         /Jyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVXB+hPo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J5+z2O+JnimUZe9YKpnuEHoPihD8wtb2njZdQJ90Wcw=;
        b=VlcP3P8hyYMIU4HAZPY3BDqxw3xwZ73MJ+CkXEm9VHeo6iZqmur9K3aUyWGGEDtXdv
         nPZTuHalTYxpxsYMCRS4YUhES0P0WVUnwHymSh3NIYpE+YP9VDOm00mtrVa4NSDRtZpo
         5Na482b7q1QIU70bde992fCy0up95QJKKmUVRMAxZkUxMr0CjO0R3EpGWySWq1Qu4rTz
         CQnHw1l1qVynBPIbBk1TsT0XBkgZ8SYTS9pW0x85Zqj8E1kGp7rKBiV76rsmbZ+XzsmM
         u2wGRh3EwQ1/fqIccrGvfusHo0ULxNFtpMmHINLg/qteq/azItbUAnWNORcoT7+a2sqn
         JUnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J5+z2O+JnimUZe9YKpnuEHoPihD8wtb2njZdQJ90Wcw=;
        b=inY8UptGQwgbbhqDYTydcbcW9OBzoLPEK+/0tY+eRJ3TQJJjU+mvm2pE2KnWEfBHcn
         A6GLtgfWcQcYyOwuCGL1LXbEgPQRG+4G0Y2padc0qA9y6m8wOhuz7P5Blm0P6RVis+uO
         YlCikeoQFUNiBRZZgfoAowOd9A2QsmeVmiPldld6kJaRmuev7bi4b3Qkncndh9ea+jq9
         na9d+0/OO2/bBh+lYLrbUtFQzezBzo7N8yKOTdCGxEkqGueDIPw/9C4HMMDZrYz/g2qy
         U1Dv1niAuAn8vu8NN/EnJI3qil6/jRZQ9bDsRJuC7z65n4S+S9dH3B/ErRlqx3nQTcvs
         wz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J5+z2O+JnimUZe9YKpnuEHoPihD8wtb2njZdQJ90Wcw=;
        b=Jx1WhNNdDd2Ddn1KRKCjPB4lwaXhFuP2kQ1ezTZBiTLlPP1h8SPvBYHtlCn3Izl8h0
         /DKojuIGwfsVFWbRDHL4yyPC/W9rCBAKnENck1nysmPrRreAtng0N5kCfA4s5gU1EZf2
         R5jZanX4+EOuALEBy2gpB0jjtDD+0cTXfrLzTFmq0nJiuyqErNVEQZd5m9D3tyXztF3B
         gt9j+OmfVJ5jdOizvVYugLPj3+H/4oyHf1HNFjlb+mXCvVWYvi4RcisYUb/gmyCtCe90
         SUBpz+VIa7tKOIOtOKpYe4H4U9XYYRtVCNsmFaGy4rnCRtHxVp+K/qz74GFjDxv2U3lE
         BfQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PyW3ydie0D7pEezzaHqlnMF/UdSahoxq/NjnCF7GurrOAaRyM
	CXloxoy0YQQ6XFp+zPjWk+M=
X-Google-Smtp-Source: ABdhPJxaEhKosSHjtD2qyg9Aj0lCnV6ISNfOnIdaFPGbD0pPHwu3YBhzzgRgUjgqqFJnXdob97Ispw==
X-Received: by 2002:a67:fc87:: with SMTP id x7mr1981336vsp.38.1610496359190;
        Tue, 12 Jan 2021 16:05:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls14510uad.10.gmail; Tue, 12 Jan
 2021 16:05:58 -0800 (PST)
X-Received: by 2002:a9f:240a:: with SMTP id 10mr1874267uaq.124.1610496358702;
        Tue, 12 Jan 2021 16:05:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610496358; cv=none;
        d=google.com; s=arc-20160816;
        b=IkkLGzdm2t2dmgxiwOpJ5yaHOE8r2bydsxFlfaomZmEySidGw29oTi1SjoVGlQJSEn
         l1KZUMMZfqcShJsD3Npeg09Fdgqpe0M/xuM/6qJw89LLXoyHSSCztW01x8swHXYVLYX7
         ThbL9k2jLRNjq1NVp3xNAsNBaD9W1dJXeRIlSzBtJbR5kGFPcUfgUe1ernpq/4w0aK2e
         PjiOlMwrq1jIlnDIUVS3418lH7D5LiJ4lcSwMTm7BAaLuWxxKEb7SRI9YwbmRNeqFCL5
         8zAcYQBXLGW7SA5rrZTKos263Gvb4W0A8o8RaWitCxuAc53TU5+ErRQMAv45ns/Tw+Eh
         jpOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RdoZ7GoxSEbYVJ01iieMFNr9Ola9MkWTkjbqFK+imx4=;
        b=kaa10Q7cP91/CSxcwSjIBvN1J5eue7p4sTyBjuN+zbbA6xCEAqYxdF7R/6qlap28N2
         7pmKFdoygLamblgsvbz2SQeJvzKf3bKVBzbY246ktHgPYP8WQMAwPPfM3Qz3RSGtQj1i
         e3jiZMGr2WvkKWfSwxpdhEjVJyCKqFGXhy/71FvUT2SBPlMKui8jvBDOgn8/60c/SiFl
         CIhVIQmX5O3v9vvVj4WiDtcqvleY35VssbaTDpM57XvbMcrKitiuliitqvH5ZnXyQldo
         r8M6rjR2KNdOv0yeMbmvijD4vROAs6HaReUNLqX3NoFNsxN5vzCNmy85e6wLM6b8gbjs
         squQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVXB+hPo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id h123si16505vkg.0.2021.01.12.16.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 16:05:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id 81so450490ioc.13
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 16:05:58 -0800 (PST)
X-Received: by 2002:a5e:9b1a:: with SMTP id j26mr1345463iok.124.1610496358109;
        Tue, 12 Jan 2021 16:05:58 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id e1sm227666iod.17.2021.01.12.16.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 16:05:57 -0800 (PST)
Date: Tue, 12 Jan 2021 17:05:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] ubsan: disable unsigned-overflow check for i386
Message-ID: <20210113000555.GA1584947@ubuntu-m3-large-x86>
References: <20210112202922.2454435-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112202922.2454435-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FVXB+hPo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 09:29:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building ubsan kernels even for compile-testing introduced these
> warnings in my randconfig environment:
> 
> crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> static void blake2b_compress(struct blake2b_state *S,
> crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> 
> Further testing showed that this is caused by
> -fsanitize=unsigned-integer-overflow, but is isolated to the 32-bit
> x86 architecture.
> 
> The one in blake2b immediately overflows the 8KB stack area architectures,
> so better ensure this never happens by disabling the option for 32-bit
> x86.
> 
> Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
> Link: https://lore.kernel.org/lkml/20201230154749.746641-1-arnd@kernel.org/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> v2: only turn it off for i386 as discussed
> ---
>  lib/Kconfig.ubsan | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index 8b635fd75fe4..3a0b1c930733 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -123,6 +123,7 @@ config UBSAN_SIGNED_OVERFLOW
>  config UBSAN_UNSIGNED_OVERFLOW
>  	bool "Perform checking for unsigned arithmetic overflow"
>  	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> +	depends on !X86_32 # avoid excessive stack usage on x86-32/clang
>  	help
>  	  This option enables -fsanitize=unsigned-integer-overflow which checks
>  	  for overflow of any arithmetic operations with unsigned integers. This
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113000555.GA1584947%40ubuntu-m3-large-x86.
