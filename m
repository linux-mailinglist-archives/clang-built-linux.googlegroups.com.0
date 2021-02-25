Return-Path: <clang-built-linux+bncBAABBS5732AQMGQELXZRQIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D04B32501C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:02:04 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id f140sf4322940qke.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:02:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614258123; cv=pass;
        d=google.com; s=arc-20160816;
        b=G9LWoDgCVYOdWwwUhIPb7rDx1IFSpkfApTLWOik1xlOfrXEoBhy1PF2tWSUl4b2HmS
         R3V0WEn9IDG5L+v8dQ/1nGapOo/7xLavvLuwpu8S+zaMr4D5hB7jiU5LDUpiOxRrJrzN
         D1HyaEa+wLwngv2DI7g04kJ8Xng4NTEBmi/fuNUqtM15nFAqIpm4aNH/SVt6T29UIQTO
         3Bep3xRgE5ocX6sJRC1s8mn2B1V9ISPIXCMFj8qz6pxluenppgUNak9ziZGuoL7b57JH
         +V7ow//arvRG44IdRBeWP3wG9cUYEKxl0xebMHUc+IK3ArBpd+lpiLyljLEg+0mH1Qnx
         ELag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bvFSedCIgLBMMkShplzJfMP/nrz+wW/PzbL+uVU6p5s=;
        b=AsGG4zezAqUdyb98F/FfzhfHpjOMmDRVj71GZ8jsi9uLuwj15WULw2vyUAfnz0sEDf
         UvN/5pO5/SY5MZDq8oZgRRoZmh+IhbOLjDtB2+Z3iGC1mflO7nUzIGFaKVPK0xBDAswD
         XSjgQg2iqlEiYbpBm5Se2r6kFH1I/M2VppjxH/44o/7sJ3l9g4WBcnkCRl11qPy9pRRO
         ehJirQs7KjfWNdMhHRINLigZQfJnagI8BEh3dvRrbx2DGNh6SM6hLcDuSu9vir/0EbDG
         /QNDE4Efs9VXeqnyobXTU7HSczfr3Zv/tD43kc6RwhgnqEEgr4JwTCIAhpP+Zs8vmewT
         1VLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=msjS1O0N;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bvFSedCIgLBMMkShplzJfMP/nrz+wW/PzbL+uVU6p5s=;
        b=S7rJ+E0lhbN3JG2KqCHv5RKGTiC3rTqB82WBqrfbWYhomM42r8n9nz2MMyCceHjIgS
         9J4ZJwrzX1xrJ1lBkpS17vxqHTkP3lJfCMe2MPgTtTE7oJRlG7Xtkkc1Khb7qDUV/55F
         U+wSXQTfLTSrtPL8AKuNXd7ZEp49JFGlic7fqDYVDGT90+ZTduDHFdJWZLCKwbKSlByW
         JDuiDaorzVvXAi1en9TrfUsA8DDtZk3AYDFVffIVBJNrjVhY2HwaIVC14rNICpaPCxkp
         7iExptC7N10fhQLLjTt0Thphy5BB9WMfHzuiDUxUkmkoIXv9/K2BTgdbcmEOJmR+Jo5W
         WwWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bvFSedCIgLBMMkShplzJfMP/nrz+wW/PzbL+uVU6p5s=;
        b=iSxM1awUHHTzle118fit4jnrNJu85rqinF7x5mFpwl1SliJImDZL7fnBapXdmuhpll
         IFFQpl5/xKPpfCZwrmWrhx9oR2ojnzYs6FFvjJBIUsEaKiCtF3X434PlwRGslERIPids
         74FIxXlqIF9VioOI50lECj7YFvj6CKO1wh+BllqqL+XHmVeOodFYu/MZaVfs222YApRv
         CogvgWbmcqTf9nz02Pbcxi3uN3nS+O5t6TMLTlgDsQQh8dNQzo6N67K9ziLzERz47v6C
         3EJW+rN0Gq8DGssnYtJLbhT+bWt9a5qGOA7hndUJezXE88Y1ofB29auxCm0UWdWi1OhL
         XJsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oMcmqov1m/2jeNCivFeuJC1rsx3urdjQHhgXxy9y1wjWqzHgC
	os0j9ufgWvppxIaJ9yNbqrw=
X-Google-Smtp-Source: ABdhPJxe5a/JJTUB9ckTwyBTcU7XggM/JciOu4gpvD4FQfS+UJN7cG66O4nEo9hc5e89/xXGrbWjeA==
X-Received: by 2002:a05:6214:d66:: with SMTP id 6mr2404221qvs.0.1614258123377;
        Thu, 25 Feb 2021 05:02:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls2087269qto.11.gmail; Thu, 25 Feb
 2021 05:02:01 -0800 (PST)
