Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZPT4DYQKGQE6XSRA2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B60171509A1
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:19:03 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id w14sf8323278pfc.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:19:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580743142; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDUzl8bDBGL9yJ+mvPwzcM+nPX+Y1SHn23+rNNVbXGdfvb3flkbUzT9kGLH7yUZ/qv
         KDvfwNxh5a0/mZADjh5D7kznEWo/YGnCWsl4XILAaohoVCkTX5LYtBZVAkgp/S5l/FlS
         htKbSFPG2ODSBlSDpmY9gzwpnYLGjq9EZrWgkJdjnZFsU5sg3LUKbbrRQFxcCXh5HFKI
         SdghPfo5mIUuCMfAoItPb3tp4XGD2q4OKNaNxi8Uke1Wp/PV74TEerc3ivBlwtKLFGjh
         NaaDCaurht5y2gypingSJuGPk2SJL5yic3RmUxwTsqasAfq6thGI2UsDyQPkS4zj2VsC
         pB3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xkgRNNCV9hnfyA3S7XSLdlxdn7Esg9wC+k7VJQ3GTJM=;
        b=qy0aA1qYoScK0cNaaBBLufOstMn6+GyUioNs/R5kxLfRw2b1qaLMXJmaY0IcOc37/V
         l+Cx4fZNWtpi4ZiIbaiyYfb8tT+ym0V4aArN5OrH13ANyUkFHYIEQT6HJjSY6rPRqfrz
         70IQXyQoe2F9Srvcm7S1U2suhxqbAWkl/NO+933WSgWncTaQEPQIslmEwOXd2zAMwrYu
         6SfmzzP97Hk58n+Q/VvKPVnI19Kc31KL4Af4B528ym44iMyZ0fDpVkT2hci8jmno8kXw
         mckHbT8hd6aMcvPgOzZ3MDMGXFHfC05ocQ7e3xc3YesYAxNYYcPhDs079LsH3Bnk81FC
         3XwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k9Vsr0Tw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkgRNNCV9hnfyA3S7XSLdlxdn7Esg9wC+k7VJQ3GTJM=;
        b=MqsvOCWlnWgG3n7ee7mrNhah/xxdCbe6XIEtIdn5wTcvh0h+GMYGPaEZem+U8h/s49
         DcnRUnOvDTdg97QjbZBTgTi2GJL5qeLaWpTOZqNUTC4H8a1+HADefbFmxqHnfH53Ww8T
         ZHtD0pUAkgRTHUdSzDcobsBbDsTDQ1VpTu19JH6KzBAU2Gg/Ohxa5PUvJV3TLw+HAyEp
         AZPtcipz4zaTQuLNGCgmO2IRiY+NUGfrw4F3GOJoQeMZFBIS4YbWOtmWabFnw6VeyTxy
         3O+q599tjHLtuLFRE8shFzz9BFQotUWeMIhK/VAGCra2G2ewkeUGIF+kup7z76xAiqqm
         kkNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xkgRNNCV9hnfyA3S7XSLdlxdn7Esg9wC+k7VJQ3GTJM=;
        b=ZeiKjAu50wmYb//hbVjz+4CyMM+FbltTQYq/zoDaP4xsx7AYISyGDLoxCestibQI5g
         m+WYZYfvOs3fBc6ACvYsNlrNTODCMvvFLgvKcDQJQ9Jh6G6WY5IyeQS8UgaBRoUDSyAg
         mpTuCTqXaf88tdpjCbJLESoT0igzpz1I2Bxivp7vCE/2LJkR6bsRO5XDt9B/SnA5GJXD
         6GV1ZoeiHydM85u7DXOQusiE5ejgMKLL399aF6tARXh87NbOqZAGF9xQFzFM7R+N2fiO
         vPYfR9p3vBTXnyhHjgI4R+BirsUDomx8+XVKRPilBSPYKGIK8u6I5uAq2pmuP7yDTy20
         n5LA==
X-Gm-Message-State: APjAAAX1ZhjyJR8SCszbMelJtuYPkSxZOAyWWRuG/wGyNWpFufplUIeL
	ZmXDE8lKDV8i64WHno/3mRs=
X-Google-Smtp-Source: APXvYqx+6i5BSGW9s7nYGt+d9wfFT0wUX33qqWbVeg2MWsbmP7Mk99TsopXjc7ug2+Y2PqyNE2mZdA==
X-Received: by 2002:a17:902:8b89:: with SMTP id ay9mr23594172plb.309.1580743141947;
        Mon, 03 Feb 2020 07:19:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6389:: with SMTP id h9ls7270891pgv.10.gmail; Mon, 03 Feb
 2020 07:19:01 -0800 (PST)
