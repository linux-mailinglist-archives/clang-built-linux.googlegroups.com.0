Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB2UKUGDAMGQEWSQGVAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C0C3A76F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 08:15:08 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id z71-20020a63334a0000b029022250d765d3sf3875112pgz.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 23:15:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623737707; cv=pass;
        d=google.com; s=arc-20160816;
        b=bf5Cy6cXHGmahOBD+YVgk9LQVv+ah371kY0Dj2MRZjlGMsiHdIcs7Nsx7UspS1PjKg
         tmbuKj6S0ZF0cp4+x4W9u/+AppCnwWutVJr3KVj0cWhK4rWhoxk6uq48RU+pxqN9jvR2
         VF1rArnBD3STh86wohhRb1YWeOf8LA3LTpqZSaWioGE28/JI8dtbCAfiIHtZqu50AzRH
         H8fIHC6+lixaX+k/IzFzHcCdW7IYVmhPq5Y0Go1DjtnWiSVHY1HvQiUtk0QfS/6wtFR2
         Lkw/F4Cru3vlc7e3txRDNim4TYCMpeR6jH0r4VnjkJpK0jhQla0Rh0KYYIu2Z9kWNFlU
         4nCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GshQUzKnwDcFgKyVXA8NcYg+Pitkc2QvNC6qHIafpKg=;
        b=08+DAxv2eb+5/xt7Rd7pAirKKX+edElqUk0LafO5n/H80lEEWUfKw8oxErl4eBKAX0
         1tgoMzCFjEIURYY3V7HoCUdo1PmOj0R9lS3YPWlL4aBf61SARLmFeA6Epn1m3x77coA9
         wlninDz3kT12nRS+hqhyaiNS/X3nA7LMt+na0GXdPWMavb2kuA3/J83jTwcBWJD7UP/B
         Rprl6YYRBWbMJbgTEpUwiUyk4yfYzOgdzyoHO8L+veXFuXD3aodwY7bun1Mx7+7Nnzgn
         4nJ9I/KloE4xVX+/CLiwPV93e8NE+FV7ZvX++5FnYpS12SPFZq/Vco3KS1GkHgXOF7aE
         dtUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GshQUzKnwDcFgKyVXA8NcYg+Pitkc2QvNC6qHIafpKg=;
        b=etPWFEOPl+HTVp3vKcGbg+7CNRmcoVF/I38sK0b85disbHp6Av5TyYGbnguk2YPOk9
         3Fx1FKbha8bRV7JjIyofi+ZHToAbd2V1R3L3LQQvhjFNO2bLy+C2Apap9Iw4bJneDZ/I
         tG5W292PqoN7H7BTJoYFDSO6UmmZXgtlWPmglqAtn64IgtKN3xWrVCaTtvOuxe+jT7MX
         Hj/MtTYUkyt0S7R9nnoP88I44wfoDmQu831FuoUL85/mNkJtKukMSyQ7J7YyilbySM+8
         rmHVlW+jjqCDtvpQgWI8brqC3A0/pH9BRtUQ/IEEoNWqbghdu/wJdtPrCBwTMaTa0kIs
         ngrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GshQUzKnwDcFgKyVXA8NcYg+Pitkc2QvNC6qHIafpKg=;
        b=f5vQ+V3ih8DXUHidHQxdxMfywOVa2TkjXZfreKRSfT5AdgW5ULtlxaQHvuqO+RWDnp
         mKAI+AUmq/Awc5cvHI5GBhHfAaJPeJ+BQ/yB1/+TgbTLl/Y6Q8Snqo2LvDgKoSSUiYSV
         BuaF2x1IAuy0yO3FnMXDm2VpfRtqjVYxdn2R4Xa/buwTVdBzSOrc5EUQ3Mw/zqDDIIt8
         XK3Kj5fjqisqO/oi0+8S9NZ9TQYCd8aPeR3dCehjynLCOjp5XT/nBG7YOqKKCLYIQSBD
         8iHOR6VWHFcRAt8CyEx7dsDmNwLHP4n++D/JzhEKz2pjRsphvhVo3+pEaezDS/9bzMWM
         ZKtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JzCxm4+il7+JN9RY9QX9cwFYYsOL2kQoNl4wigRz0baHtYDqG
	rN0yyXAF5P2UFfRUEY6eJaE=
X-Google-Smtp-Source: ABdhPJwwd4iQlETtjAl2ey+a0mgPrdf5dUeE8SmSvlJH2Uo6sOjjj7NE2sxQJFmm55KpDgizgZ0FaQ==
X-Received: by 2002:a17:90a:d30a:: with SMTP id p10mr23504598pju.104.1623737706758;
        Mon, 14 Jun 2021 23:15:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8609:: with SMTP id f9ls8927982plo.5.gmail; Mon, 14
 Jun 2021 23:15:06 -0700 (PDT)
