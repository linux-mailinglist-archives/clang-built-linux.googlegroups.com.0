Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBUO2YD2AKGQEFV3344A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE811A437E
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 10:24:50 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 61sf911074otw.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 01:24:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586507089; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzm62unyiqtDGQxn28z8XXm6zVh19YZjp8cOjiPQ4EJkvSumkzY24iYthY6hw7yTzy
         OPAGFyfNmXMiZ6nwB5bd+QG9XDnuwFWjuBcLEydpp+/jdx0oeoVCri0lq99M7rYLI5Io
         sqLS9h9Lx4iV710xfAl1AboDt0Wucg5p+C6vDqnmGJm+fBNOMuqgfR9rnKBcMarF7gxN
         UXJROsGMqnGFVV6FdHI1fXSnhIq6duUo7I4yHuJInQXRBqCReKAJdg8ddPsmv7kxhVp2
         63flkyckyNSf9mqkUmA2X6C5e2zq/O5gY/y5wHEHvXGziFvoMkPYCqvTBOcAopSlZOHw
         o8zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :ironport-sdr:ironport-sdr:mime-version:sender:dkim-signature;
        bh=NPvXiVhVHTfD/1Ne4TJZ7cpX9slenVMoBwFcdXo3+Zs=;
        b=K2WFg5Gs8Sl1ptTpswknR3odzXPiteTJ2+Qn4Wxrsv4CSpKKF0CLXPDe9wC3A0gnmL
         kPjsQAWbpJ+4eqrBe5UJOut/ULlbBLwXUQABH+qthjFLPvg34GdikiooAt2CHsWoe6Q1
         b6zgg0IGG2AI+bdiVdkmr2la+E700/S2VfZWQIx3WzHgXene+9UV2kggRqogEcuf1qp/
         bzXbYhjLz7ZiMF4kFRDv77CR6gZsD6zVGS5sdEzbpOfXpnyKl3Gv7sB/5WzBQZHnhNH2
         aTXrNi0SQn6YosR/iAl5lZZsKBf2UAimo+Soxmsm2LnLYAvdLi9FGooDkjXim77kVkG6
         HB+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:ironport-sdr:ironport-sdr:from:to:cc:subject
         :date:message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPvXiVhVHTfD/1Ne4TJZ7cpX9slenVMoBwFcdXo3+Zs=;
        b=dqouHX2l0iU5TmxvO79Av5aU8opIHg8bE6x/lkloOWczRaAdSNtEpG2EDMGJCyFL6A
         IbSfFFkkMVUROvuCUgzgQeYgTElkNMeZGiYmqLup/vN7orLmqmf11+RR3QXIk1o0rXdh
         hdkkVVZs9W1R7b1pyzXSCh49/NH0gGaarIqb/O1VJNUQ3a8wzwTaIMi0Cs7pOzix/ez8
         Zkn0tSd4r/BTA2Xq9m2oYvxZvz3G0+jGf7kf0kmkXgKmLUmD17Yxh15THtqiDmPHlHqw
         QfxQwUpLKEGzQoV5ui4Pks+XqSBSdFQe6QK3DW02KZ2r46AUGiA6T/wVCP0RShWJk87F
         7mBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:ironport-sdr:ironport-sdr
         :from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPvXiVhVHTfD/1Ne4TJZ7cpX9slenVMoBwFcdXo3+Zs=;
        b=Pj8jTPaoHVeMUYoKhp7XrFP1cW6UFi28mljc21oJrpFZlg272EGM2yN3bb3qpIzkzJ
         xysqRZ29vQYxgBfyx3hBs58chcFCtntfmziOi0zWm6Rt8/lZBmmCGaI33yckzZefFLyB
         iHsU5at45obarcbLg+uYIaXUhXCwCeggThvBsvM7f5nUAU7b0MMd+bRFr9CMjTH2ITAc
         aVfezqCHaEpHsr+sLqvLk3P9UbSGt4ntaSz1LuFt9zeXILOOMVtCeJA9ZxV0ADqN2EjX
         xFeyHJXYNYZyLsF9Y+TJddz2PqckzDgcaHmR4tgPj9RKMGsppRbEBRXTz1nB67Jq+Fcu
         ImDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubXOoYvScV4g3yt+IRWmq2JtcPVWQVa4uUoocgHDv6FJIjuzE2a
	Y78X3PlZw5RM/hgtnGyYvZs=
X-Google-Smtp-Source: APiQypJURcyJDJPNRRdCoOXYdcwROgAaU34LwhCmQNdEn2R2lkMnDvrF+OyLWhL652+tbOKS6LClnQ==
X-Received: by 2002:a9d:77d1:: with SMTP id w17mr3328632otl.44.1586507089404;
        Fri, 10 Apr 2020 01:24:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls5114218otb.1.gmail; Fri, 10 Apr
 2020 01:24:48 -0700 (PDT)
