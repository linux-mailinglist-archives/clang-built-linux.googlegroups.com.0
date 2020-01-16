Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCF2QLYQKGQEIVLVDUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id D617513E7A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:27:37 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id b18sf3380871uap.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:27:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195657; cv=pass;
        d=google.com; s=arc-20160816;
        b=b/JjeGhB2jI3Ev1Xi+CzSm1JAg7eG2WWgQQW9w90lEYSeHdQQDxWGQqqST0WCna8rt
         LdwBVf+rNnFFTV6fjyrXmg/HgRbTa5yP2IjxyaxhDKhF9Aju3zu3eRN4Wc3lRMnKrvhf
         0P2DtjvDs3xmXfBduRsTAlOeEA/sQOQtwBK09w15eVtOS7h0vUDfLU3mDuzi1nkgvSlv
         /cyhNZmbqgiJyDwVMB6j5LAcomBCJ12DzV3/NVyRZWdBrspYOvp/DLXtjAN9JPdiiHvA
         1qY9IGuY6aUCrr8SGtvB6EmHCrK7xHJ2F/L7K1u282ryfAD2Ugwj+bzhKQ2+6PFuKRS/
         FPdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DS4AuQCSCL1X+6IUDdEpqqt/ctDKkgrLkKyfzsFDh+0=;
        b=rtixXpEI2XiqGwgSd44criyQtl6NOe89ww4uJ1xHYfjoO7S0sPwcJYr3fdJk6RnEum
         rTm4IKTsLLLCBFcDr5F8LlF9PiDN+/qrBtt0jrmL8tMxJlrgYxu+5l71rLtUVV+v7s0b
         +kHLEiTcg25+3oMuBDtc1/0JH5Vt1X5VuUO1hWNA8bO54DPUCCUbrtqERdbfp3fKGXrw
         QCR22VA79t6xArMFPfq+JHnvw/3XpDUYjsHjuZdoQsDGrF5vz+lDpqYk+9+JEBDT21tA
         ccDWTyGmc+xMw+r3eokbkqgiJfRp7Cv77SkZyAmkcEDNttH6OTz2Do6Hf4WamDlnQFp2
         IB9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w9TYhBzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DS4AuQCSCL1X+6IUDdEpqqt/ctDKkgrLkKyfzsFDh+0=;
        b=oBKCmLsv29xdyVaiMq3fFp0zdNu648Mj+aJ5yblTUXOEvLRq6+uir1bu/RHFzNcTJe
         x3ljhGjmbvEbEc/VvCwDgLnYGj+h04qYoKrqekLlO69ZECnXcOHFoQCwqK6O0APmkEup
         1XWsS0dsA9e4bFT2xuLmjBbRl7KMgnmaPbyr4BGQBjwF2gFe/jQG38K2sACmzA04RVg5
         GbBZ4h8q4ZIrHUfna0pEQHoH/m+/3vC/uJ6pPFt0t0X6wba8bqQ52Jv7CRkV9/2abFg5
         2aBsjnBIlQ6lVwVa7bSMn7A/yWZJgaOSVlnUvnF4A86w7D4DzP10VXmvC55D6nIpeOp+
         +6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DS4AuQCSCL1X+6IUDdEpqqt/ctDKkgrLkKyfzsFDh+0=;
        b=Je8K2+UyO2jtDGCFbuYnQOFa4aVIoP65XAmM7cHpDEWGxerGo5wPoTUIqRX7N16L/5
         V++Kdnj3naIkN+qxPA3eGuI31OGLvx4xTVxIGhj48XpkFgdMqsl19qOOChD/iVzymzor
         ci2iSf8CfP/ghDvh23robq1eNSgjT2dAK+rq/C+e0Gbc8bsvm0BYox0hpQiP1Snx+UCD
         RjoWHFVgJpd6xKbG3LheiT9z67DYlEmNfMPmoWboarDjW7qj5ko+rUXtXy0SorPFttOy
         sMzSmDhHX+egxILD0jrSYNaUSEPLvzo51yRSRHCuyPCQSCXXPlx7ebs/f1peAS4NCaXy
         kOHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbnpuqMUE9tkV9sqdf8A/KiaDlTtQNKKZyDakz545+fBypqPWB
	fUsvx9pnWt339eA/rWO1v28=
X-Google-Smtp-Source: APXvYqxmqzDmQOkFEEhgAKfn5qklRT0RIgSh+fnVvrJ8iD8h1rIpLnxrBZamBRN3GgqMuYn8i8EvEg==
X-Received: by 2002:ab0:7118:: with SMTP id x24mr18156184uan.29.1579195656776;
        Thu, 16 Jan 2020 09:27:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls1997227vsp.7.gmail; Thu, 16 Jan
 2020 09:27:36 -0800 (PST)
