Return-Path: <clang-built-linux+bncBD3ITNHVX4NRB57KXLVQKGQEIYFHKZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB1FA72BA
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 20:48:24 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id n2sf2738850vsq.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 11:48:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567536503; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lac56bOI/rml26Cnit2lHicdF2Ve7Z6V5h/+6lCuAZiA7o3agqrG8jtfYBSCuxuhM3
         PQeEAEMWF9C6GhzCNvts2xnVVbnCWBtgYvWAQOQPC70ya9yaUXkE9oO8TMNhJ6ryw7XB
         VdpXqsKuMbV94TmWD3btc4vHWvPUDsZi7zZmFBEb4Fsn2Xuz7i9K+2HwQ9BQ2orGYl7w
         chvtr7HE1p26AAEfz0+fQTMx9U9mUwk3iRqC4hjmric9jP5iri/RPhD1ATVN4JgRzL38
         g72jcBtxE0kilu6bqAqEuHClfEUjrgwdC0JWAA3LZmuz6zrF9UVjuK0bK9IWEBu8QvXe
         8H3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TTkvcscbtlJbaGFt4SPPC1Nns09CA0rKIjzfmwEWaX4=;
        b=mC2QZJoc2+KQicsiaLqCNEN0KdL2khVaThNBeqYqMnVLIGZLyaWXmNpjwPu8buSmXe
         2OX+RZuy00YpUwRyiMARQIM5BNO94f/KtJQRj3h+RL9vBMVWU0y3wNkSf/oXlOGRL5ZC
         2W41EqJvuQPQ4o3kfIjZldciX8WIOooZ5To23T5tBD5sXq/r6Jbv1utgwB8cHmKlEv4/
         mBlFZg/4VhfTrS70v5D8/PDvV8Fu5YgHRLxjxTwH0pHuRmv6r49RORLkzTfzJfrWJgr1
         vl2Gxsd/5zB2xQRHcyGBBTK+itX+CpflWaTmsItiaPjj+Ry6NdyUv9twI+aQyAg3bpSb
         9wmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OyE3pxgc;
       spf=pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TTkvcscbtlJbaGFt4SPPC1Nns09CA0rKIjzfmwEWaX4=;
        b=WxizZH3PT60DKjMHtbL3xjErXVFct8ghUc7nINr1AUSI51LPtovMzoQa1IwXvO1DIU
         FEkhUsK1qx740SfvQUObRSrJNYsoThXuNhaFNrppswppyQsKmYBeskXzXybLZVnB2B/D
         jIM0sMjBILtlt6XERYusa0hy/dSZvB2d3Bte3pN14GrshKjpsvwkS6VtsyTzjAQpuSsl
         h/gCj22TUqCCeCrVprJ6F8GeWCFAFylGtXn0NpMQR/qnWga0so5g8x1zRhIzQMP9LLF/
         5zOoHih8BLY2sHxQq3rpBU7XZryhzPqg4xDV1dfoRZN7VZIUnqRk7JqbvtzZlwdhbYEd
         gKrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TTkvcscbtlJbaGFt4SPPC1Nns09CA0rKIjzfmwEWaX4=;
        b=JcoZ5crZ3vjEBkYPQ1xFYG1IOwEnXeu1YZ9QBNf72Czq3yL2J5swGzXHKg8GRRxnwG
         NKMIGXy+Rwc3TgcCASBQy0amzxVDiM4PYWRhNEgfV+HERbzEpZcUlRhHtwxGfFMZuy2R
         3LIqSpocHrgxpBIYQbeeaR5mf2Zw50cZeWUfNjh3mQ+aASwtioT+YJnFbVixvT2frtzj
         aSS9rfX4Q31ywr6vLZA0EU2oc+OBqpiUsGQKPUZGTVWjc7Wf/xFVTEfLgGlpYWU/3RKG
         hKvl173xRWOwQ3yj9EgTDntPilcr7HvLecoMvqMFqxmQn7LwUl9WJEXjgm3xzmhKsr0D
         5Lgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOaat4kXM+CGPzQ51ZXJixCu9ocWnPGRfx/kg8RmFJb8D1TW6s
	TlrElhOoERlt0tXAuyKG1eg=
