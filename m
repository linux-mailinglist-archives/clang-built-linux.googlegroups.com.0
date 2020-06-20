Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVHDXD3QKGQESR6XC6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A12024E9
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 17:57:09 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id o2sf1822447vsq.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Jun 2020 08:57:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592668628; cv=pass;
        d=google.com; s=arc-20160816;
        b=kV/4zxXpR7AGjxyNWWXCDJWf7Wj+0kNAqlqNpUTr6I0NRj1ZeMq1o+4d6MywsZ3vNR
         cLdqshXS4XOrFFj3lLp9p2wvL2BJezc7fHE98uUBanOZ+lr4ylhImh+D8G3Z+Cnj4vYG
         63kGELEIi7W8YG1PB4hOJZ7VAkRWLPDw3/onUGRXaR+hBdYfI5PwQlsL7Fbd//LkYoz3
         tYmEsniNbkW3fTlL5Wk5xk7E/1QbjtS+z7gmQaEaqknyptRNmh9e74UuVjEcEejYr93B
         U+HjLn8JBrPkr95Utz5aYO0C2c10Trjv2xfS+eIvcHazqCPB1xbIdHNk63ehPxf1L7wP
         d3Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8KU45iFdpwvhiqxGt3qec9JTxQV4IW0Qs7Ps35cjZRU=;
        b=HHvWlKG0cY/KUK9Q4jiontuRGG4KWIpaLFZBcpYbo4tTYkP7vPBGH2u68kBFDB0cvn
         IVuS6XN7YUsdcHXxXEnx/fFXAdi5lf/UwIgeHJiWQ5YjMwIGQoU3v7UIH/moOkHYP6Xh
         Y20VD2uk54FwoJdr0WcO6fUKSIM+Az4NQ+Ru/eemBGtdRv0taCFtNQ6dP3zKm53YHcKX
         1bH5BA/N/W6/oFxeiQSFNvhBUrgNj0h83FYRd1vTjSJL2UzqTvrBJboNAYAbWnFg2ud1
         IrYIdi+eaviRxHvwRmf1aQiyIHRmUOXEprddSpRvAnNT4pr5HzUSlAAoVvFiLKhsGQ6p
         VzbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDUi4+cS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8KU45iFdpwvhiqxGt3qec9JTxQV4IW0Qs7Ps35cjZRU=;
        b=o9J0sHBpSNDQIB2mlAhEwNSVk1FNEst0GCtMQe4jTpQ64TskBSw0/aELso2PGXgTn5
         DW7WiXRRyyeefgItgmIkGS3AIE6fZzW55shKjQ9FcTPAeTFa3rlqxQ+BPs0Mk3js98Pw
         JicVXvTJnkuHqk0N1vB/A+Zb5sk4PxaOk7A5ptkRlAkGPSGYiOXVw30v7FOaLuJvJFu2
         xgvo5yWOs7TGRK+qyUmSvI4/7iD0StxdeWwUJ68hdG5v5fThNI7s2WYG2PHl1OCKGBZ8
         6jPmVdbBWTcQ7KZu+rCo2j/im4BFBTOgeEgrui8Oilv5x0omRdlC8op9P5f5Ewy3Q1m5
         CucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8KU45iFdpwvhiqxGt3qec9JTxQV4IW0Qs7Ps35cjZRU=;
        b=BaAOgWz48827kH8RmH+LKgEfMxD59qztTAEzRV5E4AiYHbSx8/vL6kZjpKIwVOUZLu
         541CKy+0RE2wzdMFpn10IiVRK8BUASgd55ZCFszT/3+iKHCmqlcOpsdfzcPJEemWTnh6
         83LH6BcGpUyQQ6KDW026/XOz0A/zlclEPKIfkEUIH5nvu2HBx77VY9Pglwz8l7fgc7/D
         RHkO8dQfiLHt6/KSw+STIvs73WjJsXgmhC6+fTE3D9pCUS3XsxDqZ/naDmTCFC1ue+di
         KQu3fydVwqWDZsI7Thy0chWbf7+Qoyne4TCqPIggUxnsx5dKBeiVnp0tn2uCRa6kA/Wu
         iBuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I+wLGmXRkFpZ7PrE+N3pjFW+77NB/nU5c9kc76hR2OwNLSCyb
	aKlWJve14ZP07khX5WNb9g0=
