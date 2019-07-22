Return-Path: <clang-built-linux+bncBDHPTCWTXEHRBO643DUQKGQEUZIUHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620C70BE4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:44:28 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id b14sf19706510wrn.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:44:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831868; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/hUx5ApAuMhqV6KDsfHRo/AUkLCkbQi45QDyGLnqn0u0kLpjgVXiPE3qUKWecv9Ef
         BxS7IOIOHThAbpq3yheuQqvVik/gx/yUfs0d1Vg4rV68mFZ8PtxCspv21jd4rzjIEYtj
         xpJpnn49EXmCH+vmlQyDhUyPYyDk9o/GhOAc9CuCkr0KB9Evyl8SCC5vn0xWEgMakEmm
         4tG6xHEp9V3ev5AXbInrbZRoas2eXtoTC4zJhQG0lDr34wivkxdu6AbthZyxLwBJyGSa
         Vl5xmwHMYSGKXwOVfEOGZ3WxmkgXVdjKqGJL/x3cPh0aRb+NE5kdNo8U+pvKhsnRpPFC
         J10w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CAnGcnDTryR3gYr9mDqUeJUcn/GSZ4oIZQW4uT/yQe8=;
        b=uNWbMUSRIFT0xeZsgxbg5HB1EjoBX+3T9OHvYNQyQOHIIBn2JTH/qvTT6YEW++xa/z
         CZyj1e/S3T9HrIHe32NA94KNqaRkihzxxPsBW1QtdybDjo5ynh9eoaFlqiEWixo4Tsso
         xAtMNw+xZXMSkQ6AMN91ua84H1MhNl1TwikZQ8wmsja9khTgLTToSEWq6PpUo7MnkD/o
         qlKvXkyFRXDEMjDJmPbI+EUMcPYEWB+Tg6bCmpOwfEju/+vwYsqvYg5vNs25MZeghWd6
         lieSN3KAB0Z1cssagPdI6KI5TvE0MVqTGquMjpxOMMO4/xiq/uIcK+rabQ1BVIEPwbi/
         XA3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CAnGcnDTryR3gYr9mDqUeJUcn/GSZ4oIZQW4uT/yQe8=;
        b=fMQCUK5uNiJ54b2ik3OLOqJQiLttsMgXKc8l+vuJ16Se/DEGMEsYhjXemxJeT+7LZJ
         RnsOu4hgeCjnbuBtbp2KruqCPql+7TyqtLvdKh8pC28qZDaM3KSjF/RZBHVHHwS8uoaJ
         xcHCS/2ZRsVKiFbCBJvspp89Zwlxcefnh9ldYVZaAZBAgQa2WcFlQbwPkMefgDcIFaJM
         JLMwvM8OCq+9j4qAqo5QJ9NbDpXNvXOjKA5wMkETPJmgux4ceW3EqQ/nzvCj9O3N3QQX
         4W+x76cgMnKE9J9OfR+ZD6eW1m4W/xtELrJsyCeaOGjW0rnurNGtiC/n9MNwQLvjxeMs
         4p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CAnGcnDTryR3gYr9mDqUeJUcn/GSZ4oIZQW4uT/yQe8=;
        b=bnH4uzRA5SHxjhcsisNHuXFvF4QlYvh2PD2HSJzsGQOUp1U5FZbsWpENZe/aF4YR+T
         UB4ptZYOT6eN+qw3J/ZZfR/B1kuKP911uikjBuWvnaDYeoWJ4uZOTysLBRIYyZdYAcn8
         Uiv2Hr6kSXcBGZ+KmEaPrh2SDnVsD1eS5i2SjaXp/kw2b4zrX9DObp/lV4VRHdi/c5fs
         gs15L1X+3iznCWdrEoRtfpLCwgIcyPcfyjMFAcIu5OQgRKPwynCX+jrqa0q2ZZ6McHRC
         kurzi851+oZAkfPycRkUGAk6iAS/t6DAadfl03SNlAJDkcfK5ar+ItCKPNpe9tkqcPG7
         7WqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLBgW+g10VXap0Xlz+z/QH3Qhc6XxH2KekJ16/XhrMRLGSnaD8
	Mhm9FgPP4EjkjA/4zLYoD3c=
