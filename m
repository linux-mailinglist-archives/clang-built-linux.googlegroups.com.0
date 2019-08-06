Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZHEU7VAKGQEGNB6XNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DCC83B4F
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:34:29 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id x5sf50619484otb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:34:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127268; cv=pass;
        d=google.com; s=arc-20160816;
        b=muHfzTSGhLKA7dQpioEIvNlzMAttp4yrY31AlmXPlexcxY75c4Nj3llQ327pGPBXvl
         HuCtu2d2iJJG926pAcz9Nax+UZgfq+IddLGZg5di1tLYX1BGjwqD+uTIM3FHp5bGf6NU
         53CL+2idIdJFUA22JTuggP09h2kt7zKbsNSJEQfVcgak/n1ZSYgJDXJA+Y6KDsBs0grC
         8rhBC4Sp7GZws3qI0PnwO8iNet1Ze2nU5X/Iz1Kir4QTflQO21Bv+gHzlRYglVh4yqgq
         oMiMNq1gm06a4I9nA46hvT0VAl3x23f6rwXLmSg53pMw7kjabOUlxJCjdByGvFzUERR9
         JOsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3oxd1pBE9JNqMvrYg7siNxIePEMAK4bOcPeF6q2GXmU=;
        b=SqRBwUsma1xAprIdxURp7P/jha0QuDgV5ZDy8PcDb+UUMHvoB2EDNURfOUicEZVpBa
         ZrSx09T65L3JkuaYnFD6GKEvJdPvhslhxruZHhnvlJtSXQb0Ks2v2di1KttWDO5VyPbi
         2Y5M2fO2hxmNc9OjKyziXg8/4GKQvarJ139ZfcvgiDBr0Ot3F4gfPWO70YBfdRf+fLor
         BhL/a9PPg1WZe8Br/fDh5ssAUj3n6D7d6Xh8TxDewvmbqg7goE6XkPARD5ldI69FxqTr
         3VK0Pr/OIDHlnGb6LLOP2qVZAeGJRoEsk0fc1rorRVJh/MpMuDYxlJG5dPTCGXQdfHsg
         7x0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0nGiPdQY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oxd1pBE9JNqMvrYg7siNxIePEMAK4bOcPeF6q2GXmU=;
        b=f03/t/b/7jcbK3IdPT88l3g+0nyMsO/oK2m0fDsYF9eis2yimZDFdfPwsOpES8z8pc
         lmGpwJmEb4ULXtKFCax87cD6mYmfL3AZs12BIIsrpcQj9nvwwElYHMLTnWr31dAuxZ/v
         su9WIMaVxWWjaPxqSto4P1uqo8FVIjQoJgE4mFrS6O1T4NzDKxDcu3R/+TsD186ejhCa
         pn72gn53EHD/SnKjj9/kyjUGV6yZpi0kUb/6RFIH0zg09Mb+fC6ISZv4sEgCH0kG1Fe0
         cV+f0qDzkqrJhujn/WWiuA71NnF+hF8KJmiMaGGQWcR2aIZR+c4Zv4yWoXoeoXYMKmUs
         CuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oxd1pBE9JNqMvrYg7siNxIePEMAK4bOcPeF6q2GXmU=;
        b=uVjWa4RsF46nk5Ulsq3Bd7IuIg95Z0iWAhGn3TMYYsUcpH631HoCyZzy4Mm/wIR3/l
         V/ejraVtNfRcxGKt5TFF/psMv13BVNSC6qfjCx5VeEu65noY4d66i4VuyBK/uowfsz2I
         ULtkNuW30AJFbQidXpvwMJWvMd8y3Wa5gk+JUyFaT0TCON3Pq2heSULD/I+gdlyjc95k
         p/qy/YF3EXqpcMdohnk2OhKxd+d5HJ5RLoGgYEfppqt8Ze07RQt5ebVCQXxRIOOUAtF+
         ZZQv/El12sasL2F+v/Ap7wc9TbaiGHdst2qHDjTWyUAJnPXff4K3Fdo7X7NRKl0HmK5x
         7c7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW8Wcs5NrE2yIF5HQQP8igZeQAIEYSU98grQ04d1ZHO6X/7LLOF
	Mr70ai07NBojiMW0xJWZkz8=
