Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW7E5KEAMGQECIKDF6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 432943EDD4A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:45:48 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id d17-20020a05651c0891b029019189dff65esf6272263ljq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:45:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629139547; cv=pass;
        d=google.com; s=arc-20160816;
        b=d//MNGxgErRDjjYyoWm1WUUTJ1xz7c/6VKsj2JPettJiJ6iFUNECCzpYwOahZyaq7Q
         gHoxMxMHH4stNANq2o6AAO3Vfl/of5y9ER9EJ9KwaslP5EFmVXZEqg+BHRaa6ChsEuuK
         Jo1DUv3Q+H7C0VlM4TYTOcWoWnBudi/ug89qWnDTsjzdcRn5hWPJSWULyCK15zTUH4lC
         iblTcQSkoXV2OXeV1ugT+RAgsBvPbxy1r6HBdBXeov/HVeV6Y331PkJzv6jG0uvkAAwz
         ke+dtsNgWPNy8XIIHdDcZ3v1jHASg84olAM24wdAwbYvkNLPvixVenka31U/PC/iDdPC
         1oYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jFqWvK6aMy22rUJ9pP/CGu6je1dWRUKZr4MSG6//qQY=;
        b=J+rGtEABmKBYVvXy2LYzkkAVFCvZRCRMNFxGwOZFy42RQaguaFX+Vl3B7c86m0MErC
         5fzdXqqC1wwNkEzxwQOsG1YOohRZN76wYo25Jd8rUdFTeNMhmUrSfYED/RlwqEDor+zh
         uUf/d9J3x17hfyOk220F7WshyXMqojaFW0D+aeLYcyXhCCSwqt9R0aldvKkqACxCLkXi
         ZAOYMztEyXPWOMnKIx5lk5I1Yc4LnVTWSh5R2QtQj0QdtoPDHdenwk14dM7zT27dLfEX
         /naHx0kyPXUQ0TiHKIMz9Wrf6FaNkzkI20HaNsdMIakVPjeEVs8g0Toqpq5Bh1xqTaE+
         Uedw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dlWwzGdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFqWvK6aMy22rUJ9pP/CGu6je1dWRUKZr4MSG6//qQY=;
        b=pyEu+Csf4mYaBJl1p5agfm1TtfqIe+sBA0cZqK6oAfYoHCZR/zVfHe+7mkuh2yphWN
         pVF/Ed2kRos9gEAvGdU4wBa1opSv4FJ1Y/s/fjDatWf5JN5ECpkMAnIZKpnq3upCWH/C
         bPyZEtce5dr/oKDe3vdQUcychH1jE5o6Gm1eXEOqGzbyJEQ1lerJeCcl3qzGEsny0iH6
         4NJeGOBr6UQNEJtavn1z/S3Vvn2OmDByXmsdfyfZjxMbImSSQL3DWntTStL7nhCARGS7
         qI/mFCEBgrOGMZNiuTendHVLi3xyFAY8b7yYjMsunGyprvZCiFqZ7Ev+L6mB7H/nSN/M
         2HVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jFqWvK6aMy22rUJ9pP/CGu6je1dWRUKZr4MSG6//qQY=;
        b=nlYoKeHoy+pHqwZgXIf5OgEi9Yn1m+2QOUKLR5m9l3QbO189hcqJyu+gfMUtLEEuCH
         6KnT+Q1REze/csrXHbMXPLvpgr4CCqzPZo1ao3LMCnJ1pqx0g541Ix+O3XW0mFE4xsSo
         gv/i3pazUbwewS0jw3FflyIc6IMlMbQL+5dfaNCnsq1DgQg306vWgZDJqeAOKpJ7Th6X
         FnkIAWFDai4aVQl32vCjYSfhOx2XZQk1VFQleWBf6o5cFMrvoWEgmewTqlzZbzz/9qL7
         wGYBjy7GKY0TcA82DN1EWpus7IiMXE9fC/rc610WR5DBYmejJAKj+RNiUtPVtGbURQnz
         1tNw==
X-Gm-Message-State: AOAM532W5/zOwdw0wXkHvPw4KAKAGk8Oqqb1gxnhhsJUUel3FEuQgaZp
	l6W5BVZB/slUBOzP6+dY7c0=
X-Google-Smtp-Source: ABdhPJznotE5DSrgreFCi5GDuoPxnVLkgpK+MsPMVN3fQ8o/RyNhU/1qpGJxgSDooSHsnAxbsI/roQ==
X-Received: by 2002:a2e:557:: with SMTP id 84mr28057ljf.507.1629139547325;
        Mon, 16 Aug 2021 11:45:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b24:: with SMTP id w36ls1946859lfu.1.gmail; Mon, 16
 Aug 2021 11:45:46 -0700 (PDT)