X-Received: by 2002:a17:902:ee82:b029:114:8409:1b78 with SMTP id a2-20020a170902ee82b029011484091b78mr2798937pld.59.1623737705952;
        Mon, 14 Jun 2021 23:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623737705; cv=none;
        d=google.com; s=arc-20160816;
        b=ck1IrXvGLpnSj5LPyZu3wPj1L5P8BeZ28HMLYbRNRd8VLb6CNz3jpmA1ZfOlDIBHrc
         F3KG0d4CxGl7MAjHs4EkguEQ4jjetXhWkFE6G0GUAzvw5JiVo/Q2lhVL04X9LJMQ71+O
         KqESPMeQlpKgpjw3jkrGH/rlTEE6P6OGE1jO+Ox7CiSegjM4Q1+eHiDwWALQUzZz+w+o
         Qu0YYvuNv8vQVjw5h+IFPTtgW2lvu5p5699lYcaPdIT4hy3o8yLw3Te7wpvLv7yq75TI
         8z2e9nnLPZlQ8fVoZd1fjIbwah8wWSf9kBYlO9t22KPEr8GUr41OBrp22kIVUUUUut2i
         zIcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CsBZLQpFqMB1CJI+YecKEEmRgBdEErh63+/VylUl44o=;
        b=pH7nEJS0mjsshK+oP2hLgOOZf/l1W+DjA07b4pIo6svL1boeDeQik8ao14I/LFMLRu
         AxAmVT5TgRzMo4v/Ir1C60nVedMIAtObenGgdfvfQp7EaWkOE4z0j+sV8bYfytpuxOGG
         rCGWUdwiVH/s3RAyyMqEKOr0L06pjbSrebLLisv7oqwMjcz5B5Dx79aAvttPEgPWewuu
         XWSP0dMaIwqRPLopyXol44avz9cumNicXdVX/Y0A+dUdoXRgF8vBlxtujDSk9vzRfr9w
         Xn+qV/Wjt9RrBLBdWt8dGm9KLnfFZXXREQGgp7rt8u/wAzL5O3T5FG++pK+GgPi6Brb8
         ACYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id s14si134935pfu.0.2021.06.14.23.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 23:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1lt2Li-0007Jz-Se; Tue, 15 Jun 2021 14:14:58 +0800
Received: from herbert by gondobar with local (Exim 4.92)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1lt2Lc-0001v2-A7; Tue, 15 Jun 2021 14:14:52 +0800
Date: Tue, 15 Jun 2021 14:14:52 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Subject: [PATCH] crypto: sa2ul - Remove unused auth_len variable
Message-ID: <20210615061452.GA5622@gondor.apana.org.au>
References: <202106030304.crsT6r76-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106030304.crsT6r76-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Thu, Jun 03, 2021 at 03:53:14AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   231bc539066760aaa44d46818c85b14ca2f56d9f
> commit: 00c9211f60db2dead16856f81a3e6ab86b31f275 crypto: sa2ul - Fix DMA mapping API usage
> date:   8 months ago
> config: arm64-randconfig-r005-20210601 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d41cb6bb2607fa5c7a9df2b3dab361353657d225)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=00c9211f60db2dead16856f81a3e6ab86b31f275
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 00c9211f60db2dead16856f81a3e6ab86b31f275
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/crypto/sa2ul.c:1674:6: warning: variable 'auth_len' set but not used [-Wunused-but-set-variable]
>            u16 auth_len;
>                ^
>    1 warning generated.

Thanks for the report.  This variable is indeed unused.

---8<---
This patch removes the unused auth_len variable from
sa_aead_dma_in_callback.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

diff --git a/drivers/crypto/sa2ul.c b/drivers/crypto/sa2ul.c
index 51bb69bc573c..544d7040cfc5 100644
--- a/drivers/crypto/sa2ul.c
+++ b/drivers/crypto/sa2ul.c
@@ -1698,7 +1698,6 @@ static void sa_aead_dma_in_callback(void *data)
 	size_t pl, ml;
 	int i;
 	int err = 0;
-	u16 auth_len;
 	u32 *mdptr;
 
 	sa_sync_from_device(rxd);
@@ -1711,13 +1710,10 @@ static void sa_aead_dma_in_callback(void *data)
 	for (i = 0; i < (authsize / 4); i++)
 		mdptr[i + 4] = swab32(mdptr[i + 4]);
 
-	auth_len = req->assoclen + req->cryptlen;
-
 	if (rxd->enc) {
 		scatterwalk_map_and_copy(&mdptr[4], req->dst, start, authsize,
 					 1);
 	} else {
-		auth_len -= authsize;
 		start -= authsize;
 		scatterwalk_map_and_copy(auth_tag, req->src, start, authsize,
 					 0);
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210615061452.GA5622%40gondor.apana.org.au.
