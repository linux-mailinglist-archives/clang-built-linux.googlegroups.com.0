Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBFUNTWBAMGQEAFL52CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B736E332266
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 10:57:43 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id x11sf6355211qki.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 01:57:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615283862; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcaPnUkntolzT4UCgbaox3C43WtIVwIJPQ0MEg1ppnJgDPhUSXe4GInZClWjCccWXB
         KJ8F6fIaQ8wN/SWt+TD7ajeRMC8pT393uUuV2ejUJufMj6OOyJclyP+aAEY1la2W4QiU
         iP8LhGmF4Hr9OlQ35h+3uWCmF4YJwNS+otw9PPbWA6sOz3HEBSrdEs+eBhHF+Z8NJNsG
         L6elTl7Rww7Fky9pcEdAdQsG6kwlLSOF5ZB+d64InCC2GCoWsPL3nNSbN3Z6vwXVNdIO
         lTPvFWCbMypxqOMkR+1oE8JN6ny6QE6O97cjGC6cM64J9XLqv9mt2B9p+ns4FyedwInH
         OmqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dUclLg+zJmbUXQ+1ty9Z0+t1ouqUEct4v7YGKbQTaCs=;
        b=BH45pO8QLV+lINBUirW/BfevADjuOrr0ANfPrU5z6jPAob26QA4x6oMtWVkFzP348o
         sE34lZOlydXSjIq7RygWrFpoei7fpKOPW+xIaj4hymyJMI/N+mTnzPfe+ATQ0gUTLsmy
         tKKgFd8KPOTMssPhnDaWklbaQBaC4O+HTuX9BXSORfQvVirm/3UXa4VY43UmbKlcqF37
         I3rJ0n+qTeivQSwwZ/QqdtT5xcofu1NNJTt6aIVprpphVglI80pohfRPNrW3i7X13j1s
         DjhagjCNdoOcrAIbxksP2YjkR5nFZM7adyufwqZwWzvW+rbrI/KSNCZTOJUqLNwzvMow
         diZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dUclLg+zJmbUXQ+1ty9Z0+t1ouqUEct4v7YGKbQTaCs=;
        b=OIrU0dCRZ3owGORMAOZjDqG/cCzNrX+F2NB6tCKJDtiLP83M5prIc2j0NTqWS20r0/
         VrD4KGGvNRPrSS72WWS/9yxWYawxGF0pB+3eXMrXw8AiXrO0mNSp5G2nU8v1LqUeD8pK
         /Xk2fGoTzvh6QHVYV3xkfT7GA78hJmD5b7PrFItvwRT1Nmqvr6u1jLydThQ/CAGQHPlM
         Z0rXM4hyT5eztu0q6TdrSLUZBnCF4Bgatk8oa6OtI3JrW8yAUOvhM2eSKDX/ZQrImd6N
         LiVVSs3/8e81iMEnXRUvSF8n6FauMzTqsYha0IMhQZED2iGffnn2ydRM9Nw/zY/ZHrv4
         C1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dUclLg+zJmbUXQ+1ty9Z0+t1ouqUEct4v7YGKbQTaCs=;
        b=kgncX3VUQ7XRXf3jR7dA3EniY0yWUljBKsnbkzR/MymvoIB6rzd6BgT123fILGXuLK
         jD7AW63MPidfiIDtDF2ux6E2PjuQ5QNq4V6bkpaPZztTIdARj59nHwget0RMetyq9v5J
         sSfb0rwtYpcNnI+ggr4lSsgrjipwcq8/QvdzbAkaKwOgN5BvDbtTfykvVV5o34EEIZeO
         qociDiqCc37hC6XNL9fshfaa1GuBrP+Y5Reg89FshYZqVgFW5BN7pDepSU1ucRDzZMwJ
         eSI0LdHa7T2DoHstt5RoQ1rFfot7saU5aQnDrRQcgA5Z4+4tpD2KFnei2qISyhXgLSxV
         Hu1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UZUHjj62OTMCtoDBHmiL4gOu/DR/FzTyr2wCFo5NanxGl42hp
	u5aQovtvZw31T8+/TqyLRzY=
