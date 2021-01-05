Return-Path: <clang-built-linux+bncBAABB2X62D7QKGQEEJOAWBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 263BF2EA8A7
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 11:29:00 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id f15sf22448364oig.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 02:29:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609842539; cv=pass;
        d=google.com; s=arc-20160816;
        b=LuxlBi0GNzzaFqf9VBa7tXN3peAOSYlc9fDifxUPL0Lk1dQy2YvOiIYO+/o/9owGWO
         9YUDKLR85kIj1dSWdLN5X/wBNbvZk6Yd5qwyIhBTG12dlKypPvFC0PgZXPWWYTLURtTP
         0MRe9oZf/6OIIoFWiLYbnFvjSgwq7FQ8yqpFbsbz7IFbT4oszIPDcUijQJLRTfvbm0Lh
         7ImJTJEhEZCrm2RcQIq6ClWQaJZt0SyzEjXICawZHVnaH7uJ5+zvSz+Bd2BAUMv2Ir1j
         QqbPjchdxiBL9sfAXYCP1ntKfolhx/HiOs8Ob73IaWAj0qGQDN3m8PmC9D4pignlM/Q8
         RNug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QoFZCaqPmhdVmqS3x+PXhcqU6zwOBWe0aMN//eQ5LlQ=;
        b=HhRbr8PgvJB2el6d3j2w5GWDwcSfkjnJ3F7OnJDJJF+lo7+ONZvMMpcVlIFF6Fmc0S
         vUiJuSW97u4Ccb2GTWlZyr9yAm2N/ymBvBHWK+PNZ8BAR91qSMhtZGIxzEVE4+PbUMcA
         WVIEgEB0fmOfbNFmP8RFJoPtDVhbnATZw/y8GlwrgQ21hMC2oXAL+E1KgbasPI2TGKJN
         bOwQj4otonyMrycn6OlaPSs2A8fP8RR9I5wyRHlo1O09EubVfclXaPNg58jdDxoatrw+
         1dnR1PJ9260aaY5EYktIT0Y17d/16p5AiudZOJXEz//YjMn+0U9iR3ws0SjVGjMErOE2
         f2dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HjbJePpa;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoFZCaqPmhdVmqS3x+PXhcqU6zwOBWe0aMN//eQ5LlQ=;
        b=hdbdY6rzUHLEgrVi3gX+/Sqs0QL1R/PfmEhYqFlDDHNZ92VSZZXx+bGq9pw7vWJlnh
         pyIE+VExEtIEw23Tg4zD8Vbn6XXlNSzVAfmxw17A/BZAUHs/tdk0/1311O84WxUJb6ut
         QMKngw3xksMi1peGWq3Idg1qyIHT5Z/o5fXxwpfnktoc0PIcOWN71QEB8CGImaD5Pc2p
         aqXGQB2zB4BRrxVNDgtg/34V/nfIh+hVL+nFQf4jtk6DauuMI1JPXOPKiU26ugZCbd6T
         SdJysX3Z3ENglwPISsVzAi/yvHA9pqG99P77wUChVQshcKvwlrP4//f6NUPIlnn+iez5
         H+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoFZCaqPmhdVmqS3x+PXhcqU6zwOBWe0aMN//eQ5LlQ=;
        b=gj7yLvTTB7Y+THJXiGQQYwnYmNpht36zjBIHKf4Sbm4L9hZpp+Mfg7JGfbE7nYyWXd
         BLJ6+mSIy5CIvD4urDcLKtIxT7nCB8UyxvGqOiPOgV0AalRiLUvtGCwkx6yf5jnJ+XH0
         bty4R62u2AeAWDWfJukwsJHX5ss4l2oi3wesCszYk61dsYhCKJ5jLF34RipfrrJl5h4Y
         io8+qiNwNUEC63vWLUkOLER+VBT2sUmVbaFY8ppmclReqn553j0i5Ov5TF+5Y0GB+ow4
         fl2C5Ebw1JV9h8NuxhyhCdkb92Ig9g2pcH20W2VUshpuXfzVtcYzm7Einq5uJQDEA+9o
         QO9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531799iXgoGe/xkJytNs6qVme7OG4UknA1CNiwDcupCprC48I6vK
	3MMvcP49v0GelJsdyfgR//M=
X-Google-Smtp-Source: ABdhPJzOOhOm021mqi2xI9vYtAzj0ei4PnVr0XOS6391JSleWH6dpLF0GQ3zcc+2vs9cGK71uRhBBg==
X-Received: by 2002:aca:47cb:: with SMTP id u194mr2163353oia.63.1609842538843;
        Tue, 05 Jan 2021 02:28:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9c05:: with SMTP id y5ls3335087ooj.0.gmail; Tue, 05 Jan
 2021 02:28:58 -0800 (PST)
