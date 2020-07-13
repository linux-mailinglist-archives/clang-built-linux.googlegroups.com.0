Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBE7QV34AKGQES7MZ3PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC6621CCC8
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 03:25:40 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id 14sf7126020ioz.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 18:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594603539; cv=pass;
        d=google.com; s=arc-20160816;
        b=gdVapXNoxWGDOmCscb8u0C/mHjkzPI2L2T/2N/GASaPpRcj0ZqNFeQ7uvYJGpMb5re
         bvXt+puMqPMZB2LjLKZ8nz4RdZm8CXCcYaQH3cJFKw2Nfmj3k/j6+VpGvXcTJAaNEEHE
         QGonOWQpzvO5Ik8B+ZY54PdTykMbdLi3kbjUr+0lKe/PSn1v1fPKIbW+W7RNwx5OyyA5
         h0J9fGY1GLp1Beu4Cdpg921CafUvZRxwdNn53ImWXkbrqDrzV3AUA+/oSPl0Q5Nuzzu0
         f3UYMwXl4BhAVmSPqaXzPd2/3dThcBebbEf7zZ4+x83X8BfpoL5f+y122AUNU+xyqV5F
         WRLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Ge1CXHDe08U7sh5uDPOLnnAshvV6Rnkno7rtdk+S5Eg=;
        b=FBZhDkmjJff5zvncMakFkqF4EsVo91dgV9oVVaXTuy2R0KxvFDS+8T0Gqs/2TVrr0m
         RRDnSve0nyurpiammTSQPJ0cxGci7YOWSaljbodRIWk/YhCkktzbBv7a78WQ8+qU7ysm
         9zPfVn7vnAX5uhqiBYQVXXfGhBi/57nMPcAk5pUo6yKn3dm7p/NZk+7jE15nqyjlplW1
         wkzhrxGip2hhIr2H1MDl0zYh6/Bo7X5HahucUsDFXnkBHHgQ8JavAwBTw6oqbVACGDk7
         gtHiGDrdScSyJ6IC1RjVmI3Bgc36OUpqDEJMaALBaJtJkA3Wq41a430v3tkcwbp3kqwh
         f4jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNvRaDkf;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ge1CXHDe08U7sh5uDPOLnnAshvV6Rnkno7rtdk+S5Eg=;
        b=loJdBTcbOtCxyYZjq9TCvMDzvg1tDwYEqW9YhIv4LH8webXXAPYQChedlqr92j8U6R
         yFBvw0UJx9vphDqYJ3VSrFx+ewKpjXJk4kDjJsG4GnT5+6vuYZxpfKEBtB3wC0Nj95M0
         uDKvYp8k3JMe3TaHrrxd+0bkyE4igdVyTXGHCeFpS1u7pvxbfBvqhZAIOK1M900m11Cf
         Egr3sfP9ggC0Fk6cw4lNaZ6767RSL5mVmdMUas8tMpIRFFQQNH59Z48VpoEUjVU/e3pE
         XfXC00zxIqiGOR1ijCZT1iOtwlcnMZZIfrrCI4EnH1kCgHq+jolk7Q16aE8ivIrH/STp
         L4Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ge1CXHDe08U7sh5uDPOLnnAshvV6Rnkno7rtdk+S5Eg=;
        b=Nfiu+qnVGqgIezzWQDbmMd160i508MrqERngHKf94mlSYAIIVtjbjVLPD7cPXXkUrq
         MEz/yqedPo9JlUuCfGeBgJld1arR/L0O0XBXjZkG5kVBVSc/Z6FfyvETtmF3WTRUHtxA
         tnQtpl9lLVaAJnJQWmVAvtGwY2GEMaCL7qKxak4n1+Q7jZPsr/u5dBqx2IkvGLOS/pjz
         F8JW7+7lNStIv4FcprdyyPIMXJqr01ZolWQhn4FbSzrqArOF/GXJYTPPs+p/bJDaKSBl
         6g/jpPyvczS0pdWLXu6o//4UOSkGxPHqpbLgcQZQ8iNV9K+zfch6FswfMAGK1c2aym8T
         mPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ge1CXHDe08U7sh5uDPOLnnAshvV6Rnkno7rtdk+S5Eg=;
        b=mLVo2qSiq234Kr9giFwmoIte/WNoGkcRSRwiqcl/gsUmSqxEQkEXiT01q1kzL5slOf
         kaSeiEgTRIvLqw3KNNECO/ivQYcIGWfDat2H2idzoUDtscJNPS3YZBaV5yTVF+uwxQqw
         9B42ar2uV8BP9IKVLJdzcpSsWH65DXCFRNhhn99H0267kHCUzGGp/eZnxj4rxcc9EpeM
         XwgbmXjKYniP9BIU05iVEBKF2zRrhpW1CFTGfLj9J6ufNZ1eckR9cAao/1d74AGzq5GL
         LHOGphHs8RS4D+adxIc2oezfhEV+zUixKjcD70SQMsePP0AZQioGNZrPe2hJSYiY3q4e
         sinQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nRCMU6EmVi8aIx6A35l+qWCpOvxHf3/BbddK750A3CZxv5CdC
	Mriq9DPMC0C/0CXrfpfmNDc=
