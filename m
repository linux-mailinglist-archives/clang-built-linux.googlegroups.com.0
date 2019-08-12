Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFV3YPVAKGQE6QJEZ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6BD895C8
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:34 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id t25sf6028632ljc.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580694; cv=pass;
        d=google.com; s=arc-20160816;
        b=iEhulrdde+qEnkVtToknCzUe4JjSQL5xy6ZV2nAF0MFWhr/yXs7JO73xU68T9rfugE
         7lMk8ao/3ndgGy1WnGFBu9P2xvnMpx5KABg6B5XBu8d6yCMClB4CLn6b3ssLf5dMtjE7
         usrnGmvkLSu6neqwjzXPOXoWd0/FDR/MKXY3S64QJBUsdKBo59SWKFj8m1h/o4bkTBwc
         Mu3j/kdc/crjoYGwrgq7AmlngESWV4qu2XAB419VadE7FOgUoxDki5i2rCK13WZHBvK/
         QTTZtzZlZ8Bbd8ztWwbs4Mwhq1o6xbQrcUHqVtwdSEdaErFXLw/puzb4a12pg1Udc3oI
         cMvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=l9Tpf9W97ceaOhvhEecx2sUbkP7H2oCobcTcLVrAnfA=;
        b=IUk2MRaCzwuc663zZ+eqgyiHKKJLTcr6Nx5/zr9s3TnmsOQgD2v4alSit1b5QyQSDK
         ySKSOTZEHRix3OCH9sOFBWcT2ztUz871dm340kiSX+JvOLllX+6Vn5z3k49nF9o19Jnf
         X2EQ05d0oV/U6sV0Oe/Z8WJzMfYlmBbADpLUcdJ3wgQyN7CX37eTz+VXVKHvdhuiXUp8
         y/2bDZ6H30NRYp1Dre6NceVmiBhuhQbtmFhqHzfRlUVhdh25ZFy7Ei76M1ap/93e4kyD
         J5LqO+LDRtRwlSpCtguQ8OIAvN7vfOxxSpH7x1Gul9nJf9LqPZ2K1Pej7L1btAwDPX9B
         zDYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REkzW2FU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l9Tpf9W97ceaOhvhEecx2sUbkP7H2oCobcTcLVrAnfA=;
        b=AY3PYzoe9W3vNi1e+2YUaSfV+gRtTdXNY6EnwltGMLQao/1uESZzCJ2vy4KytX3Fb1
         wS5iBrs0Qt5NEEtd+aaosSHgM0tpwG/Kz2yyB+fOi4UaDWRShLGjVGL5R7rLGSg4ZZAR
         HlDR39MlGrY3g5msD5QW0lgtpUUYsnh4oJ0HIesmSu8PPV7FROTz/l+0sGHZlFoEsbK6
         NK+QCrvS0mQeBmtAktIu1qlLloB9EBL6qVm128w9AIgqui5u/KLGxmEY84djki2bp67/
         CBHTfddY7pzi4CfbrE8ly2SCQu+j99McKn/wyQrXd0HGYZSc54WKL8Hesut4Xb2e+KzJ
         nFpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l9Tpf9W97ceaOhvhEecx2sUbkP7H2oCobcTcLVrAnfA=;
        b=NSzs01Wvymqb7/c+PSAW64mLKuix8/Lk9dWKCP51H2Fsn9O6PYpMPQfrCGePh85DHW
         Iw2heMlA7SUmXn+uQapsotDoxg0i05v4Ant12IZcD6P/0U9eLmL2ihyJq3YrGYVF+3/d
         UTxwsuapWfHFgKlQwYj+7TL/lSSm3O5hK7a4gsaYcxNDYAUW8D8pz8ziH6PGSgHesImu
         nZUMQmsisB68XMu1j+dvcPYQigMcvyLVPdXIpGB3jwV4QWawOqysu36JHd+JT928Twzc
         bO3ysqlmeAFL7f4dyNBErd+407FzqMrJw+RBZVvoBy/kWwIa4QeSRUrHQu+Ui4024V5F
         TGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l9Tpf9W97ceaOhvhEecx2sUbkP7H2oCobcTcLVrAnfA=;
        b=O12ogZaowlHJRSTMaqgZ4bLmIll7LlsCl4/cQZvE/EKCLFUgyFhOgSXIWYXqlehopX
         n47zRFK0088rWLrr6gf9TZ9IBYxAcQq6+lwUO1LBwFiti4d0kLemubLrLL39L0NY+R56
         OoqqDREfZipIWHeFmUA96uyuqkbR70hrDGR2rTK78FIQdLRaQaBiiQUsYgzGlETZzdGk
         ZJMNTuuRExsFy9H4TV7p8bOKy0NM/Dz7l5y5PJzvdrNR/v6Hu0kbuM3m/dDrZ10ROHqH
         87Wi7FgGBTR0jhp6NUMGKkMt+7YNmb6BHJwFHE5ezAi4zcbyBn648CNsxNuuz3ELjdcD
         pDYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQPQXu9xZvw5bLyZ4Jf2FnG1oOJvOqhCsODnXpitzAxsbdSzN4
	qhkzvQLbUjU5ZQLGIIfSTJg=
X-Google-Smtp-Source: APXvYqwAoHODcGEyjlHO8EQGSIC2PD0dkzzNLdOma9VYzcKCE0iFVZBaGlh2X9dW64s4rK8L3DzNhQ==
X-Received: by 2002:ac2:5492:: with SMTP id t18mr6190202lfk.41.1565580694133;
        Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4ef:: with SMTP id s15ls202554ljm.14.gmail; Sun, 11 Aug
 2019 20:31:33 -0700 (PDT)
