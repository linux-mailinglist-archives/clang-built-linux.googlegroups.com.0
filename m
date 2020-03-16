Return-Path: <clang-built-linux+bncBDTKPJW47IKRBVE7X3ZQKGQE4TYKXBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 41719186D53
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:40:21 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id y11sf14380045qvx.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369620; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsERSd8R6QDrtrF1EmICc9SiZrjH7ehLXkxeGNhU+BO1sQ8m8kgmIFOOEC8L8U10Yi
         yq0M34NQQBiOpeiCe+TqA4mBX0OvckGus3xwPSEM5Fz4JTDhIjwy9M1kWw1ufr5yd7ne
         llKVCoQdps1FlOnpc1TNFwi+puJ8uUsU1CvAU0GLTT17IQw6fVTNvQIDaeBBsbJo09O/
         TBLi0sO1+Lc/8D5jFkNZ6l69OHvSjhmGWg6ETCeMh+Bwh6/2bNuF44hChe6INShLnQAS
         NW8r5N9OHK2e0q0tnmGmwaK4+zjcChLv/quovSofKml8vMVuE8u3dzBzBqFoT37d3W1i
         lStQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+XdjEbJwt8Usg4ERIq45eNClxVp2S/fzSpws6FmDT+w=;
        b=CuE+Tl0vW8ABqEMUBUenWFIv3KQvcA3rbOmBRtQJWVYJEnSQcdvg7uH1TvL7ZOrCF+
         R7iVqbL3Fhzqi3wYg0Xe71Ma2PiiisNNzC0W1mFFttQw8KdZHcZrywXHfFfB/x+CwLJX
         g/uTy7XKfWTnNTyCnNn4/upsgnjwHK5IdthrhXdj7B21zo4yn0QnU9I75pJbjP15wp4F
         OMyX2SijTXmy5I2ke/DmzluyPQJeqz+7fneq95bNWRqzopvLUL+fvnj0+to/ZQqO9F4h
         KoMEKV4NZPGkboKc+qvvqaN/sgqs2rXxPDK/jM0LrT9xBJFvlZl/HH3bJkxEqzHPwNde
         6n0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CZszvrzm;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+XdjEbJwt8Usg4ERIq45eNClxVp2S/fzSpws6FmDT+w=;
        b=UQOoFkfDBD7w1x+6QVfNJxVC0xTJuH4AlN5cZwihqBmiACpwta7HndvfiqUoZnm3jj
         Jzstc9UQBgjZ/2bYdr6jRYhzIm4ITsbaWOrapxEfvNjWy/ypjNjxTeSXfo7IPCzlb+m8
         pP4J3iiS6wPv/sN7qdA/dBfG2OeOI+alpaUIStxlwSrmjzo1v0MClHtO5024QTnGloH6
         WApLrnH2hPrZjwKJ1OYgG2ISfQCu8DddcihJY06A++7LuFDgLbqULLw05+OKwTUVW0Me
         rQSIRyJlVB8QR29idZYlKpl1FkmdtK3JoDv65ln/yZUqxVHJDerzhp1/DczxrVr3Fq+r
         cEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+XdjEbJwt8Usg4ERIq45eNClxVp2S/fzSpws6FmDT+w=;
        b=LPqwhkPVSo0MoiuyHANByM2yydLlCxqvrcSorqdSjJlTgX2yY0+Onq3CiWwd99F3b7
         FO/TXm2TFqAy+NCWjwpAQSzLqtnCTqm8uEBIp0jOE74l9s11j9zizaqdlQG1tWgm90Lb
         UVP9QddsLeymyuPucoKCdD5y1K7VStniHn5oY0cqoCe4EzJo82ObKchUtnvAPv08JIQl
         RJfHBvGvehJGlSrH1I88wJPv5dOH9Cvwc1eizZo5F3gjWZjGyqNoJBTAQgzOZqm2R4Et
         i7kSM1CfvnuFuzNT23G9ygnzQuoFRMlXMpM+Ybdwv5ZQ/FxBOTF6QevooIUpuZH4EZTz
         dn9g==
