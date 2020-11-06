Return-Path: <clang-built-linux+bncBAABBYGDSX6QKGQE3QKGMCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CB62A97D8
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 15:46:57 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id s6sf598919vsl.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 06:46:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604674017; cv=pass;
        d=google.com; s=arc-20160816;
        b=GEoNHYws/aVRkAXEh0fDVgciK50ryHLE4pfzEtdpOfe2GjJ++qB05j74Dldul1XwRx
         Y54mPoej4h68kswbbGbgyYl1ldWMvx3GwlDccZFj9M5ARkXAJ4o71QrxalO+OMBgXNk9
         /yfUxAZhch+vUbj7MRt2bkMZrIMuYqC3hPhkjlD9RkryuSuQHTWOA6h3xohmCVHqF0Ul
         ir2rLV5U07mQVimGn5UNFQekE/XLYatHB7x58lkrrRJdbeJzmbShiXAY7UdompIspb36
         7iaEHPQkZETWRVu1TTZQBUw94S5K3EmPHKojDqwe350bqt1kgEu6tr0WZ088RDP5mTQ+
         +4Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VYzsfy4nWX5BeC+koEFk7EYgZD5o9tZsssdFuxCJGXc=;
        b=1CrZ0S7LOuMITYuCjB8d92qWqlSoaJs7B8yUL5jPhPsmzTVBGiOopqB5phhQ88FjTS
         I95F/on22cCh97icJ8tNr5RCW+5AMlMPrKwd4T++3lWJocLRWt81zs/podUynssGfXPT
         ZuBnqEca+8iMk8lPel8dItk9cDuUcFR46/JWfDIrGLeaphO2Avu/SL0Zw9K0YghpzWu+
         smiJfqk8WinZK8hqwtCS8FLyDrUuNt/Hcdw2K/4CamDU2VOmKhg7MeS/1wwmnV3+lbrZ
         NCnx1skmUZhmSY0qjoppwcQaR+R+aI4faUl9mXB51moW3xSEUfC1C1bn3H3F3L8+zkMV
         48Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=seymZ1Zt;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VYzsfy4nWX5BeC+koEFk7EYgZD5o9tZsssdFuxCJGXc=;
        b=b1MLv27HB4OI0S4idpx5clNQ60Uw3s7fuS++Y93mDCKe9O5wxxrgqCOQsfz2J1Hbhc
         v35zTBD4ts3BmVV0Zte6fGytwTBhJEm3VMK0HRaE69kkDKM/5tLBka7/d8Biko39B5Bk
         U7i+cWMgMOKPe17RGRqELkOlD2kO11x62anBOsTjd4X7/kXxk6JvCfv1Nds4hEKYe5NZ
         7YqJvnHR/HU70tGsdINVsT6iZxY0EVbnp285ZXNs77fQwbQS5BTZxjegXPgb0M0dsqXF
         gsxoWOmqVDp+owH2e5GhIFpx+pThBypzegvEjcFqgvLf9kw1eCNlwgbX/+uemwTYTjVz
         vXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VYzsfy4nWX5BeC+koEFk7EYgZD5o9tZsssdFuxCJGXc=;
        b=KlyUwWDKfT6QiNAJlS75MaERpD9vtsqC6GRW3U69MZwy9Zm9k6AILfiDxpYZklZeWM
         /QTD0zloyAD/mmZ3bpoCMmfM6deJAfMq/+4+oBIrnUIe/XpF5rdDLCS7nQgxZ8maoSuw
         IgTVZKk8NdhgzL8Py5O3mCslCg6r2VXB3GJFMzMKTg3l2dbkluLvJBf3ZJG2X5UU1SgP
         B09WWsTZ8Qmevi2/hm5y6ZQwppyT1Zgj+EV4nmWfOe5oF51i7ThClig5sb6rN66vrMou
         5JxCjw5vweRvi1LRsPfZDcAZ8D5xZBxlpAPqZrHIZ0qc2W7CFe66w4f0sgv0ctx2B8wC
         uU4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329PfZMdvx7tA6QuWzhkgRqWjI2vTMDxz3onXdpdgmCKRbyUsxl
	ey+GuCQfkLT/BhLVcxdYYL4=
