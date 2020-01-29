Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77ZY7YQKGQESSCSOTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7814D2AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 22:45:37 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id 39sf531598otr.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 13:45:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580334336; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZeLnbItTUoU8bo6fO2WwNjrtfLcC2uwPk3up4ppLblV+PrW+Pyc6yYJa6dhiyJMY4d
         UbIkZkAxx6Rfz/Zz4z+Tp3mjKOES7KRl+5OqQgNw0YGBYMpcmwRJs9Y6PX4dWsLMgxyB
         HGaCsmTNGzNvCG/gT8gacXWkWDTsAyk5s90/BbLlNLZLWCN7zMzOHlPDMiQEZuwsL2aF
         eBH53kA7pUuOZM3rQGQuAOG4wfbpzAoXjWUjiBqMIAY+JLiKYlFZ5oHl1Aph34JwcEa3
         r6S1efY2veVVJWGEwoXdjcbZaQcpcqnMX9VoAT+oefH4v7f+lWxPifHN+FYTUHW+ULI6
         b0Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1bnkfCqi1jo8HZDxzLt6asckUNo5mI2pkz+Clgy5yQM=;
        b=nw3EL1WmD442bfeQ2Ies5sdpI90dqYttuFld+P7RIpEZcyBObJODRKytF3LRMyFwtB
         M1LHRA33B9UgNOnPXv3p7LpH1fmA3a8q6tRrcwpJaAJyuiRYFsbc0qvfpgmo0RX4D3CH
         3wWRI0eKZ2E27ud3vXKA7NNn5dLnYknSIJt6W0R0/c7wu3gfdXSpDW1Q1ZfByx/mJjwF
         qL7riQylsNS1+vdWd4RyGcbNQ+1pcZ2yErowcKfe8DkCFZdT5m2h25Znwo5cxLKEeH/c
         43dfIsWnnFjklYXnHffUowOJzDNT9976QiKAxaXtcNT87Flw46Dc0bDO9pxa7O2havuI
         ixgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZwMaTKzu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bnkfCqi1jo8HZDxzLt6asckUNo5mI2pkz+Clgy5yQM=;
        b=HVjewdvNTB1bECqF+Q0pWOR90HEtcuej5jnNwEzDEORxtzxMMtBxAVr2BAPgi2D1/7
         ZMZYZYLmbQuOcdEWeozibY65w89AU/1TOJ0LcePlLEjq8vzUJUZ6Sv+8lOM3ye6o74Hr
         ESw64TD/jP/EnB1Jr3IXZiSXNQnSY7Bs1BtLXqk9F3/xmTK6Mdvm2VKKkZCoOu5pw8xb
         6OTeO6ZXzIZDt0d1r2EaQvj/EArKTZPOTv5oAjH+8AeBYW+A6J+B8oa+isHeJp8lBxWe
         3qlH3oElr+8P/KMhS0mZKFPvUIlXT2SY9UL70Cl10dhzZVDmh3A1DKOBpDA4DBefXltT
         W81Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bnkfCqi1jo8HZDxzLt6asckUNo5mI2pkz+Clgy5yQM=;
        b=ly+f5jsC3+m0l684TEHeG/JM10KwOovSKQx/UHi/QB2XOCVKl/IYRHDmiiAk1svBzp
         6hMhA1n7/thxlj7AXSe6JsUetkSGRtpAy+hqrLK4KAAmEnG/4wFVES6uzjbfsBVm5EAI
         xJUAqWHYn/T0l9Dgc8ngTPMHpAzM5lPPR6zwH1VACOE5gx8aMOdKnfAR7T+a8bvKNLV4
         TyX6ANvsgbn0xYl7D7aKEvKbLNET+Lm8+LOB47wJQMA7vn/0e3dRGedN93858eBz+jQb
         7ObP0HvtVaK69Knu7PXWUoYCZV8CqWjH+29GAWkNVZ7frwKJun7FjBtMNLankXViVVCM
         UD8A==
X-Gm-Message-State: APjAAAVfrWtLdG9rdBn5OMFjcq1eXYgdOnJNDWZ9fN73Nr7idW5ARTGp
	y0UpNBhgV3RVd2+wwRHyY3U=
