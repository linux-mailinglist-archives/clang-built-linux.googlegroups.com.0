Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLEAYXUQKGQEK4JX2EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 178076DA13
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 05:59:42 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id m19sf3503406pgv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 20:59:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563508780; cv=pass;
        d=google.com; s=arc-20160816;
        b=lzNKxD+cIB0bT2Cd8fTXuEiiREifDpEDIeuwc1uip7FsYeymgswM3gPjqn3DFvi4qu
         9wtAwnr+184zKahVaMbLiKF3JK33xhDLiesbAzzVblGmLk3GqfcNdoUwO/u6xltiNxTK
         WZEKUCN0/dvm28p50cDbXvFVWQwQxrKtgDnhuYIHspYzVULmqQForG8Nw8a+a/qLuAvn
         mqKTjv1/EALKuhZoo7FrPo+UvkTmUQ5EV5NbdYNmlCo7J1AdMQvU77ypfcFT5Dbnwilz
         MgIZ8aOx5ro6P6wz2RO0JGFNq65EOcRLw8EhKG+AFybHro1Y4AGqBflBLsNqACE9pctn
         DgMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=N/8JOagYtJLl0aUPCjDUR07V/nelMJphzIiSxTgVMS0=;
        b=eg9yM0mhuNdU8wdjHwY8zb6dg6Ca0+1ppjGvG8cEMzJ/H/nl4Osaax7hCwy2VzRrkn
         j0XbFxNhNEAtb+qd5KJNvQgaEoLiHm4p5RmzQ3yQIt6iL6MbxBlr8QS6/NsCx+TVHmqp
         lg8m8lC4sBwqfs1KA/eNE50lE7wMQlM50nlAFu9kWel8UXUOxqGiC+ETKbhIxEaprX5F
         DEiDEaE4XD48K1OlEMCViIuj6R8evFSflILB5T94/GPgfEht216cKqCOwrE8MYos5RNH
         YS7M8yUDBqFfp2gs28DA7NNRFDFACUPxvYSavg/PMq6QmJ8SMhEeicgSus8803ESniU/
         UEZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lfzGVIiF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/8JOagYtJLl0aUPCjDUR07V/nelMJphzIiSxTgVMS0=;
        b=gpnO9srtw1TlhVO0iV7WGAfgIrs0Le1dTAL79Da6ICVrKjNEK6ZrZdLEQ6BCqIvLZR
         /HgwtTZQAaxbOOkdD+2fIuPyF5mm3psJpP97Z2kxkPVNTSjAet7zQ/X0raL8tuzkNW4Q
         CvEa9vgAK/kQKjMh2LY0HESy3MdNZ4HWf9XQKm83BwLgUbHQCk6bC50BaLpQQ0BOc/bA
         u6sDHZipqs/YlDI5jVGXVJ7guAp0qRM1TVvn7MkQQKvB8IQdfn4fqYuOUuiQo9jgX4bP
         vvi2Igb97nzaeiAjub4/xlKCIUPn8wMSXlOUnbTfbtEB93wGhV7YzUn+Oyb9ayBiUAYa
         6hQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/8JOagYtJLl0aUPCjDUR07V/nelMJphzIiSxTgVMS0=;
        b=fVLyYQUJ/yn+ow00eij/9feoV5RA60tM4YE7gAhs6zJSuvy5RSsW+oSQ6eFK+NqB1z
         JoeIq8Gelb1VvCROkPAye/FD44nakfduKYX6SrCfOFBpswUlbTICZe1dq5/GPwKbWXyC
         gNjgy98aMQUkKjDFQS7xBgPnDj6TIxsPhS/v9QjIajeFfB0DQ+4p/FbJTT52mSysr/qQ
         VbEMPpH/ef8BhKSNmuL3Z4+JG/mIcFZarHYzS/YGpRq45fw+u5HZ7YlRhFus5rCDMjCh
         SYkH1sHUiXZSNQEbETxilhtUDCzDEsBoE4sTHgqIsuOuE03m9d4nAkyWcyjVRO1SNvwp
         RATA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWFgX355GVx0++FuttN9RkF2ngS8JtBptTsHA4gzuLyjJs8c4ll
	jI6IkF+0vZT1EJcqI8x9/To=
