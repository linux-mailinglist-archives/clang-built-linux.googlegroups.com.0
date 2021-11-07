Return-Path: <clang-built-linux+bncBCA6JPVV7IARBJVMT2GAMGQEEJEXAJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B86CB447249
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 10:02:31 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id kl17-20020a056214519100b003ba5b03606fsf12826750qvb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 01:02:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636275750; cv=pass;
        d=google.com; s=arc-20160816;
        b=EE5+fX92ULOGm1dnTey7nZpcsKU1fcIa8E68O6sX3DaqGm3K4wqyQelY7LLsaeO/yS
         kJuoEQUH/4QhDkAUi7CZhlQwde4Z5StMu+sOW/Tmp6ol6UMJ1KMK9bbMs+5oDGm7Zz6q
         cq1Qj5R3YiRUGqW5b0rCi1Lzx6FQsfGh1fI6xb+heo4kvAra/9hGwWLYDpFdUjZuj1Ia
         eI1Nzopo2YTIWo7hXAzle6VWhHtT3+2w0zmWJyMx3JJoUEYB6r17/+BJuzbsVIX6kFQP
         BLns2uJCgfNgBdCSk01AkFags23gdt2BS5zWQDMxXXPojZSn/YrawX5kHdxg+JSJRlpY
         Hmww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=MTl8ayDnJh1v2FgyAmO0jqO3fzTvwVkzWw6iMLs1KMk=;
        b=VXL2Fe5Oscx76zY1hmgriujSVK9nHVzV98Ei/Oakd4JKi/Wr6QATehG35ELDrFJZ1E
         bXcqeUdHtHiscH7bpxeEEk5MIv5dQqDxL5FWnZ8g5xghAULjWL2ap3Zv5Uro3jU6SQMS
         by/3qN91uavPApt+u9qdgBoUrXTvX/t19gvjKOHZHYcxoSakL4d+hsqPZ81BzKJjJb/9
         LEE2AMbqB8OXf3mfykNiow+n0J89ldrqcDMe5joGs/ixI7Td7o6lm/az5kf+t+lBjZl8
         qX6zqOJs9K2UpR77Zozxe2Qjp/ZbGr898/I8ss0m1C4gav/Vs9hRqdMDJWAPNXmkP+sr
         GRGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="p6/zq8Ga";
       spf=pass (google.com: domain of 3jzahyqykeyiu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3JZaHYQYKEYIu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MTl8ayDnJh1v2FgyAmO0jqO3fzTvwVkzWw6iMLs1KMk=;
        b=k2uVhJmzhRSw8yzrxcQPrOLaruKruMPVDo3dKpBndesqTijcsN/PlNPeOVeH/QxuM6
         fATY/KHu9RWL66/9H4MB5JYu7bd5c5rwejcGihGKrJ6YJC2VEtXbBX+J7w8lMQ8nDCga
         J/ZbxqHPVncJ5qnu/zLgaPg7Mdls029BHPnSoHdO66Nr97BXY8CfJ6v5xa3KUysGssRG
         7CogWPA6bAow4JPBMcwE0fjmQ8S0Akc+BgXqIL7+vQUx9sq2+I5PaO/BrRBvVLugn8BE
         BrOVt8NcFYO6pk8+6d2R1sKfPYE7tqUBCOBwbg6dZg5rHuByUXHWm8X4IGlH9MwipTjB
         oMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MTl8ayDnJh1v2FgyAmO0jqO3fzTvwVkzWw6iMLs1KMk=;
        b=n22xvVi06F3HVlGa0pOjsue6ykBWMH0Wq51MYfSmVQSVcml08HPL1CudRyE4PoFKxi
         /6EL0yHwDycW1BpYGJ5ce8axwEB8nwJuUJBhcUl/Q1N/LvKqY763M83szEK4zmKE1HLi
         f2DN8r6GHFZ0N4qejE5IIASexfzrUBcUCzP+2Ssay7JixNiETTVgPerqx97P+56srSmp
         S915P5dvOWXI/wsv6aWmvuFjAQj3UpIPIHy92toezhGtAnI4kYNPqphmYQjPkHM3Q1ty
         m8D9/AIrUV03T7oBuJoFzbS6n19+CC+iDp5VV370DLEIl6n9Zxl6b6uMkmc8iR5PD5fm
         rJHQ==
X-Gm-Message-State: AOAM533J1GgRoPhrXjVaJMUEQpL0jY3vR/i8N0gmZoQfMWEpN239exm4
	8jNaLFUkhN2Qn49+/lPqv1I=
X-Google-Smtp-Source: ABdhPJz5dIs5tKc+DknacASdSLsW2rrQ/QWFIYcWOnAP22+sJ1aR1gjZLIDs4fn6HSiRCUt1t3XIrg==
X-Received: by 2002:a05:622a:2d5:: with SMTP id a21mr57112285qtx.48.1636275750497;
        Sun, 07 Nov 2021 01:02:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:19a2:: with SMTP id bm34ls7317458qkb.1.gmail; Sun,
 07 Nov 2021 01:02:30 -0800 (PST)
X-Received: by 2002:a37:2d02:: with SMTP id t2mr4700972qkh.171.1636275750095;
        Sun, 07 Nov 2021 01:02:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636275750; cv=none;
        d=google.com; s=arc-20160816;
        b=iWN04kGMhIvWEhHV/D93VyE4zetLSsmQI502Dijmv2isDrtHFQX6XWvtKOdMY6izc7
         Sd6fHi289Qts23ILFbLoaoMUVtGNYnSaatOt1gI4KgdEabVNeYlCedGXNYFFS8NOCRcf
         3Xm/+/alhzBkKd0LY4PWbdFoXJwAWMM57rt1KrTG36kx8M4xwggaZW0wiZCGpRYDmZL1
         uuAbmXi0jkpGdoeUIJ4SSaNoqEimkRcIShFa8n3iNurmKdKLWEeikKmlcTzFfPUpkfbJ
         mZGUmvZIbx05yt3jKnYs73Fsm5MBvLC/etTl8NwHqNfOUlidyhwMuMXbN9iIzHtdRlsM
         Wq8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=qeeGJyyaKpHgFTabVWWnxTKPKjz0cPTAaB0uJXliMx8=;
        b=zBJaPlMH0smN9BAj6O/CUtiRYIbepanYRbi2NiQjSj58BCLoLerjBJA9y1TBz1CuKQ
         hynDKuu7kML7FXfCTzGXrgcPZox8UAPoWt12gP0DD+AC6o2yotCeYRj0n78fOFy7umVg
         shKvO4OjMGUYBknpqBgrt67vTz8tzSU/rF4pTF8hDfG07jE6OjTZnXiSOKtXn9/oiWnx
         YXMqHhpatqWKhNJYnXOs3U/X63KG8afBxe9bdYepDxttaIROGhDmLajbw5WTYxbWRbHY
         ionebxN69DRF0XaugK1IQzUHlVXMnUsMb0cLU8tQnj0uma/YFV7wUICbgj7lPrrv/iaT
         /b/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="p6/zq8Ga";
       spf=pass (google.com: domain of 3jzahyqykeyiu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3JZaHYQYKEYIu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id g16si1222043qtb.2.2021.11.07.01.02.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Nov 2021 01:02:30 -0800 (PST)
Received-SPF: pass (google.com: domain of 3jzahyqykeyiu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id v133-20020a25c58b000000b005c20153475dso20720164ybe.17
        for <clang-built-linux@googlegroups.com>; Sun, 07 Nov 2021 01:02:30 -0800 (PST)
X-Received: from oupton.c.googlers.com ([fda3:e722:ac3:cc00:2b:ff92:c0a8:404])
 (user=oupton job=sendgmr) by 2002:a25:a2c1:: with SMTP id c1mr59713037ybn.473.1636275749765;
 Sun, 07 Nov 2021 01:02:29 -0800 (PST)
Date: Sun,  7 Nov 2021 09:01:45 +0000
Message-Id: <20211107090144.3172241-1-oupton@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
Subject: [PATCH] clocksource/arm_arch_timer: Fix bogus -Wsometimes-uninitialized
 warning
From: "'Oliver Upton' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	Oliver Upton <oupton@google.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: oupton@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="p6/zq8Ga";       spf=pass
 (google.com: domain of 3jzahyqykeyiu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3JZaHYQYKEYIu0vzutmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--oupton.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Oliver Upton <oupton@google.com>
Reply-To: Oliver Upton <oupton@google.com>
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

Since commit 4775bc63f880 ("clocksource/arm_arch_timer: Add build-time
guards for unhandled register accesses"), clang builds emit the
following warning:

>> drivers/clocksource/arm_arch_timer.c:156:3: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
                   default:
                   ^~~~~~~
   drivers/clocksource/arm_arch_timer.c:163:9: note: uninitialized use occurs here
           return val;
                  ^~~

which is of course meaningless, as we break the build if the default
case is ever taken in the switch statement. Clang does static analysis
before deciding if the branch is ever taken, leading to the warning.

Fix the bogus warning by initializing val on the default branch.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 4775bc63f880 ("clocksource/arm_arch_timer: Add build-time guards for unhandled register accesses")
Signed-off-by: Oliver Upton <oupton@google.com>
---
Heh, I had caught this earlier but didn't hit send before starting the
weekend. Saw the bot email, so sending out.

 drivers/clocksource/arm_arch_timer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 9a04eacc4412..8e2814fcea11 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -172,6 +172,7 @@ u32 arch_timer_reg_read(int access, enum arch_timer_reg reg,
 			val = readl_relaxed(timer->base + CNTP_CTL);
 			break;
 		default:
+			val = 0;
 			BUILD_BUG();
 		}
 	} else if (access == ARCH_TIMER_MEM_VIRT_ACCESS) {
@@ -181,6 +182,7 @@ u32 arch_timer_reg_read(int access, enum arch_timer_reg reg,
 			val = readl_relaxed(timer->base + CNTV_CTL);
 			break;
 		default:
+			val = 0;
 			BUILD_BUG();
 		}
 	} else {
-- 
2.34.0.rc0.344.g81b53c2807-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107090144.3172241-1-oupton%40google.com.
