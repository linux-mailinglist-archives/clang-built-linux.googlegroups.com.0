Return-Path: <clang-built-linux+bncBD4LX4523YGBBQE3T3VQKGQEV65U6CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD79A13C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:33:05 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id u1sf1564203pgr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 01:33:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567067584; cv=pass;
        d=google.com; s=arc-20160816;
        b=JVOQGrF8CtBBEhElDWhAuz4TC8AVXVWMLI3xE4c+qsgTu5/3OoxlMOcvZYraScxwO+
         tEOXghp8HQM70R78OiN9Oz+wr5MnVugtRed0KfS8jDlo+AjyClwAENtOO+Y7Gt/HypQr
         sNeQhSWdQwxFub0477G75HcueCauCZS2N8sd1yS4gwWTmv8QczNtlRGGXe+hCV4DCBpR
         OiSsJ+CXHhctTWUO8UNe34xMEfWLyhgGLUXpZEQxd3bqr3ewveVsoT7zBuKxa2AxfHZz
         nMybUZPIxL+Mm9hcG4hGiKxER0FTNU0NWeP4ZoQaBPYKmYn/yaacw6Vt2wgkaCk9BbHN
         mENA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=SHIOgSPtEft9RL76IJQ0sKaVQSKxlIjL77bjclM6mT0=;
        b=NX2B4chopXggLTdloldk9ECz6wPfTkQquGb469LkJTuz+LPlhaA5gllg6maGlyvln8
         aeguvZwYOzN9K3HcUmlv0TmmImxT93re+p7zOxYEB4yRBSDugZcjuDeTSyiB0WzFm45L
         //NNA4tpFvgU+VXVqrtF6TccOFxEaOdqG9C+QEgnpdAVp/ac52UwYvbU6V7hBM+V5TPY
         ys0OOY0mgDH+lhziiK20JmVOfU/ZgyJU0kzzRbadU48obZslhCFQdyJ0za0rmSzcPDFI
         r3j/PN8qBgFFQv8BK2GtwsD6zu+vqLpjUUBmPeAXZi0wg0LzMJ2+Oq7eabA/hGsNtsrn
         g7ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SHIOgSPtEft9RL76IJQ0sKaVQSKxlIjL77bjclM6mT0=;
        b=EUWF0ptHHBNC/BehL674aa8Skq6X9OPE8saRk0Hs0Uy05pl7B/D07VbK2AsMvorke1
         dbmp8btp7btmLZSm8Rf7sR6ZCvIp/XOVeb74Sgja49gZ0dRpFepdbxuLAR5s82nDfgN5
         ejMC5r/WYjb/6+A4DwgLr5Q53RSmTPfJxz4FV1TQs/VAL7yZdGOFNZBcRRwZyJiDqWCl
         A1N80YUk1W5xHmL4WtAVduNqHiN8A/+fVbOpFlMpnyBMW9M8EwjfqvzepG+I2pwHsapu
         augkYwPJ+OJhDDKcOeO2djpiEmTiIDC3wFwxe3kkr/U4y6i0EJXzyeFMjw9X5LFFMRZn
         kOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SHIOgSPtEft9RL76IJQ0sKaVQSKxlIjL77bjclM6mT0=;
        b=o1/n8lz3z7TmA7joHMg0eqv5rh+0225i+p0aFeYwOAesA00qcYY8BRmNmMXQPW9MUP
         QoL0xrN1gsmeXq5TahBaDb55sVBHJbl1OCNp0KBXAUQDpIjQ8dfvnMKcxmnFSSXIYL7L
         UEcyYUUc6+4DJtLAcgs+fktADSbvqB4hdv2DAYxujlYMk1V0c0vxhRInblpa3vvCb/Ll
         TjI4Rbsy+vH+vuaBxL05LZJ1n/r3BUASliWDcbosOeMi2K3c6AJt9vBo7Vx+IBAEABqO
         D2q8LNveepb13welXYMd85bNfEGQkMrsUi+em1Z/OaaP+sDo50qiyk1jtjcDi6ZXL5gJ
         golg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVly871U7bpI6cojeIV9gtBhuS3L5xS7V1ZRyQlald5DGXj2blQ
	5fE7nLjC5aXaUjpC6a31lEE=