X-Received: by 2002:a4a:e294:: with SMTP id k20mr52094900oot.82.1609842538502;
        Tue, 05 Jan 2021 02:28:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609842538; cv=none;
        d=google.com; s=arc-20160816;
        b=R6rP8bgzaDc0zXr1LqgM4H7ESV+Lj0Sl3cTurJXnmimRunKP/rFkHYRx7WcS9iprBz
         CVW7Zpnso6y+vDq6dlG6GVVvJriPkp3ce6SMkQT8QTJCgbWlRCMiiztqDRQ8RE+kdIQu
         ljcWhpyupc/jqhKW7AmdObnA1OsMpZtXR65QE4jURLYMUQmmf9E/TBPKSKRnUx2d+P9q
         wEVM2dmjUWAL9zVbrAmyz5/wAfbVXF2fDD7ZCumsVhbAqcX5z/T301U7mWoZ6D6RLdkw
         wGABK8yb+lcMnpGrEw60kEpw4ssryd3WyRasJQpK4G27RdaBSH3dtFbzWAw03sGNiYhE
         ewOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MVZBu5hJ3yXRP/76P3rg8VVhjrji6NrKbXn1bWzPh98=;
        b=KDz6CjZXiMDGsptg58dvf3UaZ2i5BrPRydpXrYzOvx77t+ETty9e6MSApiGI5t+rFD
         EECFAQbgq1zdK0ZPBfheuPH0jXmWYW6SV/0ZL78dp6pjO9s91eYmjcHluhE6gs9Yz/zk
         9fvrb8JE4RJ+gBRFTf3+UiVXMoqeSJRfqs4oFQc4wg3TpI5DdtKwXSc/7z944710t2u1
         LGS5DFoyvUEiD+pBmHHbgu+B8Y3G7VUmH3IXlguw+ecfz5qJqpRtMLxf+/uX3KK3aMhC
         sTvIHKsSTSRufDQFmqpl+aFOr5dI0MukpYxS83t7XZzR5pqT4BfYbHknxEgoIwusUwOE
         mZvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HjbJePpa;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l19si4777403oib.3.2021.01.05.02.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 02:28:58 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C75222581
	for <clang-built-linux@googlegroups.com>; Tue,  5 Jan 2021 10:28:57 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id 9so35494552oiq.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 02:28:57 -0800 (PST)
X-Received: by 2002:aca:44d:: with SMTP id 74mr2206832oie.4.1609842536679;
 Tue, 05 Jan 2021 02:28:56 -0800 (PST)
MIME-Version: 1.0
References: <20201230154104.522605-1-arnd@kernel.org> <20210104223634.GB2562866@ubuntu-m3-large-x86>
In-Reply-To: <20210104223634.GB2562866@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 5 Jan 2021 11:28:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1E3zWHSkNOaKY80ZfZqVuEe11dr_Rop=eDkbmmHo1Z6A@mail.gmail.com>
Message-ID: <CAK8P3a1E3zWHSkNOaKY80ZfZqVuEe11dr_Rop=eDkbmmHo1Z6A@mail.gmail.com>
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Wei Yang <richard.weiyang@linux.alibaba.com>, Arnd Bergmann <arnd@arndb.de>, 
	Vlastimil Babka <vbabka@suse.cz>, Dmitry Safonov <0x7f454c46@gmail.com>, Brian Geffon <bgeffon@google.com>, 
	Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HjbJePpa;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jan 4, 2021 at 11:36 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> I am in agreement with Vlastimil, I would rather see the BUILD_BUG()
> dropped or converted into BUG() instead of papering over with
> __always_inline.

I see your point, but I also generally prefer build-time checks over
runtime ones wherever possible, and would prefer a way to keep
it in a form that allows that, at least if the check is considered useful
at all.

> For what it's worth, I only see this build failure
> with CONFIG_UBSAN_UNSIGNED_OVERFLOW, which you proposed disabling:
>
> https://lore.kernel.org/lkml/20201230154749.746641-1-arnd@kernel.org/

I'm building more randconfig kernels without this patch but with the
__always_inline
reverted now, will see if it comes back. If not, let's just drop this patch.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1E3zWHSkNOaKY80ZfZqVuEe11dr_Rop%3DeDkbmmHo1Z6A%40mail.gmail.com.
