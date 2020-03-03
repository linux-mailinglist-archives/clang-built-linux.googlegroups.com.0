Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLFG7PZAKGQEORONREA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0AB178522
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 22:59:09 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id k5sf27033ioa.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 13:59:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583272748; cv=pass;
        d=google.com; s=arc-20160816;
        b=TWl8CElcmoCbqzpkS3N5y7xEv23Voqkxo2vTvO74zZsfJtRsf4Gt2jWCqlpxzxqq6D
         d++mRDqJ9JZyqTON6E6CnrqzXYoIo8R/id04mkUztbew1yaSf+llZBb9V01XpdQXacaD
         50Hok6JUN/Rbe1wKKXvERw2SsahgQyssGivM6D6Xy14pXTtEroApM5dj7A+ssJHlGlHZ
         Su8SnIzg8DB0G/R9LKKSs48gFtmmGfLz47OVS7wkvWn8+Un5RzdeQHhcTEwtk589W+s9
         189sAWi9J1Z/GGDzIF/t9WTaKU1dL9nWZy2kbTW3y/+ucw5d1L2EL/Yli4uDMsNEn6d/
         1yHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4Upkj66PhtjEb7ALdC62ru5pqnZ/h7Acno63gJEYWNA=;
        b=TQVFJGV1sTBSg1AJC/YmhZj/MXIe+U434RK3PwokHcrjrLRHk3cQUDYOADnC0jlVQ9
         CfEX2naJDFMu48DNBHn3nEfsvT35GIT9uMcBPJ/OMqOGLwmcYmmbYP344efOK2T9be87
         /8GQEsT/ByELzMegOO4OZdMg8mkQSS8v2045MK3cASBBxwdrgbQur9SM+Ypf11TA4bKm
         vCEz7UUf+V3HrHoEfusekD0Ergu+/e3WKf5o9SU3jSILb9mg4OBIOQLsV1SEbaDswFhm
         mWDYCiCFfKEgZ5CENSFfVmQlP1KLRYpPrsgbpR1uwrOiX7kuJs8JskBgxwd3kEkDZpSK
         vDgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HvFSulAc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Upkj66PhtjEb7ALdC62ru5pqnZ/h7Acno63gJEYWNA=;
        b=ZvwxyS+VYVCptMe+nvGdDyJgiUeQcOLXL/CGIBF20i/kfku/oa+U1WQsb/VEZi1Fmh
         pU/hmnbhFQg4yScJk+yWReR9nhMw57qDbfboX4NSoO3X0rib90lQjqGoMv+/UKzBnICo
         CmG4c1ZysIpJfJB2Amiup78j89J0BwK6GweIylAVo4iXG7mdV+bri7Be/xHCd3VZHQ1X
         crH7rsdQ81WylcLaNTIEOZhArC6xtxEiwQBKY3Islx8hKvgUL01IqHBREcqDX7mfVWZF
         TBoTrGsaihwUC6uP1q9DVNbi7io2exmaaw6zWDFPlsB5bGvYrTAtiMYGtd0ASDf+RZ2z
         Mn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Upkj66PhtjEb7ALdC62ru5pqnZ/h7Acno63gJEYWNA=;
        b=lxxCzh92tCcYfM/ziRFWdjX9bzAM4oawvPkLWRVpa6LRjw83fhXiO/qM9PeDXaZoj+
         LiCLVlcqt7LfB9gdmvy2dTrQxNDpqhr9w1ftsPGl/ZF5AwQcXcvaEx4vBR3KDG9Gsvep
         0h0joZdo7cnaCh66Ipq/ncenFKN6N6L4LWQfb9oWOOuBEP2GbppLoXmxgMjU1uLtDTRW
         API/zi4KRTw7/RjWvyxEfRwiWllF2G7g5pMAs7Ha7HkUgqOAeIs7BhvpmZ6Qnz6WIe2m
         kn3pVy6bhJzjT4xg2jhHpw1Rj76FxBa/i++Bgk5ET5SBxb9DgEIaQ4UDGEu41x7OWBL1
         BAVQ==
X-Gm-Message-State: ANhLgQ24tC+YZeK8hvR3OgGXC3ixVsTW4mrcBA9eLq1IKl2w73FuUFlu
	5a2I0EcQcJ8M9afqL6fywv4=
