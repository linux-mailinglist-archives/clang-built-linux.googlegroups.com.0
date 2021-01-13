Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOUF7X7QKGQEJCBHMHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4A02F52DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 19:58:03 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id g5sf2166155qke.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 10:58:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610564282; cv=pass;
        d=google.com; s=arc-20160816;
        b=flIt2nIlA7pbB+lo7Xx8pr/NXiUbXl/RUUa023GBRlTBEONYVJtjW4jVYgsVgwrIpR
         NZWlKDk3PzZT4WZNqAQALrqQ+e57Lub+FLSOBnB+hc5E8vnT5kk6YDCTD+uMNzyuzjm5
         jBNSPoZCRXz7wTnSwinjRuYiOxKgUZJLDBcb2vG3UfPMZ3Xpv14LHQApxg4Bsbb91arE
         Q2Duqq7By/0o6E2XTaE9FbhcfRT4CufHA46IERqpbHq/ZQ46fAqIQrxJYt7gTS6hOAXq
         K0KUDAmtLO+vG97uRLRLght5Oxw9YboBEYs9Ug0oCUoHVWZGzG07rtufuH+3GFXKmR8k
         W5Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature:dkim-signature;
        bh=EXIb9s+p/QkTkQYCeuI+C0o+MelcZWwQCbMiroud6hs=;
        b=P/wIfn1u3g02ZlvouxDJhvBT4fz6pAaY5zn0GNXa2QsTTGtBBK1f3a7l0N/+SFLkhO
         wcxOlv9oarGxPhiLV39EYoNUv6h4e6eUgByO664Hg3ogB8t1lYvD7Xt46XX9TT2onyjk
         LXQLtzPgaeQQpeVusAJDhpalNHSqp4+/SbudpiIaq2wPdmR1BcySDG2BMT9ZI8xYHhHN
         puc0VLl1SQoa0zZskUrCe85wKEum5njanjtA0pH1eZ6kOmO97eHE/GYigPSGI5Gtc7sU
         LcRG8MOTGlmHUeJkXwshfbQA07tK4IuC92tRwemZRSqPpo7OEFsC9Zw4337HNX4Bc4Qu
         FfSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vAv17m/Z";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EXIb9s+p/QkTkQYCeuI+C0o+MelcZWwQCbMiroud6hs=;
        b=HLA8kYj8TQ/8kZTlXumbg6cFMDeSh1PijPw1yG/7s55XTuSRstLsJTggQy/WvC4XXL
         8dMtzAQDKKO2OaZsXxcQR86tx+9h7Fq+YHXkqsx/jGmjSmqSF5+eRpY3ak8mvpUkiZde
         aoaHVtOz0OuueAfY9TMcRgZq/Ic0+vKS95SlOI2QmOY6aDJlHfzQ5+HGd+2A2mbi4kl3
         Ya1dYiAz2UQbb+qi5fk2lDVYLGwEz/BomZnjXUgOnJ0RAKNhjwlhCDfPywJkDg74m8fF
         aEuwyQVILyic3yPto5dKoIWzC/+DjjCL3MDI3YHNd/OgYGIFKhWV6N2lfjbYgyVvL6jU
         86+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EXIb9s+p/QkTkQYCeuI+C0o+MelcZWwQCbMiroud6hs=;
        b=i+lBz6pYErB0FMbqF8euXwqd/WOusT/4rBgBgC7Spev18xolZNQpIIJNCZgl5OaZDw
         l3hkvj2t59NryBfCX3duYnuleyfTBLxv3HKC8yIMBpJEN8QPjrxZF7IOnEiS6Ir+MQoJ
         gAszxEy8n8rj5hJBKHKFjH4dHhpRhHxXemoroc82+wZsosW4+7vCxAoFDYTnQB2yz9Xo
         jQ0HDCMAwDh+FfLdgXP1jhH06FLgIasjkQhdsDztMKUonvlFYekntq4wRe8ePXr3rD+F
         DAjDrO1wbaQ58/kVK3ZJEvNMv5WkXsu0NMsyx3QwCs9aDvxIc+SG09MaS+I5vS8Icb/+
         C0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EXIb9s+p/QkTkQYCeuI+C0o+MelcZWwQCbMiroud6hs=;
        b=NOHAwRJMx/5kTWVy/hkGfOwh9466nd27O2uU/xc3IMhBAZMEN5ulKC1S0ueyO9fwxy
         MgyInEFyp1nazZsd1DKzzVzshGyXJq5iEBOYBHVXlJBOTRFnCSS9NeLnnEmVd6KJXsIT
         RoFBBA615nZ9ulcMLorQlR7eOXbg3vd0I0OEkHvfLP8N+mWGM4U2J6M8zknTlcTEsd5O
         xkr3NZ+KYEk5C1eMneLklrOvpgSmAxr44bOtk8Zm1dLfJQCSJlEliJUFA24zloVB3lP/
         vuk1iyX5tDEw1GV1pdW+gtyKvAhNPE96MeyFTantNP+u7nW7/hIiv5aJ3pWrL7nGl9c3
         t8BA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bJJ9W9k/ascB6ZCmGBRoYp3PidKJT4QlxqlwFg6Ux8xHdO0nE
	O7P59e9mCaemr8KT6WmFh5M=
