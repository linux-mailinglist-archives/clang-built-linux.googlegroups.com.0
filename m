Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB3ERZ3WAKGQE6JNMCPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7056AC3E41
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 19:12:13 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id h15sf2796898uan.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 10:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569949932; cv=pass;
        d=google.com; s=arc-20160816;
        b=hPBac+KlcOPZ66k6iGTOX6FIMDS49AhN6r2xeHIVZylqkYZhNMlDUo1ggSKiO4HRoR
         DK/8BrzDnnP+WM6g/tluStYO/60FeyGKspz3mYtQ4o9lU0nzpyvMsQRjCTXK9tqQPtVB
         Q9aQUI+NOgwoNquMNWJSReW/P5Tu0y7sOTr8ZjGQta7L+/keRwXLfQh8kDn3kXBrV4O1
         r5fIbs27UED4Iuuw/rX5a7lud6DYjVlDDUkhDsv/bNmDkzc0yh8jBBYroLxiYldGxdpo
         lpXJiogW9ZYAVuQns6t9CBln2xCP0d3lz2p2AYME/URpj7W1juP/YDOt44dPJAM1EnhR
         6hWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=n3ewXAww39NHZZY56UBaAo0eSGNXdoHx9wK53mzyOhI=;
        b=H+C3q5crYNFi1JItzEg03Jbfta7mqkrjqmLX7gQjZ1HWqfEI6X4KcSzUE/r1dc4mI5
         6oZW95ulxw4DTWF1E8CFmoY/u2jidwTl/SGFzHQD+/8tJlFKsugZOeZwFnA4/XIP8mBo
         ZKGKZolhbwXvZJoS+BzJGjDJrDXz3YDp8WE4zQisFgAmU6/noXVMtccO37a44qZdyJ/P
         WwgYuqZra2kJMj9TBQ9WufUUVaERQqlPiGWTmQ/sVBx6y1LkvWrxB+uEUTx58+qoweMR
         6dHsa4Gv+G5vEup0iEPU6Fb80yXOq/ypZY47BAfxjnz3bR1srhT71d0rwXh9n6iM824e
         Aatg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=geALupBI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n3ewXAww39NHZZY56UBaAo0eSGNXdoHx9wK53mzyOhI=;
        b=V/iVNUuySAZd8/lQdqzb23xwu3gECQrh59dPHno3UK/SzsYsjcZXsoKZW0QczQWnZa
         NUVV48EJXcjF3M790geauTE3VTwQcBgUBsj2o7yKPXujPWn5IGfAWCVyW/G2sFE55xIy
         52JsIxNQHykmzRoclipR63oBU8cXz2mjp2YhaBKEAEhwsJSwvX+umc6ZqwhBLVFypIv8
         aabKvL/o5hu9atb6RQ6x7DQRlprKY1RCF9vv+PAoZ2VYIjrkVhtFPcCX3YOer7mSPfoT
         HELJM7rnT2p9KAodvToIHzX1tQc7fS05viFn7hhGzl2diOLW33AKToGcNX0hhKmkeQEJ
         mb5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n3ewXAww39NHZZY56UBaAo0eSGNXdoHx9wK53mzyOhI=;
        b=KDZ/Tb5XvSfwyBQhT60hnmyEn033/x7vrHH9TlIYjqRYr9l5IWfUvKf67rdsYBx5y0
         y2Xp9n3czx2Ud3cQ9CtfuP0sUMW/wstuL0k91L77rehxgmARh2Oi/Z7QzV4BO0YgEtBg
         T+VYghPeVJYEiP5+ztSLN8BFrYzHEEKcUXM3JcRvaHqC4ikEYz35dMTTMlYXmarZ1p/V
         OCvW3uLM2atGhCFK10Qkp1ri7hOF8wn1tIbD77BgrvVuUasBx+WPiwOkkM18npODTPHT
         Qnv5aqHnEt3YhDTD2+dPlw4LUJLgMX+dV0u9rdZ12cuShAtjVG8dJrrvm5oLQX6FzDs+
         VM9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWovfRcVaIMihbv5+j2WZunHHMBQ/JkSC9e4G4U/bE2/lJXTomo
	E1MjEUdeWm62CZDd/qc/y9s=
