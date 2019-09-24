Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6UPVHWAKGQEKR4EKIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF7EBCD04
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:44:43 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id p83sf1988150ybg.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343483; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlHvf0mrcRdGRHrZdtDSEQxC9vQFEw0WL8GDWcTTWg3KxtRUKa0DiviE9qJQUxkOrg
         45NgG0agk+LTI5SNmiF8jgY7jCCif5LOdBW8U0NxOfJKCHtryqPX9rneM68pcsUFydWT
         WSNcXx48+RHkPR8NwEapNCd+iC0hECsmVd+C7etbErsvLcQzmme/Pb6zL0HZhqwUGfQN
         gKmLteUwbZKslxSfFsNAkOhb5WOLZJ1Kc+Amd60S2WVJn14sbT0oU4uoQqoR40k9nMSF
         jiCKzjnrCeO5U70H+cI9U0hp1vGwcD3BogmTRF2vi6dz1bH3t6dnJBWKlA/tRGb9co3C
         MR+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oBeWqa195SIZx3F7jsYgiW3BgMhXpAZ/Ilzf1nB0ujE=;
        b=SNYBx6goYKQhkX4n4gjfR1Q+FCzi9UC/YQBfnaHZJ2ENMz5ACzTLpRqbDNrs6ZK5YE
         5v8x6mqc6cDNc/cVmLBLe81to04Hj8W6WY9+3NpfjqNeRBCX6JlPDkOq/ZauL3ZDzy97
         9tZ2QlvDaVREOcJrtYHhZ1Jk1+wOl2NafJYPq70UYuKX+UNoSHuL/eVAe0lCI+FG2hxL
         qQ04igr38n7QWO0hlM2X5x7tTqfXxCAYJdXRa9kdoLefpAzgpZIcuq8KqLpm4QKSZMSq
         CW2u4jAEAiEb6hH5iUXre/mDnL9oGV3+aQnSaPDhAk0HJTDphcmYK6EX47EzDbCY1C84
         7r4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X5I3YHyp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oBeWqa195SIZx3F7jsYgiW3BgMhXpAZ/Ilzf1nB0ujE=;
        b=hy+lOxpNRMcF5sf+plKUXhkyD2g7vE8W1Y3f6d+AQrFQ2dHCL5rgtksn5AL3fDvYNk
         Zn9nYnYv4YLFkPiM3sGcDyr9jtvPGjDpu/3EV2W+5uqDs8uqSzVDtk2MNNw+3II4FrUE
         pa5DkjprNt1Oo/ydwzWmm5uZ4EojqHcHOelTkwKtcgqTTZ6382AdkFMfgI4b84ozFlA9
         n+nAIN8KuRyubrL3tEPlvi77KbTCFQx2GTACEwI3f1titjjdzvK6YICgrxJ465aACG4e
         TbYs3DHShjiyPdLcCBeYTE0ksHc1gv+QywUvaQwKtTD6YZNBcl4mnnhYwV2C633GFEUD
         2HfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oBeWqa195SIZx3F7jsYgiW3BgMhXpAZ/Ilzf1nB0ujE=;
        b=mMy6ESUN2+k85BZHAFbfafvcqEUGpsFSmKTDToWu41IaYmF1lmO9Fj7G5XidrDkjGG
         bpBDLjAyb4YwOyCcWUyd0MGZh1WXNL0wseSV0cyO/L2nqUYQv5CfUJgZFgqN2SIUq1/T
         QTNUoLWUBn/IgM4sKYEgMd6A/HpGRSeg3gU3zCeetEdueH8SYDgH/1eyZpLsQJxLCByq
         mMJndo5WGjDH3Tsa933sjQjCuMOiQ41WpEgrlphrFu3N2uPM5kC1Be5TNKDIcNyY2Xua
         SpHCKLMWO3q6LL7fuK20MGzjSvMRqv6yH15FwAoWDLGkVyIL/WPFgseA4dzxUPb5X1nN
         LQiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMwr/zn0cciz+W5o6wtqcaQpoxAx37/gSj8wJoLm2gkFkpEwHK
	YyW1rCoW6xk0cyPKSesLi0c=
X-Google-Smtp-Source: APXvYqxXGRvkpYtivy+X5lbSz+tl4Nggyx8HeYmPHRQwqLGdxRmNOU5XbSlHDonWSKYrFLIWwQQr8A==
X-Received: by 2002:a25:becb:: with SMTP id k11mr2805559ybm.92.1569343482983;
        Tue, 24 Sep 2019 09:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa61:: with SMTP id s88ls441672ybi.8.gmail; Tue, 24 Sep
 2019 09:44:42 -0700 (PDT)
