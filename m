Return-Path: <clang-built-linux+bncBDJIT2UJ64IBBGU722EAMGQEMCIJA7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BEC3EAC4C
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:16:11 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id 16-20020a17090a1990b0290178031dca45sf5106084pji.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 14:16:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628802970; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzxEIebSXIE0hY4gYs7y+UD705jic2l242+AibC6g4lOEpn6xsygP5y1KnM4XvcF5M
         3zOnCTCDOe5Q/dKfg601CcKlnhsnR1/Z2E+FPe4E+P9SDm/g62Cm5j7a0zdJ4WV1LBVl
         eBIeO9Em7zIdhGKrMDx4Ih7LvHDhIAh2vPI07a501rqdXX4d66ZuYzDqd6NAf1inUnqE
         g41UJx+nOzPPww/VWp8lFjVyjrwEqyGscfToVsLuEhefdX5ih9tWxsEbT9X6cBO5jhct
         i2cF+7gDhN3jOLctbzBFQ5RiIL0m+OfLd6NQRc2ZQ5215clfaFOUhtOO+TnAywHg8HWp
         3eXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uuFpwuLeytoBlU+V0wyYL+DgHf4/+bah8KFWw7kGx/4=;
        b=hRcMWhYhlADaf95JHeVzLZ2cOUpGBA5G/a5gKLiWAVTg7MpIlUGkaA3Z37XRXve5Rp
         U2khmOwxUtkBgK3Z5bLItaJHU86Zi3lxLXq94r+Wno35RKHoIy0A7QVgK91Ti0KRNHdh
         64fhxY+ZZDOW5CfyIurk0SLneWPSzOTSZfBx9q4pOrEbm5Juvq5Mw3DUyixLDbkDiCG3
         ctkgQxB7fC4/EwCJbRLEUAGVzOWW693HU4rjQDTgbUNyH/JGE3u8riWLT+5PFVUGY09Y
         M75NydJ8ppknb091hv5S+xdZTEPW6HG+NC5pPloN4zC9dqwbhtzLjH4+hMHHPhEFM7NR
         oHow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=rYySSj0V;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uuFpwuLeytoBlU+V0wyYL+DgHf4/+bah8KFWw7kGx/4=;
        b=IHkI6dV11FcIyZkHnvzRxvmESS5Wqk4F0EKmUwJkG4jEC162e98whUqp54eQSUEKZt
         wmcNTeuOBRU7IIA20QB5T3Uz4cguhm/RSV/9XXjllE5G9oTKZ5/aZ79KWIpio9bf/HO4
         mE2chIk8lVnmk3qF/IBEhjY8QMB+77tzPFJr08Xl/O2U+qmfNJjJpDYx/YmOQV8r/YIl
         +Hj/BN7HW02A4E43eo2CYfvwzmkYvGiJaE3V+jwKVJhvdyQ43ms2iKD0QMKQP2sI2VJy
         VFoNEcXaw213hDU7iMT9eILKFnc8ElNDwCi+GDPmBrzVpv01WcFWONmEyKdGWA4G4BAJ
         G/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uuFpwuLeytoBlU+V0wyYL+DgHf4/+bah8KFWw7kGx/4=;
        b=WymBnlAoqWltEcb/io8MFJISgcN9r5++Ut7vPaZGR9iBA+M3bQZ0XR1MRfJhycdfUm
         Jq8k6M9h7504TmWG8bnLHdnnhOVpBiwN/pbEqgQPOCr9BTJnBr1a/KH//L09QzXKgvpK
         X1IBx3KyOkLdCnYGG95hszHWLtNFlFmfzM27kXDG/28vcDGUTmKf4Q7SOzvFnUYmv/ao
         FNSW3T9FURPHEsHt50fTLbmOL0HfxcX/GG8A18FQ9vUjNc7NCCUjyuOPYLWmm8edApM9
         Y0z7Virr78ViKUVZTRyy9hNFOfM4lLKcAtSNqG9aVQ/5TSwRFBD3w2vsK6K2+rr2q+v7
         eJvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aa1fvesYCO6qw5z20N288QqT/NNK5bjn3MHF5kCQqHE6JBIJm
	jWtmrh0oduK+6J3Nc64JSs4=
