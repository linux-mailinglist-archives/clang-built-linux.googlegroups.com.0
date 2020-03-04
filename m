Return-Path: <clang-built-linux+bncBCMIZB7QWENRBEV773ZAKGQEH4G3WGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD1179067
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 13:31:15 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id u140sf2133111ywf.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Mar 2020 04:31:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583325075; cv=pass;
        d=google.com; s=arc-20160816;
        b=oq2o+/QlrRkPvc1uPs18f/quyC2t+w7GD+bnKLxSjoG29BbWCuss3eTe8wIy0z7QRA
         9TQSeeGTYFEuPxSi2ogJ8lCuJjMb+xOFfyay7M1FpwaVl7rveuCsYmgg83livH0Rt2oU
         BmLHgCB49HXD/Qb/5QnVi4YRfOKXsbh2Dc89sVXjstGYyc96iGEJ+zBKCYBFhqsP5dHB
         MQcmmR4DtpnTsfk77Xssd4BKLY8bMlMc+9qkIvnq3D6nQei1qUohBPfSLOcUqyY8wbcH
         ttLgjv8zxA4vzG7gEpYtKCEVRhV8D0Zvp2SmFEBygbni0JwNyOty6fcv02lh11WdVBoF
         yF8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g9tV49qMikmXM02fZdz8IgtbiGLQvfYZYLc//GPNQ3c=;
        b=jcDGIljYuqRzq416QoDEPoVh4JUcIddUUSWjlC8knCFXhxTJqsuHIH3XW1yn1O1/68
         8/3wJcD3ggMjw990agwNZCg/5r+gXoRQEklDPlFME0Aa6He/dj4hfPZZx01wg2t4RItV
         jZ3Ptcw0Y+Kb6arekGWU3RVjsB2w30iJqRl5ZSZy3b/d/7WjWS/kNDZa/KHFO67Mna9d
         BuwAsRROoxtqyjGz5XU003iKlhW1WSVObTk/Or2Dq3K3gX1jazejG4rOH+9iDRiJd4o+
         1AMLND6LgP/Vs3ixtbA0nGlGnYn5NWXSxy9lBPoZxWqL3Keu4N9v+qji5PCRDEnyfieb
         qMYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CaI+5g7T;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g9tV49qMikmXM02fZdz8IgtbiGLQvfYZYLc//GPNQ3c=;
        b=e/+M7/TfljBMSaHfTGkvF64JmRV3u1HBTL4P1HO/Jl6/vtfyl0j82uMnYekauysQBc
         TfZVxB9CP4h3IPi9cesffvhixApNAGLxEBD69Lr8MbI7q7IyLIxwnU4v7ybZ1069X8bp
         d/kW1NbNhSfUuITQBolHU1/0pNZl+IvO9S7dpQdZAfhY7+yRlXA4YsyWi9akjxGeIqs6
         JnLxiLRawNUbayjW+5rGLG/iBJmmPHMVBiPaTlfiNUJ8U9M2J/K6u9W+Fs1PJgQb7Mh3
         i0R+Oml1gl9f0eHs1sXGTQv2hY1FAJu6hj0bIe0R4tMni0a9XE7asVtl8QSSOfHfWP/N
         enrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g9tV49qMikmXM02fZdz8IgtbiGLQvfYZYLc//GPNQ3c=;
        b=ICgxwWYiBdlomEWBWKFQhD7Nw/6Xc50py6YY34FkwUGq8wiSmoot19lUk1/rifrPR/
         yR85ecj/lDD4/c1WQwjK4iUKxT0r4KY9jmp9IMlIz8zE22LTBx9W0ldVh53Dqre+sVHM
         hvlZMutZyymY3yS09/dW0fXy9nd01/uog+VzYqIqeuYSHc7XWE/0CzXaQlClc7RwAQUQ
         lpgHN372i8ZJ5HKWNbDjtvBnXIUqns/3FYWlUj6uuIcPdke07QzY7HqonpnniKcb55oy
         5xILFEqaki7qk8Z+pioZ4NSrlrLXI7i2v6c97v7Jt2g96TG13awojD/k4aEa1zZ8niO+
         MxjA==
X-Gm-Message-State: ANhLgQ1LdnyjCDU7e411XC4MJPNzrnd38lZcmRY1vHdgZOND0gbjA2Vk
	tteY7odSmQhpulWF+1bV2/Q=
X-Google-Smtp-Source: ADFU+vsYgksEX049iFUs/+YUlV3W5zHSKF9v/RPq++qXoLVYO6Xhkk1ILstIB2wyCEsT5BvEBeRkPA==
X-Received: by 2002:a81:7903:: with SMTP id u3mr2659277ywc.259.1583325074973;
        Wed, 04 Mar 2020 04:31:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls440864ybi.8.gmail; Wed, 04 Mar
 2020 04:31:14 -0800 (PST)
