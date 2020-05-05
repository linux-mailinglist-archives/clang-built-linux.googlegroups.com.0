Return-Path: <clang-built-linux+bncBDPZFQ463EFRBZHXYX2QKGQEGM2NBPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CA31C59DF
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:44:52 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id 30sf294204wrq.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:44:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588689892; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxN3RKw/eUoyXr+dhk1Gk0sr/oKHFgUxAuXYBQaJyuJH6VgQ0BIB1YJTomt1b2AvQ8
         TgdopNOlo8liKLmjhwIKhNJ96wearY114SayK9eT/zL0lKSmj7ZtgEbCfKHcWG9vpGQ7
         cSSomJeHMNv9p3Yny4HxXRaqCqay09fHg2fwSF1v5eK+yDrkRBuXPIyK1PYxkCWsUZHW
         dOLaVqtPNkv47DnmL9EFoLNZGC7e4zEjfoPHkgdeDk4dHAgjtE6zNNW7YfRPuxnXUEvl
         4DPywWe5PmQn/fvgvQ2URFQWtvM37WOD/7WrOPYZczAwhun+ypulxiRqjP1NtVBBgaYH
         uCrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dSPY9eDiLm7kof3XzeJrWhFarX7Klcto+bg4bZjTswM=;
        b=lCR/58/kIC2JHrqFH5hrtZFSZ0ib8TenE6sLmw32OzAXeEm5zcyKSjlTNm8yBMAIBD
         CmKlQU/025W/maezKcTE4vW2im1RXDxNsvovwdQqsVFGYrvPB+gS0DkbIc02rNNMPVR8
         2LSgqWesnqef3T71P8IdV5Net0WRgfD4sj8/GbB518684FNtBxOBR9WuurKBfI4FSZrF
         FB+EJ6ooHnWqEXJ4RERU/OEDEUduUBkPta6KoLwhwMMRhB6LnY6BoY5+Hdf2WHV/fjCw
         0LYlfPswpNjU0uhu5k+NhUMbLgo7bXIDiHopKsQV6LAIJp8rjjp69Brs5/3VeYl7abZ0
         +KfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vrc0/YFL";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSPY9eDiLm7kof3XzeJrWhFarX7Klcto+bg4bZjTswM=;
        b=Qek2zCzb5/RoXvBWCd/0D8EodShEk2Q2sTPkf4uqWBeQzHHRNkoTjwawtreOf2GBfa
         bS8NE1RoJ36ztiDL6TOVNHgxrZljA1LNI3wCjvfipCRGZlD2RcjCNY8/JNClQZdDJKuu
         fie/Szz2PEV1H1YXlNxed3Q4GCSB94zo0ksiEDhkSpcLqrhWxD5JpblSpDl6x7r3cmUX
         5vFTq9ZnHiKVz6p0iBzXlJqxAk9z+UyONL7dpi2eoMhFda/cFh4chpsN00VrIlGn0bxp
         w+SqKWfwbc16Pa6ANruymveWa9Swk1gkr2ray0KBq8AjbvKTyh/hRHt4gpvEmMHAJV44
         pUtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSPY9eDiLm7kof3XzeJrWhFarX7Klcto+bg4bZjTswM=;
        b=YTjYSgs5DQWHN30fB4SHBx3PxeI5XqkMHnxqQGFWVki4mqT7Of84XmlNOeHo3FDTqR
         aLLorC9OBvICBvsMuR1qwujlbhXClDh0JAoKaXQdqsq3SflHgcAG8bAwX1Zrpt2NFJiS
         NIndwnYWGiSEH2VujdCOb8uzgpoBp9hUtnItzklbF1djSz59yxtNUXQaW+4pWsfS/hpD
         InMZY7o5MKBvOgLyQHfDnwyxWn4kl8B1PFB1XjsH7qc0pQJjVidOH7XOePX3Q9DpEYTp
         GlEatiUfa3HZE3p2QHueM5mDMnruFKe1E8gtmfEEmq0C/jY5wkBQXjnqmTt+1CTr9jJy
         /klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSPY9eDiLm7kof3XzeJrWhFarX7Klcto+bg4bZjTswM=;
        b=k/XsXmwCCG55sJle6VZ/VeOJ9MU+XU09oQpXL8ypHW8Qo6wSXqQzm1FRGmKnvFicIa
         mJWUhBvaj59pG4Ejsy1N3dySaxkuFB58CBGjczbRoXRmzy6sVzvvWROvhbyQ7SWVjXZn
         UmgrWYfJEuX7TzoIDVSAL/nQgC5qq4HkdXco7rcxw0uDcEhWDfHLdMxg/NxH2dM5zV6H
         52YTH68HLI0Fu8clDt6eJK4IRTEbO788SWgQ0MEkYY+bqnWtA3za7Z+iT28qWBLDw7UV
         8jQPPJBQ9RKrAw0lmC8ms8a+FGjYPZ6jwRjOB6g91gCZBikBjIkueZoaLo9Kq3gd6ktq
         PK8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaUqfzwaRT9aIoXVOtHVchTk3/hdPoyVpbi7o0xkK2luGej1tuX
	m/byynirHL1/upddZA/3m8Q=
