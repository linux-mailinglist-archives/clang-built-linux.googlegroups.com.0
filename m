Return-Path: <clang-built-linux+bncBDOY5FWKT4KRBJ474CAQMGQEZ53V6SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E20A32582D
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 21:59:20 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id b16sf1369179vkn.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:59:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614286759; cv=pass;
        d=google.com; s=arc-20160816;
        b=YF1c8CPtrYl1yTLHC/Ygqq29HuQo32FYkWjxtVG9X352q3EJEH+WcELfKh6UwlUh6d
         N86LP9WSZAs1KkhKOJcoG4nI4k9pf+bWjbhBPI/Y2uIwUsGydIdzhd1Pm/tpsXyoclUL
         CXMbqBwndY1iKnmQ+nbrzt34NXd4YiAmHJvRLZygzQgUXgdmpJJm393vQUOumF+1Xlhu
         q3Z3hzZkhPjkFYuMXqAYWtfCK6gCI3UAvne0HfBlakc/BL/8g3Aik8rrvE6K+77kZIJ4
         ySeI5qr253Ot7iBb9TUZWnLhphH5fj4NbJtC5ATKiBwd1xcMeB67XCl7BQLQ2ceOOWVU
         ducA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p9m4b9NISe2YnoMsdJo6MyjpFSQ9N/B2lu8TEnoWOy8=;
        b=rqCosjL6ZkRW7obqmN7WGcGFvPGShNyf2EafXMoVzJYhgQ5+RCTAwDKxmoBMXbjSJg
         pAR/nYuJC7YDplPdxAkNIYqkmq9DB05TZNk99x8aeQfTux1eLwo4yaSjj2/IqE5AQgTY
         4zknbZKSnWoWMJoiQJEOcx7QDvhcy1uZCdiaZJfX9ccLsq7bMgyZ6w/Xp6XoSe25r9Sj
         sZADoouX9nosRPnta6YcxirP0HvErhhPltoL5NGhq/b+T00YNC8qkI29h044nIAo3Q05
         gVVNzt9gQOTlqHnfJFnjPbAx2G3jGbEAQiVnUvG70RVdFTY76Znpf8VVKFUYiuxXvB/L
         lkjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SGtJ0wvd;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9m4b9NISe2YnoMsdJo6MyjpFSQ9N/B2lu8TEnoWOy8=;
        b=ByW6yJFMV9dmag/bQi6JgCjH5UcGEEQuEoFAtDsclTGkaSF71akasrNrLHiOmlgLV7
         g/Qi7vruvwKaSkvQOWgBpbjaebsYqpLMn2Vkur0AsJyBWm1oChIhE/4y46hJH+Yiqm9I
         SS/iuOT9Rp9UAjoqeMC+poVhOANl+reRcwwczMWmVh0p4nSiBtKH+9CthTNRI+xfs2Zd
         nro+yrYsFiWoCTIVzdt6FRBOJPDeTXDSoCREwGGJytJQShHMu6BqezI7cWfLE74xcfMq
         YxbJcYfZaz+b4khgObfa+lZW6ibZQk4WSF8Wpnc/OBOK0AHoVaIM5sRJRZTdUq1/SRrt
         o16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p9m4b9NISe2YnoMsdJo6MyjpFSQ9N/B2lu8TEnoWOy8=;
        b=MbfFCuf+yeBRKM30Fgv5NU3Q5YqjgXfnWchIdzOSMA4u3FOnKvqfT+3sjvG+/HReD4
         +57hb/XPSagN0B56AHHHlG8zkz0fGzFlh5WopE0BIqQ/sBd7qvpychKWGO1wvLWVnxcJ
         dOu7sArkFKps45abHuDpDImplYZpcg0umLUaun2Tgixxq4ycumKfkLbMMAjaPRkP88ko
         NU9/jjWN3wGjjMieJBG+O2/L23JID8Lv7iSIayczSeS+bKsYOcwwN+lxdzSVAu976yt+
         hrZuIumjRp603oheLlORDtzqGKYMMZHJHVbFKZ2oyLg7GI5UiONbOXxg7GQOZV343l6a
         xWRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53242wpFcU8CdxON5ZCxiVWF17tUhLj8na3umIF2qe8L94GYL+JY
	p5qsHhA0uKXWu8cSxAF4rxg=
X-Google-Smtp-Source: ABdhPJz50ckCnRqe+k34xvgZhJkXqBrgFb8VC6M+zic5dShoCpTSe1C/yDtKlB4ngPVQ36hvbxCDyQ==
X-Received: by 2002:ac5:c35a:: with SMTP id l26mr2992496vkk.4.1614286759399;
        Thu, 25 Feb 2021 12:59:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:230c:: with SMTP id a12ls547057uao.3.gmail; Thu, 25 Feb
 2021 12:59:19 -0800 (PST)
