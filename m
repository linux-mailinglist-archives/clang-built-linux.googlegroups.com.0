Return-Path: <clang-built-linux+bncBD66FMGZA4ILNCWVQUDBUBBASMQG4@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4913968AF
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 22:21:11 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id x10-20020a54400a0000b02901e9af7e39cbsf5772347oie.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 13:21:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622492470; cv=pass;
        d=google.com; s=arc-20160816;
        b=ddSnh3yUaHslu9vDhnDUFDO0461jFpayz9rEdpBobPHEgm0+SoH5zixvaM7WEWLfOR
         aMGJRRsTBM+ajz4l8kpbnFWB4SSXXDMhPu39Q0ebVQBtGElQrDiHE6GrFTvQMaC5UK2S
         S8wlnvU047b9i9Ofoos8I+h12p/+TvKeTTFJ1B1eil5rsVT+uWTmUaR7G3de0F5rA3lg
         5kQCXqP+i8kB0Am7vzalcM/Jh+0A3duf9FgxWjE0LdcQBsfLKu13rw9RwE76BmT5ciLl
         2PDhPr+6QC7SbJ5SmtIVJ1qolJZ3PW/0fj7fqw8IipNDfBYkbBdu2zZnhejVxTVq9GyZ
         IiTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=RI72uo/IRAHAcJ0RAakpcJZfqigcbExSWH+zNMet+28=;
        b=c81QEGR16qcrgsYO9Gwwy9GNKTjq8Q3z6KZAi2+YmSUt3M9wkqdJS7Y+3DrLVP5y3j
         HgIJxYl5bU005npn108tv/1u+aEiVaUn7nP5dV6EAsQoaTN+WeKzguuwaySn89U4C7Rk
         gRja/YkaTbDEdcjEJ2wzYL5iE9egHPvPcmy2umxptSkXVb+LmuxUWRy1geYOMWUMy9RK
         HKHPhO6+n6ZLxuRE4UmlElhFZ3UthdTsvv/dc/64ryEljauyXQsFqc1axtUJdsDptToJ
         Y526TFnDhFrQuaMxV5ptPX1A01GcvvIiGrimiEFHtEf8M1bwS/XBQVfrWCuoWwTf+kkS
         +q5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttaJS7nd;
       spf=pass (google.com: domain of 3nuw1yaukeaamorbogoogle.comclang-built-linuxgooglegroups.com@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NUW1YAUKEaAMORBOGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RI72uo/IRAHAcJ0RAakpcJZfqigcbExSWH+zNMet+28=;
        b=GXuj3rFef0Xh0bvjNR8jsnl0QXl6Xls7T5dD5PKxsm3taDNOv/o94ph0VGQ60lxx+b
         jZDcUzGl4Vio5eE1J2W7HJBxmgzYTeLDy4r51KIxv3qamnZKm+L5/+Fdd32yGli0jAAe
         QhHtDZr4zm9fW7yYpl/QzLMhBlAOMXB7uo1eQVnJvja90Ab0sZlhRD9qT+c+rkgavG1q
         x7+43IFhfQ0JNe0g3eeLCigcrj72yTB3xUkm0XnEfOMGU5M1TqqBO4hKZv+jcFOdWyqS
         6dFANRDMdr4txqakiD1zpDhPOArNK6pULHYEEPKyqOQLkG9/U5BFNIitUITCCq0Hu8LL
         1eXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RI72uo/IRAHAcJ0RAakpcJZfqigcbExSWH+zNMet+28=;
        b=E/s+Mq0ruGd6tWb6UgJWpvBUo1Y5fosgMlKwsqJ5HDylVxb40ilZNMYelCIfJJz6Av
         MJjfWsqXW4Gu75AjDtrY/Vbt/pXfGjI2CQJBRLM9zf1s3RpPXDQSjmfJS8jmmAlXPd4B
         ekM4r8iDPXHvq4NMosHOPA+dvyDYUjtfKWQpD/eByiVbPZyhmz2Evs0osTJcGYMTiPCB
         Monb4JeCK9HKzdgakgO6fRKRLqALNBvFElhMnE7eh6vtxUMz3LUCY93gfD/iG90kh9t8
         r+QjpwjvrmgnkS3gRN4liVtJlc4VzP5OEvPdA3aZjYgF8U5FQkoY5vbJcK91ovs9msmF
         6udQ==
X-Gm-Message-State: AOAM532WszI7nLf3NOwR6B4b+oZ4zeazSXCxgTIWPmOZ9iq7+MsN9qEw
	a4zmrBrIAaUmNcUkTxKmXxQ=
X-Google-Smtp-Source: ABdhPJwf8S1eb+LBEyj5Vmvd3rDbOFdKpbl6icbVSHU8ivUydifJVOcZgdQG/SOKoyV2y13p+AqMYQ==
X-Received: by 2002:aca:c64d:: with SMTP id w74mr7293449oif.101.1622492470568;
        Mon, 31 May 2021 13:21:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6d11:: with SMTP id o17ls4619966otp.11.gmail; Mon, 31
 May 2021 13:21:10 -0700 (PDT)
X-Received: by 2002:a9d:73cf:: with SMTP id m15mr19053708otk.243.1622492470236;
        Mon, 31 May 2021 13:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622492470; cv=none;
        d=google.com; s=arc-20160816;
        b=NIoLKTfj5xzZKPGYDP0/eRJ467F3KZa177Iy1UacmXbWguStbaQ/Oo9H4yiylVklob
         YoHY393F+kWa+bUFkLMb9EE+jmDQ5UFPjmVe3h1BhE8J7f8YTE8dlGGKeSS6UOWICtoO
         TCT+UJX2UX3ZhQV8WpPss8pn1sjnrP+2zn9efkHvnH23nu18OJQI6mA4z9XZmMnCgX6x
         Ri2taiduldHEsmTzcEAXKcfXSHQdWzm/Zu46TCX2/zNyLmU8XK/l7bTx1m/riYx36cTp
         +GhEtYrPK4Mr6w86mwxF0FQU52/6GEtb+/ad3vtViFL0i4MQseXjNx5f9aXUq2M6tf8v
         avLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=7Hb0cJIlllmxjKuiJHCfYDAwnx4kWKSPYkNG4qIRVAg=;
        b=1GTERHpDN6RpS7ShiNnmFx0sSjvKrRMPx2Cacw5U9DUwZ3XUEwZp/1U9Mw/OfJGYlv
         rhgdRnFsTTR9lA8myIkS6mIFubaIHKdektmCH3Lz8TeLHpeTWaqv6odBRGXUjqbN7ZV0
         G3/VV28ztr5TBkM2aDl9U7rgYY/TYCqTHYdJk1JXKGrTqNijhNecSCrT08Fo0kdKdy57
         8n35paJqPvTNzR/3dMEy/YsJCENpVlca/bSE1VcxwsFsnmIQ0vd2cun8b/BqZ+YcVDiT
         4kC25lv96lp9xIK6KevE02PNSpnT2kAe3mdW5pVcO/P1haxYdeSxRt4IAXqUYjq3RbTQ
         I7UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ttaJS7nd;
       spf=pass (google.com: domain of 3nuw1yaukeaamorbogoogle.comclang-built-linuxgooglegroups.com@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NUW1YAUKEaAMORBOGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id 88si1672867otx.3.2021.05.31.13.21.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 May 2021 13:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nuw1yaukeaamorbogoogle.comclang-built-linuxgooglegroups.com@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d63-20020a254f420000b02904f91ef33453so14599767ybb.12
        for <clang-built-linux@googlegroups.com>; Mon, 31 May 2021 13:21:10 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:2d19:3d8d:1b72:3e5a])
 (user=morbo job=sendgmr) by 2002:a25:d606:: with SMTP id n6mr12532718ybg.210.1622492469764;
 Mon, 31 May 2021 13:21:09 -0700 (PDT)
