Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBIUW4SCQMGQERV3FPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 551AF39A695
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:02:27 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id v15-20020a5d4a4f0000b0290118dc518878sf2694773wrs.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:02:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739746; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ngm3KiE9jFzKkZJ8CVwenl5Z6rQPZgMs7nU5MgrK382m8kVFl9gLxgexvzcvKz/jeW
         4o3m1+BxyKw7cKxIWGkpL4W+T/nMukdl12CBxHMOAb1VqG1rGJUW5F3eIozYoz9KFQPJ
         NhLqxxYB8Cb24SpaTzKMKIHlxFgzTjJ0EYitxhN4ggyC2tx069vUCLvK3In+0ZUb5Og5
         wwpHEdVBXpXZ3uxAfd0+r6odh8t9fKs0cYOFx+BKF+nnQmn47+LTlc3BFIdsiAWG8gnh
         RSBN9ygBhg5RSUM9KVoaVivS55/rYLylMOa00WKYGoD6H0mBx3xtygB3cSKfhuESMR4K
         cH/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R1NfqR5+elz/3SP3B1Wp08JyAkoaleGzYL9/vRxNBHk=;
        b=OnoHeeT2vLb6xSwnVilft3itUW8iFENSuw8KpPaJnls78iYa8B4rhSaU0f2gaJ9Ryu
         IGM0Q21UtvpI8O+WEMJ3R6zUxlfLrFl77h6brlvDdreh8xNrSlv8iBgaYmEKkO7jL/Lb
         ITv/U8fySb1us3OQAIO1s7/Aoc0d6lps0diC/iJCUjnb7GU0xdPOL5SvL2v6/9Kpk1T4
         BVLLM6YSgmQMkAwPAq3KUOB/NjMuC1mpdwz20Cr9rzjmWhcsNzHVGxYsHyarD4ylpHtI
         3oXTWIGaexHUr5dRiQcqRPAIn192VdPxLZRdXzi3fpKDyno6yTz8kOaiY5UXO8RYFF2F
         K/mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=blXnLtEU;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R1NfqR5+elz/3SP3B1Wp08JyAkoaleGzYL9/vRxNBHk=;
        b=SYHeiPqHogrbFnVm3NkzOJ56gT8wcKtU4dfUt2Bkd9vviAA8QEPJq5jnsfQcnh76oE
         CdO+bIthVX7UPe7qAU+Kj4ghepTNIFN6IHBWohOTaRE8fTKZZLZZySltTLaAjOL3LQHl
         +/kd6H0ECpnpcjuRi0gUcw3ydzQj8RupWk7nvfdHULPgBWbZBYXLQwAREjFg8l8xoFqe
         Z/YBQ+L5N4YmDVxSx8yG/YGKFoVpTRbL0UPX4OGNjRySzxPdxbc/R5t4D3e59Ruau9GS
         IIKjj6vKnJralHRti1FPlDa+qOxh3jHcyRymnQHKhqsyWAudu+X+m/9DBYKhCLVkUFha
         nAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R1NfqR5+elz/3SP3B1Wp08JyAkoaleGzYL9/vRxNBHk=;
        b=HzrfsL/yEvn4JJd60S7znckU6ZyYEDgsGy5kB0a5SFUp9W2Eq+KFrQFtCk5qWkCoBT
         x+53q0MhSulTd9nQcKEBK+Iq5NW+uHShBPzN+DHbDPws6JHcCG4TEyyzF9XE+wNvrAZs
         sZQfe/k3i8mjEJgKDxoxOfHgarEiO2mPW+HkqBWdh+u+tC/a2bE1oZWJbygznQ5MYeLJ
         eUNENDus6KxTiu/q48XRHhMb2Op5fAseI6V3gEH33wpcTDwrF6EeyWMkH6i/hHas3tcD
         tOzM78cHoOM5ZlP3InqhvTF/he4PLemOkFIrpfrVC1K84OIQrXWSZ037/6QoMF8jes/Q
         k6SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eL5yXk1YqUZ/xvVpmw8knopSSkXtf/sfsC2zC8+L5ga9u5aDM
	IP2YivLceBDwfpBAsM+U5Ow=
