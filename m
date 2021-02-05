Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBNH46WAAMGQEAPP4JWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ED7310E76
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 18:19:49 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id q193sf1749712vkb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 09:19:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612545588; cv=pass;
        d=google.com; s=arc-20160816;
        b=viqlGzY5AF32UYRkPvrgawg9VGSZoH5QITeq8uhKDtbuKny6ijB2HboBTqD/V3yrzv
         V0zGOJQUmpG2TiNtJOqlAZELlo1CZXCt28r6ZJrSGtaB7FZIBcCqs8VYT/UgtBPL/Wwo
         2UXrRVo7VshiGyw+29+8bHnwI6OBEIwWUPJRF31b16ax5tVqifD5WLGflidyQ2Y0Z3je
         bloz5J1kILL1spzcNDd1FM9FQG3H1I4knr9JPVVlxglEYFuWHfxcdq+TNSpU76G1WbXc
         xV1mEeLvImgtHpvMzGksI6+6oiLSUR/BgsL748dOJdgaFT6sdgMf4x6HTv+B3vRKttXv
         ZO9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Gn3GWu3k7/Z8I5yA8NgaaCMuPfpC6+20kZ0zAlGKcfo=;
        b=rg654u9wBdqf1GzqZh5Qgum3hDKAat4of/DToG0SdIy8GC12BM2CHHnY5OqkxuQJ5D
         MdTLeFdcsqFr5U4GkfjG6+OStq/Gz//V89a1S/Qw9h2W+s9LLnUiI4RtL4FTB/2hA+qj
         jzhsROaeCqThe4fDsDAlCSGL7CHknvCDW2f9z5ESoFvfesGbmh5hQqzQR3vVrWIxjrvQ
         +r8trllhc7rPnSQozqjFpvqDUSWPLtyl70aKYGVhiqrkUOHsqGEJdxC+yvmsI1sliNUO
         fEHjDF/Uk17KijOyxM9gQW20dcYga8scrESTMxcxF8dWoygPgBHv2CKOWaKVFEbQ8VXX
         Gs5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y1KlXeRl;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gn3GWu3k7/Z8I5yA8NgaaCMuPfpC6+20kZ0zAlGKcfo=;
        b=EvTA1ErDHP9eqgASx6GTfU6DhUY6YnYVmpcTTtqXrYIh+MaZl020X44Wfj/0GV8lfg
         IaOSVL5FD6tRYtROHjcsJIsOR7g3JHbRtCEthk/3CX8ZP5yJSIOafJleGz7Zq9id/oFl
         Ybes3dKhChXomt1h5fLsy8sxp8L6CdSzgY4b/jG8xQBpuMhTuubM5NxLm2GSTCBQn4YD
         2IOVdCXTD2kUGuCqRayYBPgSWKG6XeJ+EgPLS4isOuckBOtU8EPdu55sgh+hv0iKxL9Z
         4K7NM0vgqH/9D4D1+FPgqAPVjyvevd18QTHRl9gh7DzR20AQHL4yHze8JnItbnoknHf5
         8duQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gn3GWu3k7/Z8I5yA8NgaaCMuPfpC6+20kZ0zAlGKcfo=;
        b=mxHHuObIJzyCxurcG7obBsC//WMZFi/fUSm9mytSmcgbIRy+K0fryE74oYYnbH+HHS
         BEohnK1nigB+gnUQaOq+A2BuEX0RZM5ZHsZXbUdhGgH1tFEPl0wQafqMEc2naVQKoVPJ
         ++rmxDJqrU99b1v3szeNIMhPBz4J5wHIoA0ftWq0K1Y8B5L6Ch/bqzvZLMGa9zMXfFy0
         W1ABh1BpPb725h/5QfwEXeU5VNAwpWDeIxkPVqm6swMiWsyfyPCw0EZ57MkXTVws4hCe
         Sdhv1+fHDUn5oKehYC0CFywdkselws6hJnKFQd6LoRDJL5cpsJl8piSu9BQ9xnlt15Xr
         bqzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qyyjm73wdZhkvKWG3IjdTJCiaDuSu+m70cAUxXTLaV/7c5Qam
	p6ROPlFJSLqrrCVVyQqcyUc=
X-Google-Smtp-Source: ABdhPJz9U7rG0024bLMcrDpRzTyIAecIbOzUH+5f1h+sNLTfNGhx5agLUOvZ2Qlzfolos1EYy5E8Xw==
X-Received: by 2002:a05:6102:22e4:: with SMTP id b4mr3993797vsh.36.1612545588367;
        Fri, 05 Feb 2021 09:19:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls1269165vsn.2.gmail; Fri, 05 Feb
 2021 09:19:48 -0800 (PST)
