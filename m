Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJE3ZLZQKGQEMXTLUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E24918A657
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 22:07:50 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id c7sf15862951plr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 14:07:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584565668; cv=pass;
        d=google.com; s=arc-20160816;
        b=LoweqU70X7Veb/n5CgUpvsD1acbxURHkaDtKHp/6jsiaPgCQu+W3O8QKe+bwmqEYwv
         2GW9REcB7MfZTbTuFqqJm8Lvc/3WagNf1oL0ewOC+dU62yO8mzVR5xqQKlYn67cgBjCX
         hVISYb3eDdBIixU3NbvV0KBq9Hrp2ZIqaf5WGHlG14iCp+tOFP/dsq4Ei7jq1sk8LPV4
         juPPUgJv5TQJcg5UAk598Bt3deyFQxIwsRIcRJnmsBgrUE5eYwm8lnV9KgOsJ6fXrSaG
         rsWWb3sVc9Z55mJ6FlP5pDfXXZxaDh2CGcf2K2LKUxsiQhY7ts8SVxn5uElcjT4bOmyK
         r6zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=98D311jDnWByCRbjKyKQZjzzFXUnM5GhdafR8URADFk=;
        b=oqUQqzoDreY5C8Uxmuxxmy+L7NLbE4cFIFjFujImdVe+HEi59caYY1Xlw8jgs3qyNa
         3xOwbGr7v9q4+81TvQI2N0ltnZlSmstX7ed3cSvT9TDEy9bK70BduTnYhW/ZVwXQonT/
         7HDiAO6+V7Pk5qMTHz6Bhl1/tNjgEB24wVz2oief9HRQjbwwJN8AvaCq5YfS/Xbf2sgi
         ygWSTukUdRzG05cyjV+iV31T7m29yg6kLmdxw0x+MEse+mxN5BvGkmEMhTkzBSMQ5XMx
         4/hSNduwmHP+fJJsk1p6IOPH/Vpq/jyIQy04C+adh5pIkISOU31OY1uCPMvw1+OX9U6c
         AY3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qN4+WX6l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98D311jDnWByCRbjKyKQZjzzFXUnM5GhdafR8URADFk=;
        b=IaKgYj51GX64690xuerUZ4xr6m70e8kkzBIKPuITMRPAIczq3kbf2NT6ssuIxZbT7n
         enu0DPskzK0z3ZmYZh2pVVQAp+8loFwtmMvSrPm2wx5Kt/VCIKJf+fUzczu792LWpZxZ
         vkmLRqISOo1nWUPnLNt6S+UO1eVep47VFhx8Vc+8lmsDy8BiqirxNUKF2F3g1nJUv4ru
         8ZHof0d/eX8LOdvHaORRaukLGD3uETE0/a3eXMzyHhS9cLjhOp811GV600OFXK4s27dz
         TbVAmbyQ3b1rT9R6BIcK05YfSMmm+DP2x+Nf5Gr9xI0kCo+8rl6vthL/QSuyLO7vhwoT
         j0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98D311jDnWByCRbjKyKQZjzzFXUnM5GhdafR8URADFk=;
        b=D0yAmrvpPiheDcT7Z5IuQ3OidBdGv0Huc4pZlBLIr6icuWcYHR3WO5AElfbCg0q9Ri
         jeSXy5FJ8V84WE59Ki+6VVkGDDst4FFCRl1NzVSz+FAo3EX9GTVCYMUQF+vaW+ecFW0j
         Q/gvB42gJGXrHqRQ2U6e6hLwIY2PUp2bV8ODU0aT8j9o4jnMntNtFn0192CYd8u1x5bx
         iYecuRa0jKezl//kCyBHRxucyGrdwJtgxtVJ9/ICgsdYyUHRNajXa760bsgfpxI3PmnY
         iiTOFzFQVvmAB4JPg7AHaZT9PAg5bYgNG3sD7hkxEcPwvN0dGE9+5/qbas8KIwENDK4C
         GQQQ==
X-Gm-Message-State: ANhLgQ1tV6R5pToGslF0H2lRI9cbLoL/w1xFPQfsbNbgbHiSYj1Toq0Z
	aEO58u1rck8m3qLqx2JudvU=
X-Google-Smtp-Source: ADFU+vuSI7eq0vc6xggUZPU5bUDU5+zZJoDniJa/9nLSWxvQPS/VRddzYGu9SrLAx8TM0ovuD6QjCw==
X-Received: by 2002:a63:f20d:: with SMTP id v13mr6528285pgh.34.1584565668801;
        Wed, 18 Mar 2020 14:07:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls14362583plr.10.gmail; Wed,
 18 Mar 2020 14:07:48 -0700 (PDT)
