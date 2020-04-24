Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBL5URP2QKGQEY3USHFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 313611B73D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 14:23:13 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id a5sf8686408pfk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:23:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587730991; cv=pass;
        d=google.com; s=arc-20160816;
        b=SnqELLSgg08IAMcxSGlQLtvMjIUt4RWXWIX3cG9McDaAecTYc+039GB9MgZXYPpFzK
         0WDDTavKyLtOBzl6IIcFb5mdcWGVAisbDsUvUk3XUEj9VL1O0TtUc7cEYl/u6pjq1+kZ
         XmlZdZ8fRqT0MZqh3rFpjinYk+o0NCEnh8QzIjMltSNYhlmKch5i3JHzRL+eoyCrJD79
         YsKLJo2k7A4n6DcU24CoFwiYDO4PFAXBiDByFQtIcQdxHYIOspVu52jc1DzWXm8Y0Wmb
         RD/swtoMdY+fiCwhRqBgzV/IQsRI8z0+akPMHHeH5YgLOAUd41PXvI19qUBWuYVcQo45
         TbYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Px7jNrs16FxTuL3ByJgOXWOXUFCLqbfwT6hHr+zBnb8=;
        b=j4D2UnwIOGP/GNp44zfox+N1YJDX1N9LeK0cgfkc1VfDiawD6KelycuWGvrO6bhzLw
         7OxvVe7uBDmaMp74Ehh/mc6oAXSYz7R+c/dUK5KVAn1kblns6b02rRnwBIwxC5zYkJAK
         QJMleD5KhU1cAIA+H3lvNiy60wCdZKLbbguDYc6KFKlpKTJ+FIrDX7j66Ub9FjmOpDzo
         XU26ee8GrZiwrDgSMSORqqN5yzUwJVB7/YryFsYL3Go4PPYSTT+mgByAPQR8KMvHUmuk
         KMT9A0TV4JaP6H8qwDXEtSUaLwLb6E3JJU3jhWvM8Cqgwtts5HalYiM+ik7xrW6wD0HH
         oKJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WpyVTfU1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Px7jNrs16FxTuL3ByJgOXWOXUFCLqbfwT6hHr+zBnb8=;
        b=jDvMcoJ8J+WAblKvjHPhW5OPwtvqvrxyMSmeVIjol4VYSzxruTOw6DOUFDpg04xjG0
         CYunS4c+pL5aQSuLFFoJpcnzHcvyEwH5qy4Id5gzsc3k0YT4UldgGUbmpnWyDqD4fbwB
         WbndR1qIKl7ZacPBfVrBMdJH9ejQvJkWV8KX7GNxp8ArlWXEE5mlG3vU0SIE2CDuuiXe
         cpSgd1+WfOD1D/ZjZ5WRZjFtf48Ev7xe5FzC9WQdCo3/9Ij8J7zjikIDEOT/Xb2R2fAI
         tGkJ3ZquFDeazCH5vYX+FU3/piD9myBzUesLlkZDPBv1JQXx8IhrXRGY1yUDZt7ij6hK
         Lo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Px7jNrs16FxTuL3ByJgOXWOXUFCLqbfwT6hHr+zBnb8=;
        b=SCyi3uKDvv+H149WXmYxo7PO3qRC+oerMx79k3X4SB/fBZk0o5gNlUzURJs1KJDOGA
         HPvqwpAZdKMvaAzo0O/4H8sdSgEm3ngM7BihBjeawRFLk7BIJGQFgVVAWGXVt2SMV1AJ
         3RKeMDtsMwubVK4fXrb5B3xnkWJh4LNOasXdfPjJlLCl929gYwurW7Qf+SW/FPIeawNS
         sRfgHarDGT6BxShy2r0f4Kz+VbFcmeoAJ0Gi8KtOueEEYLTQ2uJsE8Eutr4e3+8VvFmV
         Et2u3mejdnSPbSeJOriJFtp+yiB+/LF8zgQdQVQJg1U79a7nXX8ydbjaJEgEBDk7LGqX
         DFSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puaz10FjEIkQeyrXUqDoKB7tKJLAC1UPKIwQBoaFcw7iRGreQejW
	eianblrN963Ji4aXEJUh7kE=
X-Google-Smtp-Source: APiQypKNT2JlpI/0T1CR9QvBKWiUAhtr0ADXwKGxO0ZaSRczUvN466dQu91/Vnbgv7whO7uy8N+znA==
X-Received: by 2002:a63:4920:: with SMTP id w32mr9232143pga.119.1587730991710;
        Fri, 24 Apr 2020 05:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b488:: with SMTP id y8ls6584927plr.2.gmail; Fri, 24
 Apr 2020 05:23:11 -0700 (PDT)
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr9252932plq.132.1587730991372;
        Fri, 24 Apr 2020 05:23:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587730991; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1HqkSuZuEFaw8vnYbuApsE4QvRJrXhBLxz3LwCC9AsqDFv7scoxMhpdpa6IUYClyI
         gaRcMOnWrWqKlo+m8m720WhRvaX0qazuq9C14U/hbVwz1VKEmk2YPUANaeiSPHdnRY/l
         Cid1Rf4LcfKP8JUPoD/t3FjArh2mzsxBM+2M7zhf0+iCYDXngYQ709Y5utrNpk5IBmP+
         mlDDX+fVR8FKg9zZ8ZwsnNC+JmZHUfKNRsPAURp2l022/6sdzlvOkUL+lMYBezVYVl+4
         gDWnrBxNjru2fLC3grmlnaogEGCP+/KZACG7Si4a7h/RnYvLQ6jRD24zprJ91oEL8nWf
         r96A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Fe/DussEgDrtFMoY1H4b05ycA/Ef08Lpwdo21w6hSWw=;
        b=BbaXyJCsW57bkm8DfI2ZQYdrGHJkMfHdn0uqG3btSnx6qgyL/MnFM2ECyV9Zljj/Gy
         jCwvPQvLoUH1YxJUsoUjZL8S2TTYGcdIjYW2i4U2OwDga0pQrKdTuZYWamVt3FzotNWP
         zexHWATTIbpllPDC1FVyzrZwFdHrZwhyRyAdoRkorxG0G7ouiGl0qr+fZcHT3+OcKdCo
         3Gowg2tfaTyhnsDBS6GZ4u1InjV8rHWSh3WwRe+YHEXhsBh2oMAlbmlcsTECzxWw9+hf
         7sbBLroySzOVmUCOzaCfqGl2/5G+2xFH0jDwSm+IZqbJMY/XOfwI6TXAbTTpPl8KAzss
         sy7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WpyVTfU1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w8si111815pjr.0.2020.04.24.05.23.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 05:23:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 360F8215A4;
	Fri, 24 Apr 2020 12:23:10 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.6 29/38] arm64: Delete the space separator in __emit_inst
Date: Fri, 24 Apr 2020 08:22:27 -0400
Message-Id: <20200424122237.9831-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424122237.9831-1-sashal@kernel.org>
References: <20200424122237.9831-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WpyVTfU1;       spf=pass
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
index b91570ff9db14..931037500e83c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424122237.9831-29-sashal%40kernel.org.
