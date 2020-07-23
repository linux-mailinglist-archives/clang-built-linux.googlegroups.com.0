Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBIGE4X4AKGQECC2VPGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F4922AC30
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 12:10:42 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id t36sf3325560qtc.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 03:10:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595499041; cv=pass;
        d=google.com; s=arc-20160816;
        b=0/nOfmv2bmbIVU+JQQQjpzu+hDJI+Z5UQcc7Z2wJdY+81dtq1OlZSMoQKzsfAE9ADa
         BKw0MMZKwK0a429eG0DchlBL3BbMZxtzq+9by0k4qTzE+JEXI0ebjPTCU3puMEuEUNEa
         Zy7EgnumyVReNyDOIur1fJLTDDFwr4I0gy/TStvdKZXMTGyYf88TNeZUZPJiXfN1e+Yb
         LZbPvbi8w2J1EvyK97RBscIOmVh8NPwqFrchF/+jP2Cm+n5NmgwxP9oP8mQF6By0q5uS
         3M9J4cyZPacBcZtV+pJLQSazEAgWSvR3V5yJQIApak+aX20zDi6LGsfJV/ogUUUyiQrg
         8YPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oI6lgwZcktHJrMLtYnac4IzCs5+R9LIuZc+2D02J6Mg=;
        b=AIdAldY/Bp7RxH6DRqMGQGQwuCeCVeP7sSGl0iLwU6u9/GtTvIECr/htJkG5jTYQtv
         40AHBSM7MDRGGV2Fw3KhV7Ts5JKPzivXX8gEG/aeWIwMoBSpJ2sY6QY/L9Sne6vRDJdW
         tSbzB5E29YFNGq7dWomDKdyjqx2XqVRWwIjEsyku4qun8ZDYpOrlt+eOQoDICJv3Mcdo
         zM+V04yyws3wzJc+Fd65i9n2ZwR479cHA+gx/ntlBXHzmo+Va7htilNpp5b5TmhSZPeW
         o77JRIH3bmobspCiGpfoR2MuCEH0e7OAQQXM+rPBKOXVZlZNKuOPhLjKjOhEukDB4+Up
         mq+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LYQ1TlTy;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oI6lgwZcktHJrMLtYnac4IzCs5+R9LIuZc+2D02J6Mg=;
        b=diMgGdYoDXhd3KJ9pmHrrCEhTzooHHau4psYtxFHnV0lPzg3KXI5mWoAX9SOS4b3iY
         RfUybTb5RU1gcDyKOpped5GSrdhrWHnaFzkLJMGp4uvujtxHAJJ8c32Ay5zmYpOX+jfB
         rzxHVAmoUnvmHacNHKGJc9RYwmM+cPe/1QLqXRYV8zi8LUCXD2kQyQu9RZMfWTSZyc81
         Sl15ydX4BFi+jTgX2xqHcXlLoBl6fAjVYs6B5brr4FiRC0UzxWNblrf3tqlxF1mK7bBR
         su5GAkiHBNeJ+7Hg5coYGc/b+6Id8+TTRmF1n0TroGhnV7unejXwaFJlH2ZeXhmEJcHD
         dCRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oI6lgwZcktHJrMLtYnac4IzCs5+R9LIuZc+2D02J6Mg=;
        b=m2H4rdyIbv22+3j7cUiLGy5iqu9HN8GXuuFCcCCGbt7fk+bBQPS9ZYfUx12GYuC7Og
         l/qQfzcKk/EvtYFUkN2yizegTcTSwLgul8urvBGnB+m3ADNvBj4G7f9Vv108MOz9dciv
         am5MdcCu2lWxMz5coB85CDrCYjSskeldTpUuEkg7GYjPdA9un+iB6wsIP60XVy4bYjAw
         MrOURduaywFMWNRBNwm45d7/3mu5XSn0ArveJGZzlcbsLvXQwCCgXWKM4uko1Q2sfClT
         Fac3/nBGuKyWSqPxQT8q4syq7VwGqN/Laa19DCufvcUUvGk7gWqY/bWcihJ0plSxYxSL
         14zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+B4NrIstvuxsxaOrGeqtxLy96i3FJ4qK6Hl0fhsxhBrKAraNV
	VIhYX+dcOzq3cbukshdms6A=