X-Google-Smtp-Source: APXvYqwaeqaKRVCKebKXe/HTw5HyB4gIGztr/kYC/LE0SsCUg3UJ33MTIM0vKA3fiTRdRjDf/n21Tw==
X-Received: by 2002:a63:b10f:: with SMTP id r15mr7122173pgf.230.1567067584119;
        Thu, 29 Aug 2019 01:33:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68c8:: with SMTP id k8ls462914pgt.8.gmail; Thu, 29 Aug
 2019 01:33:03 -0700 (PDT)
X-Received: by 2002:a62:1808:: with SMTP id 8mr9880285pfy.177.1567067583844;
        Thu, 29 Aug 2019 01:33:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567067583; cv=none;
        d=google.com; s=arc-20160816;
        b=lq2pteqM7ha71DE21kOjOWbju3RZhVDryj7hxcieJ4VWdGG3L7fzQOqOXOrRQa9Zpd
         vGY1DyWNZod2Z5mWlmzT38g4+3Okv9mlB4dF1YgmXsK39R6GzKhjFAFph4zLz4a1+tWt
         mv5DmVKmP1nMn4vPzvRbwePNFEbTw5BMyV9BjCd72Okmg7NvaCFSIYWRwFwP7Ky13uJX
         IxrH7x06u0GQhUm4i+PhUnAZY+9nHKpRi5XmB1PNfef9fhJuBYJQp/Cn7k0jyacWHBRT
         MUvv3j3NeaXFjSx0VZHCkqPUwfK0NPel7xpcjDtI4s7GDJeCwhGIW+87s2nGKid8p29r
         VF/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=t1q/+g6t8kZKE70fI5drSzgQM+gtTD2GYlLYSio+Xzc=;
        b=aRcSgwY84ve1hE0Eyw0HOO2uwO97j29Xz4g4YkS4SZVY8HxO16Qgu7UrdOu1M36rOT
         8sTqqdDjpQcrPFHYpSWJu9Ic2xh4IVXlUn2ou8IhHmeYq5tF3L1DV8OaNLJ4iAjt1ZU8
         /vw2KfbGJTOsjLkUVPzvsD7YLm/GL/PAOqyxQXnz/t2RKqRC/tvNe7SaMrCn0XEM9H7p
         6aQ8hPgjy33O1+9/VUhSRn5E4XfrIMFAgKiocJDw6mbv+FFzj+C48ydsJZOr/2xVcGTC
         YYNAPBUG4Y+xoBbmko2YbAj2F8Z9jSIi9g3ltnVzXugWO2qnoQhFOlPbOBDKJlV3FMk+
         nOnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id e20si174694pfn.4.2019.08.29.01.33.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 29 Aug 2019 01:33:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x7T8X083006230;
	Thu, 29 Aug 2019 03:33:00 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x7T8WxRj006229;
	Thu, 29 Aug 2019 03:32:59 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 29 Aug 2019 03:32:59 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "# 3.4.x" <stable@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190829083259.GI31406@gate.crashing.org>
References: <20190812023214.107817-1-natechancellor@gmail.com> <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper> <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com> <20190828184529.GC127646@archlinux-threadripper> <CAKwvOd=wdscd7smcKZk40zD_n1OUVkhYYd7ZnoK8r1Y+pkvYVg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=wdscd7smcKZk40zD_n1OUVkhYYd7ZnoK8r1Y+pkvYVg@mail.gmail.com>
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

On Wed, Aug 28, 2019 at 03:16:19PM -0700, Nick Desaulniers wrote:
> That's a good reason IMO.  IIRC, the -fno-builtin-* flags don't warn
> if * is some unrecognized value, so -fno-builtin-setjmp may not
> actually do anything, and you may need to scan the source (of clang or
> llvm).

-fno-builtin-foo makes the compiler not handle "foo" the same as it
handles "__builtin_foo".  If the compiler has no idea about "foo", well,
that is exactly what it does then anyhow, so why would it warn :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829083259.GI31406%40gate.crashing.org.
