Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVNM2TWAKGQE2H5GNQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id E308FC937C
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 23:27:50 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id y188sf263855ybe.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 14:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570051670; cv=pass;
        d=google.com; s=arc-20160816;
        b=MY4F++ozwTM5/PwRJPLxBq51t3I+4UoReb60PWSRqBiHbgfLJHCxPEL2hPngliZgTX
         M7BYvXtpRE987dokv0DhtxVki3U63+cAc3gXARUBOnvV6s4h6imcGF+y/UZDpmwJcM0+
         aoRN7l4GhsOA6wuBhYFV6NYSaQu9RaVuWIxUa0jG4UW30rPuMke4b65pGuslQVjh3NjG
         vxTHQKRMUMqeI0tE6klPkzvreumdxQ85/nWTy5hkJ1VtxShEkRprDbc+AsUaBVSmFB3w
         8Z2skmK7wQcyXcDrm3Hmqm/XxCecH/maFTLfHVaKA5sD2sbR4RNoqrTSfK3lsIr2WbIj
         6FWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Cxtg9YGw4r1LKiIl0VX1rh1cIx1TpiSV22Jc5K6Su3s=;
        b=NI23uYbN80xGaKlTAJuX4IQAD9999/cUW/h0ps+Fxs4qwzNsh0UHw9D4G8Gj9hEy8/
         sB29MSUSMfAJ1Cx9Jo+dpaJ3COjxbKLGTNztD6emEwIBcXPDYB1xziquG+JWuaqSS18N
         QQjRWretYNNVxPY4NIl44NQ/3lkmnHVS16UiaURfJiug7OWqDW5Muc8gejUUmt9HxaNQ
         FaZrsnISmX9EOAVStRqdIyZPjOp41j/3pm22+NbTZgWPFkwwRnspXdwvj6iNzGWbaQVs
         1R32R019f3kx3HXw3p0t3pFc6IsP7dZ4SHhMGGuIKWWY5cgNI9aGpZTKfRmJadoK+Ven
         CwxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vb5V5wS0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cxtg9YGw4r1LKiIl0VX1rh1cIx1TpiSV22Jc5K6Su3s=;
        b=VNzhyjkUulAI/ZXUgJN8Ec2hgMsLt4gipZ/KHYhZVUG77uP50fv/mt8nAYpCwQ36zQ
         G/XfzI2NIuvvze6KfVVm7vQfboESvd9IjOdJRKhvKgUg95BUTXiaaz7uQvPXpfig4H3W
         MVwkb93rJcDlgloMGcvjfqXI9jL/hMG1IJFYAQQ9enwedwM+OsxQOSSPy2sPGm4uj43o
         wzLimfIzEWOXOk/3OncpQ8OmA9RBAs2P2qpXwR8ezWytDGEO4RtxXVFARzEyEqbxN63I
         tdtMe9aaoK1z+3HSCgsJ8fsOusXmUJyi0735L8yA7sSI27FJByBVyqhOvO/Ey7S8ymBq
         p+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cxtg9YGw4r1LKiIl0VX1rh1cIx1TpiSV22Jc5K6Su3s=;
        b=HfGGs6k2rLJlicyV9MocO/Td69VS7cAr21O1axF5EYX8pXrz6lMbBtW5x0QY9G5mX1
         BQAnx5iNgzR6LHTUoRYrtQJEM58pu8OgNtprKCrYfwv43L1lgCXx8SObju1vHqska7qB
         TdsTFHRXv0F2LmzAKNUZTWW8WQtSmqZP91cPZdjCHN3/iiRCoaIJO1ZTcuyLBsSI1nNk
         ij7Z1IN9//UEwtA7aCDhSzR7heg0QLi5kgThKXHyfsDAfED2JAwBK/Jnp6ZlbM5Hcxpe
         EA3cFVBVJSEOIJnGUz+K25TpeZpYquN5K5c6N7HeqtzXtPDvoeO6WWjKwFDgc69Ua0T9
         IPcg==
X-Gm-Message-State: APjAAAVleQs1+5s8sbuHRe3KdTKYb/ij7XoOP66AiMKOVqmaLvpbIG7F
	2WUROPqVgO84X4bLhdMoorM=
