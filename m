Return-Path: <clang-built-linux+bncBCDLTY6MVIERB367WP7QKGQE6BHFAOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id AA58C2E7CA1
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 22:24:00 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id c83sf13397296qkg.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 13:24:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609363439; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjQgFc2Snpplya88hSnonm/GMsVYHoerhUYXFQY47asEIWt/3hdtvJLUAyNk7pwmyY
         kBVdL72KA+lsYdhYdGr7AlVJ1BV7WZUGpXh/lDs3dRcR+kqrHHTwNj6WBh8BZqBuMtBw
         vQYUhTz99qbYoZ0S9rR89FXosEAA4GWhh2OAGq4pG2zr74RAMEt0q2eCfg9dEHeh3VG8
         Cz9F6nFAn2jy6FO2uK5N/Ew/h9ACVNH576Ryhah3qK0DXaHPPUG30W1p1YZZQfD3cw0v
         BoDD8a3ZwMGbfE8PPc/9Xk2LHvuoN+I2Ai6wnKkFUdei5tbmhPmzITvSpjJ00MvLyzIs
         D+bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=5cxxppesiE6TGLwLxClO+zXAC8jNFwMUVnJC/FEu4P8=;
        b=JzUlsLLD47jIC7JySBJIFpxwUyQw7T2jUikmP0keSxR62GExcd45WjXPU+pnG8wjpR
         l+tNC6OtWl9JSkqCa8VbtxU8wXS2YF6X4RPmwM3HwmO9YwPfVUvm9dE6RWsyXa49KW5k
         z5aHSn53pB5U1tGSMM5zHPRS0VU4b76EXrZzIoOGt95VitYp99na1m3s2LOBCx/u/oe7
         6NxwB1mLKKmu1Gc2Hysb2OpveWk37NRhMhgXrTRB9u0k2ZYh3g+Hlk6qfVfV/kT1aORL
         ePczbmzHfBOX6FgY1X8k+8RC3Slx7TDnxrqqyDWuByFuigFhluBHzLffIpblJG4JHol7
         kVig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=gKH9KAv4;
       spf=pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=npitre@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cxxppesiE6TGLwLxClO+zXAC8jNFwMUVnJC/FEu4P8=;
        b=dVw18RgSiMFDo/hREIupk9IspGmBIOUneq1yKF1uOlgSVwEtmqrmOhmx1ft7ZBmoqT
         bekoZJBMIBDJ85l7TcyQb233g9dEaIXf0WDs3heJWgK5CiyFVE9Sndmu+ziRRmVGgFCx
         XiVTcW0CKUEDSVNhyz4HPJKI5WVODju4U+MuTVbkRmFwYGD4T/VjR68xdBnC22tz1XTo
         VhQH9qs+Zcgsxrb5f2QZkJWpppdOeUiwWUHNj9+VsLNGxFMubHuqVIhc5bAD0ic2+TQc
         wDiRd4G5vzkcWBYYPPrkrMYvc12+eCBB4uVZ0bdovKMcCRO3P2KTY9ZKCtcvFtD8U2+/
         pchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5cxxppesiE6TGLwLxClO+zXAC8jNFwMUVnJC/FEu4P8=;
        b=RCXxFe/k5vetqdOqjRCaqveliP3Epf903dn1dEa25xUSy5qpkWOzFJh5ETeS3sIbhJ
         wl/FYykRrXfl7Wt3z/kcom6olHpqrokc4ny8ldSNrTJ/2ogerOSyzLQ+IPEJahl1PDq/
         WRTQ0TVWzzTSy7ALUCt70FmbdPD8uykNFnLcEDTo3A7E/VRw31IDZeYep0GtrVvPzn0p
         im4mapaqNFouJ4ue/0KkBOx3FmGrCFG6QA+wCqQk885ejpP+zVTjNMeFBLRH6cvfOQoI
         v9sr9pIKtHeW9sYIUIqGfrM5+tEOugySASLiVyReNnEwjQwRSOoGRpO7V/ZYnnNQlBJM
         9MfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rlMZ06BD2AhOPDmmJV/vQUos9Kf5a3BvygJ4fxy7yAQz9nM6O
	vw3ns158CSEL5lKN+rJDDEk=
X-Google-Smtp-Source: ABdhPJwcc3rmAItbr//A4dCUhYRGuYHuXj/v0zZ19rOlEHzCh7pp3XTcFMt0EMecJBEUkB5llo+ERQ==
X-Received: by 2002:ac8:7601:: with SMTP id t1mr54684076qtq.323.1609363439506;
        Wed, 30 Dec 2020 13:23:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f501:: with SMTP id o1ls15455590qkg.6.gmail; Wed, 30 Dec
 2020 13:23:59 -0800 (PST)