X-Google-Smtp-Source: APXvYqzxoQWKvEqlBdTxrvOnYcp5rGyoEkslCMYZvVoFC9nd5ghjGV5vIjgc/SsxySauaED2+G/mxQ==
X-Received: by 2002:adf:e446:: with SMTP id t6mr77504986wrm.115.1563831867988;
        Mon, 22 Jul 2019 14:44:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls12123353wrd.5.gmail; Mon, 22 Jul
 2019 14:44:27 -0700 (PDT)
X-Received: by 2002:adf:b612:: with SMTP id f18mr65845900wre.97.1563831867559;
        Mon, 22 Jul 2019 14:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831867; cv=none;
        d=google.com; s=arc-20160816;
        b=B3fY9AbBVHxMoEYm7fknAplk3iDVGnVccS/+KHQIV2CXm0M+aGE1PRGGDujC2OqJBD
         snxYBJnFPHs53tCvN3cRb4zE7IAntAVXvGz/4LbRKJkDef7hkS2gQxvbMVo1e0dp0a9o
         GttJVQzLkrSZQmstxkPhmOEYPCo2lbh20YuFPg/SyGMH1UsxwWFxRoln7yjWTLFWkvFx
         cqP6wWCb8lln0XWBXC8M6Ugsf1B5lRJK0mWyNgUdUjhJ1zNqfhM7ZcvbCdvVi4mJNruP
         7VZOToBwePk3pPl++7iK1JB+nGN7FJkKqoqbfwAcxKvNTMGBDIdepTK5OpIbI5qnEAd8
         TWyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GMwtwc1mf2P5/9XsuRsA6M4MFX8fenJBykSLQjsmvsI=;
        b=wGZwLVuij8fXozXHCvnA11nJqW7W2wnjtZ0v2IfVTSeJ6700hHSSYYdzCF9qtR2lAk
         RDQQ2YcHeHozStFp/v9I6kXAdNUKjOi1z1CNLrpb80JUXFPfizBcEJkWRSA0e0QtOogF
         d7J+PvWT9GTYJ0RH2bF7jspcpqwWnHq5n4XAuRi8POQSJ9TwRLFskL+XdjrOJ2uSGrRk
         W++Rb+JAXFrJUk/1w+5KZVlUIVW/HVLUfY2A1vDCq98MbNQC17TcnUm58uYZ145VpWIz
         7l9LUSDPzU2nfxBU+bHg6SK9Bg1oEmqOQEcqJa6JDuQ/doX/MCB4jT/Ja+pdbv0GwRlW
         WoxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id e12si1989313wma.2.2019.07.22.14.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Jul 2019 14:44:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from 084035110054.static.ipv4.infopact.nl ([84.35.110.54] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <heiko@sntech.de>)
	id 1hpg6V-0001tM-PU; Mon, 22 Jul 2019 23:44:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Nathan Huckleberry <nhuck@google.com>, andy.yan@rock-chips.com, mturquette@baylibre.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Mon, 22 Jul 2019 23:44:18 +0200
Message-ID: <19079299.fd1ZiCyHlL@phil>
In-Reply-To: <20190722213519.910D321900@mail.kernel.org>
References: <20190627222220.89175-1-nhuck@google.com> <20190722213519.910D321900@mail.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

Hi Stephen,

Am Montag, 22. Juli 2019, 23:35:18 CEST schrieb Stephen Boyd:
> Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> > Clang produces the following warning
> > 
> > drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> > 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> > PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> > 
> > Looks like this variable was never used. Deleting it to remove the
> > warning.
> > 
> > Cc: clang-built-linux@googlegroups.com
> > Link: https://github.com/ClangBuiltLinux/linux/issues/524
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  drivers/clk/rockchip/clk-rv1108.c | 1 -
> >  1 file changed, 1 deletion(-)
> 
> Heiko, can you pick this up? Looks like v5.4 material.

yep ... I'm planning to do that :-)

Heiko


> > diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> > index 96cc6af5632c..5947d3192866 100644
> > --- a/drivers/clk/rockchip/clk-rv1108.c
> > +++ b/drivers/clk/rockchip/clk-rv1108.c
> > @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
> >  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
> >  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
> >  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> > -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };
> >  PNAME(mux_pll_src_2plls_p)     = { "dpll", "gpll" };
> >  PNAME(mux_pll_src_apll_gpll_p) = { "apll", "gpll" };
> >  PNAME(mux_aclk_peri_src_p)     = { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19079299.fd1ZiCyHlL%40phil.