X-Google-Smtp-Source: ABdhPJwbQXQ7oxw6o8THqgpVTdkdZX5qMuwNxgLbDehcFKbRZfCjgEJiT+FFL2dok5H4H/sRUSbG3Q==
X-Received: by 2002:a5b:b0f:: with SMTP id z15mr5455536ybp.296.1610564282171;
        Wed, 13 Jan 2021 10:58:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls1462105ybc.0.gmail; Wed, 13 Jan
 2021 10:58:01 -0800 (PST)
X-Received: by 2002:a25:107:: with SMTP id 7mr5271932ybb.337.1610564281795;
        Wed, 13 Jan 2021 10:58:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610564281; cv=none;
        d=google.com; s=arc-20160816;
        b=1BWSKdLrWaTiepYsZ7/lf1l9SrzIhUeezp9NsBQdsVCEhuCvW2lOPNCWRGXIIVEUlt
         CiK0j5mtav9a90cj//r6bveOUlWXpKQAmA93NrotQaB0ziVXpyeIQkNaJpBzJZVIScgi
         ctqXlCRW2TyW3qVa759/ED3RuG5DkTFF7DtAqZ5iCrE22Cdwsu/7jZ93ixywUv1rJsN0
         xPwgjj5ZPgOCgCT4HoB1SJ0OfwYDuxmsmEZniTPp8b9Ayw7jwsX5vcCP0rEXaG5vpIcP
         01yuqM8vD+MSl1MpAzrPspTEUVpNNRZkG1Gdsuqr2oViugsOJwFImRKTMsvnzVJHVijx
         5ejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R0vScRcOj6vqLz9Se5XHhEJNF1iBeKmfvbbQWWzvk5w=;
        b=VeoAYlcTDtK5F2+xN7+G6d9jxNC40E+oLREzDPqL1VkVtaEEbijlA+XQRWkseDbqnq
         3pGpoOnljeZUXPRGSQ+eD/l5iX2aHuJwLOkYsn9wVWZXDQium0tCKDA7ggBA7DqQEMj9
         PQcS0Ukw0F8+FPSSDkkYmGRF4tE2mxnSQENNKNZeyfCcXqejlohanVtE+RhX4OiFp31/
         fCZ8tbc+s/TAji2LweppzbcQ6rvDBj4SMmh2euRethFP2VO64aSs4T4VY2BAVXv738xk
         BATf+HQIDt1sYrAJ24Fvomb7aiZ8CtWMPewhj2CEhAc1L1TtutXFdwmcENCBI9bmFDC7
         PuEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="vAv17m/Z";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id i70si204363ybg.1.2021.01.13.10.58.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 10:58:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Received: by mail-qt1-x831.google.com with SMTP id g24so1836294qtq.12
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 10:58:01 -0800 (PST)
X-Received: by 2002:ac8:5ed5:: with SMTP id s21mr3788852qtx.114.1610564281441;
        Wed, 13 Jan 2021 10:58:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 16sm1561466qkf.112.2021.01.13.10.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 10:58:00 -0800 (PST)
Date: Wed, 13 Jan 2021 11:57:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Backports of eff8728fe69880d3f7983bec3fb6cea4c306261f for 4.4 to 5.4
Message-ID: <20210113185758.GA571703@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="vAv17m/Z";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Greg and Sasha,

Please apply the attached backports of commit
eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections") to
4.4 through 5.4. I tried to make the file names obvious. This fixes a
boot failure on ARCH=arm with LLVM 12.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113185758.GA571703%40ubuntu-m3-large-x86.

--G4iJoqBmSsgzjUCe
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="eff8728fe6988-5.4-4.14.patch"
Content-Transfer-Encoding: 8bit

