Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2G3UPUQKGQE4LA2QPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D46675E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 22:30:34 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id c31sf5432343pgb.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 13:30:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562963432; cv=pass;
        d=google.com; s=arc-20160816;
        b=svshEGVrBIF6shYaXdIfayYA86PcS4F4UWmw2CAjv9VYUcZCkKmkAhWHuSZkPFWJJ6
         2+UKx1Fy6w35y/Ragx+bEsCCIsaAVRU3Kf6Ircw3g6xjeoSfN83CAW8+ip/uYacSRyUm
         XsgRLuRE/U05uv+mI+zj5nhsLdXML519lWjD5LXNNmpm2TygmoSs86FzmnEBNSJei4WR
         rKw4GtwpaDE7NZU3qw1x0Z6KO4EgYLlNI6zPXzj5hPnh9z0xGIs+8dD4wxpKK5oHbt+R
         k1y8CTlEoFGZXWGWoqfKcMziWkeVNmjrwbxr40c7qHYXZzuwzOUVDNGBOz2C0uRECfs8
         7OWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9jP1D4HekBg7C0LYc/sDwi/fgaDCA5MJBW2rdv+SHC8=;
        b=cjfmoTS72XF/X17N7s6+aFVB2+V9ztNTch20A98XRj1PGzDEsERrH1oFJIQUPMUR2X
         xhB9zp47/c4L35jwHOOnBzSg07dWchKg6wD982j3S/Ck4ipxVuhrVD9MTc5VRMfUKQbH
         sWu4uqc+e0JReen407Tx39s0J6PO3yWfBcT6iKIYXSM/Gh2pHvRpz/gQQWAttM0DxSuf
         V0wA0mEGTs/TLH1hUzF1zr9rFekpJGWi9/nb6Y8G8xtj9Ryrc+RRDZCVPOuD//WPwSE3
         mXMxBYIsptmzpFq2Yj2npuNKzBj4UmNW+n2tdSv0nrGaZZ08tbI7VH5iCbzplhHR9Rbo
         QK/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jP1D4HekBg7C0LYc/sDwi/fgaDCA5MJBW2rdv+SHC8=;
        b=EmJ5BkVDE/zr9/uJjJAx5DUuJ3UGL2DZJxbcCvxEHZctRZnMM2Jvd8SfLJgE7hVN0E
         7xvAXRmsftx0K2YpYZqkcmhjwSiKmYQ/5oBgHm0N8U+uw72q+CaTplQ9uvgpfi5GcpD6
         9jdpOmEriuioW1Xaa6c0FGi0yTYuutNPMHvTE/coiuiXfMiYrxCnoOSQ+QRqUd557232
         Asvl70fAi0pn2EpmK6UJxQY+LM+iTTt4FZsY6AvOJFtPbM4NYsBBqVAobgmR6lbv0HoK
         JIV5J1lsiixHj03QxOhKQywCltM/VGqWynmUpWvOetNgmqNtVT2IDTueJ6M1j8XO7aJe
         FJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jP1D4HekBg7C0LYc/sDwi/fgaDCA5MJBW2rdv+SHC8=;
        b=Wx4wsf2SxQs39i8wvPjNukUo3weaBM01a4NoLMKK1CkmR6ORBATtMNbg7FmG4fAKNs
         pui/J8UlZEKDOVwjFMPw7qMAFo5IzYnO0NXKCiGIO/CTIAAe319A40I/Q849f0tosSpe
         +LiPttMWzO32zN4URk1p9eCh2t4ebYTvQ3TnYNGdHAUUcNX5xpnQ87YpoMHfgbBncfMb
         U6jVThicNfkfDymOpEblEYkwab4Dq4zN6lzWy8YRtwZ+ffwESA1hWlpf0P84PIAQeRgX
         ltkumr132ipIbql+rN2Km2jxnJBxlf/giD3oIVIufmprbSDjQFWSP9Ise6Vkg9OL+faz
         swqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVnqDCF+Hunnqdp8fC/IxVfHY4d4Bf2mwTnUPilFBaOBbFiQ/9v
	5iXH41MWOpDMMhLwqGYWVo0=
X-Google-Smtp-Source: APXvYqzX+bn8i+87X2MXVWVg+9vjdpOdi+A93ly8mBKNqZUoXtUyoERTjVJx+BWhSsHNQcO3HPHrKg==
X-Received: by 2002:a17:90a:26ea:: with SMTP id m97mr14289642pje.59.1562963432727;
        Fri, 12 Jul 2019 13:30:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680d:: with SMTP id h13ls697753plk.13.gmail; Fri, 12
 Jul 2019 13:30:32 -0700 (PDT)
