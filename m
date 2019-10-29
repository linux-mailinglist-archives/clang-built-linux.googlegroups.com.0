Return-Path: <clang-built-linux+bncBAABBSG537WQKGQEZSASZIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ED7E82B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 08:48:25 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id o144sf90490vko.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 00:48:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572335304; cv=pass;
        d=google.com; s=arc-20160816;
        b=yoJ+kLNidt57Qn219Pg8sFLO3epU475Cjc9fGiAv+eZRO+ezoTrAxEW4YxsJqfNn17
         NYiqJju33GBdJd9MmQpyqyfwAupwAI1kFxM9iG/hGHIzmdDOun20W/KN64yBLp198szg
         zr5ZotyeNN2vA3NiidC92J9qLhIYG44yhr66Zkaea1FtZ3qoM4h1Zlh8suJCoFM19Qx2
         A6jLk4hEF7/yd6pSqGNNqpiqVX6wJ8l0DlGqQkZ8vpi4C7HMGrybsI3rGbvsFXm1TCHN
         aeLH+eTTLdH2aw0d6UWbq+D6u0tU6Dg/DMPfPJd2NNgBbvr5WiEE77lW1APg2eUCLV1b
         YWxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Rgihf8uiM6KDItMlzb0ZvDeTx9eg2PcD+wQTauQleac=;
        b=AwgPGs/TpJL63JSsCqJzZW+KdLCKVzUiCYML1w7tKjy0T5pBRDm3ZcFHYQLoxeLVKl
         zR3ZOgxUD+Jq4hdv3YuOcbTDiPAkWF0XswJNwL76HEeMRXCQ6tv6gcTZ0yw3QT8cj9RE
         NeVm22/35T/pc4+U1uwalSjEDwx8vd9sLDFw1YzwpaQDqykNas9UOpQ2geJETDQl3H2m
         NzdCdzrBGdUjleJPrqN86HJeGepWii5ZOjkjWl9ieiLu55w4DFXBGf/LJ1Wc1zzK4kP7
         oP7cYmOVUOUuxnZqdrin8bjiKEEzF/B9G/Ro7n7fpUCQGwRwEwSXGotG10bgrf+vlSLW
         5XYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="pzcG/Usr";
       spf=pass (google.com: domain of mripard@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mripard@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rgihf8uiM6KDItMlzb0ZvDeTx9eg2PcD+wQTauQleac=;
        b=HANG3IZcnPGfEN59LsFgMU95ehFAIqwznXLf1x+jvvtf5YeakbxSIpAUb5VmgWavry
         GIFKCb+NGuNd3qXiOzxINSzeS1v129ec/PdaEWz4uEjrwNXpal7HeRG3/XkAePWgB65W
         +JJBBoXeeONpxy9DGcsJYs8EEUjlwAV/j/rEGV+NG3+n2tyRMCJohkat0IEyX0iESokL
         lzZumETj0RKh4OrVk2qkG8dya1ad3DtcEG8peXgurwE4w2XvMhztcRsDqgyhTp2x0VNI
         l2C1AtHieScpwxhaGFhoaJXG8f/R9YqyOmipsBJLPfj2Do+bzGadVpUBvrc52fPc/2AV
         u2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rgihf8uiM6KDItMlzb0ZvDeTx9eg2PcD+wQTauQleac=;
        b=Jw2yi81inxDp7XiClRndP030EnP/tpgMWXdsh+22JR+zSmd3j7ArefcANMPDbD9Egu
         WSER14rGQD+jhgRUlkJvqXtZ14/7VUEW18lXt5vrelykAiklO59kOUBikI6l3C456s8F
         K2bGQMhyVLT8TRCbfjDFoSC2tqBSKisfTHRK1e9sHttuKmpfTRxRIXHgbmqYiHJA02Bf
         /W9KO2k6Ex3W8AsElNcyHInSZgJ5EKXEXpsut00UhjbPNuPxWRBjLF7YzLc2pgvlP87I
         R64EMEBEy3nWrvcbKeCJRQ5/w49IN4uRylRp2rAXdrJcSyJ5/PoNPtS1NwSvXPigIiYg
         G8/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnNLni8iTBv2z6yDkKrcR0+TFlFG2bM/qLk1F3c6Nt/uL+YzzU
	e4g7u7vcZHyruXnQ2a9KcTw=
X-Google-Smtp-Source: APXvYqyvprYm/9/eoGT3RMVABLP4hRAPS+gp9TIolOiKCimeKp9OTJ2g7BHQHkgFSGm2CDx/sKyHqQ==
X-Received: by 2002:a67:d110:: with SMTP id u16mr918899vsi.157.1572335304574;
        Tue, 29 Oct 2019 00:48:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2261:: with SMTP id v1ls703591vsd.11.gmail; Tue, 29
 Oct 2019 00:48:24 -0700 (PDT)
X-Received: by 2002:a05:6102:525:: with SMTP id m5mr869590vsa.177.1572335304201;
        Tue, 29 Oct 2019 00:48:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572335304; cv=none;
        d=google.com; s=arc-20160816;
        b=vKZIC3MgtpEfkbeC3/o0o+dzgXkLaAIYjjjBGYkb80W2Asg7GKMPOwwLCkhpXhuqHB
         iRldSxFSwtUSqM44wTtfV1xLR+GRkoZzo8RDaai8ujkPHCvmUlDHS6F9dPpIjaspmYtG
         Py6+RV1AdaEoW14rlMdlto3hPhccJzWBwrPEqxK+CG6Y0xUo/TmmlhDtKYXM9b6HiLLT
         rsFZ9OtDuPPMeM+DvWGc1hTdk+ewi8Qjm5WeoHkNd92w6MzrzOVEuiFMGGFX8VpJF0NR
         FRNhQuy/KezGRtFghChCizhCO3eC5LtqVpJZIvH/WNI3B+loQ10km0slfPhYNNHoei0j
         iSyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sir2/UDHL9E8xY/2/2eXtLtd6g8u1aLTu0V2ler8qI0=;
        b=PD0TwgJpFoJVOL6s6ZKe02U6u58x/zlT/8BBSRtvw4ZXhLYClVhvGJj0wwXdChDZ/E
         BOSGR1nLDKEmhg1DJ1skWhvPG5KqcIUGlLGUiUYEbTiXd4/zXR2l+c3Wwc++FMTuie3L
         NmBjuOSlpRB8WhkxBmFMD0g7+/qTamWVAMNcc+SUyYIFPToOeVWNQzacR+XiWjrYACe4
         SJZ3TNwO0JXqgiOO+VGbM6y6XMuh0MHwcE5cDUQc/uxBB6NjbUeqWcL3M7sAcNbKpTav
         uEfNUTZLpmvurADCith3jMdClzwS13ZPKaSaa31d6844cajle88OTgCn5F/w95qq8hB3
         5/SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="pzcG/Usr";
       spf=pass (google.com: domain of mripard@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mripard@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v4si815236vka.3.2019.10.29.00.48.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 00:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of mripard@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 72A9820862;
	Tue, 29 Oct 2019 07:48:22 +0000 (UTC)
Date: Tue, 29 Oct 2019 08:43:08 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Emilio =?utf-8?B?TMOzcGV6?= <emilio@elopez.com.ar>,
	Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clk: sunxi: Fix operator precedence in
 sunxi_divs_clk_setup
Message-ID: <20191029074308.ll2nyv3ksuqdgxru@hendrix>
References: <20191022165054.48302-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3wgn7swzd7gzkmpp"
Content-Disposition: inline
In-Reply-To: <20191022165054.48302-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: mripard@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="pzcG/Usr";       spf=pass
 (google.com: domain of mripard@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mripard@kernel.org;       dmarc=pass (p=NONE
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


--3wgn7swzd7gzkmpp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Oct 22, 2019 at 09:50:54AM -0700, Nathan Chancellor wrote:
> r375326 in Clang exposes an issue with operator precedence in
> sunxi_div_clk_setup:
>
> drivers/clk/sunxi/clk-sunxi.c:1083:30: warning: operator '?:' has lower
> precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>                                                  data->div[i].critical ?
>                                                  ~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
> the '|' expression to silence this warning
>                                                  data->div[i].critical ?
>                                                                        ^
>                                                                       )
> drivers/clk/sunxi/clk-sunxi.c:1083:30: note: place parentheses around
> the '?:' expression to evaluate it first
>                                                  data->div[i].critical ?
>                                                                        ^
>                                                  (
> 1 warning generated.
>
> It appears that the intention was for ?: to be evaluated first so that
> CLK_IS_CRITICAL could be added to clkflags if the critical boolean was
> set; right now, | is being evaluated first. Add parentheses around the
> ?: block to have it be evaluated first.
>
> Fixes: 9919d44ff297 ("clk: sunxi: Use CLK_IS_CRITICAL flag for critical clks")
> Link: https://github.com/ClangBuiltLinux/linux/issues/745
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks!
Maxime

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191029074308.ll2nyv3ksuqdgxru%40hendrix.

--3wgn7swzd7gzkmpp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbftjAAKCRDj7w1vZxhR
xaQ2AP9CAH4GHD2NPmz/Ed6cj1lbVOW1bpx4owgNtUPvu1oBnQEAtbgqPANSedSI
HKisluN+sAyzMlF1MdHXWRebPyalEAM=
=asjM
-----END PGP SIGNATURE-----

--3wgn7swzd7gzkmpp--