From 6afd4a462594ea24bb602350cd95b4b00a2d8f5b Mon Sep 17 00:00:00 2001
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Aug 2020 12:42:47 -0700
Subject: [PATCH 5.4 to 4.14] vmlinux.lds.h: Add PGO and AutoFDO input sections
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

commit eff8728fe69880d3f7983bec3fb6cea4c306261f upstream.

Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.

When compiling with profiling information (collected via PGO
instrumentations or AutoFDO sampling), Clang will separate code into
.text.hot, .text.unlikely, or .text.unknown sections based on profiling
information. After D79600 (clang-11), these sections will have a
trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..

When using -ffunction-sections together with profiling infomation,
either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
sections following the convention:
.text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
where <foo>, <bar>, and <baz> are functions.  (This produces one section
per function; we generally try to merge these all back via linker script
so that we don't have 50k sections).

For the above cases, we need to teach our linker scripts that such
sections might exist and that we'd explicitly like them grouped
together, otherwise we can wind up with code outside of the
_stext/_etext boundaries that might not be mapped properly for some
architectures, resulting in boot failures.

If the linker script is not told about possible input sections, then
where the section is placed as output is a heuristic-laiden mess that's
non-portable between linkers (ie. BFD and LLD), and has resulted in many
hard to debug bugs.  Kees Cook is working on cleaning this up by adding
--orphan-handling=warn linker flag used in ARCH=powerpc to additional
architectures. In the case of linker scripts, borrowing from the Zen of
Python: explicit is better than implicit.

Also, ld.bfd's internal linker script considers .text.hot AND
.text.hot.* to be part of .text, as well as .text.unlikely and
.text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
see Clang producing such code in our kernel builds, but I see code in
LLVM that can produce such section names if profiling information is
missing. That may point to a larger issue with generating or collecting
profiles, but I would much rather be safe and explicit than have to
debug yet another issue related to orphan section placement.

Reported-by: Jian Cai <jiancai@google.com>
Suggested-by: Fāng-ruì Sòng <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
Cc: linux-arch@vger.kernel.org
Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=add44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=1de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084760
Link: https://lore.kernel.org/r/20200821194310.3089815-7-keescook@chromium.org

Debugged-by: Luis Lozano <llozano@google.com>
[nc: Resolve small conflict due to lack of NOINSTR_TEXT]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e5e242587595..130f16cc0b86 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -520,7 +520,10 @@
  */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
+		*(.text.hot .text.hot.*)				\
+		*(TEXT_MAIN .text.fixup)				\
+		*(.text.unlikely .text.unlikely.*)			\
+		*(.text.unknown .text.unknown.*)			\
 		*(.text..refcount)					\
 		*(.ref.text)						\
 	MEM_KEEP(init.text*)						\
-- 
2.30.0


--G4iJoqBmSsgzjUCe
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="eff8728fe6988-4.9.patch"
Content-Transfer-Encoding: 8bit

From a017289ff8851b0b219b9b9d755685043ef4e5e3 Mon Sep 17 00:00:00 2001
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Aug 2020 12:42:47 -0700
Subject: [PATCH 4.9] vmlinux.lds.h: Add PGO and AutoFDO input sections
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

commit eff8728fe69880d3f7983bec3fb6cea4c306261f upstream.

Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.

When compiling with profiling information (collected via PGO
instrumentations or AutoFDO sampling), Clang will separate code into
.text.hot, .text.unlikely, or .text.unknown sections based on profiling
information. After D79600 (clang-11), these sections will have a
trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..

When using -ffunction-sections together with profiling infomation,
either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
sections following the convention:
.text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
where <foo>, <bar>, and <baz> are functions.  (This produces one section
per function; we generally try to merge these all back via linker script
so that we don't have 50k sections).

For the above cases, we need to teach our linker scripts that such
sections might exist and that we'd explicitly like them grouped
together, otherwise we can wind up with code outside of the
_stext/_etext boundaries that might not be mapped properly for some
architectures, resulting in boot failures.

If the linker script is not told about possible input sections, then
where the section is placed as output is a heuristic-laiden mess that's
non-portable between linkers (ie. BFD and LLD), and has resulted in many
hard to debug bugs.  Kees Cook is working on cleaning this up by adding
--orphan-handling=warn linker flag used in ARCH=powerpc to additional
architectures. In the case of linker scripts, borrowing from the Zen of
Python: explicit is better than implicit.

Also, ld.bfd's internal linker script considers .text.hot AND
.text.hot.* to be part of .text, as well as .text.unlikely and
.text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
see Clang producing such code in our kernel builds, but I see code in
LLVM that can produce such section names if profiling information is
missing. That may point to a larger issue with generating or collecting
profiles, but I would much rather be safe and explicit than have to
debug yet another issue related to orphan section placement.

Reported-by: Jian Cai <jiancai@google.com>
Suggested-by: Fāng-ruì Sòng <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
Cc: linux-arch@vger.kernel.org
Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=add44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=1de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084760
Link: https://lore.kernel.org/r/20200821194310.3089815-7-keescook@chromium.org

Debugged-by: Luis Lozano <llozano@google.com>
[nc: Fix small conflict around lack of NOINSTR_TEXT and .text..refcount]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 4fdb1d984844..36198563fb8b 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -460,7 +460,10 @@
  */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
+		*(.text.hot .text.hot.*)				\
+		*(TEXT_MAIN .text.fixup)				\
+		*(.text.unlikely .text.unlikely.*)			\
+		*(.text.unknown .text.unknown.*)			\
 		*(.ref.text)						\
 	MEM_KEEP(init.text)						\
 	MEM_KEEP(exit.text)						\
-- 
2.30.0


--G4iJoqBmSsgzjUCe
Content-Type: text/x-diff; charset=utf-8
Content-Disposition: attachment; filename="eff8728fe6988-4.4.patch"
Content-Transfer-Encoding: 8bit

From 43398bda7eafc0c5a79fbf9dfd593f106fd7f013 Mon Sep 17 00:00:00 2001
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Aug 2020 12:42:47 -0700
Subject: [PATCH 4.4] vmlinux.lds.h: Add PGO and AutoFDO input sections
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

commit eff8728fe69880d3f7983bec3fb6cea4c306261f upstream.

Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.

When compiling with profiling information (collected via PGO
instrumentations or AutoFDO sampling), Clang will separate code into
.text.hot, .text.unlikely, or .text.unknown sections based on profiling
information. After D79600 (clang-11), these sections will have a
trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..

When using -ffunction-sections together with profiling infomation,
either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
sections following the convention:
.text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
where <foo>, <bar>, and <baz> are functions.  (This produces one section
per function; we generally try to merge these all back via linker script
so that we don't have 50k sections).

For the above cases, we need to teach our linker scripts that such
sections might exist and that we'd explicitly like them grouped
together, otherwise we can wind up with code outside of the
_stext/_etext boundaries that might not be mapped properly for some
architectures, resulting in boot failures.

If the linker script is not told about possible input sections, then
where the section is placed as output is a heuristic-laiden mess that's
non-portable between linkers (ie. BFD and LLD), and has resulted in many
hard to debug bugs.  Kees Cook is working on cleaning this up by adding
--orphan-handling=warn linker flag used in ARCH=powerpc to additional
architectures. In the case of linker scripts, borrowing from the Zen of
Python: explicit is better than implicit.

Also, ld.bfd's internal linker script considers .text.hot AND
.text.hot.* to be part of .text, as well as .text.unlikely and
.text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
see Clang producing such code in our kernel builds, but I see code in
LLVM that can produce such section names if profiling information is
missing. That may point to a larger issue with generating or collecting
profiles, but I would much rather be safe and explicit than have to
debug yet another issue related to orphan section placement.

Reported-by: Jian Cai <jiancai@google.com>
Suggested-by: Fāng-ruì Sòng <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
Cc: linux-arch@vger.kernel.org
Cc: stable@vger.kernel.org
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=add44f8d5c5c05e08b11e033127a744d61c26aee
Link: https://sourceware.org/git/?p=binutils-gdb.git;a=commitdiff;h=1de778ed23ce7492c523d5850c6c6dbb34152655
Link: https://reviews.llvm.org/D79600
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084760
Link: https://lore.kernel.org/r/20200821194310.3089815-7-keescook@chromium.org

Debugged-by: Luis Lozano <llozano@google.com>
[nc: Fix conflicts around lack of TEXT_MAIN, NOINSTR_TEXT, and
     .text..refcount]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index a461b6604fd9..c8535bc1826f 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -422,7 +422,10 @@
  * during second ld run in second ld pass when generating System.map */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot .text .text.fixup .text.unlikely)		\
+		*(.text.hot .text.hot.*)				\
+		*(.text .text.fixup)					\
+		*(.text.unlikely .text.unlikely.*)			\
+		*(.text.unknown .text.unknown.*)			\
 		*(.ref.text)						\
 	MEM_KEEP(init.text)						\
 	MEM_KEEP(exit.text)						\
-- 
2.30.0


--G4iJoqBmSsgzjUCe--
