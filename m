Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBV4CYPZQKGQEOA2HJKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3741883CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:52 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id l7sf4097251lfk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447831; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3QRmr6/QkrwrDWJMpkXR1kVZyjihPKdKqy427D2R9meeeSjfs3Y/itdmsdxm22466
         aP8a2HEU09J+/A5sxq5w4lX2afuEPzpIk68Zi8m3j/4l8py+GLWk1PLB0b0DcGhdHv5M
         qVAOqoNJ1xeSex74nQl7+LUYOGxBJP2tW0rcN7x0ZadDoFrhVlK197UG7MxRcuR+tlZl
         SsqAQ9yC3LaxVEtnhaPhr3GdnEdz7e3GqsVWt3Py7vxmqBHglN99XOY6jp55bRtanM/F
         1GxtwuzBAhNaXsYhNPMRSBvLuhdX99HwHnzfClOy2DWbHhkvcmZfRSn6Mln4IdCK6XN1
         m98w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0Qsn/AeDvCDcD+MwWPM3OYqPuv6CwKVCQYw8ZJKrC8w=;
        b=XDXph8bYmrb3S51lLbCYFfbvY2hOdOExYjQ9wAMRNTVXLv3zeQM7SwN4mAivMoC2cc
         zeTzp/qChTpoMR85tyC/keVFBrjB1rDXbYVxZmiXCO+sHnrdWaZz/lKFkdes4Z5WvLbI
         q4TwZSdgySjDuq0xu4bq2OTiAl0+I5uehBn1lPImS8eJgKB/Jky/Xu7FDB9oGUzqyok3
         QT/85jL59dIuXTha9AkZG9RHxwdacG7PMhQ7z66iYuHKEg3UnJkT9oPQxZ3HmpnMqGmn
         zILqRr0a1dq3LfXWoZgU6HvvdlxPDihL1TG8ulN7oqQdCNrti+l0NchnLIgQFj9b99JC
         Gtnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Qsn/AeDvCDcD+MwWPM3OYqPuv6CwKVCQYw8ZJKrC8w=;
        b=rrzGXQ77tX2WZxlNt6G0H/LS4JaOGKToX+NZ2nTsh7EeZX413rMNYuplGAj8GTAK9L
         f2Z6WA+GH5mFBUO5sj68CRpvn6FBxFgfdmCMYUMGK/oKh0z5zgtap0axNLMb6/h8uUXs
         ykkkhXPuoNUEsSray7NYy7UfnJrD3/ZxCO7TYZv2bWKqdqfqQ+Rg/msiDaOngTL0ximV
         6frJKwjHlJZAr3GFgvG0mSK5jG0RsRRi77aQ9TIv/KerKYccVv8k3EOIxBwz607lhzPu
         sP44EHwA4FInYYqgCvvUJu90dTzRFTlX95+sG+L75ePeI202rvnu5G/OfznIFxPMBj+7
         FGVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Qsn/AeDvCDcD+MwWPM3OYqPuv6CwKVCQYw8ZJKrC8w=;
        b=Q4ZKlGuLymtLTbZrdr6idV870n7Mdr9SQFeAb/Y8scWyq22Pm5o1fyFHWSDrq73MDS
         vvOs9Q+1fq8SPHsyd8wD0ggWmdE1Y9OmxbDYECfuaGrkMVkaw6i/piCFO4simQRDYp2x
         5JclNi78Y3wf6Uuc65XWZSWraZ1mOjtTTVsyzCpKlKHG7BG5v7IKdlwyGsJpNZk/+Rc4
         52eSj2Sdx8N57XHLpvQFmKy3/UbnVsyDPvYceui3EdTtI3YAvtVgg3tYs0CAlx82gyaY
         xNOxzlnadi/PahDompYXQ+HsmLZRi4stD7wkiIMhLc/NiFEt+MEjnykch31oqxwNe3J8
         yrmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3zKYcbU1ZeDnBakXtd1bnch0CPp2mY7HiRA6tZdU7CRYFY3/X/
	rMdxURxmDWxbj1a9kNY9pa0=
