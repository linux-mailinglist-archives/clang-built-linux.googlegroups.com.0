Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFF3YPVAKGQEE42QC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC839895C5
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:32 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id u3sf487450edm.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580692; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1nS0Yhw1dR5d0Kox+kNNbZvREaUZc3/ftSnh8NjfPp+jquhcn8+F6Ms4O6naA5nvy
         0f1psRs6pLUpVXXce0ap7nTol3VnfHcPMYzUF0z8KfWvErYdPTtiF+5RicMqM/Ec6vqs
         rxv+zFSitprJB7SKh0QkV2P9mzor0xxQiaiJWRoknMer2K+jziLcYYJ72vYN72wNxFfl
         TZdYwR4TRUD4+s2qZD5aRelGcvw4TzF6mEhFQ3uH+N8H42a8oHz+h0Dig5Eceo6fSb1M
         NkoZ6SJAXmS1edlDZ8HPSFlkS14F587FFEkRMVjTykSnU0658CJDXA6m2L3d0DihdRDp
         5uZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=lMi0Drg5uMVg0nWoQyLAJRRa9tIba1lWt98zSkc9wJk=;
        b=pD4SJqbVo5bYmaSuqQc5/E5sSYGk3gB720VLTof9LJWkJZWFqFtKUi8INLhJEbO8ml
         hUhNx2MpfoyU1wbjbtPBfTtv3ANRxVwrF2R/BsPuxin6pSuMpDrVNxsdytVdJgbskeKq
         LFVCjjgA4eD6mh9flFShB6fjRF2X9c4t7+YBtlOeIS9jGD1r8nGMvQ3BnAVnI5FDPAbC
         C1N3C1+uK4OogNLX4CDdX3Wf7CgxCbSPFD5jjNSmp9BdR3FxcsvyvIDOoZL8EvS33Ipy
         vtbftlqNuxSNg/ztWba9Dh8bC2cPvX2TG25PbcHc+y2C6WWHM7fSV3oSxs9DYYus355h
         ly9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE46LZAy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lMi0Drg5uMVg0nWoQyLAJRRa9tIba1lWt98zSkc9wJk=;
        b=DGRmyk/39kkBbAXNvCtwrCCSBR0+rJdaLjMP4vrQBGeQd+MuFmP5spuLEq8uwiB9gE
         vH4+yxpUvv/npUoId8kyIdwb77cM14gPZ8VZruaePr82lF1SnGlLtgB+sh/hP7Ku8vab
         jWFsKn7OsXEGJ2EaRfwavgXYJULle0OSwWJepO+I3+/4TyvCKaBjsS/Ry8BqY6HbBgCU
         5fcyG43wolI1mJNEGeV2ttYU2F9Ga0XbZQMYxlMnsqgv4bAGhyxl2Qx2qfSoRZ1v3hBs
         5iIv1HS4Isg04NYLDlSom8V7HGZOUEOgKljV8PtXq2Txo/2Guhh/doKkTDXIVz8NZFvW
         DrCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lMi0Drg5uMVg0nWoQyLAJRRa9tIba1lWt98zSkc9wJk=;
        b=BmYstpmvtUHLX37FS40jreMyy4Jso0+20GkwOi0nz88O4J/I8eI3PXr5oh+dLXQU3c
         3Rp3bEzyJXhM2YxTFA6Dq7ymmyqVkc6kQ51XNhjziafQXM8aQgZWa5vsMg3F0KsWD5ZA
         pAlerfICqyFnXLDsD7D5zp1/AxwpoknUfu/l3N/m405R9d9vsV/bRe+IGSnof3Ji520B
         SUNZ29RrmOYei7GJd0f/CFPoxQ+fOARu9E5hUIvt8a2QP4xJuBTCxstJBfOFeb0tSx2z
         QjK2G7wgM1UDhXglR9pNW1IE2Aloh13xl2qSUxVdF1tdB80O3kZGb9zcfzhVpV4BN3eW
         p5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lMi0Drg5uMVg0nWoQyLAJRRa9tIba1lWt98zSkc9wJk=;
        b=DAH2R9n7Cu+uv0hB1ewEzAwBOYuXsYgk2NC1FG6y5p+wmnnUST4rZBxGTjcVX/FiaX
         XydNIE4cyDdLP4ipUavZNHT2onnBUxc3PMxs93YpvK3aqchkiXrgOeALk+MtEF6CyorM
         wAbbHDDETCdsokmGh1aci8wGTa+V03jniyMAV+FRDfQmvupw2xASPN/WB/EwMqHvScJJ
         4c5bbipg6lQUxKKMrZMrPm/FWaQXBEFbektLSJEFK6mYKETk/T+1BIdtQAkV90fsMIIZ
         tib+M0fqan5gZOzI+ZdvSOYJY0Sxg14FqKu5gMGhEVmUTxfttJCFbpOGMMJWOd57mjXw
         vv1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUv72ZZl2BDFOs9VbBRnEfqum6tjrCBfQfBK+SJAN5GGoYaHwE
	BsExaCiSmOeaaYf1qO8Wq+4=
