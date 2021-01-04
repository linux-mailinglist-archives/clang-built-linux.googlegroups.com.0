Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5NQZ37QKGQEOXHHEWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 288CA2EA013
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:36:39 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id y5sf14219014plr.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:36:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609799797; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z22mR9cbviAlHiLbchmL777ikgYEonf1BHfCj0O4KrWK2wmmuHXitgEA4hBotIqNcW
         jUW3sr3DTIZTsTDcm6jb50fzsqI8QM4cAC1v0GmlIDxd9deiPNASU+OX58gUt8sPfiek
         s8iJGETd9IAy2Rm0YSGbVHDKVO/a3iN35ZlB/3497U9SMR83AfNzOh8/hMsCG0eyVvEy
         Zw5fa+GiFNTOu05NIbOTUDV6jonZKB36VDI7It8Nh9vhsHG8Nq/+OEtKDnqgS0ARASpM
         RMe+xJVkDj2owNV6WsA8R64ClgXN/ODJHUzZ3ixC3u+T7Uz9HUIuV8D/okYMS2NPCbiI
         zK9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9axQ4Kgea6t560kwneSHfllB31WmzTsqRow02dX0xdg=;
        b=rgM0Z7BsBmPJv+pNPBVa/d07JNC85QkrAgjkq7jS/E+/wcRCkgW2bJdh6uMOUbVVgc
         NXOx2LNYsvTeFktcQNI1qpg8fjBpY5dcsZiLh8Uew0wNNQwYnakw4RZoXl3RKzEFzRQB
         SMIafMsSKdRed2kjC3VWajseRafTAmDDEDp4myVpdAHLZ4PRB3eg9zl6KG71VXyC4B/L
         qbkvAueKScQER6twDn70Tlvq5H3GlwVjno7N/uQfsGYOnhha3WmUeX8YLnW+tsajGhmM
         74+oDMGcv51eBL/GhHlTDNsy/4awvYybw3O1w7RMwzRRyGnphbkFjEzGx7DFlcwEPlOt
         2TYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r5VJryTB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9axQ4Kgea6t560kwneSHfllB31WmzTsqRow02dX0xdg=;
        b=fmsmkHZmvHgT8kPu0dfUYx1HDSQMCaDC+Ap52c3YYJqmlM7OTIUPEQgMw3vBzyCpfA
         MVrdemYDmD4mFVLhzRY7qeFdqP6ypr+mhvv3kfShZzCE76OscOO3yKrd9ZfVXwiD5w16
         BlFNa7LHlJcGSGpEU2GFkCZIRJ6Q4cyzbe0fhWyt+o6zg6KPD+Rt3b9eNwkz+2y9mbrA
         NtQynkfWCFk3UklQRJkpDACdsCWnWy61Gg/BZDlEyp3NP3ao1Zk9jXPlnwrcKEI03dkW
         ff/XAGN1Y+OzPV9xm/BnJmT4u8n1uZdqW4DTJ0TxThiY9n7qM5aa0h/RwNWq44auEP3Z
         AerA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9axQ4Kgea6t560kwneSHfllB31WmzTsqRow02dX0xdg=;
        b=ZR24hChli6bGEtvgjfe2dJil3jIajQGpBTQsyUBdwqi42gMB/md5rRYxBu/7/ywBix
         /Xupa8ECYhvQ92PuTsn7kzUiFKSw2U0FyF0tDwUELMdkMqUSVADe0DKkoeoEwpNtODAM
         DKjdC1JAXNu+Cc0lSc8yvAm4KVP2oIJy7bgdtbjGnMjij7wPbIdnX8wNfwGOrRAF6W4t
         q7RqKBX134xjm9U/uxzZpPRGG2EokOeDye0I6UdGqio/wt6k9LLXcxrPE5wYCkOcpQ74
         GsVBo9ox1x2tS9SWUZCKbMrA8dWEvNlX9XsJBeopPXlT9B3OtlOFktDZS5PPrlR/rrOH
         HLPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9axQ4Kgea6t560kwneSHfllB31WmzTsqRow02dX0xdg=;
        b=BMWjVQzK10uLXrTttqoxP1N4r3ssaOo5Va6Uefir8V1J3cfxjr01R7uz3gh+1U+upk
         z665wBRSjmBiO1HIz3l/86WrcfkQozd4a+rJKlZ9O4aGmhi8YsSe/i3XlgYIBD1mxfPS
         bKcmqIj5n+Q27xn+4l5nVUhrLYVLg+/GGfqvdSq9YDf4CKNJbjolJrQfSnMvj/mv4cY9
         Qg9GCkTD6BtjrDK81DRXJ3TX1N49f9bkwl6YLSgmOAf5fAI6nXbEcQxR/Hed2YdGaJXI
         6aBIksw1NSizDH040aTZy2qe9xgpfzgdV7Y4IVRjFTlFp2Lp9+AeaL3HgIjtXR585Ssw
         Miqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yi22K1sajBi//vOQe+jFK2WGJ4EGydSQBaPSasf70c3Qg9KoK
	mQJGFHL31t8R/sLwAxtpvBU=
