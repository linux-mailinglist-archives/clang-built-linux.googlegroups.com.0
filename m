Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLWL6GAAMGQEK5I6ZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CC830FF3C
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 22:22:55 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id c186sf3292140pfa.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 13:22:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612473774; cv=pass;
        d=google.com; s=arc-20160816;
        b=gytuegvy+OeAooK9JePlxmue8HS5RIUuFope1sbFl/KQ3u/Ry6ZNjeeRGFdDmDHu7u
         lbZcKKOvG3OvLeIMmpx54rxUHxhM6dREQcHqgSNvgzs7NPK+uDMrk9bVsbhVNlv97EvO
         CCKJZCTd4xWt0a5fBVFd1Ip12nCdI9Bm7h5RTXnwiNbWWwWElK73WMz2qU+wQB2QmuHH
         mZYjlC919R4qIGYFcG9561XwbSP4R22QBOvuCz8ayiMr+6YfUuzcoOSTnMhWNPrFOfp7
         OnZN+LxuWR5DpJ2e4y1l5Jysypc3DXrsrJCddOMB/HyDFLvfpUbWEnbjjIYXZl2Hk1Zc
         SH2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HuRM6l1oWlDIcVXQ79j1eOmPVxv+vz5YaRGp/nAzGo0=;
        b=TOtOUWAejTRgV6T2sLsMSKActZ1FSRehcYSURR+Zi9DDCZlevuF/G/NuAeO+olMwiP
         bLwjASDs6BbkqpzA/3ygSNu4nxclJELxbsBBFhgqgf3TwgHp7KDVJaFRWrKeD/c9iYm9
         /I4lPvL6H9drQLki8D6u3BgVyCa233TWh3akGsl7+0MV+O45efBX49lz4LWbdNDwoJ58
         AUatQwPZiAwtSxjfWX9F0UdT/AEfydNY0bA/BlDukYtk3dImoYLdB4if1bCS2OyAY5yA
         62XhwQk8cKhxAAfn09CXtBcM8C1o708cNeY8KekxGKfQ/8xviKIOcdJRIXd4MRzEDXbR
         qEAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A6fzy+8X;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HuRM6l1oWlDIcVXQ79j1eOmPVxv+vz5YaRGp/nAzGo0=;
        b=NKkacqHh1meOuGgRqxxxKNsQ5Lyz8RSGkx2lCy1v1pUWlYEHC6J0ao4A2iJ2kmEmGb
         dYqSIpqlaiw7vC+OULxNGG72GSJ/J4KwsWx0DuS7GVZc3XXGaurEWwJwH4HjfuMukb8V
         N6FlFjzVXsOfMfC35ekRUcmCn/IM9Op+BM5lo7odOcDC/ZGmx36OiAXHL0qYgXmOCPO1
         ugWhjToNhjERPYlSu48uowyxSY7Yohi7TXpxllWyqnv/pFywA7r4N4UQn+EbvuK+IIHo
         mJbf9qL974InhbUk6MIjcWFboldrlM6s/KTnT6zJox1Nk6idaPKpSwqRV5VLIWI/AJl+
         LqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HuRM6l1oWlDIcVXQ79j1eOmPVxv+vz5YaRGp/nAzGo0=;
        b=HVt9lSkV6QsZsvkTKyZ2CNfq0JOvssJO1qMP1CTmub9Ct/kHIq5lx4RNtusyqYW1O8
         QRgZqZIHtTFZJCXzz+j6Zvp3iXkKQAvFKo3ou+okrTprwM7g6rqtBSZoO1SG+sZcEUck
         GfWLP5TmqEkrgnPKGt7B+8zT1+rk0rNTMOiSIRFqGNUPwayzdcLGPHx1kjxGMFuI4Y30
         ycAn52eeexQ1ULh0GXPKdEh+dJ0f0RwhQTJile8B8DMIBoQsX9Pkz6pu9jkCl4WYPZoB
         veNcbd5diDYpQe+bU5uvsoMCLCXz2dtDJUtPgCcy82OFd8SDD8fFwqn/3A9kmGFpnPAg
         TipA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EDf9smbuk6dwFICLEHFiNR7ong5cWXECGgp/7Xs+V9uMOLqmp
	6r2C9UPswlWFZM+64fi2UTg=
X-Google-Smtp-Source: ABdhPJy1CA0KQaTauF5AkHxniROjGDU6gfypcDnCbBPx/y5BulmDd1tEMTHKF/QsiWxxnf2Tqw0+1w==
X-Received: by 2002:a17:902:bb95:b029:dc:e7b:fd6e with SMTP id m21-20020a170902bb95b02900dc0e7bfd6emr1237941pls.12.1612473774507;
        Thu, 04 Feb 2021 13:22:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd09:: with SMTP id i9ls2817935pgg.10.gmail; Thu, 04 Feb
 2021 13:22:53 -0800 (PST)
