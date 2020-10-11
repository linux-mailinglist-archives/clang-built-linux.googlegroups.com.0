Return-Path: <clang-built-linux+bncBC27X66SWQMBBOONRX6AKGQECCO7YCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 136D628AA15
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 22:10:35 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id z6sf2654668ilf.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 13:10:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602447034; cv=pass;
        d=google.com; s=arc-20160816;
        b=W/1neLPyfmC9gBY2voQw//uk59AcI+jlXYh6t0qen8tSx7vT+qDdoGGcoRI3ujDpQh
         cFsgTDB5rGd/wjQDe1lqAqKD5Fq4+UkoiQHC/QrOYtUEl4fE6x++0RIrVtrIvwJhwXZU
         cCRppnvR4crbTSB4Mhv9n2F0om6dE/P5VQ0hKWces40/vPsB9i6f9lt5ZYvfWhtKXzKQ
         4AfQady4FVWJdIvGXYMjCiQMfZhLyJmdhEAjPJ2CMHSW877q+nF+nvUqQ5D+rRkBL5Mj
         BZt6QWtFi0oQkSPRm6db5s/xVQCjxQhd6pZNh2LqVQdrleCngqCZm0dtHLCBkShBlsHF
         HfBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=sVjXxLhTb7Gch11Db0iPbJ++r7YysMExUK6lBr2guXs=;
        b=JfABOAt1YMu8ZuEy4Fx1SzH9Fh6Aec0SYIW0VTmyz0vf/6XN3DIaEMhozti83FS0J4
         8yJbeyDGZ8ge1NqTjk1G3wclAqA1Y0Quv6xWoZ3qGMP1hUBe1XXoX3gk7bqJNbtlA7ir
         UMXjIBtgTLSEpnQcb2MLiA8aKRkcVOvCdd+D6jQtq512zUbY9FLkCMSnbouKyOGxCH4c
         2TT5UZsaThydpig43UToLsM/t5cDIaaECE1IHq5vW5a9Nt8BPBg7MfNvAbHwDtVuOTCN
         qh69a3vtVH5Q3Wur1GrGovfh02+X8gTvEYBrhie/xRvPmpvR1vfdhnRuxLE1D++VWG+Y
         GAag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TBRWRKcz;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVjXxLhTb7Gch11Db0iPbJ++r7YysMExUK6lBr2guXs=;
        b=b1xMT6pzNOGdMHn64gJsR1RiTwugomX3XaQGtRr7tXBvUD3h0/v2VHAe4jt3r+GeWu
         ol0f/iffQsII3CKKS0/DAsf8xUK9xq3pSLWM70Um9G21gf1T0kdPgfjsK8jdiw0RiO31
         PDrP2HBcogokCo3MaEXPisw9RUXL+0QUGU/2cFZUxyK+w6hI7MIbab0iylgHH68ypggZ
         1QiIj8MA8yaDImEmW2XOeWMbvBiH8rjSp6mDRuXtU73eTC4qdgrgv18AYP61pVnj+W6A
         mCK/5ItKGuhWkrEaaZr4jIEbHHEa0838CDz8RzgYXyu6xwibxOZOzpVIhDfsu+W6tp8x
         DBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sVjXxLhTb7Gch11Db0iPbJ++r7YysMExUK6lBr2guXs=;
        b=DENbXLvaRTLYdZoCZVXN4A4XvnKqfwFV5DxBCl7HF1eYraFRAKyrAMwCk6+EhZfSR4
         l3kLJ9Xj9rG3D5dBqJz2crPyLvZiUDBjfCrm+KIHusJ4XyuvIXMT8ZZDMOJZeFX54dn9
         rKMktnCodsqtODs+dSXLjjgJXVsWaIc31KxZ3h3nHkJK/EuPGrEKMAZs8Jtr+wYT1J5j
         VxAvAZgUTUYlOKlZTGOD86L4UKTmeWQrqGngih3DyQa/toet9wgoLNOaPqlfpXrLjzkr
         0fvlml7F01LFXmyDU0OZQMkoeGkkn9X40He+0SY6cUkezg5Ef3zY1IuQhFiwBqV9WBtK
         YLuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531c9JVDRTncq9ubroyiQjRpvXoC8cAu5+Wf2CBlUVfNapVHjzUM
	nQ8QKLdyDynB8S23U1onSLw=
X-Google-Smtp-Source: ABdhPJwRsOD+LWWlYoeI5mcK0gGX8YrC3nqFXt5cYZ0bQ+1EqBgI8F6U2EM0tRNLe4mrEr+5dPx/1A==
X-Received: by 2002:a92:aac4:: with SMTP id p65mr16029064ill.136.1602447033839;
        Sun, 11 Oct 2020 13:10:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:130e:: with SMTP id r14ls691475jad.8.gmail; Sun, 11
 Oct 2020 13:10:33 -0700 (PDT)