X-Received: by 2002:a2e:9c91:: with SMTP id x17mr2150346lji.103.1565580693735;
        Sun, 11 Aug 2019 20:31:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580693; cv=none;
        d=google.com; s=arc-20160816;
        b=GHTt0uPYxRdOuwaBMsGDO2BDVxlBD82pbPAxZfpRGM1t+ZTXFEFQ24y40LAW88mY6p
         RPIT0iik3mD31BPAfAQuMdxDvvTX/hr+vvhU83jCZyKlfmuHiUZl3MOp/RVKjYbPUn9n
         ThtAdJHAIha6cE9pKXfq/TvizVkjzgNioX4Klt4Ig/oWWMHGiUGwClNDKJNg8iF6zr6R
         6ek+ZzM6ROq1DZuNCuAdsSd2UuqUSCzoKzD/c6HJGNm5/vVfPqPM0BlzLapohkUdlng9
         C8TlnSgoR4EFvZCuKfbhAUzT8TLc2wUrVM6AnRmcbQLSMUsM4vnUPA2SJu0fD06KNn8l
         mzog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CIiORaxsknShCfRL75nn07wOJCPKFADThWQpO+7rVHs=;
        b=wVzEAqrqEqDyCKesMnOF2guicOJQ5vcxffgBaI1+wPIo2eJwwbRJet95IEv2O2SuXo
         Q5rwj6Od6660yrKb2v1YShVp0S03bUQyN+108orkcVQ6ieAc5waFi2ICoVt3B69ZZcqD
         VlhY4MJFfZeLydWEYOErkgE3FAauxv7m0/qQOMBTtZP6i/H6HJ7RtyEm2OpB+up520kR
         YxYvnUuvGUOrigBro19TSvjFrtV0wfC6/M7u8GBrEGRnyxSmrglxd7t5GvZZ+bqxlOma
         hIQU/Cm5DmG8tFgiYUeefJvJmWPBRXtRpQc1hNqxUHEgVT8aPq29ciZEy6nvURL+dg0I
         VSTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REkzW2FU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i21si57771ljj.1.2019.08.11.20.31.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id q12so13055635wrj.12
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:33 -0700 (PDT)
X-Received: by 2002:a5d:6ccd:: with SMTP id c13mr39563914wrc.4.1565580692982;
        Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.32
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 2/5] MIPS/ptrace: Update mips_get_syscall_arg's return type
Date: Sun, 11 Aug 2019 20:31:17 -0700
Message-Id: <20190812033120.43013-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190812033120.43013-1-natechancellor@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=REkzW2FU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang warns:

arch/mips/include/asm/syscall.h:136:3: error: variable 'ret' is
uninitialized when used here [-Werror,-Wuninitialized]
                ret |= mips_get_syscall_arg(args++, task, regs, i++);
                ^~~
arch/mips/include/asm/syscall.h:129:9: note: initialize the variable
'ret' to silence this warning
        int ret;
               ^
                = 0
1 error generated.

It's not wrong; however, it's not an issue in practice because ret is
only assigned to, not read from. ret could just be initialized to zero
but looking into it further, ret has been unused since it was first
added in 2012 so just get rid of it and update mips_get_syscall_arg's
return type since none of the return values are ever checked. If it is
ever needed again, this commit can be reverted and ret can be properly
initialized.

Fixes: c0ff3c53d4f9 ("MIPS: Enable HAVE_ARCH_TRACEHOOK.")
Link: https://github.com/ClangBuiltLinux/linux/issues/604
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/include/asm/syscall.h | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/mips/include/asm/syscall.h b/arch/mips/include/asm/syscall.h
index 83bb439597d8..25fa651c937d 100644
--- a/arch/mips/include/asm/syscall.h
+++ b/arch/mips/include/asm/syscall.h
@@ -54,7 +54,7 @@ static inline void mips_syscall_update_nr(struct task_struct *task,
 		task_thread_info(task)->syscall = regs->regs[2];
 }
 
-static inline unsigned long mips_get_syscall_arg(unsigned long *arg,
+static inline void mips_get_syscall_arg(unsigned long *arg,
 	struct task_struct *task, struct pt_regs *regs, unsigned int n)
 {
 	unsigned long usp __maybe_unused = regs->regs[29];
@@ -63,23 +63,24 @@ static inline unsigned long mips_get_syscall_arg(unsigned long *arg,
 	case 0: case 1: case 2: case 3:
 		*arg = regs->regs[4 + n];
 
-		return 0;
+		return;
 
 #ifdef CONFIG_32BIT
 	case 4: case 5: case 6: case 7:
-		return get_user(*arg, (int *)usp + n);
+		get_user(*arg, (int *)usp + n);
+		return;
 #endif
 
 #ifdef CONFIG_64BIT
 	case 4: case 5: case 6: case 7:
 #ifdef CONFIG_MIPS32_O32
 		if (test_tsk_thread_flag(task, TIF_32BIT_REGS))
-			return get_user(*arg, (int *)usp + n);
+			get_user(*arg, (int *)usp + n);
 		else
 #endif
 			*arg = regs->regs[4 + n];
 
-		return 0;
+		return;
 #endif
 
 	default:
@@ -126,21 +127,13 @@ static inline void syscall_get_arguments(struct task_struct *task,
 {
 	unsigned int i = 0;
 	unsigned int n = 6;
-	int ret;
 
 	/* O32 ABI syscall() */
 	if (mips_syscall_is_indirect(task, regs))
 		i++;
 
 	while (n--)
-		ret |= mips_get_syscall_arg(args++, task, regs, i++);
-
-	/*
-	 * No way to communicate an error because this is a void function.
-	 */
-#if 0
-	return ret;
-#endif
+		mips_get_syscall_arg(args++, task, regs, i++);
 }
 
 extern const unsigned long sys_call_table[];
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-3-natechancellor%40gmail.com.
