Return-Path: <clang-built-linux+bncBD45FSE2XIORBJN7SWAAMGQEUJM4HDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3292F9C37
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 11:15:02 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id b2sf11173611pls.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 02:15:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610964901; cv=pass;
        d=google.com; s=arc-20160816;
        b=NtfKFZtfIkys+fY9ww5lSQcLuk5WQ0JWOVqPKNIjyQaI9ZSFUJ4MSnFzFod1e5XqEy
         kAH8e2kUEcK9BzleDY2j/YheZXTeb7//jLbZEENpCydYdJn+6hzbMjszyzWhGJDX8HAU
         v84w4Jizq1UPOgZAmkBGneE293H21UpkcIjjAsMzoiuTep6c3KlqQibLrcmXas91H+Bi
         sAcMkK3MYYB/0rG053mG05YQFkFr6xCkOlVVJ3Se9K1jgeSYDYrpJi4lx5NLAGbzNxBQ
         FTrrHwJxGbdyLdLu0l+coSf4B3VB521IaeMME5xKRDRVSv8OfT5BYCyrINbMwAjXQJIl
         0GWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=90i+Xbqxnad9LDzk4SlUjqzYm2jYb24FNUNkwJqSoCs=;
        b=NB+eIqo8De+vX8BbpPJny5hTYOcQUAmfCCkkXxTRrjffkKhOhxR2pYMFWqOtEaspch
         1/ToMme9QX17Mh2lB8upJ66KJJnB0SnPp4RaABzsDOS4SNZXpIhKTIl9XsfsVikKSUqt
         tgd+zN7LmMl/MEby589t97+5TXluTB/owfxVZmZFqSM85IOqgnxVILX8gnxArvhHV6wZ
         EfArh3ojsakkmXUIyY4WQImQMmFuVAcCoBapNJIBHAN+Ti0miVvOEEh3UrQUtSJ3/TIm
         VbMWQhSsUyDOyrrMER2zHpEXMdKUX29j3UQjoCG6AawD6xPtaVAnVl6TwTbDn/CmfQjx
         IEVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IiAscpFg;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=90i+Xbqxnad9LDzk4SlUjqzYm2jYb24FNUNkwJqSoCs=;
        b=b7GKmcFn2LlByXWjaoG41+qxaJXJJZnY/ARga1qXd+4n8Lc0v9k9XG3YCXmCaccNH2
         BD0E30DHzRjTXgmEwZxXahowxwkYxtoIrZXZBby3eX+x2K6RFOwoL1pk8hia793gVcCO
         fRkQc+n1k8HPaTpsAxOW9g9qHfpgGcqc7itfHJN0oZuIufXrfvhonlScJFjxkS0nDrwM
         bHVUklbPm/m3EOIOhnLvWn/+zRFSxgPNGKh1mYJHXUHA4tpi8BQ8dcWf6RhmylfLiAez
         qqDZarJVL1JCDXtrvri3t4Kz0cjJAGnQy7AWuIX+AqL4xwds7O9ZlSVJTtnQgiUYvBq9
         +JWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=90i+Xbqxnad9LDzk4SlUjqzYm2jYb24FNUNkwJqSoCs=;
        b=KgrC/9U6LeTTuFJjEVQur+AJOTAMJMz8SX6ISWo4pQjM3jmAPQBmULcIlQLgfLYHH5
         /bQlohiAJ/kkug77a1PKF1iX3xqcjKyuPYmBTFs9CYG1cvbHLTpnkGAIUgVe63xXe4fK
         UGwgKxocbyrDmt3SB+QqDgzSlCzAAKqlm/7BSeRVyg3XJ11g/PVYGwrvqm/UNYDxLDS+
         FtUdq3ukV+3pSohXmKJWJQ6O1xn2UZxwpnRiwl4rEUD0uBTUuvAnq7BoF30RWOtwAwIt
         +N3Id2fSOdzU+qLnksEkUb9okw9S+KX63IaUIBKnfJR4ZXpALJ0e68w8eAi9uEQHE9Zn
         sHaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TwyrUQ6EqCaC8ZwNivsEBI1i/owDPd9AD0z2TzS3gkHFcYKUT
	ZCuZo3A/Jk+07MP63im3CF4=
