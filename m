Return-Path: <clang-built-linux+bncBAABBQV7Z34QKGQEEN6HFFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B0592242650
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 09:52:35 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id k12sf1169439pfu.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 00:52:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597218754; cv=pass;
        d=google.com; s=arc-20160816;
        b=TssNYbZLuzpFG+5EJlrXZj1oeYFEX11k2tBwhWJuhWUT7eXj6ehU+5lYtKLt7eYcRX
         386t+yBZ/azTLUdOoRvkbzHNg+/mCVMgd2/ddsF57HWSoCMrYTRI0ajyKVrn+h0OxadR
         Ds8zx9sg34n0WKoGUsXJL+bSkCcr3Jq5I5lbWTDdGTBSKTSstJ632IfxYlzPUD02EQgY
         KzLPNnm+n/T0r8ghncpkViGWvooJQrGlwttM3izcFjfXjD0UogXsuThUorPsh+oEhm6B
         YWWlC0pXTgziPjhyapuobi25tCaycfXiAeloXJYpnC/A174fcQmkKWRsUS7vhYztbIXL
         a94g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=jZI0mSxFeqeu1bQkw5FGrZDqOfxcwJY8dx2ylDxOzR4=;
        b=GLpaccFBEBZRsoQCz1UeXccpHU1ZYug2G6nzlr97yH+pTmy+Kbr+YTalolKUBAUiOP
         MUcuO3QhW1/Oi509qopiMqnC030dV5ObS+UT9pEvMh8hyzaBd1j2Db4NkTd+K6WRYH4+
         YA7Ig0jE1nL896L/afgx4B11EeeZIk6urARxqdktldxN5dqcvbBBfdxbIXPCvp2VeuPX
         0t7zWKvrKE4385ILZKMFUvGah5JrbqeS1G/xhnaqNyLE2F3Mktm8S4r/VQFn+FvB0n8F
         AwTKfJfhJFTxbc+63GaCuM0xmoIOXeyKDe5jEERX5vAyUARJWi0ptCM3DwfPGXBbYCQr
         nhCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1p4LHA72;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jZI0mSxFeqeu1bQkw5FGrZDqOfxcwJY8dx2ylDxOzR4=;
        b=hhXRu1f0fvsNUQF3ttNMcz6kAqWTwvJKUQ7a4gIFfHdTkVMVkcKmjVCcL8kF90lZ0n
         yFTIdEgEx0eU5JoBTy9ech6sUHHDs7qtZhGBZwZujuT/gf6o5oKYLewwiqOF7wZokJ0s
         X2Zd4NKFoRO/sz4HzLJ1bjWn9x3F8Nb8vHy+zsyBbjCwxM5vnNrL1Z5iKQIq8S5eHfo8
         WsVfr8nOOtAJ3597O55SStSPKskSR/qlqRDtGrYLElle7wrxDQ8GiER0FeXfWkihm9e6
         YkTxFUTZj8zHIuqU2J7IR1QborI8tHd1P8EiG3YLYp1VxDMHQOxAG/3xI/pGeKMrxtVC
         3lBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jZI0mSxFeqeu1bQkw5FGrZDqOfxcwJY8dx2ylDxOzR4=;
        b=Pr1lsxO8jtsKnXsW0ZaUy77O8UuhSw3yPMeCo895OshliGE3yjGOX8dBeIPHNzazZ5
         IqXU8W6M+0bev3PMpROl3C/t8FhobSD1mtNcoanLeb7DlAFSYLlGhxyRjPwcIv4sp5sK
         d+toRXI51F7bhxZFGJuWuE2pJh4Nu1eHAmo9D3I6fzbcc/CkbPx9XIqOohfHcOYCJS5i
         V6IZXYheLylekiA+5EqtISZEV7vtBSU2tYi0A3325VY7coiDE9DrRhReOFSWE+PiM7ta
         Eg+0XY3amKg1ICb9a3SBTcMzRmecdltUnOqGaHIHH3W2nRcbM8vB7o//vLNv/dk9SP3c
         UJ/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Mw/zakvcbQYpjDgl/GqvwFzkbNdM5foip6P924a4l0eaubdfz
	wDZbCrJWG93zubHzwsXQSos=
