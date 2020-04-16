Return-Path: <clang-built-linux+bncBC2ORX645YPRBCUI4L2AKGQETYC6LCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFC1ACCEF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:12:59 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id o9sf9584619ila.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053578; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJ7a2QEFq+r+1bLP7dWx0Zlzn7F6S/Xil7fuS/OS6tsMmsTP8WwyfwNh8GqNdxRVVS
         OQ9KCGJeIWJBczfytt5XwT6mrJo/CcLF6HGNAbkh6/GYhLlNXWgR7kZrVhHaR4goiIJ7
         kgVCeGLylGqqbFZ51v+RS85kWaCBPF8oNrUvnOeBJQ6k72DX5JS7I0LgagcBVkF/Qffj
         JahIK7zE2YzPeJlA/vR8Y1bXlVt8csY9HWi7Zi2GawF4ej95AthF+o3+Gpxj81vtncjP
         ZThRI3cZON56kfSK4o6rqqgy1AW4qJcA1vxHlOVmjF2dL/K+Qlc5TL9v876VeNetiiEW
         rBGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iaQRrLg0sdCsSigiNGeV1MdEZs7MCUUa3O/HXhTowGw=;
        b=itppa/xCPcX/RdTitd7JuH2Yu2ojIUHlEaf5+2J1/26CFUItpV5J8UEU7cr9r/Cldw
         MIqiCzXHPpuCIqtIjyzMQz85u8OxgUPEC8Xv/evCh0tjM2lXUksW4Nxm5IWqmhjmlGdN
         rrH21Ih7/IdC7OI2myI4jaGA35c9Gp14yN18v+FXNWBy4aY5SgWLId9YJ/2BDUdRT2LN
         j7LU5P5n9eLyM8xmefRj98sPGbuJP/l68kXbyXMwuXaKpd4WOxvcbODEU0plXyXFYgNO
         db8FIhPZoIKzsMpCKBafB2O6MRyquV2zExo4neKYgc9EyouSfkhMUQVOsdmzBTwK9kuz
         +XRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oaXHw4Oo;
       spf=pass (google.com: domain of 3cysyxgwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3CYSYXgwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaQRrLg0sdCsSigiNGeV1MdEZs7MCUUa3O/HXhTowGw=;
        b=jb1D7aIU2NNvKQJET01PgyAyDXapd9Y/31Qb2ZvctKLs0ZOW1LBTfW61JVRq+iz2JC
         Ov4P0v1PrWMA3ejhHGaKj3jy4TQT+ekBQV+FYjNOXp939OtdWgUWo3jZzjOP5OhKBkX0
         7LxF4hI2vIWeMetxZkU0zSZV+hvKsUxZViWCd8DUov9ZNrJUR3FIu1D3n14rBtklPsz5
         oHoF9AT+rRY1Qd9I5ER/SVlQCDcR+SArl7Vku7VvzjVN8/DcJOxf3EcADiJTPU8HnH/e
         VNj6xO3Cv3D1Z8bJxnMaGQTDetuh74wy5IT+5cTYikoW82fpoEO8NP7Bz9rBhcsqtMxx
         nSZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaQRrLg0sdCsSigiNGeV1MdEZs7MCUUa3O/HXhTowGw=;
        b=IJ7fAZ3bPrsfWw6SRUshTs3SMiHgmV92MW3DyssLmCAmh45MZsOoyRYRIKAP3A4mYK
         E5UG5OtOYI1nVm6IXDm6mfbtwYFyddPCz1V72CoS8wfoi3306iJJB4uoOH8lXKfFM4Ed
         s0GqNMt5tw5QVQgIr4ieTgYvwkyZbbLJ0IX2cNjkW4NKFlDNlgItbk7TYBo/4rnTw5b4
         1wKikV3NJDyzomVd9u3g/ipI/WvR8/uhq8PVErBpiv2oHkHMGfDrsuOwVjauLNk34F7q
         UWJWw08I9J/5pk5s/YkjJ97zBqUiXSgr/xqtwBkurVmI9n5El+jZTPEB9IG1YoBYCg/W
         Ccqg==
X-Gm-Message-State: AGi0PuZzcrWAbRB4WNDEbNjKQI1DmT55zOKJIv/hUqM426EzMtP7LDDs
	/9QPFSH0pNoyFtz3lqEB9IE=
X-Google-Smtp-Source: APiQypKs13DtSwgCwhC+vbU+oGDgQM/x2+pf287zeZS0dbro0bMHNK2BSmwoOMYASPolMor1iY8OOw==
X-Received: by 2002:a05:6602:22c3:: with SMTP id e3mr31794326ioe.75.1587053578442;
        Thu, 16 Apr 2020 09:12:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d2d1:: with SMTP id w17ls801900ilg.4.gmail; Thu, 16 Apr
 2020 09:12:58 -0700 (PDT)
X-Received: by 2002:a92:1d3:: with SMTP id 202mr11768006ilb.77.1587053577823;
        Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053577; cv=none;
        d=google.com; s=arc-20160816;
        b=FDtBecLx2UbWWPtQWx6AHDP6eDpLpUOiGqccPuX5FIVIzeutbF8fP8qYPZcVVXJKNW
         TOHcKLqTLEt0DjfFW4fGydHD5+121ekhILqimpYz6+a3o/7TRrLvV+jMRUWUONHTDA2n
         0LJMlwj5Az/B5n3OLA827xYu8Ujo9Hw1L/8ZhjaOAg9PYoSEPfSfRTMZjI6lOc6+Y5vy
         WAHUodDn7MJf4if+9vDubBCtXdGiiAZ1P6M1g0T0OFEyj8SEcTrQNoM4N9p9XTbzGLI9
         p7AcQpQZ+3N1P5diudtKcA/ohQZteLFKPaQcvJdVWhPCuNVfDSZbR1NK5f4BJinpwABx
         zNpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0zoCAxwf9k6lfoo3cxV3l2Ts8Ighj8ILmpKvjJbqwvo=;
        b=GEyvDpYNhs3ajORgVg3CaVXzRA94LVJyBSLrK5uZba6ECVTKfK4n8FYC7vJ1nPOvDX
         6tBOe4ylE46ZiKxj0ieGDgVMuMceijvShfNBGgm8dvpTT2zPqWikezJ2TlaH1nehf01D
         wdXN/m05JbnJkpKCfXCeuBxNssFHncrsEUqcetEug0bpT6jaYy6K0TVU8cIm6dbR4Tbc
         KExZLRes9PPA3hrk/6LML09JqkKS7IvRSCrVi/+SCb60L7SXGqBAXvJ8FWffUrv5BHJ1
         2VIyIpjrZza96cdmHSeZ6vR20Oztq04/uayB3BcC2qeT+JqSh6/GTP8p5CT2p6vVffHs
         cTUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oaXHw4Oo;
       spf=pass (google.com: domain of 3cysyxgwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3CYSYXgwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id g17si55148ioe.0.2020.04.16.09.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cysyxgwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id np18so3346592pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
X-Received: by 2002:a63:d049:: with SMTP id s9mr30834027pgi.384.1587053577150;
 Thu, 16 Apr 2020 09:12:57 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:36 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 03/12] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oaXHw4Oo;       spf=pass
 (google.com: domain of 3cysyxgwkag4emyufaxhmzqzsaasxq.oay@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3CYSYXgwKAG4eMYUfaXhMZQZSaaSXQ.OaY@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5245e992c692..ad74d13f2c0f 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-4-samitolvanen%40google.com.
