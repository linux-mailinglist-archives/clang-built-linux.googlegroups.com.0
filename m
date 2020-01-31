Return-Path: <clang-built-linux+bncBDOMFSGFWAHBBIW22HYQKGQEPICOWAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4F414F1F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 19:08:35 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id q125sf1851747wme.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 10:08:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580494114; cv=pass;
        d=google.com; s=arc-20160816;
        b=01EeVfd2St9z3fIMtqmASNPfXbWdLRB+0603Nd8fbRCotf5iGWRU9cp0a0cphg9/KK
         ISDxD27LEOA4cyOLRXgfWjKdjKkO/kNSl//ocXnmeaVMDtYa/5b7drxQTf093wF0Ahpf
         0lNfKfN8BUBxOOJDaAjjDLbCiNpynls6FezgRRespAqQBuPwcznH1T4CRFiiODKxS08+
         +DxxLmhaWS5qwJGyiUAz5jqOFw6MeVWQZRkYXl2xMSZgYHAQE+lSkFiYbse1KkuurQWo
         yddkPJKKULXHnP8jEsW9HJ5/ScPQOxZgAw8BFrqPdaRMeGAQjtZu0oljuRhoH36XilRd
         7+YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=SWqoXB35tQl9zgO10EDETeVXtGlltwfl/DJ8IqP8pPI=;
        b=oYKTCNUOtxI1OJOQ7GO4huiP1VLHTCUjRQF0FpY0ETheDiqMr07kkV8JAyErenueix
         WlslWq5ygImFZk/+mCYMJywNv4vM3i3+ltiqvmMYT65KtVqFXITZiiNutGF5b2fB7vkY
         +AUFeY8K7kMuLARDWD3asfbV3TaM+7xyNcKMDP+VoZb9325VuX9D5MLIimjDBI8OxDaF
         S1wF9UzTHiP0NBHtrZKbTHgbTN3OI0vvp2F0GdJcmIzLefhFIOQTVlPaZGrMc4Lgo9vI
         KJYt13enW48y0i1B6qUZiFpvhUP9ipC8gWSMRGjH9wi8xeqDNTuvf9mOdIHnf4hPDTnT
         mQ4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iYSfoyHT;
       spf=pass (google.com: domain of amit.pundir@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=amit.pundir@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWqoXB35tQl9zgO10EDETeVXtGlltwfl/DJ8IqP8pPI=;
        b=NULQlyeuNcJsqsxS51X8E05fYV1Thq2Y/biXjnrXtfSgKKV/7AWUfdQnRv6MnJpRwF
         EgyK7xEYiRTmzl5IZFY8Frh8xexAVrk2Ay/FApaCc0zsF5TJs4NNNOadNsrWZXj1/795
         KmXsPD0bErUWC9qkQ1d11fIs1t0JFGkbD4LEwxuDuOm3D6FCUNEnWnowP1FTQXcENLrK
         RsYT0Pjx7tRJ5QwTqWHsORa+ssNQ/NDf1h3UUuLho19UsvFLrceUMkMK4CyA3/4V3mJ3
         0PuaxU7pU9nlUBpP0ljdT3yAcStoquBscBspcWexGpKV8aYh6GlYYbbRAiHfeEYyZeWF
         vPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWqoXB35tQl9zgO10EDETeVXtGlltwfl/DJ8IqP8pPI=;
        b=Z8lrMq10iPB1NEZ9ckLPDeiJc49x91A0Mpzd9Dmm2uqr2MbWRg3cpRJMD62nG1iK4C
         MQbTLLmsM1d6A1hCZLOYtKKd+MiCxkcwGBz2Ucdr7Ep8o03OgDOSJcAPUXsIjuM/A+zf
         LQpWzcQk33RZxszEC4OF6AOfzrVICWOAIuVh7+BxpwsMhB+nvRYtyvNWC5AzhpeN2+Uy
         +GYIL+mdmfWtJSL5zZb3mOiSZ4zuH9Wo1VCKPaHxYjvBLXRe9KhsnnhPnDAWgTIX7mlh
         Hl357Bp3EcplRPaKdsJIG834QmQjq/4wksZ8XA8Ak7RiX4c5nSu97lmBhxNLCqy51DFC
         5S3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkWJVFFWGWlA06ip5q5bXgJWiT3U/8meLTetXuKFhZdwiZhL/v
	O/d7t/21QKIESgYSHiNrkqQ=
X-Google-Smtp-Source: APXvYqxxdMI+EUuMC/ZtPI4bIYBX546u1Bo4GUA7acpw4vC4ed4hEZRKkFVprBQB9domxCwuQ9CmAA==
X-Received: by 2002:adf:e683:: with SMTP id r3mr14176929wrm.38.1580494114785;
        Fri, 31 Jan 2020 10:08:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:247:: with SMTP id 7ls5958467wmj.3.canary-gmail;
 Fri, 31 Jan 2020 10:08:34 -0800 (PST)
X-Received: by 2002:a1c:3d46:: with SMTP id k67mr13853343wma.171.1580494114211;
        Fri, 31 Jan 2020 10:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580494114; cv=none;
        d=google.com; s=arc-20160816;
        b=fUNnBzX9HYfopqYVj/C3Dwj5Xw8GrU5Ozwu6jvlic7bqwPgBoHrUz41JKXWLn5OQU0
         y0jD5Ge9nKbIxLphMvmjWByj2jA1fppj/B0LjcLvGnVKFtqY47xizkDfLqc8pi2bYzyQ
         8puVWUqCve8mUCy4nNx7vG5SoldVdGEFua64ImT7UKg7js/a+IR9sZWHqwi8IUcdYtNS
         GvC7Gh2DR23EWby0o2/L97WtwNpi82AJoA2HrND864R9Zi+XOYYw60YJLmFKoUuCxd+A
         UaHCEvhJUGA9lCrTo4QfjTrksaPltlXo2RxXVWu7qngghEwTsRNx9E6ZAGx0otOg2T7C
         TXXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kYOKSEFF1BtF9aJwHzx6v8WXqAWKyMBvX++xdlfE4d8=;
        b=qTl+1VLPFYIh/cNZf0LTjU8LvkqQRcAB/dXv9r1uPKrIpOi8+TIQhCkBx5TX8p/HCC
         RC4Pdwrpi1rTikdvfy+GZ5qi+SuTiWBTbSdgT57wtb69zs2EqK5UYe6ZtQF2NnLK0z6c
         fQU/LEfS75oP13GHj9SJ2kSH+ls/a5OcjxGlwDWCuJ5i4W8ugcYRZhwWZFC03rPnJko9
         hYYXHmZmX7/PVQHGUpy2DVFwwFtK5DWlgTYxy+DhuTr6R+JcJwSyWMLiummdgfvQSG+w
         N0D2d0k7/fbhLOeWSABD/a4l8nMsue36dtcCqDL8mpQBlarDmU5LEt1Zbh6sl2Z0XOaM
         CWZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iYSfoyHT;
       spf=pass (google.com: domain of amit.pundir@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=amit.pundir@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i18si347896wrn.0.2020.01.31.10.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 10:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of amit.pundir@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id t14so9739358wmi.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jan 2020 10:08:34 -0800 (PST)
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr13239142wml.88.1580494113721;
 Fri, 31 Jan 2020 10:08:33 -0800 (PST)
MIME-Version: 1.0
References: <20200129201244.65261-1-john.stultz@linaro.org>
In-Reply-To: <20200129201244.65261-1-john.stultz@linaro.org>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Fri, 31 Jan 2020 23:37:57 +0530
Message-ID: <CAMi1Hd3bWmhSSrbYoM59LP5NuxJt2JWwiXBacOyNxpnx-73w_Q@mail.gmail.com>
Subject: Re: [PATCH] drm: msm: Fix return type of dsi_mgr_connector_mode_valid
 for kCFI
To: John Stultz <john.stultz@linaro.org>
Cc: lkml <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Sami Tolvanen <samitolvanen@google.com>, Todd Kjos <tkjos@google.com>, 
	Alistair Delva <adelva@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, 
	freedreno@lists.freedesktop.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: amit.pundir@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iYSfoyHT;       spf=pass
 (google.com: domain of amit.pundir@linaro.org designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=amit.pundir@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 30 Jan 2020 at 01:42, John Stultz <john.stultz@linaro.org> wrote:
>
> I was hitting kCFI crashes when building with clang, and after
> some digging finally narrowed it down to the
> dsi_mgr_connector_mode_valid() function being implemented as
> returning an int, instead of an enum drm_mode_status.
>
> This patch fixes it, and appeases the opaque word of the kCFI
> gods (seriously, clang inlining everything makes the kCFI
> backtraces only really rough estimates of where things went
> wrong).
>
> Thanks as always to Sami for his help narrowing this down.
>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Sami Tolvanen <samitolvanen@google.com>
> Cc: Todd Kjos <tkjos@google.com>
> Cc: Alistair Delva <adelva@google.com>
> Cc: Amit Pundir <amit.pundir@linaro.org>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: freedreno@lists.freedesktop.org
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: John Stultz <john.stultz@linaro.org>

Tested-by: Amit Pundir <amit.pundir@linaro.org>
Cc: stable@vger.kernel.org # v4.4+

> ---
>  drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
> index 271aa7bbca925..355a60b4a536f 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
> @@ -336,7 +336,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
>         return num;
>  }
>
> -static int dsi_mgr_connector_mode_valid(struct drm_connector *connector,
> +static enum drm_mode_status dsi_mgr_connector_mode_valid(struct drm_connector *connector,
>                                 struct drm_display_mode *mode)
>  {
>         int id = dsi_mgr_connector_get_id(connector);
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMi1Hd3bWmhSSrbYoM59LP5NuxJt2JWwiXBacOyNxpnx-73w_Q%40mail.gmail.com.