X-Google-Smtp-Source: APXvYqz4VZXQ6MGQWygeO9Gyf9OlmcG+xdqAZTMivm2+OBD6C/3qQ6ju1w4VBdgGFMzTQcm+1ftCJw==
X-Received: by 2002:a67:19c7:: with SMTP id 190mr13280982vsz.171.1569949932505;
        Tue, 01 Oct 2019 10:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f68c:: with SMTP id n12ls834317vso.14.gmail; Tue, 01 Oct
 2019 10:12:12 -0700 (PDT)
X-Received: by 2002:a67:d706:: with SMTP id p6mr13810807vsj.56.1569949932217;
        Tue, 01 Oct 2019 10:12:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569949932; cv=none;
        d=google.com; s=arc-20160816;
        b=jtdnTQuaA+2uBOfgbGYCs7yWgYvEe+0O9COQae0Eyc2mnDuUzpIQUnG0dKxlZh7nYw
         Qzg7coUyvW79u84k+mzyij4aHCgOx7zZMiKlbX/XC0hKmCVFXbBI1uVxQ1nxY/ZUjp6C
         8PRHEBv5qGxsZNdf3u4BFYftyutubB4KjTMhSQH9LAM2vU178FnVc9kmowITzV7H3kiz
         gjrpUMaYeITysPTIYrZfFVdjBZ8Ug2vxhfgHs6Pno6bOslhBUlaFdu/K3oRlEa7lT/xu
         m7F568ltWRkdskmD70gGjcJPKyGrvWODlFVjwo6kFFHZDF4gfwoYdxoGankUHy0EiJI1
         K+dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PqmRGbp7UYKXC+z66yFM+OyNG390N60cWiveELKPn34=;
        b=Y1pVjwVJSqnYouH7W66buoQc46gDG6EKSd+DbeEdfZXprDvl6BJXmLMjb4vd2A53OP
         GBGWmLspvK6ey2OAKNYQzn0KLLEfE1+nNzcHcA3v8egW5cr5ZJwKvp/dg0syRsSPBw06
         GGKAN01sDhnFxsXioGON8mTeIgpe8H6VMvC7g4KnVK638LeVEsC8eMc3KXNwvaNK8hVe
         2aEp1rZ5+LjrvddkMPZqgOR7BXRUbqpYpc32JyqVAvj6IJBkMRJg8FEPNsInX5g0FA5c
         AWqXeAoiK4p8l+gCWWJtkPMbMks+/gYWigSjoLH/XYYfFTm7dyYGg6WCOmO0mk0Sm3KF
         inkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=geALupBI;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h184si123024vka.3.2019.10.01.10.12.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 10:12:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A4012086A;
	Tue,  1 Oct 2019 17:12:09 +0000 (UTC)
Date: Tue, 1 Oct 2019 18:12:06 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: arnd@arndb.de, catalin.marinas@arm.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux@armlinux.org.uk, nsaenzjulienne@suse.de,
	torvalds@linux-foundation.org, yamada.masahiro@socionext.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001171205.dubfntdlwifxik6z@willie-the-truck>
References: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
 <20191001162121.67109-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191001162121.67109-1-ndesaulniers@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=geALupBI;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Oct 01, 2019 at 09:21:21AM -0700, Nick Desaulniers wrote:
> > So you'd prefer I do something like the diff below?
> 
> Yes, I find that diff preferable.  Use __always_inline only when absolutely
> necessary.  Even then, it sounds like this is a workaround for one compiler,
> so it should probably also have a comment. (I don't mind changing this for
> all compilers).

I wondered about a comment, but I couldn't find a good place to put it.
We basically need to say "If you're using explicit register variables in
your function, then you should use __always_inline", but there are other
functions too (such as arch/arm64/include/asm/vdso/gettimeofday.h) so
a random comment buried in the atomic code doesn't feel very helpful to
me.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001171205.dubfntdlwifxik6z%40willie-the-truck.
