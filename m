Return-Path: <clang-built-linux+bncBDPZFQ463EFRBV6W57XAKGQEE2LVXNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id AD540109079
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 15:55:19 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id z16sf3153444lfb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 06:55:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574693719; cv=pass;
        d=google.com; s=arc-20160816;
        b=itWo+rsj6gvMH52gtqb9xoXMM9yuXtJIg0Db/HxrkUS+8wNm38fecaJswIjrOGDec6
         xEwym75dYXmiSWgVrYwuwVjYyKPSDT9SYhwouYKMhk9ZOL/5wkzNFKnKfjqD6GCirpui
         zWnAa3DWAzNsJA9EIqMqdBgMksdST9sFjaW6sdbjpL60I8IojMqDn9ACPnY82CEAaDVc
         Wx647KXWIZe9RUC2ihgE4qhRrnasQuAXJDn44kRcWm2Wvo6NO9Qn0GgAy3ij+g58zlTw
         Sdq72Y076zPkVdYXnnUDDTiLj3jIZ7Y5Ivn4jeqN88TvORhnskhmwNLU3yZCaqrLdmUU
         VD5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cy6kB4HPmZeMolvj9p0TnnBvCaaGTWUMnSSO+Gl9/Vg=;
        b=U97EnMaQWvzBdWp9wx9N877Cnom7cEK54lEHPUsyYNeU+iYghw1SmkbZGLUpz5szQH
         kLuXU5tidoAbxiNpb6iU33quu6bnvjFL0rRDaZdRmGksJElYDntOfXP3NU0v7wBxwPcb
         Z9XevuP3azSVFvGbdnhdLcC0YZsks+hfupf2ZRCOmLJE1hwkmyzzzQFce9m+oxbqF+WU
         MTuMZ387tX+CTm+pzFiPzlHq6B/qsu2bQYoN/C0iW7H5T/GqXZUi85SFJLGmFw4SZiHD
         fOIp2vP9zxCAFoqENNGk6MTjZPp4ij9zUOXPI6OcuvSKnC58yUJ6hyyfLFYdEnftmIqV
         Mc4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IP1XcgI3;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cy6kB4HPmZeMolvj9p0TnnBvCaaGTWUMnSSO+Gl9/Vg=;
        b=VdS/2TnZ6cpu+wUQElzkvg+Gi8MDdalxBfd9fEi87wDSE9T7ws688PI6kiQsSPQ1fF
         yh1ww8Nlm0sZp1CoGfTVdJsEJwM8MVx8TLmE7eB3B3Z3emnL/F1BHNp1q/s8mODGyvb+
         NG83U5CNV4ioOI9GyNhb3Ee1Fq61Zu8hydkOFUY55zIJ5AgmfFvKVpMZTk6uBWw7+CU9
         HZHaWrY4BwF7isu3TG4rl5s8oGX3heagRNesffQ3gYBdaitAPl+alxF5LCjwk8gvHgVU
         VYe3bKEAm0NuNRlrtbLQ9zkCq77EFSa8vhNQmOidqbImlK/58QaDGk2Qw4Y8VeR+chZi
         VV0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cy6kB4HPmZeMolvj9p0TnnBvCaaGTWUMnSSO+Gl9/Vg=;
        b=lEEo5HkHgd16shDfaHG+QxLBpPV8bYnab0fMtyfhbnOmXhE9NDVNQSF1HqJClUBKJw
         P43AtgG94XjTEUp/20t4Sut9CZqtqXBHRUdp1RdGdX6VLZ40jTmNoXZP4MZBSYzbmEVK
         jFmFtwKNCGLV2Dy4bOvoQCWF+traSq2qGXrqGji63qXeBQuQHQURlPKKH7OFoRqopZof
         91LxMRiu+jl+GretpranZETbPH/ERQPe41vm0xShS+Qyzk+dE/lGd9VpQ75eP2kmaoxZ
         4CLEWSaiCpcAA+Ntyx/w5DgLwrGwaDliZduzEDZiX1W7vaL4vY8iBozb1ftYH+6B1mei
         BVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cy6kB4HPmZeMolvj9p0TnnBvCaaGTWUMnSSO+Gl9/Vg=;
        b=pqAzIoHVYs3/jSVDFZMRyclyLEPZHV+cDvZ9HdHAtTKD8DrTeUzoZRGhiyy9bmLbwZ
         i84JR9g7F7DAYhSS7e0cgNhyWPtjxu/facHkJludBWqdTnSV5AVyxbYy72jXUlz7Mbj5
         picRHHH+xzcqAm/hW/QbfXc9TabcpPOO6MZL7l7Bbwq+muAdWivBDqTlG5i51sthZmPm
         DomDMPuF7G2ZmX5sHclQon7PnGUFrDOxdBnCCDGIUKtBJ9P0B6U3w/NcpVmbmnA3lQq/
         ZG2qMoy6X7EcxNukKZs3CmKApgsGvpr+1qhSGhu7GwFofJnDG43do5CGHA13ZGCJXEGO
         c1IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZjrXr35XkclmfDohBkNbusNBkPWxNa95rbt8ZZFlsEkk1vbZp
	6vgiIldQ86RIb8kGXncIWRo=
