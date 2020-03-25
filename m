Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAWL57ZQKGQE3OP27XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 383BD193451
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 00:13:08 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id a21sf3043334oto.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 16:13:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585177987; cv=pass;
        d=google.com; s=arc-20160816;
        b=0EvLeFhDSDt8aw1pckwE4bx7Qv1KCZY8ljKcbg/Hie9IULa2HZOaj//LNfIIrB2U09
         FaSpeN8NykNmdRXRtjywHJMcSBcx2ZnvqTNgGIOwZ1xS/qZ54yWL8AEmkgpwxe9veY8y
         XM26Kp491BuOVSPq9HPGEfxYLzOpFitPUthdnHPdFqexFOEOisjcqw2CfEYOFge7gh/h
         5PZmQND/dWNGedR82wjZzz0ArdinkxO5q9Y7/ufOTQNEbp20jpbQFgDsiX63kB0KBmKe
         dLM2PIvEOT0gg40wG1ZuJogYJhcn5S1sb5itmyDf5AX518/nJQPTagjk8ra+yif/KA7z
         ICCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=q4UcDegRVnb1BMkqkV3j3kOB4KkLI176uKBynKnQ7Ro=;
        b=QbJkVQuCDcK1B+jhyF/9VYx+6UDgbRbkNsP361pxZHTV3241gaq4Xe8dgBNrJ0Ozvu
         Qyd8gneZYwRpgh3DWhxOSMWNdayWckaYinaO9rvfodB1nCIieh149oG64dWBMrVnC6O7
         uPW4eROmfBWDsYkqMi/Lro7c2xfo5wBIupBYrhn9k4zdqXopCrHhBjrKIui30WiktuVt
         SIXsemzKZxu4RSbNWEL1PZ56SyUeKcQ2NOSiv1VFm8OClFpvglAOA43dtZv/vVPBZQ2I
         IlQVPkrwUVwW8gcnpF3j71y34DMtNM47x2kbiffdIWG/eNKZo3UegkB9oL/ovzC9rH7D
         kN7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q2FsSrJX;
       spf=pass (google.com: domain of 3gev7xgwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3geV7XgwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=q4UcDegRVnb1BMkqkV3j3kOB4KkLI176uKBynKnQ7Ro=;
        b=ET3gLr0KUTBAJdG7vTmHiqVphmtdwsPeIuR3PFr2lKJbV5LzhTlzfu9oIKqYDxvinn
         XQrXCgZOMsoKrLSTBm32KxLsLuTuPG7tOrlTC56Cq+UafrmWkSsrJ6AwExb6J0BedfsL
         th2lzWZXabTVgYxjYX5l75w8BebsDzoX/sg1258h/X1gfe5itPPvXrIEc3PpUf6Wk9Qq
         5gR0aVCJZULFNJEV8XVEW3fG+McPQhYlowPYtAQXqF6/ZnOiGJvgK2Mg5bi9KIpaEQlr
         94/c8xeWMvB8MB4jTujCmEeXoYd04lCctAgEcZYv8pxiU4QLBZCwbyHOk5ZtzWZmoBEe
         P//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q4UcDegRVnb1BMkqkV3j3kOB4KkLI176uKBynKnQ7Ro=;
        b=C1+H+bBpAWP3OCh9/o6RefiGVdK/2LWYo0Lk83f87kGFIWTeBfwiMOSYeOEd9r3Frn
         jQhzSVQd2mRw6mPNt4D6rOjA3AfVwtuKQN6BP3mG4pbrwE9iMpn9e3pnz46sasGXGM/d
         l/ZW8SVSrCNNgGY8lFQ5MBnrpy4ZKO/eQ4nr0wYT6SuGIffJDbOkCyXdAEy8ziWFZ2tT
         la0WSLiW9wtVpgbpoQ1niJIDQwHkzbe6s4CTDITryTvibV0PeVXyfrSiBN33Zp8cOk7B
         Dcg9RalhlcKx2v8ZVLwUgGSf6HSiLGTt85/bRMv1EXGbwnGkaBBxaV+eWAwS3bmbWSYP
         z56A==
X-Gm-Message-State: ANhLgQ2kkTNpE2ggFjcmiUEKjYFCxD+vaTF6RGcUap5FIRXN5I1nCqJZ
	AYoKb+Ju6uZGVvRZ9H5leLg=
X-Google-Smtp-Source: ADFU+vsqDXptXJaDwJjYhV9IEaQqkbdUXtqnzgCXkUcFwoNG15o7TYGkDhTCJZRz+J+xlbSMYVC2Ug==
X-Received: by 2002:a9d:53cc:: with SMTP id i12mr4388575oth.85.1585177986754;
        Wed, 25 Mar 2020 16:13:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls1362027otm.4.gmail; Wed, 25 Mar
 2020 16:13:06 -0700 (PDT)
X-Received: by 2002:a05:6830:1003:: with SMTP id a3mr4492982otp.128.1585177986338;
        Wed, 25 Mar 2020 16:13:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585177986; cv=none;
        d=google.com; s=arc-20160816;
        b=abReZ6sQUAOOySegXVtLgvTFe5W47FEPB4ZuWSDM8hocK2EvkLQyNX8kaz16sTq7XE
         mNeI697pa29auaZBnr0P+FkZS+hQGI6yiLEp/DyhXJMrOuUD4DaBehUzdY5QdBrOCDmR
         v/3RMPQLhCW9ToNVMSpLiqrddmHw3FoC/ZFgTsu6H1uNPMi5zl1yzUtdDuJxC2ntwTxr
         JUjIB6ZJHYrD++IqxDbo89KpL+r2nH1RJWK+bl5Z8vULV490JR5CDzPGT3kksBTBKkIU
         Zp0GEWEZ3Yu+f//cWxj7474VpvXjYrnvjw1xgWjgEpNscwvfTyL2OkauDhefmElCablP
         Wk2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=vYzRHAXTkQE8ShgnDZUpxP00w9EinAhnVmiKvXd/foI=;
        b=Nc05VrOqJyKbcAWojFF0iQX9th/ovNpL2YQQngtW6yfihe6f5EhW0yapMQRUcfY2wK
         4wlDbwbJ2iyV4qxVYMCRucmrL4E2CDwmjRXBpPRRPA1JhPnKiEaJs8Vde173SgV95+n/
         ADX9KxkM08BF2ApXs7JkstwU37iyGe+HoTc0RAkmenK8q2/+bgcRk2eg6EEp/VjlZHHn
         hqv1oj+vAHR4Tni/giSwmR8b4rZNNIAyofzN+qhsoAjtt8FIkga5s5SfLpbClUsmx+n6
         cUZDl2l67pMt7uPklORINK4Uwecmf9nE6ShXyazUMSK4kc8EE/ec1fUMbaneztY836Lz
         hxOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q2FsSrJX;
       spf=pass (google.com: domain of 3gev7xgwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3geV7XgwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id m132si50089oig.3.2020.03.25.16.13.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 16:13:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gev7xgwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id m25so3122854pgl.8
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 16:13:06 -0700 (PDT)
X-Received: by 2002:a17:90b:124a:: with SMTP id gx10mr6250888pjb.117.1585177985586;
 Wed, 25 Mar 2020 16:13:05 -0700 (PDT)
Date: Wed, 25 Mar 2020 16:12:49 -0700
Message-Id: <20200325231250.99205-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH] elfnote: mark all .note sections SHF_ALLOC
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Jeremy Fitzhardinge <jeremy@xensource.com>, 
	Ilie Halip <ilie.halip@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q2FsSrJX;       spf=pass
 (google.com: domain of 3gev7xgwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3geV7XgwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

ELFNOTE_START allows callers to specify flags for .pushsection assembler
directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
section is specified twice after preprocessing, once with "a" flag, once
without. Example:

.pushsection .note.Linux, "a", @note ;
.pushsection .note.Linux, "", @note ;

While GNU as allows this ordering, it warns for the opposite ordering,
making these directives position dependent. We'd prefer not to precisely
match this behavior in Clang's integrated assembler.  Instead, the non
__ASSEMBLY__ definition of ELF_NOTE uses
__attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
and just always use "a" flag.

This allows Clang to assemble a working mainline (5.6) kernel via:
$ make CC=clang AS=clang

Link: https://github.com/ClangBuiltLinux/linux/issues/913
Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
Debugged-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Ilie has further treewide cleanups:
https://github.com/ihalip/linux/commits/elfnote
This patch is the simplest to move us forwards.

 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index 594d4e78654f..69b136e4dd2b 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -54,7 +54,7 @@
 .popsection				;
 
 #define ELFNOTE(name, type, desc)		\
-	ELFNOTE_START(name, type, "")		\
+	ELFNOTE_START(name, type, "a")		\
 		desc			;	\
 	ELFNOTE_END
 
-- 
2.26.0.rc2.310.g2932bb562d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325231250.99205-1-ndesaulniers%40google.com.