X-Received: by 2002:a25:bc43:: with SMTP id d3mr2916572ybk.348.1569343482543;
        Tue, 24 Sep 2019 09:44:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343482; cv=none;
        d=google.com; s=arc-20160816;
        b=wjNgL3OldhhvJ3RmQBdgsqFFyFwqIfcAPnC1rXboKWgy7yIQHOQElkLShM82d9NXT2
         VxvxZo8YKlkG8P/7qJU3wnvM0c/VJ2ddcOPvq0iLrrpHg13umC1gSrmIMeXRq48H7cYB
         nh+grMJ3a+nLhb/AdnqdEuYWZBmHFnQwZRgGY8fLVYfIqNAcyc5JZX9ZkvmMK2Mx6SBq
         JLJ3YDecPd6aJKf7s72NMHcIl22QBxpjbT2RVJpClRyf5o7sPuxp7PBPpfZ3qFChhk4y
         sKlKEqe0ZTI7KbQwkHN0jTtbgGxwjA5+rfOnKFFQsVO1KoheTfQolHWz8qyjOU+cB47O
         b7Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W9srN0GjCRPS8lIGymdzFEZc3K7LR36Ik4nDNJnKa6E=;
        b=kiDI7s+jHR/s+dzPxJ54hmsLzvUUO8FuudhokFQm1ayQmbbqh7uJBf1int8o1gOwjM
         aaegHu/h4NNUNpIVZf3Mz9lt3f1Pfmydm50ct+FD9B+7bABTzchGiBU9Er8Ov7GjpUEu
         ZCM28QYYWqk7pgw93wTltRfBQyr6VSg3YzsEqiQ4GGqvdDr6lLaM2VzI0rJE1Fm5zg0q
         yRLvJPQbLFg4GLlI9wmU4udGpjKXmpRmrT1dxxzP8SIerBYJ/oxAwERaARTMPT5WpXzg
         KLjJ0Co4umZ0JZwz9/jkDnauTdKYt9Ezxl92gmtaKwgfI5eWRG4RRJ2C1jR2jqYW4Bxc
         UqtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X5I3YHyp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j82si141145ybj.1.2019.09.24.09.44.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DF42B21841;
	Tue, 24 Sep 2019 16:44:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 64/87] kbuild: Do not enable -Wimplicit-fallthrough for clang for now
Date: Tue, 24 Sep 2019 12:41:20 -0400
Message-Id: <20190924164144.25591-64-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164144.25591-1-sashal@kernel.org>
References: <20190924164144.25591-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=X5I3YHyp;       spf=pass
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

[ Upstream commit e2079e93f562c7f7a030eb7642017ee5eabaaa10 ]

This functionally reverts commit bfd77145f35c ("Makefile: Convert
-Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang").

clang enabled support for -Wimplicit-fallthrough in C in r369414 [1],
which causes a lot of warnings when building the kernel for two reasons:

1. Clang does not support the /* fall through */ comments. There seems
   to be a general consensus in the LLVM community that this is not
   something they want to support. Joe Perches wrote a script to convert
   all of the comments to a "fallthrough" keyword that will be added to
   compiler_attributes.h [2] [3], which catches the vast majority of the
   comments. There doesn't appear to be any consensus in the kernel
   community when to do this conversion.

2. Clang and GCC disagree about falling through to final case statements
   with no content or cases that simply break:

   https://godbolt.org/z/c8csDu

   This difference contributes at least 50 warnings in an allyesconfig
   build for x86, not considering other architectures. This difference
   will need to be discussed to see which compiler is right [4] [5].

[1]: https://github.com/llvm/llvm-project/commit/1e0affb6e564b7361b0aadb38805f26deff4ecfc
[2]: https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
[3]: https://lore.kernel.org/lkml/1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com/
[4]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
[5]: https://github.com/ClangBuiltLinux/linux/issues/636

Given these two problems need discussion and coordination, do not enable
-Wimplicit-fallthrough with clang right now. Add a comment to explain
what is going on as well. This commit should be reverted once these two
issues are fully flushed out and resolved.

Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index f32e8d2e09c36..23703ecb8fdd0 100644
--- a/Makefile
+++ b/Makefile
@@ -751,6 +751,11 @@ else
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += -Wno-unused-but-set-variable
+
+# Warn about unmarked fall-throughs in switch statement.
+# Disabled for clang while comment to attribute conversion happens and
+# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif
 
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
@@ -845,9 +850,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 # warn about C99 declaration after statement
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
-# Warn about unmarked fall-throughs in switch statement.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
-
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164144.25591-64-sashal%40kernel.org.
