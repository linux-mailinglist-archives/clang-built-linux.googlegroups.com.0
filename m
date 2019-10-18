Return-Path: <clang-built-linux+bncBC2ORX645YPRBQPZU7WQKGQEPXDU2FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F7DCD1E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:56:18 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id l24sf3656934oii.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571421377; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pp7hlZIO5sBGZsXg2xkbCvunRdRQ3+24HW300CYIlv2Os/qPc5EpHRLKlSAtYKud0n
         usNbWRoG5f4mIc7FUHHeVa48sOMqKCZsi/Bm0vuYnWGY36FUAerr2IPYjNfa3P6HGrtS
         OEHEgoZi1/lRarqD33WA8o1+dqAeAqTKRwVSCZ2znFExxwOjak5ChLqPWvR+GbjZHW9O
         9TDFMpT7yVC7fkrVI0p4wRHtz+rIb+5MJt+Zq6Lz+OGjsMMI8CQLbYHM3isMieVB7RSa
         j1gQnoWMDkCqx5uOVaz5Li1jb/FDiZQL5A4h1NWP9ZeIGzbkKgwFGGXjLJHVrltP6Zt3
         mAWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YbOzD9uIlLyaWl/btzUvxp8kcjnDGFMy3P2VDNu0R7g=;
        b=XN3ybE+R8qdZE5EheZFL9ACl7l+P5L4L19dC/K0VfxSfPPNU+71vHEscVMDp306fXp
         Prrl/qhFBNqNXE8QybF9RsGEcHBDoFZU9qy4Cv+eGRzU81V4ezPljlCIH0bh5ERMFLgm
         moP8J3a2YmioHGwU1ctweu+5Kt2XcLVuXVRnShe+o31oUf6Y3otoW1wngn+YPMitCgQk
         WR3APXDc4vgTtFA1ui5FJR9gwkqCeK4m/qf7mFAZH03iISAH7QrgDiUhs4ToxwJe3eTH
         z8q1UIRCDFgNbZrsmVUamhCRIAggGBaSz+QwxBKQn+UBOu19Yk+kiMqxQ2WaIHum70s5
         VQeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=olkgjhwO;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbOzD9uIlLyaWl/btzUvxp8kcjnDGFMy3P2VDNu0R7g=;
        b=Q78pgEEttd1IFClsUddFNIN19/b4h/TJDH6NWJykVtkF9jzVBRpJV+F+OlIj6Y8vPG
         zwgPQ54bh5SfgEH71/lgpJ/S4eox20asBWa2HyoYnsvMDSx5+cHXPrnh49MRXsjlJ9LU
         T9RQbx8L8v2qU6cr0fK320jJ49tglk5+4zvZv0Iu04ucFCY5dvMtqXsrO9E894xu4cXB
         ku+FcIZg5v7MQmO7X9wPUVefM131ESz9Eb+L0XKDmjY5AvKFL0OoIGM4x0059DXsLkZj
         zMbBaEBSjLJUJJwDclht4pVJMHjRCVQlZwFK/4ZbNc2SaErAGkD9WQWUBsHQxxmx4a/v
         KThg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YbOzD9uIlLyaWl/btzUvxp8kcjnDGFMy3P2VDNu0R7g=;
        b=YQoWh7uIdCy1txJMG6IKub4lZLaEw1pRn7onCgMdhCMfs9xrcow+sQuyG7HN61psMC
         QX/MgSaKkwP142vMomP6plY5az4WmyA3rzJgUPrq30Cr+rJDRvCR3mUmDbBsxg/Wou5Q
         +MxAiMqyh7HWeufgJJ9Sj1IMgdfWPdjWmydGC9vyGzCZvb3dedB6+W6UO6e6M8xYc8F9
         XW0xKCReDhc7MKicKSvqS76ViHzDg5xZOUBDy9sw8cU8At3lGnenngirYNZt6zhXyWJx
         Iv6eOFJ/ULPCBMTHePuR+E4o2DiVOm26P0wh1nOH3SWA13P3aK5B9Som2W02FH7aJCuK
         OZPw==
X-Gm-Message-State: APjAAAVu51Cy6NO+Ya6Z2R0W+kPashLeVPw2C8qKKIidybQxRb44P1hf
	XBz5p+dcWTUXqGQVD7JhzCM=
