Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBBMTUX3QKGQEUWOPWOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E044E1FC1BD
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 00:36:54 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id z28sf32907ooj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 15:36:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592347013; cv=pass;
        d=google.com; s=arc-20160816;
        b=kh1rUgE6AyyHwWAcmAL2EdxAvbxlxOMZmTka9h6Z00C457a+ujYChYFrxnR62dBZMd
         D/IloL3DdtuuOwmvCSB0wgPw7O4F3I5WJW3wJuL/LW9SjOLFoY0ityrX6FDvGvYPg7To
         +UXxRANsZWKnMVCpn25koXnG53uIRCcKIG7OA1nbzZgVcZ1BJEhXcCWIixXqufzy6iY7
         uVAGjntJzZFzuX5Z0FP9ZVGXX8eVZ+WAfqX8JP/cn6nX6DfNN4V044RJqUi1ttsuvsqi
         oA6tX1wrdxl7JagZxj8yhkfdxmnKLgC6BQTvB5w9tt3XQ3vPCkNo9/gMWlvjHliQZFwY
         wiIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=sETEkp5j7xnHkkWhbLodmtXuREhO1XAl2DVfynb5AiQ=;
        b=kCUoVpOWVOswD6v/M68HqPAFyQAz/fg7ihq5VTvB1xvG4OyyhzW17eTW83tr7CI/Bi
         znxsahEyDmaRVyJC9q/w5sF6ViZGkarcx/IgafaBtLoxV2s0uNdBtvcJfE/bkDmlCeAd
         JgCf9Tt04d5EEA/VWiCbtbPxCta+zxdRbgJABMDmQOQqb7attOwCh7+617O+YJPumAXZ
         +3KIjukZfWzNUxnK227zSMtWVFUoJjM4g10hGRQq5r2vPhxhzFyMUHPQk5bE/A7tojQ0
         DL6QKAHJ/Y/zEP/nN/A3As19Hwj2IbMzmyrsvXHSzJMu1N0f62pUFbednbxyL/FyGp9m
         ZjOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HheB+LyC;
       spf=pass (google.com: domain of 3henpxgukebkmgtbjfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hEnpXgUKEbkmgtbjfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sETEkp5j7xnHkkWhbLodmtXuREhO1XAl2DVfynb5AiQ=;
        b=oolagFZyd6WBIguX1urFlIaOhvOC6xeQ+Ul41ANSjOCya3OuJhXGnXkmP7Cckf9yhD
         WXfnVukfYKim97o/OHyAFS17c0qKj5ORLz5/QBTk/NR6przVZS1rU6cehWnmXAOvc2re
         4rVRUfwasgGXrgS8fvgBBF5SxbkBEZm2cLpjT+NdXbHydSfiF0PhSv9rkAF8vCMX5qxg
         cYt/YnTtpdVr1IkAuQMArYr/vwpZtWagoeKfAMDIZ0u+xdnb4vE2E+V5c67V3xc6QpHj
         z9ijc5Mbfenc2KS91jwUqf93xB3UnnIes7RL5A0RIdksCMV1YM9jVRUjk3rbjppsjUqY
         dALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sETEkp5j7xnHkkWhbLodmtXuREhO1XAl2DVfynb5AiQ=;
        b=R+lLKM1fjIYYx5ta5zIi7eAf5rL8nrQaZlHSoXlkqSzF27a/Iutmls7LVukCLj6maL
         /tghkhzJsTdODVMV+KVOMxyPnymCxNYZJk62Ste9iYio2C9F1cFrOOgH0/uCzNNUj7j7
         EpdiKbHNWXPIQ9d0HRZXexjM2C21gV3dQrRhVUg6gTxfAv36fYmGOtjfTOUaFqnO59Gl
         omnW17IncXluadBPtzx0iyW8PM0fTiYqOQlzaQfmRSu4MME2yeLntWoOhOHvV6ojaS0X
         z4eZ7u6m8EruyQD9CBe3Fnn82+ZqGY1OslRy+cbELS7GtXvr3R+ftGhUEzuyMNgpY+Ac
         u72w==
X-Gm-Message-State: AOAM531HCmVRTSJix/5xIyI5z2c9GG9JizpCgkhqSyYdV7svuER1ymgP
	/r7SeZq/DQNTX/o5O9D9V1U=
X-Google-Smtp-Source: ABdhPJyObvDQ9MfOos8jc6B2sMnWSgvTNTT/Ha9C4VNeVUJc3aETzGFT3P1sz7+JIxd5CllK3fqtnw==
X-Received: by 2002:a05:6830:1d1:: with SMTP id r17mr4358921ota.19.1592347013579;
        Tue, 16 Jun 2020 15:36:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls48384oib.3.gmail; Tue, 16 Jun
 2020 15:36:53 -0700 (PDT)
X-Received: by 2002:aca:560d:: with SMTP id k13mr5442416oib.114.1592347013259;
        Tue, 16 Jun 2020 15:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592347013; cv=none;
        d=google.com; s=arc-20160816;
        b=sTANLwsnjVJbvH7Jskn39WauccfKpvl7GifkfrHZeFHr8Yql+7mtlY/A8QTAh+OrW2
         vKUB+iw3BTJgSh5v6sGjYdydf3BZM3kFNJgyL6jwOwCMKyRY/Ma9AaTpI6FgLy5Ez5Te
         3xiKjFvA45PbFoCuIQBJ1VD75WLUza81Sgv3SH7+6i1q+KtU6jpmznpegp7UET9Q6Pgx
         tPxXzcu4NU45PKmQLCdvNuqKeruQman75Qp+FSvv3GnjxET/ANpqiTdHauG1ElbZ4g70
         PF2XkeVSCG46liDDzybQyobTmYALFoFXbd5wHrOttmL+KYVUoX/9wRI5P/zssjfu2DUm
         YtfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=cHSpMAjXfyGfwJeb9KkrKwdJRoh7Aq/xdZj4zd+a3E4=;
        b=0i3EPwPOpjEr9OhhOjm55PvS2pXJBXPM9UpITP4Mhh7aeK92kFEzwfxubpLoG8vDHK
         u171zPL3qYUyhwn5E63Mi6teVtS6/p79pNrNBlvKrRtsSVHEKals7Zev6IhRePPdUVKm
         E+U6EpAmyXkWbN6n9bXaaN2J+F2G910iTml8bonprbc6g3vTEGd+wFXe94uV+Vh/Hgia
         LkE/7ymIuXv+Ltq/T3zNDQ6eXUb9iNOGRUShL+kyTdxHYCP+RuR3XVuWSrhcnTh/bItq
         v/1yT6VOp6g8to3eF7MToiNGn1y6UGP/nfY+ShGbkLbuGDtS4hFyHytYFO0Tph6v1ECF
         SY2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HheB+LyC;
       spf=pass (google.com: domain of 3henpxgukebkmgtbjfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hEnpXgUKEbkmgtbjfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d25si852291ooa.1.2020.06.16.15.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 15:36:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3henpxgukebkmgtbjfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id f16so308797ybp.5
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 15:36:53 -0700 (PDT)
X-Received: by 2002:a25:d8cd:: with SMTP id p196mr8176207ybg.55.1592347012784;
 Tue, 16 Jun 2020 15:36:52 -0700 (PDT)
Date: Tue, 16 Jun 2020 22:36:33 +0000
Message-Id: <20200616223633.73971-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
Subject: [PATCH] Fix unwind_frame for clang-built kernels
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux@armlinux.org.uk, vincent.whitchurch@axis.com
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HheB+LyC;       spf=pass
 (google.com: domain of 3henpxgukebkmgtbjfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3hEnpXgUKEbkmgtbjfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--nhuck.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Since clang does not push pc and sp in function prologues, the current
implementation of unwind_frame does not work. By using the previous
frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
kernels.

The bounds check on next frame pointer must be changed as well since
there are 8 less bytes between frames.

This fixes /proc/<pid>/stack.

Link: https://github.com/ClangBuiltLinux/linux/issues/912
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
index cc726afea023..76ea4178a55c 100644
--- a/arch/arm/kernel/stacktrace.c
+++ b/arch/arm/kernel/stacktrace.c
@@ -22,6 +22,19 @@
  * A simple function epilogue looks like this:
  *	ldm	sp, {fp, sp, pc}
  *
+ * When compiled with clang, pc and sp are not pushed. A simple function
+ * prologue looks like this when built with clang:
+ *
+ *	stmdb	{..., fp, lr}
+ *	add	fp, sp, #x
+ *	sub	sp, sp, #y
+ *
+ * A simple function epilogue looks like this when built with clang:
+ *
+ *	sub	sp, fp, #x
+ *	ldm	{..., fp, pc}
+ *
+ *
  * Note that with framepointer enabled, even the leaf functions have the same
  * prologue and epilogue, therefore we can ignore the LR value in this case.
  */
@@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
 	low = frame->sp;
 	high = ALIGN(low, THREAD_SIZE);
 
+#ifdef CONFIG_CC_IS_CLANG
+	/* check current frame pointer is within bounds */
+	if (fp < low + 4 || fp > high - 4)
+		return -EINVAL;
+
+	frame->sp = frame->fp;
+	frame->fp = *(unsigned long *)(fp);
+	frame->pc = frame->lr;
+	frame->lr = *(unsigned long *)(fp + 4);
+#else
 	/* check current frame pointer is within bounds */
 	if (fp < low + 12 || fp > high - 4)
 		return -EINVAL;
@@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
 	frame->fp = *(unsigned long *)(fp - 12);
 	frame->sp = *(unsigned long *)(fp - 8);
 	frame->pc = *(unsigned long *)(fp - 4);
+#endif
 
 	return 0;
 }
-- 
2.27.0.290.gba653c62da-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616223633.73971-1-nhuck%40google.com.