X-Google-Smtp-Source: ABdhPJzm49STEqRoqe6uV7U7oLdsMIDpBFYVV+nzvAVfiby8Jmsd8eIRW3LhjZ9PCyQWRZ34Ys3RZA==
X-Received: by 2002:a63:3501:: with SMTP id c1mr5519545pga.280.1628802970566;
        Thu, 12 Aug 2021 14:16:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls2890436pgg.9.gmail; Thu, 12 Aug
 2021 14:16:10 -0700 (PDT)
X-Received: by 2002:aa7:88ca:0:b029:3cd:cc14:9fc9 with SMTP id k10-20020aa788ca0000b02903cdcc149fc9mr5972408pff.80.1628802969865;
        Thu, 12 Aug 2021 14:16:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628802969; cv=none;
        d=google.com; s=arc-20160816;
        b=1ECNNoFD6AQepX2kjRmL+g3sFoU0AL5OacnNhx8hMtmY7Dv5qYR1zNvGQvQCy7Zxjl
         8IpK9OuBDZYWbEb6UbJSDHGqUj/vHTlhzsYNjQfF1f/rDmqdgyTeW1hTkqWlqfOsgWml
         O5i8BUpKGADM9xgMhjwwEj4lW06EyEVqcQ5yWBGp2glWmAFZz7aSNEKNwT3KB5Bx/AN2
         9OoyNbOGRxR1fV1TbpX6AF/ZLxbMDBaOWOybnVg10LkvvjbAJT8W+m0TUWrtMW8JXkAs
         r5s1XUcJFXRMu+zwYI7213eTzDwJH8WjOVVqLPPC9S6dWxTII8y8eLcnd/lzw/YwHk+W
         piNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WyarTx/bV9rblC65snb3qvytdBQ7XGyyP0s6efBhIqA=;
        b=bWyZdz+4Odo+pV3pBPEKqm+VJmtMWbAXgj5ElnT3YyQb3s4wFW/xyewuPi1bd7VLQE
         WDjLKmuL4AsXIhpFFYy0I3wgA3w/M1/mIVXdXZzLR9r7gqdulH4OjOgnW1Y3MaFXBMLw
         t8valu4PRUkygn4IMwQ4PYHWb0J9hTfdexs/IollgoXBqsUzlayof3xqmkNhrpyvL969
         46maTJoI+CjmWp/6JfWDDOMoFj7PkVuNHTpkUeWEDVnq0lF/0GVO1x3JqLUN9RNBG6sT
         Vj1gMrBYR4RgWC0jirW6fzwL0MSZQ0wDF96LcSaonel4e8N7aUfJbvmLS4wrfbA2m+lm
         XRgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623 header.b=rYySSj0V;
       spf=pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id o15si219651pfu.0.2021.08.12.14.16.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 14:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of phil@philpotter.co.uk designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id e15so9043767plh.8
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 14:16:09 -0700 (PDT)
X-Received: by 2002:a63:aa43:: with SMTP id x3mr5645795pgo.208.1628802969580;
 Thu, 12 Aug 2021 14:16:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204027.338872-1-nathan@kernel.org> <20210812204027.338872-4-nathan@kernel.org>
