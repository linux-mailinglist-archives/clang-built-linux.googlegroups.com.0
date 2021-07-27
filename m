Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEOE7WDQMGQEDFTTIMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 174A03D6B8E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 03:32:03 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id w16-20020a0568081410b029025c350a89fdsf7944489oiv.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 18:32:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627349522; cv=pass;
        d=google.com; s=arc-20160816;
        b=VQIHjq0L+J5pM3sLnrmNO+6D1tOkR6XvpNuWVKi26go2wktqdi33Xy9KmTAy5COcd5
         Wb4cd1gwMeh6wLlCARbpxepsk/7ok91DSKa5GPubDCeM2V4UYSs1aLgJt/THml3r31yZ
         G4ze8W1AUauZq/bgfjTNe5ARLaf8t60u8zK6Vzgi3ABXtKxia9yhHEMdtfUto5Z0hOzz
         bmg6h46uLmUuekLolLSfM7RX5PCQAlQ25lyFolbtGxGSI323fTyoNuAljHAm5NyMs9Uy
         iPvGcotNgANM1moF1wpTvqSTX5Bx2uxN7ZX36KSkD6mSsrMTzMwjAWd7PJVluyhu/5p2
         wUag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=sF95lbCehJM64Q4x4Y+fBeG3Gtdc+Nhs+5Rg0YN/1hY=;
        b=dD8Z1FMFNyHPA+2lS5ynj0EqxSPp0U4uPMDFWzSi0KktEGrGHBoB4ECtwoOeJD1hZa
         G1AWe7MpHEa71qlLvIdcvOlNCIFGtK+GQQ4/BhzTIeDhQwIDdr/EtJ5Gjr9o2zDMe5pP
         zslF0MSwPVGGpl8XMDnQCQRoUHfve/knVrhm7HiheqBR9Gb3BFU5ZqimCrrF1O4rEIAm
         EUpLPHFsXP5eMiIAFa8h2dTTDvg5tQBpcNplQ1ZiqDALjfgtwibPJ0302iAcl27D1EN8
         3PuTa4tUzwI7fdWJRKbjlyA9BXmVo08j8Obh7efgmM4wnxyVBeA93dW2SsPLW0mJgXby
         gpBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fw8zee7M;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sF95lbCehJM64Q4x4Y+fBeG3Gtdc+Nhs+5Rg0YN/1hY=;
        b=BRyuJPfTO2kD8700N2mtwnKzMkwHvfCwYIKWqQTj9BjGqm7oNqkgJ1POsfMTOtIjHi
         Ef4eAw2YvoLiM2Ghl5PGu94hVOdV2LFxgxxeqc7h3FvUuchAs/DR/cS6G/ZTwlcO61Y5
         3GtUMf/y2nPr/uD5wOTuxdN8ugqAhOZrfcuudVkI+BGBB0kMXhufsTW0Oqr2vdnukMZE
         VGAPiSQl1QIgT+B3R8S8W/HOO8kzkcpogFvxW2/D5NKTDAfoLVyoFBey0falc7wz8crw
         QwE9jknGt65cwzmCq/J7Kljo9H1HmlcsbDwk3VDtasAosjUNO6ICc99Iv63cQ0aU0/h+
         RlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sF95lbCehJM64Q4x4Y+fBeG3Gtdc+Nhs+5Rg0YN/1hY=;
        b=EP7WqQmYm9KyShaM40oi0NrdOLSzCpJgd+MSYHbBeCqEugEBGWBiMwhM9Y9B0I/RSk
         6CARlGQInUokBAbUdZhSFm1BHlOSdxZy/agi2YbWbhlNxgBSdJD6bjRzK/QhkfaEpKQ/
         RGCNKq+BG0BoAAFvQIopgK9jG0hr8SkLmkTDmWIQOtMUyMRrXhJ52+LPLqzVNWhjYRp6
         FQWC5wGw8HDQQIfjN3r130ft+xgiHZbQa4cf5CK3Pxk1Z7tjK+6+OSweHKBclwdPF5nJ
         cYvxxpzbFcAd+zBu7JX6xNjh5MZAOZHBcaP/frvcQBSjywljZegUqvH119CmiDiDCPBI
         qdYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533udgO7fIBRTF0nvhDdyfr3AMU2WwQdg0TDBaaUnNQltaDFA66f
	tbWnXpWkGwNCwINtras9CLg=
X-Google-Smtp-Source: ABdhPJw6ywN9ZYwge7A3a6vXtpAT7PrPJ7Oac1tJRuKrEagCWm1rqmc926fUzvHN7ap+JgShOcol1Q==
X-Received: by 2002:a9d:5c8b:: with SMTP id a11mr14286236oti.206.1627349521910;
        Mon, 26 Jul 2021 18:32:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1642:: with SMTP id h2ls6277144otr.5.gmail; Mon, 26
 Jul 2021 18:32:01 -0700 (PDT)