X-Google-Smtp-Source: APXvYqwiKc7LuPTtp3wMKQlsGDbiZmd0/Uw5XHoIPfeQxvRKuaMEunTe0H8fF4F0BD7JSyIhLiLcBA==
X-Received: by 2002:a0d:fd03:: with SMTP id n3mr4110758ywf.146.1570051669845;
        Wed, 02 Oct 2019 14:27:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:48ca:: with SMTP id v193ls87909ywa.12.gmail; Wed, 02 Oct
 2019 14:27:49 -0700 (PDT)
X-Received: by 2002:a81:99c1:: with SMTP id q184mr4321962ywg.294.1570051669530;
        Wed, 02 Oct 2019 14:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570051669; cv=none;
        d=google.com; s=arc-20160816;
        b=JUJl/v3WYkSW91hJMhpQ3FAkD4tm7TLvARLcLwGjBHEEspoyS0b36w+iCJfgsHRIGa
         dszGSYAUYZqGbkkND58EliBxMj6NM8H+7jNW2sfJ6gI/H+6p6BaYcpI7bxWlNiRcu0tW
         P9Y5VAdCx4NCRgpxCgDtpLnHKb4TDXCKnAMvpMpV+/xe/PP51aVMe9lkVWfGwyv3cM8s
         XtJGFraHFqYgwQTgJikj6/YAhYmEAbBnRhGzX2CYWrJOi4kExMBlkLbzUyKalHUBLbah
         9kmxUu7uTxjs2d7WOPk870mUjID9/gVhGj9NHbwLMuEDKrZMTYkKBvXyyOmOSmOKSRqw
         VPBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ff5/X8LijthYfBkRMosRh8V5DWdVMBmSJpWGhDefc4M=;
        b=rvUSy+6rYBK7XENKlsBGdN4D2n8id2OgFrJhhEMvTdZ5PM76KuMrCfB20yGQ1j9MOC
         REd5o8ZgOl4pLUCByiawjTpZVXVG0EK19ANc1/QWauUvQnsRAGomwxSBLToSESN0uL2k
         vQ1tRMu+pRbkbWee+cRYAqP9DZgRKBAurweUnjg/dVdZlHe3vA7AYicyM4jmA9Vp8U3d
         FOKCENkc+O6nD+UVLQt6k1hziit9htbA5A8LpQ7+97BjkZKFXSzXD5oaLRSwPWg7wuhl
         /FUx/e1qDjaPxfUj0U4NcJVBaF2LWWIxK07/L4UyAkJVauDNCeKEjcBX5jQ35L17hxWc
         6v/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vb5V5wS0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r70si19316ybc.1.2019.10.02.14.27.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 14:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id q7so344383pgi.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 14:27:49 -0700 (PDT)
X-Received: by 2002:a17:90a:154f:: with SMTP id y15mr77517pja.73.1570051668780;
 Wed, 02 Oct 2019 14:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <20191002120136.1777161-5-arnd@arndb.de>
 <CAKwvOdmjM80XP7VH83iLn=8mz6W1+SbXST2FChEnH0LSRRm4pA@mail.gmail.com> <CADnq5_MyUp9OkqM+MUHZ8BpLEe5afBpAqOwQxDwAWgvVvqbpoQ@mail.gmail.com>
In-Reply-To: <CADnq5_MyUp9OkqM+MUHZ8BpLEe5afBpAqOwQxDwAWgvVvqbpoQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Oct 2019 14:27:37 -0700
Message-ID: <CAKwvOd=+VeD4xchCAyKeBtTD8+qwS6BTVgM=4ZDY1kBQJq3wMQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] drm/amd/display: fix dcn21 Makefile for clang
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Alex Deucher <alexander.deucher@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Leo Li <sunpeng.li@amd.com>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, 
	dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Harry Wentland <harry.wentland@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vb5V5wS0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Wed, Oct 2, 2019 at 2:24 PM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Wed, Oct 2, 2019 at 5:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Alex, do you know why the AMDGPU driver uses a different stack
> > alignment (16B) than the rest of the x86 kernel?  (see
> > arch/x86/Makefile which uses 8B stack alignment).
>
> Not sure.  Maybe Harry can comment.  I think it was added for the
> floating point stuff.  Not sure if it's strictly required or not.

Can you find out for me please who knows more about this and setup a
chat with all of us? (I don't want to deride this patch's review
thread, so let's start a new thread once we know more) We're facing
some interesting runtime issues when built with Clang.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2BVeD4xchCAyKeBtTD8%2BqwS6BTVgM%3D4ZDY1kBQJq3wMQ%40mail.gmail.com.
