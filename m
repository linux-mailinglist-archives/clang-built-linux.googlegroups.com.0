Return-Path: <clang-built-linux+bncBC2ORX645YPRBE6WZDWQKGQECFKTNNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A897E3F97
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:04 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g65sf347947qkf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957523; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zf9rUHreu8VfZM1r+ZA4TFPgfcOWQyBbsS7iP4bHw2r0geIIKTn4TSDJShxNpfMBUZ
         OH3IVGLbM1pjjb/8izGh3FJzKP3bG+IEYKArXAVs8GLJSBKsq56+SRfPmyMwDbxFjodP
         L2ZnOkoQJs34rQ1lr9nEx06XVaMoKuQ7Ij+XDYei6zYaAvdNTyezPa1GdePURLw2dBdY
         yy8TbOCjLkaMlNAiziO1cHkLowv2FzTAGyc2jKER9Ol/NX86vlFH1znKFSPjT2D1ellA
         BUNoSXI0UV3Lx62fSLwz4qtdbJBkEYfwQfpEzPttO21re0O0BzqNVkB9PL5wG3UJ3WJh
         I5Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KD4PBcy5wRhqrDXnn8BbXWpCAtk1WevxhCHW1orQjAw=;
        b=svDPC5YkyreJuM5WFurJxaNErHXS+fTZXpgWk7Pu4T4rThdNJ/IKRGh9UK/+W5fYAL
         NU7QZxmuitZTLIfIdlMZi3b1YatkqVGII3xBmHcsWd/gF49nfZurn0APxCZdV1qwDiWR
         YtIv5zd/jtIgrep4JiKzjCF/SEbsaTin/LwBigfp7U0ORLe/CauSW6pzVrJOJds5+lRR
         ae/ketBHut1fpVO+HZ8xnUjLwUSNT9rKafOGNDZJHLCl9dRQevW4ZbJdaVqXJAH9WgQD
         JQYn9jOTuoC+Wl+A6bTg3IQV+kTPYsyZCNSZYPx3IE8yLjzGhhy/tfO1DVNuLz5f7u0K
         P4Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ghul3xFE;
       spf=pass (google.com: domain of 3eiuyxqwkacutbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3EiuyXQwKACUTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KD4PBcy5wRhqrDXnn8BbXWpCAtk1WevxhCHW1orQjAw=;
        b=cQ2b0sW8G/L97sGynNLer/gmkOkg4r1CK34Qj93KDGDmaSLGKOLA1o0EBB/hvvmwdF
         Wkrp+nqPJf5je3o2jPsPTRmBWU/ScucjuIQ8O93/lUVyhPi/XDfTPskiaS0jB33rBcam
         8ozwvFTr54BmjsU8vcGCHtAPfGyObn7mQVnMq08a6icKFAXUWaDeIlNNRm4a8zjovWer
         zk2BQevgHkTtQsqDyy/22dgbE80G828jmrQp79F/BDjN7d1sJYL2KaUpJ2Fswd5P57g3
         SxoxIkO6jP9MxArdxtU8Y3nl1DSJnugIl9Rf/LvxgfTTV8ruOkanrg1KaQ7QMnq09k4m
         J3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KD4PBcy5wRhqrDXnn8BbXWpCAtk1WevxhCHW1orQjAw=;
        b=H+d/xLQRUHYLwKC772ttgpOZvo/RMZMAr5mX3srLEWXNqhiPROuXWM2cozukcfBSDo
         hXVMsu7tRkTVcHMbdb80/Cgnh92t16DnIRDxUP1BulS6kqiqk55xp5aRKnNPoye26BQS
         0z6q52eisteABxukN5V7muTU9+/GnuxFDUSQwxMUsSogufLNCilhiTfz/VYLeN8+sbJL
         gcClHdMfE/HlBsEevwZcN2A0Nod+W2caS2FL/GL1l4JFDgv7hhQvjljlrW+a+VrVFC2a
         H38ldQX3pnDK72YICfFTLzVSnIgkjikq3NZx9Am9ZluSFGQnHthKHlakkbr2JlML0Jui
         qoAA==
X-Gm-Message-State: APjAAAXAkQRT/fHiP0hY0Qwx1ehTG3Nfqm3tZkOSPosNtEQU6Vz8leem
	+FWJz0Z3PiYWejm3CaiQCQY=
X-Google-Smtp-Source: APXvYqxuBe4QuIZAqns2RA2HJzChkrf4urhAO0oTGEwOUKvELpyds8/X9iNsYCPJN+puSws8CzN2AA==
X-Received: by 2002:a37:4b0e:: with SMTP id y14mr153793qka.183.1571957523370;
        Thu, 24 Oct 2019 15:52:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5384:: with SMTP id i4ls1291023qvv.8.gmail; Thu, 24 Oct
 2019 15:52:03 -0700 (PDT)
X-Received: by 2002:a05:6214:1332:: with SMTP id c18mr339176qvv.213.1571957523030;
        Thu, 24 Oct 2019 15:52:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957523; cv=none;
        d=google.com; s=arc-20160816;
        b=KbDuC+IgKl+hBbSnbRqPfGbcfcQjx1JtOUn8PdlPx5BSJ/RHhQuIz2S61JRG6ABAun
         eweZMfup/YJlFsHbIWb0zB814ZhiWwGvyceAJQ3LiK1W+zGbWVQlyjZ9/hGzGI08NGEM
         kV21xiB80a1WB8DOKYN3hIbZ3JCFYAI+xlQlRYgklZKuAMxRGbA4UnLz5F7f+NkVxjWv
         befJGdPV2wIhPE5aFlY3WPwopHnjJRaVZE1LMB9Xxvute5kePa9c6i15ZDgqv8HcCAOx
         5PBbOunwVpTmY9UX1ECwkDkTjSq/pX6tP67RmqQxPhPuMYXcFdIHc1swiSgCzouX86sO
         bGoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+pC1wUGnAfIzdtPt9JYqx48tH0ZogjxIc75X2woCblw=;
        b=vWdREpRFR6f+IE55QzbhAiti+06CpR8+TQXgkuzB24LKyiKn1/ogFem9444SpjODnA
         Z5WhmdyDZcmsmMZHRzU3Rx912RHjK+HPaljgWqGcxC9V6gnQk9NhCnOC5K0RGroD4tnW
         hAH69HyZWSxmisdDSDOoIPctYvNamCfzuqdQqRZ9U/4ai7MRVY1Lz0BGnYK0L+7SYnOh
         eAHO/fXHKHy8fRPFL6sNHnrEw0Zizz3WpN/P0N98xd6PetqZDyp4O0ZJzOzgA9WSDdFp
         zFN59QYOqXPtOxDMw2vL39w7Au+2vSkOygm6Vq83r1gHVQOub+PiDq42XTrFqXRVide9
         wL/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ghul3xFE;
       spf=pass (google.com: domain of 3eiuyxqwkacutbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3EiuyXQwKACUTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t187si22762qkd.0.2019.10.24.15.52.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eiuyxqwkacutbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 11so357217qkh.15
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:03 -0700 (PDT)
X-Received: by 2002:a0c:e6e5:: with SMTP id m5mr375068qvn.170.1571957522490;
 Thu, 24 Oct 2019 15:52:02 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:22 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 07/17] scs: add support for stack usage debugging
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ghul3xFE;       spf=pass
 (google.com: domain of 3eiuyxqwkacutbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3EiuyXQwKACUTBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index b9e6e225254f..a5bf7d12dc13 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -154,6 +154,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
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
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
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
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -168,6 +206,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_task_init(tsk);
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-8-samitolvanen%40google.com.
