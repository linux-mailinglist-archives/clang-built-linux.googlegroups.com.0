Return-Path: <clang-built-linux+bncBAABBTNKRKCAMGQEMGJ7BUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B03368F7B
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 11:37:18 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id z17-20020a0cf0110000b029019a84330150sf17874175qvk.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 02:37:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619170637; cv=pass;
        d=google.com; s=arc-20160816;
        b=rovTjZGFiFf6TXS76k5mHfsSg6A25JWzqtHaAq91dQh1o0DWbkiJBJoJAslcNb0Mcu
         SbqyF+ytICIqxP/SsU125UyX0fK0+xIrHeIjWtpFqQmfExeqd31EB2l0HVqBd8lbtJ9b
         GcfOq34UGmHw5QPcd5fIgg+SzZbgETPZ+g9YxoR1Pusvuo+/vkPv+0Sw5+8WV7144X0G
         fY3d/nI6C7FtWMbtbZSxmIoEpmboZNLsCt4izJiftmAKwJUVzWkNOgw0+3MjZw81rASu
         zYQmYYESx7ELVtXa+YgBa5Ko7q60/Idu5f8K1nT6uPJ8O5n64W/psHdlteCet1/B4G7Q
         Q0kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/5yWl0WPv83MK2lTWC9ZpFXQ3hx9RJ1tPXSI/I6ADuw=;
        b=qvbIU2Cx0jZ0VL+tlxgKHaV3gAQ8Ylda+e1yidcP6YGkGWgLaBUCEbFVC5RYWaJkTt
         Hg8QYH3JsgIAZxxHEp17gq95aYe86VDwNUMpSWhNnB/NlcOe3jzaq+0zqlAhWUtgF+cX
         2Mey4x3sSGfQIv68WvXcWcneZ9FXzohVkCFaiDiAGp4U2qanRQkAqPTxCiv98zCGmj2+
         MIyvMOpQsV4B7yjCAWsVv2PY0WNGle75oPM7TG76BsqOkpZw0t5Q24KSlDFmS+qYcTsN
         j9Bjpy3AiBghBAJdPwwvS3jcBf7JC0ZK/s9KTiZXqikDvxy+FsKEyH9RbK03hSRMhfij
         7cYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AWXh7jki;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/5yWl0WPv83MK2lTWC9ZpFXQ3hx9RJ1tPXSI/I6ADuw=;
        b=kxbbNjcbLNS6rNGPoSU/ojsrESf/fE7dZ1OToBDcHOXLom82tdRDJviELiQHrVn0g2
         UrQK4i03mWp7um3gB8lZau1jEjuJjzCqFm0ciiVjuLvJ5z593/KCeFeCKphxDr3ATY6L
         X+pGVoE5KiZUWnbLDLvey5z0GoNNcy9Kpt+i5OQTQBSYvTnFdQCbH4yCmGUu+C6ix+b0
         Pa5QDbb79JvmKEu8goZM+iVTmjjhBUV98uXna8I9Hwy1aryuWJoEsxeNp7cK5nzbFOg3
         uwy3J14Ded7CClmG1JoiozsAnHgJnOr3hTgTHe83taOlT7JgJ6N4gyNwzcT+gptsT3GN
         4m7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/5yWl0WPv83MK2lTWC9ZpFXQ3hx9RJ1tPXSI/I6ADuw=;
        b=gVAFbFnuIacNqN0Egfi2q0GB5yfmCethbd02xtGFA2W5jIhPu4CkBj6axichjG7GCC
         zD1UY7mAjk5BAHaKqsr+IPQCXF96ERLiyCGev41Q1okMW/2y0pIfeFwIPj+isJNgLvcW
         OrJquHTrsJJ1je4tFcZmiAlud1QpnkUJLdVHzwTldQMIxZwxaP5O2cmStuCMf0LSy+rN
         aGZKOauj7WnUkXxDRAdOtuVAIoM0GChivE0Oi1cSuy6a4qn2Dqv8hR9tZNDVwnlggw71
         Ucbrhqp2IhKraxVwhslX6L5hcnuorEB7ZuyUH6HQ8Q6/CzBHDPvyt+49ctMGaqsXBYD+
         SUGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303mRCBVWF3ZmIHd0LrOxEShtx5HpMZo4D2gB5kQN7mlAYvLZdL
	Jcdm+grwGDMx9Bf4LlyZMyM=
X-Google-Smtp-Source: ABdhPJynTzY8pG98lyuSwubPrB0ZHsRB+t6BvVgI9VfHBaB6YrU02tNLSx8kwcLOe062nwqUVJwAtg==
X-Received: by 2002:a37:912:: with SMTP id 18mr3089295qkj.446.1619170637376;
        Fri, 23 Apr 2021 02:37:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls3628709qtc.1.gmail; Fri, 23 Apr
 2021 02:37:17 -0700 (PDT)
