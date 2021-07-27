Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPUIQKEAMGQE4KOZLGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 116033D824B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:10:07 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id u16-20020a2e84500000b029019c1f8941d1sf33470ljh.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627423806; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jbwdp1vuERweaJ53F7AQekJ7Z/hS7RefW9luKphMfnVsCUe9Um28G0Y8PZJ9Kklx1m
         7afPahwkNGb5g7qeNbrMqnB0ADbMWJXGR532+/jCGV4PMNegblx9zYF0RChA6GhYYIvG
         fIF1mcUTtiEey6Iui35x1GxgFVR9HeUCzHtp4CBFKgwOjo9mQb2Y60m196ajYh0zXI8p
         6GfNrg/WRRTSK0evcwvmkhNsqkVOWFQOEz16D5SgTY06tK839UNkuQLdIz27RzTibvkv
         Z+SIGB3oj5yzFMLiGA2NRQmdZQvBB2KhLh4PzG4QMdQEK/aJRzprcpjBdxQdQL7eKsTs
         6r6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WgyUtafWNGZpNlUYYSlVjFCCDyVNmcZ8zQ16Y0ATJno=;
        b=TvDbbMN5P/keHVpt4I4PlJqJKN6esJwK7msDIGKllQzuQSb7Ms4TCsBxYm9XnA7K0J
         SueKD7IfNvAxDJyuW3R1Hi9sf9h+sJA3MTwvubQcl9K7kDVlhzNJRP9tBt+tkCKCUmW7
         p5C+6N1SSCCr3oz8HRNSSo7ItvrKi8g13sG3mlkVMsFS759s7gVELe28CWUw6PKnuCAn
         iwibBN87LqTMwNp9qUGRfdbBaPH+iZiRXU9XrlHob1Vt1DHKkmFbxuBLfbY8frPGTIcy
         /DWN0YsgJZt+0zNEzuuhIQHy/7iBJvr7Ydjt0yCR9UGjNl+77JFnZViBD53sEFTCO5Qu
         b6qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mtg7UvIX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgyUtafWNGZpNlUYYSlVjFCCDyVNmcZ8zQ16Y0ATJno=;
        b=gvmRDZk16lvKVdv6UY0JzlyX4YsxTHLY6Lx5Dg4sbW9IWgQW0THWe9AK6nAVFWi97E
         cGx2Z8N4TbEzaKGpLLLlJMA9X5NyNTqsRmbWm6JNYXzytD/cXh+V6t6zc3rWmu/iEZ6e
         RXU/6cShXRpmSYN3M6utXD9UoBj3YVauI18NcgzjIjZ6TYFrbjzsrwI0nsgjJkh5EWRL
         DJXOizRomyv1jLgPqpEgX387WI+QgQI+4OMvNKjBglMFMnAE30Y/xW8WOYiokRSGUV0l
         K+OlYCucNVcF9zH+hZRExW14lF0dS/FGoMdvmNTEqssTvw4NwoA9nZjF2Ib897rj1fD+
         wt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgyUtafWNGZpNlUYYSlVjFCCDyVNmcZ8zQ16Y0ATJno=;
        b=YHC7Ak+n6VF+y0O7DXg3k2fK07CH3P0CdsWSNczk2qzZMw7Z6vn6UQq44de9REGAlT
         2bt8ezC/Cp/EtCpaz3s7JdZWFzA0cSEFMqFL6H6bsvQY6QnWUm6p+ReV5e/vLHvS3rQg
         y88m2mc9sesJ+G88yjp7ecVjw3+yecs0evnMrOZRUYP7SrOq8NP1GjskgAO8yTZJQqSl
         lL0D0+UFe2t/iVHW18KcSVSxWG0M/IAWgXzKFSI3weolAaYPZxtyDHWHWbbGSAmy3jWx
         3yIDl4VrBEwtbOfse8wx9Jpf3FImIbjmWUByBhLcoIqBnOzbWw1gjXr4xleyNkRpF9Vn
         qt0A==
X-Gm-Message-State: AOAM5308BwEZO3UGJu0AqjvQXWTEe2SP7FqkIHKyvjfDgsHyAH5k+O6G
	TW7wtQw8sO0mj5s/uUmU5Wg=
X-Google-Smtp-Source: ABdhPJwqj36e6S8I005ti4ELzd3HP8dKvNr20tcvwCS5Nz1IvL8EIbCFpywRnLcX8/9ahRIGEFTI8Q==
X-Received: by 2002:a2e:88d2:: with SMTP id a18mr13624332ljk.143.1627423806619;
        Tue, 27 Jul 2021 15:10:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf01:: with SMTP id c1ls35432ljr.6.gmail; Tue, 27 Jul
 2021 15:10:05 -0700 (PDT)
