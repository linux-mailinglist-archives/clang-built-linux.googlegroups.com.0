Return-Path: <clang-built-linux+bncBAABBMF6Y33QKGQE4FA22DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0208C2049C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 08:20:34 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id c17sf22909757ybf.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:20:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592893233; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/6qyrR4AVySffWxGx0dCtRoEsW7CP33PswOK9WXcUkUpYsSx7gpnKBIg3RAbbwE+n
         W7OjuRXL4QPIuQDR7dpCtMgCCXN5YXPx/Guj52wDGPPUQ8JmoVjRYlui7oLWqiYq+Sn1
         E8Dcvm5LQU7xw4Vs4imuVlKt2BCnlvTzQ0cU+dLvRE9xu+nHFno5xRjTaT2J+c+vZVPo
         uC7pqRTaagUXzK3RglPGQsQCzvthSWFquwI+aINvxrerXGI7607Cn+5N9uWXCYukxfpy
         t+oe1qyMnKp8d76Yi/ySwpvjiox8rLVvpOpYowX/IFJmsR8nEStYpgH5/k/O1hst4XIy
         p6YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GXYcT1VvR5381x8p1quWWnvXjP7ExdXeTvEbnoQxTE8=;
        b=rp1Ap6t70bRuRHXRd147bH+ju6/QVThllDTB4frM0x0oCaWI5a+9M26HDKrUuAmNsm
         g2tMt+1Ao0djlqnRYCpVMQq00hFUhIPH57uYCQatwUUM+Mot0R9XfwtdZBD9iBhwFnwW
         JgTgQfIZQULrDe6A0IodiXOxdNitVsbKDim8ntorF9nuKtbRzPFY3IMIUEqq0U0TmZEh
         kZ3U3G6M4o3Ic71fjB3+xWUhKEqsRjVlPB+YocOMXdeP04Wa3Dqs/rc3v1fJ7lywwpfN
         Qn+iFIh6Lhmxhoxq+KqaOXtH5x+pqKHYSN5JcpKSkHjMyoM174/t7BYNdd2DIpBnL95S
         M18A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xiCNweWM;
       spf=pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXYcT1VvR5381x8p1quWWnvXjP7ExdXeTvEbnoQxTE8=;
        b=VaNW1TcxATg1vsGMcALfHQRaUoMaINWYheRIRf8/J5eQwqK9d4R3Q6JUF4PagMloWK
         Z+8QFL7RsCSFvyFvgNqeyzl9uJuD3Tjl12Wi9DRMUcSsX/ZxtWvIrnLN+Jf7S38LNtL3
         pwb9yWGM69m0oz1zVdKrfdl03pcH92bIiOvvs9xTs/cmqy9lcnZVuaJQgosMxDEA25X8
         GYFL7LANYy0sZLEwnLG0mNp9PcOyd6ixaaDZWb77+VbDe05Xk89M3+kZuEKYluLG8Xnw
         QK7ZHhmJifePkJZ5kKlQ5wVoUouiKEd8534yoakwx+x49pb+K1Zx3GF4iXOsnMEg+S0t
         Ivbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GXYcT1VvR5381x8p1quWWnvXjP7ExdXeTvEbnoQxTE8=;
        b=tVrMkii4w7HDZjnzmCsLqQ+9AwPbi9W/Y6w/K7OsA+1McfuBZ4OvBgMxmMO3jUXrPC
         0wz/bryv/QnOmtHsdTYE5gb+ghf3GScUiKBIu9ja77qg94Fd8EemX/JufmSdZmt9ax7v
         ki5Ke20DkgLN287PrFQ+K9KJxuaIJLcFnJZ3hV0XfNKbPUiMiiLPG8KxxKkTcQ5HKUEC
         aHzbJCcDlhvc+B53ecVClTo9IHOf9JoXRiVwVeZYrVwP7E2nykWj+07eSkn/D3BakAws
         r6KdUhKSeOwmZtyos7nAQg2o2/nSQPN2PtrrtSLO9KrpHC5Z5igUIfj86KmE/7EmwbpM
         2Feg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oYpPzxV0X+Xb1HGtkLgpTxP7mqp0dRaawgqkcRTbtFpKapSHl
	JNVlxA2WaaCrEZuNv02GHio=
X-Google-Smtp-Source: ABdhPJwQWlaCaNlfSVbadEr3sFRb8WB5iXcpRyOfv4VVoKsvLlOSHRYjnWOekc0c7dk3itiwEzK3MA==
X-Received: by 2002:a05:6902:52b:: with SMTP id y11mr33704423ybs.465.1592893233054;
        Mon, 22 Jun 2020 23:20:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4707:: with SMTP id u7ls7426844yba.5.gmail; Mon, 22 Jun
 2020 23:20:32 -0700 (PDT)
