Return-Path: <clang-built-linux+bncBAABBGGY3DUQKGQE2H27RLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF2270B84
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:35:21 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id m2sf3911125uap.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:35:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831321; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oaep3AnhAHGYaMjcYS0ZiuDx//kwn2EySZcyXVWOVn7MH404mTlAG4bAF4i6u0Sr2B
         aIk+CNJ5bnx0zdKt25FOcDq8BSreIkk0eM5XBW1Aq6Z74E0igDjbWAANXvePes4SKlgp
         9dNqaDBjbVeHryPRnt2sYww5E3rMZqLpBkCUnM8aNnmqvCl8p+PYh/VWfw7H19wsqIjX
         QsA01loxg1ioyQ0QFZ/7HegY+EyeavWgpgHomEqzrl1D+emlQMs/dQF1kKwVxNsBYH2l
         j+t6r9eC8C+vjTPM7OHDLcX80F7Kmat/db2EKOfeV1Ht8OJq3uRvoWa19QmLruAouqCW
         dgoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:from:cc
         :to:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=G9keGpPSc6KmSK+Cp9S+TgXtfSSq6V1KQvB0wmpLcjM=;
        b=Qp5iTnu5Rs1sont0fNrKujsxfzy4QGQ82/6FTO69vHnWDM0sq+Xn+6LLcYyHRdLoal
         59zac1kqRZYJnMrzS5yuE29nwNPXSzgq9SY6KyJNqTDbfphytPVY+mLu8mOeUzy+GdTb
         WYJgEH+qAtco3EMwPpOYucHjeb0VrIcQ2/yUo0g6oJedOlZ9BHmmqG+tB+NauLbnygqm
         DZPsaFY2p/O3H44IUDkyqcGLSNiCHIBP5GfeeuekyP16Be81I8qusaJumFHWK2xrzLCV
         2++H41gdBK9VXVooXjJcJ0m9zJk4srRmi4uX9TjEXNFEF0e6oegkSOl9+Qf9FfJaxz+l
         PRRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GAGVTPyo;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:to:cc:from
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G9keGpPSc6KmSK+Cp9S+TgXtfSSq6V1KQvB0wmpLcjM=;
        b=FV6pDxpoDt9QzZm1GLWKomQOkIy1U3xhpC9WH9yeQ1veeISMs2JiHX91XvuB8DKnUg
         gVScbmsJQHjqWl89TpOg5L1YIXIqLhEE5l6D2QRxKxDAfxUIAWptOgL4PkSn3dZc5EMF
         pZ4VIZ7dEvhccytEBDV2PE/LQvIhHugMTZiPADhH3RhjTLl6L+JPzKj5dkELqj6OLH/+
         W909G2mhnHYBhF/5uit6bsNicmoHcJeZ+Z25eA0Y7AjOhjtHJc/YEQug8OwoZtiomoFb
         KHDxJoH2znaMqhWmOA5y77xopTsMSLjE+aVBc9vyJ7lt2S0ud6Q0vIbbY0mUwVDyj7lT
         6+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:to:cc:from:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G9keGpPSc6KmSK+Cp9S+TgXtfSSq6V1KQvB0wmpLcjM=;
        b=NzGLZzk/5SjbF8ZVNhbBIzPpxsPsyuMJiwzaIC5O6gB7ZtUIVQ+QgrzIzCyBdS0Jbm
         HK2+Iuco0MxwheKaIuheT2w6Cg3vT0std2y54eSbSOa62CJ0NVC9xqJqpDu1iS1QItCe
         k2qT0M+t4klSAKdzfi9EfozhyTPFDUXQ89DeNKKMFbUY/Lz/Y0tubgdDKhIDy1IsEkc7
         UuMZpJs08lrqZaRQtmjiy5K6jArkBsAm5Ddt2omaqZ42fRblHtpbCvKUqeFXxzoDcree
         BAbbmb9YOJ8a61UZujyGz88BZcNT3kVfDn1i5Du/LCq/Ff6f6+kL/5jEZhO7eldB1PvY
         IG2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9K57f+oveqmC7aGObv40otf6/1I/aTarE7NigGGG29WRn/PH+
	MwpDMRYs3mOQiPyT0N3t46s=
X-Google-Smtp-Source: APXvYqyv/XamqWT7Zvy3ASQCuhClIxze5cdbGVYxfX+phuKvWstsFIOy7hbnJmxTkgUnEloeaBObyw==
X-Received: by 2002:a67:e906:: with SMTP id c6mr12558895vso.82.1563831321025;
        Mon, 22 Jul 2019 14:35:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe99:: with SMTP id b25ls5111378vsr.16.gmail; Mon, 22
 Jul 2019 14:35:20 -0700 (PDT)
