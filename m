Return-Path: <clang-built-linux+bncBD4LX4523YGBBEPKRSAAMGQE2BICJ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A932F8EBA
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 19:48:50 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id b62sf2486953ybg.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 10:48:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610822929; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ish9gKZCVdOJG+NgdfR7k2eKTFYeD8uIk2FiV2EYthYLsCyzOeIQh/VDu51ZIGXuOQ
         wrRkqWUT8Hdm4LApeb1nH+VJzGezYskkocOwI1CYwxzMD5spzn1LPjqAcsarpteDDrZU
         Y45afy20Ph0dxqEJ8S5yNQioWX3J0gZMw7u1ePZW4QQyAW3XMjZxRpRzq0Dto8kyk+NH
         +NFvF4L7BmYVIgcss+Z8AMofJfv57L/oXLPwS8V5cRMqngVN9tUfUIEKL5ObNFUumkVn
         ZQyMwDuHWi12lGoyHkVc0rgf3EJGohf072eGHK5AvEbS22QsdKzYeI+LPtHETNCCHiE1
         /jhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Iqdal0g7jCIvjZroOS+N7MM2GhUfQcrcGKhdtAzE9aw=;
        b=mnKnJ8xRTWhCdP9G0llUF9Upr5Dz+ZOdx5DQ/2IYsrMfddB3FEmg8yfWeOCTRSa6ws
         caWVmz8M7r1yRtb5QWhmbnxoqAj4kcw/s9CL2jj4OYNMU7gc2P44hPTmVcRgxgIcVpY3
         Ge7YZ0DP46IEhpMkdseyb9C2VmuCVYyloLF3AGVbr9ZE/9E5kEFpj+eX/s8FuCK0pZjf
         MPpuMkcmcqorDe3Lc8h016oN6M2PtE2QSA3BDUwOh/d2EP5qDkqGwLIJOXZxQb1FOVxz
         9Zo64nZZVAKMuwXwiQS7WrJ7UtftZrFcAuK+ZS5vUmYNA4VTchaXRTpvR3qwjwGOPzwp
         +HkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Iqdal0g7jCIvjZroOS+N7MM2GhUfQcrcGKhdtAzE9aw=;
        b=la6zPVJ5ar2NhkDnItyW3W4Shff5LnUjI0aT3kjTfeytJTgQit2Sa3eW8pYKDShvW7
         5dyT0shvEUNJ82o1lnehnOtzK7WmnGLMzNr4kXsccnx+DSmQRBP31kCuPQVTCOmNwP9t
         wg0eWPDnmeRBBch7gWyWybllvEH2wzvpP4RjEJJVgmDYT7AyvkUNL35LOhyubYkajz52
         4qOJaaRL9CQxd6VbYoxpkMQvO+ZVDRj1nO6sPzXYhm3ASYh4EVDn7hWVTu9MldF+nqAA
         NuoqpMk2o+F8OMXNJxgYUlWvI32YRSfdHz0m++uo5KpfZo+fDOvX3bugtpgnuHcKTF5/
         O3WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Iqdal0g7jCIvjZroOS+N7MM2GhUfQcrcGKhdtAzE9aw=;
        b=INIPCC5U0Nnf21z7oLPjZPWgbyOu1YpTn8Oawlq31Cqrc3dumdhHoQKVZSOIJU7hff
         uToynCiCuInLPulEoxTH6Bmvj/ieiRpSZXKDKnoM+ODpJ4VXA6pmtkPptif3U1j8RIsz
         TULjq0TgJMixt2YNuDey+mq7FNdYgkYOBt5j6UQviauE4PljjErGk9l2bpAD5GxcCLeK
         8y3QUtWJaufVpWL1j6jXX+vdUTDdT64xph8J4EoK4aYg8oyVrCNIxbh4EWKeK0ea0QBm
         ONe1kvaBBtnqfBTBB1sF/2bu4yi2IkHh8Ln4epV8HYwBhy0TP3F/xAppJB04Fbn6ZUw+
         mS2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533witDGMMr8FS/b2JH63xlfgUdPXH+vLcNf73Cl8m+oKDhJPEk6
	b12/LkUwP7NASfFsUTylOZw=
