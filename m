Return-Path: <clang-built-linux+bncBCF3J6XORQHBBDVGUCEAMGQEQXBWY6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DE93DDCA4
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 17:45:19 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id c41-20020a05600c4a29b0290253935d0f82sf5206806wmp.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 08:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627919119; cv=pass;
        d=google.com; s=arc-20160816;
        b=NbvQr/7lmCY4PxGCPMl9kIs0ZWWxVXpAjTWR7CZsgcpBw7iCesJALxG6yifsSZ6Sy2
         j5Jzz2y9MH9CirqAhX4jvqgcxH4HGlNNE0voXM3O0tJnJ5ZHMkyXDVb8O5jVsSSJ0zA2
         TmCH24tqP/aWn8NvfYsCX9yqk3yC+e4c80gyS/U+V0W2cVkhwd0jiwRsX5Bc/VPB/reC
         3dqqaItxfkeO/xInf5BgXdYaE9lFqkHvhmnD/Z736pbCueS1aIfY7IkZbScibh++VMvZ
         E6QZTbYDv39YM9s48r5GV0moNf2NU1xm6pTvKfhpqN/r+hmCcvG58dAftTcNVDN6IN3x
         PwOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SI+U+OUvhpKie3/lXSzLZj+hm3pwieY5U2jx32GNtJg=;
        b=RUzQ0FLqbHYWHZO7yuutLvDgsfukrM3tdv20ZqGGdpp/j4VhlLKZGjqNxyxzTMJY5J
         ENPN9zHw/uflikyj7pdLSf9RbzQIJMtVcFPGrEbvBX/iLUs4EqANYV+yleOWkq/3Do7B
         Ou/7EAwGibcqiqTPe3QBvtHM6mkj8JzKU292/EIedn1cFqxnAIlxCZ9OMnAV2NxCkDkK
         WzOZGHiPQtMeAbb1Mz563HrjbRZ8hzBG2Et/x5fmHSQBjZKbrHvKflPcjGj/mc4AGQqb
         bFSyyxUSxEZjgJ0QfULuUZhJy+GsWObKqe9BrtnFryIRcb2sHEpG/d1zw59OWxWXcKM+
         y4JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cQd6eHU1;
       spf=pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=martinwguy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SI+U+OUvhpKie3/lXSzLZj+hm3pwieY5U2jx32GNtJg=;
        b=bsS3U/A/oObCrZCkmRTPD31Twz/4DNsZhhGgkBaSMWISfIHsZwiZYfZPoPlbG1sbXI
         AKwVAOdZdMgjWtVLwuKM0+l32zLpRFRUE4tswJNP/YnbfPiPYT6WFjtzdvzZIfwfRZeq
         7sVzdo/f/JhMkHZyk+KQ5qsvIMcK9men4qHjKL3ZLs7FQFf+9bEKZbUn+dWktBCnEk4R
         Gu5vyDUfaKS7GsOz99Lt3xoql3rUfErCuXoJSJewGMDXaPTFjOGU4LfhUwWCtbMXrTM3
         5GS/EFGj7bIlrfpCR6lNB/4xNIc2WqWijI1kdjRLjJX7EPdx3P9pQB+zOb0tYegRq1Eb
         leww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SI+U+OUvhpKie3/lXSzLZj+hm3pwieY5U2jx32GNtJg=;
        b=GmS3id1VKeb2y099AaVbEf6ib42X6aYiqmve9bW8uNEyVlhUScH7OxdHnZ6x/SnWmf
         jzg1QURzuUdCK5FBJdzJNDsHhmZa8+Moekq27gSQ1w7BMsmKhO1GFmoUJQMVRPnrUKCp
         4pSvxIc08Wy3NbYpBPStXllXtiLlgq6nvfjrZ6r7XpssoeT8r8yawXWKHb/vCmi+6Wix
         3uwXBq6JfJgIevsH/ndrT373zR7XyHgLEePCLV0W2eG8ZY+KxKCWQ8mfFNliejutCHYt
         YU+UX4NmHL9KDk1zqRum+WhmbRIVZXN+rjNKl+3Ui164GOCAmTNEQZy/ytBBFp0NmFqG
         qX9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SI+U+OUvhpKie3/lXSzLZj+hm3pwieY5U2jx32GNtJg=;
        b=HKhAbUxmdqHG8fq2pjlhU+FJ2YdQg2JhQtFIQsM5QR6auYk2P57RKgpTUr2c4TRjOt
         Nn/2hn6o6HVjiXiH1S/+LOLxjjrUgnTb0sPdDkTNZA+6G2PPy9ooHEBlr8LD2nuOTkMK
         85hxsdJWK7FsJ3hQd2gbQxCXMtzMhlZ2PDtMr86CdIWWRcazlX2paZMjGRxDjrMrXeGQ
         jUuCuXZzfcg0TYucyFdmIGc3eHWo559JnkYdMs6Z2yFSk0ik4x5lZtj7MCVaQ1bPR9RO
         YIsmWyzyBQHmYiAaZGkpGxAzt2jDP8zzkdaAJRyQIsjEBCej2wGrnxgd8yZEhHlgI4DZ
         t5IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316REiuQ/hknieCuqEDvxCw4eZ6RXdYpXFisLB2fozQCxWjexjZ
	P561930X6CQDfZH2SELEPwI=
X-Google-Smtp-Source: ABdhPJzmExzz8PfO1quKqvT3I1XiiTCOPyTgeeGq9LQa7I+Ba7Di2eslBZHUvdEycRDjExVcjD0Atw==
X-Received: by 2002:adf:b31e:: with SMTP id j30mr12631407wrd.139.1627919119108;
        Mon, 02 Aug 2021 08:45:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a2cf:: with SMTP id t15ls1032340wra.0.gmail; Mon, 02 Aug
 2021 08:45:18 -0700 (PDT)
