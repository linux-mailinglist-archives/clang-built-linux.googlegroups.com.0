Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRBS72ZP7QKGQESQHYPMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1892E2E9420
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 12:34:37 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id h20sf17654784oop.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 03:34:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609760076; cv=pass;
        d=google.com; s=arc-20160816;
        b=KMn6Le/mx55yU4YlhAkVAk2JS8wR6YZqniEhJPIGekWEg0jSixBSrmueaElWJ1vJX3
         IfU1SQq5QXY+Obw/w+BST5j8vEv8XrCjO1xtjtKeBE6W+o/KV/J/GbfwLYB0cMyYhBWj
         cHsujQQUmJOXkYkdVfi944/9XFMKujARzZFrBWOCi9cw6wjiuckbwYeT52qTpBO2+NSe
         yz4eGtzgL3YpN5yeiff6aLcIDnzFtGcu2VFq8BDQujaAhA0EpE8FJlm7S5ot2eRX7TF2
         N+0VWmHizIyeQTqZ0v5oXNxey/5jzV94BaCnrotwwk/bBL1OSn2Ey1uqsGMqdm+a+7/J
         O/lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:from:references:cc
         :to:sender:dkim-signature;
        bh=J1W5ePH9dkCb8CNBUMqNCZLkVmu4rKaLgCGz8pGsRBc=;
        b=CbKZU7o7ObF2flirmZ4QE2hsQCAoImCLDU0+n2Dajnm/fJY/cQ+5kHTnApybKW0wT7
         WrlO3HZlkbumAKynLWA72DLcvRKvwgd6h5W5E22WRNEuRu3kDNKH4sKDwXHCZaLCOxE3
         0FzOUIwO5Z4XI76sW0DhOuXE478uai5e+rZdwGzISHegBUTYJ/cerKnhHpdLQyLWZfba
         v1xb/CYstjKtmWpZdbhTegEhS4vpkmXdtC10Mf7qmgocmN4RbGN10EFkH+paK0IxiHSe
         S5WvwNMrTXm/fohcqEYsYs8facdmGTPooVrsCLdQqqpP0wUDKsk70pEIpLlr7m3aAf2x
         KLcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J1W5ePH9dkCb8CNBUMqNCZLkVmu4rKaLgCGz8pGsRBc=;
        b=rav/n9n7lIFDIOTMxahg7upPGDvJDXgVUumlh9aMXLOJcY1Hs1yRC4u3AoT/M9w/7z
         7EYok4jhhJedJ9NN2/8oZf6Heaqj7yd75E1kba/GWLQfbcfjCN1QuIoQe2gtxzDdoHZ4
         rZQL/VFbblxOY/sOwDzGL5cfuxZZOIxPG+3jdUbeka0ldXufbD/z+QD9SyGD6DYt1RbI
         7LWiTseVq7HmkIVTiCd+ArBltUzwHL7CSJ+3Gpu2P6L0d0wTc2OIX13QJcqB9lO7lkjy
         qrXQXO9tlIhztpkmANjK5AepkT5DGadnjcMPkdpbLqDfQQwTUtqkTktqS+v22tcxSmKn
         dMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J1W5ePH9dkCb8CNBUMqNCZLkVmu4rKaLgCGz8pGsRBc=;
        b=bLbDEttxK4LLiMzsbP/qed7o4wRgXQ+dJm3sl6yC3mySIp6JrK2SBzYlEeyp3lRpJh
         J0lGFu2HOAja3cM8O5v3Vy/yXr9NWwZnJFkjgmNBwyMDjAoYL+rWz4ImeWkN6YtBpNk7
         b4P6tD7q0m+Cik+0No6tVuEvrgExMzlI9DdTndTGe7LHzYvOgkxPAKyP0C27zZGZ3LaW
         lo72ox8+0AVqcCIF12ojcYX23iHzSY4zFf2hnrYeRJGK61KE825BaWh766P/iEejGwdi
         B9abG71w9QSl7oGGStr6UuaCj34m1t8yFk4Zo6yqmPBCojhV0EzzGK1Eim7TDad7HnM8
         e9uQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FqrpZHFi8tW4iUBX26Saxc6FCuVoxxPA/2qY3l/3QgHxZZarx
	vKO3hxZtjppdgYZ/W1dGVWc=
