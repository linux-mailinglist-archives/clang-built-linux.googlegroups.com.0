Return-Path: <clang-built-linux+bncBAABB2V74CAQMGQELOV6FHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B95A325941
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 23:08:43 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id x5sf5173438qti.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:08:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614290922; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVkOPonBDeVHDxWI7JBLdgyET+1fJwpzyq8tuvOxW56jkTuSL5Du2EAXAWEhNsCOUI
         0ENJmYWc/p5C5cpXa2UQgz04BEc0Nc/WxBehXo5bFX6Snr8ogI8D3fzjSVP0utcsE73y
         S5tbLkSEKFHsxj0eZJ/V3c7nznQGXjKNd50MQHns0hZet6m+9wek2g6sJ1lYVlHD2Yac
         7PRbgbSyGEBdGiCeZ7hvI/bhyMfSe16ssCunwGOD2i/X6n7uufLRk22qhID8VcEabV4a
         pxGDcXYMsyQrlHQLpzBvUF/ADwuosfJWv91dK7tV9foVtzlJVp44P3QkZ5r9bMi2i+Bc
         kefg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7Lcye6RPTFNP4asbvqrFI1kcPVt3HPa7imuRgKragws=;
        b=WveJIOOgjrG5Q2m3RSj11pKA6b76irS8EQlbRxt2AZEooB85lglHLtmO2QvJoxtRVq
         CM11ii3RJf/Gxfo1qNS0Q+UOOOQJBddoIe4AgtWjDN3Mr4JIg5NdHYq8TB4DnPKW+Ow8
         jNtveHft7wVyqZRFlJIJE+P1oOxjm4VHnjso09nufGPeA1FkvB4zUmfUmzTTrwlyD6mv
         hpkhE77Rq2MTXSF7D0t7m9uv9qI6m1OmZb94/z6RYNDg/f0osFinjx+2sOFLg8lp34K8
         6CfaXpbWKxRgHUOJHWZsOOPW1YUzXQW0pf5RMtMnMU0i4DbMJIofEPN3gevLhl0EXW8+
         Ezpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZggjfsYN;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Lcye6RPTFNP4asbvqrFI1kcPVt3HPa7imuRgKragws=;
        b=De1WB0GLuwoH3QX0X+39SgEyRearTK+eePrqf3L9mzQvYhDRPsHmtNQLzwkNXXNw8n
         Y+SWd9OgHzbRuiSQd7SF54z990TJupqFGf84IGvm3rG5TegcBZNXv47jX9ikcoSGvlGT
         xkYcF+YB7Wt2d1VhL4ZWDJ5iJKmMdB58SpW9Fj0KxCmfDzqTNj1dyQgpgS2ldM2jRBgt
         r6cevhmoBzkvdIFaA6UqW880oKeDHwhuVwkUj9uXres489DG4mn8A4IqWXFuyZKVw9qg
         yKTrxXYAtQ8UWmF4WU2I1FQAezsbQGd+jNOSkQ++paRIadIazilOJXbNOP0WykMz7AXP
         bFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Lcye6RPTFNP4asbvqrFI1kcPVt3HPa7imuRgKragws=;
        b=ewEkowPFjLzSy97mcn1oXimMEPPjmwfXCD+KblK1+P0DedXh1THiHJbruy4wgylNqK
         I+tgtrr6JSNMLucO1KUaVz0ytGPR/WVtTCFoS0IjO9hBXbuw47Bhh111UajxRtS+D6jh
         dFuqseal/5sjha4s71DzWFWKs19nZWqgXF4LA9evNKPSzVIkdfV6/RNyfe2TXqvDF3QM
         2Dd2GqIA/IIMn9G9Fuoy55P9H1wXs1d4gPcjxqAgM/dGLGRO1dRRia+LrBRmZ0Up8FNE
         5r2B0+RKEcEQVKIadhy2MQduNRlHxSFOFhXIAS9d8SuWWtuRKhI3wm9P3zHwXfr+zSLx
         yfrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sOAsz2JTRjYbASrlRKXB+W1E7NbcbI/xNhscTphzNvrii7Sp+
	xu503iwXag3QMreklNPxCSM=
X-Google-Smtp-Source: ABdhPJwL60R/QzKe7ATjQbETsGLM+6fLr6Jwg8t3D6IMPLyMGleElKcS8LBU3wssLyMZZa/RAH3fIw==
X-Received: by 2002:aed:33e3:: with SMTP id v90mr211466qtd.41.1614290922227;
        Thu, 25 Feb 2021 14:08:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls3760262qkx.2.gmail; Thu, 25
 Feb 2021 14:08:41 -0800 (PST)
