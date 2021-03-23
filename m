Return-Path: <clang-built-linux+bncBDPZFQ463EFRBMMF5CBAMGQE4GUDXFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 255D1346228
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 16:01:07 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id p10sf1366084qtq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 08:01:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616511666; cv=pass;
        d=google.com; s=arc-20160816;
        b=DMFJ/zjWX3aSPwIwTGy2e60UGILKZvdFEaSPUfsyTji1OKkDkUF4nNcX/E4WiWzH8o
         qP9ZMUUlAXPPJ8f2paK9vnIcrdXPtDPtxuJjul/ClyDbCMy807389ADD+vUOu1+ide95
         E3yD3xEUX/MV0xO/Z6hGzg8TwHmKZH4/49U7F9IdhQMMmz+kBB2aVh6criMaN7n0xH7O
         92ICV7BZrEgOxMSfwFeCBLvitHYdnBLvisUUBmw0uWlGJ5T1MondpOzuHIjLob4u0GuH
         yy0n0enkxh6i1Q50JsGIeX1A4jHG5nk57HVH7RkIN2miwq6Ex2N7q2m5+Tt1O/rChVso
         gAYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=59hixS6IqJsnLE3Eqobwkjqh0wvkiJNX9bsEZIFLOzo=;
        b=L3c5FAXAo9JTEBBewhm7F4UDN7CsPHY8DKTqk/FCAKxqgD3ghnOUSPjYZzy+NLuTyw
         tMRzkpBS9nSNPq5V6Kv4eZb2QJfNSC3vPG09ovgqtohwosnHmgCalK1eP3XOy4u0x6YT
         a21h4g7Jwz6EeSUZnB7xfYogmc7rXnwaB6+pApnl3siWuiftrro5BQr53v95AIxdTkGZ
         gGLpRFRPxJC1bLdrgtAllTK63wfpZy9rgc3NSSUJZ2ujASs/sihlv+z4wulq7xxuPB1U
         gRIFDxDRvvARsiRp8sorNvzqhoEABP9HyQOlFlEGcXiemYA64oPjJl0MoyqVG1gBBwxs
         GhKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ssWmDwgF;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c29 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=59hixS6IqJsnLE3Eqobwkjqh0wvkiJNX9bsEZIFLOzo=;
        b=ocqpTdLrd1aLKxAsFilbUvyQseufQ2nbEzsR6BUmIAKgOiYo8yGQchcYYlY+7XcHA0
         BHXVPAypf1rSTWvvxRW8WdwaNkPgPV1i1pCZyzp982pQ0rtbYKHpg2rL4EVskrACSoWw
         uGKjvKVzkofa7ufPqe5rImQFy0VFgkmop8nMOFrWw1BjGC6LFL51KruLMYUSar7K3aQV
         sS75wTAc68kv5dn6ywywkLIHzjwJUgiQf2QM4hp5kBErxgfq/cG+9DgK+eUlHTUwfyoP
         aY+GijV74MoYbHV2PhNC5Tnx6mQF3ifL/QhmYm70BDyvAv94Z/cr5dlmF9JSXA5p2aPG
         MpFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=59hixS6IqJsnLE3Eqobwkjqh0wvkiJNX9bsEZIFLOzo=;
        b=M+Jh78wz2YDwZjVqE/C3HIQ/Vv6nM8d4SuRJJFc+lb4n2JvPHrsGeb6NUvDkJfUnQA
         u7/iDQp6e5rmYLW/dcwazYPB2ZwU+mpM4ZYANf9NN0H8akEu+5/We+Pa3FwboVJizmc1
         6npujAQDvNxKZTTioe5tOG/SJVZf/Zx9+0H0kJ1YhukC/7AikXWC1V7w3moUC1bbhkz2
         ICPIQ8pcLvpRX/ZhBeTHUmG680Uc4e46v9BkH0NRsk6JTWzZoq9CVd3lUOwWN5O1zZs0
         ZQBWey/Y4ZKMCFEdyEWKkETS+9kACkvtcSzp3zPiFBqzJ/itz7Yd9ct/0QRzMmh7gOLp
         lozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=59hixS6IqJsnLE3Eqobwkjqh0wvkiJNX9bsEZIFLOzo=;
        b=fi8rcdjdWy3yiLMk9ikwTbuVmHs45fzj+buEJR2fcJL0E9O53/jhk7KLV9PBQzEjUn
         eUNsi4hMdgbxW7a6lXr67v9iOdJJ4sXYX/lfSQXmxnjN7HHFqY/r3MgGZQZwRkB0lg5u
         uGJBYhSTiTH1Zs/SkQIB1x6nQc4qxl9o3KI3SKtku2V7CzLg+5DoYUmLQId5RlaADELO
         dHkU6J9W3vDyAqjIq8pDfVn+PrTuHaKNrs4KTgPVDfv5QF5lzidHlShX+Yl3oGFwjNMv
         pbJDcAg8EY38JDuy9QxgT/kU8e4ltGqTz5WDdeuTFBKpG2G1OIUpZsL7U5C9etbHfLsG
         WEWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328uX05v2kho6JZu4OQkZzlg0+Sdrq+phYAqtA2kzQSYCyX1WA8
	lyi7r+3+ejQYVDUUirw8VMk=