X-Received: by 2002:a05:6512:3a4:: with SMTP id v4mr16652lfp.70.1629139546305;
        Mon, 16 Aug 2021 11:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629139546; cv=none;
        d=google.com; s=arc-20160816;
        b=RyrbS44H2NsjpgZxoWpGcYcDZu9kLzhfBlHx71RIeXkvDSYeUPnudz73awj6s6QQwn
         6iQm+MF28bzvRAjDq/c2DDS7Usbx3M5qHDKu4oZ+he+osrkRUj6jxKIWSUiTlApF7Nq+
         df5ZPNTEUXa+GH4l8UjGs9eYdu1EHtorUn930ceWUISSGuJVe8B4ICRiWoODzmdUWXG1
         xxwb9XrUTu2lXv/Dbgey8AeWFwXdsNleP0K+/AwjfgC5amYXaFwW7go5n7gFEngI3l+p
         o3ScpPrXP+H1OWgxbkpLns4KZpZ+bP3TsqoqOUTNiWxHO1hy3WJ/e1HCHD/shmXKapfK
         tdew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DOC2qH+Gi4fjMQIz9mck49PHMjhmRHhlBc5XPTN/slk=;
        b=j8Jj1PTz5Q/15+ymJFhYJEJuPIbfQuISEIUQRkfFuP+LkY2VV8HruAsHtIPZ9LcN2L
         503qr2jL4JpSRURbtjqvEQMSm4t7+Kg7clbUNCbQC5Vs22TVSkcdtBoHElR7hkfx4hCb
         lmUZQk2g6geMNrXJOXklLZGsZ95F5/J/B2hwwmzou753itPrQL8Japm8n0l4iqjUBkzO
         LDUCKlQ6Ayz9rbvZ/aDk88fdX2uor8XG6RyicuiVB91xmvKX16f8V5EPz1MoF/LvSpGg
         TuJ0HENBpiOrW+kV8hX+ZzqVzRcrlFftlLHi6zpI1bToTmXSzgStUhZN60gFSW/vPItT
         494g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dlWwzGdK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id t8si3221lfc.11.2021.08.16.11.45.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id i28so9679371lfl.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:45:46 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr16693lfb.122.1629139545812;
 Mon, 16 Aug 2021 11:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210814234248.1755703-1-nathan@kernel.org>
In-Reply-To: <20210814234248.1755703-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:45:34 -0700
Message-ID: <CAKwvOd=Oo1u9FsHUaMi-pnb=bM0QngYjhBnDU819aetO2OZsvw@mail.gmail.com>
Subject: Re: [PATCH] iwlwifi: mvm: Fix bitwise vs logical operator in iwl_mvm_scan_fits()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Luca Coelho <luciano.coelho@intel.com>, Kalle Valo <kvalo@codeaurora.org>, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dlWwzGdK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Sat, Aug 14, 2021 at 4:43 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns:
>
> drivers/net/wireless/intel/iwlwifi/mvm/scan.c:835:3: warning: bitwise
> and of boolean expressions; did you mean logical and?
> [-Wbool-operation-and]
>                 (n_channels <= mvm->fw->ucode_capa.n_scan_channels) &
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                                                     &&
> 1 warning generated.
>
> Replace the bitwise AND with a logical one to solve the warning, which
> is clearly what was intended.
>
> Fixes: 999d2568ee0c ("iwlwifi: mvm: combine scan size checks into a common function")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/wireless/intel/iwlwifi/mvm/scan.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/scan.c b/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
> index 0368b7101222..494379fc9224 100644
> --- a/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
> +++ b/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
> @@ -832,7 +832,7 @@ static inline bool iwl_mvm_scan_fits(struct iwl_mvm *mvm, int n_ssids,
>                                      int n_channels)
>  {
>         return ((n_ssids <= PROBE_OPTION_MAX) &&
> -               (n_channels <= mvm->fw->ucode_capa.n_scan_channels) &
> +               (n_channels <= mvm->fw->ucode_capa.n_scan_channels) &&
>                 (ies->common_ie_len +
>                  ies->len[NL80211_BAND_2GHZ] +
>                  ies->len[NL80211_BAND_5GHZ] <=
>
> base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DOo1u9FsHUaMi-pnb%3DbM0QngYjhBnDU819aetO2OZsvw%40mail.gmail.com.