X-Received: by 2002:a05:6830:2786:: with SMTP id x6mr13993513otu.359.1627349521556;
        Mon, 26 Jul 2021 18:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627349521; cv=none;
        d=google.com; s=arc-20160816;
        b=0v3fj7r9Ipk/7mHjFSgQKK7budQiU7i80LSRMu3+Zrd4zkD49RVUJY8Akxmg84hRUr
         WXpkzoM836oMLYmtnqHmV81GlumdakGYUBvt9bE+4DoJoy+qnU7V8vf4inuy2ISITI23
         Oin2aSPLAnnRT6MVIb9DNxfeZC8ZfNrL6NpO1PqOLZPoDxGlHEWnfroPJVyUxvrSKt8w
         JbLpBhNu2WyYP+8zf4WyAYdZerBaVmWGnRl0nC4E1LrBhqWkoRQ5gLq7vqAPMJXMgGsR
         Er9ysYHZD5gaCsvVEnumieob34Maa8wKY2v/nsKfCQZZYpzhV/UzZZEI8orFNpPYRbZ3
         h3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=L5cyl/XGMmr+SdlmlWKD+EddoLj+N/N+YZJpCHFuBTY=;
        b=NVRbqv/QhjnASmZMJq5IyLMklyDTDPaaUCOrQKCmbmjnJGOkc55hcXnaZb+1A5ZSmj
         f2EHmc9b0d6jOUuRWoJz6m+9CAFHxTyF5CWRYg+OVKz2DGEoVSekY5AGx9rqLStvS8MV
         AzC5txLG7TGH8tYFx5dlqvFysYYhrQ6xPgQGjXwOcbjefaAc9IvSqCi35yV3kTCPzmbv
         dv89p9UFVaWq/Ea0ylWxNxm/SfdF8/9rmsKLvkWgAA7WVtORzg1Vhoe2ax1Iv0OZut5Q
         iJbbMSg8f5jn6szwHygVIIOzYqrWspxbS61f5Y+ATDGP6LCnS8cnPINwci8/Psx18aDp
         mixQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=fw8zee7M;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l23si146081otb.2.2021.07.26.18.32.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 18:32:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F8B2608FB;
	Tue, 27 Jul 2021 01:31:59 +0000 (UTC)
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allnoconfig - Build # 10 - Successful!
To: ci_notify@linaro.org, tcwg-validation@linaro.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 linaro-toolchain@lists.linaro.org, clang-built-linux@googlegroups.com,
 arnd@linaro.org
References: <2109475329.10103.1627349216402@localhost>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <77ac9112-b6d3-e911-6944-3e2188b23388@kernel.org>
Date: Mon, 26 Jul 2021 18:31:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <2109475329.10103.1627349216402@localhost>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=fw8zee7M;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 7/26/2021 6:26 PM, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
>   - tcwg_kernel/llvm-release-aarch64-next-allnoconfig
> 
> Culprit:
> <cut>
> commit 8633ef82f101c040427b57d4df7b706261420b94
> Author: Javier Martinez Canillas <javierm@redhat.com>
> Date:   Fri Jun 25 15:13:59 2021 +0200
> 
>      drivers/firmware: consolidate EFI framebuffer setup for all arches
>      
>      The register_gop_device() function registers an "efi-framebuffer" platform
>      device to match against the efifb driver, to have an early framebuffer for
>      EFI platforms.
>      
>      But there is already support to do exactly the same by the Generic System
>      Framebuffers (sysfb) driver. This used to be only for X86 but it has been
>      moved to drivers/firmware and could be reused by other architectures.
>      
>      Also, besides supporting registering an "efi-framebuffer", this driver can
>      register a "simple-framebuffer" allowing to use the siple{fb,drm} drivers
>      on non-X86 EFI platforms. For example, on aarch64 these drivers can only
>      be used with DT and doesn't have code to register a "simple-frambuffer"
>      platform device when booting with EFI.
>      
>      For these reasons, let's remove the register_gop_device() duplicated code
>      and instead move the platform specific logic that's there to sysfb driver.
>      
>      Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
>      Acked-by: Borislav Petkov <bp@suse.de>
>      Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>      Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>      Link: https://patchwork.freedesktop.org/patch/msgid/20210625131359.1804394-1-javierm@redhat.com
> </cut>
> 
> Results regressed to (for first_bad == 8633ef82f101c040427b57d4df7b706261420b94)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 600
> # First few build errors in logs:
> # 00:00:38 ld.lld: error: undefined symbol: screen_info
> # 00:00:38 make: *** [vmlinux] Error 1

It is good to see these reports again :)

This was reported by Mark Brown today for linux-next and Javier pointed 
out there is a pending patch already for this:

https://lore.kernel.org/r/20210726213600.4054-1-broonie@kernel.org/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77ac9112-b6d3-e911-6944-3e2188b23388%40kernel.org.
