Return-Path: <clang-built-linux+bncBCP2BTH47YBRBJHJ7OCAMGQEVDNIOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id C578238137B
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 00:07:33 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id d11-20020a0cdb0b0000b02901c0da4391d5sf525301qvk.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 15:07:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621030053; cv=pass;
        d=google.com; s=arc-20160816;
        b=1EOiTaAGIHYw37a/sP1bo9BiWM/AEr9gAQnZXiz0kjj92U4EBQpw6sqeiqYYqNxGu3
         9E+TeQ4s6nJu9wRQffLFMiAJuE/K9GzlvEenz2v4i2SxDopUQ1B/hqHo/L+xSa+u6piI
         KxAZKvffQ0YhgUrzFywdFUriNcWx1YKoVzl7TtrwOpjCbh3+0Y41kDRHCYdqvCAcMXKN
         JPIBKhBDdS2aHxFQCtx0PT8qBhqvMCbfQ6f9iB2+UlvesZTPtHpuBkef/vn83bIeRc1T
         YEC3R3ET56+8gGZlhaOIX8qavL5UaJhG8IU5gwwcIUnSm8PeEn8zz5saRteDyisDymqk
         BP5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WmDJxK+8hm+gHfoYPF2EwPWgMLXHdNiv3sn7PryNvEo=;
        b=NXcVNpAToBykgRi5pa09YixRApqJ7tfVDQwf6itNrKtI4NuFY+dQSZgXxgqZqEcq50
         Y7C56wdUOn7x1h1IY9Zg1TsXKoyBtAR+P7IR+Mrcx9OOag7g5qEbM7sd4UpXO0Gnqmab
         9JV6hXh2ZS5yhFaBUk+0+vy6+i5NQ0r+FhEaatvP7INNMf+et+iIcqxB1UY6STj62xkz
         MWz5RkaQUCwlJNCXKkkstIFE6clHCDsq3u3uOXKm7Z7Nt4ijFLvpYR0Q4LgJ62nD/Ijx
         0s25Rnj6zcJpYdxZn2gGcptU6ZrvUfIptX0GdTeO4sEpfovqddDDfwCu/f/Wu3ELjCt1
         IoFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="dx1Df5/y";
       spf=pass (google.com: domain of dmitry.baryshkov@linaro.org designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmDJxK+8hm+gHfoYPF2EwPWgMLXHdNiv3sn7PryNvEo=;
        b=c6jD45OnU0sSkjNkU2UrR1nwwUXjk0Cq8WivtYsl1iiNteq3dQiWlJR94nn8r47wQy
         TQTvhXtIzy86R9XWsTfcrwBXWPPiTGNQioG73WgicFuT3MAv56Y6a+yoA+fHvVZDV9dW
         mOV9Yjia5LBq+kYppghOkQdEzhSpIw4icwVjpFxOYaX+hMwLE4qN6e6h1kc8gdj2a8fM
         Zko32Km10jVSCCnOMR0/p/F6DMEDm5Zt57OS/5g2dkRZr8PBEcBiUM1RxJWkZnLdi81I
         Lex49OTZFGikNXG3G5PKNxsBnjJkeZK3fsSF1vp56bukle5zZHPxRLg/oqgRDTo98nJP
         8tIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmDJxK+8hm+gHfoYPF2EwPWgMLXHdNiv3sn7PryNvEo=;
        b=fn6AMt2GpqMsZwQDiTstZdlzCF8mLPfXa+P7EHH861bcd6ODQTCoUhBOPKmojppwsP
         teYAGeHroet3oz0AxJrQPGSJgtGVRTJUAvzz+fLjCHeWbrIJGlt0wU6P2Atg4QtogFAa
         tcu0zpRWPRVBlj7thV0UcaMwHa/+5uy81yYk1YNfZ+yw30KkVvZN4HKnmzjcRYgcaeof
         3A30fLCfw52A82dkV5CotHWu1XhYeoqV1j7LW1rjAz9oIxoKcTvCFMCFzZxp2rI+zad/
         Ke1NQN+BM2eMxZQBmkcnjd85t5SfLSO+51YjqLNMZIkku5AR1XVTlPSasHH11O/JDA2j
         QrGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Dg/0efbgtMQ5W1uOG0/ZEWljX6M3e8Dh6S5QVzzNAlgPMMaNJ
	0Vf6pj5/Wke0Whx1j8/g9aQ=
X-Google-Smtp-Source: ABdhPJz1j2F86utOROK0ZwGanyH+wKGnr9R0AGMTQLQ0qFzaf2taYu963DrOaGY3Etg7STjNc6wTUg==
X-Received: by 2002:ac8:76d2:: with SMTP id q18mr45495095qtr.359.1621030052931;
        Fri, 14 May 2021 15:07:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4f54:: with SMTP id i20ls5267185qtw.3.gmail; Fri, 14 May
 2021 15:07:32 -0700 (PDT)
X-Received: by 2002:ac8:5ac2:: with SMTP id d2mr19913485qtd.154.1621030052482;
        Fri, 14 May 2021 15:07:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621030052; cv=none;
        d=google.com; s=arc-20160816;
        b=i/JO3cH/eiDhyphTsO9QacfT/vEZng1mHw7izYvdhlO5fBDPGnQqq14XzTY9Bm8lM7
         /80uOt96b5OZT/iLYbnq2h+xqe2I0PcoaB5J+Hfo4WX2zI9mS2Few1E1e+8VJi9huCz0
         KqOK1FvASb7ktmweT/Y0TYcgy10v/l8Wi2DwSd6XTWTRlm43bu6Qdk27kYNGsh08EJWJ
         0Fr0GqUb0UreRU7my3c/SkdSIfraffwtb2tbgQ7sGemdwIKSkHF3+02aLNT5iA8s2kEV
         6RvJl7pXABDFGyRESQtI9WgeEHU5Uiy/tbPP+rl0ETfFZqLkD3jDVLNcR3AzZm94Z0KZ
         7DnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IbrQjxkb0K3z7ZkPDbwumBPr7QnDKgJDV9MYg72KtXI=;
        b=mJoWWH5/Y5mG8WNNpCH9Anh93TI0lCdSLG7hZkezpujYN9jwH4rzl3/nPViSbkE2pH
         fvjwIV9y4BeDb7wLvzTQb1HqsJChypGmxjplzp0kv6XLN6OFta3qJXxrofFGkUgWmchb
         iFa/SBc8k7VPSWSrcP8PaYts7Gu59ermD1lZGc7xVeXv67EOPEWlH7LZtq1rWiuB/8um
         Q7N5eXcLCiDWlwL1XtzshsCRhZIra1ZzqZLtYnoYOf28+lUNlxMrGq7nYdh9j7PzrB+a
         F+U7kYIXoAek/PBTvX2FdFdodep+LPm9giGEX/gkuaohBLXEOlxkN987lQngtxnaMYAi
         zpPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="dx1Df5/y";
       spf=pass (google.com: domain of dmitry.baryshkov@linaro.org designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id k15si594802qtu.0.2021.05.14.15.07.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 15:07:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmitry.baryshkov@linaro.org designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id y12so685487qtx.11
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 15:07:32 -0700 (PDT)
X-Received: by 2002:ac8:5810:: with SMTP id g16mr44371397qtg.135.1621030052188;
 Fri, 14 May 2021 15:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210514213032.575161-1-arnd@kernel.org>
In-Reply-To: <20210514213032.575161-1-arnd@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 15 May 2021 01:07:21 +0300
Message-ID: <CAA8EJpoo=VS1Nk-3CpyraDFzF+0xe3SWxkVt7M=8aBNhbdh_hQ@mail.gmail.com>
Subject: Re: [PATCH] drm/msm/dsi: fix 32-bit clang warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Abhinav Kumar <abhinavk@codeaurora.org>, Jonathan Marek <jonathan@marek.ca>, 
	"open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>, 
	"open list:DRM DRIVER FOR MSM ADRENO GPU" <dri-devel@lists.freedesktop.org>, 
	freedreno <freedreno@lists.freedesktop.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dmitry.baryshkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="dx1Df5/y";       spf=pass
 (google.com: domain of dmitry.baryshkov@linaro.org designates
 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sat, 15 May 2021 at 00:31, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang is a little overzealous with warning about a constant conversion
> in an untaken branch of a ternary expression:
>
> drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: error: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 5000000000 to 705032704 [-Werror,-Wconstant-conversion]
>         .max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000UL : ULONG_MAX,
>                                                       ^~~~~~~~~~~~
>
> Rewrite this to use a preprocessor conditional instead to avoid the
> warning.
>
> Fixes: 076437c9e360 ("drm/msm/dsi: move min/max PLL rate to phy config")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> As found with another patch, using __builtin_choose_expr() would
> likely also work here, but doesn't seem any more readable.
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index e76ce40a12ab..accd6b4eb7c2 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -972,7 +972,11 @@ const struct msm_dsi_phy_cfg dsi_phy_7nm_cfgs = {
>                 .restore_pll_state = dsi_7nm_pll_restore_state,
>         },
>         .min_pll_rate = 600000000UL,
> -       .max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000ULL : ULONG_MAX,
> +#ifdef CONFIG_64BIT
> +       .max_pll_rate = 5000000000UL,
> +#else
> +       .max_pll_rate = ULONG_MAX,
> +#endif
>         .io_start = { 0xae94400, 0xae96400 },
>         .num_dsi_phy = 2,
>         .quirks = DSI_PHY_7NM_QUIRK_V4_1,
> --
> 2.29.2
>


-- 
With best wishes
Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAA8EJpoo%3DVS1Nk-3CpyraDFzF%2B0xe3SWxkVt7M%3D8aBNhbdh_hQ%40mail.gmail.com.
