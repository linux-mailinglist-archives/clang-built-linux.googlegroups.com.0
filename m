Return-Path: <clang-built-linux+bncBC2ORX645YPRBFGIU7WQKGQEGAXSW7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 66788DCA69
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:01 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id k79sf4756725ybf.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415060; cv=pass;
        d=google.com; s=arc-20160816;
        b=0cUyS3gNX0fhZxX49rH6FU0KD9zn5Gx4WmBXE4tqvlfXTyUyEBtpb5oYMs+ZJnbmHb
         XD2Nkjf+M3k3cbFC7TM6wAdsqf3mWm6zUJs+BBnGib4tf+UFGBNmoxwr0helleCCK1Vx
         u8SSbAIFCwY6qU/pE4bsxLyzNGWgmfQBq/FBtMbM7b8qr43bGlqlFE+gASQcJI5ky8V4
         2pspwc7U2PkLchE8rJpBHM9bH36TnAIL5IH/5lpQU67lrykr9PNhZ76xP2huHznvOE1t
         Hq0VY7aOJUCa18ySLCpqkKpcSK5degHKNqcQ3YRoJ7ZSBC60XYxHxJhzHV/7PvrvymKb
         q9yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9btU4y+bNp4DjqW+dTzQwfZn875g17VWuMSHV2gLH/0=;
        b=aG4iVGFMZ+9j/lT8OzRAIWhQjM/JPrNHeROrk+XrvipCj2rujfw8WSj572HEC3jrDb
         ace/J8l0WgSUkQFVElEGO9EqLhQDnu9Kb0kjHM/FkwsN8zad203DmAlEr3vX90chMQ+A
         /GjGESXb0U7JkfdoCwtGtbiqPNFjtcvUOG3DGqZrHMljpwaxcVY7vaa7ErZeXXmWi8Ll
         IcNuLV9yrLNZY31sGUdNsFDDve350JoiemLDBpfFmlPhDexB3Tw8pofyh9+W7vh5OCuK
         4JRiZbrLlON0Ui6/8XVXwYCDti7yWy6aYTp89p3Y9cenUlRo7A14y3pz7/DfaDepFqdI
         pzJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TZOVdcpB;
       spf=pass (google.com: domain of 3euspxqwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EuSpXQwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9btU4y+bNp4DjqW+dTzQwfZn875g17VWuMSHV2gLH/0=;
        b=F9eQuHq90TvFpkcE4tqLfuhbDlnT6gulenL739Zr8KsvoLq3fGbMCKPczdHnyjhhsg
         59KjcYqTxoXVqkGWx4oX/6xbBIU4F+yjYtZVHexTq+CBhkYgI6/Wa3SITwiMU6z2nPcy
         /1v8hN4SMALRe6EzeGVaVw68FpJEBlPjm8XN7AlSseQkopgylMUJxobxDxPvmlDXY4L5
         v+W5EjF8NovEGOYfH12gPvIaaZR1fKbcl9gukh8trzD7TK+tV3LISuunZYqDl3R7sHrQ
         RhAZHN0bZUl79Pafcfb/8eV70nydiCWLWmQQQ/WLvpZkDt1S3CiC2Ib+EhuOAlmZ2EkO
         7GyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9btU4y+bNp4DjqW+dTzQwfZn875g17VWuMSHV2gLH/0=;
        b=naOniiDXxh5QO06qU+kNYHzunssXjTHedu+UYSbEBXBxAOKCYga1EYpynhJd7/O73+
         7CSuucrqgLSqopILAhfsM22XNkLg32MVmdEWlCpuU/kcFVph0wSZJHiZZPW37ASXgqRC
         bvtfluXjlSKqrJHDQXA8LpC13L2OE1UbENLSU22J/mjM7l0pBpM0PUpNAfltUgyVY9aX
         QrkS2Bz6Sx2V8sXifLsr0owfIZqmkV3tXuN2oQ/zImTxSmJL8D9IGDz6qXtq0f74PmC9
         wkNn2VfcA2PKq43IqaYbsUs+ORM/qZ4SoIzf7qH9qTrXkqVcOxAO7uJWosrx6HkE+Cbq
         SngQ==
X-Gm-Message-State: APjAAAWcIu2LU2ReM4WN4okg5FbBWNud210tvHZn08wKovUe5FlC9uaN
	olgukGgmb6sJ4IqQZCp8RiE=
X-Google-Smtp-Source: APXvYqwYq8H8F3vh/36dPHeQJBegZJsKB3cGe8Pj+x9SF6zWWBOOeTe2uIbpi+ijRM+xHg7aHAZ6dg==
X-Received: by 2002:a25:aea0:: with SMTP id b32mr6514976ybj.331.1571415060161;
        Fri, 18 Oct 2019 09:11:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3a06:: with SMTP id h6ls954219yba.6.gmail; Fri, 18 Oct
 2019 09:10:59 -0700 (PDT)
X-Received: by 2002:a25:2e4b:: with SMTP id b11mr7118271ybn.452.1571415059750;
        Fri, 18 Oct 2019 09:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415059; cv=none;
        d=google.com; s=arc-20160816;
        b=R0yZjTzsdLQZtHnVNJXUjAEFLyoL6Sm8KHyL0MDEy5Ai0awhvFQXHOBXEO2o7uniKV
         X3CXTyQDNkVv4mWIYIMfYPOUC7Lq2tpKHbcqYXqBDejBFj5MboyPP3VzuDjRvGTJo33p
         lCqToxCl1j6jeWsaM74dURwJblrinRx7p3YYBc95HGjEFfMShk7PVx6eKpcYnvXVr1Vk
         x02vCNnS7R5dFpwrQwIvnzMPaLwy1OqNqTLpeXt0NLXMMkOCpZRLcq0bdR+Uig5ryzcn
         6ZC+0BAHLPAe0WvdEpyUfep8ldZBmkjKJ0rb5bMGyx58BFnpuFKys4hiDaRDVOv4owbX
         ldXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SzRVhVCQSEs4UpxvfljRvYSxQu5VFVx82TZExeQC7I8=;
        b=xO//c6mzQZegrSIkGoOuvGGIk2IOxoBTBSv9LCqNF6FziDNZFqm9NDrQ0WjHInH5w0
         h4LiSUnrK94tpgvFqHjUqI90VRyZ9r2yUqFtFYRQGMQMMZceFN/w9d6s6y1H4NAqpGWV
         qe+FfeOlQO+iF658A8UNXn6p1I0Wlc3qxEidzeFnIaVvIBWAq0JtkYbVfc4oqxqQsWDm
         X1Lp6xmeAfH5vyAMYntAEsWk9aUybXFVoDrljHIcgnuI7APEP5+jW97mvoejpHOCnNQk
         eTXQiMvac3Fse0Mj8/LHL4CTpgICG2dZT4tEugnGhw/UZlst52XJ7al4Fh0tGmaP5FtL
         S0Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TZOVdcpB;
       spf=pass (google.com: domain of 3euspxqwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EuSpXQwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id a1si287677ywh.3.2019.10.18.09.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3euspxqwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a2so4970667pfo.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:10:59 -0700 (PDT)
X-Received: by 2002:a65:68c2:: with SMTP id k2mr10843389pgt.241.1571415058696;
 Fri, 18 Oct 2019 09:10:58 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:19 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 04/18] arm64: kernel: avoid x18 as an arbitrary temp register
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
 header.i=@google.com header.s=20161025 header.b=TZOVdcpB;       spf=pass
 (google.com: domain of 3euspxqwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3EuSpXQwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-5-samitolvanen%40google.com.