X-Google-Smtp-Source: ABdhPJzQXWw2U6gXFwHgoqrN4kKcda/D0bYrLC6rOhGiTEr8uD2dTE1nDG5moNQLOxnYckLpTs4WYQ==
X-Received: by 2002:a6b:6303:: with SMTP id p3mr59561078iog.111.1594603539516;
        Sun, 12 Jul 2020 18:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a89:: with SMTP id c9ls3790272ill.7.gmail; Sun, 12 Jul
 2020 18:25:38 -0700 (PDT)
X-Received: by 2002:a92:9e5c:: with SMTP id q89mr64253836ili.265.1594603538901;
        Sun, 12 Jul 2020 18:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594603538; cv=none;
        d=google.com; s=arc-20160816;
        b=xh7R1Zc91UT2F5BYWtK6QsmmtX5L87drGfeubcg0jWNWqGF43PXjt1+Xl0xfnF04CC
         4yZPFguNh+IGemi563AcJhKsy+rpeWpsBBIxujdtY2Dg4wTCmDdY/+QvimRrnUIG408o
         HrgYacmwF8erKl0ZwvRPkHCD7BHeMFxYJ2jMJVWt0cEqS+w9bwQatavx/1GyTgMX1Cei
         sE4LtV2vSAv6NPwdYj0L0eqh16+FdWa8cP2SCLRkPoS4SofxviTJLuOeiu1hvUBKslZq
         0cjlS0qZYIjIpsQO3W8wYXSJ5gf/eulsmTBJsm3jKAftSRrA1sC5LAhlkNAV9bMgf834
         T+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=u7Jop7cZN8wbIaggddxP3/Gu6w2p7TP7pCxcVgLAycg=;
        b=Py51taFKrGVMpKnif2oXvttPe9jkBguDIDBUmsmgcebmCNIpIlOSJGNjBaDocSGQQM
         0Dipn+J32oJclhg/7QulwlJ3q4CEIqrCymjiPvaK+RmUNYujeHb6D7DpB1IlXjtrrKRm
         s/deAPxapzA3MMqGWrbfjgtXOCvfGJD0VWZXds7TLENMLwqg70sJM5YBEj3aF8ecsY9W
         gUQZ4y1xeYTOTof70Xat1M2dB9HFgwNoHdtIpRvaVPsaWGDBxSNgd8+yMAIzZwl10GTe
         3suBYRCEwjwB5MGXulkWBiVNsDA5APfB594hczhwPZQSTYb3J9MnKSLNd/deiD6vJ2Z4
         oOrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNvRaDkf;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id f15si614701ilr.0.2020.07.12.18.25.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 18:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id f23so11789957iof.6
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 18:25:38 -0700 (PDT)
X-Received: by 2002:a05:6638:d05:: with SMTP id q5mr87613435jaj.2.1594603538565;
        Sun, 12 Jul 2020 18:25:38 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id k3sm7436436ils.8.2020.07.12.18.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 18:25:38 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	jiancai@google.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	sedat.dilek@gmail.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86/entry: add compatibility with IAS
Date: Sun, 12 Jul 2020 18:24:22 -0700
Message-Id: <20200713012428.1039487-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.383.g050319c2ae-goog
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TNvRaDkf;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang's integrated assembler does not allow symbols with non-absolute
values to be reassigned. This patch allows the affected code to be
compatible with IAS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/x86/include/asm/idtentry.h | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index f3d70830bf2a..77beed2cd6d9 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -468,34 +468,32 @@ __visible noinstr void func(struct pt_regs *regs,			\
  */
 	.align 8
 SYM_CODE_START(irq_entries_start)
-    vector=FIRST_EXTERNAL_VECTOR
-    pos = .
+    i = 1
+    pos1 = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
 	UNWIND_HINT_IRET_REGS
-	.byte	0x6a, vector
+	.byte	0x6a, FIRST_EXTERNAL_VECTOR + i - 1
 	jmp	asm_common_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = pos1 + 8 * i
+	i = i + 1
     .endr
 SYM_CODE_END(irq_entries_start)
 
 #ifdef CONFIG_X86_LOCAL_APIC
 	.align 8
 SYM_CODE_START(spurious_entries_start)
-    vector=FIRST_SYSTEM_VECTOR
-    pos = .
+    i = 1
+    pos2 = .
     .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
 	UNWIND_HINT_IRET_REGS
-	.byte	0x6a, vector
+	.byte	0x6a, FIRST_SYSTEM_VECTOR + i - 1
 	jmp	asm_spurious_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = pos2 + 8 * i
+	i = i + 1
     .endr
 SYM_CODE_END(spurious_entries_start)
 #endif
-- 
2.27.0.383.g050319c2ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713012428.1039487-1-caij2003%40gmail.com.