X-Google-Smtp-Source: APXvYqzrg5ePpR2IvTb2X9i1ekqhozpNMbr907qVDUknd/RgJ9qQPzD8MjLviMF5ek1G78Vr6y0iyQ==
X-Received: by 2002:a5d:8d12:: with SMTP id p18mr5595558ioj.251.1565127268474;
        Tue, 06 Aug 2019 14:34:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:2384:: with SMTP id u126ls11725319jau.0.gmail; Tue, 06
 Aug 2019 14:34:28 -0700 (PDT)
X-Received: by 2002:a02:6a22:: with SMTP id l34mr6693137jac.126.1565127268240;
        Tue, 06 Aug 2019 14:34:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127268; cv=none;
        d=google.com; s=arc-20160816;
        b=He8ftzp5QOBJG7Nh6JRJTN56dV2mXPHQGUMTBMsRJEyDhLjxC/QsD0Tacuicz74tEv
         cCYjt9aTvviBA4l3lxmkfBidPA3ExwaBrMriXtpHdoglKH1/QY+phz7z+8pdnPXodthf
         UjGR2MWjyHMZa6HGz+x2oJoVA1qc1LD+hpslfD15ebfP/oCXdWWvS85xWk/fa9Cl0YXL
         WSieKzdYN5iyWgH1GcFoPrxcmhhmvJV1QLZzGDrXlMUWxn9NL7vcv/IIhiX97ansKx2y
         +JvsWgoL4/M54kj8l+Srg0GxT7wGTonN6yxTRQzTgHSqt9uQauFScjt45NucIyeI5hnX
         rFuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xR6RvMQaDkuH3GvR6ZSarO50grYTFBogqVRLbvza5As=;
        b=Mi29mVM/kN0WmI32pMt+OOGPkAhCDOnaSBW0CB5fFewQQIrE+ZO+6/ngeDB0uUbhdQ
         oJrs6saP/SVmfGYCTzAHnBNnMLJzGYbRWyJozAMEWqr2LQQzWGWv5CS05cpXDqw+rZyv
         QZYKnMRoWzvoJUAcBe99T7Cwts1qZiMcdrwqYghDmXZsfUrgMoPoyacYNJ7tBfRHn/Sx
         pvb40hluQHMptZIUwdhj4/msV6mhMUT38fnSIJ3moePiBvDM07+4BOgNlgZ2jjQ8YJbF
         tdcZXfiU0WTmUA6sVyqJY+PXa7zg+TIm7YBfoNekaRaf9iNwi4Bm72NSx6UkubegLGLj
         dcXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0nGiPdQY;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n7si3098530iog.1.2019.08.06.14.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:34:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A3B4217D9;
	Tue,  6 Aug 2019 21:34:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stephen Boyd <swboyd@chromium.org>,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 35/59] kbuild: Check for unknown options with cc-option usage in Kconfig and clang
Date: Tue,  6 Aug 2019 17:32:55 -0400
Message-Id: <20190806213319.19203-35-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213319.19203-1-sashal@kernel.org>
References: <20190806213319.19203-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0nGiPdQY;       spf=pass
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

From: Stephen Boyd <swboyd@chromium.org>

[ Upstream commit e8de12fb7cde2c85bc31097cd098da79a4818305 ]

If the particular version of clang a user has doesn't enable
-Werror=unknown-warning-option by default, even though it is the
default[1], then make sure to pass the option to the Kconfig cc-option
command so that testing options from Kconfig files works properly.
Otherwise, depending on the default values setup in the clang toolchain
we will silently assume options such as -Wmaybe-uninitialized are
supported by clang, when they really aren't.

A compilation issue only started happening for me once commit
589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
leads kbuild to try and test for the existence of the
-Wmaybe-uninitialized flag with the cc-option command in
scripts/Kconfig.include, and it doesn't see an error returned from the
option test so it sets the config value to Y. Then the Makefile tries to
pass the unknown option on the command line and
-Werror=unknown-warning-option catches the invalid option and breaks the
build. Before commit 589834b3a009 ("kbuild: Add
-Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
but any cc-option test of a warning option in Kconfig files silently
evaluates to true, even if the warning option flag isn't supported on
clang.

Note: This doesn't change cc-option usages in Makefiles because those
use a different rule that includes KBUILD_CFLAGS by default (see the
__cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
variable already has the -Werror=unknown-warning-option flag set. Thanks
to Doug for pointing out the different rule.

[1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
Cc: Peter Smith <peter.smith@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Kconfig.include | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 8a5c4d645eb14..4bbf4fc163a29 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -25,7 +25,7 @@ failure = $(if-success,$(1),n,y)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
+cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /dev/null)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213319.19203-35-sashal%40kernel.org.