X-Google-Smtp-Source: APiQypJ+pPcgqIUoC888QdJKaBabz+PVc/7rKOKgEkO2EWGCAARiqVkVWHq3rycK7KKXVp1Tyo1VdQ==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr4525089wrn.56.1588689892357;
        Tue, 05 May 2020 07:44:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f6c4:: with SMTP id y4ls4385809wrp.2.gmail; Tue, 05 May
 2020 07:44:51 -0700 (PDT)
X-Received: by 2002:a5d:4f06:: with SMTP id c6mr4436050wru.12.1588689891876;
        Tue, 05 May 2020 07:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588689891; cv=none;
        d=google.com; s=arc-20160816;
        b=jkLsFvr9d5DRv0STrOF54k0t0NyUILoOQynLL7q6ZcheGGSCqfMDTnwPrGDHkwNXKz
         GS3P+arLZBaTLQeQnKrnxT+6Dd1cFdmYLGCnWIUfx5rZs7+4pP0l8nU+hu2UcyeRhUdE
         Aoy70PbNtTELMk71iW5NTjoWbjBVTMXL6VHkiFmp/x9ctRAFaVNECL9Lp3+YKv6UAP1N
         t++aTKFX/UJGq2wnIacnMmV1iJdCNiPic1tWNnkK0KRZJTa8lvdv9evWD10MSoqU9Lbt
         FAtP4AvbNyI7vFwZqJVLoBd2WBd6ksWCmFxwTwpmOFnGBVVAEZUeEg0tT5XN5BRzr8mL
         WIvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PSNzqE9w9ggP7uPPAK4KUUUBVcwgOZ6j5qNH5gD8e9M=;
        b=GK/tgzhirIwKreW+qT/qWsth4DLMEqTOfOMbEaa58ZtfDqcVPUKbLWVfbhv8mDSRXQ
         t+D98f54iODtPFB51vrPVj8wfuLhrnNRjjOjN+Czt2EMgjtIeCEUpvw9qbJ+/EsxWJw4
         snABbVGMCgTluAPX2Yj07UGWRp0cVIf4fFGjfs36jh2dPobldXwn2ms/4yq5myul1Ymh
         Gts67Azjc+9PUO3iDgKoz1DSP1lA2DNVD7cEcYsr1XhjeIakW7Eh52XRCPEhjuXiay23
         M28jt1LgszFNWooeN26mCyq7mxn+0HWAzcXQmrWM6x+3pe/uCCAWoba9UIAnfaeHymLk
         sZMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vrc0/YFL";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u25si167697wmm.3.2020.05.05.07.44.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id y3so3107659wrt.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:44:51 -0700 (PDT)
X-Received: by 2002:a5d:4389:: with SMTP id i9mr4322821wrq.374.1588689891557;
 Tue, 05 May 2020 07:44:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200502031141.2732221-1-natechancellor@gmail.com>
In-Reply-To: <20200502031141.2732221-1-natechancellor@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 5 May 2020 10:44:40 -0400
Message-ID: <CADnq5_NdtZh5_RGDWKJ9c_42XLvrncCs5DDU1YSptfZP94KXkQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: Avoid integer overflow in amdgpu_device_suspend_display_audio
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Vrc0/YFL";       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::443
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

On Sat, May 2, 2020 at 4:35 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:4160:53: warning: overflow in
> expression; result is -294967296 with type 'long' [-Winteger-overflow]
>                 expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
>                                                                   ^
> 1 warning generated.
>
> Multiplication happens first due to order of operations and both
> NSEC_PER_SEC and 4 are long literals so the expression overflows. To
> avoid this, make 4 an unsigned long long literal, which matches the
> type of expires (u64).
>
> Fixes: 3f12acc8d6d4 ("drm/amdgpu: put the audio codec into suspend state before gpu reset V3")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1017
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.  Thanks!

Alex

> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index 6f93af972b0a..caa38e7d502e 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -4157,7 +4157,7 @@ static int amdgpu_device_suspend_display_audio(struct amdgpu_device *adev)
>                  * the audio controller default autosuspend delay setting.
>                  * 4S used here is guaranteed to cover that.
>                  */
> -               expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4L;
> +               expires = ktime_get_mono_fast_ns() + NSEC_PER_SEC * 4ULL;
>
>         while (!pm_runtime_status_suspended(&(p->dev))) {
>                 if (!pm_runtime_suspend(&(p->dev)))
>
> base-commit: fb9d670f57e3f6478602328bbbf71138be06ca4f
> --
> 2.26.2
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_NdtZh5_RGDWKJ9c_42XLvrncCs5DDU1YSptfZP94KXkQ%40mail.gmail.com.
