Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7PF5KEAMGQEUTWB37A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 042DA3EDD4F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:48:30 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id u7-20020a2e2e070000b02901b56dc35bf0sf6343695lju.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629139709; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z5oWjtrQLzX3SuzwguvxOofN6g735WadjOxgvdADq/hw4EpGCghMC+KEXof24+U9vs
         J/pYQtZOHnJwMCgBVcOViKpoIbS50Riz1AjcwbmbG8ozglEv9Z2fbyOPK966+BozM2TY
         qzXLJfJLkgVPjUDZkYnMMeOTRfaBmMu0WUZAF8vD5SWWW10Qth8UHpLRbqH2+583XsKC
         Ux/ejZmauZF+Dcrx9Jhc6b/55ryoBG7hElR7KLbea27J9/9e+Pju1mPXE/RKjrQUDmob
         6YYsRGTRwAFw4D2LoaxUiCkQzvKmVBKJm04IFqeWCc15QObgw/iZptduHA21fRcm8qNf
         K8IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xRnvDWF3JgfA6guW9vsv1O/o/FB76wftp39jn8MoTeE=;
        b=HcEziSarMG/OZPAUj7/RkW9vgSi2vgVeHONfOlUhRlTp6FXnkkqqTtQ/0AYLy2Y4X5
         X9WyNKe3ozsIC1DGPkXqhX/Qndr9vm5MG8K1Ibxbqg0S1uVajCRyZ/UsTu0+djT6S/Em
         ROPfb3zQCL1G2vEeXfVBsLpRUoL3EJxtUwP6F58qMwhjY4U61xPXzWEXr4LU1tAbAvVS
         JQ1f59sH/ZEceBxtolPcO342QITS4mvzXUPZ+iMW7Txg1lSgYfCMxLtSKJJ7GM/RPLYa
         SDRbJBDi7H2RQjhUw59agTJjloshB63DLJw8tJeVVOZnkDpjigZwkO83LLqAZ0tv2cCk
         Kizw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A4/F8buH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRnvDWF3JgfA6guW9vsv1O/o/FB76wftp39jn8MoTeE=;
        b=PkbeuecY/YEQqYKKEHtyeKGVj+Td5REQjNjJ+6JEy/L/XUpKbteu6ANDTa6U/bpNNc
         w98upmuWl8ZzWu8+KOf3lSdOs5bbao6FVecKQIOEwttC1ScEHf2lqrwZHR3JClvxfQBT
         YlmzFV0jvfKF7V4RQp7zzPwE8vF23XQsypFduACFtspYX9xLboT9zwlpDk1JxMQwrEyL
         qL6QsGU71kBmBWclAYFfXOFcu1u6gwFdEL/J+HI4Q9BngPSXmduO/cJGC57atbov9Hes
         pgyWcUrrOKWP3VHr8ykb/vDv1TTbphaSMdArASlJr4DCMK+RB1AwdlkafGzLxFI2MUdy
         xaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRnvDWF3JgfA6guW9vsv1O/o/FB76wftp39jn8MoTeE=;
        b=GrV2tgUe5szmCbCkvZrwZalgPhGKnxeu0SjPCqQ971iOnHRrK1d6pcXejjRLtmkUul
         Sic2huyKgzC0YIq1XakkHRoNSsPKpO2BToFlidtccki7iKUAf7tQb6qqRKq6mrCKxf7N
         ai3EPl/FRiosFmRgxzFuv0uQmKNVTYw4gl6MmZlrRcov1hJrlK30B7s1hXhCBIyV2t5d
         Tab5yCCwgSNT2wsWRnAKN0mp4G3M2pN90ngeIXvnW+OV/wWMe6V3kRs1HRdIElT/LToy
         vlWl2nXup2cY/6Y5FvLT6nWt60NMgPv9boFG46/KtXluNU1pJPMO0QBvjxkIHnzSIFEY
         g4/Q==
X-Gm-Message-State: AOAM532e4GTjqwvC0IYCyj/qctBdCmXN+A8+GO0ZAXbVZBVH6oS/cRMv
	t6lFVVtCMONRrI2Fv514v24=
X-Google-Smtp-Source: ABdhPJyWitqZo4knA5adwHXmEWsgMno8Nsho8iJyKyJObrI2jHccaScJtMItM/C47nFZMdLWm6Exzw==
X-Received: by 2002:a05:6512:1042:: with SMTP id c2mr12860752lfb.283.1629139709562;
        Mon, 16 Aug 2021 11:48:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls1950716lfa.3.gmail; Mon, 16
 Aug 2021 11:48:28 -0700 (PDT)
