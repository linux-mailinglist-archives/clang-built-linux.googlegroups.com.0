Return-Path: <clang-built-linux+bncBC2ORX645YPRBO5OR6EQMGQEX77IFXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C3F3F4F0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:33 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id e6-20020ac84e46000000b0029baad9aaa0sf8537681qtw.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738811; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCHllvMwlg000LcsdKEtCb0eY1fIZKoTfWMepdf24cE3miyRsSOMFJIJ/UjmvH55Xp
         ROT6kOKJbWHT26fX1t03iFutUULGOaoiwU5LIxFMDgHP3Mm3cx7Jaq40NFc4MTQSgWgW
         mTfeaaX0wF1qOyejwwAJzo26HFkZkep9pVyPL+7ZQ3HUYIjUKWnPW0zCBoIBIWOQaJHU
         CdNOm3oWYuCoQFiWuXdajYtGt+W1Gs6nb9Rv2OeJhOYcNFYMCe91idq4I8OPtbCx3qMp
         YtYuyBUPj4XKsA8j9EdYXf8WdsELsYTf5/tmHIdPhqr3DRMaNTBpcm38ZZj/N8oga8ja
         vZ0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=903wnUIkePtby71c65dlV+R0vRCP9bYC7qb2Bf1xyLg=;
        b=ZWojr4MeIgAND7Oc7rmjt7saMcoxaF8HI6qL2xCZpFiwneEU207alkilqQPv/k/IwU
         2X1YKh8yjCY5aQQ0KivXpFt33ODjfY2HdDxAhbZP+WBgLgEKPKmv7NIdO0vSoW0S+nmI
         Xu30WJi1FVyNHXAsPTWwZ2wB2/iG3M5Z/SmwdVN5NIbNap7arXOcnl/+EIwu5nEoq0wO
         aPtFyd2t3X4LGKGP1YFNpA8W3RtYt34NxyK7ETxjhypqYMgaO0kAgVWWQWth6ngE9TQQ
         G6dTJqal9GGENkdKSvOUBmYO2brxA17pP9+LZMnCd0nNoSe5ZeS7wdueJaaOELLAFBc8
         J5bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UR5N0BFH;
       spf=pass (google.com: domain of 3otcjyqwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3OtcjYQwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=903wnUIkePtby71c65dlV+R0vRCP9bYC7qb2Bf1xyLg=;
        b=HBf1Oihq47RiFwuoNGod37aodNmsPWnJ+ySekoVmN+fLO3gYxSRNL/Sxfa/3k4WHJw
         R0qmx49r1910mEcEQlQ4x+YgKb72VymKW92mfHlZCMXtkIP/VWVzRbS54jNAyCPxqITM
         cMqQhgw8u9gBcwIdjeyxgr1oIEccfTXs/x9TDEOiXd3qBFbG6xouLt6CMs4lFe6R2oQx
         mxBBWuhjUPQYRQIYFaT2ef19+iwbXhj8ZmfyGmsOWqJMg3sROJ6UUgQMQl6Wjz9Q+3cC
         Pne47yqUizLh/wCBAV3MkTKxsql6tl/FfgBAfwC/TWaju6vq2dZVt3Y2AzJMFZTR836F
         oQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=903wnUIkePtby71c65dlV+R0vRCP9bYC7qb2Bf1xyLg=;
        b=hnQjKd7zxedqmVUs29Yaun2FvK1h7EZ19huqMj17+EeG/8Sp5EV9xoHzKyib2nf+v3
         MwDWEhP0uQYa4cbdjR2y0gBYcWkIBhSCu1EOsQ/vvGzgAiZdz6jtsHH4kdNdIC0L14TH
         tWEhOZb/mBn07ATak5biI2mKzSfx5JmM3styj+R4EVzLlnvtReMPUryy9fVGuQOBk73k
         D+wd5RLAMUTAHlGSr+n8RKhfLvADtbIGMl9T4r16L+4AEI5EcISG77IShf9IljBRe/QY
         5gT4jQyFJztehrNngCTFWxVNjwvLd5F1xXPcAFg5t7JuUEv+nIytxokqjXWE9JXtjoiW
         8www==
X-Gm-Message-State: AOAM531JMs/BHn2+VgBDa2+bQGqWQOAOBcPmDmj/JIsNGbbd6yarJ6+Y
	esOM5HHCIG8Bmr3FvbdEvVY=
X-Google-Smtp-Source: ABdhPJws3tNT+HU1+wyGpW0PKFL2mB8hzHXMhK1WkNq+1hrot8q56J31PP+GIofWeCRtIrfOtKD+jw==
X-Received: by 2002:a37:58b:: with SMTP id 133mr22173546qkf.146.1629738811255;
        Mon, 23 Aug 2021 10:13:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4118:: with SMTP id kc24ls4925043qvb.11.gmail; Mon,
 23 Aug 2021 10:13:30 -0700 (PDT)
X-Received: by 2002:a05:6214:28b:: with SMTP id l11mr3403311qvv.18.1629738810758;
        Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738810; cv=none;
        d=google.com; s=arc-20160816;
        b=goPeCeEuBXfgTlQ8MBSu/1ulaBfbb0kLsMnML62yIWlAuA90/3Qx/LSa9SabXZRA12
         TZ7saf0ihI6GIU/mPobLkuHax8Tra4J5ilQ3aMvNV9mq9z38sEJN2j7SeEo7MiRXW2Jb
         8421QbMpxMWQNCfBnsK/XbcblzZ9UNDKvuBBf2umkdYrlPky41kirb3mHI84/GwDcjV4
         DLn6IHqqIu1jytPP2VX4JHytDE81IgWvpV2s0buW31nVA+3v6Dee0vZmZHwLXqRRvMmP
         q+y8yy7ahBNfKcZUUOfP5uqL3yJIZA5hsjDp4awXfiAI2XZyO4I4OB9vpqM5ObYIB4gd
         IIXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Y1wIG3cVmpd4xa85rFblMllcZ1GkvMzjnLxgyrp1PBQ=;
        b=ahE/CQJ3aD93oA+QBYGxora6Vz4b2WQ3aBXYyXEb9t23FzXO8CVUFnSaXsjCxPvP1a
         iBKJUdci5Hw90P1yq8wJZOQz5kgV0U79IvExjQAgzYWSKrznIghT4ZfBjsQVXJ302tVm
         2V5373IJPs4bU0Z3siBhipZvPl9uyNBJ+yGXdlwcXVHXtglpCPzfPsj3a2ToF9t5yTQB
         CF5vKd65F88lTQA7Kd6SA5uokYFu/fEmSKxoBKHoa3JCiHMWadx3zQBeClr91xnT9QNi
         QMEH+CQTpWNH/nrQnGT+t2EIBu/c4MkPJTxomDozPU4FHkixWt7KjHkYWWe2vIXaZoU8
         sWEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UR5N0BFH;
       spf=pass (google.com: domain of 3otcjyqwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3OtcjYQwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id i4si1223822qkg.7.2021.08.23.10.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3otcjyqwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id u11-20020a0562141c0b00b0036201580785so12819016qvc.11
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:29cd:: with SMTP id
 gh13mr33753444qvb.25.1629738810535; Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:08 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 04/14] ftrace: Use an opaque type for functions not
 callable from C
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UR5N0BFH;       spf=pass
 (google.com: domain of 3otcjyqwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3OtcjYQwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler changes function references to point
to the CFI jump table. As ftrace_call, ftrace_regs_call, and mcount_call
are not called from C, use DECLARE_ASM_FUNC_SYMBOL to declare them.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/ftrace.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index a69f363b61bf..6fdfbcc14608 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -578,9 +578,10 @@ extern void ftrace_replace_code(int enable);
 extern int ftrace_update_ftrace_func(ftrace_func_t func);
 extern void ftrace_caller(void);
 extern void ftrace_regs_caller(void);
-extern void ftrace_call(void);
-extern void ftrace_regs_call(void);
-extern void mcount_call(void);
+
+DECLARE_ASM_FUNC_SYMBOL(ftrace_call);
+DECLARE_ASM_FUNC_SYMBOL(ftrace_regs_call);
+DECLARE_ASM_FUNC_SYMBOL(mcount_call);
 
 void ftrace_modify_all_code(int command);
 
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-5-samitolvanen%40google.com.