X-Received: by 2002:a65:6246:: with SMTP id q6mr985450pgv.6.1612473773831;
        Thu, 04 Feb 2021 13:22:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612473773; cv=none;
        d=google.com; s=arc-20160816;
        b=hTM1M4Na8JVRMRhoetMphagOjBtDak0HfXSiydnpDqUyJfzFTZkZ7l5ZutxpYjxwDo
         8pQFZNeg1K8mpA19EoVU/DQs4pxM2E8lvJRJV9b5EE7tIzIIOxFIofMwbTNHq6w7xIDj
         0Mrpo66/GJiSWMeLEudrBcgfIFFPV4DEvtTlc3JD3uRGafkhXquwKZQTZFUwhN+f++Z+
         NYDtun8uZzAYa1EdD9rGI8OA/wMpCXG0QluS0kMV/wP0olx5TsduHKREsRIdp3X/8pTD
         9enLLKtDzxdY0M8ZXM7aA+JO/HmNanHEy5UCAYgEBTcxjWWpxG3zpVWFwE5GysiskvpQ
         6CZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FAUAbnk0y7aJ+w1Hs6amnVpenRlXHJTDVS/HgE8ioSY=;
        b=n99cT4I58o0oiyWlyLXCdPDT3u6XBzWvZzr00zLWuBtbx34Lvim47lytNwNg51F0+1
         ndmWsKKCE4nLS5zwEUQDo/pDFUZC1jW92GRCdmsAnN0sfeRVnfmxLm2PIJCovaJfa15p
         P0Z0ZIMBIpx1qh9GOprP2eJZmIqOJfvu5wwz1Kpa+uo8wM0vpKK+R9Wu2OextYH+Iv0z
         KQQRdg/bkMmAZMrqcoq92Ihllc34nKZ/CmLiWo29sdw7f2OjyLnlereq2U5GNqAlCrGB
         /6LE+jpK+9yh2pJdg44fCManHbhGTxdMQznNoTcMsLQeVU4dSZGY7neI3j5TRFgGFzaR
         19IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A6fzy+8X;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si267952pjl.3.2021.02.04.13.22.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:22:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7190264F3B;
	Thu,  4 Feb 2021 21:22:52 +0000 (UTC)
Date: Thu, 4 Feb 2021 14:22:50 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>,
	Arnaud Ebalard <arno@natisbad.org>,
	Srujana Challa <schalla@marvell.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Suheil Chandran <schandran@marvell.com>,
	Lukasz Bartosik <lbartosik@marvell.com>,
	Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] crypto: octeontx2 - fix -Wpointer-bool-conversion
 warning
Message-ID: <20210204212250.GA385551@localhost>
References: <20210204154230.1702563-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210204154230.1702563-1-arnd@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A6fzy+8X;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 04:42:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When CONFIG_CPUMASK_OFFSTACK is disabled, clang reports a warning
> about a bogus condition:
> 
> drivers/crypto/marvell/octeontx2/otx2_cptlf.c:334:21: error: address of array 'lfs->lf[slot].affinity_mask' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
>                 if (lfs->lf[slot].affinity_mask)
>                 ~~  ~~~~~~~~~~~~~~^~~~~~~~~~~~~
> 
> In this configuration, the free_cpumask_var() function does nothing,
> so the condition could be skipped.
> 
> When the option is enabled, there is no warning, but the check
> is also redundant because free_cpumask_var() falls back to kfree(),
> which is documented as ignoring NULL pointers.
> 
> Remove the check to avoid the warning.
> 
> Fixes: 64506017030d ("crypto: octeontx2 - add LF framework")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/crypto/marvell/octeontx2/otx2_cptlf.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/crypto/marvell/octeontx2/otx2_cptlf.c b/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
> index e27ea8909368..823a4571fd67 100644
> --- a/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
> +++ b/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
> @@ -331,8 +331,7 @@ void otx2_cptlf_free_irqs_affinity(struct otx2_cptlfs_info *lfs)
>  			irq_set_affinity_hint(pci_irq_vector(lfs->pdev,
>  					      lfs->lf[slot].msix_offset +
>  					      offs), NULL);
> -		if (lfs->lf[slot].affinity_mask)
> -			free_cpumask_var(lfs->lf[slot].affinity_mask);
> +		free_cpumask_var(lfs->lf[slot].affinity_mask);
>  	}
>  }
>  
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204212250.GA385551%40localhost.
