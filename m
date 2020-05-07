Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWVV2D2QKGQEKEUTUJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D191C8E51
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 16:27:39 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id l14sf3712159ooq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 07:27:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588861658; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2c559fTCfK3nQpAEOmi1AiaRi5xTaBMHsChbrqLZmyyafNOyjvG5D5F+h65JZlOnc
         T+K7oSabG6xx6MXbY2jO9szBSQPAag+Nd4uDgNe3LkPrRYXTjqRFFPfA8hZdyLBRa9T9
         4PvT7u09hN0nzrKUxDUNfxN8JkH6R/ZXrpDoxdeH/WjvqHupk2hCb5Vz+szwyntz8oNu
         P5kLqZJxeUKmI3mc0NDv+IXHs5WZHJcQJ1kcm7fiN/Uari84nwY15sF3170h2MCoP9s4
         kRSH0BldQo7ddy4uyvQmGQ26JV+0FAdUPOJbsgIiL73BnWG5EwGnO95KNyEzM5XA0PIG
         tBcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0+9Sr/Nb89g8SiMBdRMho2/rxdWv8f8uRhxDlzwVw84=;
        b=I5/gm9QXon+k7T0C8RKE5QBr7fHKDCAv2z6KHnqYfIdlWXnf8FYMoJSRGrxNXkd50K
         99lUQvQZZT+xFF6N2KLarlX1NKu6iwvJrgg23ltNQAfd9xpRi2/qqUL5LipPvAvdqxLS
         p64zBWlLKjvOWGq+hy/6gHPgIZezHD/ZEjdH5B1SoACIK91Zwc4M0o8vm58TX2slXoqu
         rMM/Srq7zRyMPNaedJ7Wvj42+27HgvTdXEzrK515BjujUxssjyY/0vGoXzYBCbDDafF4
         LYG2NvyL+mwVf/jbnuL8tc+glyGctWE4Ju89wOymr1Q6XPEQyvDM8sepKvMZ/oG5a6ET
         bKvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Hs8RtFL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+9Sr/Nb89g8SiMBdRMho2/rxdWv8f8uRhxDlzwVw84=;
        b=ne7sJOMq1xpPHBxF28Debi0S51XWTrWiFCMDsL0DuMQll3USsVDerTN92nREfwxrCw
         /SUIcMS0HWlMynPoOYeWkNStOaAVxSI3VyU2P2+/mfs2sc/x+rgMm5I/dNxJTRbtkCsB
         /Z4WdVw9MqXowZ0mSscYRtXDHA7u0Fr/+Ea+mDrsoAdNjLHoIZzPGB2QVYrXOL5IYjzD
         oXNOFb+IhINdBY5/IY8cnm5FbKgvmklKOn7MNhI5Ly2mII6lwTKRG2Voh/UMSmcXQkmR
         G82kFprK1HWBZ4I0o4V1CPgx1zcZdNMD8mURa4e06g95YKOi1KLzU3Vvz6E8Q3KQhsjH
         aPxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+9Sr/Nb89g8SiMBdRMho2/rxdWv8f8uRhxDlzwVw84=;
        b=PLMeTFhO+3vY4Vr89fyR9CaVXXJCrhZVaXI7DcwE21n7SO1Qj034JlASpXIbmx3sPh
         VHxLzqXJ3I86wJM1Oaai3XbKWGJeyAeTpM7Fp0sXUfoBRic5p1+/FDRAZUKRXSOWHonn
         FY+kkHslRT/6Be/8vBPRECtZwAzrj/NSzyOzBcPFJiuwEawqB67IF5hgJDyTsqhFCbui
         vT6kw8nXRM125vSxVU2parQYIAiuf+BkMcVUTXEKAvPuST+wMllRpkRYN/1gOAk2opRJ
         EWs+VlHuwb/m4bWccnQLvpJ9fE2rmU6gb9mUdFnicYftFF5NzE1SNBLrAQNQ8pBe9hWu
         ihyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYMUUD0zjNIG2vpmoBcole8aIwIglfFmbMnHcz63p7wO3fO6gzO
	8Z/SxQr6GQIgI0wl+5ScI00=