X-Google-Smtp-Source: ABdhPJzMZwZr74ook1toTEsPpF2yy/8lVStJ3lw7Mq8nXM9ESzl45e8oCPjDG7xQyqFMyAcVh2qK5A==
X-Received: by 2002:a17:90a:be0a:: with SMTP id a10mr1019356pjs.139.1609799797651;
        Mon, 04 Jan 2021 14:36:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls36691569plf.6.gmail; Mon, 04
 Jan 2021 14:36:36 -0800 (PST)
X-Received: by 2002:a17:90a:a88:: with SMTP id 8mr1034502pjw.120.1609799796725;
        Mon, 04 Jan 2021 14:36:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609799796; cv=none;
        d=google.com; s=arc-20160816;
        b=B2B0HBVJVLMGeDD9IjoPpPa1MFVbFblHZl+AbjN0+kZwkf7W1GCns5LzARHp9VXODM
         9tw1DZQmRJ8zy9gjzSjfI192s4CFhORUZ8IYB+STZE4IpnskRWEKS3awqKPcnLSIsf1n
         AUtJZm7tmPIxOk0Hmv1ZSIEtApTPoky9ecVo4SErx7T6jj+9bVpCyUcXU+vcxBKuXB0m
         +og2lU9YS8XkHXvEyRtoF0TS60ZLh98PK1E3cRSuGgcmLgXPSlA7+wxB6E6c4yAtF8oH
         aZu2y9wD10xjwa6uxR0muTe2/+T21FLkLILlY/+MOtNZIB1GCC6WPSgVbnxAe5T0chIP
         TjVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7vAfgGhGy3ZASCGh1dtgdS9kLlepR0AtWowcM6gy574=;
        b=rYdY2y+Ix+Rku7fMSj8dg5r1iiOYUnJt9+XNsxDPef5tHtb7hv/4X9b3zB6Z6oQ2uD
         q0qEIRWIkiCaGL+Mp0RtnNKK0fESrwBzOaurjHRJAg9j5Y1IhyHiGWGT6sPMUWptyNVV
         GwAKVpDeaRuUcbU2fNtfQQlMPc9B0d4K4C8cZRJJ//vzHF/gJVC/o3rYWow5tAdsLJmq
         kPbhii1fnwvn+FK9kVrD64JixUfb0R1/Ysgj8RIPr328hhr9wexLCQSngoCrubP4+mHL
         etB/WFj+ixbF/nEC/ha6qKQCxNlgIACrFhjwWmUWdqXEZAHo/Cl61nJK4mYQUikhCNQE
         /vrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r5VJryTB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com. [2607:f8b0:4864:20::f29])
        by gmr-mx.google.com with ESMTPS id f14si2824697pfe.3.2021.01.04.14.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:36:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f29 as permitted sender) client-ip=2607:f8b0:4864:20::f29;
Received: by mail-qv1-xf29.google.com with SMTP id h16so13817761qvu.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 14:36:36 -0800 (PST)
X-Received: by 2002:a0c:b64e:: with SMTP id q14mr53155701qvf.52.1609799796403;
        Mon, 04 Jan 2021 14:36:36 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n66sm38105504qkn.136.2021.01.04.14.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:36:35 -0800 (PST)
Date: Mon, 4 Jan 2021 15:36:34 -0700
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
Message-ID: <20210104223634.GB2562866@ubuntu-m3-large-x86>
References: <20201230154104.522605-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201230154104.522605-1-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r5VJryTB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
> 

I am in agreement with Vlastimil, I would rather see the BUILD_BUG()
dropped or converted into BUG() instead of papering over with
__always_inline. For what it's worth, I only see this build failure
with CONFIG_UBSAN_UNSIGNED_OVERFLOW, which you proposed disabling:

https://lore.kernel.org/lkml/20201230154749.746641-1-arnd@kernel.org/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104223634.GB2562866%40ubuntu-m3-large-x86.