X-Received: by 2002:a9d:1909:: with SMTP id j9mr3357420ota.192.1586507088853;
        Fri, 10 Apr 2020 01:24:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586507088; cv=none;
        d=google.com; s=arc-20160816;
        b=TDwP23DmtbHhi3Fvz2sZgFxX3QQRf5sfZiJQGUA4fnka2cLy30kFtBlDtlpCB30jNT
         dusfQjwCRTKu9qw/4HqYU/4PCNeOLdq4akqNZjd7yUhx2UjAvHhhd2iQ1/nPxcpnSD3X
         6hfUmlDceLh8uvyvpwKHM/BBcNUsxe5JdBaA6kRrP6nD/ej9sqfGdMUFt9Pe8vIXiU0x
         cGXpSVKpbhyjJGXT8vYAOxfF2IapXLWYxir2QlK33ZezyqA5W2QfNvrzrttuLgEInweW
         Fgo0S/7HsmlIcKEHyPmWZz4o54me+TxWNKsGfGQZ83wstOeWx7cK9FHMc1zB072ely2P
         9ZVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=Z13HqteARcF3SjDdppyOnkA3blu3prE9bKxOqFDaF1c=;
        b=iR7es5sSWJlJj6u2FMpWqDm12dkrJW587I8Nr457TW/WTucFtM0n18obhVDtbbAeH5
         WNcPwkC72ikph4zRDNlVaEXLBdJSamMqs8+ta/Qdfa1WUiKevuDw0AuMsGlz4FmhRsij
         sWYZ7/RBJ5n8za1q2OZXg2LbpjfPsSfSHpUu8VtoAC7qcfRlOW89o/EcKPUZqQH7IOlW
         BF78orxaGppfntkMuFGbSzRSMr+3jcRm5y0m79LExjXsvTQjZg6AIKnt32MCOXiN6hLK
         A5PUGzosHw8GnT3u32FqyYEw+H2oUjvyfnodMPCbknlrRpCWSIuPVAGMPAfYbvVNkODo
         x6Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id e21si54076oob.1.2020.04.10.01.24.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 01:24:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: HXX0Hv9QCOROsIVmuSEeZ1EWPGuMP+p/upCqcirbNMmlyiDwzcHdgSClu3/Lq4BltL2G2d9CAp
 50HZkKqC9plQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2020 01:24:46 -0700
IronPort-SDR: 4J82DjhtLJQl5YAb9QpZYCc1HHXmkr2XSVxtsqIJGROazogFMGxZu4IhH9LDJUmBlPg6y3PMoO
 lx3/P6QbX8Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,366,1580803200"; 
   d="scan'208";a="362390975"
Received: from brentlu-desk0.itwn.intel.com ([10.5.253.11])
  by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 01:24:43 -0700
From: Brent Lu <brent.lu@intel.com>
To: alsa-devel@alsa-project.org
Cc: Cezary Rojewski <cezary.rojewski@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Jie Yang <yang.jie@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Brent Lu <brent.lu@intel.com>,
	Richard Fontana <rfontana@redhat.com>,
	Kate Stewart <kstewart@linuxfoundation.org>,
	Allison Randal <allison@lohutok.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ASoC: Intel: sst: ipc command timeout
Date: Fri, 10 Apr 2020 16:18:25 +0800
Message-Id: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=brent.lu@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

After sending an ipc command to DSP, the host waits for the reply message
which will be read from SST_IPCD register in sst_byt_irq_thread() to
complete the transaction. Sometimes the value read from SST_IPCD register
is still the reply message for previous command instead of the waiting
command so ipc command timeout happens.

In an experiment we read the same SST_IPCD register again when the defect
happens and found the value of second read is different from previous one
and is the correct reply message. It suggests the DSP is okay but the way
we read the register may be the cause.

Currently the driver is using memcpy_fromio() to read the value of 64-bit
registers. This function is based on __builtin_memcpy() call and depends
on the implementation of compiler. Since this issue happens right after
the toolchain switched from clang 10 to clang 11, we replace the register
read with two readl() function calls to avoid all optimization from
compiler's library.

Signed-off-by: Brent Lu <brent.lu@intel.com>
---
 sound/soc/intel/common/sst-dsp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/intel/common/sst-dsp.c b/sound/soc/intel/common/sst-dsp.c
index ec66be2..12af7aa 100644
--- a/sound/soc/intel/common/sst-dsp.c
+++ b/sound/soc/intel/common/sst-dsp.c
@@ -42,7 +42,7 @@ u64 sst_shim32_read64(void __iomem *addr, u32 offset)
 {
 	u64 val;
 
-	memcpy_fromio(&val, addr + offset, sizeof(val));
+	sst_memcpy_fromio_32(NULL, &val, addr + offset, sizeof(val));
 	return val;
 }
 EXPORT_SYMBOL_GPL(sst_shim32_read64);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1586506705-3194-1-git-send-email-brent.lu%40intel.com.
