Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBU5VY75QKGQEJMFYJWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 9556627AE17
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:45:08 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id b17sf190016ljp.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 05:45:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601297108; cv=pass;
        d=google.com; s=arc-20160816;
        b=gLDdFn/tW3d2e26y/kUuiP3r/xBaMBBdao6zBLY0S0dECKq/6wJOqTCrsaXhalE+k7
         kECEgPIVivHW/8FXJ0cEwf3xTpjCvnQ9/1RjIiML1QOqZaILNag4LNmIj8+pxJdNlJ1s
         s7/Z4BJhS3Sj65l7+b/wjUyUNyokpA99xiItdhrrHkn9oBed6DIOxSF4DR/hC0y/T4vq
         cbsU5HoJPw8yZXNGWUH2OLnepJxfqnv2/IFJBU1UFNgeMblvyCE5eDlKru659BFu4vJ0
         Qvu+ZWeAmSFVQOZqufqIA0xW6sJxmoCEQsRAXgyN6SUDKFhPD7sSJMSASIEy+OODTVAX
         NUIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=x4X8NYbQeQFisqdEVsc5qRrEadMPDpe6VOHCtj+18Is=;
        b=vgJGz9/b+YUEwyjJz42wizTJS3sWI379dtp1XxO0r20U1LVu/lU4I8pbNcQgt+rieP
         Sh5dva9zMy1kStuI6J0DILIfEUB+BdOCxKES8a2tkgl9Wr302hfs81qswpuTfeXPBbJ2
         msJtZBfwl4HtbbWpeqL0U+3YgCSttQVMipmVJB/EF+BA/0PQ6EHboBG/1HJcCREs72fi
         eomwAxL4b83ciiKJFeBehiKVnowSNvRGqdyBP+njryybTKRbhxSLVvgBYDf5P0MeQSmu
         iiPvsWjm2UVvD94VUn2Y4Qigesf2rltXnx9KHr6RAKWQYRFlR8qpaqjUF/wetignsLbX
         vbYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCS0qWvu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4X8NYbQeQFisqdEVsc5qRrEadMPDpe6VOHCtj+18Is=;
        b=ganRxdXXuLhgBF95kub2cF1agZdsjveZ8MARmgVcx78bAdQ38UXp72Q5Pmx+WaHQpU
         UFmk1Pv17U9RVw0LWcsQgJqQBBiylORhcvWVGr8voRWf4AGmTJ+iBksniV8ASVSRlUFy
         QlQVFEhaZlOwYTkBSGAhvI/1/uiogpsFzxFfljGUzEryxQYfoVZ9cte7xoFQlWOXhE4m
         1Aq6Cj5jBs6ySO6JECRu0at6op6gW+a5LQ1kM6U0MI/5fTAhmGu7V5OIRJAMrJ/TvRwo
         XxWgMiptDw+CbKnb9pECgEUUmCBQCOi18KYG27Ug5+BXi2m1YrK4d5L+cCjW6SnVxSEN
         jFcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x4X8NYbQeQFisqdEVsc5qRrEadMPDpe6VOHCtj+18Is=;
        b=rkO71BrRtyBnycD28hs3dykvn+F5nb33+gzpKXg0WuD+czGsMtr3bbzVFB8QntWex8
         09Yq0k4KKoHRi/mce2ggKnxBtSv9gedFgoiLluEHd3oZIk1H3r+LAUons6awsEc8K5mW
         S/BsuCQArRbmoSNwbKub2vKGYWlcUYc6+qVeWRgi/1lqJjFC1V3qPH57tPWr1LtZm0E5
         6t3QfuFGSFezOVZW3qrGpvpSoLbAz2PHEq7FU+mKQ5cu0h+SDM7XExyl/HGcsqSiS7jH
         0KprLueD/JS3SdDTmFrL+UDGc7ybQiKaQ7l3DuVnnQCej+J6aKhRgqTY36tknMvblqKW
         rPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x4X8NYbQeQFisqdEVsc5qRrEadMPDpe6VOHCtj+18Is=;
        b=bbxdWnuLd802BU+9G3SQ/6c+fDgGm3s3XLYCEsBcpO3KHfgCNqGKq3OrHDtHmoNzyN
         i6qLwvpLpq7rzRkde7XTUqSpWQIwXcl/jCleHSRGzbccl/oFY4Ig+/SCFZjBRv19BQQK
         J7/Oo9FAJl7O+B4UyCxf0YfgPGPuLyuByKgSxwuhU79n0aGa3B6p4cGFUKtqfy5Plul2
         FwQdUYFi+tRH4zkjLoohCtBj+ZrLJeAKrERisBP4qwpcV+NvWGXIx1roFbZ/IQVkqnYF
         zo2FTrXCdE0HO6KokbmA+o7V+It+HOEn8qRo3nawOdtwY2UCPvlEsBEjkm/nToun9JKu
         gTKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oey/cfcAc/3lWvmz/PZr8pVc9CgDpfV67wXzA7g0YTzb8dQ/Q
	XvwpU7dWHA2yAyfnYQPU/yQ=