X-Received: by 2002:a05:6902:50b:: with SMTP id x11mr36417304ybs.71.1592893232661;
        Mon, 22 Jun 2020 23:20:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592893232; cv=none;
        d=google.com; s=arc-20160816;
        b=KuQ4OmvLlvdLZVr3EWHDoqN5LaZv6+7SooCJ3TVCEgIszM+VzFZOSD26FLM8w4bFKS
         8OfxQeEhKpJitknYN9H4gj3U82Ul2fDnZF3zh/9w1BLKZEIDiS3mErLuYDmIti1GocIm
         iHLkOIjEzTZsDHXQ/uZJ2OewBaLLlfSmubF6ECORV4RT8Vh8tjbPDHyrfYGAetc5Uv94
         eKKi7CqXuUv0Nh9yoRrMEjhl6ofFiBQFrB6V8gxZ3XOcv1nn7pXxeExyZ97aXVe46hse
         fHbFNuAWknDxz8g4pyn4viJjhWFD+kFwMw91jtBaM6VdIrXMsktDq8g9ep+keTP0t7Rc
         svBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kHOubBJtFR3EKz6ashcAsx2TFJnojl6YWO5gbU/giAk=;
        b=kN15QCVkf7eW/yosKAlBg0TCVCwh28RMpejPv8B69+ln9ZEx/sMm9L91M4boqJUEIQ
         2fFgTUH3T+MAX6Yq4YLvI4zlCXvJZg98nK1HStLQhPtf9wiw2SgYL9rmC2AScGA2HQx0
         1XR0VbcyRIvksHqS6Ha1WZTSTC5H8pLeYiOoi5vLq2TDtBWAgKj+29OyDNB87TBzm70Q
         OdQz+ISkdecFsQFCyJXoGgZzM/sdX8QSHhfjVrOlJ6ew3Wv2yXuGTaBhRRTKdVqfxOB4
         qn0k6Lce7Reg9EkZteEYQ6SOngajxEgxAqrPjwR5B+LAfHJugvbSpLbtg8IPFJm30ACR
         c4Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xiCNweWM;
       spf=pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si1249508ybb.4.2020.06.22.23.20.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 23:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from coco.lan (unknown [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6FBF820720;
	Tue, 23 Jun 2020 06:20:29 +0000 (UTC)
Date: Tue, 23 Jun 2020 08:20:26 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Arnd Bergmann <arnd@arndb.de>,
 Christoph Hellwig <hch@lst.de>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] media: omap3isp: Remove cacheflush.h
Message-ID: <20200623082026.055d361a@coco.lan>
In-Reply-To: <20200622234740.72825-2-natechancellor@gmail.com>
References: <20200622234740.72825-1-natechancellor@gmail.com>
	<20200622234740.72825-2-natechancellor@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xiCNweWM;       spf=pass
 (google.com: domain of mchehab+huawei@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab+huawei@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Em Mon, 22 Jun 2020 16:47:39 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> After mm.h was removed from the asm-generic version of cacheflush.h,
> s390 allyesconfig shows several warnings of the following nature:
> 
> In file included from ./arch/s390/include/generated/asm/cacheflush.h:1,
>                  from drivers/media/platform/omap3isp/isp.c:42:
> ./include/asm-generic/cacheflush.h:16:42: warning: 'struct mm_struct'
> declared inside parameter list will not be visible outside of this
> definition or declaration
> 
> As Geert and Laurent point out, this driver does not need this header in
> the two files that include it. Remove it so there are no warnings.
> 
> Fixes: e0cf615d725c ("asm-generic: don't include <linux/mm.h> in cacheflush.h")
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> ---
>  drivers/media/platform/omap3isp/isp.c      | 2 --
>  drivers/media/platform/omap3isp/ispvideo.c | 1 -
>  2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/media/platform/omap3isp/isp.c b/drivers/media/platform/omap3isp/isp.c
> index a4ee6b86663e..b91e472ee764 100644
> --- a/drivers/media/platform/omap3isp/isp.c
> +++ b/drivers/media/platform/omap3isp/isp.c
> @@ -39,8 +39,6 @@
>   *	Troy Laramy <t-laramy@ti.com>
>   */
>  
> -#include <asm/cacheflush.h>
> -
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
>  #include <linux/delay.h>
> diff --git a/drivers/media/platform/omap3isp/ispvideo.c b/drivers/media/platform/omap3isp/ispvideo.c
> index 10c214bd0903..1ac9aef70dff 100644
> --- a/drivers/media/platform/omap3isp/ispvideo.c
> +++ b/drivers/media/platform/omap3isp/ispvideo.c
> @@ -18,7 +18,6 @@
>  #include <linux/sched.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> -#include <asm/cacheflush.h>
>  
>  #include <media/v4l2-dev.h>
>  #include <media/v4l2-ioctl.h>
> 
> base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821



Thanks,
Mauro

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623082026.055d361a%40coco.lan.
