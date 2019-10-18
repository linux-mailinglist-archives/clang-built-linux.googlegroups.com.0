Return-Path: <clang-built-linux+bncBC2ORX645YPRBF6IU7WQKGQEKJSF6OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C2DCA6A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:04 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id s4sf4768448ybq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415063; cv=pass;
        d=google.com; s=arc-20160816;
        b=IYlPFOQaYWkAt81bLwPmvLaEaXIybkabO6oYWzVJ2TYfCvHNNSSROi/WkSd9P1HWnd
         8voDeV0/uFRB1Mr3gWWUn8vliTzOIEukib5gM0538VND94Hs1IwzEIqMoR6hCH+TUV/3
         sgvcup12QBT298cFUTEqqN950zzYcQnrBGvd868+qiRQBSClq+kJrkwwb8DE/SsBNGGN
         OXzFL15MCJMKJTdXnLCZD4TImT0/1Vvw9k0VRyKtrd21WVG9FyST6NO7BlsBWcoYQw2E
         OlNLlMsu6KGb8o+USAvm3X0PGwLsNe+o73dbN4PeuBB2NB5VM+nhl/Rz1WY2u1INp35K
         Qr6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ZG1ZjfBYnNWfrYt4EV/jEOofmEnL/sqMeiVOn4mpZcg=;
        b=aQHEnE6COvkXfP/8utFQHJ34c2U3csdkaBmTIZEgHu5BRi4Kycb4fuKcdGAkLJ3ZRU
         1bCxeKmDX6iiYxpzN1Yzt+/AhVs6sFA5fPD7k9XWRw8y0a9CrVZJsD4P7DGq0gznrjr2
         YW8FaNoWW/hij04DQ1FvzelHx7+sqtRw7SzKyFyavSsobncXbNJ0SpdoBfR4Kra/KoS6
         QCoridSidRQ2LfMvpdJJm6Mm6JYkC8gamcdaxwnGHiVO3ij3Zl8KdtgsPaCdg22yg2o0
         J9BOVnmOJSS8L5Er/aLqc409JKj3bO7FI7QfpQ26YrYoBJATecXTpgKr3WmOo6fggtBL
         IEYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RTWmB+YR;
       spf=pass (google.com: domain of 3fuspxqwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3FuSpXQwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZG1ZjfBYnNWfrYt4EV/jEOofmEnL/sqMeiVOn4mpZcg=;
        b=QvVDzm6xlqBo7JEbUI1ZVVKuLGBEJ0XT15++acptkkCx2FPSnD+WLM4f8PEfGC6kRP
         EhrUHPuCGqVHdWBHsMrEl/1qLhb+noaGebEAKDpsg6DAx7YtRl4ssH2HSk5WEOFOKQU7
         9re1UAcZeixW61mb9FXo8UyhWtQpcsIGCyYswZTNSjvwKrPt2cSAl/Abn/h8zKtNmJZY
         RZvLrrGgDScgFYFBqcyiTQFTecPSywCHhnR1qyc/s2I3kdQ2fFRm5yUnng3GY/yKwl4V
         O3bWaDAQN2DDaRDbsLAu7pjzk5LwFgzdlr6R2oRNZOb1YlpiAHu5LafwcOXvJL106DV6
         EXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZG1ZjfBYnNWfrYt4EV/jEOofmEnL/sqMeiVOn4mpZcg=;
        b=Oi3FNcdFhcqOjtimtYQre/IPGsbjS9CMvDAlm8GG6qkU2OHxPlhOoYMQS+Q/7ha9rv
         3oY9gBU96+3VVmeCwQwmz+lF9U5zDPAU89e7VPlzm8apJSit4yuj6+i2Glp1ydir9ZWt
         27Q2dnbLQPM61HMiErr9FitAuaw6qcOd/tsmUh+s2Oa14cZjBIbre5+1AjxqO9FaDMiz
         6mxB47jUN29dzjX7R8dVSDHmTwErzXBaj5MTwLwBf+RQ7GtLItsHj5vEPxQNK0jXSzhi
         mkXQOStY2Yhi1OjYD/b2ngAMhVN5xukLZRwzLucOdkzLHBlNN9whi/iKlUdb2MkZ0Mso
         PCAA==
X-Gm-Message-State: APjAAAVTIrWvFpctpEA4MHFWe6QLEtReVioXMN3cURHSX/42zsWGQGwr
	/G85pmkYaoAl/007w5ghSM8=
X-Google-Smtp-Source: APXvYqw3+pgS7YyosWg0+opXAPu8NlzVS9ouRY04z9Wj31BhbVEZH07Iw0MenLd8m71hZd2PUxMVow==
X-Received: by 2002:a0d:c945:: with SMTP id l66mr7435300ywd.286.1571415063624;
        Fri, 18 Oct 2019 09:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:30d2:: with SMTP id w201ls1047823yww.14.gmail; Fri, 18
 Oct 2019 09:11:03 -0700 (PDT)
X-Received: by 2002:a81:244e:: with SMTP id k75mr7908561ywk.204.1571415063293;
        Fri, 18 Oct 2019 09:11:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415063; cv=none;
        d=google.com; s=arc-20160816;
        b=mCNGX2ndFRBoTcInqF2+ahkWxfi6Bn/vbgsTb6j9b9LrkYNS9ocWTI4nHTFPgBcCTc
         RAPjcBvrAfarjE3vT07B3uoTrfJGdS6184unH/wHCu0iECY4lNHTcPSBgraq6PF0efPd
         bjAU55gRMgbyoQvKVvVjj3ERcY7mRl3qHHUTQB13JfPtmC23vijxyuLi3pnomPt4FSJY
         SWIt5TyZ8jVXXllE5ZKxcpW5asnCC3HmXCmHFi1btpDGSkX89ua86MV6RG37O/k20atO
         3fjC0W5YkJ282o54Gg6fyZRc/EI8JTPGmAE2taQNp786/tqsIDw3FJmTPsCEU+NSB7sY
         bEvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=soVi6argGh8CkyJ/tZS/XQoN8aAv6F/7ncnrrIAGrbI=;
        b=UamLnCaXW0KdC6ks59hCKsUqvhEtFqhY4CnOt94RUnw9+5L5YgzfWalhmUG6OzYPDZ
         F79hc43lfedIOvajWXIPKUqeNudaQWkF0Pao2p4jDaXboXrRGl0PjEnhLAsGg+eqZs23
         lmDqIlsOiBdADJR1gfkN2jcgPTgU77WZK32SmvfzjQcjFJImwRrWq+en1A1X1q7fftEl
         K2ZsEmazkxF4b7s1XYYPKCW/F+aC4yAM6EaHJ743L8QxkDAjzTnvTHYzIka/gFpzNLGr
         pEuq4WaX4ymDORiTxvRrM4pmKTnxql+86F/qhCbXTHPaN59xdXbzwG3ZP9ftj3NLxpAx
         U5Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RTWmB+YR;
       spf=pass (google.com: domain of 3fuspxqwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3FuSpXQwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa4a.google.com (mail-vk1-xa4a.google.com. [2607:f8b0:4864:20::a4a])
        by gmr-mx.google.com with ESMTPS id p140si326237ywg.4.2019.10.18.09.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fuspxqwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::a4a as permitted sender) client-ip=2607:f8b0:4864:20::a4a;
Received: by mail-vk1-xa4a.google.com with SMTP id x128so2562458vkx.16
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:03 -0700 (PDT)
X-Received: by 2002:a67:e34b:: with SMTP id s11mr5965401vsm.195.1571415062790;
 Fri, 18 Oct 2019 09:11:02 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:20 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general allocation
 by the compiler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RTWmB+YR;       spf=pass
 (google.com: domain of 3fuspxqwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::a4a as permitted sender) smtp.mailfrom=3FuSpXQwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
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

Before we can start using register x18 for a special purpose (as permitted
by the AAPCS64 ABI), we need to tell the compiler that it is off limits
for general allocation. So tag it as 'fixed', and remove the mention from
the LL/SC compiler flag override.

Link: https://patchwork.kernel.org/patch/9836881/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..1c7b276bc7c5 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -55,7 +55,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -ffixed-x18
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
 
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-6-samitolvanen%40google.com.