X-Google-Smtp-Source: ABdhPJwkX9qen/3FkE5yaMJwDymkg5pNjqECsJXbk7Q4RiTDRgtuiai9i9pk5577y0Znxg3kqi1pkQ==
X-Received: by 2002:a37:a390:: with SMTP id m138mr23621569qke.59.1615283862657;
        Tue, 09 Mar 2021 01:57:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56ac:: with SMTP id bd12ls3219710qvb.3.gmail; Tue, 09
 Mar 2021 01:57:42 -0800 (PST)
X-Received: by 2002:a05:6214:f6d:: with SMTP id iy13mr25071023qvb.24.1615283862216;
        Tue, 09 Mar 2021 01:57:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615283862; cv=none;
        d=google.com; s=arc-20160816;
        b=hblzru241GcB/zthh+SlgF2hTCpQFV8m0YsDkHKshKTuB1kRoWA0ZlbGBNdlkcaLuH
         +XR7pqkIhhRRqpcKkVmXpOJJbBvFAvZLTydjh8xknXPkYGuhNSAiBzSZ1uqWvDMgYnHe
         4kV0Ec4WE6129aPmqeYuvlqEFkdF9I1R/bzLqPGMfeNeBW6tBaU22swIVpS3YOnVobl0
         7jKSSHNq+9PQSPotSLzoJEtuqQ1YqUAMGjXqkHzq8iI4sYz9uXm+aAH30kPMqd8Srfa4
         Lp6d93NcL9v6PxiG6QRcT5uVL25g5jlvUOJpr+kKsmFNAg5mBTqZkh7mUjlBqzO7ElZC
         xrFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=0dPak7nn+SU8+Xuys75l4WcJMBmeSFyJZiQopD1s0NU=;
        b=QZ2xxSC9UeWbyw305A8+/ZbkbXT6qWY4MRO7gU2ZDI0m2Ru5kgXpZ0RJtVitD+CIhP
         8gKSatcPLh/iKABwoJInrzx3T6sueaD5UhSZWTgnvZSzjeBJum+reJiKfSGlKEiJ1AC5
         x52WDmcDnnkb1Efw48vIbgoQz7jpHGnnLILhmBAoscd/sNd2B+OaBA+x2iQKpCR58qiR
         K6s47X38EvzwTtP4+QKCCRdRxeKdG8Rjdca9lknhNc86fxdrz3xKeCoYiLPMC11yo758
         7adPB5shM9nRkRpyvURoxLbDZPJXnABa4ygykqmniLlrwXrExfFMAWitBjpB99MmfSmO
         G3hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id j36si723246qtb.2.2021.03.09.01.57.42
        for <clang-built-linux@googlegroups.com>;
        Tue, 09 Mar 2021 01:57:42 -0800 (PST)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from atomide.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 17CE9802C;
	Tue,  9 Mar 2021 09:58:22 +0000 (UTC)
Date: Tue, 9 Mar 2021 11:57:37 +0200
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: omap1: fix building with clang IAS
Message-ID: <YEdGkZlCDdhKP6cw@atomide.com>
References: <20210308153430.2530616-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210308153430.2530616-1-arnd@kernel.org>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Arnd Bergmann <arnd@kernel.org> [210308 15:35]:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The clang integrated assembler fails to build one file with
> a complex asm instruction:
> 
> arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: error: invalid instruction, any one of the following would fix this:
>  mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
>  ^
> arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: note: instruction requires: armv6t2
>  mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
>  ^
> arch/arm/mach-omap1/ams-delta-fiq-handler.S:249:2: note: instruction requires: thumb2
>  mov r10, #(1 << (((NR_IRQS_LEGACY + 12) - NR_IRQS_LEGACY) % 32)) @ set deferred_fiq bit
>  ^
> 
> The problem is that 'NR_IRQS_LEGACY' is not defined here. Apparently
> gas does not care because we first add and then subtract this number,
> leading to the immediate value to be the same regardless of the
> specific definition of NR_IRQS_LEGACY.
> 
> Neither the way that 'gas' just silently builds this file, nor the
> way that clang IAS makes nonsensical suggestions for how to fix it
> is great. Fortunately there is an easy fix, which is to #include
> the header that contains the definition.

Acked-by: Tony Lindgren <tony@atomide.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEdGkZlCDdhKP6cw%40atomide.com.
