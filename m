Return-Path: <clang-built-linux+bncBDHPTCWTXEHRBSMD2H4QKGQEWIYNCGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DED242F1D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 21:23:54 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id z9sf405907ljj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 12:23:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597260234; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCd7ivYXpzhH7pZly9dgjxNJEZLDr9s3y+xyBVgpe/1r8ug6cSrwMtpXrq5H9BRu+U
         AscSBqxmzsHpmyhgwASUjYrDO7zP3c0Pf+3elm1JHSUV7Z6tVSvdbhJ15a6CUSz/1rQC
         gtCBy3rSYvtRS+CeQaNNO8Jr1t9KVBcNyhvqT/NyLplQ667xUaANvFF7d3hSDTa7TmY2
         Le7xkodS1TjabTpzY3YikuD1tZUMCsgsfmMp6/sYPwHUZNzpxdgJesoOBFQbElAYapwU
         bkPFtG3c7b3Ku2mPrgtZwAbzpDwaX9I4vze7IQmCR/fLRRSS2MMH50PGVJ0Pp058X65/
         PMXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=M6yP8CoDUw1nmzuckmeTXRi04SoaA4cQq6Tl+k+yF78=;
        b=D1Ye1UczOXX54Ch0JvkSabILMqSz9hhc0wfWqRERWT0dd3o7a5a0gvfqORBBwJsSt2
         OxzjI5cz/x8JbAlSgDjODErDj+dxDYUbdDc2RzQCY6CaaVgccrj/a+3LMrd1HK29UdC2
         4vsgWrqeVOaIjq/Ih97s8syP3GgfHUIccFQJ8Z7PBMeDNQ9fkD4WW5YkmauI7lW2mutP
         iMYqRfCe1+ine5PWCLBjIJk54R50rUbXCp3qx1Y4ZF+YJW2Ly9mHD+s5zt5p5R885e1P
         /X/InA7YfqgPjyr+Raq393OEo68kdus3E4Z3lzuq17AxpX3am+wsk0gs1W1xGuVs3Hbv
         ZdIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M6yP8CoDUw1nmzuckmeTXRi04SoaA4cQq6Tl+k+yF78=;
        b=AnW+SnECdfRwCmc02fFDCjl2ynF0xKPgvjQegBboazb/IaMxwhFC8Gep9rWVmH1R05
         xRBPLszoHcG8yqaii3Cz3dxBXjsXvJrUqAuoUYZr1CSIbXimTt99wBqm8aZ8xsUYIkZC
         kUIGODkUFn5HB5EdROwOfHWIMjyB+AUbw2DSmMfFUxhDTa9ECXqx9Mc0cnaMJvPFSpxA
         DijKl16lBNb/Qje/Q9naHTaE19rSWQesiuKedf/+Cv21bFleD+b5r26lCvdTWYy+0RcE
         ebfXgtI9G0eRcRiHNnJzj1jY8s2fRbtfrqoCDLQRrqWQx/bYpx03fpqSe7Z6EK3QTv10
         ZHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M6yP8CoDUw1nmzuckmeTXRi04SoaA4cQq6Tl+k+yF78=;
        b=JC1d19wav2tcV+vLwAvQs+bZlM7Gnr9yLXYM7imwmBwpQcNmQ9jnB8Sa5latw5JlPo
         UeneoLZTrqBskk8PDW4XM0TACzSzI8rKrwYHxixNNoB36vkXWjN362uH8JCA7XXpIFVo
         l52I/Fay608ul0hLDwu4PW8euUVIn/In8kwVnPdAd5zDTb8mMl9UFUmfGP42qtCWqDZr
         sx336h/0pGuACdQw1vDltCgAR/0FOpCcGuvMRw8T/4yZ+RpxTpNmYkPgcF+CtELJ1fNL
         VYeCLhiNV8Oj/8oN2B6dBB1U7s5Gw8NaaXQQ1qi3itObxN3tlaefkwkooDX/KJXd3thc
         Azcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HuCHSqEzrabf516yF8Jgw8avm/+Tnu5hxMTlTRVrRM6iQFSkY
	UPJYRCjg1b3HWZ+yh/lK0uQ=
