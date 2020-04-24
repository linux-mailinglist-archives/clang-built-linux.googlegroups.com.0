Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBVNURP2QKGQEAHQ6NOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB21B73F6
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:23:50 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id c2sf6899311ooi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:23:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731029; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQfbiARjkHJMHV3h5uc8Fdul0HSmtv/jPqONN8jKPt6GRKy7zhWDWXMS7D8mUb5GRa
         E3dzmbm0/z02ckxD/NgMXls11JOJypVRW0gYHrOI52MCZK4Zv/JC4z/LD4YsYVxUfV+N
         +9xToTCblrk0BN45ME6uGCqvbMsAwxHW6I7Eo8yknWkujQy5GoFTg6YqDFuwG2mQZy4h
         ur+hMVHq5PAiB8o7Pq0Nk8+1zIW0JuC+keOKVUoOuKH6Ag8q6ntUQLmE6mgDRziXstPi
         4W+w/60eFDAFVbP8MAVLG6hHI+Us0lkxqqrnBtMzuH/l2odtVNcRbET01o674qpjFicY
         /lwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5ANp8+9h54xoVFji9b/oavelEYsJUj4EntxB1vNDFB0=;
        b=bKawWrIxYVM6YMjltZ36DVMLVvFTT6tiNm2EO+pj2mw1gK6+oBqk89ROPiShEmHXgV
         70MOyWF4zX7mdYLwdyK4gmw+M/ewqvIJpDKD+BuoxdAumP6l1l92dVap7hDgEsxn0RNE
         K5hMkHCDH7Y9N6CWiQi/fzO7PmxV2A6fYXeevVJWHYyMbBmtWa74YkNF58i5TGutjIzv
         JDVROu2RNPs2jd0Y7TdQawjN9EVEBipW12H1rGwKxrXqHd8DYKH57mFfXBYU1h4QZPRK
         Md2xKt3UD/t5Ivd7pONzFG+Mbbhs6dLcap3G9ixxzOaWpItGwcp6WLv1G8kRIeZsEJCN
         JQvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="m/YrB3Rl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ANp8+9h54xoVFji9b/oavelEYsJUj4EntxB1vNDFB0=;
        b=VD/luF37Z9xZrr4qtj7Z+g9ZFA+aQDnq+5p9NaYZK4usI+PMII93ZaO92Yu+e3z/id
         FzgP0ObIrabbYgSjpbHeYw4G+8bq6LKhQODZbR8495YZWDBQM72mp+seVOuAyNBCtQV8
         q5TzwquVhdk86MtWRPcXZsuYNb2IC26SSxSaVqWC0Nx0IynVPMGXaDHT7u/8JmlEg6fD
         epTU2fMB7gCCUIqVoyQyC7KJ9/ItWpRmT2I7XhOG19qQYSiwxi67SMflf6xYdsmSh98J
         BewDdr+zpISFn3gxe3E38Tv/kEfck9ohX/nkT938odN/0BjaMrW442CQBLpXvGmr7uZn
         W8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ANp8+9h54xoVFji9b/oavelEYsJUj4EntxB1vNDFB0=;
        b=DpklLoKiVek71chM1qve4mOaA6xkkqf6Lkro6YvJZVkXoic0CI/7Wh0PYSXNqoz0Z/
         SwV+fCqKm3tIwoS3afkNLwFsLRIIqitP0zuGKJubxO++Bp2zpcWOe+XrSHVQ3pNR/Z/F
         BePJLhP2QALd+upsdwOUvwMMFA6PkYHApkVpXi5gGl7xfOJsNPFxJd+0as3YHBZrfIgh
         kn9sGrK74I3Fphj4sB2R6JGgF/0qwRlA2jniD4GXAKGCP77gB5p/mbMAcp7LMKOXemFT
         k7J6psELSMfYob2OyjqpKjZcPmqQFa0C/MuJ/zMLjbqIFjTXISwWbeH6o4hYZgb3Jqxm
         WjWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuauBz1UNz3Ea+Q1K3rhtvRv/TfwZAkOw+gi35uBS80WBXsZLipf
	q/X6EYM/fwXi9tWak2WlU54=