X-Google-Smtp-Source: APXvYqy6/RzrXL9eR+cl+lpC2aPhRSpKzS/ozezTIzmM+9PPfcqan+f+gsD7rYCHgCKCF6Dq0sBCaw==
X-Received: by 2002:aca:2803:: with SMTP id 3mr717127oix.162.1580334335911;
        Wed, 29 Jan 2020 13:45:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls245807otd.11.gmail; Wed, 29
 Jan 2020 13:45:35 -0800 (PST)
X-Received: by 2002:a9d:811:: with SMTP id 17mr1079677oty.369.1580334335601;
        Wed, 29 Jan 2020 13:45:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580334335; cv=none;
        d=google.com; s=arc-20160816;
        b=iU5aDWMZ+FycBEvWpm6Sirkyn2T7um2Voham9M1m8IzUxPlR2x2Q3i6uulm8PIqzV6
         lN6h4YSXk6WAPj9B2Krak9dgTs2t3OMXb7JdblO8lunJbsvLygrH5fYnUYv0rvln30a/
         uI01tsA5UAWL6wP6k2RcjjUS9eiPQocmlGtDUpMon9Kpk6YedS66mZezzM6Tz7XWZTHR
         qsDGtT6+pGIxg2408AzxFZDQuF93g/0p3mKd0jT+gS2Z0zdnr83ia5nIn3lmOrDzc/vn
         IChVwzu2x92qzDNKn4cuIvQweXYK0j7T1Aj34GU256y1Ib6RbUIE2dKaZ/8SZHGDqpMp
         7zTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nclDQAc57fGVBDFTZcvntg/YEiVwsYbbmEE1VCKKHLg=;
        b=NFvKVtYrWNwYtcBVXvK0aZgy32zMRcrxZso4cYqqz3Wd53RZefg1M6I+I+gxAKYF1E
         im8tyq1qkoNtp/d5dp6TMvDkHanglsYTp5JkqDJk4DAa/IzuOM3G0Iqw2wooa2KBwIgx
         aV84Ug/a0GgNLsWpok4N5s0W4OZP420Hhrm4fsyUAwNfwoQ83y8hSscCbtq3Sa/PcsHM
         IQGbUM9wqm2xScUuMoqU788f+8laJuyIdq7qhtzOV8B0DHlWPELYz8svmn7y68asvqAO
         ml/Ih9MHSyPsRDBBgTs4l8Fii/sw2aDu9xJLk2x7Xnex5Ix55Up4S7rcY5ZUqQVfjo4Q
         wdmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZwMaTKzu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id p5si158886oip.3.2020.01.29.13.45.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 13:45:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so498801pgi.1
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 13:45:35 -0800 (PST)
X-Received: by 2002:a62:38c9:: with SMTP id f192mr1625175pfa.165.1580334334643;
 Wed, 29 Jan 2020 13:45:34 -0800 (PST)
MIME-Version: 1.0
References: <20200129201244.65261-1-john.stultz@linaro.org>
In-Reply-To: <20200129201244.65261-1-john.stultz@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 29 Jan 2020 13:45:23 -0800
Message-ID: <CAKwvOd=EvaSJFcpjh6gSRMrb=D5hwJHNR3wz6uEg3fmqmoGqfg@mail.gmail.com>
Subject: Re: [PATCH] drm: msm: Fix return type of dsi_mgr_connector_mode_valid
 for kCFI
To: John Stultz <john.stultz@linaro.org>
Cc: lkml <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Sean Paul <sean@poorly.run>, Sami Tolvanen <samitolvanen@google.com>, Todd Kjos <tkjos@google.com>, 
	Alistair Delva <adelva@google.com>, Amit Pundir <amit.pundir@linaro.org>, 
	Sumit Semwal <sumit.semwal@linaro.org>, freedreno@lists.freedesktop.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZwMaTKzu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Jan 29, 2020 at 12:12 PM John Stultz <john.stultz@linaro.org> wrote:
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

John, thanks for fixing this. Our inliner is a point of pride
(inlining indirect function calls; you're welcome). ;)
Indeed, the function pointer member `mode_valid` in `struct
drm_connector_helper_funcs` in
include/drm/drm_modeset_helper_vtables.h returns an `enum
drm_mode_status`.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

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

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DEvaSJFcpjh6gSRMrb%3DD5hwJHNR3wz6uEg3fmqmoGqfg%40mail.gmail.com.
