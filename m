Return-Path: <clang-built-linux+bncBD4LX4523YGBBK7ESGBAMGQEGF7JRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BCC32FF3B
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 07:26:53 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id r14sf3089448vsn.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 22:26:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615098412; cv=pass;
        d=google.com; s=arc-20160816;
        b=eukKf7ysGY1OnR6nJez0TjKQ+fnwlpeA3Qsndg/225CoamAISGZ9wLoCzkZuSRRQHS
         /SR9DiQlEiWJLjDwv8wny1XQmwGvvsv0t6Mt3O/guBAb6vPysfkTRMH7Q8w+z9h/hEKD
         Pa0sW/zhxanLZ+FFgmErxddHBbM2I8ICSjCksvXUlKK5QUTDK7AKO+C0rhTczsIFjSSa
         B64hs/O8DahiS1712xfjDm/WS7kapcingoHtEJjgK8B+c2odo9V+uDoPN8zJo5qxLp9n
         v5tNJ/dfSMamKJrlt/xzDZMSOf2Dzsl3GESFK0kA1nLBFqKGdcNpTBGyWeB3gbJnNfn6
         HJaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=H6s4ustmrFXHd2TuxwdpU4hD+Izrh9cKixV1KVze0vg=;
        b=dWEyMfSZhJmwCrf3IUzq8GvKBogGBdq+qzWFqQ2AyyT/yyBMTejOyjFjNYKrR+0Fnp
         dtBVTb45OWtSBpUwFB2eM/RYtZTNoKmW1lyZMwRNIrJ1IGmnLv4fEuKTR9inkZGqkQsf
         kX8dofhDcMXcV6dsg0rK14dbHBtV2fI8HaXzdCvm3O0fPLtx033WIP6mqQJ0DoFqRBna
         Dc2FqBUEwAeQsxhu/WIJ0TUpW+jngdaV0lj4WAdkQyzfvi3rEeHyg53dVQtgUSeHXz5O
         lVmMQBi4eqCQbqBNrY5Yy85EIxAVrDRx2BqrHqbqvF0Cj/4w3fD31c4zpm1Y1OErLWHv
         5Qpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H6s4ustmrFXHd2TuxwdpU4hD+Izrh9cKixV1KVze0vg=;
        b=DNjRCAjmvWytux6STfG+C8iyLtOmOrAHsOw2poF3bIdK2rdK+bSMxcFRt4KLB16g9J
         WBjIZJiM1mW/HLu5sVKHuFWxCy3xofAJrHH4xwQAdG+2gknmg059j+IxD32Cr/0LYe8u
         hTCfGnem3vcySqj46TkwbyN26mlkPxVsakzN9rLazIuKlCpI6POEb5ojnorzhKMEJJnB
         7IzGraHxsMhaALnsMrrgXih9ZzQ6JRnWaRyBgxU/320J27Ln7V0CGc9SUcQJLBW+0Qu5
         vtWTJ/hc7ozGzIL35vToxktIzPO/HR8TGm5SwWqyF2O2Ui45zawbcWIuvGZsm5lnjwHd
         VkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H6s4ustmrFXHd2TuxwdpU4hD+Izrh9cKixV1KVze0vg=;
        b=a02awPbUppf4mjfnFk/8BezvRzLG6LA2j4UjagMnAmKdpgPGGVaWOtkxO8KMStshhY
         G07Pj4Yed/HFdm1dvr5SfhWmk9LxbyXHOAPSbfKoQkX48CMh8Ki75Et0B6NARYsmejlw
         UtkAnZEH21fdgch36W89OkCIMQOQZd7fGGXIr5Vk0cJkEAlNCJ18EtRAeLI3QZ6ZK0B6
         X25ybo8Z4w+vZmBP7znQe++/H/MrwgxKHkIwCL26/zKvuvdN/kKe4xlelrWWne7A76Lj
         3SVz8OtRVo+4+VwYG+XoLNuH1Ib8FYAwNVhQwvgRguEPYDy31SR6ReKrs2eiwhAu1WIu
         durA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Mso6XOi0/J7QUbK/LlHUX1pq6Civsd2f9uMp1vyn1UekSJYAQ
	At9J90Ofgcd2B2k0mTeByy4=