X-Received: by 2002:a63:2010:: with SMTP id g16mr8064481pgg.314.1580743141512;
        Mon, 03 Feb 2020 07:19:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580743141; cv=none;
        d=google.com; s=arc-20160816;
        b=OsKjfRCZqR2wDxwv5NRXc8/XFQTPnqKflUS3kFyDuBDEIiPJXaZasR9czXdl36Odhh
         hL01hmTKXBx8qzrPoJvQnc7cC5BUJmSmOiWzUSjEL+b2bpUkTbxqwq6citjdh/zU0LWw
         01hRiejJIcLVaRvIKaxW71vgM7tYj890kRvOailhf66XvjNSXU9U01mhtYA4zlEvQe9m
         G1Mlaz/gvrPWfWm7Y4RLUVDaZiVM2MEWqXIt1iyMeswan8cyvLHngThVkK7UQdhNI8ye
         WFh05k2zY04ak99CABO+pjxwrCX1qZc+qx6up1Qnmaw0FYWznLBHGRK9Xhhw+BN/PxPV
         rIMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YtI3wko9t2oOAIREAUfJm0gqwgXj0Ak15/2Y+WhYEy8=;
        b=YFwBsfCL15i24jLn94BD+QUupHUgriO6NglqmVSweJhtQNAef13RTY6r9RTC+1i5h2
         1kvgl1vkAO3bZ7vkfQiVSfc+3QwyRIZJKovcB45AOwd/NiAtXpaUbM46UVdbds1iF0ET
         Ay251rU309rOtzUt+WvA1V14NT6YEyGYt4vuo4O+6CeZUXYKlCE7dH/9oEdEio46u3te
         BBnaANNN2Q/LZJFazyp2UiimhQYZLRsg58DSYQTCbYqf4K3QQZduA4+UsC8A8ICTQK7S
         ylsV8lQyS8xY6/z/UyNjNwMgedq65pHvaq+9VoPpoyqt+ITLXMl6Sc3PYceODfzbM63E
         shdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k9Vsr0Tw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 59si428568ple.2.2020.02.03.07.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id d5so6488389pjz.5
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:19:01 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr22914555pll.119.1580743140892;
 Mon, 03 Feb 2020 07:19:00 -0800 (PST)
MIME-Version: 1.0
References: <20200130015905.18610-1-natechancellor@gmail.com>
In-Reply-To: <20200130015905.18610-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Feb 2020 15:18:49 +0000
Message-ID: <CAKwvOd=kehh2A6O1my6FbYtSU7e=p0JVM0+RBSF=rpPU7QWbOw@mail.gmail.com>
Subject: Re: [PATCH] ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, ath11k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k9Vsr0Tw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 30, 2020 at 1:59 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns a few times (trimmed for brevity):
>
> ../drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
> variable 'rate_idx' is used uninitialized whenever 'if' condition is
> false [-Wsometimes-uninitialized]
>
> It is not wrong, rate_idx is only initialized in the first if block.
> However, this is not necessarily an issue in practice because rate_idx
> will only be used when initialized because
> ath11k_accumulate_per_peer_tx_stats only uses rate_idx when flags is not
> set to RATE_INFO_FLAGS_HE_MCS, RATE_INFO_FLAGS_VHT_MCS, or
> RATE_INFO_FLAGS_MCS. Still, it is not good to stick uninitialized values
> into another function so initialize it to zero to prevent any issues
> down the line.
>
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Link: https://github.com/ClangBuiltLinux/linux/issues/832
> Reported-by: ci_notify@linaro.org
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch. A bit tricky to follow that this (previously) is safe.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/wireless/ath/ath11k/debugfs_sta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath11k/debugfs_sta.c b/drivers/net/wireless/ath/ath11k/debugfs_sta.c
> index 743760c9bcae..a5bdd16d6d46 100644
> --- a/drivers/net/wireless/ath/ath11k/debugfs_sta.c
> +++ b/drivers/net/wireless/ath/ath11k/debugfs_sta.c
> @@ -136,7 +136,7 @@ void ath11k_update_per_peer_stats_from_txcompl(struct ath11k *ar,
>         struct ath11k_sta *arsta;
>         struct ieee80211_sta *sta;
>         u16 rate;
> -       u8 rate_idx;
> +       u8 rate_idx = 0;
>         int ret;
>         u8 mcs;
>
> --
> 2.25.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130015905.18610-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dkehh2A6O1my6FbYtSU7e%3Dp0JVM0%2BRBSF%3DrpPU7QWbOw%40mail.gmail.com.