X-Received: by 2002:a17:90a:2567:: with SMTP id j94mr14348971pje.121.1562963432351;
        Fri, 12 Jul 2019 13:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562963432; cv=none;
        d=google.com; s=arc-20160816;
        b=fctFNoKrptoifo7TENDMOn9juSLqS9QD7OLnuRkvkZ7daP645VZh2hRZMBIIfWUI8+
         LSfk0h9fFDGAs/VDBnpRO/OOgJQzqc+8tKrUzeWdnS2qxMV+071N0o0Xnvb+sbTbi87Q
         hjgDA7HYOSFcwSgDNR+v/DrlpMAzNe/d8wRA91WeIqbQ71tPbA1cPYhSQE4yLFmGSx2D
         aDEGyn4XqCRBv3I+W4iw00lcg60j/QfcjkKO5W6fwm7N56rEOqo3zN80Ijvu3rFRXxm/
         FVriluQBk0yvenwaALoYy8dKD8HQA00TYZ4J2fPgJimU+h9nqFC6jkjkAyVUWj8r3x5z
         BrdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=6Jxwo9pjmGUKQ0uHToCiY3Wz26c1dotpxquQLKWEEI4=;
        b=pmy81ezB6U5EnqH9850j5/NPoRpU255PSEnYO5uRS1NutYwoeTVzSFJbDpdFBs7D8j
         drbrqoLi0UQYed60uwop/pADA5CnszzcXrv55HhKd+7BFOrB8hGMg0jagVyiKDGH1fH+
         TTHROUvNx7nr7vX6no+yYsUAHtSKHk31JnHHOMkNPA/5v6+xfldZK4N70MgFKPqY1ST1
         mFXp6TgJ1dZz7VFH+3TjdRrELVTUnzKbVxML0g++ptckXJV50mW2Nu84FkawaujYoJ+o
         yOaemizrGQsaFSv2NhEiIv8cbeTmeS2PJyluksNqIfi3xYLeMLMfK2hKLw/qA8k7F00l
         KQEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id r1si435460pjb.1.2019.07.12.13.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 13:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id y26so9499246qto.4
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 13:30:32 -0700 (PDT)
X-Received: by 2002:a0c:b758:: with SMTP id q24mr7462464qve.45.1562963431425;
 Fri, 12 Jul 2019 13:30:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190712093720.1461418-1-arnd@arndb.de> <CAKwvOd=Xdp_=G3UU9ubayeTvkKCJ9hak0a-7yK90-RPUBQKrpw@mail.gmail.com>
In-Reply-To: <CAKwvOd=Xdp_=G3UU9ubayeTvkKCJ9hak0a-7yK90-RPUBQKrpw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 22:30:14 +0200
Message-ID: <CAK8P3a0vTwtDtxDhfmhzOViUp+DPzuJ_qsQsnVFw4B7oBaudTQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Support clang option for stack alignment
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, Duke Du <Duke.Du@amd.com>, 
	Charlene Liu <charlene.liu@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.193 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 12, 2019 at 8:49 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, Jul 12, 2019 at 2:37 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > As previously fixed for dml in commit 4769278e5c7f ("amdgpu/dc/dml:
> > Support clang option for stack alignment") and calcs in commit
> > cc32ad8f559c ("amdgpu/dc/calcs: Support clang option for stack
> > alignment"), dcn20 uses an option that is not available with clang:
> >
> > clang: error: unknown argument: '-mpreferred-stack-boundary=4'
> > scripts/Makefile.build:281: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o' failed
> >
> > Use the same trick that we have in the other two files.
>
> Maybe time for a macro in Kbuild.include or some such, if we see this
> pattern being repeated?

I'm not actually convinced that the argument does anything useful
at all, if the kernel stack is normally not 16-byte aligned
when we enter the driver, and it clearly is not needed if the stack
is already aligned.

Unless any code calling into the portions that want the alignment
manually aligns the kernel stack pointer, we could just as well
leave it out. The git history does not explain why it was added in the
first place though, so I really have no idea.

I see in the architecture makefiles that i386 kernels are built with
the same flag globally, but other architectures (including x86_64)
use the default stack alignment, which may be different.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0vTwtDtxDhfmhzOViUp%2BDPzuJ_qsQsnVFw4B7oBaudTQ%40mail.gmail.com.
