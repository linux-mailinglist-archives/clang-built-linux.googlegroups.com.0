Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ5XVX2AKGQEPYWQ36I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA919FA60
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:40 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a21sf215067oto.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191299; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqkQ7XkGxVL709tTUiRmymMCC0L7GBuT6wQfcl5rH9cPvD5MMuhU5PXrvV8TpDDFKD
         vLVBCvcAVHo0jUa0w8T0JE2o7J33cFP+CrIvxc4ePEg7vk+XHelGJ8moidgsuEeXBn7G
         cY22uSIr7Jm7xpf9PLAJKiJMmIBUCk5/JFE0AAKRlIxfmIsK+34Sfj2dKjCgI45vsRvc
         MaAkCyKJj8dJSrE0Iy55yIXQVLc3AvRIE98Z1735zt2wp86DgEmlXU9dlP9jyAZsK0zF
         IYDwJ2BLgXs67X1sewymsOhhqXNtBztz8z/Ywugr0le7Mm9fo9GHhoHDZXm7kj5p5hFS
         3J4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=a2ygvcQL1ULkHSUUlNsgfV7L6yNWH27z21DcY/xq6Ac=;
        b=LohC5ufceKqw8WTuULQV8oS75m3cEk8RS8U5xPP6X04EBtBRjOUPZWX5E9ladCsWB3
         M3psmroh3p9yNMlp3dHywiTfPNDxifsK1e4agxq/AAWqYiXmnrAEbaEt4POmWy/NtZVJ
         M+I33FtdOPAm+3NJ5HmbU5LqOz2IbOXu30IDDxUteRiGtPtvs1QzxdIa94EXf9BkDqgp
         MKWXmwQyN4a8bRh8HDUzypIMB0NQyewZqf/OTXE9CZZhff0q2JPxeRzAuyod/fwzCXej
         +J/JSdEv7+/QmVkG5GaLKv4CISC8BEEGPVsD9cu4696dzN6VtugomjMzOrQQ9J7OmQEz
         VBIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IPPdkNAe;
       spf=pass (google.com: domain of 3wvulxgwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3wVuLXgwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a2ygvcQL1ULkHSUUlNsgfV7L6yNWH27z21DcY/xq6Ac=;
        b=P4mYcDGyhR68ruGU+U7FotVcjEUN2/6y0w/1ZhLx9Rc2CBc6yuikRwr/TrDHAW73pH
         4gczDgBsZLcsBLdsA0VUy+CI8Zw6R1bwzcRHYexswBPU061DYxDQk8BUITPumvDJOZsx
         lW7t35WiyKB+mlaeWZD/Rch1IuUO2ZrYxOgeFM4v5YU6bzsoJve6Lr+t1/06aSOhzwaB
         CtkvKbYfDjkKU6QdXN6Q0Bie0OHL66a2nfrpKfA82OT367eGsdgtJlYbI+HEAgun+1uf
         wxqNrr8WEAxMhBTlWWc6GdESAxNoza0BxdpUQwfhElHbxvMw/SuWLhozHsuF7YmFmFQm
         vqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a2ygvcQL1ULkHSUUlNsgfV7L6yNWH27z21DcY/xq6Ac=;
        b=j1HCvo099Pf2Akdatef3s9bm1p+c6LEEc+sxJkH7Fe1qorCtwrvbUNf40L0R2qjiIt
         P/Gmn7LrL+KZf2Xow05+8EDCnUkQMV1SS9VihmOuXlzoHVxO1RT5pjwT5A8j4IevR6lQ
         imuQCeIda/ZH2Q0G7xMKCLQBXJptn+w0R8eZM1+2G/f0XuYKptUFqFRsebGmv6F4RtfQ
         +jJJM5PHEfHXSikRVDl/hNRM5tSeuvr2ZVB0IF5Czn/UsjVNN8gmJ+5U0yADGuHQJyEc
         7pK+/fkD3n7TaTRdzZjoCPdPVLXY4IxDhoNBGrFOWk1NO8eGNB4jCLh/ytA/T8TejemS
         5zoA==
X-Gm-Message-State: AGi0PuZhCLp6Dk/vCMv6THVb/TfDU4jfVGPLKVUCWlCK2NZh+XKZsvp/
	L5xY2o8VZYPO6/sYGC8/ZSg=
X-Google-Smtp-Source: APiQypJyq8gHv/bcerddhUQf1cB71fVm5yicTAvROc67NM5VXXhZSK5bxqFv/dVXJDcXM2lA0nGpqg==
X-Received: by 2002:a9d:b8c:: with SMTP id 12mr18350048oth.205.1586191299226;
        Mon, 06 Apr 2020 09:41:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1ad:: with SMTP id 13ls3726ooy.9.gmail; Mon, 06 Apr
 2020 09:41:38 -0700 (PDT)
X-Received: by 2002:a4a:e495:: with SMTP id s21mr18049525oov.79.1586191298790;
        Mon, 06 Apr 2020 09:41:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191298; cv=none;
        d=google.com; s=arc-20160816;
        b=LOrLfErCfzDdq4JoBxUZSmB1im9FwYNMm6JTkoKG8/Pv0v8o85mKzejbaBLAC7iCeD
         2beSg1H5mpHNmVwk1O/u7YJouNW9QYY0uDHtfkPyow1UzizSLxcnBKviUj0Zd/BP4d4Y
         GbHLrTixWj3YIl7sVkONG3s/8pHC/uJ4l7hK/0uqqwdgn98ZMvmd3PLghDzJQK5UceqQ
         lHD41tj9YwuJsD+p1l1TLf2Ckltp0d+vnLrTmzBOZCdostjTfnXDYbw8C5eMR8I1tk+7
         TgB0N+9YSaKjmDAwXu6AvGoJ0shsFnOsxFsS295yVyKta9hUdZdZkq0kpXgpi1+xB7K0
         FO6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ummeb//L4UGzSQ9YmLkDAY3kIJvHpvVlDZif3GsciVU=;
        b=UjF/azxm8OqG7TDoY45vt97HS2tS6CLJ5OHNRJ727gV8SReBcBKgNdZzJmEKnwyQ4E
         guu0S+QKflTYwp2S3JzMzUCLSjxSM9a7h50r8XZW1ufYMZ1U6smMMbd6RSq/BB7ES1j5
         Bz66++te5y/ZZP5mcQpa5ev0WLqk7zjH1cequSOTjbMPnKCQt0+wHJ2H9nUIrz+59DyR
         4GB7rN0oha+YnPOV0+0p2bW5Z1HDug1pIu5Q5yymP2sLAYOg8Y9LNmY5WA9qg73BkQro
         2J6Ji4Mew02jVDbFH4llKfgvtqC26L9MZqgsDu00NcifsVcPk5bJzUIt9KQwm3zYUK1w
         PCxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IPPdkNAe;
       spf=pass (google.com: domain of 3wvulxgwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3wVuLXgwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id d188si42262oig.0.2020.04.06.09.41.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wvulxgwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id z8so35228pfj.16
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:38 -0700 (PDT)
X-Received: by 2002:a17:90a:20f0:: with SMTP id f103mr196700pjg.88.1586191297993;
 Mon, 06 Apr 2020 09:41:37 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:12 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 03/12] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=IPPdkNAe;       spf=pass
 (google.com: domain of 3wvulxgwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3wVuLXgwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-4-samitolvanen%40google.com.
