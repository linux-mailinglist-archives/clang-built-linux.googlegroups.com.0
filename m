Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOF4WLUQKGQEO3YBF6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AA96986C
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 17:39:37 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id h7sf3956762ljk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 08:39:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563205177; cv=pass;
        d=google.com; s=arc-20160816;
        b=TnHz/dknEhesCkGTNJKGs4iw+BS0YLkPNYZGlTU+3K94y4zqJEyqdcgnSFd03KRza7
         WH2cN2+Bn20tnwjo9sab6ei+XJ6BHTEWupXHBjNwSIBisGp29D6bLFcrQn8FoGqe/ItG
         iOr13g40E/Gc/rDJ7jUQKb66OUWkmDARgj/Mjj0cilUMg5KGfwgjnmeQl7lMsIGuKYF4
         nX+mJ9nyqp8Nywzvi/h7+p+92YZJE1Hydhu2ghRL2CTZc3mzjko0CFobpCesUweLqxnr
         zYzrWNL5pNTOfAvK9omvVMJ81zMp/5o5Uwiab0HyNiDuYraBPkrXlh32n9klRHuJDbpA
         CHzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QH4mcvV4nHvNIIliXTi05fmzyv2ASaLpnR9etnrxVeo=;
        b=TWWoZn9aOkXwn1O2xX1TvRTAiubNvZCQNlKlMDXyAW0m1dQcxkiocqdacKPvtNAgvX
         iwoavK9MfPczZej+7GdHZ3rT76nbkivw2QAG4poJM2tS07nvIKR7uUD7TMjvgWqoOKrj
         bAp/34WBXCU8I0SYNpl1ARP3pGP4IB0abVbSpTaz89zBlaCgGpI4kYpp5iz1DPl8sWfr
         LHckdmkVLZoCHduJf6TJhLLG2vFmX8Gq/847pyTtX6BF5znKPIbTCAM/HY6zATI4FVjo
         Y6b8iN5jWbnZTnS+t4oI+1M6dX7bN4CSxg6MyYdGCJUH7OKC4iSaejcFJJGeBV5sz/yF
         wZFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NMaNwLeI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QH4mcvV4nHvNIIliXTi05fmzyv2ASaLpnR9etnrxVeo=;
        b=YFD9a377T6wF9OBKnCKkl0JER78oxfV29msBlW+XUT5sF19fK72VLw8/ZZ+6Ax/okH
         TOtuchxtYLkU+UoiXWWlbKOKPXkNLSu/NJiHElKEuEJ1RFbLV/8GSubkBThAKw9Vmjrx
         W4fkMxsdPLkhoXoZGxoIzClzmp4dx4N8WQRbHOcx1fJo/YAjCAyYYLC0DlJkyd7P6cIM
         ogwUzOLva2HMcx4vKL0xTflIdyUeMQojRctXO4Q8druNBfXsn7O1I+ZjWs1rDWRplaLe
         UxanRcy7YispIK8tfpGswKQ5/8GXgKcJ9dugQjsrBwA1Fnj9xoDT8+lYbGBbMyEppfLu
         QM6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QH4mcvV4nHvNIIliXTi05fmzyv2ASaLpnR9etnrxVeo=;
        b=ASCSAOheTmnv50TpdkQS/MZO7iZaIZK78FoeKvrEChh85ssgIZ1GVsyOAE2bIoZF14
         8O0fo833w1/L86FKhu+TGyrri9rg8Uch5yl/o9D1w5HSlb63CW7xb9SuAclq7lyYaQBJ
         c+X0ZmuV4NxV+u/wR1sNGMdsC+vyzbJoOcH9bWX1ywZZRNgTdL7+rstcbL1u4C5/5a7Y
         b2N3uoqNx4j1AXJ5V7smsQgjI+DgkBZ60v8roxlBUcrcfMh/ofYh1m/XmTJr9tZhhZ1Q
         7LnxodD2k00mGuLsHOpZRgGfFQjYttnW7zmBa2prJY2vgVdpWtZeQjpfEV64MM69acEf
         SwpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QH4mcvV4nHvNIIliXTi05fmzyv2ASaLpnR9etnrxVeo=;
        b=llNCQs3KKavMkinFWq4Hf4H63eJ4bapSHiiX3D4JvNrtuHgQGbY3FX99lsj7kJpVry
         Hbmz6GVqDgcFyMWYdqh0rrZWfYtSSLUWiQ432HJ6iNI8E4mzMQn9F/OgHiRTaov211Q+
         uuaL8jyrfQ2yGvOmg0S8nOTkW9Xl/8LZfbn1DQ/LIsTee8z7HssrTR8ojGiNpqGit9ez
         8N6TDMuH+cBqBX1vpj4DLjTeuTzovc6a0Hb72rZVev5DIiLZHfeCH3eyY3tnFwt/+wpA
         uaJK3M9hGyox9VpRs1g0uPr3D2jod8NghcdirN6s1t3INQ5DIwZdUYYldL6l1cQVhrS4
         kEbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1WVJ6TaWQxNDD4LIFVkALjZgvaG3cm3BMEl461k9kn4ddHpBu
	ukwgFmeytoRS9IPwjd1FciM=
