Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOE6VPXQKGQERPOIX7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 234631158E1
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 22:59:22 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id b15sf2634436uas.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 13:59:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575669561; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+K68YphC4sr0+3YBb2MwtR1b5MO4DNPBQrUpYsOWBzypAJX87K7BXHtz7CRBXx/np
         wrjHMJo/RMYbqAoRuAvh58tqzln9q+eBSuhw3CWdSga3+9D2gN2jo1NpYrv8su2zPtoP
         Ec/frezGYqPw7Z4koYlZdfDfuFxRqMYCo0R4pd6VX9i3CYkJTbq4l+vUTLlRu9XmNjLH
         BMO87UX47U2z9vdAzX2lvNGbHGP0L/cmfaD54kW1SMszVG7ksVEgQeZUsZDgKvLrnDt9
         l3E3e3RljptS8YTZO+Ku6AnOG+oaq2Q7337gHWutbjNK8zz74T/oH2fxuFghaHxchmFc
         0Mdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Bul2oZjsJipqA+h6iXjwMjlPIbV49vlsPmIVpsQynnM=;
        b=RzMaJP+tUnPVI9Y4RPYhtoXpXioYE4tyLbWJXhTMTePcfieVByT/1Qw+7mPkkz3Fpk
         lx87SpNvMfQmmbNaNL9p/CY4mmIgli4EyGsPLD1L69trV5Tz+AcvvFcZda188+wijbxW
         CKEEJadg7d3X6LPCvL8K1VpwJQ4yR2rrZlcqXoPhbr2C+sUf8EtZ4JMLy4kSRVV0kTpv
         3LcBowhIZMGVbrWGQY8aRm6DhRgK3xbemNcy5PKv6D73/zuvGtyWM8X2miByOdHK8sAu
         fz9bH7ZP9kxObUnFahf9zvxxlZlwqjwkc0GupynPS1J5RFHoIvuu1P3UjMviUwGKK6JA
         7D0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EzYr1iSS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bul2oZjsJipqA+h6iXjwMjlPIbV49vlsPmIVpsQynnM=;
        b=nACJajpP3rd10Yy9aIIRlQIttBiMgF+dncoUMvbP0tiJlQBoUoZUvf+d9YzfEIinbE
         WlJ8f9I8GSehrZXmspV5SlAG2Tk4rnFdjdS+gVBR6mmTi3G0ulWcJSG1VcqS6e9Xk46O
         oS/evzFTWBb21c8UJfyWMlcmFCPbXPsGtTNChM5xQXqznuZAs5ySmVml1IRInJT+z8fU
         CthFoJTcYCDQa/bVTn+Sa08frODMFJb4DuqFvnOFTheNMl10ZAbJoGCfuMQmL0g+lo/a
         TI5ul4ZaSapYZfD/KIQVC2tYWqz6Wq3BPY4vAh4jXeQxbjoNW+VDfI7XOjtAKnWc33/C
         AKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bul2oZjsJipqA+h6iXjwMjlPIbV49vlsPmIVpsQynnM=;
        b=kehZLk84UUqyhxg0S8mH8w3+cwx0WRUNgKBOqbxkK8I8t3gD4jogKiT4kDbXg0RJOv
         V3TU9hM/Ni42vMrtZ1ChrkR5HwIxcZYkWijk2+lb403abhP2gxda+Wx1O2Dhc+U1wzuC
         MZkx3mTe98CcKyFyP4L/WcJK4LWZ3Vt7ZWjanxrYsoCLLJvSeDZebWQOjy481UsIj/ax
         ptS0bxiJ0sO8H2ix+xVXJCqieUkn6C1L4rFxkRN/TneoBecz8ESSA5ABI6QICkFVWLJw
         gXJ/DOZAHkJ5qetv4+VH0zaHlYnhfKQPCYOL9coYtSza5PSzUgpKNcaBf5OSXqhLfSTc
         PFGQ==
X-Gm-Message-State: APjAAAUjmrE/jWmBrUou4ymPA2lnMs8rdpJNkJ2dfUsa/V6qUiPNAyL5
	Kp86cQGdcVzuJ8qOMuK1jiU=
X-Google-Smtp-Source: APXvYqyI3LZCWGsazAqZhvgPpt8PUoSJB8BhJlrVAa2XbGIXVIziidIdi4lIlgPNvyDtqL11wRQTRg==
X-Received: by 2002:ab0:5b9e:: with SMTP id y30mr14612590uae.117.1575669560875;
        Fri, 06 Dec 2019 13:59:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2eb0:: with SMTP id y16ls693215uay.11.gmail; Fri, 06 Dec
 2019 13:59:20 -0800 (PST)
