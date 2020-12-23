Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAFCR77QKGQEZLZ6GLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3142E22AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 00:21:37 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id a206sf1249462ybg.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 15:21:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608765696; cv=pass;
        d=google.com; s=arc-20160816;
        b=yE7nsjn6hdrDuBwh59xOJG+iV0JoDPKci5kRtYX9e9bwB8qokSc3OKIbax+z8/kZiQ
         xpptlrE/616PgoL/d2eZ/Q3gcLuG033ghEEeShIaGwzXD+swv7CvvkB2QOsSpxyfaWHj
         GTHphZt4A1iQeaO/EGGLO/md44VeyYW3A6k3h64RH+NjRNXR0HmPT5FIspt09+sd2jlD
         b0klZW/A97dNPwJMHTLDSHBv/jP69Gs0TqarQLuOAIOy3T2QBrtLjmwSd2OBQ0fmElIH
         ZCmaMP2Q41Vlb37I2ibAX62U9nPlx3vHIMKAEmbwd1hEPeH0/ErNSsfwa2fah4grnK2X
         N61A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=IpIX8SCoc9xLMA7ALZsvsdOj1vEXtlKmgSU6MfkIQDo=;
        b=hnG7+t58eFFD9mkWXIBXi7XpcRL1neLu+B2Uf2xcClJTnMCeRl1K9iulcgiWm3ujSR
         8TwZgefyO6f/iGL94xs6wGg6BO1Nb3nDS6rijj9D4bDbLadJOXuqcPuYcj9IJuLM21ym
         YdhaQN0HjuUVBadSeMfagJskFI4m18zs/rNqTmQVeSCHFAPQjz+RtTl5czheDbpHgDuP
         1oZsVs8gItvBsY68uAWZQMv0SOmcQnNOzF0lePNCyb26yfzR14Tl6kHy8sV7wJ/RsR38
         3jpgmZX//wUy4DZ3CwybfZw4myu7maHeNZFJE4J6pFj69C5Gs8fHiYNl6gp5I7MuscXT
         YGXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IL6aTVxW;
       spf=pass (google.com: domain of 3_9djxwwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_9DjXwwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IpIX8SCoc9xLMA7ALZsvsdOj1vEXtlKmgSU6MfkIQDo=;
        b=r0w5R+Ignh9yeUKWA51iRIjrORju7xOdO7O6ra4fJms5gFIuE6Dhz+sWuwyh7JNpRx
         nTU/Tr/kQBUU8ChzvIOAptYTpIBJR5uN7pvSU7tcPoRF4mGtapoUp4JXeOqIeF5jV2DJ
         iZMBtk/rpoAntH7xDAVwYPG+fgAmvDTVpTbZMxYNF/NyY1HRU0q9O1D4V4W/f8TWD6Jf
         g40Db6+io583zov7E9k70i8GV4t116ijyBsIXjGSg9dJL2XwFjVxQGurL+AOyUV6w6Ku
         CSnVyaiwLjVRWDtIX1UlJZfhpHPP2Lsti6rpukRtKxbezw+KgnLeHX+bLyg7emtZ145I
         1tzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IpIX8SCoc9xLMA7ALZsvsdOj1vEXtlKmgSU6MfkIQDo=;
        b=U1vAc0V++K9hf1zSGVi7kKsgN8E+sj0E0mYqHt5acaKOngDllIIY1N96NmUknDxw4b
         9HonJzE9ObwH/uNrtLOJGVsGO7qwViUzMhfqMX90Nf+BicmRr+LtI1WoRy56Gsbi3Lzb
         mWEng8lo6tqsnxZNlpOWlsEERJvnoPZBBlk4I9qhgrYHTCuSQnnT/BCyi55Vkj6pOo7f
         1BqGH7K9YCbPoKKieAIp9I3RF1wdMYQyOrjczeqshZfyN/AVOpb+WXLkxedxHn2sCCad
         QQ1asHlzhrB++W52KLK2BibgGTVopqZ3C2EeJRNMYCpQqE7uOBd+J6tUfFNwUrN8tjZb
         P0Mw==
X-Gm-Message-State: AOAM5336TG7ZfyyvoyprlV3KF3erAlEuvOohRgztyEWTL00GhEhhGPU7
	t+kb5IHJlbcleUjvdQ4Yjt4=
X-Google-Smtp-Source: ABdhPJzHGGtNBH4NJaxV+Y+CpHRCpX0tRvWnQktvd0SDcQeRuGeKHffk/D+dpDQKZODCyi1F3+Kb6Q==
X-Received: by 2002:a05:6902:9:: with SMTP id l9mr39318861ybh.448.1608765696374;
        Wed, 23 Dec 2020 15:21:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls18237905ybd.4.gmail; Wed, 23
 Dec 2020 15:21:36 -0800 (PST)
X-Received: by 2002:a25:da56:: with SMTP id n83mr39582324ybf.265.1608765695940;
        Wed, 23 Dec 2020 15:21:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608765695; cv=none;
        d=google.com; s=arc-20160816;
        b=kNavF6SuqrTtvPP9NI+1almdFC9X0dL3P0+EHnK3Qp846xGafWkENJZ1lzH7HEWVPW
         JXWPv5sWEVBZQyaXEvB++dKbM2bINZtHh+Erii9peuTeski8gSTxvy3kE3gH9JF3krSu
         9VSy3POGGyiweqPeLx0X8lPSp3qE7Hd8x5H/scs2LbAAVMXB6n3tIJKGDIYvWeW6VxLE
         sx2uLb/jU/8gV3N7saY1C705xYtY9HI1PDBmGh5v5RPNaMBNd3FR7Tj2y20pqL3uT8wj
         t1Uhy8nTUoqF3bBrs/AV/pOPjosZEGhdA7onuFS6fOz9WmQe/Y/+uJajo86MzIncLHer
         5J2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=OpeQspjNfc+YtA5Luu2f8A+bIc+qEdp7z4+y4LvF6NY=;
        b=TdKWpMaZ3V5e8Tx0yfxepmECyuEgupUSCq2BlJ9B0INz46BOeW5ppcKiG1fuc3s6ML
         UB7PB+yVBrezkAoSfj6Z3qagBc2HoYL4ujFrExOEvWXnxS8/7Dk5oyKTvBzsQLVsL7u+
         VBwf8XTZ1Fvfd4hU3Ijrfc7rXo3Rqt5rTDiGkn6S4O385tQy+kEbSqJgwLS79959dwTe
         3spJ5y0wyEj/gjESmQ+LWt7DVLVX/uRN2InAAbiN6pSZ4vFoWukHy1TVfS4u4eIy/uTi
         R+YV4yM6/1iOycvk9/8CE3hhXbFdVmBuULXDExVQOhSfKs8kSLbKO6lQLRR2J78C8Huv
         GW7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IL6aTVxW;
       spf=pass (google.com: domain of 3_9djxwwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_9DjXwwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id k6si1667264ybd.5.2020.12.23.15.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 15:21:35 -0800 (PST)
Received-SPF: pass (google.com: domain of 3_9djxwwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id v138so405750pfc.10
        for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 15:21:35 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a17:902:a5cb:b029:dc:2706:4cc8 with
 SMTP id t11-20020a170902a5cbb02900dc27064cc8mr8357472plq.62.1608765695098;
 Wed, 23 Dec 2020 15:21:35 -0800 (PST)
Date: Wed, 23 Dec 2020 15:21:26 -0800
Message-Id: <20201223232126.759416-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH] x86/entry: use STB_GLOBAL for register restoring thunk
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IL6aTVxW;       spf=pass
 (google.com: domain of 3_9djxwwkadyfvwksmdfawjkyggydw.uge@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3_9DjXwwKADYfVWkSmdfaWjkYggYdW.Uge@flex--ndesaulniers.bounces.google.com;
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

Arnd found a randconfig that produces the warning:

arch/x86/entry/thunk_64.o: warning: objtool: missing symbol for insn at
offset 0x3e

when building with LLVM_IAS=1 (use Clang's integrated assembler). Josh
notes:

  With the LLVM assembler stripping the .text section symbol, objtool
  has no way to reference this code when it generates ORC unwinder
  entries, because this code is outside of any ELF function.

This behavior was implemented as an optimization in LLVM 5 years ago,
but it's not the first time this has caused issues for objtool.  A patch
has been authored against LLVM to revert the behavior, which may or may
not be accepted.  Until then use a global symbol for the thunk that way
objtool can generate proper unwind info here with LLVM_IAS=1.

Cc: Fangrui Song <maskray@google.com>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1209
Link: https://reviews.llvm.org/D93783
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/entry/thunk_64.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/entry/thunk_64.S b/arch/x86/entry/thunk_64.S
index ccd32877a3c4..878816034a73 100644
--- a/arch/x86/entry/thunk_64.S
+++ b/arch/x86/entry/thunk_64.S
@@ -31,7 +31,7 @@ SYM_FUNC_START_NOALIGN(\name)
 	.endif
 
 	call \func
-	jmp  .L_restore
+	jmp  __thunk_restore
 SYM_FUNC_END(\name)
 	_ASM_NOKPROBE(\name)
 	.endm
@@ -44,7 +44,7 @@ SYM_FUNC_END(\name)
 #endif
 
 #ifdef CONFIG_PREEMPTION
-SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
+SYM_CODE_START_NOALIGN(__thunk_restore)
 	popq %r11
 	popq %r10
 	popq %r9
@@ -56,6 +56,6 @@ SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
 	popq %rdi
 	popq %rbp
 	ret
-	_ASM_NOKPROBE(.L_restore)
-SYM_CODE_END(.L_restore)
+	_ASM_NOKPROBE(__thunk_restore)
+SYM_CODE_END(__thunk_restore)
 #endif
-- 
2.29.2.729.g45daf8777d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223232126.759416-1-ndesaulniers%40google.com.