X-Google-Smtp-Source: APXvYqx9QqmO1QgAoWYd+kq35Nry/eMy54v4XozTpIT46yEEsgm25Eh85xgT5aEx+rTDEKBE8wKINg==
X-Received: by 2002:a2e:9083:: with SMTP id l3mr23381247ljg.127.1574693719244;
        Mon, 25 Nov 2019 06:55:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e2:: with SMTP id s2ls2447546ljm.4.gmail; Mon, 25 Nov
 2019 06:55:18 -0800 (PST)
X-Received: by 2002:a05:651c:1053:: with SMTP id x19mr22609775ljm.39.1574693718608;
        Mon, 25 Nov 2019 06:55:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574693718; cv=none;
        d=google.com; s=arc-20160816;
        b=xY1qvEOWVH7vpvZ7s2x82HHWxFCACStu7i9Kkid/i3g0fVwOe8XmHzQfua/Ou0nx61
         vjpv2AsasRTYJqlIuODSEyGo/2CYpa5i+WYdMfnvzYz7ULAxwHrCVFz2+Ca4X5mlYXYv
         fNRXNP3uXXjbyjsvk0er6NcabsXVJZY0tSLFFKeRl28SRPXkngukaRzFWH4odAp+xgKu
         eE/M/s9TBrv4yNjuZ+ZTR4aijImIWAlpKE23xOy9/JT24LKy3hpjtkKckgHJj1cOd3GP
         PdXtuOdLZvRK/Btb7mcAHwJqL752zbgr0Z5GOHKtot2KbUHEbAoHoggI6QRUraTDG8Bu
         K03Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=17aeOdEACV6GCmSBNGeLhdL7I8VMOLywDStXvLbpbKk=;
        b=nbcayQlLTfZkwzVgp+/jjiz8T5ixk6AjOkz3mXjpdNpG+zCNuv0utXwlgD026Wh1u6
         Df2CJYHCr8IIYmNRDjvcdbP4KE/dNSZu2QRZnbUiwyZh8u/lpfarCth6ww8w4PFK6P9S
         JLBqwfUVDB9RDAbIAeQaIsGxqy6VEZxMfNy/mavBqB+YucbwNjEkvv8k+4HzvlVNg7tj
         F7MT4Q4DA4DpS4iEOCn//1GM8QwG1yGZMgqcQ96zkAmwFnHsIXRQXKOwk5d6ildXmuta
         5ZXnJSjJjWL3Q3NlV93S6VMxq72E/C40Es5trqjCE3mr9TD/ma5gfQdAjsZUbFOQNqO+
         reHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IP1XcgI3;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k20si261371ljg.0.2019.11.25.06.55.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 06:55:18 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id l1so15758764wme.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 06:55:18 -0800 (PST)
X-Received: by 2002:a7b:cb89:: with SMTP id m9mr29337295wmi.141.1574693718199;
 Mon, 25 Nov 2019 06:55:18 -0800 (PST)
MIME-Version: 1.0
References: <20191123192336.11678-1-natechancellor@gmail.com>
In-Reply-To: <20191123192336.11678-1-natechancellor@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 25 Nov 2019 09:55:06 -0500
Message-ID: <CADnq5_OGD5q44nEhHp2+RU3syhO9cUhqfnH34BRJhJrC-b+rLw@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: Ensure ret is always initialized when using SOC15_WAIT_ON_RREG
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Leo Liu <leo.liu@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IP1XcgI3;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Nov 25, 2019 at 3:07 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit b0f3cd3191cd ("drm/amdgpu: remove unnecessary JPEG2.0 code from
> VCN2.0") introduced a new clang warning in the vcn_v2_0_stop function:
>
> ../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: warning: variable 'r'
> is used uninitialized whenever 'while' loop exits because its condition
> is false [-Wsometimes-uninitialized]
>         SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
> expanded from macro 'SOC15_WAIT_ON_RREG'
>                 while ((tmp_ & (mask)) != (expected_value)) {   \
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1083:6: note: uninitialized use
> occurs here
>         if (r)
>             ^
> ../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: note: remove the
> condition if it is always true
>         SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
>         ^
> ../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
> expanded from macro 'SOC15_WAIT_ON_RREG'
>                 while ((tmp_ & (mask)) != (expected_value)) {   \
>                        ^
> ../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1072:7: note: initialize the
> variable 'r' to silence this warning
>         int r;
>              ^
>               = 0
> 1 warning generated.
>
> To prevent warnings like this from happening in the future, make the
> SOC15_WAIT_ON_RREG macro initialize its ret variable before the while
> loop that can time out. This macro's return value is always checked so
> it should set ret in both the success and fail path.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/776
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.  Thanks!

Alex

> ---
>  drivers/gpu/drm/amd/amdgpu/soc15_common.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/soc15_common.h b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
> index 839f186e1182..19e870c79896 100644
> --- a/drivers/gpu/drm/amd/amdgpu/soc15_common.h
> +++ b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
> @@ -52,6 +52,7 @@
>                 uint32_t old_ = 0;      \
>                 uint32_t tmp_ = RREG32(adev->reg_offset[ip##_HWIP][inst][reg##_BASE_IDX] + reg); \
>                 uint32_t loop = adev->usec_timeout;             \
> +               ret = 0;                                        \
>                 while ((tmp_ & (mask)) != (expected_value)) {   \
>                         if (old_ != tmp_) {                     \
>                                 loop = adev->usec_timeout;      \
> --
> 2.24.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_OGD5q44nEhHp2%2BRU3syhO9cUhqfnH34BRJhJrC-b%2BrLw%40mail.gmail.com.
