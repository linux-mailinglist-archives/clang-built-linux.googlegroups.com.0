Return-Path: <clang-built-linux+bncBAABB2VP6L4QKGQEVIID6TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0A6249342
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 05:09:31 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id n10sf2854166vsj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:09:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597806570; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPr4Y7GfnR3olQqD6dpDbReHVWxGULIyCdhDB3YHgYt4F0Z6Tu3hrwPLb00/MhiE+4
         msb/m7D+BiJQ9MpaDZp9BzPoL3UvEwBE3QOFnTakAoBAT8I7+oBYNPo0340ZTOtNIRPs
         mHOVy1XsudguuKyypZyTwd+/U6j0colyXlZcvahSpRbMmPvfx4wF1gDy1t9Zsd26/vPO
         3qr8fNdZ1UyoQQykgE1bUNfl/Y2a9oV9KLMrz5r9GYAxrQa2frW4xDcZGcGFWIElU16C
         1JahlZUhAnfGTa8eFzXq92OeEI2PoqVQWfg8e49qn7TXP6PvpvQBYoMwju/6ZWu0cFeI
         hNGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=bNz3I0lZ8JMluS0WsIZeINtuOQPc+95Lj/oj5kVDrmg=;
        b=n8IMPR3qgUeuKzOxJOFaRtDHPzipJJ9qpuVkye3WEL9Fh92s/eC5VWnReeiDBCxTtK
         r2Lgp0f+E3xJkgyuGlnkVIqPbd/16pVaTkh1QTjOqT/GfDuQiwYf8WnPv16zzG9L7IRi
         Y6xr3ZZgIEtTHWHlsWXOw1GVtA3WhGk3Eco9240Kdb5c377sCNvdNpfv/BpmB4FGb23Z
         SirWMNMu3g98c4IiDQhC5VhwbfKbqIQijLWAQ7nHQYqO4aOYxDrPOvCKym6k9nhEtaV/
         dCGFdC7BokOjXlZQU5uebKRQmIiISFL13Xt01XfKfcPjInqff86UT2Y8ekLgkPNdNl3o
         BX7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WwY7F0fl;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bNz3I0lZ8JMluS0WsIZeINtuOQPc+95Lj/oj5kVDrmg=;
        b=sIl+pFELKI2u+17emyObmxleB83gOck/P83bpcAnScRoYFeXIUGlSg6vt/VgO4FkCT
         a23/odxNB7vNCeS4qY05WzDoqY5xSlpEBUMr8oCW1IB7zI2rl6nN8BSqdaJeGPhmrG5d
         RWI1NXaHill1rnmOgd8Gby0OaBrzLu/d4flmxN+dp7lhiOLeuVkvGB6A6fS0xlA8gr1f
         8JJKgIvIXLqtwrQqNHhguAhnutIB8srWR7JsRDTpLhBRJGlMdjNah12aQ4jcaSfWwFGu
         4WkH5sPGFKlA6dEGmQYZKIMoqnaBhR6CVWUaFvNIMFTr3GNWEg44DXfQPSifik7PUmFo
         CC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bNz3I0lZ8JMluS0WsIZeINtuOQPc+95Lj/oj5kVDrmg=;
        b=PbQr3Gmdg9OYgk/Jdsv0wMMmn5ECgGJd+X/mVQ46GO/0N3DnzIQjanS0QNMDdU7ZD9
         c/yGjndscYFilD0mB8A65GznclNCPKIyObmWFwFeDraRx0+/fyxEL7V10zJiDa7YH2N1
         bo4ZJyddbxas/SpCyhiebmyStCYNc1QdQcQVK80iVe70Kcxv/oguVjHz+Vn/5O5DAig6
         d0Y+DYY99yZ2sNvHytp7SEOncuJXJLn449HZVt7/PdDYdGfQeRkG0jsXXRW+SJ3oISvK
         b4HLxAdlEDkgigGT5RQH7wTFnXl5eT/VPLFx9h+OHgPBCWTlqPbp8pLn0//QR947qgGc
         YNbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ncfC38GrH+0TcfVwHGkrowy1kB8T/YltETxkoFhVHd29bqom4
	92XTrtuqEpaM9fgtqWH9j98=
X-Google-Smtp-Source: ABdhPJw0H9H6q7rNKLw9CjrlRLBOz3uSUHl5+W2sQ4n5a4BpreXWEIt860ZbK/H0/Gae4qARwgpCBw==
X-Received: by 2002:a1f:c1c6:: with SMTP id r189mr12829883vkf.45.1597806570593;
        Tue, 18 Aug 2020 20:09:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c84f:: with SMTP id g15ls1110249vkm.3.gmail; Tue, 18 Aug
 2020 20:09:30 -0700 (PDT)
X-Received: by 2002:a1f:2444:: with SMTP id k65mr13028291vkk.33.1597806570247;
        Tue, 18 Aug 2020 20:09:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597806570; cv=none;
        d=google.com; s=arc-20160816;
        b=Kxa9mKe9HOXHcsicUAokTjGaDeyh3Rh4xldMzlsIH+aP8n9qlTFZT0i/gobsBoqE3/
         yHoR69u4npmrvVaqSumvyUWq4EPEoz+W7qvVyybKu9g7hgry5JRHFp4MexpzuP28JPjR
         tIIWYg2w34sK8cwGLOOwkdW/+0aiROquv+0gRF5vSl34vV49V3QMF1xHOQIE8xGUrcSo
         kTyIplCraYZtD/7rZPuIvKyakKmsh9XkWntjk2660qMrkwRLmjiyqsPkrfAzMBXeDQDZ
         J+9p6ynBpO5JjQPFBR6Yd9Aty7pQLeiDWbxSq+vRszDjoGaLUBr3he5s1P4H4DBeOYYa
         DHog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=+3jPNl2QTxw7X02xGHng4IdK13ezyvHObJ34Qi6+9Fw=;
        b=0qWosspciE31zT+q7VdVH63IecOEPRkLTK/sZCbuHtDuB1vW9yzkXqUa/h8GaMpHdo
         UYCiUtDBDlO89d74znMvpL9wh046hNStAdhuxKDJ/iAyAPOHchwx6PebemoBo+9rukYK
         YUoKqXjth/4NsdvKMiQVd/k5NwgBUQeWnpj3MAiPL1Ylru0l12FSlnD6Re7zuPaIwjTU
         rDziPyQbClPVadVeDF5+zlRkAnYBpyExOzf42HXCdsXXpTVLNZMvspW58o+h/l56oLPs
         0lbkiKS9N8SADWlG8wEce4JEX5pQ5bLafFeJBGz4Ga4BJHbXWL008s7qmFk1Hrb741dx
         3lng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WwY7F0fl;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s126si1201233vkd.1.2020.08.18.20.09.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 20:09:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 303882065F;
	Wed, 19 Aug 2020 03:09:29 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200810044020.2063350-1-natechancellor@gmail.com>
References: <20200810044020.2063350-1-natechancellor@gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
From: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 18 Aug 2020 20:09:28 -0700
Message-ID: <159780656806.334488.9415034364202507585@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WwY7F0fl;       spf=pass
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

Applied to clk-fixes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159780656806.334488.9415034364202507585%40swboyd.mtv.corp.google.com.