X-Google-Smtp-Source: ABdhPJytDCeZzGR2sXKifyi/KF4JxsCFuwnTueVfLIdF/6sxqy8OFvmS1eM3sDFw+J3GJGxbqXDASw==
X-Received: by 2002:adf:d4cc:: with SMTP id w12mr10979wrk.216.1622739746859;
        Thu, 03 Jun 2021 10:02:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:64c3:: with SMTP id f3ls2266036wri.1.gmail; Thu, 03 Jun
 2021 10:02:25 -0700 (PDT)
X-Received: by 2002:a05:6000:18ac:: with SMTP id b12mr24148wri.44.1622739745852;
        Thu, 03 Jun 2021 10:02:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739745; cv=none;
        d=google.com; s=arc-20160816;
        b=aE4749tXPLMS4V3ZQHVcB4CxJfJYT13+r0OEWhp42t0Wte3I3XP4rzQcT85j0Rk1tq
         b8ER8rgjUw6abRY0RK5mVB6yI3DoE/BJymUKgPy78owjWRCMxEqjqnnA739RVsOq5nYM
         VGssMP8hYT7jdXKwh3L5HICe8AgxiNvKoJ9+YZ/kpFioK1ZdE1nqOtILkC9dGhd5xHxn
         9ajzxrDOrmCBx0bj+oIdjGPZ05uS9jQLfpkUl8KjR6mCw+Kw1JbUrMl7q2y2T2uiwULs
         u3XeW1+k2fq4iLEfGMTYlVo9FcyPwJ/2IchjeAWfhUpShkkxKRaQzTvxARy1un+bqRbr
         QdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dlLfA1/Ys0ZiRcO0YwSlr9cVr+Zsn1kL6tFU0WA6UDc=;
        b=F6R6gKFn2+aB/OAA021V2TBZVHRXQMDDarRePqNy1NnvUhzKuqBCiSdKlrlWPYjYHP
         4HtQtZGmTUOdEDrWfpnzPIE6Q76FaZAqa74SFu0s5wt3Mk6zVGn6SY42qUG/N+dcb40t
         Ib484rypeQ6T11H2lvo2LO2s7/5tM8JGt41CGMsziZQW4nDw6vTPoBA3L76mZNHUA9ZE
         qpVrG2N+1ntu2tJpOGevr7Gk4sQym0UCAuWJgHnY1Jk4+T4ksULlh4g9tJ8kkDiyVqAa
         tBPaLOyCBsv0HAVYbN8BG9kZpKj55fACDYvyesz+qQBH1gUz94j89Zsuc1/HFs/+BYjK
         qnpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lunn.ch header.s=20171124 header.b=blXnLtEU;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id g18si109037wmc.0.2021.06.03.10.02.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 10:02:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1loqja-007f4R-P5; Thu, 03 Jun 2021 19:02:18 +0200
Date: Thu, 3 Jun 2021 19:02:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] net: ks8851: Make ks8851_read_selftest() return
 void
Message-ID: <YLkLGoJvt7EfG6PO@lunn.ch>
References: <20210603165612.2088040-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210603165612.2088040-1-nathan@kernel.org>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lunn.ch header.s=20171124 header.b=blXnLtEU;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Thu, Jun 03, 2021 at 09:56:13AM -0700, Nathan Chancellor wrote:
> clang points out that ret in ks8851_read_selftest() is set but unused:
> 
> drivers/net/ethernet/micrel/ks8851_common.c:1028:6: warning: variable
> 'ret' set but not used [-Wunused-but-set-variable]
>         int ret = 0;
>             ^
> 1 warning generated.
> 
> The return code of this function has never been checked so just remove
> ret and make the function return void.
> 
> Fixes: 3ba81f3ece3c ("net: Micrel KS8851 SPI network driver")
> Suggested-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLkLGoJvt7EfG6PO%40lunn.ch.
