Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3VURP2QKGQEVCHH2AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 824381B7408
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:24:15 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id z14sf9492867qvv.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587731054; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmQBhKYcr2iRY7vLjtU1+p8RkjcfGygDx2xyZfUWZEvVIl2DmxvHXjQVucli5yHP4q
         PyAkYtEaCKK6J6kzDHZSAcy3XlRNGpAuYp3wec9uZa5jMZ3ApdgdZS7hBTop9DTIx3xs
         ZFQVN8xZ0b24BOLc9+kYZ80AywedRAuN19ze7FSCdrDnrsDlNBvvtRmN4NEWAVZWA1N+
         00ct3IE/FjKn4j2ehQr2AuUYeOvpsM2xp2VEWJbPvoNuy7B9+cjoViuUYhBXKuRF6DYN
         Dsa08OnSfzFV7WSpCS8xF4jWrvrM3taTQwmmM9CYJcziqS5umA5yG3sLMbTDoVpypNpQ
         CX0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fnKlyNX9ZZ2c8f0z8P4lKXCzXpZ0FIIJWTAs+MHNZow=;
        b=yCEmKJao0VyEFC57qDd0Yz1+YI6Xzl/NfUvIDEDGZZ0NsjQAmNC/69ammcNWFRBIbs
         Jl9aikBvB/8nkISpgupt0/AuhYBjBDYS0n/RKeMte8Pt/oezqRX21uajoJJvfgstYDZ2
         9jFFRjylG61Ms/GbV4sfG/QCd6rWRJl/ZMhsp5n4Qew2IBVo6dStx/SwOAdbwhgJImEx
         DXk2bTyYxGho/kSOQXHCkg3NzzRGLLNByv4I/7M0wdzJUeE6cYocM0WFEsCW6AtEFKJh
         CDrhbY3MV+IAACMBpbqGwb+h6tVy5jiJkC8qCXHp3xjzNmHUueYY1f+PVWDSJxxkrZL+
         TxWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PSZaFWnx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnKlyNX9ZZ2c8f0z8P4lKXCzXpZ0FIIJWTAs+MHNZow=;
        b=DJu9EJK+uBE2Rt/bdmk+JAge9He6IICP9FSNnYCJ/VCXIzmaE27KDUMr+OQ3ITspTb
         TZu6Qn44J+nAhhtN5v449dMqZhumoLR3rhOR1NP2xtvQ2VIMyOIOiW5G8/eRb5DAjAfQ
         r1bXpiNPkPskxjyDEI506wRjDs8KbVEKxZRsWFqrR7K/bdFIvW6Nu3+XPzrsFrPHElAk
         5FecfrjCo1yb1bQsU4tECvOhU65Y3uTb+3YqpccNWgcn2bNvSXVdIKR88d4kzTB2UgRC
         SknRd+UHVa7Ti0hVodJJXCGUpQH4ofRe1WrQP/h5SdbNDfHFBu4HxzOCaRK03Lb5NzKo
         PKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fnKlyNX9ZZ2c8f0z8P4lKXCzXpZ0FIIJWTAs+MHNZow=;
        b=GYlitv2ajYFv2iAN9WKoZ6RhMYIfoOLsUcLkO3N7RQrOo4rL37Q7NPDdVsM+BENF6e
         H1zU//9Yw12bseU2q1n3JOy6gw7VD3py4/f5ofwhUB3drSaOAgHIPdhnYNvmzcpcT3X/
         jf4zrmnAEz/J8x4vg88upMuHHAPKiO/390o1Pyjleq1t/BcjZqa0lNeu+nbfhkIHR30v
         8KqaKI+iiL17/tUH6YOWDefX2yI6sItOpX0dy0eOxmQgOumgWjDCBklA/PkfORX5rRDe
         ua9PvIfKQgPfPtksNS6f07mvaual66b/2W2u/4Lm5zm05eSgm9Kl4mt/50CCrCAfcoHH
         I3bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYhpcSLkFnbBFScKJBFcrxiVRGgmZuu2QbS0LM1L8eEFo3oe0tW
	FYv9DyPxoUea3kv3XkbT4Hg=
X-Google-Smtp-Source: APiQypKidi/55vVP9XXgaj3fShbQyFm9XYhIGosvzZlOxNUxP7eA22pT2f3mtan0DLSl1npR3tM9jA==
X-Received: by 2002:aed:24ee:: with SMTP id u43mr9037694qtc.178.1587731054607;
        Fri, 24 Apr 2020 05:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:c97:: with SMTP id 145ls6200953qkm.4.gmail; Fri, 24 Apr
 2020 05:24:14 -0700 (PDT)
X-Received: by 2002:a05:620a:308:: with SMTP id s8mr8843109qkm.436.1587731054107;
        Fri, 24 Apr 2020 05:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587731054; cv=none;
        d=google.com; s=arc-20160816;
        b=HiUJdXtb0UamgYuGFeQsbMyphW3VB0FBFi8ZmCntdJYw+mZcKmCYRWuUXednH842TN
         16p0OqDT+fkLA5IOmSJbyTY7dirEBlzdGOm6pCbwjJiNn1SQu8iomgKI4yMAC7J939CC
         Z+D09hPznZ+NYKl26a4dVzdl4ZtaPKPkxt9Cd7OdCuMc4FMwN2HrAhFwMmwkfHuA+HFz
         C86cws+3bju/ahxvhDHOrGZPb/8Q52GBJngcESYAsBc0SFCufz6kDQ/EjSJWU2nCfqZ5
         WB+MdKhutCxpOZ0A6zFE/zI22jQqJtj3HV1RO+JUBgfkn9WsA2rTmy0j2mTNMN9CY379
         p/yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1IOZrbLf6CIeb9zcDO4L0L8zciHWpPaaZK9Ln1SluBo=;
        b=fgmteGEC0x8Jl8s5JBXDCc0VprjEwmx69cXipnRKHwWPakbXC9DHVRW8TO/q58x/Ts
         HAz7IX6wJVoHQIAD7t5qh5z+3cCw6TfIa5cNIsFNQchl+IDFeyXs+8BzU8z1CLmEsDoS
         9C6nQavkaCT7cQD4HzQEpvKqA7PbZ3Oi+ZB28i0542tGZeMyVv/icv7LPIMPYznhwBym
         H6Gly5KMCfl4Op9xd2KvKQVTwgIe3HsINYoFzTZtaiYO7Ra/2CeXYXCop42ETxHcFVak
         BwI7MlCv0EDgTFTiH7DcdjbwLrYGcuBed6GtbKpDqbPUiVK1MYguDvnNB6r414TdZh/E
         5POw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PSZaFWnx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p9si531125qtn.1.2020.04.24.05.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2404C2168B;
	Fri, 24 Apr 2020 12:24:12 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 14/18] arm64: Delete the space separator in __emit_inst
Date: Fri, 24 Apr 2020 08:23:51 -0400
Message-Id: <20200424122355.10453-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122355.10453-1-sashal@kernel.org>
References: <20200424122355.10453-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PSZaFWnx;       spf=pass
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
index 3091ae5975a3a..ed99d941c4623 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -60,7 +60,9 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122355.10453-14-sashal%40kernel.org.