X-Google-Smtp-Source: APXvYqzLK+BSJC/vrO99UFenFpSmaDhXqn6/BhD+Q1VK6QZyTuUmac2OvIdqN1KNbdlpoFRDpC2gjg==
X-Received: by 2002:a67:ea1a:: with SMTP id g26mr20179354vso.192.1567536503674;
        Tue, 03 Sep 2019 11:48:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:44f:: with SMTP id e15ls870491vsq.0.gmail; Tue, 03
 Sep 2019 11:48:23 -0700 (PDT)
X-Received: by 2002:a67:10c6:: with SMTP id 189mr19468029vsq.194.1567536503346;
        Tue, 03 Sep 2019 11:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567536503; cv=none;
        d=google.com; s=arc-20160816;
        b=ceGknxZtZy6g6YYnKy5gfESHhXl2iB6pS9fAnm7/robsj4facf6P+U/X5vUD2AlS/a
         cXOVM+1NE3r62TKcUgmIgsgNuS1kmGfD6xpJ9aoy3BIA48D4UaQB0lAT7aZQ1C2NDjO1
         DMowx0qME5GpKWlxPFbauIy0MHDscMKqunE3j0QlAs193Y9ZNmtLPiRPDAWnwb8vVZ3A
         f1spQ6ga0JM49vButiCyBXgUZOXVbFZbEMY1SM58QOPbfRlihIBd0Ko9JrE2oVn4OrEe
         NsVLICFVAdoKG8eTFEIr883Ul7zWnuRiCWNFtuYcuO2V6+RsvAy2jK44WcE/aNxlYiut
         U9PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IEYeijqNBx8FKsQCqztccyibS69/cramAhDtz2iOU7k=;
        b=wK4dEy6gFXcJXUMRQSTpggLwVrNhR0ZILVEGgkglmpYfEs3qA1UNaAmF7Z61jn2xHB
         W0mxGmWQvcqmXlrP4W6U4iUwxTuuxcNpMDi0Lm/0wq/MlwF76NJ66S2A6mHjG3JtpOyk
         EVGF9l6wy0THb0gn6aY9i76QINfGP20S80P//XVq37TxeX/V2ZGRgGmELdZu72ueI6cq
         zwUstDZ2wdNjsOh+2OKUDQtmUL3UjEI3LdKr8A0nUa8y9JanTatUqxkj2ETHHTcQcDU5
         7utrX35MEbVF8Hgcee9/532wR5GmnVrSXcaKZPK+8DQuWGl2PWZhC5PJTUit9jMdOvgU
         THLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OyE3pxgc;
       spf=pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=mka@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y12si621155vke.5.2019.09.03.11.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2019 11:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id n4so9643597pgv.2
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 11:48:23 -0700 (PDT)
X-Received: by 2002:a63:1310:: with SMTP id i16mr31163370pgl.187.1567536502419;
        Tue, 03 Sep 2019 11:48:22 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id q4sm6220900pfh.115.2019.09.03.11.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2019 11:48:21 -0700 (PDT)
Date: Tue, 3 Sep 2019 11:48:16 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v2] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or
 newer
Message-ID: <20190903184816.GF70797@google.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <20190831060530.43082-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190831060530.43082-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mka@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OyE3pxgc;       spf=pass
 (google.com: domain of mka@chromium.org designates 2607:f8b0:4864:20::541 as
 permitted sender) smtp.mailfrom=mka@chromium.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Aug 30, 2019 at 11:05:31PM -0700, Nathan Chancellor wrote:
> Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> with clang:
> 
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> softirq.c:(.text+0x504): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> softirq.c:(.text+0x58c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> softirq.c:(.text+0x6c8): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> softirq.c:(.text+0x75c): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> softirq.c:(.text+0x840): undefined reference to `mcount'
> arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> 
> clang can emit a working mcount symbol, __gnu_mcount_nc, when
> '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> broken and caused the kernel not to boot with '-pg' because the
> calling convention was not correct. Always build with '-meabi gnu'
> when using clang but ensure that '-pg' (which is added with
> CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
> cannot be added with it unless this is fixed (which means using
> clang 10.0.0 and newer).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190903184816.GF70797%40google.com.