X-Received: by 2002:a37:bf04:: with SMTP id p4mr5110857qkf.459.1614290921859;
        Thu, 25 Feb 2021 14:08:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614290921; cv=none;
        d=google.com; s=arc-20160816;
        b=Y7sFXMddn8NI7xcvxzFC3h0wid9K+M6l7tBrk6rubUaWv6An0JPSZGJsTWZ//F7UBZ
         7d9rjj8EDGpioCR0KvhUlsXhrFZeYpf9A0Un45za0CDnwiPe104EZDl/CJ10z2p97lKm
         l5n3KNeSSehmL+nPtgmvSeKCONJXwvjDYx0K3NxGQ8Mg4D3uBJNOR8bEw6hMjvposvWh
         jDVz8AXSqiyZ3fjRS2qlYufiXKD4l2/YzKaoSxZj0khla/+cxIoiWBxUIR7hSMaKAJ0t
         2vYAeGOj1ddOw2RKQbR71/RNAxyGo84IlFryZMXar1otv7P656arHDF6TAQJ/4yAzxsu
         fdMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gTvlqLNrtJ9ICfbf7sqeN9KjkYFwUR6wTEfk33ztBKU=;
        b=xfuOyCvOjnoSBtgOyroW1rTxI7swB32Q1ocs7QQovUHUsKaOPt2nKIDNYvtiWHwFkh
         NVWiQ5SubhgVp/ibsFRoqkWRWnLXBQmIF8OC28bNns+qcjfntEqGOdOJvRMaQe0dWD/c
         vFQecfVyMfe7qGM3Uo9vueGZ7ISo/xdsEWuEa1jLOFKeAcsdbBYy2RedCgKMcxA63DCw
         bZsN1zUWrSYiKNqXk5HCKAeFr43aAYU0fWqXpfsf3e0YTgaAi+6jn4m3D+YwDb7sZh7q
         Kgjt1UY0ukYTvc9JeGC4MG0QVklDaK19aAgRLnruKVFDPNiwJCjUowqFqd92Byhk6dDq
         8Oow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZggjfsYN;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d29si21449qtc.5.2021.02.25.14.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:08:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4881664F34
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 22:08:40 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id 105so7276834otd.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 14:08:40 -0800 (PST)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr4028035otq.210.1614290919292;
 Thu, 25 Feb 2021 14:08:39 -0800 (PST)
MIME-Version: 1.0
References: <20210225150119.405469-1-arnd@kernel.org> <CAKwvOdkWfQi4vPphJ9X+xQ5MdzGhrHr1mj=oFGh3Yv5TB=76_Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkWfQi4vPphJ9X+xQ5MdzGhrHr1mj=oFGh3Yv5TB=76_Q@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 23:08:23 +0100
X-Gmail-Original-Message-ID: <CAK8P3a32ECSnoi=4Ux5RFLdtTxZQe3vuyoLht1SdZ8zujtNrQw@mail.gmail.com>
Message-ID: <CAK8P3a32ECSnoi=4Ux5RFLdtTxZQe3vuyoLht1SdZ8zujtNrQw@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Fix an uninitialized index variable
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <nathan@kernel.org>, Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>, 
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, 
	Stylon Wang <stylon.wang@amd.com>, Eryk Brol <eryk.brol@amd.com>, 
	Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, 
	Simon Ser <contact@emersion.fr>, Qingqing Zhuo <qingqing.zhuo@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZggjfsYN;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 10:34 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> return parse_edid_cea(aconnector, edid_ext, EDID_LENGTH, vsdb_info) ? i : -ENODEV;
>
> would suffice, but the patch is still fine as is.

Right, I did not want to change more than necessary here, and the
original code already had the extra assignment instead of returning
the value.

> > @@ -9857,8 +9857,8 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
> >                         }
> >                 }
> >         } else if (edid && amdgpu_dm_connector->dc_sink->sink_signal == SIGNAL_TYPE_HDMI_TYPE_A) {
> > -               hdmi_valid_vsdb_found = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> > -               if (hdmi_valid_vsdb_found && vsdb_info.freesync_supported) {
> > +               i = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> > +               if (i >= 0 && vsdb_info.freesync_supported) {
>
> reusing `i` here is safe, for now, but reuse of variables like this in
> separate branches like this might not get noticed if the function is
> amended in the future.
>
> >                         timing  = &edid->detailed_timings[i];
> >                         data    = &timing->data.other_data;

The entire point of the patch is that 'i' is in fact used in the following line,
but was lacking an intialization.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a32ECSnoi%3D4Ux5RFLdtTxZQe3vuyoLht1SdZ8zujtNrQw%40mail.gmail.com.