X-Google-Smtp-Source: ABdhPJwWo0jy6FfnBMmeuYkc9Da3y2GaD91Oe85zNhF5ZfJRg0l+Fdj1FYGxZs4gf+E7zHp8hZ1eEA==
X-Received: by 2002:aca:5643:: with SMTP id k64mr17542684oib.146.1609760075867;
        Mon, 04 Jan 2021 03:34:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls19926628ots.10.gmail; Mon,
 04 Jan 2021 03:34:35 -0800 (PST)
X-Received: by 2002:a05:6830:3154:: with SMTP id c20mr54608115ots.286.1609760075499;
        Mon, 04 Jan 2021 03:34:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609760075; cv=none;
        d=google.com; s=arc-20160816;
        b=DE9+iSHqaTqme7cYvSXhdcEY0VY/A2wu1a1mRDHP5MPatM8te8mRUYBN13bZWrVqJG
         p0wFuDfUMYEsu79MemN74F4MaBOLa2NHnEzBtqbEcl8UOOUpGLbkX/Y6piUMJjWdZSDw
         jevZjP/YGb3s9JOanzINGVRvVXWnVDC6eM2ywmtn8qcr0eLdgeDQ6PAbOIu6hVw1Me4D
         b3aKhvH/MbRYRqGJyEMeQ+yDtLglGLyMCeIccFY7Ejzl0Vrt03OO0bR0ObRzraz3XJEh
         QmbbGLBo2w66W4VMJQBD1KkjNdnYQdNOI6yJwLxO5JxIDc6Jiqwt6wIJKB19M9cU+wWz
         9TTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:from:references:cc:to;
        bh=XgFO1uKnhAXd2Ls1mCpUjTcZQDpdMc0we0ubzVflEYw=;
        b=fn84ZlUd0NQdvuWOI9Fzj1DhBAi+4lz1uam8+sDBhFounpRDvRYy2ZnifJw0A6Chzn
         Y7DvvFDJ99u5tXbcnMnyBRneR4gbFzGbTRkZOXP9NgxMkEGbiZrbwbAmJ7/xGbbwqg4u
         du3cdg3c5V2bP0XD9iI/pv71h523eE572RvSu69FnCPsKj9VKoRWR2ePe+JDIfCOdoy/
         k+QMUzjfiJu4eyrYjVS6WSR5k9PCWsW2I3D5+6yCr0JNwMoHkQ4hySdayKKg86j+7Okj
         Y0nP9MDZho+XP6N+DIIAe7btbgTR68wzzZ52E+CiSa1lYF5RRtp+ym7l8eBM5Vzp1lt1
         rN6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f7si4152217otf.3.2021.01.04.03.34.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 03:34:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 9BDC8ACAF;
	Mon,  4 Jan 2021 11:34:30 +0000 (UTC)
To: Arnd Bergmann <arnd@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Wei Yang <richard.weiyang@linux.alibaba.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20201230154104.522605-1-arnd@kernel.org>
From: Vlastimil Babka <vbabka@suse.cz>
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <ac2a03bf-b3e0-a25a-d7bb-99fb55287387@suse.cz>
Date: Mon, 4 Jan 2021 12:34:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201230154104.522605-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vbabka@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=vbabka@suse.cz
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

The subject should say BUILD_BUG()

On 12/30/20 4:40 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang cannt evaluate this function argument at compile time
> when the function is not inlined, which leads to a link
> time failure:
> 
> ld.lld: error: undefined symbol: __compiletime_assert_414
>>>> referenced by mremap.c
>>>>               mremap.o:(get_extent) in archive mm/built-in.a
> 
> Mark the function as __always_inline to avoid it.

Not sure if it's the ideal fix, maybe just convert it to BUG() instead?
Functions shouldn't really have BUILD_BUG depending on parameters and rely on
inlining to make it work...

> Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")

I think it's rather this one that introduces the BUILD_BUG() ?
c49dd3401802 ("mm: speedup mremap on 1GB or larger regions")

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
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ac2a03bf-b3e0-a25a-d7bb-99fb55287387%40suse.cz.
