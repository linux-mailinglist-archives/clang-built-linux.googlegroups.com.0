Return-Path: <clang-built-linux+bncBC2ORX645YPRBKX5Z37AKGQE3RXC6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id C63372D7E60
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:47:07 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id d6sf5822420plr.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:47:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712426; cv=pass;
        d=google.com; s=arc-20160816;
        b=bktwjUHF1tLrlimXI0Gk6J3+7GkVjmJioERG6pgsByBIImZi/BmBe0XCbBvMaY48Hp
         iA4C4zBJQpfE8e0yLEEw80CwxDS0MFfOs+jFcS+F8wgntVF282FHOIP1dVdgaBQzJYOI
         YhvFynYMDCVVq/YReNLM7dt+Fi+bbBOWVOG6rJndnFIszLaRCzy+078UDRRJt8uyC+rc
         Pul0br2WP270oJlpZUI/q0NdChWNMUdo3pJkQLP+QjSnAqbcaM4+fGvvHZqQzqbzukkl
         U4xh5MI2xAXxF7XAZQkGxzKrziCTkSGvZziwmGtfQlQBrqMjDymj5mQcUxIXWbVPuDyz
         vyIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=2jcAKRf0QfieOQHfYmFwJw0/rDp4PUGSA6SMGYUDGcA=;
        b=QKf4dNLJxuuVRKo/6gzX6sqJ+7mCB+XqkxbWiy1L+iZUAdXzGtv3ZmRXMbvB2aJ7+A
         urpLBaRFP4Iv0UV4B/jVUOaBLlrXtoO0Eyvg+84/6qiOYWVJ5kPgH1AJQqN/sqD2nipc
         lsYhmhV0q+m5YT3679Anwhu3SwVdhroREhVscGCJfguTIeXJGQUt+xtNUPXascr7t6yM
         uHEakOchUV5X5wKky6DMzomjKn0kA4MfQk2Z1S1zFFObUU1dPzgQGQdDE/VvIDOq+ecx
         yn7VbK55jNYjvaVsQbR3M+He33k+q4Fesez1YMFSKcKkOn6/uB0+jyAfjSyjX9/kSOCe
         Azpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RNsVNk9r;
       spf=pass (google.com: domain of 3qb7txwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qb7TXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2jcAKRf0QfieOQHfYmFwJw0/rDp4PUGSA6SMGYUDGcA=;
        b=aCv1DBZSFyi8NvEqNvYDO1bAKYQBcwb7/1QlOUGPyv2Yqywc+fK0f76yX3opOvqx9f
         Yzt1c4S6vd+i+J9AeI37v6gSRlvkUAel2PVWSqx7Uofp3rn94B7ngO7AEzw/k+KB4v7C
         Xs/mCNxXrb2RpKDS3iwJmt5g2m+AEpWsv5tKNcXCpbnoBdi1hM8bpt+lsWDPIHzklt8t
         6ekFmkE1AoVtRIvErGvi7FZP9yTMbxgGoHmnv9ughKMsmLAbCBMD6aX1ycNMI/bqAwu2
         x0U4ia9APUgQscaiqZ97KI9H52xrvXLyB51zY3tZWXVxx3P29qTKKIbGl429MOCLXueh
         wGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jcAKRf0QfieOQHfYmFwJw0/rDp4PUGSA6SMGYUDGcA=;
        b=qtVVPACPabP12nOfw/nSMeE9Utt8apCXymSTbD00pKf/KcstHUeaM4yhyDrtuE1k1H
         /7jyv4dpgvooujuTOjJeNHzE0DKSXpJbIzTplDqUvQOPaNf8FbH4zJbGf9lyM9UMPwwN
         1zW0NNUyD3d+SuCyrcIKn9dDQSK7TIiFOJOBaJ4hYFLMlCAe/n+yO1ibFAFvgxLRxwv2
         YhULEBchjXeTmFjItGKyg7usYGRIwqs7CNZo50GtXtDhtyN9/F1Usq1EuknQdL8yqla6
         unwmK+2T0IO8MepGgk/rLkflCDsecEML47bI650mqb0/euVZ9+K2WBbpE6EtPlIVUIFw
         huFA==
X-Gm-Message-State: AOAM530ePln90OPwtZXKjL4EVUmWO+KoDZO7Pc7IjgQmCPKvgroUd/P9
	i3Ny07+f1IUH6wXDtFcnvH0=
X-Google-Smtp-Source: ABdhPJxL4lLpqaj+jRIn5WfhWgtESmq5OV9gLfaE9uBedTz6WZg1nZ/ujx3CDZnbku7wTjF599ipZA==
X-Received: by 2002:a17:902:9a0c:b029:d6:c6a3:66f with SMTP id v12-20020a1709029a0cb02900d6c6a3066fmr12171844plp.52.1607712426564;
        Fri, 11 Dec 2020 10:47:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b086:: with SMTP id p6ls4434825plr.7.gmail; Fri, 11
 Dec 2020 10:47:06 -0800 (PST)
X-Received: by 2002:a17:902:8b8c:b029:d6:df70:fa21 with SMTP id ay12-20020a1709028b8cb02900d6df70fa21mr12162949plb.15.1607712425916;
        Fri, 11 Dec 2020 10:47:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712425; cv=none;
        d=google.com; s=arc-20160816;
        b=DL8bPw3u2ti1FScwZyPigKZSjiV1Uwl4ER2XpDdCfs8+yT1N/ADjChac0bVVtiIrH3
         1q7NSZM8oMm8NaMhRM9n/mAn1VLtJdbjEYgB6gfU5KbMi8njeWfxjt6JcxiJPyvUPX5x
         PjdL52e0O1JnuIxBALy71lp36n70CE8IF8pNMFi+E+fIraRXm0lCz9vjVmho9/3Po9q1
         cWTcraNc00jEoD1NiWLciYzoQrFQ5Q2ZJwkpt2S2HgPMT0Shvrk9qEHzCHQ6qcBngAlB
         ADIxqXxW7vmfxxfH4tDzfg8bZ4tjU+ZMgyPwlrCTVOXCcnFY0/cO3Knj3Ycy31D47gnA
         mR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=eJOu5ULB+j5PKw+BEEvH8i1sRvfR46/XAOq+5l8TcdE=;
        b=Csfq907/JiEPHyMaQFCs6dBap8XnpBDNvUeNMZld2IAH5J7UjeuY+P0ZnI6RwkfWX1
         xl8oE09N03GEt4tjEL7vOCgs0syad5l3WtracaBoMMFG/m89nASpWYrlYN8NlMA2EZJd
         1apwiyiPAeBn51e8UzCRTnl91XglRzpVD87/F2vGK5xpfYWkau4ZWTj//Yp2nD1m4ngh
         5WHXcrbHDDoWZVQiGaEuOxDJF4GNoylCiA6bk/yJ1iGnoOeWEmAmMUkLn6rqB+6f3HQi
         fIkuxXZsEUnT5XJlRZQWa/pau7SWEbpEnSCfN4nFdgmGRa3yrInkBqitUL8AqX82YY/N
         jatg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RNsVNk9r;
       spf=pass (google.com: domain of 3qb7txwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qb7TXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id h11si571583pjv.3.2020.12.11.10.47.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of 3qb7txwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id l7so7115250pgq.16
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:47:05 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:5997:b029:da:a1cd:3cc2 with
 SMTP id p23-20020a1709025997b02900daa1cd3cc2mr12248005pli.80.1607712425571;
 Fri, 11 Dec 2020 10:47:05 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:32 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 15/16] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
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
 header.i=@google.com header.s=20161025 header.b=RNsVNk9r;       spf=pass
 (google.com: domain of 3qb7txwwkahoqykgrmjtylclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qb7TXwwKAHoqYkgrmjtYlclemmejc.amk@flex--samitolvanen.bounces.google.com;
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

DYNAMIC_FTRACE_WITH_REGS uses -fpatchable-function-entry, which makes
running recordmcount unnecessary as there are no mcount calls in object
files, and __mcount_loc doesn't need to be generated.

While there's normally no harm in running recordmcount even when it's
not strictly needed, this won't work with LTO as we have LLVM bitcode
instead of ELF objects.

This change selects FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY, which
disables recordmcount when patchable function entries are used instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a6b5b7ef40ae..cf7eaaa0fb2f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -159,6 +159,8 @@ config ARM64
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
 		if $(cc-option,-fpatchable-function-entry=2)
+	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
+		if DYNAMIC_FTRACE_WITH_REGS
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-16-samitolvanen%40google.com.
