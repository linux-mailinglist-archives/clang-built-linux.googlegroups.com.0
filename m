Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOUU53ZQKGQE5RXH7OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D29192E85
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 17:43:40 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id y21sf2098622pjn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 09:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585154618; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHGYXr5toNRTtNRbeMcK4dPnfbHggP27ok81aZ7+gdUZ2Je5EjKnHC3G7DMIBJC3Cz
         tz4Na0sGqSFkhSLAOeEUZzJxdBtPADBRnEoXQmqZyrVs4SPYsOk1PjAkHiXv4uyp5W8d
         sBLMBhbf8dYIiz9TSDm7k+8yxAcoJcxdLF9KXgG7NUIbOAwGFnW6zvNjiZPUottM6a4Q
         +L31+DJRzyOj7u+f3IN211oDSQYLAUmohtMvI7RMrdOQFBl56JY5xVCNNv87GesmEIFs
         0+jz5fIsPP8tzQADDxzh0jMTWOFGBArWIw6tCJfU9+o6+e20tOl2J1hQBAfLaqwZHV5c
         F6lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=JTJ3eyK7W0tzF0ZQkCbzMiEsRDGlart9cV9Hm5suxyg=;
        b=wT/0o+NCF/tRPLpzpOxHbVPX1FUdMqeUg6PwRc9qklweyiFSyf4F+ZIy3YZ2Y+ct+h
         utki9YVoPsEmS/Bjf4IW4LBj1AZ/jAf0uDWf2DNZcWdnSUyGoTeGnhH9/Qh4vX38DmHF
         J3EAZVxJ1Q7go2f3WAcWQuBqOWi4e8ZXEbZDr9fdFQkRATf3LG2AXG9j+dqv9sqi0kAf
         Q1qeSC29jLIoTnw7UDKYbLpKeun5spkttslsSxnAmjtSb91i3r40oXNbkLG4iYBLg58S
         9ygHlQI66tGQuF3ZGbybqhWK63jm7jfk44f1iSPK+13D1w0U0hRf70aM8NylUQn4n47o
         cRkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R7PnGgOm;
       spf=pass (google.com: domain of 3oyp7xgcketyeskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OYp7XgcKETYeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JTJ3eyK7W0tzF0ZQkCbzMiEsRDGlart9cV9Hm5suxyg=;
        b=nNPvghCB0SbEpCm1hYn/UchDJZjohE1yQXA8fz17OzbDgMcWTYFDv35Y7KHjzUoqyF
         u6tYzTJVtZAT0MF4mbm0hcwvuuTR5WOwclyy4ZutzyzGbyCwfgB+htHmS9/1gBClFkUP
         Szojc2c8ANklUNBimpNi3/tDWGH48kNuo7LyuYuH0gM5IjMQUFtAZCRxMJbzUTXkD25s
         yLO007F5DUSwbG961ezs70xRLd+4eS3LXQbmn8giCJ0qMsnj7N/g7/4ybXosdfHNjUP/
         TVcPdIDqv7T5VpJirAuumnebusqhBuOo9kDQEibkdlLPC172/oeElvnO27M7aWewR1PU
         ayGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JTJ3eyK7W0tzF0ZQkCbzMiEsRDGlart9cV9Hm5suxyg=;
        b=oYEfXbenl5uE7G2DjI6xhgP57dlghYJT2UxQKXZM2a8ZWTC+VNFv61Y77E0ZC6uRjq
         MO0bhOSD/5vKj5y45rW80+SlY85jzUcJcFj7tvv4wTIMm+Hep/Am6i3G4/BOE+1y4jfF
         KUbXnnAtB3OO6NwyRnbWzisd36SAX7eYXNt8BfX+gxilHfkhn+we3/cj9B6j8EduU/rh
         eIqzJ68y6teLApt3ui1aQwbzPK6o2Z1Zsl5ek2SrDTNScKatUFJMwaXy2bXRPf/QmRFw
         S826mLJCYbpSfYMBg+RGWc32D2fcK+SmWclbpeujLTc67WfvNzkc82qbbuooS5eEHtWT
         U9UA==
X-Gm-Message-State: ANhLgQ38bTV9Tu6AdwuuGvio2SHzQ6alLxx0P/AwiSToQrosLtkO2y3v
	SSSwuN/3I7MKT/9M+mE5u8w=
X-Google-Smtp-Source: ADFU+vtngENBH5EEUv5cpBOAyDvfUASHkqnmpwA/RfzvxcTfkmRjiz73EXq9ux6dfCeN1GZwPxlbAg==
X-Received: by 2002:a17:90a:5a42:: with SMTP id m2mr4568865pji.165.1585154618806;
        Wed, 25 Mar 2020 09:43:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:af5b:: with SMTP id s27ls1706967pgo.11.gmail; Wed, 25
 Mar 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:aa7:9e46:: with SMTP id z6mr4396585pfq.17.1585154618273;
        Wed, 25 Mar 2020 09:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585154618; cv=none;
        d=google.com; s=arc-20160816;
        b=bGsFST2mh8RoOuCgCi1OZQTLTOFRaY64TOsswfXnCCAOivQawkOoTBTR7lM1mgfMvf
         ozMbEjAt80lSZEbbM+qMRiIP/+OswGVsF0hgKqljEzEnzAl3qXrL+yNk1Xeg/Q1UVNQq
         cd3fSQILTKGwREs9AY3wB3qpDTfHfzklPFEKWA8MZgDXFEKCqhB7YrNRXKLye6TwfgA8
         OfauXUXwqDZ8oHL0n2tfQxFoDoh6rHRZpz7PGlJoK+ws6f+h+NVXOZZXrqL6nxYEsNY9
         R/m1ZH349Ktx674DYSNFvIG9ciKmVjOi3cETknqkvVOpX1Sm5fYomIO4g+ZbOu4NH6wX
         Ma0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=W+RJLtrYnjjpgBQ3gpQ7MHIpp5jjX2BBq7fApCfnQBg=;
        b=SAPl4YBHqGqL8HA64E3b5yOBK9EnzX5vd3uolPvntcavQOuZSB8YEsZH5G3rlRWYUt
         M0JhSCEpFhSbMQv11cpu0JQ2ncyNlwzKmkz0RCsngpwSZM6+pnsunI7JxQs2fsCrA5WX
         rjStk5vjEaU6do2vqG7sJj0YbpDK+QXpFZGZOm55QAVK7Zwu4iYElb/M9IhPHI2qxnw8
         o2mwiXCoJHLcrSOZ+lC6obe4uMrRi270f8Mda9iak4ttvWAfwKdwBVmcNufWcqC9LQf+
         s9kHJvw9+oNaEKCf8eQWNNLTYQ1eRwalynz12xlta73XXB5wtHJeEA7MKQqKf6e2imQ+
         z7dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R7PnGgOm;
       spf=pass (google.com: domain of 3oyp7xgcketyeskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OYp7XgcKETYeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id j14si1222826pgg.1.2020.03.25.09.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 09:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oyp7xgcketyeskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id x189so2553031pfd.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:a17:90a:d101:: with SMTP id l1mr4885668pju.130.1585154617915;
 Wed, 25 Mar 2020 09:43:37 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:42:57 -0700
Message-Id: <20200325164257.170229-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH v2] powerpc/boot: Delete unneeded .globl _zimage_start
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Fangrui Song <maskray@google.com>, Alan Modra <amodra@gmail.com>, Joel Stanley <joel@jms.id.au>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nick Desaulniers <ndesaulniers@google.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R7PnGgOm;       spf=pass
 (google.com: domain of 3oyp7xgcketyeskcjsqyggydw.ugeudsfy-tmadl-dafmpyggydwyjgmhk.uge@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OYp7XgcKETYeSkcjSqYggYdW.UgeUdSfY-Tmadl-dafmpYggYdWYjgmhk.Uge@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

.globl sets the symbol binding to STB_GLOBAL while .weak sets the
binding to STB_WEAK. GNU as let .weak override .globl since binutils-gdb
5ca547dc2399a0a5d9f20626d4bf5547c3ccfddd (1996). Clang integrated
assembler let the last win but it may error in the future.

Since it is a convention that only one binding directive is used, just
delete .globl.

Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
Link: https://github.com/ClangBuiltLinux/linux/issues/937
Signed-off-by: Fangrui Song <maskray@google.com>
Cc: Alan Modra <amodra@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>
Cc: clang-built-linux@googlegroups.com
---
 arch/powerpc/boot/crt0.S | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
index 92608f34d312..1d83966f5ef6 100644
--- a/arch/powerpc/boot/crt0.S
+++ b/arch/powerpc/boot/crt0.S
@@ -44,9 +44,6 @@ p_end:		.long	_end
 p_pstack:	.long	_platform_stack_top
 #endif
 
-	.globl	_zimage_start
-	/* Clang appears to require the .weak directive to be after the symbol
-	 * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
 	.weak	_zimage_start
 _zimage_start:
 	.globl	_zimage_start_lib
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325164257.170229-1-maskray%40google.com.
