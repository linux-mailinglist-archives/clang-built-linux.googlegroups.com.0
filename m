Return-Path: <clang-built-linux+bncBC2ORX645YPRBS4EYLYQKGQE623XLFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECE314C031
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:48 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id g15sf9282646qvk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237387; cv=pass;
        d=google.com; s=arc-20160816;
        b=t1K3OgDWVaSJjK1z3VX30kcDjUbjLlfU3YUvwVdLhZ8bzb3HV3Iul/L1UpeVw3XkA8
         aM9xZEsUAQYMI6EGtwMHGHzr1jsZU2ifdI1ZkjelhcuFatj5ey3ix2eXOI6yBVpaMj+a
         MPptpwKC4sKV+HieDOsxuI3/A/OGHCwcKPO5yeoPnQtjJYkxwP9ViDZVGfpAfAD/WYKs
         si4i3g1lrj7XRlwtUY2+1kNBoyvquwT7BW58e7xehUItP8eMOYgvpn3RMjA4m7kFw6P0
         OOM0E1raVh/8ZVSm5nKKjJUgVSuM9BBhCxw9PW2ewufd2jBiYYRC3CspqECFVAe2xNGw
         AoYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=uADcSTXS7X56QsZePIT3v17onobOMWQGiLXDlIw5LDI=;
        b=Ar/TwccPi3qJ6CSZCi39GYMsV/WCOuXNoUt0TAY7pDEes9ISd7FI/WBYRCeqeXo+i7
         Wd5EPbiDfGvYS5yqOKfuoPdTCAeFcSln8peNLL12NBd2fCRajTgyLhj9MxEucYuj8wZp
         zxYmpXtY0FZCef32mVmLLcGNaaDKn7ZcVvDyrpX7SoCQwBlPkvSZBioGvLXqeF6huYmU
         dRtPDG9k5/PXEMc+zzlFNRMh0mbRGJtCMrET4bMZkcErKzrAxn+BlnfPhChj1HgMuXov
         B9d7pI6XtiRl3eqWgW/BqGbrK3sMJ0W+fLguRnHKcGpYJPPKHgCGAi5vIbu1zvsH8yp8
         a0CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bFhtOIbc;
       spf=pass (google.com: domain of 3soiwxgwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SoIwXgwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uADcSTXS7X56QsZePIT3v17onobOMWQGiLXDlIw5LDI=;
        b=Z+Nnd1CWCHHpBdT+sDt9LZysdbw+lOCthO9R819QfDyQu+jZYo0Wf0/lINNXmr3OPQ
         sGC1qE53X37EXMefsW3shcGZzOlVl/VxtZDifR50L//NFUUtnHx53yC7cZt/awdF/SN1
         Bko9b/E8gE3JXeQDJce3mME+eeoJBDMEleHn1T4YbnYkisRUfrkp/8rBCNlRM/G1BUCh
         b9v3FYdNYGtXAgJpo0SaMaGBY6uqEkDcbX3GmKRs+HS20qa98N6zq+eCDxsJWQCQj8vG
         VC2fwGmmD/cS2zWgZ3SjAxcHGGGu4qY8iqlIgsnsjsKvStOy/nA2FwfASGjG/bCeMmE8
         Cidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uADcSTXS7X56QsZePIT3v17onobOMWQGiLXDlIw5LDI=;
        b=UPYt7M8RmKjq0GdZTdFCB0mdrF4RJPk1q3V39es1BCA8FctzPsuzwX+0hzFNlXC5NY
         RpF8gO0m7AAZYWXDg64NQgKVHS+BdSUcl5eNfiu0t36pZG6vY329NMnKFQFSduKK6wxs
         bl8hcPYDIHY052HwFpxYZv9reSgI+3H0b9yxS7/iEm2mXWeQyZHeXBDi3CGU7z5T5QsW
         3ng5alC/H5VhOIFDDM+yLFkphaa9bM0YKrgmj9GLEgK8kqHMmd6oWTBPNLUhYMqVNemg
         np9l7KaT2u1d3VMSVNT4O4jV+mic69v6Eoi0OKtc+tdJeE3mjlhF13+GdwqwwsrXCsoh
         9Osg==
X-Gm-Message-State: APjAAAUqC1+3HtU+8TipertfKrmpOdC0bLONs7nXCZ11G1nLu7X5r358
	igWUQDPYyQa3snjKF3k+1EQ=
X-Google-Smtp-Source: APXvYqwuFV3Qs4jCngyMrHDT42DBMUkYOZt39VVFiM2JoIHEoztIRZgGy2UTJ+qFO4VdrYOxxbWx2A==
X-Received: by 2002:a05:620a:2119:: with SMTP id l25mr18841401qkl.248.1580237387283;
        Tue, 28 Jan 2020 10:49:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2746:: with SMTP id n67ls6855910qkn.8.gmail; Tue, 28 Jan
 2020 10:49:46 -0800 (PST)
X-Received: by 2002:ae9:c317:: with SMTP id n23mr23791225qkg.356.1580237386679;
        Tue, 28 Jan 2020 10:49:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237386; cv=none;
        d=google.com; s=arc-20160816;
        b=KiXBkfoWVLgvUPjh9zDQ2Lbz2UdorI36GvfMIoIYfNTbw/f9pEVJgQdtKD9AXjYUzr
         r4Cc9M8eirsiIGwb+HLVmVUOPHn8X5hqB3hbn/RQhTA5ZD03nqGkfOjseCNW5pcu2VJX
         sKDipvPhVaYPnCGTJWJ8MnHTL8inPo/dRC3KJpte5MopsWbskFeuSOUPTKHEfvYERbGW
         1VzcHSjlszCdumoEAmDzBMnxFy2tWrW/q298d98RgM+HzTxVr+aKjyGn8vgi2nRaztU6
         BiqVTbr+RXiUv4MCQz/a7kh+ymSDMA9dI5JIiupCApPN1WsljhACyrQEQGVGnwk2qf9D
         6Y9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FRYMM1qoPJhfGiG5OWEbx13i+2jzqMbf4H5LKO69CQU=;
        b=dwtBn9LA6kjnr42pJ3KnsdATK/qBuYzk2LuYA90kZrmozcfEr2nXgCoOjD0c5ufOto
         SJJHLdd+EpVMWAnw5C4W4jZle5kR3QR35e/1eY9G/wb8YsG+DgbZdueTtCijEFIAu4TE
         OausXk+jYYn/rdcWwhf9FDGd5d3uD8+0nK+IDVnznW/auoixkZjE7S29LKGod8wT/F7S
         XicIR6rj+Jpf/WBxjQ7j2gPUaji34kZMHGnL8TcA/yWCSZCkUf9rv1dtQHLR+iDsHzWV
         2TVR2VmcGklMeRnHTjv0qQyoDr+kxuisCjdMbZSkIGZUcDC0qmHCZ0e6R9/+zAf0qWHm
         sibQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bFhtOIbc;
       spf=pass (google.com: domain of 3soiwxgwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SoIwXgwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id c22si527706qkk.0.2020.01.28.10.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3soiwxgwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id c1so9276162qvw.17
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:46 -0800 (PST)
X-Received: by 2002:a0c:fac1:: with SMTP id p1mr24192377qvo.231.1580237386265;
 Tue, 28 Jan 2020 10:49:46 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:26 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 03/11] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bFhtOIbc;       spf=pass
 (google.com: domain of 3soiwxgwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SoIwXgwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-4-samitolvanen%40google.com.