X-Received: by 2002:a67:cd96:: with SMTP id r22mr2241458vsl.165.1579195656413;
        Thu, 16 Jan 2020 09:27:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195656; cv=none;
        d=google.com; s=arc-20160816;
        b=zFwg5Nl8cd79haBrIvKTBLO5rXXy7t8Pvgb4nHsucQb4aaUmfY4B5SCynPg7cgQLpH
         Il+tZbljMq4zI8OT1s91UDQyJFZ9x6VvNbIOK+OWgPiM1ucSMkRCkjnvZYQo/6T4QWYq
         s2b2OvRRx4VIkGmhoFCGoyAStKnL1YVPKmrT3et/gvWUiiit9v8trLBhHEUKME6h2oEw
         DaEVG0spzYcrZXJ0TlQjD2Hmk1zgG8PMe/RkS1YF+4Mvodbn2RI7JCO36EBQwhianWxI
         65UNZALp5egP9Sj92nEeH0Ga/mYQhQJinUeZRaLzRgdWNbEObwFmQmZvNC2oLOK3zfKG
         aRqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SCcxqX8/IvYiB6gZdZT4NkGsdrTozojdpMQ8pa/uZAE=;
        b=j53gX0RhKzP4wA+OG/1SjvsNs10KvUHhFcN1hF13RdO1fDg3fmiGop0gmszum9igTp
         Rd6LlBhliBYNlvdb7th1jjUbPH7Z6SELQWmR9J8VmLfLIIfwe3Zbye8vMGLKUQh7Thvi
         MtTSAqG2gV5Si7ZJ0jw9Zv5z18lXeRLqLBGeHsJwacng0JEfBh0BvcLFbbaC8VvPohRw
         j9hmK1OxAddd/pT7rVO58BxEE4+YW9dbLZC0kI0P/xOD4a8nB1wP4wGpigL6Og+XvZoX
         6YYpXUUSxqKIt4MWAEeNnOxMcjeb7eNF5tTd4XeSiK+X1aCDA9lOgUh/mby078MWvv1q
         aCxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w9TYhBzz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si1089014vka.4.2020.01.16.09.27.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:27:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 53BBC246D1;
	Thu, 16 Jan 2020 17:27:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Stephen Hines <srhines@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 216/371] misc: sgi-xp: Properly initialize buf in xpc_get_rsvd_page_pa
Date: Thu, 16 Jan 2020 12:21:28 -0500
Message-Id: <20200116172403.18149-159-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w9TYhBzz;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b0576f9ecb5c51e9932531d23c447b2739261841 ]

Clang warns:

drivers/misc/sgi-xp/xpc_partition.c:73:14: warning: variable 'buf' is
uninitialized when used within its own initialization [-Wuninitialized]
        void *buf = buf;
              ~~~   ^~~
1 warning generated.

Arnd's explanation during review:

  /*
   * Returns the physical address of the partition's reserved page through
   * an iterative number of calls.
   *
   * On first call, 'cookie' and 'len' should be set to 0, and 'addr'
   * set to the nasid of the partition whose reserved page's address is
   * being sought.
   * On subsequent calls, pass the values, that were passed back on the
   * previous call.
   *
   * While the return status equals SALRET_MORE_PASSES, keep calling
   * this function after first copying 'len' bytes starting at 'addr'
   * into 'buf'. Once the return status equals SALRET_OK, 'addr' will
   * be the physical address of the partition's reserved page. If the
   * return status equals neither of these, an error as occurred.
   */
  static inline s64
  sn_partition_reserved_page_pa(u64 buf, u64 *cookie, u64 *addr, u64 *len)

  so *len is set to zero on the first call and tells the bios how many
  bytes are accessible at 'buf', and it does get updated by the BIOS to
  tell us how many bytes it needs, and then we allocate that and try again.

Fixes: 279290294662 ("[IA64-SGI] cleanup the way XPC locates the reserved page")
Link: https://github.com/ClangBuiltLinux/linux/issues/466
Suggested-by: Stephen Hines <srhines@google.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/misc/sgi-xp/xpc_partition.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/sgi-xp/xpc_partition.c b/drivers/misc/sgi-xp/xpc_partition.c
index 6956f7e7d439..ca5f0102daef 100644
--- a/drivers/misc/sgi-xp/xpc_partition.c
+++ b/drivers/misc/sgi-xp/xpc_partition.c
@@ -70,7 +70,7 @@ xpc_get_rsvd_page_pa(int nasid)
 	unsigned long rp_pa = nasid;	/* seed with nasid */
 	size_t len = 0;
 	size_t buf_len = 0;
-	void *buf = buf;
+	void *buf = NULL;
 	void *buf_base = NULL;
 	enum xp_retval (*get_partition_rsvd_page_pa)
 		(void *, u64 *, unsigned long *, size_t *) =
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-159-sashal%40kernel.org.