X-Google-Smtp-Source: ABdhPJwOclodmvVvJk7lGuFjf3nTGSM2Twg/y5wuSmkEqEch1/UoiBRmYc7RJNY2J4T3UF9L/pKM7A==
X-Received: by 2002:a62:7546:: with SMTP id q67mr9997657pfc.210.1597218754136;
        Wed, 12 Aug 2020 00:52:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2fc1:: with SMTP id v184ls466434pgv.5.gmail; Wed, 12 Aug
 2020 00:52:33 -0700 (PDT)
X-Received: by 2002:a62:1803:: with SMTP id 3mr10514913pfy.198.1597218753799;
        Wed, 12 Aug 2020 00:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597218753; cv=none;
        d=google.com; s=arc-20160816;
        b=CTlbQ3y5Xv+Jchus1vZTDhKC2kx0SEbL5zHDfvr6hrAmVQcDESvho7EW9mwNbb3qcs
         KqMNOcaDzulq8ciZtbldxU9TOsF1+/0yErKIYBsmWoDh3+0VhXDZQqzp7+z9OQXlaWDU
         qFWiow4otTz8SbElnvsBeX69+OrOVaqWpA6bXl+Sf08IKQAvgeX2naOJ3/G2PpnksiD9
         CA5c13v1JTbqMDC6ot/VgORQft1s5wpprC/+hurEAc5uzDSXTrGoYEbCVTTUizm0OmcU
         jjhlR6oYzn73f6oayEf7Jwb7BIv0rThvVVVFFfQ5WXSu3yKo+qp2vVquT7A+CmKDRGE7
         xDSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=0YBAazjaAYW+pyQfLNNMqDjBaoZApGvdcp/gaGkIjOw=;
        b=t6B1mBdR0yyiJrWpG6dAgr9zV/dqt7kiv3CkhKtbh+OTWtrNLIgfho46XaRxRZIqkH
         RCYl+I4l0dunRC1/Yx0aLPfN+S5/Z4tcF5QUwyPZRHoWd/oy1O4Grdn+nchx9KHdaxvZ
         EhVgmj8kYPVkD/lncO0DyBnLPuQjqOVdVI9V2d6LZec/WG9G5wOk7HomdO5OcDz57sYw
         buABCxKs13ib6q7hPBzIohB6SCBx40DEEjEvQC1Gl23oL4xpNM9aeDoWHl7Qv+Rw+gmk
         RwEoyFPLyWUlSFzNoNMvF9N3zcKl/SQ1Vxt2fEl5RWoDhJUY5FoU9ZNR1LRNM2+6dwtP
         vTOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1p4LHA72;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bx1si269356pjb.1.2020.08.12.00.52.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 00:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 65F02206B5;
	Wed, 12 Aug 2020 07:52:33 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200810044020.2063350-1-natechancellor@gmail.com>
References: <20200810044020.2063350-1-natechancellor@gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
From: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 12 Aug 2020 00:52:32 -0700
Message-ID: <159721875227.33733.9237826555988566719@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1p4LHA72;       spf=pass
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

Quoting Nathan Chancellor (2020-08-09 21:40:20)
> A new warning in Clang points out that the initialization of
> mux_pll_src_4plls_p appears incorrect:
> 
> ../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
> concatenation of string literals in an array initialization; did you
> mean to separate the elements with a comma? [-Wstring-concatenation]
> PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
>                                                               ^
>                                                              ,
> ../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
> around the string literal to silence warning
> PNAME(mux_pll_src_4plls_p)      = { "cpll", "gpll", "hdmiphy" "usb480m" };
>                                                     ^
> 1 warning generated.
> 
> Given the name of the variable and the same variable name in rv1108, it
> seems that this should have been four distinct elements. Fix it up by
> adding the comma as suggested.
> 
> Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1123
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Looks good to me. I can pick it up for clk-fixes if Heiko agrees.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159721875227.33733.9237826555988566719%40swboyd.mtv.corp.google.com.