X-Google-Smtp-Source: APXvYqzRo0AHqHT5IgBhixBTAI4OV+EdHo+EB6FA3eCfDJ1mhxeXaNM/upHuJEN+FZk21y2g/96XaA==
X-Received: by 2002:a2e:9192:: with SMTP id f18mr14289045ljg.52.1563205177033;
        Mon, 15 Jul 2019 08:39:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4a67:: with SMTP id q7ls1344553lfp.2.gmail; Mon, 15 Jul
 2019 08:39:36 -0700 (PDT)
X-Received: by 2002:a19:6602:: with SMTP id a2mr11391998lfc.25.1563205176543;
        Mon, 15 Jul 2019 08:39:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563205176; cv=none;
        d=google.com; s=arc-20160816;
        b=UIdsn5a1VeaUhU++QKdXCwFbZu8u2WJM+kCWy5ibCCUGYoA8krGW2rmMVqrH61GHLL
         aHouLgwe3ojbTIorEX+ItXtrXBocw2PDF+EJzYnHEdauzMH1ZkSRJhH5zeQHrWCP+8xs
         SwcqzT9h53swzkYC5+DipyiMBMgIq7/E82pgQ2eZlaEKbZjzUh4eQvWz0dz2kbhOXXJV
         F1+kFyHowZIRm5TfWNJVvgotZeT+bTf+tI49X7szy+AcU9jdLY9aUrxnZ9RDBQInGkTx
         vdyDOpavoHp9s3UJJJsJLGxz1cc8HKaYWTVwHD8qbN1Zet7mqkdPzmeuec2nXBBLuPaF
         1Clw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ApxKfd4/dGSgTrlf0Sey/fxPy5xS/D0myVrb8BNCXsA=;
        b=Zi69rerPie7cftAaZ9z3/p3RC2YM/2utIpXwwoS/xOLXdXVIhml3zp/Ihi8PVM2sRT
         /BgDkv945qgwHR3i5NVBHYSJ5JQ3r7VNUXi/SFayrkiv5SncO0fbdIvifXmZjlJ9OtU/
         x+JLaywjSw+YjuCitNEj9PaC4Pr+F+N/Wy7mPVG0JkCGsgrGoXfnffXfulZd1g0NLfxo
         KepVatG3oz3TggMXE6BLxq5OnhbYfZtrl46dyPr7WKkgopdgiTncoQeZLz3EwHUiJFF8
         /GleunVSbllC7aE2BpoROFeUjDuIMmxZ3HB1vFuObSxIJu9KyuAFUC9dtj7E8oVO6LA8
         dWbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NMaNwLeI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r27si886357ljn.3.2019.07.15.08.39.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 08:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z1so17582676wru.13
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jul 2019 08:39:36 -0700 (PDT)
X-Received: by 2002:adf:f646:: with SMTP id x6mr31705623wrp.18.1563205175486;
        Mon, 15 Jul 2019 08:39:35 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z25sm19536196wmf.38.2019.07.15.08.39.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 15 Jul 2019 08:39:34 -0700 (PDT)
