Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD55VOEAMGQEGTRMQBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8EF3E07BD
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:38:08 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id p16-20020a0565122350b029030e2ef98a19sf1470041lfu.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:38:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628102288; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftM30G9MSgP+Ljwykf0WmNNjFvqLbfhFO2aX/lU+J9dXWJKUU9sdWZL+4Nn2cdKvgn
         2bhmusPgtJNeb0Y2+LR8fo0R3G5mD6eGNVIOw8l1xaICLvzTAA4r6AkL5C4LBtyVSvR8
         zdWifwXddwz6gO9E43DRr+/kw93AVUL2l+QVStDrV0eYu3n95Fo6a8C1nNwR+cwnwM7h
         kCHv7OXpT8CIzknFmdcbXijUahCDyi5vUS/zFZb2nn3DNxFb1MLRTfHT2b0cOHHXnLBP
         S4nOChK254VQPgb4PbBK3zue9aK6wY24R90uSA8TqAZ8aONSsKNI9tVSb3M8rqw6phOO
         WAQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=A+U1i7mogwwY7wA2oT4QpVNSt/7N7ma27zDKCVkkMxM=;
        b=RThXi1WIfbAsi+13d3yIbN8M76R3Yzxjz3VLqD/6WQ6JK0KmAlpgafwjMsTVlon3lu
         i3P5xvH19Ow4MhU6rIPxmmnKJ1YkW4/AdmrdS80MJ9tL+6anHjqK4GIihK9p3OE50H37
         x4Mquw3frbLDmR58l7iRjhNw1yGZf2wX2mJGZEhelVM5nyRzPxXviYUOct/S7WkF1wgF
         7Go1fo3JKfrB2uDUVi59hPVEc7Fcut1jIoN9MZNsWaPrLf5nEU2ajAhk7WMl9RjsWG6V
         eUiAANgUqmyA/67rOkYrJH4RW1T16y5kbn9juFycZZ0e3bE1U8Weu7CY4y7slU3GXQ40
         IB2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hL3kh7fJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+U1i7mogwwY7wA2oT4QpVNSt/7N7ma27zDKCVkkMxM=;
        b=Dr9MqGc2m8uDizL/9WIjQiRByAl1hfbjEyYVAy8t6+J298hWGvRdOA7eILot32el8t
         eiICTSaqCxuWHkladgghgJKBlEXpnL7o4vhjD+SUlf9EW0fjKoWwFNw9GIqYviw3ReqO
         u1P84CNSz0YfXY2ClkgtPxyhXZai/tB2OHdbL2pNzr2vWBFM/nAra6Mg4LFK/qXkJ/LY
         eUbMkJr6hbhYIJZC/ozGdW10XTwpzbUVSr0K9I51eF0doQd3YAWeIqnShdhI6LS46oFh
         b6PW9zgigLrd6C6LzIwZrtwT6RnynQu7IJOWlqkIF+UtSYd+47Y42FrI8UBmuLLtthoN
         PS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+U1i7mogwwY7wA2oT4QpVNSt/7N7ma27zDKCVkkMxM=;
        b=BcQEC6VtUQgINa1TEYh1ZKPbqU1i4uVko4m8eGglk87Ec+Bls6DKM+aPEbDaNKZQsg
         ZH07Rr16POB+ZOoZwVB7XnGf+L/n8UU3q0jN8AvS+H9z2JJ8GB88QQMvJbfYfk1OpcsA
         tcA9I1U6utr020NVtOOMBCo4NKL11P5nQNE/jdpKNtmTHx7G0ZyHqcsZpIy5GLKyAZdu
         ZNOi4BKUfhRtPSwNTVgDhmDqgtqkD0hzPpa2lenqPFZ10RpDwiPKdZ6On2zSXnIsfuWb
         Sl3hiqCF9r4cnpc52trh5UP4M71vCzWR2gYVt2xeKaaLBJ0H81E9T7MEJnJmD5pVZMwL
         Gf8A==
X-Gm-Message-State: AOAM5335+RsRyHoZdHXg1ttZMS3of5ktrgCkczhwKmmMYDuD593xtpMY
	EHGV8nRwUE62aK5ne2NGdWQ=
X-Google-Smtp-Source: ABdhPJzJyYR6zbAqxtqp5m3g/Kz7jz8XiEtP9hMbDxf+Pi/NTa+MfH8VBVSpNUpfCzx+V23HEcQ2tw==
X-Received: by 2002:a19:6e48:: with SMTP id q8mr443086lfk.449.1628102287844;
        Wed, 04 Aug 2021 11:38:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls2424229lfv.0.gmail; Wed,
 04 Aug 2021 11:38:06 -0700 (PDT)