X-Google-Smtp-Source: ABdhPJyudH/KDpcOC1U37eTwRMaAGAB6x2QgNRl1hzSAHDB9oFyPAlRjmEGhs2QoAT2DVIMgww3FiQ==
X-Received: by 2002:a1f:4587:: with SMTP id s129mr1086232vka.12.1604674016705;
        Fri, 06 Nov 2020 06:46:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9e47:: with SMTP id h68ls65787vke.7.gmail; Fri, 06 Nov
 2020 06:46:56 -0800 (PST)
X-Received: by 2002:ac5:c1ca:: with SMTP id g10mr1234576vkk.6.1604674016260;
        Fri, 06 Nov 2020 06:46:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604674016; cv=none;
        d=google.com; s=arc-20160816;
        b=KuimB15Lmv7+UPvVhz6pe4WdCkL6rJtE2ROiP4XGGeXGeNTjQH4IaJoBfZMWSutfQ/
         JdFMaOQ64j/G8T565m+TABdN6q5iAqQDg/pPEI1kXzcS1fCSU0foYTjk2M+1wlFm3eHD
         Sc89OETaiUm5yaA9LHkqMxTZklmwZ00NWemxZllCAke+12Iy0O3+l+f6eFWLqrTROySA
         zi4f8gOaThMDW22JgPqNHAYmfIo72WoyTpYVcEbIlB+kjk83vHXH2yWhh0ayeMqGfq/X
         jLoQr1YKTSUHTNOWL3iG156J0PUREbZtVfKxj9e8KrR9fbBwEjbeNfYj3SKH3KZhhY7C
         jJRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T4UF/Tn3QUyjnce2nYJObPLYUOd6aRQMgX3UVgglJLU=;
        b=E1SIMjcwnVMxjPEJPoolUWpUnp6u3y8l4sZiOQHjj1cZ9e9GjNtYVam98bYKEUucml
         tFCz7k3XIngWXBCyO7Dba4Bhckg7o21Ok5tp7AU+IpqEzZVBUVHhiAp3k0qhaqIUpKe1
         iXoHWqHRr462kz1EOzFd2oqirL7fcO8YrqwykC0d/T0wqPtylPodWZhfklp6bIGeJr7f
         GWa2uPQ6xHRB1UCPoAWmz2p5QDaNpzYx2bHZVlSaLS+7Io3k42c1zWZePtnb7MK8OOUA
         f8OyFbJtm0ZmV4Bvw8Ay+iXJF+m51lpNSstCLjanSBQhwWjwt4+Rp5NgHNX9kA9K2cHf
         Xp6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=seymZ1Zt;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k3si125342vkg.3.2020.11.06.06.46.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 06:46:56 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B0130208B8
	for <clang-built-linux@googlegroups.com>; Fri,  6 Nov 2020 14:46:54 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id k18so1563133wmj.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 06:46:54 -0800 (PST)
X-Received: by 2002:a05:600c:256:: with SMTP id 22mr2845332wmj.120.1604674013090;
 Fri, 06 Nov 2020 06:46:53 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com> <20201106051436.2384842-2-adrian.ratiu@collabora.com>
In-Reply-To: <20201106051436.2384842-2-adrian.ratiu@collabora.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 6 Nov 2020 15:46:36 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ@mail.gmail.com>
Message-ID: <CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Collabora kernel ML <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=seymZ1Zt;       spf=pass
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

On Fri, Nov 6, 2020 at 6:14 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> From: Nathan Chancellor <natechancellor@gmail.com>
>
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").
>
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  arch/arm/lib/xor-neon.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..e1e76186ec23 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif

I think we still need the #else path, otherwise we don't warn about
clang being broken here.

If it is intentional that we now silently build this code with clang
without it working as intended, that should be mentioned in the
changelog.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ%40mail.gmail.com.