X-Received: by 2002:a19:4901:: with SMTP id w1mr13119749lfa.323.1629139708677;
        Mon, 16 Aug 2021 11:48:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629139708; cv=none;
        d=google.com; s=arc-20160816;
        b=IVy2+cYCs77Vm+oZe4R4bD01dnkd5TbYTwkxi7upUzjxWsssai7+viPoGPBcc4ctZl
         ARTIoujquwB5RapNsr6ePQnKLz9TocxJ2Rm+Vtk1JnvzhW2v7MQ4+5QDMtlNaTNb1eLG
         8cPKUZY6xdpw3a37TwnD23+oSbjdHTc+HNrX7bREBUMQJ5PnJ4ndrgfqqlrZLxrBC13V
         sLfmxuKkOPb9HkhKbuJyAQwGCboOBeYr3YT+ubi69KJD+9SpjyU6SENCCUO2ZyyTzMTS
         F/qQQ/jWqNXgJl5ja25DRGkETDCSp4hjSl/G9Ef8I+oaPa256Tlp0J0H94eP3D7yDFac
         Hf8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OzlvgX+vzoKG9kFQ3t7nTob1GcVIUZUb5mhb/Lw1pbk=;
        b=c/gP4w4Stfv9wSdXH/FrQRMCsxA2wFUzH+1X4yxRtZpS2gl8PNFEK8RrRfrI1DRoSL
         LFk3K7zraBnmcR5F3fgoGrOOGqDRhU0nBbvXIXjaGfd3FEkcLcRGDQa59ztNzf94AXPv
         3RnOBzCfuhzV1qmvhJ5QjBpi8nzTomBeP5+gkyyy0vWnF9lSUR9rD3p6R1s/E7Zd5pIK
         xR3bbmBBDjORJ+FMRDjDR2AkxpKuT8Us1FIfj41k5rOBa/o2W+cdQjAhV6kM/OEVqgBE
         G6QrySfM0XqxKh4qLS1tvxfIvKKsSsy0Et+WQ712pOCYsIvdjNRzJokp15Py5J/32aDE
         qd2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A4/F8buH";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id v2si4263ljh.8.2021.08.16.11.48.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:48:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id h11so28673493ljo.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:48:28 -0700 (PDT)
X-Received: by 2002:a2e:8109:: with SMTP id d9mr37188ljg.495.1629139708138;
 Mon, 16 Aug 2021 11:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210814235625.1780033-1-nathan@kernel.org>
In-Reply-To: <20210814235625.1780033-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:48:16 -0700
Message-ID: <CAKwvOdkVP42MeA7j=ppjJD4-jgC0pcTo6xbPhsOT5mT2DBPW3w@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Fix bitwise vs logical operator in TranslateRxSignalStuff819xUsb()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A4/F8buH";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Sat, Aug 14, 2021 at 4:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> clang warns:
>
> drivers/staging/rtl8192u/r8192U_core.c:4268:20: warning: bitwise and of
> boolean expressions; did you mean logical and? [-Wbool-operation-and]
>         bpacket_toself =  bpacket_match_bssid &
>                           ^~~~~~~~~~~~~~~~~~~~~
>                                               &&
> 1 warning generated.
>
> Replace the bitwise AND with a logical one to clear up the warning, as
> that is clearly what was intended.
>
> Fixes: 8fc8598e61f6 ("Staging: Added Realtek rtl8192u driver to staging")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index db26edeccea6..b6698656fc01 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4265,7 +4265,7 @@ static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
>         bpacket_match_bssid = (type != IEEE80211_FTYPE_CTL) &&
>                                (ether_addr_equal(priv->ieee80211->current_network.bssid,  (fc & IEEE80211_FCTL_TODS) ? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 : hdr->addr3))
>                                && (!pstats->bHwError) && (!pstats->bCRC) && (!pstats->bICV);
> -       bpacket_toself =  bpacket_match_bssid &
> +       bpacket_toself =  bpacket_match_bssid &&
>                           (ether_addr_equal(praddr, priv->ieee80211->dev->dev_addr));
>
>         if (WLAN_FC_GET_FRAMETYPE(fc) == IEEE80211_STYPE_BEACON)
>
> base-commit: 0bd35146642bdc56f1b87d75f047b1c92bd2bd39
> --
> 2.33.0.rc2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkVP42MeA7j%3DppjJD4-jgC0pcTo6xbPhsOT5mT2DBPW3w%40mail.gmail.com.