X-Received: by 2002:a19:6e01:: with SMTP id j1mr432159lfc.407.1628102286854;
        Wed, 04 Aug 2021 11:38:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628102286; cv=none;
        d=google.com; s=arc-20160816;
        b=KI9nSNi5kIpX+i4RWV71jq3AGCUY8Z2XA9GWzEOEH5v4NAVssqgpH8HD6i93GUO2NU
         AO4Rx2blJUkhFoYR7NI8SQMQc8Gzt2MGCFJW8kJx7ZfCdByo8dfBGhhr1mIT+Wh+D82m
         CECHsXEnXT/S2jre79y7P3suv5LeMv/o4m+LXDTLE/vIjZR+7XaeBdXtup8nmiAQT03q
         3Nlj87Ii2Z/Ioh6C05gvMbAdm01WUNEWW6dUxns2E4gnOkUSjA0f3wR3riyujBA05/Pk
         qlu7VKMb0Ppeezh59MZhsqygdLx08+VH1h8zfDoUzI2BRqD6TTS65sup/N9j27FBIXX7
         uzJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z3rdKtAtmpUfyg0lATOCk0JofX75VMc/F9YVDgzTlmo=;
        b=d3g9Fe0WLDcGqpuJ8B7SPRcik3uYZA2LFn3AlD1p5/4gkZQOoV11zY02M4i+BOdbvJ
         CFaC0YOkbixs4oWH3nmxrFGladRQvw4vWYmTFy1R8ZfQWnfaNSo9lW3/3MB5if+FiYzP
         0S/sbIbuNPokmhKyJr3p7qYHD0LU4uj90fTY92ICsV6AKSe9unbDERcGnr4zrMMxWN07
         Xou/uF3JqCCXrKLhTKwMjyuSwaRAPWFjSc02ZLZpErv/fX9OUBm0kf8VsojEMTDsf5Fp
         LrhfS3ZR2G4VXadtPnamWTeokcAJKd6VUCJsFIwA6rmoC1krEcoDSRy6ggZ8gzB6i3dG
         E7nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hL3kh7fJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id g15si155440lfu.1.2021.08.04.11.38.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:38:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id f42so6054946lfv.7
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 11:38:06 -0700 (PDT)
X-Received: by 2002:a05:6512:2215:: with SMTP id h21mr413449lfu.543.1628102286318;
 Wed, 04 Aug 2021 11:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210803223609.1627280-1-nathan@kernel.org> <20210803223609.1627280-4-nathan@kernel.org>
In-Reply-To: <20210803223609.1627280-4-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 11:37:55 -0700
Message-ID: <CAKwvOdkehOWitL+o4s2jWiPk0eTmcjrntiw2rLbpiGynTqSfRw@mail.gmail.com>
Subject: Re: [PATCH 3/4] staging: r8188eu: Remove self assignment in get_rx_power_val_by_reg()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Phillip Potter <phil@philpotter.co.uk>, 
	Larry Finger <Larry.Finger@lwfinger.net>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hL3kh7fJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Tue, Aug 3, 2021 at 3:36 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns:
>
> drivers/staging/r8188eu/hal/rtl8188e_rf6052.c:344:13: warning:
> explicitly assigning value of variable of type 'u32' (aka 'unsigned
> int') to itself [-Wself-assign]
>                         writeVal = writeVal;
>                         ~~~~~~~~ ^ ~~~~~~~~
> 1 warning generated.
>
> Remove this branch as it is useless.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/hal/rtl8188e_rf6052.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
> index 335b120ce603..77889dc05858 100644
> --- a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
> +++ b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
> @@ -340,8 +340,6 @@ static void get_rx_power_val_by_reg(struct adapter *Adapter, u8 Channel,
>                 /*  This mechanism is only applied when Driver-Highpower-Mechanism is OFF. */
>                 if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT1)
>                         writeVal = writeVal - 0x06060606;
> -               else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT2)
> -                       writeVal = writeVal;

Hopefully the author didn't mean to subtract another magic constant
like they did above. This also eliminates the last use of
TxHighPwrLevel_BT2, but it's probably ok to keep the define in
drivers/staging/r8188eu/include/odm.h.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                 *(pOutWriteVal+rf) = writeVal;
>         }
>  }
> --
> 2.33.0.rc0


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkehOWitL%2Bo4s2jWiPk0eTmcjrntiw2rLbpiGynTqSfRw%40mail.gmail.com.