Date: Mon, 31 May 2021 13:20:44 -0700
Message-Id: <20210531202044.426578-1-morbo@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
Subject: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ttaJS7nd;       spf=pass
 (google.com: domain of 3nuw1yaukeaamorbogoogle.comclang-built-linuxgooglegroups.com@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3NUW1YAUKEaAMORBOGOOGLE.COMCLANG-BUILT-LINUXGOOGLEGROUPS.COM@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Future PGO features may create other files in /sys/kernel/debug/pgo. So
rename the kernel's raw profile data file to "vmlinux.profraw" to make
which part of the kernel the file is for more explicit.

Note that future files in /sys/kernel/debug/pgo should follow a similar
naming convention.

Signed-off-by: Bill Wendling <morbo@google.com>
---
 Documentation/dev-tools/pgo.rst | 6 +++---
 kernel/pgo/Kconfig              | 7 ++++---
 kernel/pgo/fs.c                 | 2 +-
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
index b7f11d8405b7..0200449c4843 100644
--- a/Documentation/dev-tools/pgo.rst
+++ b/Documentation/dev-tools/pgo.rst
@@ -76,7 +76,7 @@ The PGO kernel support creates the following files in debugfs:
 ``/sys/kernel/debug/pgo/reset``
 	Global reset file: resets all coverage data to zero when written to.
 
-``/sys/kernel/debug/profraw``
+``/sys/kernel/debug/pgo/vmlinux.profraw``
 	The raw PGO data that must be processed with ``llvm_profdata``.
 
 
@@ -108,7 +108,7 @@ using the result to optimize the kernel:
 
    .. code-block:: sh
 
-      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
+      $ cp -a /sys/kernel/debug/pgo/vmlinux.profraw /tmp/vmlinux.profraw
 
 5) (Optional) Download the raw profile data to the HOST machine.
 
@@ -120,7 +120,7 @@ using the result to optimize the kernel:
 
    Note that multiple raw profile data files can be merged during this step.
 
-7) Rebuild the kernel using the profile data (PGO disabled)
+7) Rebuild the kernel using the processed profile data (PGO disabled)
 
    .. code-block:: sh
 
diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
index 76a640b6cf6e..d2053df1111c 100644
--- a/kernel/pgo/Kconfig
+++ b/kernel/pgo/Kconfig
@@ -17,10 +17,11 @@ config PGO_CLANG
 
 	  Run a representative workload for your application on a kernel
 	  compiled with this option and download the raw profile file from
-	  /sys/kernel/debug/pgo/profraw. This file needs to be processed with
-	  llvm-profdata. It may be merged with other collected raw profiles.
+	  /sys/kernel/debug/pgo/vmlinux.profraw. This file needs to be
+	  processed with llvm-profdata. It may be merged with other collected
+	  raw profiles.
 
-	  Copy the resulting profile file into vmlinux.profdata, and enable
+	  Copy the processed profile file into vmlinux.profdata, and enable
 	  KCFLAGS=-fprofile-use=vmlinux.profdata to produce an optimized
 	  kernel.
 
diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 449f16beb2cf..ef985159dad3 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -365,7 +365,7 @@ static int __init pgo_init(void)
 	if (!directory)
 		goto err_remove;
 
-	if (!debugfs_create_file("profraw", 0600, directory, NULL,
+	if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
 				 &prf_fops))
 		goto err_remove;
 
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531202044.426578-1-morbo%40google.com.