X-Received: by 2002:a67:e3da:: with SMTP id k26mr45957820vsm.131.1563831320871;
        Mon, 22 Jul 2019 14:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831320; cv=none;
        d=google.com; s=arc-20160816;
        b=TsBqMRHXRb5e40oz2cotYCoYP49hIltUeHsLksqEOLRnHVj5CvIl02WcmIC2Mps0S5
         Tki77pmfewr/uLfFYVUNEcf4CAO/+U/QldHWgDUFIs94kFrmI8KEwRBPR8XPDZ7hLOxJ
         XT+rtyiTjcTWEmBo0CzjG4+y1ZEMQus3x8EdgNjhKb6u6qZq1RPgXgR1vOSdbMfWeXg2
         5SxYoRHqvM4J+vHrQwgS+4/kyYfTTlBkKoqWr2mgf4JsPlZVTKCyMhU3uOeJAvSWXdlT
         j9Wnx8xmbR4SdZuaCq4Gl+/n3JbnmwjSQDgBHcg5aUqT5HHfKETfvclg6OfC+lZ6+Wdi
         qWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:from:cc:to:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=96liIR5CTCZ5HdOsd91VAOQMzTKMnJ6U8BTm/3dZ364=;
        b=F1yIjSeS6lVxrF/x/7u0ssAcDVLuy0kyGCO0FGL8KNAt04cOe4ErtqjU5GEXSJ0y3m
         3INWuSEj44vzswYM6GMSC5uDnOZ64AotrSQk2QIQjIoTQ+ERrcDuiW+xG5uV53t1DRIU
         QvTd9LiOvU1M0cmqydl/e5I2sKZDoNQrm+2/F2A24vqOMBwcGdMM42NTdUOzfEu5Ywsi
         sjdBN4eGQGTh/XSPj4suWPfaAICp6ch8eFVoC4MPr7BKJBv2wbbwwQZhxh0F4l5rsdD7
         Dis3xL3wf0goFRZ5mTvEJnivfn3HcwNo0yu7ykWMUeCy9P2DISUJ4cDYfF0BnZArGjhW
         HA4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GAGVTPyo;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b5si1726304vsd.2.2019.07.22.14.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 14:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 910D321900;
	Mon, 22 Jul 2019 21:35:19 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
References: <20190627222220.89175-1-nhuck@google.com>
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
To: Nathan Huckleberry <nhuck@google.com>, andy.yan@rock-chips.com, heiko@sntech.de, mturquette@baylibre.com, zhangqing@rock-chips.com
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 22 Jul 2019 14:35:18 -0700
Message-Id: <20190722213519.910D321900@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GAGVTPyo;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Quoting Nathan Huckleberry (2019-06-27 15:22:20)
> Clang produces the following warning
> 
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> 
> Looks like this variable was never used. Deleting it to remove the
> warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  drivers/clk/rockchip/clk-rv1108.c | 1 -
>  1 file changed, 1 deletion(-)

Heiko, can you pick this up? Looks like v5.4 material.

> 
> diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
> index 96cc6af5632c..5947d3192866 100644
> --- a/drivers/clk/rockchip/clk-rv1108.c
> +++ b/drivers/clk/rockchip/clk-rv1108.c
> @@ -122,7 +122,6 @@ PNAME(mux_usb480m_pre_p)    = { "usbphy", "xin24m" };
>  PNAME(mux_hdmiphy_phy_p)       = { "hdmiphy", "xin24m" };
>  PNAME(mux_dclk_hdmiphy_pre_p)  = { "dclk_hdmiphy_src_gpll", "dclk_hdmiphy_src_dpll" };
>  PNAME(mux_pll_src_4plls_p)     = { "dpll", "gpll", "hdmiphy", "usb480m" };
> -PNAME(mux_pll_src_3plls_p)     = { "apll", "gpll", "dpll" };
>  PNAME(mux_pll_src_2plls_p)     = { "dpll", "gpll" };
>  PNAME(mux_pll_src_apll_gpll_p) = { "apll", "gpll" };
>  PNAME(mux_aclk_peri_src_p)     = { "aclk_peri_src_gpll", "aclk_peri_src_dpll" };

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722213519.910D321900%40mail.kernel.org.