X-Google-Smtp-Source: ABdhPJzFXMBcdGtyCjHXTGZHjZG9ES9sdx35BcoQjPRRpJQXIsJ5P70LWLnXcNsHVEYkr7n1UPTYAg==
X-Received: by 2002:ac2:4827:: with SMTP id 7mr441148lft.493.1601297108013;
        Mon, 28 Sep 2020 05:45:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls817719lff.1.gmail; Mon, 28 Sep
 2020 05:45:06 -0700 (PDT)
X-Received: by 2002:ac2:5e2e:: with SMTP id o14mr413637lfg.163.1601297106650;
        Mon, 28 Sep 2020 05:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601297106; cv=none;
        d=google.com; s=arc-20160816;
        b=nVzs6QWOAIGL3FB9CI7KKeXeVH/uk4sifydTMJoIcZgmhpHkdeK/XJVJOh1joRWTWw
         CBvntXBAUDKHO8R1iYcCEA90I1vEjWgdnvumzPQuURwFrcQfO/sMVm8Z4v97bIugHcsy
         6G4F6OL5qFpdfOdsb1JLVp5aGtHBmN+rVzOrOAtrah749Pe2wdaApANmyByvhEpNL2mf
         VNz23a6C450nMfB299Ik8CN6D4YfvnrcN9u2G/sgsLo/fEXZRqk4UlMPQzvlf2033L1B
         xV01FzkLAfABQq4VatCKjQiHGC0xC/6hLj/jctsPGLpRX+WKX64qmTa1L+OIMYXCBVJs
         fCJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eDbNGoXjUOxyTq/2/7gQ4AH74xLZ8mTu0ngi+MaAE+k=;
        b=W0vLbtg1iWWA1dpuUA/0zsDzKFDvl5pZTL6KOS+e9H8kfJqd+OmGyRgBC9izNHsWEh
         ChXilIfEqA3/lDKtCJwkdEyX5inov033+aPLnIf9Vtqb2HnAhFF/QkOFY/FWuMQXDa97
         raUkmjPMxzra3ghMHn3DZ3JH2NRJoUWdFyFYP7jS1ShTtsAwKnWCy6XFp1mnvxeu6EwC
         ooLQSR1e+zzd/09CEV38gY60yNjs9RV/xLyCHRrpFWY9yp6l17xvzviCKJ4HhgZfUl8b
         /3l3SbLJeRbbIjElzt3iOZlmWVKwwQLQMxFb/DXQ10BfLkoHcO6OEL3mEBObGpJ/S9Lt
         dXrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uCS0qWvu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id h22si159800ljh.7.2020.09.28.05.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 05:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id i26so8246189ejb.12
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 05:45:06 -0700 (PDT)
X-Received: by 2002:a17:906:1192:: with SMTP id n18mr1527579eja.515.1601297106102;
        Mon, 28 Sep 2020 05:45:06 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d9d:5000:7872:7299:adfa:b749])
        by smtp.gmail.com with ESMTPSA id m4sm1589214ede.70.2020.09.28.05.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 05:45:05 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Balbir Singh <sblbir@amazon.com>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars in enable_l1d_flush_for_task()
Date: Mon, 28 Sep 2020 14:44:57 +0200
Message-Id: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uCS0qWvu;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

Commit b6724f118d44 ("prctl: Hook L1D flushing in via prctl") checks the
validity for enable_l1d_flush_for_task() and introduces some superfluous
local variables for that implementation.

make clang-analyzer on x86_64 tinyconfig caught my attention with:

  arch/x86/mm/tlb.c:332:2: warning: Value stored to 'cpu' is never read \
  [clang-analyzer-deadcode.DeadStores]

Compilers will detect these superfluous local variables and assignment and
optimize this anyway. So, the resulting binary is identical before and
after this change.

Simplify the code and remove superfluous local variables to make
clang-analyzer happy.

No functional change. No change in binary with supported compilers.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20200925

Balbir, please review and ack.
Thomas, please pick this minor non-urgent clean-up patch into the x86/pti
branch of tip as follow-up to: 
https://lore.kernel.org/lkml/160026187842.15536.285514864386042510.tip-bot2@tip-bot2/

I quickly confirmed that the binary did not change with this change to the
source code; The hash of tlb.o remained the same before and after the change.

So, in my setup:
md5sum tlb.o
7c7e096bab0fd87bd2c8437d8c7dc3fa  tlb.o

linux-safety, please verify and validate this change.

 arch/x86/mm/tlb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
index 6b0f4c88b07c..90515c04d90a 100644
--- a/arch/x86/mm/tlb.c
+++ b/arch/x86/mm/tlb.c
@@ -316,7 +316,7 @@ EXPORT_SYMBOL_GPL(leave_mm);
 
 int enable_l1d_flush_for_task(struct task_struct *tsk)
 {
-	int cpu, ret = 0, i;
+	int i;
 
 	/*
 	 * Do not enable L1D_FLUSH_OUT if
@@ -329,7 +329,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
 			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
 		return -EINVAL;
 
-	cpu = get_cpu();
+	get_cpu();
 
 	for_each_cpu(i, &tsk->cpus_mask) {
 		if (cpu_data(i).smt_active == true) {
@@ -340,7 +340,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
 
 	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
 	put_cpu();
-	return ret;
+	return 0;
 }
 
 int disable_l1d_flush_for_task(struct task_struct *tsk)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928124457.27289-1-lukas.bulwahn%40gmail.com.
