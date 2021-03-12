Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXH6VKBAMGQEFPSL66Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id CA063338302
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 02:09:49 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id r18sf7589573pjz.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 17:09:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615511388; cv=pass;
        d=google.com; s=arc-20160816;
        b=CHsvCKmF2SDTYGIvlUWBsxW3kQJJwz6haWVUODumr3f/Szz7peGRCrpmkpwVOcnwbV
         LF5EutK1LNDeNBh8EirCntikgBc4Qeevmewqp/kqQ/GUvahcXRzYuf0K6daVK5IP8lFX
         l5dXvnbUav+jHfa4wvnXzIV3bPKdbGzbUJsQsmm+NjijDRc7sJTpKlc+mxdq1sC8ui1w
         4YQV6/fbwHjX9UZUlXHzkSS8cipKV3BCE/tSYZYikPOdJCY+/4GIvzTzntNlxcP52X2t
         ZvBVU+hMrtrRQ84M+G3SmbPtuNeRr7nObUheaJSSg/h7xzUPOeB+SXBI312JX1T5Y+/x
         g7NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=u+qkfV+ZNVkk1rg3RHLWmRfOouOC2HWlyWhjMySnugA=;
        b=N9bwEaL5DlVigkBCFgXXq50mInhyN1oaysEssJLV1pOB0BlN1vGYgUAy8gqLk+4k68
         TCJY/OQCrglIwPY+8RvMXf8ryRT0CHaTaN5pSJZaO+Rdncrmg1XrHBXPg2a08gVTpASU
         NHkdWDtcBuolAuM8H81sRic+55Gt8krVSFfjtwHVBIHjoGvqX4OIbUx72GvDpD2akYPP
         c45mheAFUr+hiu/tnpCz1zyihjEWKOPw0Sd/8GQ4yfLa0ywCtz2hJAhT9EYE3WlRWEeY
         4N+dwxr6occ0BKmLb2jDQLnzjlb2hJ2uTXH6fwglvTZsaDVey2Rcqs2HhpkQz9Js7ZUx
         9ZzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ro7zBPpx;
       spf=pass (google.com: domain of 3w79kyawkaa41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3W79KYAwKAA41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=u+qkfV+ZNVkk1rg3RHLWmRfOouOC2HWlyWhjMySnugA=;
        b=P4m6akTCRwSFfsKVFk2rPfLq8adPL33E5JnXTZC6DJF7JlbphBcztTV4RpSkanRFyx
         EllXVLZCblfBL/UmGRFYcpnYG0SBfjKpCJBXlZ7hS4evaC77wWmt8YHU8DFHAI/jXCva
         /xf2XXBcqaQcoD/EylEIP85LSS59t2IAWAhheE1uaqFwl60y1HWgjNoSjSPyk3iklClA
         v3kAyxyw5nZwobbeNcT4NcVXDP0woZvXGPt29q1KV2h6jgjGgqE0thgNlzOFrrZdknPy
         EM5+R2DEjN/FCtiybsndxuFXrBhODqne/DEVnuEJO+jU9bi1kiOIL1fhEc/IFgx5rgKQ
         Z8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u+qkfV+ZNVkk1rg3RHLWmRfOouOC2HWlyWhjMySnugA=;
        b=TryQMS7KqjLk5SvOdI/Wgg7RcPYsa/oNH63zJq4N880cyfVRahJFBAywvrWoWl+wMP
         eTCLgr+zxkUnfAo6vPm7w1SHi1gwgIFm98UuDDK0LA3Vi1SlzAEyzlqgtv7fdy0k4A0R
         VlUGbbUdHMrn5Z8FdX5iqiWfZW/7m7NZWFgi2QRFKgTs7HkORYoej317ReOh/LRJvQKD
         FQKwtiYv9LEWalTlabgusfj2nTvaYRniM43ETE80AOaaIseWo5NyAem75NUd+uGKFvbM
         Ww4zbFHl/Dlo8Yj0AQXxeOUE9+Ulw9W7lpkxDffpajVnQIxdl9unreDvv9W53hLiLSrv
         /Hjw==
X-Gm-Message-State: AOAM533i7MO8Xz8rp+S7bK7uyywN27nriVR+fTEhn12336g/YCKLaQu1
	0NgNHTKJ5kmOqGkcgDQ5nLg=
X-Google-Smtp-Source: ABdhPJzwtDrsby9KSanu/zNmsViPt5Yivw2TTRCNigXygPE7vAFArn+T9IrwWYynrHfgWK7e6aPKOw==
X-Received: by 2002:a17:90a:7847:: with SMTP id y7mr11904311pjl.65.1615511388559;
        Thu, 11 Mar 2021 17:09:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4115:: with SMTP id r21ls4037095pld.1.gmail; Thu, 11
 Mar 2021 17:09:48 -0800 (PST)
X-Received: by 2002:a17:90a:bf15:: with SMTP id c21mr11466883pjs.160.1615511387956;
        Thu, 11 Mar 2021 17:09:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615511387; cv=none;
        d=google.com; s=arc-20160816;
        b=bp4tsmz/bzNH4Q/Y5ti0hMCmJhGj1S2yN+WOGcOgonEqVVIgOQKvVQzLRqgLqDZWQ5
         SLk+8hBBKGZAnJrJU8iCJ0xlcVhi0o1qWiRVbxoNCxZlXN/xdX3LGZzVkvgd+MNcOU23
         XyznAA6yMC9EqcpS0kzCX6OrERq5XXq7dSyKqBGCdPM+iZ6YTowY4sGmj92lrrOJguRW
         uqlYZxxUeweMwgyON4v8JT14ld2EMLUBnLfrgzl+TkhheDjZHPVVvKtmgleyQgOYi2N1
         /5wEMLlQHHGwW8hspEmP+Mk7L0JcCmEwrcEO6cLA2Bf8hQT/ngR6MnWADyQf0T7UJtht
         gLFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=n+xPhT43NmscUpw6p+xSEcR+gcJnv0oKtggQXvDZY6A=;
        b=sHTHyU9O2jkcNP4YBicN8LTvPMAPNdpNvmvPabNMf4BuKHAH5hhSnpKyhGjSLQIa1/
         IVkDabCbHqRcD0D2Fmp1WZiNcBMPywWFfDFYMJML+o833pDxyHEXSV0Ct1zGkhAYFm/u
         5hB0YckY5VV8wQjvfP/7mIPxeExoBm+tYKOp/IyOkSWqQmUSkkbGpqEMiWBHe5luEG7P
         cpXTaWj2IKoArxGZ5Wp+cjhrMgOdJ2MhFagcxdvKeLFB9UKh4R77AwTwA+9SmYiayNA5
         lqGwMwtmDkacyJ8UbEKBj4zJ+V+9Exp0e/mi181kmyLH9mkDY3E6g14H7S6efU4c8xKt
         ORKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ro7zBPpx;
       spf=pass (google.com: domain of 3w79kyawkaa41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3W79KYAwKAA41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id h7si334289plr.3.2021.03.11.17.09.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 17:09:47 -0800 (PST)
Received-SPF: pass (google.com: domain of 3w79kyawkaa41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id iy2so16445832qvb.22
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 17:09:47 -0800 (PST)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:9c6c:84f8:2058:5b95])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:10e7:: with SMTP id
 q7mr10184252qvt.16.1615511387105; Thu, 11 Mar 2021 17:09:47 -0800 (PST)
Date: Thu, 11 Mar 2021 17:09:41 -0800
Message-Id: <20210312010942.1546679-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Candle Sun <candlesea@gmail.com>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ro7zBPpx;       spf=pass
 (google.com: domain of 3w79kyawkaa41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3W79KYAwKAA41rs6o8z1ws56u22uzs.q20@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

-Wframe-larger-than= requires stack frame information, which the
frontend cannot provide. This diagnostic is emitted late during
compilation once stack frame size is available.

When building with LTO, the frontend simply lowers C to LLVM IR and does
not have stack frame information, so it cannot emit this diagnostic.
When the linker drives LTO, it restarts optimizations and lowers LLVM IR
to object code. At that point, it has stack frame information but
doesn't know to check for a specific max stack frame size.

I consider this a bug in LLVM that we need to fix. There are some
details we're working out related to LTO such as which value to use when
there are multiple different values specified per TU, or how to
propagate these to compiler synthesized routines properly, if at all.

Until it's fixed, ensure we don't miss these. At that point we can wrap
this in a compiler version guard or revert this based on the minimum
support version of Clang.

The error message is not generated during link:
  LTO     vmlinux.o
ld.lld: warning: stack size limit exceeded (8224) in foobarbaz

Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Candle Sun <candlesea@gmail.com>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
LTO users might want to `make clean` or `rm -rf .thinlto-cache` to test
this.

 Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Makefile b/Makefile
index f9b54da2fca0..74566b1417b8 100644
--- a/Makefile
+++ b/Makefile
@@ -910,6 +910,11 @@ CC_FLAGS_LTO	+= -fvisibility=hidden
 
 # Limit inlining across translation units to reduce binary size
 KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
+
+# Check for frame size exceeding threshold during prolog/epilog insertion.
+ifneq ($(CONFIG_FRAME_WARN),0)
+KBUILD_LDFLAGS	+= -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
+endif
 endif
 
 ifdef CONFIG_LTO
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312010942.1546679-1-ndesaulniers%40google.com.