X-Google-Smtp-Source: APXvYqygA3a04L1okD2LPrzeM5J6n+7efA9TkaE07dH5z4fPjm0UpTMcp1iI643ca1H8V58RdRvSnQ==
X-Received: by 2002:a9d:6e19:: with SMTP id e25mr8835293otr.165.1571421377155;
        Fri, 18 Oct 2019 10:56:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4783:: with SMTP id b3ls1204878otf.5.gmail; Fri, 18 Oct
 2019 10:56:16 -0700 (PDT)
X-Received: by 2002:a9d:6084:: with SMTP id m4mr8887583otj.18.1571421376837;
        Fri, 18 Oct 2019 10:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571421376; cv=none;
        d=google.com; s=arc-20160816;
        b=sV2NteIUuxY7sczZBW1pThD99zt71GFPnrlLInYHeh0er/6l3U/mcFzBa1UiHi6b4F
         zCmD5WCUTOCDyH0T/ODdVAvT8q1Wrq9Ak9in3A2ATN0CVdkHbEP5bt0oOfDnFz1zc14z
         k5Ez5uXw1rLuQejg5iLPX7XCvmNPfWxGxPNfZGebum6mt9JBseXondd/KDSkBeQH7J+B
         4GuHtXZ37AmYQlw6XoXbAq4Ln0iGmthQEdpptvBUZKVvShkuRV8fo5IsAW1lpUSKV9vT
         /Dfx2EXAY1P5wyN7rivUhCpD1DDjAbZ9GPsPrQihfcPDRcaf/rRufGFENzqwZLb70PJ+
         Ws5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aIsMVriT4AZEDHIxtRQpfA6TPy6WxstpPPQy/ZvUwbM=;
        b=lWi1qbECors0ilzIAROOemd9zAhrzb/wGO4o5bSxHHD9xQNswESwVtmQXbME8go+nq
         B3Ro4hbjlwFd3+Vp/jCERfVVr92hvkV5uHCFJK9c9ubfECcuCjjhnnQeoQjdZH+Tmqy0
         cp69WowyTHt96DQ3pRakERupPiG/qgnp27PSrNuwjulk4UFWM1ArW/z44rEphHZIPanP
         Ry3doqXGaCMWY2+2OpMZe+aZw90w6SXZS4+ZESWCvaX/J4NP/DK7kkP+q3KNs7JQ0C68
         FiukHo03CZAy8cLYscTJ9s8eZuwkz3oqomJNEwu4zvRrPCadrECtbT/qbEjRehwnz3+T
         ESYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=olkgjhwO;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id w205si312957oib.2.2019.10.18.10.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id s72so1556746vkh.5
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:56:16 -0700 (PDT)
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6023283vkf.59.1571421375752;
 Fri, 18 Oct 2019 10:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
In-Reply-To: <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 10:56:04 -0700
Message-ID: <CABCJKuf7KsgkzqHGMAVjyS5Zo_ix8a2d6vsRT6OGSUgVLuJ70g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Jann Horn <jannh@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=olkgjhwO;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 10:42 AM Jann Horn <jannh@google.com> wrote:
> (As I mentioned in the other thread, the security documentation there
> doesn't fit the kernel usecase.)

True. I'll add a note about it here too.

> Without CONFIG_SHADOW_CALL_STACK_VMAP, after 128 small stack frames,
> you overflow into random physmap memory even if the main stack is
> vmapped... I guess you can't get around that without making the SCS
> instrumentation more verbose. :/

That's correct. In our testing, 128 stack frames is nearly twice the
maximum amount that's been used (on an arm64 device), and for many use
cases, allocating a full page is simply too costly despite the
advantages.

> Could you maybe change things so that independent of whether you have
> vmapped SCS or slab-allocated SCS, the scs_corrupted() check looks at
> offset 1024-8 (where it currently is for the slab-allocated case)?
> That way, code won't suddenly stop working when you disable
> CONFIG_SHADOW_CALL_STACK_VMAP; and especially if you use
> CONFIG_SHADOW_CALL_STACK_VMAP for development and testing but disable
> it in production, that would be annoying.

Yes, that's a great idea. I'll change this in v2.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf7KsgkzqHGMAVjyS5Zo_ix8a2d6vsRT6OGSUgVLuJ70g%40mail.gmail.com.
