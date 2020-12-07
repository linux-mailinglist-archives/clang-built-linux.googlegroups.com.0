Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJWZXL7AKGQE46NPMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DC32D1D4A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 23:28:56 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id v18sf12373996qta.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 14:28:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607380135; cv=pass;
        d=google.com; s=arc-20160816;
        b=yjTPbEJSJTJLPWYqlXR92ktH9vhnyhISnro5a/WaRWzu2iP11htq8VeXNZdiBWj/BR
         s/zdRD92DuYWoEdJrYzserjOoFWlLX0HVIH5aezMCOpWcZd9nFkveHDtZ+IQXxS9QEe6
         LwE68PWiVcy2A0B3GXTjoFIQPlWG5/KVpsY+rNOQIr+Xvvf/RtiAfsFG+7WMv190yq6R
         DLIv69KZtF8vzB3pVH7vXiSu83T6o1iX7TLaUZ0i2J3v4c7bFpjcou0BFknOGvcO38M+
         /O0cy8S3OG6EB8dsA4kBgVrGRVfCDE7osxgwR/KWbQdhzj+dmzKybqdJAw5bSy84tBu8
         Zsqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=En4OqB8wbt3dFoeRJwOhRE8eSZdKUBHfwni/eYAlfoI=;
        b=sDusEjomE6yA6hxpJgXj3in5nhAS64HbSoSS3csNlM5mlZ0ydkFMB+ITCUOf8fZ2H7
         qWXC3IV8SdBV03XXBCQn80vivr7KG83iOBN97PyYoQtVre872ooMDQu6SogiIPBFFAkf
         LRUhxtHcSf69X8xu/mXd/MQ7FXEqjWF8fpNZuT8rFIK3J7VuJrFQqHSldN5dnkUZAnYh
         9seBXKEGvrtX2ex6lEidxW05532RVv+4ByXFrtL0I+PxCLdo82xQUm9CyBmaprZyKw1Q
         xdEbqxP4hM+RxUFuUZ0sHS5RSJJtw+N1xExSX0dO6v3NVuOqahvfZYVHoWbLBvKn1kcc
         PuoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kdu710mW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=En4OqB8wbt3dFoeRJwOhRE8eSZdKUBHfwni/eYAlfoI=;
        b=jpY/XLirIZHBPIisNYVyDD3XwxA/iL7xgWxYErQsZYBj4W1ortCdWUt5aqTWpqSK0V
         1PQxg+DSRJ7OtJJ+5O9+P6nWCB6UEIjV/MPZuTKCXRLK2GLl6tGg+CEi4fq48yKSew4K
         g85N8ku+Iiva7OakG5tw6b81dpaMHjF1fNUYOIV24MOPrcK/cC6dYSvN2TUcB6DUz/5L
         8DkbyRVqQkyvEc7KtBiV2dcnx5b0FoGzNEYxPxMuf5m7mteD1IL2aNsZmoXJRPCEfQFw
         uqrZ6TCQPxe8KBEI0VjLDynZNNYOLMxa2bCHPaqZuAEVCzqDLzSWNuqFJYM6p6QJKX1G
         1yGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=En4OqB8wbt3dFoeRJwOhRE8eSZdKUBHfwni/eYAlfoI=;
        b=cpzwb7mRL7zjn6b8tU0KqspVo6aqWmEden0I9c7AQ0uzqHO7lIv3wJz5wPLWrI8KfH
         M7WajZe26v8JPZainx/BYDm41bRnOzWAvubCVFs3aAIjy2gBYL6Xmiqy0kA8CBXRoBlN
         1htCNGoU36wyPnz+1bQa48CY9LcwTMnwJ6YzA7rvfojIKZXOWAJmX719CACwIC6mX2I0
         dgLsjmJcqgU+NQx5ZrrDvv1itx7vzOLOgJVVRZtqo2FqMCuJvebc28wDFQi3K52oN9P1
         9WFRmSHLYWpfzcVyCNdxcd0rJwWcYEYUtKP2Nd56AGmawiuzTKY8pH1MqOFLwv5+w3NE
         JQOQ==
X-Gm-Message-State: AOAM532Fdhq8BJWFGiJ6+z8R7OUyiWiN2vMxYKgkFCeKwKpdCNrqpii5
	rwmyfuEV9iJf44ThKI+0BOM=
X-Google-Smtp-Source: ABdhPJzrD+5NxqLlIbZyrkCZn52A2FIGuO64QfxXj7IHb9KnEQqm6t8dfxhwI4WVl1mRgHXDLnbwbg==
X-Received: by 2002:ac8:6e8b:: with SMTP id c11mr20508590qtv.314.1607380135009;
        Mon, 07 Dec 2020 14:28:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4787:: with SMTP id z7ls1094322qvy.7.gmail; Mon, 07 Dec
 2020 14:28:54 -0800 (PST)