X-Google-Smtp-Source: ADFU+vsXW/Ybuzac51bbSA+MMpKrcdfXQLKTgGS1ZRgh9SR6IQnK+CynCN4AXrvidVaG584293SrEg==
X-Received: by 2002:a5d:8050:: with SMTP id b16mr5797604ior.242.1583272748669;
        Tue, 03 Mar 2020 13:59:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c9cb:: with SMTP id k11ls1338206ilq.10.gmail; Tue, 03
 Mar 2020 13:59:08 -0800 (PST)
X-Received: by 2002:a92:b61c:: with SMTP id s28mr7003649ili.229.1583272748253;
        Tue, 03 Mar 2020 13:59:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583272748; cv=none;
        d=google.com; s=arc-20160816;
        b=L7t12h1CoScFcPuHrd8VF5wTNFX3QHbk3RfBUD8dO3wJhXcEteiwoYXC+hMwEv6Mlk
         0w+PXBqbyUxIvbnFAGmXAJIrMqI5n48Gyqa8umC3c0Dc6IOk5kEW0l0SB4Wgl1D3mowM
         c7Plt/kBtTvHYjknCuzkjloeyhXgcjCr5iJvJ1v/jxCSeLllieWSBw948M98UtKJJGrm
         LGiBb0YazerKOEMfFLsWlmpfzuVhoJ1D4LlqwS11650/Cc1DywnPw5KH0yF8lQXGl/z/
         gIFsSkMNzkJRG4z4yyyM29tG1ImqycEYrjuxNQxE2iRyVgR2A6ZIGk8qyDsWAnVe79D4
         GTsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ddapSUJt6ntLiYzzjDAEz3gG4fW9QkFbYIQvX7Nl4Wc=;
        b=Wi9xYwZdvfE4cU4BTW5cOQMJ1rGbkMThITQekRyc/S8XahtjX2zXWHc6PNB8vAS59C
         QqfxzmJVpsHTewP65nLCvXMzwsZZlq1MBYr1Dr0qbCxS8nRzruqyN7q0455JQ3hqYa57
         khgs8pSGW2Mh8epYXIg3YNfMc5FAlPWwVA//z+3wukwd3wlDakooML+Rliw97lO5/dXP
         h+nUWD60Pqn1bLCVILcQcbssHI6PdsMd/RUufC7pTujHmBHaLh+w6uiFqKbGirqQdUUu
         TwwzHfsRoZcOlpp17aa8FhIIFkA82W5vu6J+8imlD2MN7lzESsZUWGnHa+Ki+kYqefwb
         JH3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HvFSulAc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b16si906456ion.0.2020.03.03.13.59.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 13:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id o24so2162053pfp.13
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 13:59:08 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr6056814pgb.263.1583272747246;
 Tue, 03 Mar 2020 13:59:07 -0800 (PST)
MIME-Version: 1.0
References: <20200302224217.22590-1-natechancellor@gmail.com>
In-Reply-To: <20200302224217.22590-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Mar 2020 13:58:56 -0800
Message-ID: <CAKwvOdkaiU39xmtEheM=754sdGMTB-sP1GRGacpW4DGkdjugfw@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Remove pointless NULL checks in dmub_psr_copy_settings
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HvFSulAc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Mar 2, 2020 at 2:43 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warning:
> address of 'pipe_ctx->plane_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
>                          ~ ~~~~~~~~~~^~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warning:
> address of 'pipe_ctx->stream_res' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
>                                                   ~ ~~~~~~~~~~^~~~~~~~~~
> 2 warnings generated.
>
> As long as pipe_ctx is not NULL, the address of members in this struct
> cannot be NULL, which means these checks will always evaluate to false.
>
> Fixes: 4c1a1335dfe0 ("drm/amd/display: Driverside changes to support PSR in DMCUB")
> Link: https://github.com/ClangBuiltLinux/linux/issues/915
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Indeed, they are not pointers, and no members within `struct
plane_resource` or `struct stream_resource` seem to indicate that they
are somehow invalid.  Good job sleuthing out the correct fixes by tag.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> index 2c932c29f1f9..a9e1c01e9d9b 100644
> --- a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> +++ b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
> @@ -144,7 +144,7 @@ static bool dmub_psr_copy_settings(struct dmub_psr *dmub,
>                 }
>         }
>
> -       if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
> +       if (!pipe_ctx)
>                 return false;
>
>         // First, set the psr version
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkaiU39xmtEheM%3D754sdGMTB-sP1GRGacpW4DGkdjugfw%40mail.gmail.com.