X-Google-Smtp-Source: ABdhPJzpjY59wnVv4MZEAo482yRtma2ieYd/sgeNjj97x7dcii8E5trsIcNmSLwwRZbYaB3tizkGlQ==
X-Received: by 2002:a0c:b218:: with SMTP id x24mr5246848qvd.55.1616511665885;
        Tue, 23 Mar 2021 08:01:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls6252968qta.3.gmail; Tue, 23 Mar
 2021 08:01:05 -0700 (PDT)
X-Received: by 2002:aed:2143:: with SMTP id 61mr4803322qtc.136.1616511665245;
        Tue, 23 Mar 2021 08:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616511665; cv=none;
        d=google.com; s=arc-20160816;
        b=GC5fl5uStH04u33Va9kFHGLf8XsFun/HnHPZ3Sw9duB9dO+QcRJ0B0EOEgwtAHJtSK
         NxtO7cGJW1NoRXg3mBROmdjoIXIKemFM/ciStHx/nxoCZhrqBwahQ1bX20aM70cgyR56
         kjkmKUncA3oJ2yZLXYaPqMtnSDnBLBgVrNXoxVnF8TSIukmfiP9JtC0nrsA7vaq7VSow
         /qem/bkCmjc90+kryKGhCgRLe6tNq1BIRubEKAI6OgrTKXyWUPNrFSY/IYjhKYvPvsWt
         yyfpDHLZIvxlox3smleHUCNg8iW4QeqybkJkysEcI1FTlF7yvWFrRWIkBaL22/41T5ie
         ZU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MVCoKkCqJZzN9wlMxcIT977e4kipSpX9b+GAtdQCUQ4=;
        b=1CS7IPE1ZfTHOLfppyHblKkJ5A97sg3INgRezm/Ay6JFFfQ+leUng0Qf9+STADNgtM
         c/GJRLj9DYgq4JeNyb/L9xY6SvgUyfgph9VzhtcGZ9GuIySxHJnYhCUyr3LoZ1RyG2YH
         98558VFLrLSJyrL5g0X9eBZk/AAuETt3u6F2Tj0dUQbIFDxBvDVNlcxb/sXgqxotYTEN
         7cFZw/XvIGCxUwF2UzkoeuGh7q3kuTWOlzvW3TiTMWcwpuBPH9DXyupcidheV/VilN4z
         ehAo5abrBzErvjzhD1PiK/S7xXPoBRIE+fcpSXdVKcMYy712eDUI4i7j2HOFEN40auFv
         ZzMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ssWmDwgF;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c29 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com. [2607:f8b0:4864:20::c29])
        by gmr-mx.google.com with ESMTPS id b4si1016174qkh.2.2021.03.23.08.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 08:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c29 as permitted sender) client-ip=2607:f8b0:4864:20::c29;
Received: by mail-oo1-xc29.google.com with SMTP id h3-20020a4ae8c30000b02901b68b39e2d3so5001750ooe.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 08:01:05 -0700 (PDT)
X-Received: by 2002:a4a:4005:: with SMTP id n5mr4153901ooa.61.1616511664731;
 Tue, 23 Mar 2021 08:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210322115458.3961825-1-arnd@kernel.org>
In-Reply-To: <20210322115458.3961825-1-arnd@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 23 Mar 2021 11:00:53 -0400
Message-ID: <CADnq5_O-nxHA==3RMAZki_Wxgo5dQuJMAQq6xU1q=sze6KN0nw@mail.gmail.com>
Subject: Re: [PATCH] amdgpu: avoid incorrect %hu format string
To: Arnd Bergmann <arnd@kernel.org>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sonny Jiang <sonny.jiang@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Tom Rix <trix@redhat.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, xinhui pan <xinhui.pan@amd.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Chen Li <chenli@uniontech.com>, 
	Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ssWmDwgF;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c29
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

Applied.  Thanks!

Alex

On Mon, Mar 22, 2021 at 7:55 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out that the %hu format string does not match the type
> of the variables here:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:263:7: warning: format specifies type 'unsigned short' but the argument has type 'unsigned int' [-Wformat]
>                                   version_major, version_minor);
>                                   ^~~~~~~~~~~~~
> include/drm/drm_print.h:498:19: note: expanded from macro 'DRM_ERROR'
>         __drm_err(fmt, ##__VA_ARGS__)
>                   ~~~    ^~~~~~~~~~~
>
> Change it to a regular %u, the same way a previous patch did for
> another instance of the same warning.
>
> Fixes: 0b437e64e0af ("drm/amdgpu: remove h from printk format specifier")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> index e2ed4689118a..c6dbc0801604 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -259,7 +259,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
>                 if ((adev->asic_type == CHIP_POLARIS10 ||
>                      adev->asic_type == CHIP_POLARIS11) &&
>                     (adev->uvd.fw_version < FW_1_66_16))
> -                       DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
> +                       DRM_ERROR("POLARIS10/11 UVD firmware version %u.%u is too old.\n",
>                                   version_major, version_minor);
>         } else {
>                 unsigned int enc_major, enc_minor, dec_minor;
> --
> 2.29.2
>
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_O-nxHA%3D%3D3RMAZki_Wxgo5dQuJMAQq6xU1q%3Dsze6KN0nw%40mail.gmail.com.