X-Google-Smtp-Source: ABdhPJzj6BdWYMpj9i5TQFD6eply7iHO/R70nVjKTl/n5s1RgSZeyk6i28WmI0/l8lFwIXfBGleuUg==
X-Received: by 2002:a67:6786:: with SMTP id b128mr3557616vsc.9.1615098412583;
        Sat, 06 Mar 2021 22:26:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:5e9d:: with SMTP id y29ls1098204uag.9.gmail; Sat, 06 Mar
 2021 22:26:51 -0800 (PST)
X-Received: by 2002:ab0:e11:: with SMTP id g17mr10418031uak.83.1615098411037;
        Sat, 06 Mar 2021 22:26:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615098411; cv=none;
        d=google.com; s=arc-20160816;
        b=tVpXe/rB6FMSIS2N+rVvz4XbidUAXoBzm8q+wULWa32fftQx2HQ8r0tKQrYIJgPp/2
         AnIU5SvBE5IvyoxsJqo1KtsIKTAqQu2DhB2j6KeuhH2rdeCJ9f+w6h+myjsbmrv6fv0U
         lqi0Ni0dGNegUTfNqucy8Nb0eGWl1KDoEDy2DWYz38D604AKwHo4QyC7Dj231Syr/QRJ
         Ha63V5WBp7KDu4FFtrEe6t0S9FiXjjAAxlKtBz/vkM8TeQF8bZRsIj5gvluT5pHvNR12
         OasqB8WMfOtvgzB22f3WI3LPxfTFbnOzg3DaOx0OwXszcmB7+K/vN7TNLohju/BFJSSQ
         1Njg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6puYFu3BXzb69o26IWOc+tp+s5xbwHwkhSOGK4W1n0M=;
        b=owVJC/kSaJ2m6y2kxxIBSGRT1NSi1Wd92aPQdbMQK1LBmolQz5WrJXKd40ne+0b5pu
         lFXt+3uZpHREYugWw7AVgde3idwTeMg99GGP91/TO0JZwr4VwRrg+2zKtxp+aL5b0IVi
         ZfjyqYNZimaPtk9EEKuS6LFXGHx0HLWbIuaTGqRfZVucrYsylkvOF6xT5qJhwRme4E3r
         H4Tvbo52Rg1hsWvWTvw30jHHMRAj+ztvh1JQrXF5eGTCx2ns7qmvcXMIPQis5mx9TmsX
         epMGmtVIaV9zQsMJLgr29Az8d2bfdZPc7Ku49ISvyQ7yQx3pysAjl2b9bqNYpqfEr0ZL
         Xwsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id x18si235258vko.0.2021.03.06.22.26.50
        for <clang-built-linux@googlegroups.com>;
        Sat, 06 Mar 2021 22:26:50 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 1276NdCi026488;
	Sun, 7 Mar 2021 00:23:39 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 1276NbRn026484;
	Sun, 7 Mar 2021 00:23:37 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sun, 7 Mar 2021 00:23:36 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Fangrui Song <maskray@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Alexey Kardashevskiy <aik@ozlabs.ru>
Subject: Re: [PATCH] Replace __toc_start + 0x8000 with .TOC.
Message-ID: <20210307062336.GD29191@gate.crashing.org>
References: <20210307051433.2756645-1-maskray@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210307051433.2756645-1-maskray@google.com>
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

On Sat, Mar 06, 2021 at 09:14:33PM -0800, Fangrui Song wrote:
> TOC relocations are like GOT relocations on other architectures.
> However, unlike other architectures, GNU ld's ppc64 port defines .TOC.
> relative to the .got output section instead of the linker synthesized
> .got input section. LLD defines .TOC. as the .got input section plus
> 0x8000. When CONFIG_PPC_OF_BOOT_TRAMPOLINE=y,
> arch/powerpc/kernel/prom_init.o is built, and LLD computed .TOC. can be
> different from __toc_start defined by the linker script.
> 
> Simplify kernel_toc_addr with asm label .TOC. so that we can get rid of
> __toc_start.
> 
> With this change, powernv_defconfig with CONFIG_PPC_OF_BOOT_TRAMPOLINE=y
> is bootable with LLD. There is still an untriaged issue with Alexey's
> configuration.

Do you have any explanation why this *does* work, while the original
doesn't?  Some explanation that says *what* is wrong.  To me it doesn't
look like the kernel script is.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210307062336.GD29191%40gate.crashing.org.