X-Received: by 2002:a05:622a:350:: with SMTP id r16mr2767953qtw.27.1619170637010;
        Fri, 23 Apr 2021 02:37:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619170637; cv=none;
        d=google.com; s=arc-20160816;
        b=pUwv9R5GI1syR2x5cVlQp/wKziFleMeBM1kEAfkj1TBPnSyLN6s47aue249HEgM+jg
         C6+m+yj6RGmOAaQ5K48ls2heBGBzfZSuh57x1MkCM63v+MFBQ1ZWqZq76V8xP8vGwvV5
         On2u9sy7eMe74d0OfZWfAzPibzSRIIiswgbZ6Gw4b7DNg+t9Lagpb3/v/2POfj1SFJ4u
         XeRBADgoceyp2IZ1RAizUchufhMyOOvoQQ5R5EhdTiTJ150dzEen+DC4EZ55yoTeYfcH
         zbsRzVuVttzxeV5e6o701fFIBVZ2cgl7Ex00SE9QlZMsS0T4MJt6oqG1pNpfjIXjREih
         3sXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5cmhSWbcWAoujVeduHp4sN36orM1X2CYhfDVH/KTq+w=;
        b=hikFiT4NbpAMEYjvPrHOxSggbsBPMXSbe4MWkMs4qUQAnUxrYa9vZgMOxIShrpnkvq
         ZTb2sx81Gc5jdiA/nDkssS+yN8iK1a85ZvPW7vOj5JbNCRF2iUupFgKYKhR9nKQoo0mO
         gktnYeqKbbLYOLxcg5Yyd8sGX88YCr8dwNfLtq/gqsLRb2E86pwCVBiM4u5G3rzI+38+
         lcC/i+L1Lrl3BeGJBqDabKWXT2u9M3KmV/TJVPCEmOj1i9v/8+6Ren3FlRyrSclSdpFQ
         9IldHmO5yM9InBm2t2Ugtd6hy/AkcxA5mTL6Wl0q37uHoXBlkxAigpRYnKExglSQB36v
         fZtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AWXh7jki;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si982663qtg.2.2021.04.23.02.37.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 02:37:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AF4CC6145F
	for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 09:37:15 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id g9so31669813wrx.0
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 02:37:15 -0700 (PDT)
X-Received: by 2002:adf:db4f:: with SMTP id f15mr3513380wrj.99.1619170634187;
 Fri, 23 Apr 2021 02:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
In-Reply-To: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 23 Apr 2021 11:36:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
Message-ID: <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
Subject: Re: ARCH=hexagon unsupported?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Brian Cain <bcain@codeaurora.org>, 
	linux-arch <linux-arch@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AWXh7jki;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Apr 23, 2021 at 12:12 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Arnd,
> No one can build ARCH=hexagon and
> https://github.com/ClangBuiltLinux/linux/issues/759 has been open for
> 2 years.
>
> Trying to build
> $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1 LLVM_IAS=1 -j71
>
> shows numerous issues, the latest of which
> commit 8320514c91bea ("hexagon: switch to ->regset_get()")
> has a very obvious typo which misspells the `struct` keyword and has
> been in the tree for almost 1 year.

Thank you for looking into it.

> Why is arch/hexagon/ in the tree if no one can build it?

Removing it sounds reasonable to me, it's been broken for too long, and
we did the same thing for unicore32 that was in the same situation
where the gcc port was too old to build the kernel and the clang
port never quite work in mainline.

Guenter also brought up the issue a year ago, and nothing happened.
I see Brian still occasionally sends an Ack to a patch that gets merged
through another tree, but he has not send any patches or pull requests
himself after taking over maintainership from Richard Kuo in 2019,
and the four hexagon pull requests after 2014 only contained build fixes
from developers that don't have access to the hardware (Randy Dunlap,
Viresh Kumar, Mike Frysinger and me).

       Arnd

[1] https://lore.kernel.org/lkml/04ca01d633a8$9abb8070$d0328150$@codeaurora.org/

---
$ git log --grep=linux-hexagon-kernel
commit bb736a5c0e9a2605f11c2bbb60a68f757832da32
Merge: 45979a956b92 18dd1793a340
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Fri Sep 20 11:28:43 2019 -0700

    Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel

    Pull Hexagon maintainership update from Richard Kuo:
     "I am leaving QuIC, and Brian Cain will be taking over maintainership
      of the Hexagon port"

    * 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel:
      Hexagon: change maintainer to Brian Cain

commit 72d4c6e5893a122c2fd060ded2b490582a5bb377
Merge: 1d176582c795 5c41aaad409c
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Sep 13 16:33:26 2018 -1000

    Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel

    Pull hexagon fixes from Richard Kuo:
     "Some fixes for compile warnings"

    * 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel:
      hexagon: modify ffs() and fls() to return int
      arch/hexagon: fix kernel/dma.c build warning

commit 2d618bdf71635463a4aa4ad0fe46ec852292bc0c
Merge: f2125992e7cb 330e261c35df
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Tue May 1 19:54:22 2018 -0700

    Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel

    Pull hexagon fixes from Richard Kuo:
     "Some small fixes for module compilation"

    * 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel:
      hexagon: export csum_partial_copy_nocheck
      hexagon: add memset_io() helper

commit 0cdf5a464070c8a2980a27113c47fb8e71babb9c
Merge: 65c61bc5dbbc 02cc2ccfe771
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu Sep 10 16:19:07 2015 -0700

    Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel

    Pull hexagon updates from Richard Kuo:
     "Just two fixes -- one for a uapi header and one for a timer interface"

    * 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/rkuo/linux-hexagon-kernel:
      Revert "Hexagon: fix signal.c compile error"
      hexagon/time: Migrate to new 'set-state' interface

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2DCCjOq%2BsB%2B9sRM7XrtnkromCs_%2Bznv3dehqLiYFDQag%40mail.gmail.com.
