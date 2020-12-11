Return-Path: <clang-built-linux+bncBC2ORX645YPRBGH5Z37AKGQEBRA7NII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF532D7E55
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:49 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id 198sf7275104qkj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712409; cv=pass;
        d=google.com; s=arc-20160816;
        b=FNPM2w92mxsBmFlV+pF2NLhVquHPvkV/pFbixiTKLFmu1N7sY+EQs0XgdPi+Lj8oC0
         9KKLJrB+MYMvQ0H/cw+NHcBav1XGtlleErJaZb2k4jqFfLDP8CgRJQA0Jf9xOWO2Ab/b
         ePYCGIILmSfGTiAskNZbHic+fWBcSNKtmmlBVBkwOidultJMhB+e0BLIfA5N2FRbdZo2
         nUXDp3ccdngggOWIqIR/oWAnDRvF0T6dBTJE2fHyY45A+m7FMaKq6FoCj+tgyW8yAM2D
         zSqdM+qnPhsSkYgROLnsK/crLeQ2ksD+YnJ+g2fO47UqlCpeF2Wn4ODpQsULnhP1ZGM6
         l38g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=vY+e0Yucaz0WULNzThcRQzEXEU/GLw7oYYs5+l+pcXw=;
        b=RY9xnwXH99X+WXDt52cWVqmnJ2YGfguuOnNhZ6Tb0Kd2MMhB/HocL/hVH6WKQUs9Z/
         8XHIgGaqes5DGH8fz5fdn0utg1/5B3C45MVRiWicCw5J4AEj7pu/D+B/C4m5nox0T6AQ
         6/702HL+ncHnhlFbJSEj/1AiJWcAPmtwS56gAIyI6XeQeQs2VO4EyhmDcc0ogyrhriJb
         wBG225wXNjtPRg2SvuzM5itIi0l/guyBbZKxoPnIpvLs23Ox8v2O0yEiXJjY7Ur6GEWH
         BJTOmZxBEdkbrsvyrwwmdiC01NRhof2udSgw876M6kebDSgwM2NJJOaSaM36aGkLsnDn
         DUZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j80QiI4U;
       spf=pass (google.com: domain of 3l77txwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3l77TXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vY+e0Yucaz0WULNzThcRQzEXEU/GLw7oYYs5+l+pcXw=;
        b=e89+K3URafI258wYmv54O1myTxcs83PyApYZq4GxERJNQNrIX2pdhCT6Zg9qp0Wpu8
         W4zOhiyktJlnOf/cOL+xxYvhdPx9IOQBEsMDFdRqkeIzI+sSkkFEz6OCy6Bsb+hNAe6/
         XM6lW9E2a9oLmH2D5eXUsvMIWY+1mELLiGlV+2sWykPQHWvSVyZPUtIfsK8O+OtNxJ8R
         9E7uKe1MxgWZZybYJutEruWceNIyfqa7raqFMX1P4qYqPAcJ4GIN8rjP4JvIQriT2bd4
         IateEm0zuXZgReZGHk/0LUcb66/LQhBKe0+jrXfbuJo7pwxnAvgVOU9TEVNm8hgbd/kv
         ZDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vY+e0Yucaz0WULNzThcRQzEXEU/GLw7oYYs5+l+pcXw=;
        b=jX8SlFKQFtFVXWwYaKlQd3xWvsX1v03/2wkijCnS0PFOt6cgI8BpCrBE0w1h22OcZi
         TbnFVjDI9P0ozatxSYODXEhEv3dhShicnbcdV5qpv7l0TY3MWMBbCu8xMlqHHJvV+ng0
         b5n3Rq7WwHatgu/TwgcznJumqC41zbBTXwuhj2JGUDNZZ1jgcSXPViLvUZ9fjE/9Hh95
         QMIKcB7tWvqIpzzoNxYlt6aUyS6ltogHjrju0MNuNfOhma3MfUKvzXwZLkhKMAG8EpRx
         CBBjfzwYusyqDNGSQBoHVyUoGA5oQ7BMjtcNdQhbWwFz9Aa230/vXKehBej5OBsA4EAh
         F2bA==
X-Gm-Message-State: AOAM531szEBZohpmomAhpLfmLaqhzSDzjng2A/WrUgVTrfO5ZzH7bDpT
	aNVgt0AfPjjITyWlf5Mhpno=
X-Google-Smtp-Source: ABdhPJz+wrWExhTGrbG6mctvipO1nctQkRlNtHRxRard+YMzA4KFoXNEzWN9Bg+PKnmx/vmGwDEgsA==
X-Received: by 2002:ac8:1112:: with SMTP id c18mr17230127qtj.72.1607712408792;
        Fri, 11 Dec 2020 10:46:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4149:: with SMTP id e9ls3532072qtm.5.gmail; Fri, 11 Dec
 2020 10:46:48 -0800 (PST)
X-Received: by 2002:ac8:6a0a:: with SMTP id t10mr17069160qtr.19.1607712408364;
        Fri, 11 Dec 2020 10:46:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712408; cv=none;
        d=google.com; s=arc-20160816;
        b=ME5yGMwJqAJf6agPl/wLB8HbSHhxfkKPZBSZYRftkY4BKf7QQqW7Tj9rpnmFVyxpKA
         5TYUAE2P4dAnsKbYPQpVa/Mha1JLTPElNPKGxZhIUyOKf1SvjO66IOTITj3czPRm6ssE
         Adg7MG1hG1veBtZ9lMlZa8F4z43/nYC/DqSYhbskvCGZPEEsbBnSiRMeC3mIzF6bvJ+S
         1q3UalRTur86vw+T7E66My5CpQEtXysvXiw9DxtbmdWSsOnza7CbZR0Uq21Qfw75Uyv7
         DbJlmbZ5vLtSG1BmlRxDDc6azuXMAUw9piPQL4ThezG167Z+kHNcMhY7aX6lv1kc2JKM
         KTTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=D6dzW9Nv9PxzQobvhFlQDWUjMujzTJKPO9b+q7PtBxA=;
        b=KwEfAmi8vSxpe6VOvUADvfZduhxrt9kMZ/otb7eAYPkFNy85zECJZkTLuG3vuFs//V
         ZB5VL0Vk4KM8xJee3binuOU0QK9y0BBRrMbmvxx5RsBbqbkErvi9+3vWoS2RvDMaNclf
         G5YT/Lms7Hy9rfRxnzuJW1eKuYjslEsbaS6rtPGGDH1o68Rlwc+AU87M2dAFXpUspBPA
         FHSjmpP8Z05a16TlaQMU1ojOTJJsdCbiqFrhxcED25M86X6M8iGdfpUbrZeL3OIN+Vmt
         /KChf4bz4Vk58pKNAD2/sFeKvvJroKUwXM7LeH0BI/8aPNOUBMNU7oR/SjUweUrIrQo3
         M45Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j80QiI4U;
       spf=pass (google.com: domain of 3l77txwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3l77TXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id f21si663411qtx.5.2020.12.11.10.46.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 3l77txwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id t13so5827022plo.16
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:48 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:bb8c:b029:d9:261:5809 with
 SMTP id m12-20020a170902bb8cb02900d902615809mr3908181pls.29.1607712407508;
 Fri, 11 Dec 2020 10:46:47 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:23 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 06/16] kbuild: lto: add a default list of used symbols
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j80QiI4U;       spf=pass
 (google.com: domain of 3l77txwwkaggygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3l77TXwwKAGgYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a
binary when the .mod files are generated, which means they don't yet
contain references to certain symbols that will be present in the final
binaries. This includes intrinsic functions, such as memcpy, memmove,
and memset [1], and stack protector symbols [2]. This change adds a
default symbol list to use with CONFIG_TRIM_UNUSED_KSYMS when Clang's
LTO is used.

[1] https://llvm.org/docs/LangRef.html#standard-c-c-library-intrinsics
[2] https://llvm.org/docs/LangRef.html#llvm-stackprotector-intrinsic

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 init/Kconfig                | 1 +
 scripts/lto-used-symbollist | 5 +++++
 2 files changed, 6 insertions(+)
 create mode 100644 scripts/lto-used-symbollist

diff --git a/init/Kconfig b/init/Kconfig
index 0872a5a2e759..e88c919c1bf1 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2297,6 +2297,7 @@ config TRIM_UNUSED_KSYMS
 config UNUSED_KSYMS_WHITELIST
 	string "Whitelist of symbols to keep in ksymtab"
 	depends on TRIM_UNUSED_KSYMS
+	default "scripts/lto-used-symbollist" if LTO_CLANG
 	help
 	  By default, all unused exported symbols will be un-exported from the
 	  build when TRIM_UNUSED_KSYMS is selected.
diff --git a/scripts/lto-used-symbollist b/scripts/lto-used-symbollist
new file mode 100644
index 000000000000..38e7bb9ebaae
--- /dev/null
+++ b/scripts/lto-used-symbollist
@@ -0,0 +1,5 @@
+memcpy
+memmove
+memset
+__stack_chk_fail
+__stack_chk_guard
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-7-samitolvanen%40google.com.
