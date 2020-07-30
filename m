Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV7FRT4QKGQE5HV6HWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 346EF233A08
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 22:51:37 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id t18sf18981968plo.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 13:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596142296; cv=pass;
        d=google.com; s=arc-20160816;
        b=VtpASfmkWlqg6bpYsK4F/IVsitsgY0zfiQE2RamzfoJbpD2nO3y/8dPf1T+biPwCl3
         4Yfe3E0An6xe+lPTfNefJ1rm1itfyQ8Dgfx6Gpb3ZZXqCHMFz0Pqh11FG7pGvpCKjk4A
         LHsreW3mob0U9kdW6dDXV+P890ALNorAFZvFvvPCIOWKpt+RQTAwNHzsCRWKrov37RnH
         D7Xr6gWjfM1QTn4/sc2iU7kit6d+akl3LfEtliKMW37XIx0mwVBU31bnrp5DMD7hyeEY
         H5GHFOcF7ql5UOo8vdrP150f7gkJY+bpL8c3fJ9eNeAWDfnZb2zHzInAygOSN/QcKqVs
         IT6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7LuHptRKMJUHlTaTrKas8jp/qIQL2H94CJHBi1/rHJQ=;
        b=p9XUIz+QpzjpgzUbTre6Q/B/lARRe27XLuCD4P1UMcfY0v5grfT7yPUtf71fNd1If6
         NZVuZtqvDi5ck4pEvjxp8GSxryhjOhzKTbZHvRe27Ub30kEtgbZnqEtyAkuyY+Odq1xg
         YUmlT3HVI+nguIAVc70CFdzrtAfsZZtcezxiBbhWmhkPoBnY7JYOknfJETq8SyTgZzds
         KMl2CqJZ297Arq+kDwNnExO2e3y8wTnWk6S23fI0GBANIYqSpHNwmgxrvCuy0x66mM2b
         kZdZG9ZLdnFczOAilZZbPdugLa5KtRHb5erJIFdYSbQGfS7rDvmbWrkw5qA7MUYV1K6r
         HFFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7wTTnVr;
       spf=pass (google.com: domain of 31jijxwwkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=31jIjXwwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7LuHptRKMJUHlTaTrKas8jp/qIQL2H94CJHBi1/rHJQ=;
        b=DTAMGYYrQ8zCmElTiMtCOT2ReJcqkclIFG8T7UcsHnjuoHsIi7N62VCgHPpMA762mR
         LxaspZUksGlVWq2iLMcsxxEIvV6Q+a5YI/iK5cd3EhoWgMSPMEvl0XAA7siC1D9K+66V
         t3HAgXdcooDW3hqfs0zXAL59Smcqgqb6pjS9FbbZI1qgUmucEO1izti/EuaUKDO0S99S
         Ehzd2Bq58Uv+Mr76jXI2O5QC+ZLgx1ULIH9aLQBOP1VfXIB88VerzYn7y9piuvRZoRaM
         yZ+pLOBqKzb3L5WBsV7BBCFrtYI88+2ss778+vaVu4PW864zmTqnNXu1SOMhfwq6536R
         Vhhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7LuHptRKMJUHlTaTrKas8jp/qIQL2H94CJHBi1/rHJQ=;
        b=uKAfo3VMfpOoeMklYSRD8iggQBBuag7UIwtWRwEWT1g2qR1uBa26VX2KRO1KgrhnSq
         Lb3Mrgnlu6MYDAkV02Yz1RaVXGaeKXONay0LJ8FICQS0SmVTF2CDmDraJnREEQWhROE5
         tdPW1HmTLePX2r7GV2xQwYtPurn6C0tJXcOkp591WeRLu9XX9mZfRkcxQ2LoApxXeDXe
         bd/MMMfh0wdVqVfXIDxtN+szX1ErRMJGlxOZeaAEo9S+D7yP8/dQ/lF93lRvKXAFselD
         R9870WZI+3GbVf7Beija3/k33hSqDdkzlrzyJ1L7YbeVQOHPH8PnqZZBR+ih4E3mAWV8
         Q7hg==
X-Gm-Message-State: AOAM531OeB6EHQTdii56hGqQS2Ch1KfjIwGwBQEoFPs53AiQFn9javHK
	NEP/C0qPV7QUmSE6vZ8I450=
X-Google-Smtp-Source: ABdhPJzrzfV4OTbBhD0GS2dnAS0OMVUe4HkcuKZgz64eNga7Rmw48c3+ThecSNKXRLq5leWLRh2mQg==
X-Received: by 2002:a17:90a:7103:: with SMTP id h3mr930682pjk.34.1596142295906;
        Thu, 30 Jul 2020 13:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls2218466pgo.9.gmail; Thu, 30 Jul
 2020 13:51:35 -0700 (PDT)
X-Received: by 2002:a63:b55a:: with SMTP id u26mr595002pgo.403.1596142295481;
        Thu, 30 Jul 2020 13:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596142295; cv=none;
        d=google.com; s=arc-20160816;
        b=M1qOaJwLj40Gm3yz01EuI5y9eB/l112tYONYUcV5k3IvYWOvEoSnxbnzDvEImb2Fa1
         QojHGlrHvR5qas3Yy8xh7bVYa6gw6HpHGk/Lbix0k/wJr/nJmwZclN6+Bzc7rHzst5Eq
         fD1QhJoADIWRkEPeXsA3g4M5aV1/PmmoaeJlKG7eAOe5W6E5wlKJGqgdmJVafAFsLKJj
         MAit3dddhm+sZgCPIriKO6DWQiZd+Rn1waGNSW3ynyj+oSnbqfNrkyfE7DTA1SFAi0Xt
         IWO7xbmAjc6+wdDkuly89cAZVy/tarj4wRixIgItC0D9V37lpNxfKkXHeqZGCrEmjw5x
         u6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ydEFx7nL1QHetJ3IzZOqahIDDjnqGsyqZ8n++t96BPs=;
        b=bLp7rSZJ/J5XaBTyH8QfzONgNifJgcGK5cP211t/lcN9CV0+w2uErFkJPUh2KQ57Yy
         AyYUvS6bwQsvVUfAguR1AvBRL1I2X1tHRP1AgRTpZ721tZZiD0LFjYjJlzEnoo5nUFql
         WQccqwRdeJiCmJfV7Mx3liRfJ7qrUaWV3fgeVL+S780x/3s9ErhruCzHsuT5wWPHF1cZ
         zfZWMPclOQuFWupL7GTou0jG7DjS2+71iuvI94mpLJMuipT/a3kRJRwbSPDp0S+bZRsv
         8hlUuSyymzmVlJYAcX9beUWUHZ5pjHGmgWYW0y0hMZa5WDvUZW9KqFLggcRI8xCgE10k
         JVUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7wTTnVr;
       spf=pass (google.com: domain of 31jijxwwkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=31jIjXwwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id h18si329393plr.5.2020.07.30.13.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 13:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31jijxwwkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id v20so18895650qvt.15
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 13:51:35 -0700 (PDT)
X-Received: by 2002:a0c:b891:: with SMTP id y17mr1039225qvf.2.1596142294513;
 Thu, 30 Jul 2020 13:51:34 -0700 (PDT)
Date: Thu, 30 Jul 2020 13:51:11 -0700
In-Reply-To: <20200730205112.2099429-1-ndesaulniers@google.com>
Message-Id: <20200730205112.2099429-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 3/4] ARM: backtrace-clang: give labels more descriptive names
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Huckleberry <nhuck15@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux@googlegroups.com, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miles Chen <miles.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h7wTTnVr;       spf=pass
 (google.com: domain of 31jijxwwkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=31jIjXwwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
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

Removes the 1004 label; it was neither a control flow target, nor an
instruction we expect to produce a fault.

Gives the labels slightly more readable names. The `b` suffixes are
handy to disambiguate between labels of the same identifier when there's
more than one. Since these labels are unique, let's just give them
names.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/lib/backtrace-clang.S | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
index 40eb2215eaf4..7dad2a6843a5 100644
--- a/arch/arm/lib/backtrace-clang.S
+++ b/arch/arm/lib/backtrace-clang.S
@@ -121,8 +121,8 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
  * start. This value gets updated to be the function start later if it is
  * possible.
  */
-1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
-1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+load_pc:	ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+load_fp:	ldr	sv_fp, [frame, #0]	@ get saved fp
 
 		teq	sv_fp, mask		@ make sure next frame exists
 		beq	no_frame
@@ -142,7 +142,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
  * registers for the current function, but the stacktrace is still printed
  * properly.
  */
-1003:		ldr	sv_lr, [sv_fp, #4]	@ get saved lr from next frame
+load_lr:	ldr	sv_lr, [sv_fp, #4]	@ get saved lr from next frame
 
 		tst	sv_lr, #0		@ If there's no previous lr,
 		beq	finished_setup		@ we're done.
@@ -166,8 +166,7 @@ finished_setup:
 /*
  * Print the function (sv_pc) and where it was called from (sv_lr).
  */
-1004:		mov	r0, sv_pc
-
+		mov	r0, sv_pc
 		mov	r1, sv_lr
 		mov	r2, frame
 		bic	r1, r1, mask		@ mask PC/LR for the mode
@@ -182,7 +181,7 @@ finished_setup:
  * pointer the comparison will fail and no registers will print. Unwinding will
  * continue as if there had been no registers stored in this frame.
  */
-1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+load_stmfd:	ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
 		ldr	r3, .Lopcode		@ instruction exists,
 		teq	r3, r1, lsr #11
 		ldr	r0, [frame]		@ locals are stored in
@@ -201,7 +200,7 @@ finished_setup:
 		mov	frame, sv_fp		@ above the current frame
 		bhi	for_each_frame
 
-1006:		adr	r0, .Lbad
+bad_frame:	adr	r0, .Lbad
 		mov	r1, loglvl
 		mov	r2, frame
 		bl	printk
@@ -216,11 +215,10 @@ bad_lr:		mov	sv_fp, #0
 ENDPROC(c_backtrace)
 		.pushsection __ex_table,"a"
 		.align	3
-		.long	1001b, 1006b
-		.long	1002b, 1006b
-		.long	1003b, 1006b
-		.long	1004b, 1006b
-		.long   1005b, 1006b
+		.long	load_pc, bad_frame
+		.long	load_fp, bad_frame
+		.long	load_lr, bad_frame
+		.long	load_stmfd, bad_frame
 		.long	prev_call, bad_lr
 		.popsection
 
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730205112.2099429-4-ndesaulniers%40google.com.
