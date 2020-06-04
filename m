Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHWX4H3AKGQEAX72ADA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF8B1EDBB0
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 05:33:52 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 140sf3434343qko.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 20:33:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591241630; cv=pass;
        d=google.com; s=arc-20160816;
        b=B92zZ/QWloh+12hmEGwnusqVFBrrQM9CBbHlB7I3OBUbJhhK1U1ethEU2AGQvGDj7m
         /jgfyTZa0LULiMGgh7pMWUHgVBG3WRkRXpUpdatpEdkA8w+mALToHKugtNAhWvjeH3bb
         RSCnAhlR4fQO15qeVrWd75m45ryZDYl4CC2OaEMzBRR/TePFmJI1MqUs6+Xc/qoU81My
         30pGE/5G3xPq9WG55DkD/CtLgOCm6+7ed5Iz6lghFfNpo9DiiAdcWa5zFlOgMdc7wQe3
         zW4c+TRR2SHkvaUbobVKN6vhZ7DTNMQZf0coXxqB1nQt1yN66JXWCmshNiWliBQtMIqX
         wTyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=bb8ScTpAN6tLliVhCSdzOBOxpXp3PC9Jy9Ow9zPT2/s=;
        b=otTeyZHTpVzgiGpEun3ZgyBSmrHAkRjxQpGS57EU7/6RCc94nz8NjufZ4UB2zrPsni
         40LYciaQQvc4JLLXG3ytEsFQClZTth1iqNABQxJVVmBYRC412Mo25tPAn9MDEFuXTAcF
         FVeImrN1Tusl7mJR6d1FqWodXfr41hHidInyPhTzDOKdAKIHbo13EjXy+iWoribyElck
         69ukLtTAW7Pjw5K+9JLIt6mCgD3uyoJgJDMSk4FiaDQha9jyis886OH00ALkJ3OQIDYg
         9vOjgtVJn1HLJN8Vx7bd/im/d/ppb9MeavPiE22t7Rd2nOmJJIIG1ko/OzvdkGCShjdo
         93xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAU6iC7S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bb8ScTpAN6tLliVhCSdzOBOxpXp3PC9Jy9Ow9zPT2/s=;
        b=T+ldzHw4ezDzr7zNGP2Mj4P0BSYjx/RwCsOpvWN3KRJcCTkHDRb6DaDfCKQjHOfewi
         jJnpJgvllxiM96nINcOmSuShx0h+cjroBojmAtR6dY/I6pJ86nQEYgicgWTWDBdBnDd3
         uW9iVwSdt/wSEuIrwzwkhP54zsHH1mr684VSCxondbG53gfbTv1iYAq5SLOtQQRwlfTb
         gK0A1PYUbKCntfrpIvgqE7mG/O929BJUpQPR/Odbcgh44SP0lqoh7GGDT/EE6kaD7u3+
         +Mc1TrBvtQj0uLRpXUEqSVS1Xae1awGjUVjVfkw94w4aUlwMdCHj1afMRyAM+pvmy+3a
         U1PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bb8ScTpAN6tLliVhCSdzOBOxpXp3PC9Jy9Ow9zPT2/s=;
        b=c/j1ryDgWNTaRbYEIJ25tasESTN+zn4ZwoOUpiMPLv5OWebyFAUzKuxp38SFWL3+B2
         0Ue9WJijlA6nGQhtBUXewjqA8n5SxiJxRLaOTcDaC8ydL+NcMw5pEKy4maeMuW/+JFfV
         zyPBVWo10dcvoMxx1Qiylyg8O9Ucy5t6O0ueSRoNLSidf2GJrU4dunqFZi3tAUriGirh
         8XElrIUuANxLOWfVBCBMKvSI6CzHLhb/Fr8DTn3vSuzzOG7rFJXf2kUsyOQj8kPAC8Li
         BsQk4sYyL8aSYjzhwq5Ds/0jR9Zwe9GFhIJNM/liQQy6QcnhHCZJpL6zIYX+V/wpDjdd
         gmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bb8ScTpAN6tLliVhCSdzOBOxpXp3PC9Jy9Ow9zPT2/s=;
        b=qQhq0BtIuq2RyNe7ScEraOFgx/gpenpNztCAAukVeCkMyqagcOcQDeea1gDWb5c/Qe
         Mn/rar3N+P9T/y8I9slTEGYQS7p+feQEjBWFXPJiWQx2U4rXUJV4HKUzROqLZ8VFTBoG
         2UnFmp7o5Pe9cbI9KuWzAgylrSypq6qf4KiaIevBnZCS65IpFwEevY7YoYfzIIpcgNfA
         drSk3BMSjOrqaT8mq8wXuq2UX7fV81I9ZSdcWUWe368M+KR5lzDMmlqwnQYUfVqGAZe1
         1jfA5PSMY/JOfrRzgEO+uZWR6epnN91ykdoHd6gVadYPW70Dur6xGgSAzS4z//6bOqxH
         Loyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Uxow1And0kGxecZnUNlTfsfscDtnG/UUJv986206UeWgps92A
	P5N5SrvQsTchH4ftxtwb7F4=