X-Google-Smtp-Source: ABdhPJzbF43Sh2JPAd5pUI86mIY/Xgqwxb4lghtPEqG6EPLxrahzawQLENCJP3yXScJVsDQqgdCy5A==
X-Received: by 2002:a1f:b20a:: with SMTP id b10mr11182716vkf.58.1592668628462;
        Sat, 20 Jun 2020 08:57:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8717:: with SMTP id j23ls1511824vsd.11.gmail; Sat, 20
 Jun 2020 08:57:08 -0700 (PDT)
X-Received: by 2002:a67:2ecc:: with SMTP id u195mr11211163vsu.32.1592668628132;
        Sat, 20 Jun 2020 08:57:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592668628; cv=none;
        d=google.com; s=arc-20160816;
        b=oHBSKGM0ylvJWBRwfyfnV1+our8563ph2GUcbgCr5+Ud/VNjoE13JXOlTShn+MaVh4
         0i3EzJiYfo7RUgJL/J8W5FVcINtmekznC07aALrbDiuqCmQwVc7tjsRBOIKQGuFE8NNE
         WaKqf3fnP3f88I0dM2OXO7RX5Ce6Dak1e/cQ8d20ONLW11VXLklAOWhN3flkV/cdbihH
         /RHiKlz/j3U6/To1Aoe0H9V2m5eUMjrJq2ATKmUCVeZrogm/zwclOsvO4F+qgnqT0jBL
         yT0YsWB3EWbny3liANoVjHbdHyIxknZ4+/31O1g43czYdN+fuhSRHiitbeIP7Yciiyjg
         zOww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9tYajToBSjCKrMeO3oPfRpy8eb8n4thx7RWSAT9gnU0=;
        b=Qd3Qp51qICIO8wXyo0+ldHBWzRZJWTxhzAHkOCenISHCqo3sMbVTsSpGqH4ea3pIR/
         ikTErA6LX/K6my+1WIadMZVu0COrq5vOi1oItKUUbzTcGI1W2zmkoAjkNas5UraMuL97
         Wc1xPQR2927oHZRvjiFTqT/jfeeunjwkQwnVpE2pf+iVY1n8d0Zzns+vgiaklLlq/GkK
         Oy1qpcq0+w5ATG2CUCLnTEYSFsWgMiBJD9qPWa4CLV3ELFOcjUn1PkGB5EbYj0JxnWrU
         tp0xkkA9oseUNgrvCWCUhFnCMMmy4qeCfwbt0IZK+svoWZkjRV+s9lfGELq/Dp6Wo64F
         YZXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QDUi4+cS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id a68si49977vke.1.2020.06.20.08.57.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jun 2020 08:57:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id h95so5969400pje.4
        for <clang-built-linux@googlegroups.com>; Sat, 20 Jun 2020 08:57:08 -0700 (PDT)
X-Received: by 2002:a17:902:b78a:: with SMTP id e10mr12682612pls.201.1592668627259;
        Sat, 20 Jun 2020 08:57:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y4sm8954278pfr.182.2020.06.20.08.57.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jun 2020 08:57:06 -0700 (PDT)
Date: Sat, 20 Jun 2020 08:57:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 00/16] Remove uninitialized_var() macro
Message-ID: <202006200854.B2D8F21@keescook>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWpHRR7ukyepiUH1dR3r4GMi-s2crfwR5vTszdt1SUTQw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QDUi4+cS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Jun 20, 2020 at 09:03:34AM +0200, Sedat Dilek wrote:
> On Sat, Jun 20, 2020 at 5:30 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > v2:
> > - more special-cased fixes
> > - add reviews
> > v1: https://lore.kernel.org/lkml/20200603233203.1695403-1-keescook@chromium.org
> >
> > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > (or can in the future), and suppresses unrelated compiler warnings
> > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > either simply initialize the variable or make compiler changes.
> >
> > As recommended[2] by[3] Linus[4], remove the macro.
> >
> > Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> > a single treewide commit in this series. A few others needed to actually
> > get cleaned up, and I broke those out into individual patches.
> >
> > The tree is:
> > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/macro
> >
> > -Kees
> >
> 
> Hi Kees,
> 
> thanks for doing a v2 of your patchset.
> 
> As I saw Jason Yan providing some "uninitialized_var() macro" patches
> to the MLs I pointen him to your tree "v1".

Thanks!

> BTW, I have tested your "v1" against Linux v5.7 (see [1]) - just
> yesterday with Linux v5.7.5-rc1.
> 
> Is it possible to have a v2 of this patchset on top od Linux v5.7 - if
> you do not mind.

Since it's only going to be for post-v5.8, I'm fine skipping the v5.7
testing. Mainly I'm looking at v5.8 and linux-next.

Thanks for looking at it!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006200854.B2D8F21%40keescook.