X-Received: by 2002:a25:a108:: with SMTP id z8mr2223275ybh.418.1583325074509;
        Wed, 04 Mar 2020 04:31:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583325074; cv=none;
        d=google.com; s=arc-20160816;
        b=N2xENh/kR3j8zjiI6fAhXbp3x2/xy68UQwphB7y6B/LvIjETzeEt8zb0oMf8bJBuRZ
         MRcTwUD27uTECLdEqlw2Hl2jvmmGKtahszi65mz0lLifiC/tw0kt3DU+T93SHf7Ku3ZI
         h5ipWxZJ0gQLTn5KXmFAZXb+RnuJVwgmhXOXgxf0zFnfTgHPUGx9rZ+PgT1PZC1HfKlO
         EmHQ2dFPuucGuCK10kzN14gHMBD9pRRR6ssaKKZPLu/hftOdWxH4UoWHzzW2nEVPnFlA
         ZlwoRtExKAdOPu7gm+FZBS864Tgk3ULdRm37MRn02hHM0zQV1v1kKem2FAPFm4t6y1gq
         zGkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w036UPOsYzhuoZMby32GGE9YAfvIHRaTf3JXEXh3ttk=;
        b=EI35xxExVumpFChR0Yic+ZOpVWKgRiN3nF4X6ClB26aOAv2YBZB9ZUKqMmHagXLlev
         gloZboP6A4xhmNhWit4tymFuvmX701VDSW6SZyxDlIbxt2tHsXHkGbHsJZYH+sQdANKw
         aT4Wbdfr7xjDiJxA3aivqjPBwx8aq+RORA6QDromrKVNAWsXNiRu94J0aEFDVbzeC2Y3
         VWm1wNCv5B9OAFNfGcn5Re1KV6GeJjlI7AbvziXauO1hG2UJa1gmfbv1N9Kkvx0QxFNW
         I4tiNTKCKDWBfKGlMHS2SitPcc2LRaIuI6so05n1SUftcf9tUAW7av1Hpv0doOvDY2d9
         gQAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CaI+5g7T;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id 136si119836ybd.4.2020.03.04.04.31.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2020 04:31:14 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id e7so671729qvy.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Mar 2020 04:31:14 -0800 (PST)
X-Received: by 2002:ad4:58b3:: with SMTP id ea19mr1924665qvb.80.1583325073865;
 Wed, 04 Mar 2020 04:31:13 -0800 (PST)
MIME-Version: 1.0
References: <bug-206755-199747@https.bugzilla.kernel.org/>
In-Reply-To: <bug-206755-199747@https.bugzilla.kernel.org/>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Mar 2020 13:31:02 +0100
Message-ID: <CACT4Y+YLfg7xixidfsY=TvxrHu+Y0fUdkhZB1=oU5YexEMXOxQ@mail.gmail.com>
Subject: Re: [Bug 206755] New: KASAN: some flags are gcc-isms, not understood
 by clang
To: bugzilla-daemon@bugzilla.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CaI+5g7T;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Mar 4, 2020 at 1:29 PM <bugzilla-daemon@bugzilla.kernel.org> wrote:
>
> https://bugzilla.kernel.org/show_bug.cgi?id=206755
>
>             Bug ID: 206755
>            Summary: KASAN: some flags are gcc-isms, not understood by
>                     clang
>            Product: Memory Management
>            Version: 2.5
>     Kernel Version: ALL
>           Hardware: All
>                 OS: Linux
>               Tree: Mainline
>             Status: NEW
>           Severity: enhancement
>           Priority: P1
>          Component: Sanitizers
>           Assignee: mm_sanitizers@kernel-bugs.kernel.org
>           Reporter: dvyukov@google.com
>                 CC: kasan-dev@googlegroups.com
>         Regression: No
>
> scripts/Makefile.kasan contains:
>
> CFLAGS_KASAN := $(call cc-option, -fsanitize=kernel-address \
>                 -fasan-shadow-offset=$(KASAN_SHADOW_OFFSET) \
>                 --param asan-stack=1 --param asan-globals=1 \
>                 --param
> asan-instrumentation-with-call-threshold=$(call_threshold))
>
> This --param is gcc-ism. Clang always had
> asan-instrumentation-with-call-threshold flag, but it needs to be passed with
> -mllvm or something. The same for stack instrumentation.
>
> There is an interesting story with -fasan-shadow-offset. Clang does not
> understand it as well, it has asan-mapping-offset instead. However the value
> hardcoded in clang just happens to be the right one (for now... and for
> x86_64).
>
> --
> You are receiving this mail because:
> You are on the CC list for the bug.

+clang-built-linux@

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYLfg7xixidfsY%3DTvxrHu%2BY0fUdkhZB1%3DoU5YexEMXOxQ%40mail.gmail.com.