X-Google-Smtp-Source: APiQypJAiNYpf0qDT7z+HWhhNM8lO2FJhhyEBLnzTWIbEHE6L0cdWnffultQ29E1E9j1kwqAuh70fA==
X-Received: by 2002:aca:acd0:: with SMTP id v199mr6479190oie.82.1588861658261;
        Thu, 07 May 2020 07:27:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f456:: with SMTP id s83ls1465355oih.11.gmail; Thu, 07
 May 2020 07:27:38 -0700 (PDT)
X-Received: by 2002:aca:3b82:: with SMTP id i124mr6710225oia.61.1588861657945;
        Thu, 07 May 2020 07:27:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588861657; cv=none;
        d=google.com; s=arc-20160816;
        b=J7K6B2CXLL2FzZR6GrXgU8p2H3pCxE29LidT8S5W4seqhreRXl69cThEuJKkq6cZ34
         WoX4HWq4wA/EWPIx+dyrRCt9dDS8hKY0vm39DZSu7YAPcdeAafdzpnXztAwu35W2HANr
         GhZau2lsIG3uLSORYVNQaZcytcPcnMbhS8L056+5Kzh0VZ2kNLGqGt0pQlsoPzeukyNg
         +3t3HbGByVWSTxlp5+1BBWuh0t/Gqc7xwFy2JFHTyXDtDFVvCehWmtor/Xf/9yILTPIO
         05LTO3J4bbQSbhhsxd/4d3sLKC4yT8LYYjNbcYyeqMaXGxNvgNbCiKnD1HpfWSH5lweK
         EM1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2mFCGtFvpnBsxJTa06BfZNPWdvXCAwgI5OUr+zz8y10=;
        b=Rzp/zMUn9aprNZ4NM/k91GuLqO7NFdpbVZeB8A4K9RrnWIIqLY1y7A0fAO1r8Iph12
         1vUwPxQm5v2cpoc96ETWJpVskLBM9IFgrICqJkYkaUbWmBN3uQBXoLGJ84rSWdrUqHxJ
         4uKkrMJOzQNE1qNghOafrxjf1PM5gbZCG6Rs5uMJdEtbMrs8gOXbxXBxw7c7hJHzXjh4
         ga7PUaOFTDTVD9WKNctbUwvB1i0kup1G3sM7aCtf7pQga+t0cQ/6TLLlJ6aVUaYUhYpT
         vOXeeusDXEVMHGfT+uZQdJTqieawNM0b7DPYHQrLyaNGnNKplovT1l1yQFvtDbnRPs5d
         7CQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Hs8RtFL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f139si553989oig.5.2020.05.07.07.27.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 07:27:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2245620A8B;
	Thu,  7 May 2020 14:27:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 08/50] riscv: fix vdso build with lld
Date: Thu,  7 May 2020 10:26:44 -0400
Message-Id: <20200507142726.25751-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142726.25751-1-sashal@kernel.org>
References: <20200507142726.25751-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0Hs8RtFL;       spf=pass
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

From: Ilie Halip <ilie.halip@gmail.com>

[ Upstream commit 3c1918c8f54166598195d938564072664a8275b1 ]

When building with the LLVM linker this error occurrs:
    LD      arch/riscv/kernel/vdso/vdso-syms.o
  ld.lld: error: no input files

This happens because the lld treats -R as an alias to -rpath, as opposed
to ld where -R means --just-symbols.

Use the long option name for compatibility between the two.

Link: https://github.com/ClangBuiltLinux/linux/issues/805
Reported-by: Dmitry Golovin <dima@golovin.in>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/kernel/vdso/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index 33b16f4212f7a..a4ee3a0e7d20d 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 
 # We also create a special relocatable object that should mirror the symbol
-# table and layout of the linked DSO.  With ld -R we can then refer to
-# these symbols in the kernel code rather than hand-coded addresses.
+# table and layout of the linked DSO. With ld --just-symbols we can then
+# refer to these symbols in the kernel code rather than hand-coded addresses.
 
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 	-Wl,--build-id -Wl,--hash-style=both
 $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
 	$(call if_changed,vdsold)
 
-LDFLAGS_vdso-syms.o := -r -R
+LDFLAGS_vdso-syms.o := -r --just-symbols
 $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
 	$(call if_changed,ld)
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507142726.25751-8-sashal%40kernel.org.