X-Google-Smtp-Source: ABdhPJynbYdmmpRxHh12SW/wBRKivacr2hrSmhHPT96jvxc+B17jfq/fzZPMzX1ZpDTdqdRKn6F3MA==
X-Received: by 2002:a25:9981:: with SMTP id p1mr26139788ybo.241.1610822929763;
        Sat, 16 Jan 2021 10:48:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls6130101ybg.5.gmail; Sat, 16 Jan
 2021 10:48:49 -0800 (PST)
X-Received: by 2002:a25:ade8:: with SMTP id d40mr6626503ybe.414.1610822929215;
        Sat, 16 Jan 2021 10:48:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610822929; cv=none;
        d=google.com; s=arc-20160816;
        b=q4DfvssooTmaUnj9R/NdmtBKmtdHXv+Y7NLHfNEwyqAWsnXTQwN/MHghMuc4HqFiqv
         N3m71Fdk85afIMbSW/Skv3ZWBg2GyEaTVekf+y+bdtSkCG9jMzUclfRpX3gx6s8qwBN3
         hIYdqn0k8ze6IDDzXROUpGYdGVjcx5CjhivTIpExtgUEXzCGG5U09OtoL1kLq4VBlEJs
         pGQPbikPwc3OGOKTEM/TRo47v74GxaGEFgNK7KeKWh+8rJcpm9vPr7FRsDjVtdSe7rfg
         PbzG3+SVBz3uAmJOZS+69Fp5BHnJq8NeLGiV65h2KlmzBWnezKm6eR9JG0vXEzjxAVXx
         4xyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LQw5G2slLqm70x4a+GrKvwBVPYr55sY134GG4ikbLf0=;
        b=YTnYq77DwpFCosPLLK9appKvOUEO4/l236Nl2F88usvjR2Oe5JovCb6/4ehwLsqsDg
         fsgR3zTHskVYKmjh/hOrA0Hqb9yG91ZgbrS0JDG/0tCkf5Ne8HODtxKpUV9hloWoxnb3
         8EN4+IlWeeGOLkuyNwN3cRhSjtY822z7gIbVg1oJQMshYBYkbhW/Iz3LAyPSgZwv+ujr
         Wj0HqIG1giZ1KQadthZ/FzJY69Nu4hBeMl29b6fsXYueBSpJkX+Muo7Ci3vo3A1HGyIo
         HN2TalUoVIVuvBY4PgnJ+IK4JQwpQMQ3ghUGpqG2C2C9fPQNI77cl76f+kEZR65AjCsB
         jHJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id r12si1155687ybc.3.2021.01.16.10.48.48
        for <clang-built-linux@googlegroups.com>;
        Sat, 16 Jan 2021 10:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 10GIie1u011583;
	Sat, 16 Jan 2021 12:44:40 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 10GIic6h011582;
	Sat, 16 Jan 2021 12:44:38 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 16 Jan 2021 12:44:38 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH v2] powerpc: Handle .text.{hot,unlikely}.* in linker script
Message-ID: <20210116184438.GE30983@gate.crashing.org>
References: <20210104204850.990966-1-natechancellor@gmail.com> <20210104205952.1399409-1-natechancellor@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104205952.1399409-1-natechancellor@gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

Hi!

Very late of course, and the patch is fine, but:

On Mon, Jan 04, 2021 at 01:59:53PM -0700, Nathan Chancellor wrote:
> Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
> sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
> change [1].
> 
> After another LLVM change [2], these sections are seen in some PowerPC
> builds, where there is a orphan section warning then build failure:
> 
> $ make -skj"$(nproc)" \
>        ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out \
>        distclean powernv_defconfig zImage.epapr
> ld.lld: warning: kernel/built-in.a(panic.o):(.text.unlikely.) is being placed in '.text.unlikely.'

Is the section really called ".text.unlikely.", i.e. the name ending in
a dot?  How very unusual, is there some bug elsewhere?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116184438.GE30983%40gate.crashing.org.