Date: Mon, 15 Jul 2019 08:39:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>, Rex Zhu <rex.zhu@amd.com>,
	Evan Quan <evan.quan@amd.com>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx list <amd-gfx@lists.freedesktop.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kevin Wang <kevin1.wang@amd.com>
Subject: Re: [PATCH 6/7] drm/amd/powerplay: Use proper enums in
 vega20_print_clk_levels
Message-ID: <20190715153932.GA41785@archlinux-threadripper>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-7-natechancellor@gmail.com>
 <CAK8P3a1e4xKTZc1Fcd9KLwaGG_wpcAnSNu7mrB6zw+aBJ0e0CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1e4xKTZc1Fcd9KLwaGG_wpcAnSNu7mrB6zw+aBJ0e0CA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NMaNwLeI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 15, 2019 at 11:25:29AM +0200, Arnd Bergmann wrote:
> On Thu, Jul 4, 2019 at 7:52 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > clang warns:
> >
> > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:995:39: warning:
> > implicit conversion from enumeration type 'PPCLK_e' to different
> > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> >                 ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> >                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1016:39: warning:
> > implicit conversion from enumeration type 'PPCLK_e' to different
> > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> >                 ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
> >                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
> > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1031:39: warning:
> > implicit conversion from enumeration type 'PPCLK_e' to different
> > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> >                 ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
> >                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
> >
> > The values are mapped one to one in vega20_get_smu_clk_index so just use
> > the proper enums here.
> >
> > Fixes: 096761014227 ("drm/amd/powerplay: support sysfs to get socclk, fclk, dcefclk")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/587
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> 
> Adding Kevin Wang for further review, as he sent a related patch in
> d36893362d22 ("drm/amd/powerplay: fix smu clock type change miss error")
> 
> I assume this one is still required as it triggers the same warning.
> Kevin, can you have a look?
> 
>       Arnd

Indeed, this one and https://github.com/ClangBuiltLinux/linux/issues/586
are still outstanding.

https://patchwork.freedesktop.org/patch/315581/

Cheers,
Nathan

> 
> >  drivers/gpu/drm/amd/powerplay/vega20_ppt.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > index 0f14fe14ecd8..e62dd6919b24 100644
> > --- a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > +++ b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > @@ -992,7 +992,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
> >                 break;
> >
> >         case SMU_SOCCLK:
> > -               ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> > +               ret = smu_get_current_clk_freq(smu, SMU_SOCCLK, &now);
> >                 if (ret) {
> >                         pr_err("Attempt to get current socclk Failed!");
> >                         return ret;
> > @@ -1013,7 +1013,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
> >                 break;
> >
> >         case SMU_FCLK:
> > -               ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
> > +               ret = smu_get_current_clk_freq(smu, SMU_FCLK, &now);
> >                 if (ret) {
> >                         pr_err("Attempt to get current fclk Failed!");
> >                         return ret;
> > @@ -1028,7 +1028,7 @@ static int vega20_print_clk_levels(struct smu_context *smu,
> >                 break;
> >
> >         case SMU_DCEFCLK:
> > -               ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
> > +               ret = smu_get_current_clk_freq(smu, SMU_DCEFCLK, &now);
> >                 if (ret) {
> >                         pr_err("Attempt to get current dcefclk Failed!");
> >                         return ret;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715153932.GA41785%40archlinux-threadripper.