X-Google-Smtp-Source: APXvYqzsa4OymvKcjZIs5xLITP6EfcC2StQOfOv1mAHXVBk293nrs5NftAj0ec8dPexWWt7GGRE+lA==
X-Received: by 2002:a17:902:2bc5:: with SMTP id l63mr56009284plb.30.1563508780567;
        Thu, 18 Jul 2019 20:59:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b21:: with SMTP id 33ls4989112pgl.1.gmail; Thu, 18 Jul
 2019 20:59:40 -0700 (PDT)
X-Received: by 2002:a63:204b:: with SMTP id r11mr11779249pgm.121.1563508780194;
        Thu, 18 Jul 2019 20:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563508780; cv=none;
        d=google.com; s=arc-20160816;
        b=cyPX7QDeO5rbAzSi6mnNec1sZrRFjzjHISGIxAcENfAsdFwkh/KdGRlr7Sfuh43Eoc
         jVx7cnndn0c4b+8wAbhOAYbpCbjJcs594TG8goJPkr/pd0j8SzytXrHHj8xEKzWRUuIy
         6WNQMaIroEGcbcfqc2jLCfpWhxBHw7LujgtjrERPUiYg1gAr94pwIeR0ViCG8v7Ds4f9
         izzsOyVnHUuFHtvOzprG9tZ/RTrUxnVyvnYVpKi6qVNVO97I9Hbdz6p0hYAHAG98W4XJ
         BNqu0qRORxrJPqbq/EFVWDzoaqzdrhr7j7ec5Fbo/WnoT5XSPGC46rR4HtCH87BrEeEH
         ykVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qLawFAgP5gj8KvEiJ1azy91FlZxok7StJscPn0zZOxU=;
        b=XvnZkA4bAPrLxWYijMAdnXbWxDfZB6wCOSvGLw6s65c/f9DMrqnywXtC9/r3J5LVwt
         Vvd88i3kFG42yNxeL0jR+PBmmx4KIANVcVJo/3fAp5CiHgPogflJcLuKr09/xbCHllMb
         HecgO9NJ6nxZVl0mEEN0Jt2rvzFIow/RiuhEqlrKaXlW2gGSq3ZGTeRh5PNH8K6UYzob
         IqBnEvkWK737K1XVBwxicFK9dBvP/fz2v/aCEZxxY00dzixMccqwE7eiRXhoxD2bjrBF
         gBvlJu8Ddh1I1OR+rdCg3l6hpbzp6lRj1Q1rvMNk0GBDsxrhzUZAnrtfc1jOLxZ9Rj59
         V4Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lfzGVIiF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si1236757pjn.2.2019.07.18.20.59.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 20:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13181218B8;
	Fri, 19 Jul 2019 03:59:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 086/171] kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS
Date: Thu, 18 Jul 2019 23:55:17 -0400
Message-Id: <20190719035643.14300-86-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lfzGVIiF;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 589834b3a0097a4908f4112eac0ca2feb486fa32 ]

In commit ebcc5928c5d9 ("arm64: Silence gcc warnings about arch ABI
drift"), the arm64 Makefile added -Wno-psabi to KBUILD_CFLAGS, which is
a GCC only option so clang rightfully complains:

warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]

https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option

However, by default, this is merely a warning so the build happily goes
on with a slew of these warnings in the process.

Commit c3f0d0bc5b01 ("kbuild, LLVMLinux: Add -Werror to cc-option to
support clang") worked around this behavior in cc-option by adding
-Werror so that unknown flags cause an error. However, this all happens
silently and when an unknown flag is added to the build unconditionally
like -Wno-psabi, cc-option will always fail because there is always an
unknown flag in the list of flags. This manifested as link time failures
in the arm64 libstub because -fno-stack-protector didn't get added to
KBUILD_CFLAGS.

To avoid these weird cryptic failures in the future, make clang behave
like gcc and immediately error when it encounters an unknown flag by
adding -Werror=unknown-warning-option to CLANG_FLAGS. This can be added
unconditionally for clang because it is supported by at least 3.0.0,
according to godbolt [1] and 4.0.0, according to its documentation [2],
which is far earlier than we typically support.

[1]: https://godbolt.org/z/7F7rm3
[2]: https://releases.llvm.org/4.0.0/tools/clang/docs/DiagnosticsReference.html#wunknown-warning-option

Link: https://github.com/ClangBuiltLinux/linux/issues/511
Link: https://github.com/ClangBuiltLinux/linux/issues/517
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index d8f5dbfd6b76..f02079b98e7e 100644
--- a/Makefile
+++ b/Makefile
@@ -528,6 +528,7 @@ ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 CLANG_FLAGS	+= -no-integrated-as
+CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719035643.14300-86-sashal%40kernel.org.
