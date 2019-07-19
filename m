Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZ4CYXUQKGQEJVTZTCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412A6DAD4
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:04:57 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id o46sf2948302uad.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509095; cv=pass;
        d=google.com; s=arc-20160816;
        b=iYX8BVKvocT24Oh2kaH3/+lNzdt4B0QDIGHmg/kF5YTUSCiQv/ItP+KyQR0/raCnEt
         /ZxAIKyVSvWKZuQaMKVFOTFUuZMvbz4KYmIgLxG81hF7X26307fwDxP36mAcKFQUx37q
         iAj9x2Xarqhkr7+Hn5XWCXiN/DlouZm0KbxbpAdKY6MTrhpQOmnyEane7r6a7WeCjeIq
         Db9fhNDWQUW5QJXTCLkuF08oMeIZ2OGHrDrnHZW054tmxk9eto6xMQD8+NmRDvwUhKEN
         PPf5RjylexO3yOi9z9covgRSUAaD9pH4esiOr2/LKLdOhIKyY4lM1GWYYaUOsWUfOEHX
         hTRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2ILpFquFz1kaeUGIF0cAd5YUWu+FochPX7POj/rCiG8=;
        b=FGV9JerZs7Voif1rNcEjZq6AmLQdgH2OK5nzAHOKAY4vwIjep7C+KPMvac6PXecXof
         +wruY+0Ml9Jcc4WBxnd6Vmxg2O6tftBBKE/r+lyuDj4Kvea9oPaiJJT/g6GX8EMi02mL
         S7j7XkMkCAmrygOQTN4MLQ9GoD+T+fsTzGCqK/hXCsxzJpmWiO4yu/+KcexgSP3ajDOV
         KDL78a1FNCT9KfWJzbH059uhaa6hTSTpopEOTO52ISNuO1h+jAJqOh2e1jzWMzK8gpzO
         kUk7svZJr7MihwlldZ+2cMP8tccwlG5kcRZX6fYLwlbxZmpnaJhIw0xS8BaR5XEnvqwC
         G8cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FmETVh2u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ILpFquFz1kaeUGIF0cAd5YUWu+FochPX7POj/rCiG8=;
        b=gdf3SnzOOJaHaOJXRg2npLayw75qmtAG5UpviRulth7ITD/Q6momxqKi6P+YLq9HSz
         HQRilcZy7o3OEpajDKSqveVNZIFSzNHWwbTBHqLcO8ZVRuSmYWnMQDLeVRvaX0xedw1s
         YubgXiK17cXPbmgr/1yN/pl0FOuDE4f1JSuVQeZSQmMaYFmuJ5cvRrg9GEqn1z2VPXo7
         +tEurKTwDktMIR8KN8PMHnrPc4xysLGrtgmdguFmmc41we/4slw9ImrRD0kXrpjwSbry
         wCFLuBtCURyWOJWlYxdgvUHV9xapCWgXJ4dSXDTJroM1U5VVFlt6XLdbV8R01S0Gm8+9
         mwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ILpFquFz1kaeUGIF0cAd5YUWu+FochPX7POj/rCiG8=;
        b=JVx/P/oDtm80wJ1Z0LIyZYMB4TDx7ZqH/BEVviyNOnSHn4Gz5L4prajU7OOiIZl940
         7biwLfkruHu7SCQAhhxIk8Iw10fQqRZeWjCXU0BVjB3Ug8dUZBak5PHlJjhpRXR6pUgM
         mcHeGya4+FESlaF/LJNwS+wxqZlkwEAL8hCUsxMOKOVgkqHXHOQvrkKJaZtr61h/nDrn
         sVNbg5yNM+MM4eaf+xmJJ4NC0C3OAylCl6pqVlLtO0a5WDu8c3SyT3uiFAFjRxOyRRbz
         OR9kFtHFEBJQKKASWznvjco3g1QZI5+C+v5ph17pO48gHvP0QP67pWv3enzfEujWoIeu
         3FZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUD50+Ns2dZXag8nyy0lyth/lKi6uP60AUWdwozOkZSSUoG4HOa
	zGqbLWGRoWHjPHxL9CfqWuk=
X-Google-Smtp-Source: APXvYqxwyvv39FP22RI5goeBl/6/5RVK3BjKvTluuDlyeXI/Q3SaFpAb1nAeqMjCt6hfVZk6VWZwtw==
X-Received: by 2002:a05:6102:8c:: with SMTP id t12mr32372832vsp.143.1563509095771;
        Thu, 18 Jul 2019 21:04:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c886:: with SMTP id v6ls3856720vsk.1.gmail; Thu, 18 Jul
 2019 21:04:55 -0700 (PDT)
X-Received: by 2002:a67:61c7:: with SMTP id v190mr30832361vsb.165.1563509095544;
        Thu, 18 Jul 2019 21:04:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509095; cv=none;
        d=google.com; s=arc-20160816;
        b=TrbVVWU6CMhjs7UefMYrcsbFV/96YtGBqtnEtKeg8GWjtDxs+7KOgsvfnSzYVrqFYH
         fkOmdtVbezvg6t9cK6Jm1j4HC0pgBYfaTbhQqB5b3y29h1mXJ72/RANfSf9HM0LyIBRC
         ed0zVfOrUvmsNxv3GcP6Uv0S9hV+eb9JOoPc64QXTFQeGxUMqnmH8viM7O1o3MilPG7c
         yYX/ejgxMkIvq2RggbEa7v2Vkq+xHw/DirYN0yjfaWazq5saK+rTgFocjMtzof8MZ36H
         FuSDS8yMaX6+SGFFa3uxdtuUY1Bg/2Sb6/9lR9dAuyZJHOSbzMSi6uezrmDV4cbdmsVA
         xqbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=G2uFb+9ZsfOukowsflQGQtrK3g/Q90BgJg/hw+gseBQ=;
        b=tc+aiyqk90EsnJrc/nZbk0777JXtk7IZwYjLasC7ijoe9JtIzNWwkdf+x32GbmiwDp
         2U2TVXeYQYKIA8Fhyo7tXHJgIhogPry3eUIpE7f9HvJm7a7g+8rCGVrvU2wX69lsXRFn
         ku01kSZl8XzX4z0lcHeSSGJRvCRp5ZJA9xuN1QBfmOh2w/4fvg8VQCKegagQqSp+4apq
         Iiz4axrBE2TG3PrsSd4M0oZZnB6fvISz5j6uGnSESwWd78g4McgYJ4o3hDfiPetIEX5X
         cmY5VAImsv/5zDrdiyz5rZI+TKW0HPLxt3Cf+/tZZX3RVu+0Xoc1OteOm5BiHk6QcStF
         SooA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FmETVh2u;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k125si1645643vkh.4.2019.07.18.21.04.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6AC8B218BC;
	Fri, 19 Jul 2019 04:04:53 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.1 065/141] kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS
Date: Fri, 19 Jul 2019 00:01:30 -0400
Message-Id: <20190719040246.15945-65-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FmETVh2u;       spf=pass
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
index 01a0a61f86e7..14dd893e929a 100644
--- a/Makefile
+++ b/Makefile
@@ -514,6 +514,7 @@ ifneq ($(GCC_TOOLCHAIN),)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040246.15945-65-sashal%40kernel.org.
