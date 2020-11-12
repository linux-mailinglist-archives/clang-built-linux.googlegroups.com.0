Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNHRWX6QKGQE53IY4QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AB02B0C2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:02:29 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id q25sf4816687qkm.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 10:02:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605204148; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcbRpOLCQcqlNjBR50LpwDYS/9n0mxMTYO0EOFAA+i/h2rASJarNvlGN92UTbsF2uJ
         a6dLGr7OWqjf4k2PqhHFdDZ1L1sD8j+4knfg2J5fKesuSNIOMvb4xvaBHWfwMo0z65wy
         TkrQ3oArFmUEgUt2C+axwgHm3vPT0L4GZb2Bq5jbRpGpydLCPsFz2NgbRIaBfCcsOfLE
         roY+juLQZk6mC50Y5Jp2vJWXCdrVrnepTw9rtN1+NoysQuy9MnfHwdjwyrzzB23nsC8N
         U23s+cnRHKlZiBYnuWGyxcEfYTmatwGq6i+y/PXPH1Tq4dObwm0psGhjv7fcsEOwoMv9
         PIxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aQZmm7nXlykNbnss1H61bs4qM/NSIsVLyJc7mVRJF/c=;
        b=qUP2jGbBOuaWc3CFW4EF+Mgw916XnTZUt5zP6d86jZHfnG7vEJZViwq3sBHUESH/lX
         YvqLGXlpmOrhDgCrE3ti1JP9wWoXE4ZIQxxExLpBBHLgRQH7s4JpT4Guh0I8yqP7yyfJ
         ZbutH19qOVx8tirBbpXOuzrtmk2GPjJRQREIgvS9Tro+e8/zVHig6GdZ/Utxuo3Ajnsy
         3WI2zFAnF4uhh56yHmkOqS5sQ4aWwSwVIPPP6EHyZTxiKAxbR/JcLcJrT2zuvW209nID
         2XHUPAmYuldp/rJgWp81s9y9SRL5g+9EX1n+GYLfvbipk4rJW1AFZdxq1CMP5vIylvaj
         iVvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uptdd8k1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aQZmm7nXlykNbnss1H61bs4qM/NSIsVLyJc7mVRJF/c=;
        b=sLi8wrTq9TzL+f0gjHQJbiGcqoUQDnqyF8NAUkR42mBbyQpPrO6ZZs4SnSQyZ9VlhB
         NHVEkFUbXMPa2ZyqPwsj/XECNxlxNfch/rm6Di5xijWJaCD0Yd9a5n3ROUPzDJh6WVL1
         xnq0YUcbWajfHUh8y4LO5dCbl35WsdzmIx9zteTsij/nZuMjgE0tnILYYcp0af60HNib
         Uw9ta3PpNcWi2GO/UmCnrN2TPe2PDKeFu93zFbdvAXJ2fBUQ6IERLJDGlNFBFKAsWVf1
         FuW0W8JxbDoiHwneCz3hlD0Aa/p8UXtqYBbArXGuFKe2msl+K9F97MvUvnq10rH52Ode
         6XdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aQZmm7nXlykNbnss1H61bs4qM/NSIsVLyJc7mVRJF/c=;
        b=rIgOeIatuznRgMOMjXhkQsa08ALzbW1huTCuFUNr65A5qROiNaY9jHaJXkf+WkhTVh
         kRbgOH1Df864c8kv/1JCpK2xFA2jrcFJP6RfBBsykbuLAYdwRcK4BSlYZXZ9CfTtLv91
         73h5e5VpLU5XJCiXVSycADWa1vPpDECYRbAVIrfApo7sINIdsse+JlxIewCDj6mZs1hk
         9DAZKwhBqYcfIqtL6RRNHB7M5TCcS9uM1AAqAEFERo5+bOR9r4ouSr5B3emuFeBaMvN0
         1hRuoGERoJqN8YCcLLJbGDIaGKbktkLWxqbpsesdOnXM4DyZlQHQsjmo0uyxYHFXrLgr
         h1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aQZmm7nXlykNbnss1H61bs4qM/NSIsVLyJc7mVRJF/c=;
        b=jnjX8taWMkrZPxnMJYoQFv/nmGVAoBQv2urKedrgGPg6VwCZ9IjgbvmYJy5FLyIsqr
         /A/OT75q7jpDEyFtIQkDBgpnTI50i1CSuFPMJNnJCwET2oG9lAEUAg0rBl+bPGU0Sdpm
         N7Ue3ZCIpPRUyepSvNUqs9u59PgJeT2uHQB8FlOem649MIsRHZ5Q/mXIishnOTlzaSX9
         dk11SIDs8wr+I6FdWfmBCp3IEzFJxX0zlTcxJ9jvHDEXbJC+qe0QgaJueDE1epSPd3yd
         zT/P/GDCe3AG6AJqUjA1Mh9t1uNjXAf7EJQKLIP4Psrk+AyxR35/DOnUCU+wKJQ3HhYR
         +wKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mpJvuh+MBz9WNWwSXWQIWBe3UumJVOHov8Qlpt8RiKpjdShlj
	INx2JlnCIrJzdnl2tGdFG+w=