X-Received: by 2002:adf:c3c4:: with SMTP id d4mr17914819wrg.27.1627919118300;
        Mon, 02 Aug 2021 08:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627919118; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj7244GvBJRBKrnvNMv2SlDJrsZgOlGfRZKf9mM8oUw68FnJDci0HQ+9FAJ8zLqeYW
         EoFKF+M9W7isJGew3vmLva9cHCu9qHAQoTCNzyIVVTUzwtA/DuCr8ZYot7m5YrO7MsJW
         X1txuOXM1o5cmG/8ZKNujXqEJ4/xo/JgtIQd0LDRQAOa0iOZJRbFd0mPzThSQSpToXFO
         ImQ/iFlciXNCsVmfUnuKPGZ7NNkcbDzHw/HTw8IkFEci3nOLPJSWzcpXVNDt01iSMzA5
         388y6QNQmHd5DjaaYs7TNB1U+TEyBWJehHVmiuEhM5zJ3Nf5G8Faf5hRKsBUDL4PNUIA
         ODjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=cMN4yc6Yg7k+g95Y7UmZLiL/P6GU424U+ZDesgvhHgU=;
        b=0npMmN+H69szg4cJDBY5mNZcwZVKFEuYDT+rbBfgpg9+TAkv3kP7escM4uDz65bmPC
         S/9urBqUqd4caVBayxgvixxWGId/UNKZyhnQDybXox28kU8kIBuKiRtp4x7TmAlMnnd+
         aUiCPgGEI8Iq9v8WvYzCNhljCYnmMtEEkEfvRFXuJwYTcmfBk4bGJ/m9ZKN5XR5rFNQ6
         VY6Rys4f0NxRRTd045d9qRiWO0SJiRprzwCjis2ZhUWSKymDuseHF53QGZdTMrm4Hhvo
         mWAm7wOg85QA0e5vN5mXSoI6KqjsprRziuMP4JYsiKD0uNzWL3TrhFBbPVE7w0X7Elxu
         PH5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cQd6eHU1;
       spf=pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) smtp.mailfrom=martinwguy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com. [2a00:1450:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id y16si17301wmq.3.2021.08.02.08.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 08:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e;
Received: by mail-ed1-x52e.google.com with SMTP id y12so25105684edo.6
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 08:45:18 -0700 (PDT)
X-Received: by 2002:a05:6402:274f:: with SMTP id z15mr20502581edd.21.1627919118096;
 Mon, 02 Aug 2021 08:45:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:3018:0:0:0:0 with HTTP; Mon, 2 Aug 2021 08:45:17
 -0700 (PDT)
In-Reply-To: <20210802141245.1146772-1-arnd@kernel.org>
References: <20210802141245.1146772-1-arnd@kernel.org>
From: Martin Guy <martinwguy@gmail.com>
Date: Mon, 2 Aug 2021 17:45:17 +0200
Message-ID: <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: remove MaverickCrunch support
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Hartley Sweeten <hsweeten@visionengravers.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@kernel.org, 
	Nikita Shubin <nikita.shubin@maquefel.me>, Arnd Bergmann <arnd@arndb.de>, 
	Oleg Nesterov <oleg@redhat.com>, Hubert Feurstein <hubert.feurstein@contec.at>, 
	Lukasz Majewski <lukma@denx.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: martinwguy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cQd6eHU1;       spf=pass
 (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::52e
 as permitted sender) smtp.mailfrom=martinwguy@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 02/08/2021, Arnd Bergmann <arnd@kernel.org> wrote:
> The MaverickCrunch support for ep93xx never made it into glibc

This is true, but is not needed except for preserving FP registers in
catch/throw exeptions or longjmps.

> was removed from gcc in its 4.8 release in 2012.

I was sad about that, as I had managed to get it working correctly in
4.2 4.3 and 4.4.
Unfortunately the GCC ARM maintainer at the time was paid by ARM, and
they had no interest in it, as I gather the ARM-Cirrus partnership
ended up disappointingly.

> It is now one of
> the last parts of arch/arm/ that fails to build with the clang
> integrated assembler

Even if crunch support is not configured?

> According to Hartley Sweeten:
>
>  "Martin Guy did a lot of work trying to get the maverick crunch working
>   but I was never able to successfully use it for anything.

>   It "kind" of works but depending on the EP93xx silicon revision

It works fine on all production revisions except D0 (the first one)
which is so rare as to be unfindable. All the others from D1 on have
the exact same HW bugs.

>   there are still a number of hardware bugs that either give imprecise or garbage results.

Not my experience, See http://martinwguy.net/crunch/#CorrectnessTests
If "imprecise" means "doesn't handle unnormalized FP values correctly"
then yes, that's a feature if you need the 2.5 to 4gimes speedup it
provides.
But I would be interested (Hartley) if you have a concrete example.

> This touches mostly the ep93xx platform,

The ep93xx is the only chip series it was ever included in.

> If there are remaining users of MaverickCrunch, they can use LTS
> kernels for at least another five years before kernel support ends.

The only user ! am aware of is the HEAT deep space telescope in the Antarctic
http://martinwguy.blogspot.com/2015/10/maverickcrunch-code-runs-on-heat-deep.html

Personally I have no problem with removing kernel support if that
makes people's lives easier in some way.

  M

   M

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL4-wQqCL1S-GYu7VKJeTT37wh%3DrR%3DSMUuwgKiXnnn_Y%3DuydOA%40mail.gmail.com.
