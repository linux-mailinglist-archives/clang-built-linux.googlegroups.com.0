Return-Path: <clang-built-linux+bncBDRZHGH43YJRBBEFXD5AKGQESZLVUIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F53258A1C
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 10:12:53 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id j17sf226564lfe.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 01:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598947972; cv=pass;
        d=google.com; s=arc-20160816;
        b=yU+HcQTV/htnliSLSQY+QzH69VaQizmNYTwIsFvqdjI1PKnI7Cvg0S12qfhP5Tivil
         rP/igrr2DpU7hmUuOI/ohGY3UiE5q21adW+wOV1zls11grS5CmeZ5A0iYGrje/5wtlbi
         qzq21oNQ4S1Z0g8NgzZu8gx2sT6OsKSgVvJ0Rzy14aPPTV9Sfs7aXPUCPRp3UZQvFIgh
         ufbrMFj1/nsZgKtA9qictsR/xFocqF0spzRojcZHCEs1vfVaJzNlWZiW5KcdAhTgDlKS
         Sp+xKL+99Wp+XZFU4DsPJzNQb4RIuSuuAkAM0zsUJO5Ou5KkyvmkS2P+RBa4rIGc8WxU
         MSFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=glIEJENoZ+tF4EzvZ5QRCnF8Zsn2E5KXC3ny1nJ56Gs=;
        b=F5udcwJx5kO7qWNhsjjQIJ7Bz7Wl3odo/x3G0qskfgt6ITv1nJI1y6lom+B6d65I0P
         8MH1A7FyImMy8Uk7HOPVFJc9PNYpHu2E7kL4sDz9oH1cqHrOTMmQTopZiw2uNRWaYBVJ
         ugnRcwInP12TtBPxQ/fpzdqE5vEAB9hBQQJo+U3Uz1Itap5FMKC6WZP9sEk4ZqNUWA4X
         Wda3LPAD2QFqYwL08TB9YGPz2bD0OLX8yp8CFP+O5DFDiZOhCVzbCv9iVFwj47rlhrNf
         21lPOrLw76LlcBHpGfiVPOasRwRi/36CCYbxjqVDp4wJpRM+xk1pBtydp0wI13hovQOd
         by1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oNUGojQp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glIEJENoZ+tF4EzvZ5QRCnF8Zsn2E5KXC3ny1nJ56Gs=;
        b=tGcsW7Clc5LCvX8LVHi7hvt/eb6k0MyoB+Ix3fxR9/l3VMItDPKRODd1OratuGSRta
         gDIS20RIHvsZ8LAQjgATkMi3B+/bAL5yDQPxI+9Y74WEcglHsQgvQAEyCCCBJv59n2L3
         CCFP9DJK46XARGkueLI4UjcFS7d6x0Rje9fs6/LzRTfKsDIexlyFu2ywLdGPG4Z1KSCB
         LsKniL1lgwDwfzcSN5R8SUt3S3/zIaU3KCbveeD7EFmr6LKjpGMjWQz1VR3/XuMMtXaC
         rJWE9PLhMVNFaQH55AwNjqg+AalgNGUCwb4KTegKYfY9F/FR8woHvYihj/oEuVEzYiRz
         RPdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glIEJENoZ+tF4EzvZ5QRCnF8Zsn2E5KXC3ny1nJ56Gs=;
        b=tsuHHUomK/lcCCHH2BrYTr1f/TyR5d7VFGaH3K89ECmr+/ZmeSR11TW/37Hdvkm3h6
         yHLhivze0vxTsbLyIYfpHKk2p9hhP3G0n2js+zf4Sb7+VUHb3VVf2nohg7YADAck9jkB
         dRarYIfRijkVf0iZm7nz5xf8lDS0uss7jU9fYN5imXQO5umUlrE+4M9oTLPacGRfdhyC
         4UJVzyzhEz4bPgJn4dMlSZeX9ml0fqpWvmpEVAH6gLorAQt4kl1c0qo69kXyxrlU+UdI
         PCh5cnx5DLMzwE82yYVO1MckEszUYXb1MmF2V656a9x6ePgTuxBmfzWH1RbRlisGw9w/
         xMrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glIEJENoZ+tF4EzvZ5QRCnF8Zsn2E5KXC3ny1nJ56Gs=;
        b=O/fUrt0h0JON3+hZZaPv1hSI79ymnvYmjcw0ManPGLWVR+p3sLr0gcMvCYiDE8ivbU
         FTCG29dMy7jAdRUH9C1NYQwl9v0Ul4TjgzRhWqyEickAd6G27W7PnmJsdTLsoNldR417
         MV4YvvwxzXfqXiOgVibueGZ7zuMB7wLcXmL/uVdKkb8DmNazb20ZhLMwIcUcmC0U2af1
         v9fQBjeyTS9X5X0eFWO0mZtbir+Qj4P8/rvPjbadD/IRYHd1Ob77WjJtd11D4k5E1iDw
         XU5jgFSCvvcQl3vE2l9dlHb7oYxuil87cu//z7CGhWoJomud7a4+era9Gib9X3P+mlk7
         AOaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iUecJDuPuc7MKD43Wuck5v9elGgBeerbPnXilTQACZ2K4wpeG
	MmxWFwWeUgs9pEouBn/2BW0=