X-Google-Smtp-Source: APXvYqz1torIVBF+jnSCjHGRTsm1033T0XXqkQ78mKOJQVGIrxKLWEcBlBG76eGAPOhIXYNR4GzqHg==
X-Received: by 2002:a17:906:8297:: with SMTP id h23mr742994ejx.1.1565580692454;
        Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2f11:: with SMTP id v17ls2033626eji.6.gmail; Sun, 11
 Aug 2019 20:31:32 -0700 (PDT)
X-Received: by 2002:a17:906:1e89:: with SMTP id e9mr30110288ejj.56.1565580692050;
        Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580692; cv=none;
        d=google.com; s=arc-20160816;
        b=GxYmuHX3zy6iS4wb3YPvmjnX5VFUCSvHH9amm6GjJTvNq3m1z/lHjJWyukB7b6vOdV
         txfS44fWejTD5GOlUSIBxuCPlUtdEXFmP6BzAaCvfFPHiyfTcrq70Lswk/3lfI1cN1YQ
         HVXqy7AuVIqm6okb1erkWQiQ98tKUzy5bBV+olMB8cjPYJAT7FmpgWtEUD5GihcwF/3t
         vZ6LPx+nnEnXFO9W/fomsb07D7JMy+YI1XZ25ZF/+lQZKoND+A0+x8HXYn4IJ2QQ3Y6v
         hUgJ93OJTwkikMOwPug/v3riBsukkaEQPxvwNhE4qVMP2r6VzBpgeOLsbPx3LLbpARgb
         DkqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vWEzzku9YP0pC2dVc45a5odEYQH6f9+aCPyBPp3kmxo=;
        b=eVgQQ88fwQRdAXgs70m9i22t98uecv+QBi5k95gWNwS00oZnTZniGThQpsUs5cBWRs
         CXIoBNAFMgw5KlaSQuUg1z1r8IIkK/aKC2WOC9fAzZNexpHdA5vr8Ts1KBiRjt/pQ7oU
         72TBjfpe3aGerG/7vv8lb8+f6+HK6kjxFFNumPJU+0wkBGp/50MTo5Q3v1d0br+CPoGB
         rFGyahLC/YDiW0Y2Wcc0BzpBGlwIzW4XqWRtpDVxneohrOYXUahIZeihhlYsoKsUwEtC
         EWZe732CPDRCmbbuTPMDvp7hvSgHt8PkaeP0GQcKc8Fn8/jnCzUgomUtvALEljOBoBUi
         xDVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SE46LZAy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l17si571642ejg.1.2019.08.11.20.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z1so103319523wru.13
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:32 -0700 (PDT)
X-Received: by 2002:adf:f04d:: with SMTP id t13mr37798273wro.133.1565580691538;
        Sun, 11 Aug 2019 20:31:31 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.30
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:31 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 1/5] MIPS: Don't use bc_false uninitialized in __mm_isBranchInstr
Date: Sun, 11 Aug 2019 20:31:16 -0700
Message-Id: <20190812033120.43013-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190812033120.43013-1-natechancellor@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SE46LZAy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

clang warns:

arch/mips/kernel/branch.c:148:8: error: variable 'bc_false' is used
uninitialized whenever switch case is taken
[-Werror,-Wsometimes-uninitialized]
                case mm_bc2t_op:
                     ^~~~~~~~~~
arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
                        if (bc_false)
                            ^~~~~~~~
arch/mips/kernel/branch.c:149:8: error: variable 'bc_false' is used
uninitialized whenever switch case is taken
[-Werror,-Wsometimes-uninitialized]
                case mm_bc1t_op:
                     ^~~~~~~~~~
arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
                        if (bc_false)
                            ^~~~~~~~
arch/mips/kernel/branch.c:142:4: note: variable 'bc_false' is declared
here
                        int bc_false = 0;
                        ^
2 errors generated.

When mm_bc1t_op and mm_bc2t_op are taken, the bc_false initialization
does not happen, which leads to a garbage value upon use, as illustrated
below with a small sample program.

$ mipsel-linux-gnu-gcc --version | head -n1
mipsel-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0

$ clang --version | head -n1
ClangBuiltLinux clang version 9.0.0 (git://github.com/llvm/llvm-project
544315b4197034a3be8acd12cba56a75fb1f08dc) (based on LLVM 9.0.0svn)

$ cat test.c
 #include <stdio.h>

 static void switch_scoped(int opcode)
 {
	 switch (opcode) {
	 case 1:
	 case 2: {
		 int bc_false = 0;

		 bc_false = 4;
	 case 3:
	 case 4:
		 printf("\t* switch scoped bc_false = %d\n", bc_false);
	 }
	 }
 }

 static void function_scoped(int opcode)
 {
	 int bc_false = 0;

	 switch (opcode) {
	 case 1:
	 case 2: {
		 bc_false = 4;
	 case 3:
	 case 4:
		 printf("\t* function scoped bc_false = %d\n", bc_false);
	 }
	 }
 }

 int main(void)
 {
	 int opcode;

	 for (opcode = 1; opcode < 5; opcode++) {
		 printf("opcode = %d:\n", opcode);
		 switch_scoped(opcode);
		 function_scoped(opcode);
		 printf("\n");
	 }

	 return 0;
 }

$ mipsel-linux-gnu-gcc -std=gnu89 -static test.c && \
  qemu-mipsel a.out
opcode = 1:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 2:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 3:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

opcode = 4:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

$ clang -std=gnu89 --target=mipsel-linux-gnu -m32 -static test.c && \
  qemu-mipsel a.out
opcode = 1:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 2:
        * switch scoped bc_false = 4
        * function scoped bc_false = 4

opcode = 3:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

opcode = 4:
        * switch scoped bc_false = 2147483004
        * function scoped bc_false = 0

Move the definition up so that we get the right behavior and mark it
__maybe_unused as it will not be used when CONFIG_MIPS_FP_SUPPORT
isn't enabled.

Fixes: 6a1cc218b9cc ("MIPS: branch: Remove FP branch handling when CONFIG_MIPS_FP_SUPPORT=n")
Link: https://github.com/ClangBuiltLinux/linux/issues/603
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/mips/kernel/branch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/kernel/branch.c b/arch/mips/kernel/branch.c
index 1db29957a931..2c38f75d87ff 100644
--- a/arch/mips/kernel/branch.c
+++ b/arch/mips/kernel/branch.c
@@ -58,6 +58,7 @@ int __mm_isBranchInstr(struct pt_regs *regs, struct mm_decoded_insn dec_insn,
 		       unsigned long *contpc)
 {
 	union mips_instruction insn = (union mips_instruction)dec_insn.insn;
+	int __maybe_unused bc_false = 0;
 
 	if (!cpu_has_mmips)
 		return 0;
@@ -139,7 +140,6 @@ int __mm_isBranchInstr(struct pt_regs *regs, struct mm_decoded_insn dec_insn,
 #ifdef CONFIG_MIPS_FP_SUPPORT
 		case mm_bc2f_op:
 		case mm_bc1f_op: {
-			int bc_false = 0;
 			unsigned int fcr31;
 			unsigned int bit;
 
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-2-natechancellor%40gmail.com.