X-Google-Smtp-Source: ABdhPJwi8YI5JoyuPs8NFAGDsI+s345tgq2IqnA1bjbUO/VJc67K/QvNDT5yaYAzxPBcfRUo0ypFrw==
X-Received: by 2002:ad4:56ee:: with SMTP id cr14mr953165qvb.15.1605204148261;
        Thu, 12 Nov 2020 10:02:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7805:: with SMTP id t5ls1650611qkc.9.gmail; Thu, 12 Nov
 2020 10:02:27 -0800 (PST)
X-Received: by 2002:a37:a083:: with SMTP id j125mr957448qke.477.1605204147815;
        Thu, 12 Nov 2020 10:02:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605204147; cv=none;
        d=google.com; s=arc-20160816;
        b=waS5NUL7ZiBO3IxC472WIvY11lJdOe+KUcOVZ9SUDOMQijFWCZf9qr+Dq4t/Ak4vxZ
         tc1FgcywdsG2/PAd+WLAJsPh0RsaFZ3YCQPGi05xDSRsqipYD8Bb1SHLxCIpTuCDPNxc
         lL/CUOYqMl7WevL1sFc+I7gbfqBmo3MHMchCf4vywXtLvajdClSw+ZWAxeh2VyiOilK6
         DJ3jXddqEgTaIyfQZkKweWoTOmzGJ+u+QDpXDLtUgsHfCv409wPjPKTXysXKSXLnuVqk
         ECcUAHaKHl0XYR/sc+AoMaBAeMWqUD0OpPf0TyLwL1KTCQycITXpGqFCC+hnWhmFDDhs
         Gilg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cwRfKaiAyvcKH2C/Ff9JVLU4RFzNHu2s5Gzo1tJCQz0=;
        b=P02BK2Kw2mH94A0HMGO1OyFUmv09D9SM4Kc1qjecB9nRNSqQXHn0KeUSxF5AfzKWh7
         vhwjEla42bYknQ93I16x9jRznSrYlBsGKAm1CtqjKNC4PMA/chEdiGx0uxPD6FvTEzhc
         GUjwJHswzw7cJfND6Nn1y5tSvQ95YpTi6fIU0iWq5P0zXK4D4hizQEzLSHOhXcp47AzM
         +qDi0Ve+Kw0AkOzgC+/xZIwts7CbueNvBzqsDbBFy9wapYonLJdvEneAEZgUJZOppMcM
         wO9f3/aYsx8+FkVT+NVh6agafR/A4v+2YREu4SDcFi/X9uLmgJSMWi7lsBQczd7cR0pd
         wvgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uptdd8k1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id p51si404024qtc.4.2020.11.12.10.02.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 10:02:27 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id y197so6114014qkb.7
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 10:02:27 -0800 (PST)
X-Received: by 2002:a37:a943:: with SMTP id s64mr959191qke.15.1605204147414;
        Thu, 12 Nov 2020 10:02:27 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r19sm4973529qtm.4.2020.11.12.10.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 10:02:26 -0800 (PST)
Date: Thu, 12 Nov 2020 11:02:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@redhat.com>,
	Rob Herring <robherring2@gmail.com>,
	Mikulas Patocka <mpatocka@redhat.com>,
	clang-built-linux@googlegroups.com, dm-devel@redhat.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "dm cache: fix arm link errors with inline"
Message-ID: <20201112180225.GC934688@ubuntu-m3-large-x86>
References: <20201111024140.1483879-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201111024140.1483879-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uptdd8k1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 10, 2020 at 06:41:40PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> This reverts commit 43aeaa29573924df76f44eda2bbd94ca36e407b5.
> 
> Since
> commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
> the minimum supported version of GCC is gcc-4.9. It's now safe to remove
> this code.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/427
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/md/dm-cache-target.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/md/dm-cache-target.c b/drivers/md/dm-cache-target.c
> index 9644424591da..4bc453f5bbaa 100644
> --- a/drivers/md/dm-cache-target.c
> +++ b/drivers/md/dm-cache-target.c
> @@ -712,10 +712,6 @@ static bool block_size_is_power_of_two(struct cache *cache)
>  	return cache->sectors_per_block_shift >= 0;
>  }
>  
> -/* gcc on ARM generates spurious references to __udivdi3 and __umoddi3 */
> -#if defined(CONFIG_ARM) && __GNUC__ == 4 && __GNUC_MINOR__ <= 6
> -__always_inline
> -#endif
>  static dm_block_t block_div(dm_block_t b, uint32_t n)
>  {
>  	do_div(b, n);
> -- 
> 2.29.2.222.g5d2a92d10f8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112180225.GC934688%40ubuntu-m3-large-x86.