X-Google-Smtp-Source: ABdhPJzSiqqwyCmGiWs3sh4y0i29mq/PtS/fxrRqaXCD34MYMQpTHydzQ2hiDdMVKxAyz62v5CkEXQ==
X-Received: by 2002:a2e:92cd:: with SMTP id k13mr370616ljh.138.1598947972319;
        Tue, 01 Sep 2020 01:12:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls112613ljs.10.gmail; Tue, 01 Sep
 2020 01:12:51 -0700 (PDT)
X-Received: by 2002:a2e:9a01:: with SMTP id o1mr425934lji.32.1598947971584;
        Tue, 01 Sep 2020 01:12:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598947971; cv=none;
        d=google.com; s=arc-20160816;
        b=WP/GMlut27WGLeWcpYjtqY8Mu3DIVuvRvBBf5FNqG/gLD5vPDsIQyUE7tyY+MvE1Oh
         dxEU2ZD/1ikykCsmCMFZooAwq6Jov/Jnmq0tsFqVxGhNgYBfmvTKFvbCujlOfN5hRsj7
         xwr3Nh/Lg443UCLIcZpT4D2D4kbUp9h/ZMoC5ttWGZHAbgCZpBpC65MGIiRaxjJWAToV
         YoHeehejpjmC/ZK6guyidcYR1aJ0jKRGZGMKEZbV9d5J2Oz/1PEb6NiP95DQquu2IQ7c
         8sTEqrsIIySPBKEGFUuULm8nn1NuimhXl9GTG4bWCrzET+znr2vBgBlh7n0Km2tmv5fc
         QI5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hbTfqn3dImHPoURfH7UKW3vOdKiFrwL6dfSxV5kclZo=;
        b=VmR4/Sd4PYBG9q34cyifL5rNFa2Hxr5E+v8mMA7dAqhtfJ5Ut4a5ajEPVd/GtXo+GE
         qzMmDQZhuHhNfNoNNj2yMlppSn13cJmGOB+77mwse6tZd6elSIFNpdDFKtJzlaSez6tj
         WbyWvnAu9CvyEBYLGKXfNdpiUwFCqIG8ycV/lJGIe45zREbzkM7IN3RunHGOa6iGoS56
         kpGmo9CbyHwrxK4z/4oCN8Irk0TWSmcc0QsZfrVXYQlL9qzPj2OgAf3uZqP0HghrEETs
         3Fvdq+8FCPXTfyXHuY6Aex1GmFuKRXLRZpVFo6z+pfMb7i/+XQFxJy/HcY77nrDetnqZ
         UMHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oNUGojQp;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id f12si22508lfs.1.2020.09.01.01.12.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 01:12:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id x77so267472lfa.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 01:12:51 -0700 (PDT)
X-Received: by 2002:a19:447:: with SMTP id 68mr611827lfe.26.1598947971337;
 Tue, 01 Sep 2020 01:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com> <20200901002326.1137289-8-ndesaulniers@google.com>
In-Reply-To: <20200901002326.1137289-8-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 1 Sep 2020 10:12:40 +0200
Message-ID: <CANiq72kouA9jNPb3ySBfNhSfsKCiELM8G785D4feTZzqFx509Q@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] compiler-gcc: improve version error
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oNUGojQp;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 1, 2020 at 2:23 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> do so provides developers

"doing so"? "to do so"?

>  include/linux/compiler-gcc.h | 2 +-

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kouA9jNPb3ySBfNhSfsKCiELM8G785D4feTZzqFx509Q%40mail.gmail.com.
