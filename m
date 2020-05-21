Return-Path: <clang-built-linux+bncBCS7XUWOUULBBB6HS73AKGQETQMKR5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C92961DC50D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:12:24 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id g9sf2497360otk.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 19:12:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590027143; cv=pass;
        d=google.com; s=arc-20160816;
        b=gl4wAU1VuqzUHYs0j80Z5tBgfpcCu5n9umP3nKr6zb4uffgBvIuqqT0lB5mOzDAKvA
         6FccjIzgNdt+27ds1i487YrGHmQelZJ0MHIp43HRoL8+IhxDMcid1c+gSMATfhNJPM0K
         9tjaSGIZGUHKhe59nqbw3UDjSGJcA0mvvlIDpGL/xF2OTjYw+nX+tlYWf3zTkdkwLwv7
         V1cTAyodeB2ubjTpI26/tRy4OVY8G03Dy3ar4rlaumOQ7Z14xghb6bpfzEgnqR9O/8oV
         3rqEvpAd6qj/loICCjxuV1LQUlsG6di5yKn3nQqG/fSACjXSe3tahdrS88BcGvfAZLfE
         N96w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SZkjbY3Xw4KpqXIYZuR+hDV00wmQ/fWTNOtZ4sHGOxU=;
        b=wMdEOzM2FNs43SXsnG0iR8YkKh/MGUyVLaPDcyah4nVl1qRcqq6ibVm7nX6Z68EfHF
         yGI6uYEZUksp+0ddYgjhcXbOUf+P2phAXY9XQtNKB5gHr90YWlv0pgxy+xXlljLp8PKJ
         kiKM66e4QietszEl0k/EtSd6UkanKohqL7MSy7oU3ACoWTJCTLMpYpG1uRx8VFVpfYJx
         6/R6Xd7ebnkiPkd+EwVKmL5AgYZiPcCxJZ0Bi0A41Qvf0qcpVWMow4qVaVU53DZAML2C
         oDW1KHY6KOChBwbDzzB29psA1IeOEuUPaPAokqcsaOfoniGPGQzbvH1VN4LIhM4P3pQ1
         pAGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PXDVGe19;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SZkjbY3Xw4KpqXIYZuR+hDV00wmQ/fWTNOtZ4sHGOxU=;
        b=kJAVPuRvhYQUCAMsV4xZW41aWv2aIo7grYMVm8Gpzoc/vTutEizrsCFtcNx0zKKxnx
         +nxYmjzw8+hNoYU1/YYkBFiB2i5nxLANqZjfGmVeq1W/8RCii80vUBsAzOHXvkwmpE5T
         1zdRiz+1d0Pxo+x200U3VEKCGVZkI1GaxQOeuwgW7wF7OqLJv9+cLE/bWhrWFYpqSA62
         1tJS6cjHZ0owekADn4HXRrYVdnvvxi+A5NYPYniKS7GfcdemDeG1i+N4h9fDtpoOYs9D
         2LLLZ6pNbiiD5zCOUZ0B+zDFOitNeMk1qsQCStBmN52ozyDR9I/srzDkZiwWJjviyutR
         ZbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SZkjbY3Xw4KpqXIYZuR+hDV00wmQ/fWTNOtZ4sHGOxU=;
        b=DlR4tH7ICThpbD3ouw8CwyJJFJXOuvjCgYIT60MATd/ZFpesUcUQ+wlcrhKFs6OyPA
         8OG+BT3S/wwrTdPtQAfNt1rRNF9qyu2wIdyqiAhrEHkN67qOzW1c+60G6YdOts9pxBBQ
         fzBcH11n6oT2CI6HI6HRp9eysnWn0HFmAbNIjQJlyux6JEeqb4zhMtFVNffdWspaXVQ0
         rAF1CbvtYm4q35nCWc0eJdrqhWZRRWOEUviQz0OUgzfNNXtP6gwo6b55jaOLAASiohvu
         VEFR6afDAiu85OEEOJuD/OuJBhcJjrlXjKf3xhKYXwjuFgmDzlvzZnbZZn5uTYM/NnBr
         BxVA==
X-Gm-Message-State: AOAM533zaR7kdBGqr/Sd8kSUy1sXFeqiMUEgm0GnPGxvF+D6CGgYGumx
	llJHxMh97iKEFEoyWYv891I=