X-Received: by 2002:a37:ad5:: with SMTP id 204mr55694131qkk.323.1609363438984;
        Wed, 30 Dec 2020 13:23:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609363438; cv=none;
        d=google.com; s=arc-20160816;
        b=KP2HTZytOAHILtc6nw4DJZEZXLvYNzQxxWwCz5jQjHBe/jS8FcCqlcjc+dPzuG1AxG
         RrBLBA9BC3p2DmrULnRmoSP1wI6gusADu+eiSTgg372P4kR2SmBH+K45tH713R3tNjSd
         fgc9dQBIR2ugvRWdjsE6Ko2lX8XlB+WBnHj8plr5hAKHkXct7cBMg8b32TQa2YfjXKlx
         a5xuWJoTmiDexLFT0m/NGxOh9hmqjuq8s5zK3JVxsVDaotvnCfWlYSeFHv7gn54d1yT4
         J2bJnZsYF+ktcXu6UVlJa4iIPKZO4Y9a9WKAGCVde+9NPK1Ptlggzu58uljZdUIJ/JPP
         JZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature;
        bh=3JIH2KfcSRonErtkZqTRpOudCvLIbGBt7ERBPB2Wmk8=;
        b=ATVXlYe/y5zEOL1wdGYkFiM0PqdPgGVwSaH+bWcNZOWVZatoBpFkYdk5wnc78feEg+
         XVfdsEEaxCGO3mee5Oim7k5LnTIFMBnDv+YJp1dSNnlV0ZrqWcb7+fzM16PqgX3oTT5a
         rSKmBtSSqS4zu/K7Le16oyjGgAMtcEFHRIIPzeSRZAc3PBtK1v8LkBGRPDu1XM83i75x
         LxvGRW63TrxvzD4zUUtiH6lH5ARaJCOGtebkyvN1vb7EXSzvehxs/8CIU5qVZMl5xyNx
         lntqk8t479gEHvA2p9T+PHO3uJerzJ9hBq+SDGPIJN8rTuS4LOrSU5Ibpa9ZaBDukmSI
         sYhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=gKH9KAv4;
       spf=pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=npitre@baylibre.com
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com. [2607:f8b0:4864:20::836])
        by gmr-mx.google.com with ESMTPS id z94si4801386qtc.0.2020.12.30.13.23.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 13:23:58 -0800 (PST)
Received-SPF: pass (google.com: domain of npitre@baylibre.com designates 2607:f8b0:4864:20::836 as permitted sender) client-ip=2607:f8b0:4864:20::836;
Received: by mail-qt1-x836.google.com with SMTP id j26so11780313qtq.8
        for <clang-built-linux@googlegroups.com>; Wed, 30 Dec 2020 13:23:58 -0800 (PST)
X-Received: by 2002:aed:2827:: with SMTP id r36mr54058903qtd.337.1609363438447;
        Wed, 30 Dec 2020 13:23:58 -0800 (PST)
Received: from xanadu.home (modemcable076.50-203-24.mc.videotron.ca. [24.203.50.76])
        by smtp.gmail.com with ESMTPSA id u4sm27590039qtv.49.2020.12.30.13.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:23:57 -0800 (PST)
Date: Wed, 30 Dec 2020 16:23:56 -0500 (EST)
From: Nicolas Pitre <npitre@baylibre.com>
To: Arnd Bergmann <arnd@kernel.org>
cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Boris Brezillon <boris.brezillon@collabora.com>, 
    Arnd Bergmann <arnd@arndb.de>, linux-i3c@lists.infradead.org, 
    linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: re-fix __maybe_unused
 attribute
In-Reply-To: <20201230154304.598900-1-arnd@kernel.org>
Message-ID: <orno9ppp-no44-4rp5-s6-58n46rsps045@onlyvoer.pbz>
References: <20201230154304.598900-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npitre@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=gKH9KAv4;       spf=pass (google.com: domain of npitre@baylibre.com
 designates 2607:f8b0:4864:20::836 as permitted sender) smtp.mailfrom=npitre@baylibre.com
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

On Wed, 30 Dec 2020, Arnd Bergmann wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang warns because the added __maybe_unused attribute is in
> the wrong place:
> 
> drivers/i3c/master/mipi-i3c-hci/core.c:780:21: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>                     ^
> include/linux/compiler_attributes.h:267:56: note: expanded
> 
> Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Nicolas Pitre <npitre@baylibre.com>

This might be the 3rd patch from 3 different people fixing the same 
thing. Looks like I3C maintainer is on vacation. Please feel free to 
send this trivial fix upstream some other way.

> ---
>  drivers/i3c/master/mipi-i3c-hci/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
> index 500abd27fb22..1b73647cc3b1 100644
> --- a/drivers/i3c/master/mipi-i3c-hci/core.c
> +++ b/drivers/i3c/master/mipi-i3c-hci/core.c
> @@ -777,7 +777,7 @@ static int i3c_hci_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
> +static const __maybe_unused struct of_device_id i3c_hci_of_match[] = {
>  	{ .compatible = "mipi-i3c-hci", },
>  	{},
>  };
> -- 
> 2.29.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/orno9ppp-no44-4rp5-s6-58n46rsps045%40onlyvoer.pbz.