X-Received: by 2002:ac8:6ed9:: with SMTP id f25mr2133322qtv.352.1614258121759;
        Thu, 25 Feb 2021 05:02:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614258121; cv=none;
        d=google.com; s=arc-20160816;
        b=EN81aNIk7/bbD/Qrcb5gCTKzI/8r/vB/KPZkXvoFJEcGzeVpIADYPg2mv8y/qD8wZI
         mgpr6vvqKF2FOalJgdMVxgrnp3LZw6Wn1DvfSnWHSNYoYNIycmup/9ufciFLCj4kgLyu
         Og1UbR+S0rBzEDLVW/iuB/LIlT/A2dCbpvt3D6SoDXQ/LX8El+IAMuYl2BdqoLmlBFCT
         IoJQH9MkCZMRboOxwdCrog8bdRJ14RtBzvloaYCK866WdE40LNDzDvkhQJxtFL4jyBRF
         eKTiAUVLFQOobj1B8i10IJE3iih0XB39aSQ/rTcOD7uwsXRRiGxu8d+Xy4WJxBd+zk4M
         czww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7h/89XWOXzCsGrJF6sIYwAK6TF3Ofkz/SR/2uwFTLDg=;
        b=oihv6ayfWHORHQSmT5ebBvS1Ah+xvCFDYpqpnAfzyVoRHu2tYLXP5wjrdXj5dL+XJF
         tcGPMdldn3ysd9aVVEUqJzhJt8iA62PSo9/A4AFR8+sDoZK2VjiQlZTKP+MoZW0hzkY/
         IsH8GarMT/5ktAKVn0rRxZgdKf3kvxmIqBftppqmqM3ZtTfRL60kW3fjXCHNkjUyjKWg
         wRA4GDoPWPQPkEEzvIyqfLj+Tenr9O2JYO/v/xXxWfY9AI+ds3bt+XKXg2BT7/lTy5oW
         ru4cCdKbScHzDVXBK8tjC2uiy5ob5be8qYpRyO08woQXH9eO6+gYKDM6yVcMi3KdTmtH
         girQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=msjS1O0N;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si224046qkn.0.2021.02.25.05.02.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 05:02:01 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C613E64EB7;
	Thu, 25 Feb 2021 13:01:56 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Prarit Bhargava <prarit@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Daniel Bristot de Oliveira <bristot@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Valentin Schneider <valentin.schneider@arm.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] stop_machine: mark helpers __always_inline
Date: Thu, 25 Feb 2021 14:01:46 +0100
Message-Id: <20210225130153.1956990-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=msjS1O0N;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

With clang-13, some functions only get partially inlined, with
a specialized version referring to a global variable. This
triggers a harmless build-time check for the intel-rng driver:

WARNING: modpost: drivers/char/hw_random/intel-rng.o(.text+0xe): Section mismatch in reference from the function stop_machine() to the function .init.text:intel_rng_hw_init()
The function stop_machine() references
the function __init intel_rng_hw_init().
This is often because stop_machine lacks a __init
annotation or the annotation of intel_rng_hw_init is wrong.

In this instance, an easy workaround is to force the stop_machine()
function to be inline, along with related interfaces that did not
show the same behavior at the moment, but theoretically could.

The combination of the two patches listed below triggers the
behavior in clang-13, but individually these commits are correct.

Fixes: fe5595c07400 ("stop_machine: Provide stop_machine_cpuslocked()")
Fixes: ee527cd3a20c ("Use stop_machine_run in the Intel RNG driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/stop_machine.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/include/linux/stop_machine.h b/include/linux/stop_machine.h
index 30577c3aecf8..46fb3ebdd16e 100644
--- a/include/linux/stop_machine.h
+++ b/include/linux/stop_machine.h
@@ -128,7 +128,7 @@ int stop_machine_from_inactive_cpu(cpu_stop_fn_t fn, void *data,
 				   const struct cpumask *cpus);
 #else	/* CONFIG_SMP || CONFIG_HOTPLUG_CPU */
 
-static inline int stop_machine_cpuslocked(cpu_stop_fn_t fn, void *data,
+static __always_inline int stop_machine_cpuslocked(cpu_stop_fn_t fn, void *data,
 					  const struct cpumask *cpus)
 {
 	unsigned long flags;
@@ -139,14 +139,15 @@ static inline int stop_machine_cpuslocked(cpu_stop_fn_t fn, void *data,
 	return ret;
 }
 
-static inline int stop_machine(cpu_stop_fn_t fn, void *data,
-			       const struct cpumask *cpus)
+static __always_inline int
+stop_machine(cpu_stop_fn_t fn, void *data, const struct cpumask *cpus)
 {
 	return stop_machine_cpuslocked(fn, data, cpus);
 }
 
-static inline int stop_machine_from_inactive_cpu(cpu_stop_fn_t fn, void *data,
-						 const struct cpumask *cpus)
+static __always_inline int
+stop_machine_from_inactive_cpu(cpu_stop_fn_t fn, void *data,
+			       const struct cpumask *cpus)
 {
 	return stop_machine(fn, data, cpus);
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225130153.1956990-1-arnd%40kernel.org.