X-Google-Smtp-Source: ABdhPJzLqW+j5Ho27rHYBPGxUjEQ32gAXituBhs1Y9/zGleljk2Zc+Q5gqJzIBJl5zSIhJp3H+I34w==
X-Received: by 2002:a4a:6351:: with SMTP id r17mr5593207oof.49.1590027143591;
        Wed, 20 May 2020 19:12:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:731a:: with SMTP id e26ls160151otk.3.gmail; Wed, 20 May
 2020 19:12:23 -0700 (PDT)
X-Received: by 2002:a05:6830:1df7:: with SMTP id b23mr5719575otj.50.1590027143247;
        Wed, 20 May 2020 19:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590027143; cv=none;
        d=google.com; s=arc-20160816;
        b=N0ZwogEP93yW0Ch1ZUwX82thHkLJLWgSboW/VPjmDVGhbNkUf+hu9U3mgP+nVyXkwq
         cLgjy4dIMkpcRCwxqoweywT1x9u/Nza/BlehJetd6qgARL0rQ3HdINs9DHE6zH2aS3Xs
         PABOqy3HC0Zm1C7Bm1WnF6DdarmKh5KeLl4dz/m5g7y8VPSTL22W0aA5bGn0qr2n0EpL
         zADC3/a8nsMd+iZ/OcLtEwxft/GytfOgpOetnsBaJpMcAgkxurAC1pr61U7l7KM+H6We
         Q/qlOOSLsxX2303ixWXgShRXohwAcdwkd+z5ceXgbY/3fzbse53HdPrMYVs79M0mWsKT
         x5iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x/AMjJPZ9ca0EQ/k39Jt0+UZiNTPRUDUcKl7X30gDSk=;
        b=ShOpvZZ1OazpP5DWeMB4QjJer+0bixxA0AvnvrIskZaZsMAEMUI1cVdoskVzG6MOlK
         yMfuMjlNXCUFwLISvE4ff89r9ENxx/tKcW2sw2G82sq77JLXeAPBp08mWPvTTXbZqLBy
         Fb2HtA0mG+R16MhIp3a+7d/lGDe2mULXnuPwUoVhwiC8WZ5Nat3SUAYCi3YMQwhuzL+q
         o17wAn5PoxZEaEc/SCMt7Oo4xEsviWp1rJLy09PH4X4ekMaYNtwKBbzad9ZA6jHxNitX
         oAXhRUtwlMmsMOTxOSOY8d9sBbpDhMzs8MvsH8eqv5RPyzkpAReJEhZUSGS55Kvu2iLJ
         t98A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PXDVGe19;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k65si401941oib.2.2020.05.20.19.12.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 19:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id m7so2168664plt.5
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 19:12:23 -0700 (PDT)
X-Received: by 2002:a17:902:9681:: with SMTP id n1mr7513676plp.152.1590027142335;
        Wed, 20 May 2020 19:12:22 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 1sm3200480pff.180.2020.05.20.19.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 19:12:21 -0700 (PDT)
Date: Wed, 20 May 2020 19:12:17 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: clang-built-linux@googlegroups.com, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/1] x86/boot: lld fix
Message-ID: <20200521021217.yqsulqwfrhqorp7p@google.com>
References: <20200520225654.4144534-1-nivedita@alum.mit.edu>
 <20200520233357.GA4160490@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200520233357.GA4160490@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PXDVGe19;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-20, Arvind Sankar wrote:
>On Wed, May 20, 2020 at 06:56:53PM -0400, Arvind Sankar wrote:
>> arch/x86/boot/setup.elf currently has an orphan section .text.startup,
>> and lld git as of ebf14d9b6d8b is breaking on 64-bit due to what seems
>> to be a change in behavior on orphan section placement (details in patch
>> commit message).
>>
>> I'm not sure if this was an intentional change in lld, but it seems like
>> a good idea to explicitly include .text.startup anyway.
>>
>> Arvind Sankar (1):
>>   x86/boot: Add .text.startup to setup.ld
>>
>>  arch/x86/boot/setup.ld | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> --
>> 2.26.2
>>

I found your PATCH 1/1 on https://lkml.org/lkml/2020/5/20/1491 

-	.text		: { *(.text) }
+	.text		: { *(.text.startup) *(.text) }

The LLD behavior change was introduced in
https://reviews.llvm.org/D75225 (will be included in 11.0.0)
It was intended to match GNU ld.

But yes, orphan section placement is still different in the two linkers.

Placing .text.startup before .text seems good.
In GNU ld's internal linker script (ld --verbose),
.text.startup is placed before .text

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521021217.yqsulqwfrhqorp7p%40google.com.