X-Received: by 2002:a17:90a:ad85:: with SMTP id s5mr117989pjq.142.1584565668287;
        Wed, 18 Mar 2020 14:07:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584565668; cv=none;
        d=google.com; s=arc-20160816;
        b=QKbx7Y9zFwdEtCTslrGYi3/iDcgWc0OT/ZE/7ekCIlYf1+lo77S1a2sHBV18F3Y/yk
         WnKU3HFDmpcPo63AkPRRIK2+GGlW0FB9+5AJTZOi+W7x0WAh3+xKdttzhhmj3EMnY0yQ
         h37Ss9YpBgHEQoS8ruH4dKizsf63+ullCGUoh0hLlFQVSPxwzpir5vt5deEYSPbWSvcO
         ao8t+seSO5TrSXJx19hRdmFQL69+BRL3KGFboC+GYFpYm4jG4mZi77RXbDwuJvND3U8p
         FlLliyj39wPQ7NWc3ZSkJcjao4iE0cU6qMeL//5BoYTJdco1+/6veYEiCdqb1wMK4GIX
         G6GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UnW3oRxVQHnYvwZ2+HCKUVYxiIim+eBLvaQELpxrRqU=;
        b=dY8SPdde7P9tHtMndMFWy5SnxItMYEx8uV1o8j6R6RH5GSliYpIokBzutSjMyAw43f
         89y9eOkiee6RX8gObXcKuRvwCbATPxguPIdDKa1SXw/t7ssl7G+AKKhHBGTmlFlIWIe4
         PF5Sy0nX+3iaofvMr2Rjr6DweM+EHWc00BJjNqXTK45J2l0gghsoGpdMc5CRqlN3UJQR
         LfuqZi1FIXcdXv7JWf77ft/wx8HEJKph0cdNj5DxwOUrkXC3/h6Gg9eUYQksXD/ZEl5S
         LtlZ14R6RjXABNzoCcYqfZl+5nxjtGiAErPk4wHKlYUlXBYpa+MPxj51eu39jlLBxJJx
         iozA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qN4+WX6l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c10si188370pjo.2.2020.03.18.14.07.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 14:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u68so156737pfb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 14:07:48 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr215129pfd.39.1584565667463;
 Wed, 18 Mar 2020 14:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200318002500.52471-1-natechancellor@gmail.com> <20200318210408.4113-1-natechancellor@gmail.com>
In-Reply-To: <20200318210408.4113-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 14:07:34 -0700
Message-ID: <CAKwvOdmjzemFW9jF-CW1RhLJJbMvFO_NrPUeyi=rdLNVZURsfw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/amdgpu: Remove unnecessary variable shadow in gfx_v9_0_rlcg_wreg
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qN4+WX6l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Mar 18, 2020 at 2:05 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns:
>
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
> is used uninitialized whenever 'if' condition is
> false [-Wsometimes-uninitialized]
>         if (offset == grbm_cntl || offset == grbm_idx)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
> occurs here
>         if (shadow) {
>             ^~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:2: note: remove the 'if' if
> its condition is always true
>         if (offset == grbm_cntl || offset == grbm_idx)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the
> variable 'shadow' to silence this warning
>         bool shadow;
>                    ^
>                     = 0
> 1 warning generated.
>
> shadow is only assigned in one condition and used as the condition for
> another if statement; combine the two if statements and remove shadow
> to make the code cleaner and resolve this warning.
>
> Fixes: 2e0cc4d48b91 ("drm/amdgpu: revise RLCG access path")
> Link: https://github.com/ClangBuiltLinux/linux/issues/936
> Suggested-by: Joe Perches <joe@perches.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2:
>
> * Remove shadow altogether, as suggested by Joe Perches.
> * Add Nick's Reviewed-by, as I assume it still stands.

yep, thanks

>
>  drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> index 7bc2486167e7..496b9edca3c3 100644
> --- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> +++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
> @@ -735,7 +735,6 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
>         static void *spare_int;
>         static uint32_t grbm_cntl;
>         static uint32_t grbm_idx;
> -       bool shadow;
>
>         scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
>         scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
> @@ -751,10 +750,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
>                 return;
>         }
>
> -       if (offset == grbm_cntl || offset == grbm_idx)
> -               shadow = true;
> -
> -       if (shadow) {
> +       if (offset == grbm_cntl || offset == grbm_idx) {
>                 if (offset  == grbm_cntl)
>                         writel(v, scratch_reg2);
>                 else if (offset == grbm_idx)
> --
> 2.26.0.rc1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmjzemFW9jF-CW1RhLJJbMvFO_NrPUeyi%3DrdLNVZURsfw%40mail.gmail.com.