X-Received: by 2002:a05:6102:209:: with SMTP id z9mr3842759vsp.35.1612545588023;
        Fri, 05 Feb 2021 09:19:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612545588; cv=none;
        d=google.com; s=arc-20160816;
        b=z4/S6V3avld2PrgXTtfSVOvOA3PKvdLP+AQJSCKNB/DMgsAMMjCHFf/w2QXdlPtRVp
         XBCqL/y+RYvyMzCnIvDrybVSD9Z/kecEl+DFiEnf66W1VONY0q1Qx+bojR42ucfxZY/m
         r8a4hUvzIDH6FjFFMcV7kqKWgS2Z0dBIlWZqKH6j1A8cSRmQH4Wz2l01K/7l+zSJpmJR
         1RLGgoBOeBF8HBBerlGGQyA1qOoEQcEk5hRhzU/lElwMEgWgLWi+maqJyI9551nJNb4A
         ZuVc6cG8wFDp9/5tH+v/iHLVWkhcURXbKVAeZWr0BJgaSa/okoBXAMO3o+MCYRW6BU78
         rSLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JI+1S8T48pFcr35wnbPxCUfOS4yHFzqI/JgwK92UMUE=;
        b=aY60i22NbF8ZQ+4RWgr+62OB9QYDK4f6cd+Hj3CaUTR58WgchMyt7edTg5mOvBjC7u
         IkocuP7ZCKmyLOH+xNQih25KvzC/2m7XeaOcYVtu4eHt6qAaPMiwuAZvccQqugmTI38K
         aZd2c4hm+gsA81CSYOf2/ZIZdMCWTTZfLC8MagDo2A7w5YXPP+qzX5bK22qvfzCdEvsL
         0/HSyL3Nzl40WdUuidQg739ZkjUByPuvfOxcAaowbVEmvByiLsp78iPmL6MVgmLKJqt+
         tk/b1M0zpwYPP7+5xlXuH01l1fbFAopJ4ufUL3rSS5VfkqsvTC3gHHj4YZ8yuATGNbe+
         HgxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y1KlXeRl;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id q11si731591ual.1.2021.02.05.09.19.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 09:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id 19so7644714qkh.3
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 09:19:48 -0800 (PST)
X-Received: by 2002:a37:73c3:: with SMTP id o186mr5065681qkc.194.1612545587423;
        Fri, 05 Feb 2021 09:19:47 -0800 (PST)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id p188sm10023922qkf.89.2021.02.05.09.19.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 09:19:46 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id w204so7483936ybg.2
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 09:19:45 -0800 (PST)
X-Received: by 2002:a25:60d6:: with SMTP id u205mr7882421ybb.276.1612545585241;
 Fri, 05 Feb 2021 09:19:45 -0800 (PST)
MIME-Version: 1.0
References: <20201203202737.7c4wrifqafszyd5y@google.com> <20201208054646.2913063-1-maskray@google.com>
 <CAD=FV=WWSniXCaC+vAKRa1fCZB4_dbaejwq+NCF56aZFYE-Xsg@mail.gmail.com>
 <CAKwvOdkFpqEDvJ5b9wpwEhnOdh-YJ8GxCc33JcHXqNRDnO=RfQ@mail.gmail.com> <CAD=FV=XUuo3OaDVOnFiczUTeyKt1moX7nQ+XEX_HiDpv2f3k8A@mail.gmail.com>
In-Reply-To: <CAD=FV=XUuo3OaDVOnFiczUTeyKt1moX7nQ+XEX_HiDpv2f3k8A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 5 Feb 2021 09:19:33 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UTQCdd9dDG8W8fZZZhSPY3cwWgZk-3VYXZdz6pRbp8Ow@mail.gmail.com>
Message-ID: <CAD=FV=UTQCdd9dDG8W8fZZZhSPY3cwWgZk-3VYXZdz6pRbp8Ow@mail.gmail.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y1KlXeRl;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72f
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Fri, Jan 22, 2021 at 11:04 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Tue, Jan 5, 2021 at 11:20 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Jan 5, 2021 at 9:45 AM Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > Hi,
> > >
> > > On Mon, Dec 7, 2020 at 9:49 PM Fangrui Song <maskray@google.com> wrote:
> > > >
> > > > arm64 references the start address of .builtin_fw (__start_builtin_fw)
> > > > with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> > > > relocations. The compiler is allowed to emit the
> > > > R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> > > > include/linux/firmware.h is 8-byte aligned.
> > > >
> > > > The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> > > > multiple of 8, which may not be the case if .builtin_fw is empty.
> > > > Unconditionally align .builtin_fw to fix the linker error. 32-bit
> > > > architectures could use ALIGN(4) but that would add unnecessary
> > > > complexity, so just use ALIGN(8).
> > > >
> > > > Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > Signed-off-by: Fangrui Song <maskray@google.com>
> > > > Acked-by: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > ---
> > > > Change in v2:
> > > > * Use output section alignment instead of inappropriate ALIGN_FUNCTION()
> > > > ---
> > > >  include/asm-generic/vmlinux.lds.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > Tested-by: Douglas Anderson <dianders@chromium.org>
> > >
> > > For whatever reason this is hitting developers on Chrome OS a whole
> > > lot suddenly.  Any chance it could be landed?  Which tree should it go
> > > through?
> >
> > Andrew,
> > Would you mind picking up this patch for us, please?
> > https://lore.kernel.org/lkml/20201208054646.2913063-1-maskray@google.com/
>
> I just synced today and I'm still hitting this error when building
> mainline.  Perhaps Andrew is busy and someone else can pick it up?
> It'd be nice to get this into v5.11

I hate to be a broken record, but I synced and built mainline today
(v5.11-rc6-139-gdd86e7fa07a3) and I'm still hitting this.  It feels
like we need an alternate way to get this landed...

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DUTQCdd9dDG8W8fZZZhSPY3cwWgZk-3VYXZdz6pRbp8Ow%40mail.gmail.com.