X-Google-Smtp-Source: ABdhPJwZJRHxoiIxv40x7+Mi2oe9D+xdlk5otTbDJOv32JWld3Y2dxNW3oYY0xZ95dGB6KtQAIrg+Q==
X-Received: by 2002:a17:90a:5aa4:: with SMTP id n33mr26042084pji.66.1610964901197;
        Mon, 18 Jan 2021 02:15:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls1680331pfd.6.gmail; Mon, 18
 Jan 2021 02:15:00 -0800 (PST)
X-Received: by 2002:a63:2fc6:: with SMTP id v189mr25273755pgv.303.1610964900608;
        Mon, 18 Jan 2021 02:15:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610964900; cv=none;
        d=google.com; s=arc-20160816;
        b=Coh65QfVZaU1BAHssgjpSKIPKobpmdOUMwCRKTZSK60dduGSIfOyRQkzj8Rn7nJ8Fy
         gprMlUI0wp46BuRpRxf2VKKEfK8FH+h2FsG9aF7Eb2vULr0jE1EHmB1Qsfio598UDsv6
         9KoJ4whDHsvM3OdCny4NhXpuwqZCOjhrlPpi9gk02O8uJLDmS5zO49unfghRm1rPs3uB
         sCnYIYU/7S9pJziGwO6EBmH/roLI66nrH76AKYZS3AyLjrVbHOIDziSiv1oVt3xfah0q
         igIAH3xVjCp5R9JMb9oV/Cm+KFqVtHiY+ssw8sdior/Srq8T0Z+jb4mq81Nmw5Xj11bh
         o+qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3j8b33T57F+c69uwMADnxbeu2g2VJ8ZYGfuoBiAbpSw=;
        b=wzhgkZOcuaoYWRmSRbMszErW64Ehtk3+/HEwDYyixDa4/mslaVNLTXSmVcCbi9phab
         fKQkh/05UB3hwPjkxqvjV+fLRvzdSHLvehUUxcOR9r1nEhbY75vSxysUvbktzi3SdoOz
         dvS1h+LMW1g9scv1vxjfyWQZnD1zKvcJv6twXiE6zllN9qjc5qwnglhj9fDbfuYA1ORC
         A7eT2OepiV98frtbWNKNTxWsiZSuGtQpFuZ7t7r9Ariky6A+NhrJq930ZMGleBufEuBP
         YXO5PPGSFASaB/2ChlI2hhF5eDAvXYsTAZxjNgGoPVzVIKwgJ9g8/kOWzpFWKhYjVJ03
         deBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IiAscpFg;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si1360653pfr.4.2021.01.18.02.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 02:15:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95ACF221EC;
	Mon, 18 Jan 2021 10:14:58 +0000 (UTC)
Date: Mon, 18 Jan 2021 11:14:55 +0100
From: Jessica Yu <jeyu@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Sam Ravnborg <sam@ravnborg.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Subject: Re: [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210118101453.GA13910@linux-8ccs>
References: <20210114211840.GA5617@linux-8ccs>
 <20210115195222.3453262-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210115195222.3453262-1-maskray@google.com>
X-OS: Linux linux-8ccs 5.8.0-rc6-lp150.12.61-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IiAscpFg;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

+++ Fangrui Song [15/01/21 11:52 -0800]:
>clang-12 -fno-pic (since
>https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
>can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
>on x86.  The two forms should have identical behaviors on x86-64 but the
>former causes GNU as<2.37 to produce an unreferenced undefined symbol
>_GLOBAL_OFFSET_TABLE_.
>
>(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
>linker behavior is identical as far as Linux kernel is concerned.)
>
>Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
>scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
>problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
>external function calls on x86.
>
>Note: ld -z defs and dynamic loaders do not error for unreferenced
>undefined symbols so the module loader is reading too much.  If we ever
>need to ignore more symbols, the code should be refactored to ignore
>unreferenced symbols.
>
>Reported-by: Marco Elver <elver@google.com>
>Link: https://github.com/ClangBuiltLinux/linux/issues/1250
>Signed-off-by: Fangrui Song <maskray@google.com>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>Tested-by: Marco Elver <elver@google.com>
>Cc: <stable@vger.kernel.org>
>
>---
>Changes in v2:
>* Fix Marco's email address
>* Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol
>---
>Changes in v3:
>* Fix the style of a multi-line comment.
>* Use static bool ignore_undef_symbol.

Patch has been queued up on modules-next:

https://git.kernel.org/pub/scm/linux/kernel/git/jeyu/linux.git/commit/?h=modules-next&id=ebfac7b778fac8b0e8e92ec91d0b055f046b4604

Thanks!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210118101453.GA13910%40linux-8ccs.