In-Reply-To: <20210812204027.338872-4-nathan@kernel.org>
From: Phillip Potter <phil@philpotter.co.uk>
Date: Thu, 12 Aug 2021 22:15:58 +0100
Message-ID: <CAA=Fs0k00kWr-e+40uMVQy9gNfnYy+znaQ4OS5XqE4ouc4fpmg@mail.gmail.com>
Subject: Re: [PATCH 3/3] staging: r8188eu: Reorganize error handling in rtw_drv_init()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger <Larry.Finger@lwfinger.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-staging@lists.linux.dev, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: phil@philpotter.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@philpotter-co-uk.20150623.gappssmtp.com header.s=20150623
 header.b=rYySSj0V;       spf=pass (google.com: domain of phil@philpotter.co.uk
 designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=phil@philpotter.co.uk
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

On Thu, 12 Aug 2021 at 21:40, Nathan Chancellor <nathan@kernel.org> wrote:
>
> After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
> that silence build warnings"), clang warns:
>
> drivers/staging/r8188eu/os_dep/usb_intf.c:726:6: warning: variable
> 'status' is used uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>         if (!if1) {
>             ^~~~
> drivers/staging/r8188eu/os_dep/usb_intf.c:741:6: note: uninitialized use
> occurs here
>         if (status != _SUCCESS)
>             ^~~~~~
> drivers/staging/r8188eu/os_dep/usb_intf.c:726:2: note: remove the 'if'
> if its condition is always false
>         if (!if1) {
>         ^~~~~~~~~~~
> drivers/staging/r8188eu/os_dep/usb_intf.c:714:12: note: initialize the
> variable 'status' to silence this warning
>         int status;
>                   ^
>                    = 0
> 1 warning generated.
>
> status is not initialized if the call to usb_dvobj_init() or
> rtw_usb_if1_init() fails.
>
> Looking at the error function as a whole, the error handling is odd
> compared to the rest of the kernel, which prefers to set error codes on
> goto paths, rather than a global "status" variable which determines the
> error code at the end of the function and function calls in the case of
> error.
>
> Rearrange the error handling of this function to bring it more inline
> with how the kernel does it in most cases, which helps readability.
>
> The call to rtw_usb_if1_deinit() is eliminated because it is not
> possible to ever hit it; if rtw_usb_if1_init() fails, the goto call
> jumps over the call to rtw_usb_if1_deinit() and in the success case,
> status is set to _SUCCESS.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/os_dep/usb_intf.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/os_dep/usb_intf.c b/drivers/staging/r8188eu/os_dep/usb_intf.c
> index a462cb6f3005..667f41125a87 100644
> --- a/drivers/staging/r8188eu/os_dep/usb_intf.c
> +++ b/drivers/staging/r8188eu/os_dep/usb_intf.c
> @@ -704,20 +704,23 @@ static void rtw_usb_if1_deinit(struct adapter *if1)
>  static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
>  {
>         struct adapter *if1 = NULL;
> -       int status;
>         struct dvobj_priv *dvobj;
> +       int ret;
>
>         /* step 0. */
>         process_spec_devid(pdid);
>
>         /* Initialize dvobj_priv */
>         dvobj = usb_dvobj_init(pusb_intf);
> -       if (!dvobj)
> -               goto exit;
> +       if (!dvobj) {
> +               ret = -ENODEV;
> +               goto err;
> +       }
>
>         if1 = rtw_usb_if1_init(dvobj, pusb_intf);
>         if (!if1) {
>                 DBG_88E("rtw_init_primarystruct adapter Failed!\n");
> +               ret = -ENODEV;
>                 goto free_dvobj;
>         }
>
> @@ -726,15 +729,12 @@ static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device
>                 rtw_signal_process(ui_pid[1], SIGUSR2);
>         }
>
> -       status = _SUCCESS;
> +       return 0;
>
> -       if (status != _SUCCESS && if1)
> -               rtw_usb_if1_deinit(if1);
>  free_dvobj:
> -       if (status != _SUCCESS)
> -               usb_dvobj_deinit(pusb_intf);
> -exit:
> -       return status == _SUCCESS ? 0 : -ENODEV;
> +       usb_dvobj_deinit(pusb_intf);
> +err:
> +       return ret;
>  }
>
>  /*
> --
> 2.33.0.rc2
>

Looks good as far as I can see, nicely done. Thanks.

Acked-by: Phillip Potter <phil@philpotter.co.uk>

Regards,
Phil

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAA%3DFs0k00kWr-e%2B40uMVQy9gNfnYy%2BznaQ4OS5XqE4ouc4fpmg%40mail.gmail.com.