X-Gm-Message-State: ANhLgQ28qJPkBDyV+Wv/GfMeF1y6aU3xlsgRH8L+UHB1i/NVhZrJ2v+s
	mIif/XfjFeSU6iA1mlsDgEg=
X-Google-Smtp-Source: ADFU+vtvJPxOhSzAFshum26uHfrQju2IvbdCIqmkGrboToH9ivw4WOTZ+Fok+ku+xChs6eNIMBQZTw==
X-Received: by 2002:a0c:fdc5:: with SMTP id g5mr110404qvs.194.1584369620314;
        Mon, 16 Mar 2020 07:40:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls9026024qkb.10.gmail; Mon, 16
 Mar 2020 07:40:19 -0700 (PDT)
X-Received: by 2002:a05:620a:1118:: with SMTP id o24mr26863313qkk.310.1584369619891;
        Mon, 16 Mar 2020 07:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369619; cv=none;
        d=google.com; s=arc-20160816;
        b=FbKuwAP3PtvG9hoEEGg89hod6wj5oSj6Kg6yso9e5Ibaovem7Z6hfuJ+BJgpXP06ny
         r8zHPkacL7ReJMndDIFvb9mPhAHi1jnjAxZenScN/D+UJwedWl2bTHJOnWGLCSv92Vkp
         3aOdOtEmA5ZIgOA91jtEMET0cajuq/FaQrROnzVFBwUujOble43J04G4WFsjwdECiOuF
         /yMCMCCh20n5Y4f7EkhWfHgkv5MXoPn+7UL9o5W80HnewOVuuoitenSE1cHDc08a6Mf0
         v8LkBTox7dQO0P4wEbJyERcsMYTiGN179vfHDy5PxYcDHPTbl2gxsodnxgpRSzNkqDd7
         P0IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QHtnMaoK5O9FegkpkkwNmoxCiRNZGD2z9MaeDc0+/xc=;
        b=X4cZvSVnEa60tPGGKLbzOTFtEQuVMRQhrQ4hlOhBQP+fRezqn+LJfjz3LYJ2yrhrvz
         jUgVnZX/KkZzWDG7RE92kgVQcAY7N0Uy25OdB3M37Dl5FaVau3AW2Dgd2A/KJYAEmn2k
         SgTMP0fdXHRldQnez9p7Al19vXsKTgx3E64Nhi5LX7nGM7vQ/L7XvKU39nYnNomQUVrp
         ZPcz+Pk14vq60wDpsrMUs4HvbLH2WTEL7I/baepvWqwWohoK6qCEALRi5NpFYpBaY27I
         bUbEUldWKkP9dqmi4GtI6m4JAUzAQYJMKJMxqc2kg0CFB93HtufCFpHsCwm8r3yG9M+X
         kMww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=CZszvrzm;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c6si7608qko.3.2020.03.16.07.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mj6so8322810pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:40:19 -0700 (PDT)
X-Received: by 2002:a17:90a:2a89:: with SMTP id j9mr25550721pjd.64.1584369618925;
        Mon, 16 Mar 2020 07:40:18 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:40:18 -0700 (PDT)
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org
Cc: Dmitry Safonov <0x7f454c46@gmail.com>,
	Dmitry Safonov <dima@arista.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Russell King <linux@armlinux.org.uk>,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCHv2 08/50] arm: Add show_stack_loglvl()
Date: Mon, 16 Mar 2020 14:38:34 +0000
Message-Id: <20200316143916.195608-9-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=CZszvrzm;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
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

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index e1be6c85327c..00455b5bbf8a 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -247,12 +247,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 }
 #endif
 
-void show_stack(struct task_struct *tsk, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *tsk, unsigned long *sp,
+		       const char *loglvl)
 {
-	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+	dump_backtrace(NULL, tsk, loglvl);
 	barrier();
 }
 
+void show_stack(struct task_struct *tsk, unsigned long *sp)
+{
+	show_stack_loglvl(tsk, sp, KERN_DEFAULT);
+}
+
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-9-dima%40arista.com.