X-Google-Smtp-Source: ABdhPJwWluIPH6KOUhb6VtFGNfdyMztmxNS5OL7JH6ksvjU5uIy8j2t/7lptnxLMQPfKLW8DImv7sQ==
X-Received: by 2002:ac8:3ff9:: with SMTP id v54mr3496507qtk.352.1595499041019;
        Thu, 23 Jul 2020 03:10:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5c02:: with SMTP id q2ls2515138qkb.11.gmail; Thu, 23 Jul
 2020 03:10:40 -0700 (PDT)
X-Received: by 2002:a05:620a:15ab:: with SMTP id f11mr4179240qkk.199.1595499040668;
        Thu, 23 Jul 2020 03:10:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595499040; cv=none;
        d=google.com; s=arc-20160816;
        b=eg4pUUy/8HB+Ox8P+4b37ZJKu22aZxc1IAn/H8PMp+xqWi2odSrFVtJkvGUcSuHBZK
         6x/wYa6ao6NQZvjj5M65NIYeal1xxgYk1xMS6EEeFFvpCPQ/D4c7FsYkLD7N/pyByJgq
         nqzYEFedQvCjOPQXDGklXom4Svx+LPovd3yy3lNSeBYZinFzbOJ6abQwADIhJ5utGhSL
         I/zaPJ5kOreJEsJeCa0kclpNaPH7uFh1rVt7Y9Eg36nk965CWUbOfAjBIA5UvWJ/4WhM
         sutxmqYh9GEiJIIVHCDSdlRsShVp2N/J9qR9/XbOqLr20aNnslTzUISjUij4E/U3FRJS
         cNxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BZBHj7ICJYyplOtSK+uTePeDEy6zHuBaHNt/FhHdP+A=;
        b=PY4Ss1Cn7cwejc88oeZmdYbK+J8UI+GL4IGlpgbaCnAbGveVzj5a7v3C2d94QmR53+
         pGq3d21yCEyWQykSVNwuWorC/vXt5BqH/L+WeSPXX84tMXfosFizZj5PDVduM+ks6ULi
         O4bHaeXrroWwexE4dtQhj9maRkjB20Y1EMv4kFTKBJwiEs32k7kUUalWLZPLFfzUP5IT
         AZkUXJysscDawAE5BQW4F5m9qOFCLr9h8oODUM8Wpe+LvrWjcCvOL87S823C0FUty0a2
         yL3cP+q5W/K3vK2y/H8BpiN8hz9kMJp0rEHxaNDZ81cA+oc84trGBq/cfK/ZnU6vT+al
         721Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LYQ1TlTy;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j9si234899qkg.6.2020.07.23.03.10.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 03:10:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2CA7F2065F;
	Thu, 23 Jul 2020 10:10:38 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: vdso32: Fix '--prefix=' value for newer versions of clang
Date: Thu, 23 Jul 2020 11:10:31 +0100
Message-Id: <159549825312.3524506.8970900568207744647.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200723041509.400450-1-natechancellor@gmail.com>
References: <20200723041509.400450-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LYQ1TlTy;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Wed, 22 Jul 2020 21:15:10 -0700, Nathan Chancellor wrote:
> Newer versions of clang only look for $(COMPAT_GCC_TOOLCHAIN_DIR)as [1],
> rather than $(COMPAT_GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE_COMPAT)as,
> resulting in the following build error:
> 
> $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> CROSS_COMPILE_COMPAT=arm-linux-gnueabi- LLVM=1 O=out/aarch64 distclean \
> defconfig arch/arm64/kernel/vdso32/
> ...
> /home/nathan/cbl/toolchains/llvm-binutils/bin/as: unrecognized option '-EL'
> clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> make[3]: *** [arch/arm64/kernel/vdso32/Makefile:181: arch/arm64/kernel/vdso32/note.o] Error 1
> ...
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: vdso32: Fix '--prefix=' value for newer versions of clang
      https://git.kernel.org/arm64/c/7b7891c7bdfd

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159549825312.3524506.8970900568207744647.b4-ty%40kernel.org.