X-Google-Smtp-Source: APiQypKrsTSlhhZpA/FJZM37qqWj6ESKYGznU9AvH5v+sUi4Rh73tRp2jl6lLMPUTKYPEYT/mCqmEA==
X-Received: by 2002:a4a:a286:: with SMTP id h6mr7616891ool.38.1587731029461;
        Fri, 24 Apr 2020 05:23:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3104:: with SMTP id x4ls1592435oix.0.gmail; Fri, 24 Apr
 2020 05:23:49 -0700 (PDT)
X-Received: by 2002:aca:ba86:: with SMTP id k128mr7052544oif.60.1587731029123;
        Fri, 24 Apr 2020 05:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731029; cv=none;
        d=google.com; s=arc-20160816;
        b=GTifrP9TJs5+/HKoYQHtMDhxV6i7o8d/YjHhEznK4D5uJtKP8SwWQJxOUxTnc6omDV
         LZ/fYJfPwtPDuog5p2XuOpfm0UI0XTtkEpLtHoftdfI17D7/sjhYKseN4tj4rld+dHbY
         +ybTa3oW/We8NgE0shtoc5iui+i/t2PsBu04A19z3ah5LUwIJb/Y7YGvkGLMfUTNm3Ky
         qmSeC9N0F/eQ7wJkXOV0QnOJgQWSbDbJAa9SVT6QlZ6rjumjrU6Dc4zTRGJ43fjC77hG
         /80Ya+341EGyD+XLocYuPYQB+7axr69OO5MFb78I/LbBncrj78Vmo+Y6/nv30mvw75v+
         oFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hDRYDRuRV5NyostC3zBVujNuC7x3b9//ThuYMNcIVSQ=;
        b=XqD75BJYiLp4z3WTEbQ9Zah1NlEvRaalMUzhODRwjt8fOKghdzEwT7hz3Ngy3OkJaM
         KM75+7wdSC7GUM/4tgbIvQWTvo57465gM2C4FsZF4TXUtV1pP9BgH5Wp6lUFuHwIA3QL
         SJu6sMJnbNlvhBSZaKGqmk80l2SVP/SZJQLZjcGLuDAMvY9oMa57xeTZfUc5S5I95YC2
         RfiukqzvQYRaFo61hU3RDkF1QDiPSwuTp6sRYq2Nc2sBNezNVVbX+70ywwvqMW3AF/Sg
         BhqL+qRkC6otneYBggbr+53BrEhR/DLK/sjY8jKDaqBaJw9DPAHV4lubzBK8h+oredje
         G51A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="m/YrB3Rl";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f7si87366oti.0.2020.04.24.05.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F6F220706;
	Fri, 24 Apr 2020 12:23:47 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 21/26] arm64: Delete the space separator in __emit_inst
Date: Fri, 24 Apr 2020 08:23:18 -0400
Message-Id: <20200424122323.10194-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122323.10194-1-sashal@kernel.org>
References: <20200424122323.10194-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="m/YrB3Rl";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Fangrui Song <maskray@google.com>

[ Upstream commit c9a4ef66450145a356a626c833d3d7b1668b3ded ]

In assembly, many instances of __emit_inst(x) expand to a directive. In
a few places __emit_inst(x) is used as an assembler macro argument. For
example, in arch/arm64/kvm/hyp/entry.S

  ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

expands to the following by the C preprocessor:

  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so the clang
integrated assembler splits the arguments to:

   nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

GNU as preprocesses the input with do_scrub_chars(). Its arm64 backend
(along with many other non-x86 backends) sees:

  alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # .inst(...) is parsed as one argument

while its x86 backend sees:

  alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1
  # The extra space before '(' makes the whole .inst (...) parsed as two arguments

The non-x86 backend's behavior is considered unintentional
(https://sourceware.org/bugzilla/show_bug.cgi?id=25750).
So drop the space separator inside `.inst (...)` to make the clang
integrated assembler work.

Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/939
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/sysreg.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43dd..9b68f1b3915ec 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -49,7 +49,9 @@
 #ifndef CONFIG_BROKEN_GAS_INST
 
 #ifdef __ASSEMBLY__
-#define __emit_inst(x)			.inst (x)
+// The space separator is omitted so that __emit_inst(x) can be parsed as
+// either an assembler directive or an assembler macro argument.
+#define __emit_inst(x)			.inst(x)
 #else
 #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
 #endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122323.10194-21-sashal%40kernel.org.
