Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2473TWQKGQEENUKCFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1407FE75A7
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 16:57:33 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id s17sf10106880ili.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 08:57:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572278252; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9eORH1RvArouGgCKqYWffsyp4hk22fcTzf8F8pV/qGMJEZ3nWzKoc0H+xaBKeyaf/
         FfX6X5/E3tWmt9l3P9OLsH51UpTM71h9adnFs8Os/8PQKkBfanis7GoymPENpajzzOK/
         kC1sqRQHfnZLSgFtOSmvu4Wu4raUGTBHeflgYBu1AYHJXR2INn+npRMcfv7QadMZepaA
         d1LO2ygKkNkuUUQ5J3hmqnWHk0FqU0vY40oFA1b2CoOUxrA5+6UQSRWazzstklsjSe//
         AK6/mdLi6cOM3tochyesuXovY9ceioZMYNXEep6P30zQxdK8bqEj8I+TH6fcU6LwPz8I
         oa3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ade7GdYwvNyzFTVwElRr7NBg3P+ePjU0wpUT1ss+Fow=;
        b=m17TRBI+IkFk7gRHcONYDB7LIN9meS7z3nnShhSLka8e/6qfkaVhH+DMswogVSuF6y
         NMK8lIOrZSuOpBgTKil6roMBcNVvQF2E+nYOaVNCHkVuwzOKB+KlCNfIZZ6S5iafy57L
         4s25bPm8P9RP/c1OR++umu3Kqz9C/polOaTM4TQNrGh802bHZOoKscAkduFM1NeecSQN
         TNUjJglYPNnImbiiugV06JQ0bYqfwh8GFZc4R73gdzV5qiNWC6VPKlIgkb1bPk/uw6qM
         z+uXaD7ZRGSU3dQVcW2j10I/XeOZtdjYQSW83b6Tm3RG7JUpQGIF4RC3fo7G3Fjwg6vH
         AP4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rwx1pjEe;
       spf=pass (google.com: domain of 36g-3xqwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=36g-3XQwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ade7GdYwvNyzFTVwElRr7NBg3P+ePjU0wpUT1ss+Fow=;
        b=oKMXhrHzy8MqAEMmjUUYoMoAXK6y9P3qVz8qTAQBfgdvVqNMMC4+BdGUoYy8qN+Aaj
         r1FzzVqGx4SojvJZu2TO+KYUBFrXfXnkj3FilMambAh4nLGhCNgk6NCWe1CR9pg88ldO
         SbbsfURCKc0VHHadGtElArOuYvVRLYdQXc1hzjAJmfN+/+oxZIOa70UxrM0i+36ah38G
         ETiG8if741ewqk5vRctm+/zNDM98pnGuxdWxYyrfeWCArKk8SPRA/FAROS8YaR9F3fUE
         EsHv+iQZFBEdnUtEUXd6n+N4fDadLbr0bWG9cydOQvHygjviyqw1Fjq5eZWmw8o/EpId
         CfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ade7GdYwvNyzFTVwElRr7NBg3P+ePjU0wpUT1ss+Fow=;
        b=NjRJ+bu4R9Figqs7mCvSMe7SLl2NfNOCl6c64ywL/gV8k42wtVkpuOb036SxmfIimd
         lkC6Zhg6YmRBRHCPyDMFiYM7gH3R5nNfMUL/cicu9BnZKp+QlPJluQNJaDuwhZJQhudd
         WkycsX+t6j5FVeG3fInDN+Y4t7YHAF0ofSy3e6qAsiBPMOsaESJYSovkTcZ6eJp8m1nS
         FfOctTkUzk2Gktp9QYHGuqYsOn0TxuCPxo8lkrG15aDVc2rR4r5qLvujG81tYCSFCbWY
         SDudLcsp8b9Y9ESzWVO08o6yvW1/ja+h/RfXem8BhJiMpufE+H07xGYpBUVp1lGY9NWr
         SO5g==
X-Gm-Message-State: APjAAAV9AjAwSQPwv9w3q1dZB6mCPn7EMJ0kVpEjLyLFkBuKgLR1gK7/
	30jeIrqx+36JDNIIjtfYeaU=
X-Google-Smtp-Source: APXvYqwxWu/T6SMnE9yofiIOL0d8NNdL7fCOKvZXbCCb8yyM7S4vU8/+qtFjgKEypWbMTkOHQE8fPw==
X-Received: by 2002:a05:6602:24d9:: with SMTP id h25mr4683134ioe.185.1572278251935;
        Mon, 28 Oct 2019 08:57:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:df09:: with SMTP id f9ls799946ioq.9.gmail; Mon, 28 Oct
 2019 08:57:31 -0700 (PDT)
X-Received: by 2002:a5d:8991:: with SMTP id m17mr18406402iol.52.1572278251569;
        Mon, 28 Oct 2019 08:57:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572278251; cv=none;
        d=google.com; s=arc-20160816;
        b=EVeWf3MHI/wXd6j0yF/WhNEQrp+z/9nB4KPknbU84HVxqW4dVtj8zvIUEB5RZKhlhi
         x8Vy5MjEALR00uNwOjXa9CkMKIg9UPO3JduuN4NrWGHJRctyRhm7BcuBm3XIvzvtGKJx
         /K2vZtFAfx5t8Nq9oHXq68WI9qLYD3MKGH1bDeu9FKnT1Nr57iYrWXa3TCabS4ww46Wy
         yhMSCOQ6A8iPcg54XBLU6X/fHeYzfk5fGquycgGHM+rFI6g6tOVjM6bK2bvrJnfqCXov
         7beWwmh9oI/BdgawthU6IpexgNus/3NLIc5xRPujqkALtR8TLs1/AxRr8bRLWzYwYyNh
         igOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=vl1oAr7RM/zca7FwT/vXMjuwpEGjQxC9D0ySoZ6dSQg=;
        b=woerHq0pUe42+oMoV6xLw0P+991gPD1+m3XrRqhFx2i+aqMq+vaY/fK7tV5zsFiqzK
         lW6YXY1ltsEU3flCIz90jmSkoEbSoGCSsETsZyZ7c63jFhSruzvsgpfsNi7iSIhxyeV7
         jTXKKfw4bnTz1pLe8y/hVxjavSsJBBrTl8GD2jL3F5qbZrsExSX0M0hdcn8S9n3lX4Md
         kbwDPLcu1ggmLmELx+IF6rVUZJiL7QBPiT0sXB6hq7MYP6XFypzNfdsmyhBVDN0JjYyb
         mxWiDliJDNFA7oghH5JdDmau74+Ge7a2Dr0NhQ0hR1PILQA9AGXnc05PMTpNLMTw5Xij
         NI5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rwx1pjEe;
       spf=pass (google.com: domain of 36g-3xqwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=36g-3XQwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id f5si151058iof.4.2019.10.28.08.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36g-3xqwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id h2so8842355pfr.20
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 08:57:31 -0700 (PDT)
X-Received: by 2002:a63:9a09:: with SMTP id o9mr21533674pge.276.1572278250647;
 Mon, 28 Oct 2019 08:57:30 -0700 (PDT)
Date: Mon, 28 Oct 2019 08:57:21 -0700
Message-Id: <20191028155722.23419-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH] hexagon: work around compiler crash
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bcain@codeaurora.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sid Manning <sidneym@quicinc.com>, 
	Allison Randal <allison@lohutok.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Richard Fontana <rfontana@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, linux-hexagon@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rwx1pjEe;       spf=pass
 (google.com: domain of 36g-3xqwkanki89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=36g-3XQwKANkI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
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

Clang cannot translate the string "r30" into a valid register yet.

Link: https://github.com/ClangBuiltLinux/linux/issues/755
Suggested-by: Sid Manning <sidneym@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/hexagon/kernel/stacktrace.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/hexagon/kernel/stacktrace.c b/arch/hexagon/kernel/stacktrace.c
index 35f29423fda8..5ed02f699479 100644
--- a/arch/hexagon/kernel/stacktrace.c
+++ b/arch/hexagon/kernel/stacktrace.c
@@ -11,8 +11,6 @@
 #include <linux/thread_info.h>
 #include <linux/module.h>
 
-register unsigned long current_frame_pointer asm("r30");
-
 struct stackframe {
 	unsigned long fp;
 	unsigned long rets;
@@ -30,7 +28,7 @@ void save_stack_trace(struct stack_trace *trace)
 
 	low = (unsigned long)task_stack_page(current);
 	high = low + THREAD_SIZE;
-	fp = current_frame_pointer;
+	fp = (unsigned long)__builtin_frame_address(0);
 
 	while (fp >= low && fp <= (high - sizeof(*frame))) {
 		frame = (struct stackframe *)fp;
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028155722.23419-1-ndesaulniers%40google.com.