X-Google-Smtp-Source: ABdhPJzSLNZABCIifT7Zmf6oyFvQTjH71TYvxemhRdz/QKYjnhzKWLjUwG10cRXgqMlHIwv2CqbFqQ==
X-Received: by 2002:a2e:91d2:: with SMTP id u18mr340215ljg.436.1597260234055;
        Wed, 12 Aug 2020 12:23:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4d3:: with SMTP id r19ls617986ljm.3.gmail; Wed, 12 Aug
 2020 12:23:53 -0700 (PDT)
X-Received: by 2002:a2e:b554:: with SMTP id a20mr340154ljn.414.1597260233460;
        Wed, 12 Aug 2020 12:23:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597260233; cv=none;
        d=google.com; s=arc-20160816;
        b=C6QbutkA6dOAMtftMZosS6jNfDpKx0QK3s2mfKqh8R06oIziO/h46R4Aw6GoSVYdzJ
         aFJLiDD9hN4AaVAa5gw2Ocu9hbzpQ4x5l0zOmTAmpklCnPi7Rhiz/Ie9QKfvly2XkekY
         HVwtlYIfa6rqhYrHZrroJP1UXgTOuANhsE2HUgJ4SShClzKdtdgG5D/7umzl5h9OWWPz
         /jOYWeYpm+yyA5MWWfWhYshdjRG9IpNi882JWBkmez1uAQu1BXut220QX15XIolXUvVA
         MMyAkFBfrEYY6iRwUioFS+Ryvl6eDaD3lA0Y5qERZa2XRU648f6DQaUsgnaq96p7b3wh
         2nZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=33ldfOkRANRSLeI4Yt7cr0uuATKQFCiHvJQ64iRq4j0=;
        b=nGpy1/x7qGRi7Yz068Mm7mNkycejhqRIXdb1uMXD7UWddTx1/sKLJ3K3/BW7S6d+Wt
         Dp14+FQnm8GAJ2JuryXwE8m26V/q9GbC5Ufs2UInkza3MX1ioIeUx7e2mPSj+Cm0N3EK
         kpbJdgwvk1OfJWPzq153bXQ8elcQiK60/1dnzgJLZBtFeACgXlLQwSAGdquQbs/7PijF
         tQmaN0ibVbVcFPQNpNkxDetHmHqZjJls2tK7Fg3aMrXEW3ZawXMZFDQnyV3iwJ+8J4qL
         ZvnUWVzB+IOcK8vUzF5N+5MjKXjD5k7dK2qFmZRSl/mVw87lxXZh4fSuL3tQam/LPkcy
         xYsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id a7si125067ljp.2.2020.08.12.12.23.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2020 12:23:53 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from dynamic-194-228-11-227.ipv4.broadband.iol.cz ([194.228.11.227] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1k5wLk-0000aL-3f; Wed, 12 Aug 2020 21:23:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Nathan Chancellor <natechancellor@gmail.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
Date: Wed, 12 Aug 2020 21:23:31 +0200
Message-ID: <1687296.fXXW8n0h3p@phil>
In-Reply-To: <159721875227.33733.9237826555988566719@swboyd.mtv.corp.google.com>
References: <20200810044020.2063350-1-natechancellor@gmail.com> <159721875227.33733.9237826555988566719@swboyd.mtv.corp.google.com>
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

Am Mittwoch, 12. August 2020, 09:52:32 CEST schrieb Stephen Boyd:
> Quoting Nathan Chancellor (2020-08-09 21:40:20)
> > A new warning in Clang points out that the initialization of
> > mux_pll_src_4plls_p appears incorrect:
> > 
> > ../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
> > concatenation of string literals in an array initialization; did you
> > mean to separate the elements with a comma? [-Wstring-concatenation]
> > PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
> >                                                               ^
> >                                                              ,
> > ../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
> > around the string literal to silence warning
> > PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
> >                                                     ^
> > 1 warning generated.
> > 
> > Given the name of the variable and the same variable name in rv1108, it
> > seems that this should have been four distinct elements. Fix it up by
> > adding the comma as suggested.
> > 
> > Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1123
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> 
> Looks good to me. I can pick it up for clk-fixes if Heiko agrees.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

@Stephen you can pick this up as suggested


Thanks
Heiko



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1687296.fXXW8n0h3p%40phil.
