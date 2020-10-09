Return-Path: <clang-built-linux+bncBC2ORX645YPRBTUYQL6AKGQEZZOLNTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D250288DF6
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:07 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id h196sf1608786vke.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260046; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJilRCKC1Z/hFu3vd4l4aLjUT2kyDR/rby0rFJ0NpQffwkqlCnPERWYN4ZaPw/0Wwe
         rf7ACSG5wHhSDG6U2QBDXYSKHlnP8bIPoAQjka9ucXngxSz/V7m9LUOO6l6TPk8rvger
         aHVLRtMucjB/mf4XQp6IZDCV6ya328hoNEWXbIWXxap4zkOo0m/UdrQ30iBdNqEsbpHe
         40lkzQkeypNAMuuFbJ0VZXe7Czk6mt6kLpW91t2mBMeUxTZH8cGoDLgRnyF7gx5rkKTz
         Cd4sGKgOucFrsaISVwL4kXiWOpqldFrDosdjWAl2vlQUcHsqb2mnqnQIjOPeACUEeLst
         mWGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=e/NG1inChob0EBurvSvyThg60+7qZBsyxEaT8Oz4TF8=;
        b=GZ0UaRI5S9wRaXUSI67H4kQkvqV6G0CJq37MGCNp+KXE1W7/S5WyDz9Du5+H9rHJNH
         RJ0ANhyoOZkJz4LK+2jVBdD1FUMCL4lqWctNLSY3ADcai6XZ2uzDBPssQHFVtCjUcb8s
         19cMAsSDyOm1mtG0cXMSV5+nUcWyG8ZgmHIbsJN+u5aAmqqLkBJxriFaCkbh9x9kTWY8
         4X/h8SnO37mHu30eTkF7bdUTuc6dV3Nm/WcBFJJfIKv1T1y4qex4prUWVR+IIZgwgVSL
         4diMOCIyKlxhhof7L+aQ9Kg0n899Cv35uJYvUiTsXMbSNJlvLUGZKECadaQiLBbLe0w0
         f0yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZNNTphyu;
       spf=pass (google.com: domain of 3tyyaxwwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3TYyAXwwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e/NG1inChob0EBurvSvyThg60+7qZBsyxEaT8Oz4TF8=;
        b=ibsembhQdmjG9Ro1mQu4LpcQbyxh5+sGnllntZQCHTHAjSTxT66L0x7pUs9lbgJLx3
         R8RZZLxp+avrFc3TmGSoVPV+zG6tJFO6xsddZPtSgdFBiW5d0WvcZ8OEUIgpKdAwAO7H
         HM/law/TPds6XkxZcbbr3zV3Q5S0czNoNLBwmBF68Q4Ki1AAVmeZSpKq+KqNjsBBReqk
         0quYyFpbvPtnazEoRlMZv3VXMulGnijIU4f52z8OzU8ydJh0O6SeeIWTywHELwuFtbqc
         w5HoFtshvH5R6KjPTKJVFA43cBPcKu/H4+uzDKflvEuOzmpGwQy8I1K/LPAvD84oT+yK
         u5BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e/NG1inChob0EBurvSvyThg60+7qZBsyxEaT8Oz4TF8=;
        b=QuAtNI1ZuZNKP7xVZ9W3X8gg42bh6yJU8ERdKODJ5C5cJg5fPUVuF8y47zC0ooMCta
         kez77d3/91zWdKuwwod9uFs/0WlxcDtp/hzUYzmUsm+LGH1UdvU9W8bx/ZJH3fIN5h33
         EHetxJhvfqatw5PmTF5VEBzMkrcN4WAoCIuJZRpYCEXJquYNSlwnYPOui6FYnKGJlUMP
         hH6LKmLU0B4DF1cmrhcC10SzWOh6DTueahKqrKNPptxukd0L1q27vxB/wjlWfkc9WcFi
         1fUq20epYJ7+Lbf9My92gMiIIluq8PPmouTYXlusr1+59dqs+VmyCsV1qlxLs3WMEDYu
         2ggw==
X-Gm-Message-State: AOAM532MMBmuw6/sf9pTeizxalxgmcTkSbwAeBVCetbdlaRdxV1SDQo5
	/QGm1e3AUEiXBpV79fSkOEM=
X-Google-Smtp-Source: ABdhPJyL2OXtlCURZcvjnoLT9KxstLPG+R7WldDv7smW8w+0/X+tTbb4KY0WyyRX60bj1z+yYYpCoA==
X-Received: by 2002:ab0:4242:: with SMTP id i60mr8523444uai.67.1602260046287;
        Fri, 09 Oct 2020 09:14:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ff04:: with SMTP id v4ls872677vsp.0.gmail; Fri, 09 Oct
 2020 09:14:05 -0700 (PDT)
X-Received: by 2002:a67:18c5:: with SMTP id 188mr8583234vsy.30.1602260045806;
        Fri, 09 Oct 2020 09:14:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260045; cv=none;
        d=google.com; s=arc-20160816;
        b=oxyK/jZTtGv4C8S2ShMAAu1WYqJkvQI/lOvGU+FdTOqvgQCT+djku6G33PC/P6YCUV
         eaiZPChEMFUMDyMW8VAQiwNmWA4v7GWuBrJQea78QT63sTeM0fMOzDjxiVvvn9KVcEDL
         nx3vnZSOTSx1cU/o3v/XUjS1mo/ay1kOEN8J2jSdhRM9b4pOse75oAfuz7viHhM8opts
         xE3lQJOnqhhxy0xyNY4zlqjwXRGlHlJdBy+1o3eevgihPgCKOJk/lCfkx3jnfyVrcStR
         Rlgxz3TOI8eqtBJaAAl8ROU/Ag5oFqigNhuEUHKj3qiyULwUYBZI1PHOdnM+td7Pr0aA
         sKtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=4HzvBRrh7y77qbzNEjVJ7UvC0hGlxJRwsbNcMQwghFk=;
        b=SBfU+yejM7ciC5t5p8SOulr7zng7KyTMGUYysbNU0pb2rXClERd6G9M3NwnpcPpjx+
         E7djvvT+nyOf70JYdp7D3KiIA6HIL0F9lCBRi9TTFYvqciUKFaj1b5CeYKpzKrtQu0mK
         tzJFNT/yjejpwcNp11V/dnPPlVGU9EjpkWqVMdlD00f9ZhjNn8YTDHxezBqTwKx2RM9B
         2T3Ron53BYYZ5o3kPwYALiDW15nKdL1j6JFShewzDMBc+DtDlMItzepNG2Xj74ph8cFP
         albrkh8k6YGPghzM7M1YB56GEUAZ8x9XPC0ZhS/GJS2ETJKsiBha9AVtqwxtLLxqFPqG
         yIBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZNNTphyu;
       spf=pass (google.com: domain of 3tyyaxwwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3TYyAXwwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t24si1039888vsn.1.2020.10.09.09.14.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tyyaxwwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 139so9431367ybe.15
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:05 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:af90:: with SMTP id
 g16mr17666057ybh.259.1602260045402; Fri, 09 Oct 2020 09:14:05 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:21 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 12/29] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZNNTphyu;       spf=pass
 (google.com: domain of 3tyyaxwwkagoaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3TYyAXwwKAGoaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 6d31a78d79ce..3fe2dca17261 100644
--- a/Makefile
+++ b/Makefile
@@ -894,6 +894,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-13-samitolvanen%40google.com.