X-Received: by 2002:ad4:4bb2:: with SMTP id i18mr23531670qvw.52.1607380134640;
        Mon, 07 Dec 2020 14:28:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607380134; cv=none;
        d=google.com; s=arc-20160816;
        b=zPFl7Xz3W/cdH9aXtgCGPiRAaOmtEMckj9Lb9q3qKTzIrBbWcTzfYSPjgI7H6nwcbW
         fPX4dIiGlUydT0i9+XuGjaW0jy7+6JqkN+rk9VEGd6FXtRwlPPrZnxRtvsoHLXKBrgi1
         apgi040u8yuUGGLg9i89Dz/FPuno7nSBXHp7QwzbLB1vAOz+otSGTUkL2f0Oah0pR8Eq
         zbpC7mYmQA+sO8qqNkS8fQlMb9ueV3vBQ0oQXKB0KGM0HJW7XDOeBdrPF5GxawO+eVMD
         vfv8UIpicAdDJNDuoRUSycrmuQZ2dJ4MYDhJ8t3z4xn9bAq+hfRwGFtmMPItL6V8YN8o
         NYFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EWXoV2CMUKwuuJ9IGyn1rKyPqeDvcvXFpNW+D3PeZwc=;
        b=EVWZ/r8ncui0x5nY0M5KH0snmiiGedEd5SprbL7vggh2iB57acQUBItAQoUy3KhpRK
         CEDzwwWN8RuVU5GgBrPEDTFU8ABTNo7UugWZkrKyASavbZO+IWCXfDyXUxPlgCaLHRTY
         uuVJgud2oiJYqSiZ+bVtmI54Eqxte95X1WQlA6lLKoj4/ZcRVzY0lZe1pg2ETWm2JTWs
         Dhs4lVnx88Ppy8zBkUwBd+8puCSsY2NZ4o6PHisVSRzHpa7Qq/5HjOsCgL1v7SpV5yPp
         A0y0Um5e3F6n2w3/XBfBCCVa4r8QQTIEoKrkJ9LVGAbOHh0Oy8PxEFipzequ1OqpnmIi
         pLQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kdu710mW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w10si898296qka.6.2020.12.07.14.28.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 14:28:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w16so10259991pga.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 14:28:54 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr898064pjb.101.1607380133527;
 Mon, 07 Dec 2020 14:28:53 -0800 (PST)
MIME-Version: 1.0
References: <20201204081349.1182302-1-arnd@kernel.org> <CADnq5_OmAVZGuz=xHRyST4hE4w1g10wNBQ6iMgfpQD16-9QSiQ@mail.gmail.com>
 <b9d7e33c-4dcd-0075-d0ca-d22b2488c354@amd.com> <CAK8P3a09KQS7S5-vJU7ECJh0HXUhwZW9zOOp4c32mtvM5XcU1g@mail.gmail.com>
 <CAKwvOd=-2zoc06EY4R9ZJ0M874bQv3NuT8a0q9=RoYeMMtnXVQ@mail.gmail.com> <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
In-Reply-To: <CAK8P3a0gjPWiRX0yg=i6Qxgyo02AtQVVsw+=w-OvF956Tn=jDw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Dec 2020 14:28:42 -0800
Message-ID: <CAKwvOd=+w6vJvvq9Pwnv1EHHzwCx=o_=PbSozXpqryN6P1yxVQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: make DRM_AMD_DC x86-only again
To: Arnd Bergmann <arnd@kernel.org>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Alex Deucher <alexander.deucher@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Nathan Chancellor <natechancellor@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Mauro Rossi <issor.oruam@gmail.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Roman Li <Roman.Li@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Daniel Kolesa <daniel@octaforge.org>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kdu710mW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Dec 7, 2020 at 2:17 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Mon, Dec 7, 2020 at 11:08 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Mon, Dec 7, 2020 at 1:57 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> > >
> > > Right, looking at my latest randconfig logs, I see the same problem on x86
> > > builds with clang as well, though I'm not entirely sure which other
> > > configuration
> > > options are needed to trigger it.
> > >
> > > So my patch can be disregarded, but I agree this needs a better fix,
> > > either in clang or in the dcn driver.
> >
> > If you could give https://github.com/ClangBuiltLinux/frame-larger-than
> > a spin again, I would appreciate any feedback.
>
> I've already tried it, but the tool doesn't seem to like me, I never
> get the information out of it that I want. This time it failed because
> it could not parse the .o file correctly.

Can you send me a config to reproduce the .o file?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2Bw6vJvvq9Pwnv1EHHzwCx%3Do_%3DPbSozXpqryN6P1yxVQ%40mail.gmail.com.