X-Received: by 2002:a2e:a288:: with SMTP id k8mr16592247lja.315.1627423805559;
        Tue, 27 Jul 2021 15:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627423805; cv=none;
        d=google.com; s=arc-20160816;
        b=iHUU2ofI0Os6lyaxOgrV9b6LXE4Rj/F7hPcqqQ1TWuA5mTytCSidwKvDxxPRIY6c/2
         zEz3brf5xdZI+65Hi3GIle+LjVcWkxnA2jEe0VytytV7MtDJsQNCV4RzhBrcVFUPA4TT
         8wherRZLHKp83H1WJkbigEB4C+apTbae5J9JNYBKOh3ECKK9qLDG2VOfvmPfvAs4z/Ci
         rPv2NxrBXnD4q5H9NL/Y+g++Xkv/QIWqzUcCZsLnt8RoaJWx1cVZhO15+r8hv6HYXJpX
         3m3NuA2NAql+Cg/y0govYicDwJGaAIhO8iyr/lNLQwqGEnyJn2kca2J5p4u5KPAss2LY
         ShCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Me242R8AZID7nydJuzmOJvf7HnA4KT86i2Sp+jcSDo=;
        b=EAcsGDbAxk+tY/lVv8x+lPe1bUQDemGZKmjLg73tXA2+tN9LMrr/+kl/QKRoKzPjM2
         fQYRuco/1lf3GzpUlhRz9iEZGfbAauxDv59wB/GyOx4bzmnSQlz35Ljs3QoxE1oO8Ry1
         XblwmAIPsfCkNjgI8WhV0XrqsTiNi+J+Vc36B3p09g27nuu09qKP0PSYHznzNqPB3UJh
         rkjweKfn786iDh14hDr3qGTK/xZr6B6BOr8nfl6z7TGTa2GpTTuGEZAgli4J4Jvl0k7q
         ktZT5JeFYzdmsf+/Ql1tSJZd7RgC/1UPWT3dQDxzYCK7oA+1i91+ZapspwEXcZps/fwW
         /XNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mtg7UvIX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id d8si159374lfa.6.2021.07.27.15.10.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id a26so54605lfr.11
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 15:10:05 -0700 (PDT)
X-Received: by 2002:ac2:4ac6:: with SMTP id m6mr19252738lfp.73.1627423804990;
 Tue, 27 Jul 2021 15:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <2109475329.10103.1627349216402@localhost> <77ac9112-b6d3-e911-6944-3e2188b23388@kernel.org>
In-Reply-To: <77ac9112-b6d3-e911-6944-3e2188b23388@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 15:09:53 -0700
Message-ID: <CAKwvOdnw1iRgUf8yW0mW6XzAU00CyMvmyqWpYcaNJLSAY3=CkQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allnoconfig
 - Build # 10 - Successful!
To: Nathan Chancellor <nathan@kernel.org>, arnd@linaro.org, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: ci_notify@linaro.org, tcwg-validation@linaro.org, 
	Javier Martinez Canillas <javierm@redhat.com>, linaro-toolchain@lists.linaro.org, 
	clang-built-linux@googlegroups.com, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mtg7UvIX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Jul 26, 2021 at 6:32 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/26/2021 6:26 PM, ci_notify@linaro.org wrote:
> > Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
> >   - tcwg_kernel/llvm-release-aarch64-next-allnoconfig
> >
> > Culprit:
> > <cut>
> > commit 8633ef82f101c040427b57d4df7b706261420b94
> > Author: Javier Martinez Canillas <javierm@redhat.com>
> > Date:   Fri Jun 25 15:13:59 2021 +0200
> >
> >      drivers/firmware: consolidate EFI framebuffer setup for all arches
> >
> >      The register_gop_device() function registers an "efi-framebuffer" platform
> >      device to match against the efifb driver, to have an early framebuffer for
> >      EFI platforms.
> >
> >      But there is already support to do exactly the same by the Generic System
> >      Framebuffers (sysfb) driver. This used to be only for X86 but it has been
> >      moved to drivers/firmware and could be reused by other architectures.
> >
> >      Also, besides supporting registering an "efi-framebuffer", this driver can
> >      register a "simple-framebuffer" allowing to use the siple{fb,drm} drivers
> >      on non-X86 EFI platforms. For example, on aarch64 these drivers can only
> >      be used with DT and doesn't have code to register a "simple-frambuffer"
> >      platform device when booting with EFI.
> >
> >      For these reasons, let's remove the register_gop_device() duplicated code
> >      and instead move the platform specific logic that's there to sysfb driver.
> >
> >      Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> >      Acked-by: Borislav Petkov <bp@suse.de>
> >      Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> >      Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> >      Link: https://patchwork.freedesktop.org/patch/msgid/20210625131359.1804394-1-javierm@redhat.com
> > </cut>
> >
> > Results regressed to (for first_bad == 8633ef82f101c040427b57d4df7b706261420b94)
> > # reset_artifacts:
> > -10
> > # build_abe binutils:
> > -9
> > # build_llvm:
> > -5
> > # build_abe qemu:
> > -2
> > # linux_n_obj:
> > 600
> > # First few build errors in logs:
> > # 00:00:38 ld.lld: error: undefined symbol: screen_info
> > # 00:00:38 make: *** [vmlinux] Error 1
>
> It is good to see these reports again :)

Yes! Is Maxim still driving these or is there someone else at Linaro
we should be working with to keep this reports going?

>
> This was reported by Mark Brown today for linux-next and Javier pointed
> out there is a pending patch already for this:
>
> https://lore.kernel.org/r/20210726213600.4054-1-broonie@kernel.org/
>
> Cheers,
> Nathan
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnw1iRgUf8yW0mW6XzAU00CyMvmyqWpYcaNJLSAY3%3DCkQ%40mail.gmail.com.