X-Google-Smtp-Source: ADFU+vuCmr9Vji56l3A80ENrW62o3dypL0Dp+paBE1dz9D4gJircWLxzqhX9kGc+bL52zOpy3zJO8w==
X-Received: by 2002:a2e:8644:: with SMTP id i4mr2807240ljj.20.1584447831262;
        Tue, 17 Mar 2020 05:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:50cc:: with SMTP id h12ls1146889lfm.0.gmail; Tue, 17 Mar
 2020 05:23:50 -0700 (PDT)
X-Received: by 2002:a19:8292:: with SMTP id e140mr2726826lfd.137.1584447830472;
        Tue, 17 Mar 2020 05:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447830; cv=none;
        d=google.com; s=arc-20160816;
        b=f5SgE2+OdjELS1X80sV4Q3h89BU6qYRb7HoknXTl9ap7+HJpEf1zcC51f0uu8Jhw9p
         Do8a4DPbajr+TZ54w3hj7i7ppBUxhhlpO9gf5ITS6sd321CC6fnVnRTCPkr+AxPgCKW0
         WsZw/Et4D3SsuZjJ/8j4LIIJIyafVRQ3cSrTA+JL1nMi53lOlf4f+JwIxUvCbxnWqFHS
         DbYF8Q6N+F58ZdBptjOV6DGHdWs6HaPm43Liuk1k9Lj35bwHaPgqjWHig9txPjeBNp7e
         B52wHBVZcN7dNRNECdfeeK7XjUTjSg9ZvB2s92I+CNNtIgut5HH1DOVxnFHprSDAvxTr
         rVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=MQdbNXbdBQwI73Kb3NkQXG4tbQ72zEYs9RloRT8O7uY=;
        b=Au38fG3WTDpuJ+P9mZUPB4IEzqeTEsQzy0PgSk/0L4HR8rxzipZbi7v+F96mkYmlzz
         1IkvaPQOAWhVrZqeqacvNXRzUHFiGrp5aIk3Qw7fCLmn4y/2/JeIxHxKvy6piHw40J9U
         hafka8pxWptqaue4yN1Kh6/cEtxXT2HyGpQDFJ23siune852q+l0J3m/FPYp1NJ1PFtR
         nN4grgRaoMCIMErSkX0q75p0pblrPpsQ90Z/igsO1MFa1gRYiHsaoT5anBfuBVi2KZR+
         SMCBt475lm33MS9Q7+XF8K8nR0BdpRCCBHhtYT40qieBKLAcseJ805xdkOd++GqKjdEg
         paAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s17si230314ljm.5.2020.03.17.05.23.50
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71C0C101E;
	Tue, 17 Mar 2020 05:23:49 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6157C3F534;
	Tue, 17 Mar 2020 05:23:46 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in vgettimeofday
Date: Tue, 17 Mar 2020 12:22:12 +0000
Message-Id: <20200317122220.30393-19-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

For ABI compatibility with arm32, the compat vDSO layer on arm64 needs
to return -EINVAL when UINTPTR_MAX is passed as argument to the
clock_get* functions.

Replace TASK_SIZE_32 with a more semantically correct formula that checks
for wrapping around 0.

Note: This will allow to not define TASK_SIZE_32 for the vdso headers in a
future patch that will introduce asm/vdso/processor.h on arm64.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/vgettimeofday.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
index 54fc1c2ce93f..91138077b073 100644
--- a/arch/arm64/kernel/vdso32/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
@@ -8,11 +8,14 @@
 #include <linux/time.h>
 #include <linux/types.h>
 
+#define VALID_CLOCK_ID(x) \
+	((x >= 0) && (x < VDSO_BASES))
+
 int __vdso_clock_gettime(clockid_t clock,
 			 struct old_timespec32 *ts)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
+	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
 		return -EFAULT;
 
 	return __cvdso_clock_gettime32(clock, ts);
@@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
 			   struct __kernel_timespec *ts)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)ts >= TASK_SIZE_32)
+	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
 		return -EFAULT;
 
 	return __cvdso_clock_gettime(clock, ts);
@@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
 			struct old_timespec32 *res)
 {
 	/* The checks below are required for ABI consistency with arm */
-	if ((u32)res >= TASK_SIZE_32)
+	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
 		return -EFAULT;
 
+	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
+		return -EINVAL;
+
 	return __cvdso_clock_getres_time32(clock_id, res);
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-19-vincenzo.frascino%40arm.com.