X-Received: by 2002:ab0:5e9:: with SMTP id e96mr3282552uae.89.1614286758922;
        Thu, 25 Feb 2021 12:59:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614286758; cv=none;
        d=google.com; s=arc-20160816;
        b=fLsP1iyeIhKHrteiMFWHcvGpRh4NLKa8kjRNtkXl7JeNghEGC5oLiUrLSOwM6jwVx6
         IqAeoJJt04pSmnvFYInrsUXnBT6rqcVSUhephlpdR/95MPoJMrxXhuMpAHlaB8I9KJxD
         U/OzX3YIkPIleI7XAGY/6cq8E+uSmeCYFAYC//8zD0zj1StGwnjMTlM1HGegu6ooXvZf
         DvqXpy6KLhHzC4q/2uS4EU+6+q71dFTQa3Yy+DUwOXfqd7mOzi6W3Fwls5RG2Hdl0g/j
         JyXxuxvicHgGGngbnzPV2O1lU3cL007dvWFGnzOKcXMvdVTwKLYm7MriedMkE2Up472j
         1F+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e71fZkwJ+X5Tj4v2V2np/zlhScnl8GDEBJvjtMFG5hE=;
        b=0O+dNtMMNBKeQ0Uiliki9UmCeJ3HyPki+oV3LFFABEVLe7PLVnTkIi8S9sC8XLYFv8
         PuIiM1cU3drm7R/UQ5HiZXFyMtq8bNu3GLqbv7/04b6nlObR8MiB4gBnk4U1YjEjlWpb
         e4+i9x+1kcKkv/sw+M1NrXWdYy8gv1YiiOQFmxy7JQ5ypDxubT+M+77DPzvRFFP0cIxD
         RvwuGEZSeuh6lwUJIpth8W4ktb6fW0rO2IFLUzQtFzusMaRBtWVLGBQ0oAiDUxcrIyZL
         xKsDrzUSVKPNV29EMtWmdO0K+kHZ2qpSnxugsgY9oAiEWL0f4hkCtS45DuLZw8ri+Pgq
         mZTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SGtJ0wvd;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l11si356993vkr.5.2021.02.25.12.59.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 12:59:18 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3712D64DA3;
	Thu, 25 Feb 2021 20:59:12 +0000 (UTC)
Date: Thu, 25 Feb 2021 22:59:08 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Faiyaz Mohammed <faiyazm@codeaurora.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	David Hildenbrand <david@redhat.com>, Aslan Bakirov <aslan@fb.com>,
	linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] memblock: fix section mismatch warning
Message-ID: <20210225205908.GM1447004@kernel.org>
References: <20210225133808.2188581-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225133808.2188581-1-arnd@kernel.org>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SGtJ0wvd;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 02:38:00PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The inlining logic in clang-13 is rewritten to often not inline
> some functions that were inlined by all earlier compilers.
> 
> In case of the memblock interfaces, this exposed a harmless bug
> of a missing __init annotation:
> 
> WARNING: modpost: vmlinux.o(.text+0x507c0a): Section mismatch in reference from the function memblock_bottom_up() to the variable .meminit.data:memblock
> The function memblock_bottom_up() references
> the variable __meminitdata memblock.
> This is often because memblock_bottom_up lacks a __meminitdata
> annotation or the annotation of memblock is wrong.
> 
> Interestingly, these annotations were present originally, but got removed
> with the explanation that the __init annotation prevents the function
> from getting inlined. I checked this again and found that while this
> is the case with clang, gcc (version 7 through 10, did not test others)
> does inline the functions regardless.
> 
> As the previous change was apparently intended to help the clang
> builds, reverting it to help the newer clang versions seems appropriate
> as well. gcc builds don't seem to care either way.
> 
> Fixes: 5bdba520c1b3 ("mm: memblock: drop __init from memblock functions to make it inline")
> Reference: 2cfb3665e864 ("include/linux/memblock.h: add __init to memblock_set_bottom_up()")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I thought it'll go via memblock tree but since Andrew has already took it

Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>

> ---
>  include/linux/memblock.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index c88bc24e31aa..d13e3cd938b4 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
>  /*
>   * Set the allocation direction to bottom-up or top-down.
>   */
> -static inline void memblock_set_bottom_up(bool enable)
> +static inline __init void memblock_set_bottom_up(bool enable)
>  {
>  	memblock.bottom_up = enable;
>  }
> @@ -470,7 +470,7 @@ static inline void memblock_set_bottom_up(bool enable)
>   * if this is true, that said, memblock will allocate memory
>   * in bottom-up direction.
>   */
> -static inline bool memblock_bottom_up(void)
> +static inline __init bool memblock_bottom_up(void)
>  {
>  	return memblock.bottom_up;
>  }
> -- 
> 2.29.2
> 

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225205908.GM1447004%40kernel.org.