X-Google-Smtp-Source: ABdhPJz6ct2ufUrS96r8OiCYEUinAGaJY7CGnxuKnWLuLFOR6NztaB6i6PYiEfcwwlc08AY3RtDuBA==
X-Received: by 2002:a05:620a:534:: with SMTP id h20mr2884951qkh.293.1591241630684;
        Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls1342540qth.7.gmail; Wed, 03 Jun
 2020 20:33:50 -0700 (PDT)
X-Received: by 2002:ac8:2fb0:: with SMTP id l45mr2501864qta.260.1591241630354;
        Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591241630; cv=none;
        d=google.com; s=arc-20160816;
        b=U64Cvzqfd9Juj7lQx2JvSM9tEfFNU65m4qsOkRrIQ5yL1Uii0YOzERuj4C3DA1xHcw
         6qaz71XOBhGyQSTZ9O82lI9JLxXV6NKYB90KaxwxyQ6af31Y0OQFZdyPHtW+ExnKdqVf
         tcM5MPnHV8TWL+wmiZDDcZ5PdJwbRh7ppCrbvcGMQsMqi4ugIANPF3q1n+a7tNEDzFc+
         aXIXK1KuGPb88WxmpB8dJ+X5ayAYDsyP5d4Twnpu4WHiJdoEKxnahEoQKf+QQVbAoRnR
         1DhupuCtFhQaUeeQ21fLoLk/GRNUa7qTkRrxP7tAwNnKGSk07QZi2+UOmUIGyjxYTC8T
         H8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MtysUER1l5a/zqtCZtWbYXE2kDcmWMdAVlNOZNySUKQ=;
        b=KY0LAF/jCPUgnyzuG+6L2zg9SUhoLtLls+CKBvH9nIOyhkMs5uD71xjUXKj1B6pxC+
         m74+mpc0MeA6Fojh6cVD0XtRmMPA4SSDeJydwl9VwU/3zcPg/YdP2mGx4rZXyNmOMCwv
         gc+vEDMeysL5e60A1dR74rr95+g3zWUKHJQEqJaGb3yBdwZKww/hnpqODEyiKaTHl1Er
         T+JfqdsWyqQMlPiMi3cRiz9/DhNOBBEVO/fuMiK6C1HsaJ9uFHiYIUU+E6heFEQAX5sZ
         LS0Y3XziLzqOb6LlIUxfjr39NFa1LBSiDGb8imjF2lN9UFi1unClRoO0EoB8ojRbZqlU
         Btjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hAU6iC7S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v64si307435qka.5.2020.06.03.20.33.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m2so3660087otr.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
X-Received: by 2002:a9d:7387:: with SMTP id j7mr2354350otk.157.1591241630021;
        Wed, 03 Jun 2020 20:33:50 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id z13sm969120oom.3.2020.06.03.20.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 20:33:49 -0700 (PDT)
Date: Wed, 3 Jun 2020 20:33:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
Message-ID: <20200604033347.GA3962068@ubuntu-n2-xlarge-x86>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hAU6iC7S;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jun 03, 2020 at 04:31:53PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
> 
> As recommended[2] by[3] Linus[4], remove the macro.
> 
> Most of the 300 uses don't cause any warnings on gcc 9.3.0, so they're in
> a single treewide commit in this series. A few others needed to actually
> get cleaned up, and I broke those out into individual patches.
> 
> -Kees
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Kees Cook (10):
>   x86/mm/numa: Remove uninitialized_var() usage
>   drbd: Remove uninitialized_var() usage
>   b43: Remove uninitialized_var() usage
>   rtlwifi: rtl8192cu: Remove uninitialized_var() usage
>   ide: Remove uninitialized_var() usage
>   clk: st: Remove uninitialized_var() usage
>   spi: davinci: Remove uninitialized_var() usage
>   checkpatch: Remove awareness of uninitialized_var() macro
>   treewide: Remove uninitialized_var() usage
>   compiler: Remove uninitialized_var() macro

I applied all of these on top of cb8e59cc8720 and ran a variety of
builds with clang for arm32, arm64, mips, powerpc, s390, and x86_64 [1]
and only saw one warning pop up (which was about a variable being
unused, commented on patch 9 about it). No warnings about uninitialized
variables came up; clang's -Wuninitialized was not impacted by
78a5255ffb6a ("Stop the ad-hoc games with -Wno-maybe-initialized") so it
should have caught anything egregious.

[1]: https://github.com/nathanchance/llvm-kernel-testing

For the series, consider it:

Tested-by: Nathan Chancellor <natechancellor@gmail.com> [build]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604033347.GA3962068%40ubuntu-n2-xlarge-x86.