X-Received: by 2002:a02:a798:: with SMTP id e24mr6968848jaj.105.1602447033539;
        Sun, 11 Oct 2020 13:10:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602447033; cv=none;
        d=google.com; s=arc-20160816;
        b=P2pXo7irnjw/wyiQ/n24wS/NLbkJvsd/JvIffp5HkpL4l46B5LAnNJbOY+k2UD/JnX
         jCjXc2kCj1AInvA//GETaXmmLF7BAn5zx5y02a0cm6Go2A+sxXOqp0PmsPhVwNc7j/RZ
         Xs2gleNQJS9p7TNnnLG2ueWJ4nA2tKv6GZsHy0pisOSJ4lnZMj6e4Am7qRjEbeJb4ahp
         hF6KgpRlFYtporLrMgpbaHmlLJFyYKGy85BFHVnoCWPC3e79FLWbCnaVBXFMt/mZ/8X8
         OmH4XciBqgGdzN4pL+8CTahTagsf35WWDwXY2K5cK9LI4vX4mcgjtQ0uJTcDQk60Hv/A
         KHyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ssnGFoLwUqJFKe61rBUojnGSTJZmS1YRBdYgdg+6zXo=;
        b=COP/KcgcuIBojtD4bb46zjamuopjrdOXlJBDAUNRtCKg+uAzgssSyKOZYmH66R+n65
         6TxtMam5KOE6zx53maCKf8oawQx+VsrgE92TTBGUdUqSdwLdU4wYXKLOPyk25zg1NjUA
         gtF6wQC19vPLQN9yXWM7FAQjAA69fxd0wiqxuk0o6IyrxJqJKrY0B+hS1FtGhfDw2x5m
         p4LrNdMCyl7lC3OJgucL1ANNfbexpmsF9NMd7vhFs3eKwfDT8cCDFpuBCn8foLUsTcNk
         hxW7GtK3g/0ZJN2dfNKwNmhA3k1DugUSyVmMMGpatemhzZSAlXEks8rOYPY5jBICIUBX
         6xdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TBRWRKcz;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d24si836112ioh.1.2020.10.11.13.10.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2020 13:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-ThzQZjv6NTuKCt_Na-ZSpw-1; Sun, 11 Oct 2020 16:10:31 -0400
X-MC-Unique: ThzQZjv6NTuKCt_Na-ZSpw-1
Received: by mail-qt1-f200.google.com with SMTP id a16so11184660qtj.7
        for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 13:10:31 -0700 (PDT)
X-Received: by 2002:ad4:4c4a:: with SMTP id cs10mr23027810qvb.48.1602447030644;
        Sun, 11 Oct 2020 13:10:30 -0700 (PDT)
X-Received: by 2002:ad4:4c4a:: with SMTP id cs10mr23027785qvb.48.1602447030259;
        Sun, 11 Oct 2020 13:10:30 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id j92sm11082301qtd.1.2020.10.11.13.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 13:10:29 -0700 (PDT)
From: trix@redhat.com
To: richardcochran@gmail.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] ptp: ptp_clockmatrix: initialize variables
Date: Sun, 11 Oct 2020 13:09:55 -0700
Message-Id: <20201011200955.29992-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TBRWRKcz;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this representative problem

ptp_clockmatrix.c:1852:2: warning: 5th function call argument
  is an uninitialized value
        snprintf(idtcm->version, sizeof(idtcm->version), "%u.%u.%u",
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

idtcm_display_version_info() calls several idtcm_read_*'s without
checking a return status.  Initialize the read variables so if a
read fails, a garbage value is not displayed.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/ptp/ptp_clockmatrix.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ptp/ptp_clockmatrix.c b/drivers/ptp/ptp_clockmatrix.c
index e020faff7da5..47e5e62da5d2 100644
--- a/drivers/ptp/ptp_clockmatrix.c
+++ b/drivers/ptp/ptp_clockmatrix.c
@@ -1832,12 +1832,12 @@ static int idtcm_enable_tod(struct idtcm_channel *channel)
 
 static void idtcm_display_version_info(struct idtcm *idtcm)
 {
-	u8 major;
-	u8 minor;
-	u8 hotfix;
-	u16 product_id;
-	u8 hw_rev_id;
-	u8 config_select;
+	u8 major = 0;
+	u8 minor = 0;
+	u8 hotfix = 0;
+	u16 product_id = 0;
+	u8 hw_rev_id = 0;
+	u8 config_select = 0;
 	char *fmt = "%d.%d.%d, Id: 0x%04x  HW Rev: %d  OTP Config Select: %d\n";
 
 	idtcm_read_major_release(idtcm, &major);
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201011200955.29992-1-trix%40redhat.com.
