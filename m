Return-Path: <clang-built-linux+bncBC2ORX645YPRBNW36LWQKGQE37YWBZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id DA043ECAF4
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:07 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id i207sf4451157vke.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646326; cv=pass;
        d=google.com; s=arc-20160816;
        b=CU/Y6q7NBOxvlfkMaM8ASE94DkJ1dRrsILv4EPRP2QZBG04PD5XeKOwrSughQ7hKlf
         28x5k0dBJOw7zPwFgrU6PfZ7yLhjAP9qfLvVKapHyfSijOGAXZ3klBZLyMQgEAiLkisp
         Jmyft6iehYWM+AiUDPaq4UZT9edG09ko3Pz7fRtKKezXS9LHgGORuPWxGsBnp7YcNOLH
         NG/v42yFUnzzQXredRrtVrRVVmgePG1iHgiCbtRL8sYW6wwNQ6J2AyFw/EWVQBrE5H7p
         qdEZoHOB0JmVqaTAeNd1xdG3Lc8KyqWsdU5NNEomoj7KwjIHe5CsYK+i8GGHOUbMV/KS
         RurA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vc/e+6JMVdqesYIaJDhtiO4kXYCQlRgmleC+Mt6e0fw=;
        b=rTYtYTqtrwFX4zTXGnXSQBRTtMeQreRMVcJ5MuL2JgdqWV66Sp8iH8Y//lIv5fmVXQ
         V2JEgDdwQoAu/MNrFkSLkQFf2AIC5oSUSx549f14U29u57e3zAbOOnzPDt2tU8IoGBti
         LmZcfr5tIyGQHAB1SBSzHTykkcqJenYxtejCV831PoTq/Fd1P256jOVFNu2YaQam0Au6
         fd3xisBy/O5MdUbWWCl6GztcpWtEJ9Ui8zkrvYbeyuOgxXkOomK0XcHpwz23YAQiO70d
         JYcR5f8pYxqRnSf0a/1BBXZ6dzV2LQ7LOQgs07mz/0OCIfRsU0fZ/5AWp+SzVy3P7bdk
         0nug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q3YTCGLY;
       spf=pass (google.com: domain of 3ta28xqwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ta28XQwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vc/e+6JMVdqesYIaJDhtiO4kXYCQlRgmleC+Mt6e0fw=;
        b=qhnB5g3n8qU21Iwq1uMDOH9XgQHf5QhUpjkGbxX0cEDHfGnyq4w2xJGTiXPSHbJT2+
         zK11CGUrbwsQ0T0Kb+KXo76QHOM4ZD8MNi5mTix3LYzwZl4Nlkyn36rKol4GzlpTAo+S
         IJhPefRG3dD+9WoRNKpVFFZrdkwX/vLQm+gvmP5hufkky5cJ3knjgelHwufn6XGm1nIg
         TMoWf8wHFQwdtaOkJ9I7WhrPAZCc19qX19V08obSBgiQXHjC8LtbDAZPnepk90DzjUsx
         U8Vzrl2w4EtnE+NsjgQPKoobsD3Ex6ZHTUDD0X5GaCsVxtCnT0VfPAL0xqOT7Oa13nbe
         MhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vc/e+6JMVdqesYIaJDhtiO4kXYCQlRgmleC+Mt6e0fw=;
        b=Sqlb5XC9XCLiX5QOtscKeuoPt7Bnjav40T7MWIm1rByL6uw9ux717ARlO0zy2rTfY5
         7Q7iSfmhBCTusdaysPnUZkPIKvqmMsfnxFRLCtnSXZo+bxErYkbTmFyY8h5UtPm6dOnA
         DUsYjK6iT/HjH7L+/Whjpcww7fmih64IrUfWPjVO0soUaKDEY9EuvvlHWMN1tELcJ2ak
         9lirjTMR39zvP1M7AwKEtZ1iXrcvHmobT50DXHJ0Ipt58Kc9JgLwlUl4qy8Zw4Kk2YO7
         XoJk2sJ2DfQUKFXM6Iywtx09uHMbgZfqVBnuHe+SWMJ56239qV/uJvM3pyH7BFclUIcE
         1Htw==
X-Gm-Message-State: APjAAAV+5Mci4BYKl7Ngh8T6xWlIiE2uVzDyu+3GHduIZwuYe2zoJQGA
	yInX5MNzmJ5nORvcMUvFYRo=
X-Google-Smtp-Source: APXvYqyJJo7OO4qJzvLfJ1efa5WfcA2KEi8ILx3u2GXb1h0tuoUqua3G6kXt5HToATgFr01ZJ7DJMw==
X-Received: by 2002:a67:f288:: with SMTP id m8mr3681787vsk.232.1572646326812;
        Fri, 01 Nov 2019 15:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:5d8:: with SMTP id v24ls699414vsf.6.gmail; Fri, 01
 Nov 2019 15:12:06 -0700 (PDT)
X-Received: by 2002:a67:324d:: with SMTP id y74mr7003548vsy.193.1572646326336;
        Fri, 01 Nov 2019 15:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646326; cv=none;
        d=google.com; s=arc-20160816;
        b=PyODrwDRtyDzYBeYs69QG/K7L1WjxWBKN5J7U6ajxszRRuJSAg0/zm5Wcd9uy5/A8X
         s1NrJL9oPwWhJVNEFoR1CJcGkwTYUFkoHlCwyWfkOYJj0CQbRq27TC/MaH4O/DP/ICEp
         ipWCsC7aB/l9Ntc62+hn1gSxW2nUcB/sO/U4q3bGRLqTCfZjsgQeMNRTLQjszk2WHG1r
         m9LO3vZy5HcqQXbm3Ykbh1KKtIdUKcPfoEb4QyVn3/rOiNRyhtwFIJspyH6BLc+mhqtI
         wcug/1tfdWvZgMb5EdQquzbvzXHPMY2Z+UXSn2RCSVOJ1a2Q8JScHPIaWTx4W31yvAIE
         OXcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=E806Ihq7Qr5kwAxZ8O8jq/5GK0i44oON304BuEfvZ08=;
        b=tFGFUfzGbQ/QAyStHzwF8kH42XloLb4Wrzc337w44Ykx1S59dbr1DJZxhPS9eNq+ez
         R5xeafHZS4ZNzhe9EsPFZky4y5TepGHvtQMMoHeR8bsubyvABcZckItZYg4bx+OTQiO1
         hS19NrWwJGeG39n8lAuz2EG2110gxaI40QsUAmIV0F36sw60v7tqpWdUy7YnxcVjHfJT
         3O0S/DHCncm0ASEJ5BCe8MIONZ2Kg4J69JrYFN6C4l919ZegiAyu4liYFUaoIO3BcF3m
         kBcw9OR91nqyxTksHfgm0LAlf+Hz1xJzo4KZGvdvnXMOiSkyLlYm1zDsy5AvMDe8KfgG
         4MpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q3YTCGLY;
       spf=pass (google.com: domain of 3ta28xqwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ta28XQwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id q7si362165uam.1.2019.11.01.15.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ta28xqwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id e13so1780745pff.17
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:06 -0700 (PDT)
X-Received: by 2002:a63:7015:: with SMTP id l21mr14741976pgc.200.1572646325115;
 Fri, 01 Nov 2019 15:12:05 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:37 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q3YTCGLY;       spf=pass
 (google.com: domain of 3ta28xqwkapyqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ta28XQwKAPYqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-5-samitolvanen%40google.com.