X-Received: by 2002:ab0:7559:: with SMTP id k25mr14143456uaq.41.1575669560420;
        Fri, 06 Dec 2019 13:59:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575669560; cv=none;
        d=google.com; s=arc-20160816;
        b=Tm8cw9IXv5uD6uH/Pc27tRHOlIlVUVjC1F7DM7WIRTm8kkTwA6tEvWPBCqkLBYATjx
         U93aJ31JlYCsM/XS2uEg2JxXWA8vRQiBVc4sEYvdKdyMU8qjYrtaXlvs1jmH0iObsbAC
         LJYrPGqBMuJx+ld2v23FZjmSQ64nIk2wjrrNd+iNBGvp/OJQHK/Q89sV8xkpsPycXF6B
         yU0488KKgT+4iUjR4jI97Zeow8nvwOUAGeVGsqHROh4T+GiroSUcqxX9xJiTsuqo4cUy
         +M5Lr1DE4GRfkiYbnrYudNUrOhyO2jXBnyL3ZkbPY1u1izdzg/zanxePPiWb0Y2YOL86
         Yw5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QRBpOBKrG8bdYcDSxvL4Ncie9tUQ46zSSXSNCQ/ptww=;
        b=ryRyGuKMWdvnRLZLZLJ5y5g0ic+U0802BdIDGdha+4P27qKtsf++jD77epSSXyOEG9
         QBH1oc3218EbALmdc0pHUT7AeATQ+g2x62oVmaYcYMIglrIXbqQZYZRaJ0uYDtDYzbGv
         1gOzso4P5Bh6Capk75t1EqGZplIKjB5gJPAScesQoDdcSegW8JKDaF818ZbcA3rLFF97
         vJEysO/NSKgbxYb0/CMShaP4/qu07uOw2rEnCfw5LgO+zHz9EwEOLlaby1zySaTNnrYM
         LY6t+axChVlVs3exjjj/1EyaaDz4xqZJUTHVDJLs0lP4Ers8LZmxFpIKw+9fjN+vm6X/
         l1aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EzYr1iSS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id i27si721069uat.1.2019.12.06.13.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 13:59:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bd4so3273176plb.8
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 13:59:20 -0800 (PST)
X-Received: by 2002:a17:902:9f91:: with SMTP id g17mr3377709plq.179.1575669559051;
 Fri, 06 Dec 2019 13:59:19 -0800 (PST)
MIME-Version: 1.0
References: <20191024201240.49063-1-natechancellor@gmail.com> <20191105045907.26123-1-natechancellor@gmail.com>
In-Reply-To: <20191105045907.26123-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Dec 2019 13:59:07 -0800
Message-ID: <CAKwvOdndvDuOFtPrdSuN=1nRpbc-T9qHKzQoVZ4JaAedKe9_SQ@mail.gmail.com>
Subject: Re: [PATCH v2] media: v4l2-device.h: Explicitly compare grpmask to
 zero in v4l2_device_mask_call_all
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EzYr1iSS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Bumping for review.

On Mon, Nov 4, 2019 at 9:00 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang + -Wtautological-constant-compare, several of
> the ivtv drivers warn along the lines of:
>
>  drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
>  result of '<<' to a boolean always evaluates to true
>  [-Wtautological-constant-compare]
>                          cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
>                                          ^
>  drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
>  'CX18_HW_GPIO_RESET_CTRL'
>  #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
>                                            ^
>  1 warning generated.
>
> This is because the shift operation is implicitly converted to a boolean
> in v4l2_device_mask_call_all before being negated. This can be solved by
> just comparing the mask result to 0 explicitly so that there is no
> boolean conversion.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/752
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2: https://lore.kernel.org/lkml/20191024201240.49063-1-natechancellor@gmail.com/
>
> * Fix typo in commit message
> * Add Nick's Reviewed-by.
>
>  include/media/v4l2-device.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
> index e0b8f2602670..8564b3227887 100644
> --- a/include/media/v4l2-device.h
> +++ b/include/media/v4l2-device.h
> @@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
>                 struct v4l2_subdev *__sd;                               \
>                                                                         \
>                 __v4l2_device_call_subdevs_p(v4l2_dev, __sd,            \
> -                       !(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,  \
> -                       ##args);                                        \
> +                       (grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,  \
> +                       f , ##args);                                    \
>         } while (0)
>
>  /**
> --
> 2.24.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdndvDuOFtPrdSuN%3D1nRpbc-T9qHKzQoVZ4JaAedKe9_SQ%40mail.gmail.com.
