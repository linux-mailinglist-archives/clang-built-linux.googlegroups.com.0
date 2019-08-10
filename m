Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUUZXHVAKGQEPLNLREQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8771788840
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 06:49:23 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id 9sf19536752ljp.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 21:49:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565412563; cv=pass;
        d=google.com; s=arc-20160816;
        b=eiJLxJROROrFl5Xg8HfALVPXd4j6SE38qOzOVpdYdo7K7Pi8xXsk2l+OAZ2k4e9Lg3
         hqUhZlwU4f2x/jXrMg4Rza+SxJrGiPqbZUMUgy12NtDGZDOTHoY0QxEiCcnWsbaJxE4u
         4Z2NfzEmNIm4AQnuSemwQKC4F7e53STGNnWpL9smgdQ6quISvpN22Vox5NtDmkIgJooE
         FPbnVuLoVRgUdCSfSDNlTCtaDs/ThyH+64WSfK1u9MkoKGzprPUcy5OSkTUW8N42Xz4N
         NXDFNUP9I24cFZBd+PcXPA8LNjbysOjq8za/1mimDJ1mrLYHP5z1rNl3TlxYKnMFd455
         718A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=u9tlLrWf565gN2vTpeojKVOETVko8MbaiqbeNKx+BkI=;
        b=h+YhXFNJdaatEhNHAdh8L9k0M7jRhYyPNXBtKnmmJh0agoilhb+N/3nAXAx6SS6+UG
         yR/dWsXYEqXsEOGYjf0myPryD30Ak7aru6aAaoBQsEJ+j8bxfYmi3pD9MFYbBSGtfabl
         WAzBKOm5L8jBfZzfyXLbnGiLndP+YkP8FROTsyBeMJYd/clpjdtLZWkFWO/hCs+Hs74P
         L4eRxekRtcAPjkcxpKq7ngzzBHmYOjmrWgmWo/mEc2794DEaX+nhsYJ96us/wU7QZaIz
         /INgxyFiHL+4rEhK46Ddlo596H98jd0DB4KEhyX8skaEY4Jg7tEAwpRjIgUsvSbv8tfA
         d8tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGDK21aD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u9tlLrWf565gN2vTpeojKVOETVko8MbaiqbeNKx+BkI=;
        b=I+c+byDyvOZYuJYzIqfVkJoVHBdDemHRm884ukP9VbIYZCG+FWIVk0n+0Q87UA3Ad2
         5IazzXhiXvHidtVLLySkSXNRREgFbtfNYHa2AiNEwsZ59kzh5hd3I/8wQdsqQ981o9Gc
         bYBEeeqz2myHKoEca25p7WUW0foFBgYsPHivyCyb3+D04PMBAfTwXHLQoUDX7tYwg+XW
         j9WXTdv6hqIrUcBZFN9QNDFHTgYbbp7/a3xQIJQFB9lzrA15rmKL3d6zsmNvyk9Gacml
         Qc0U0zR+1DV3wSDgiyjIMl0y4N5dqLyRRTxqiP4s8BYP20cB9aksaZaBPw+5MuAuIyjm
         T9mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u9tlLrWf565gN2vTpeojKVOETVko8MbaiqbeNKx+BkI=;
        b=Grg6L3rCnXJYXTKRAA0zQunN090ya64oiir25wkqKsMqiqyKQ3czMKzzXs2/YmB/Fe
         kDEhYRl+xpbse1GSMu1c0Qmcsw3VJLS6EM7UpHedt/kKIGt6g2esDre495gqGNdKFP2S
         qKX5+cQuV4WBACOrRzDImmEbHMzdsmCwmGbgHvpG2m1czjqx5UzAr5bSUmCmsoOu98Kw
         jd8F7w99DVGHKVUCwFELRipY5u7z15G6xbrF/nva/eCEK0Gvc2YxytcIB7D8oGn00MUg
         qCsZIebY8Lknkik7QWOLIe/hPIJfinCM+xqx5xpFHqYA7bqtHQYVVhWa94P2LVjPsgQ3
         NSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u9tlLrWf565gN2vTpeojKVOETVko8MbaiqbeNKx+BkI=;
        b=MXeLySWYD9o3emqlasrmOCr2kE/FbbIhetsLGYEnvSaQLG3ei8p9+rn1yMLmR0+DvB
         X+V18SB16xuyUCJswoFC3nLg4xa8HK6tPSW+7iaU2UKW5EKGaA/zQ2TYI0TfZ4ML29mg
         L9mt1YV3AlyBugiHb8i6QCAavtJ4Hqo8XXcbJnbfxF7s8rhsfkcw1dKmbPFClZE5kfQl
         yTe7Dk5lc4eMyRtmhpdQqMExXRrJjxByR1zd8To8w51Molq53yqxYC0PDf2g1L+ZRB9v
         Bmq0itdyN5iQmA4/rasYOnzSbPCIBS/slkUyAiE92goL/b0VCQmRLJ4PntfZd0SbMh1d
         nF8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsBVCQ4cdrrhXW2USY93/elRr/0UQFbW7NR83HLHMnrK0z7jBk
	Yo7/rQ2g4aNxSXB3Xhv4BiU=
X-Google-Smtp-Source: APXvYqwPHHq7kqK308O1o63FuvsyQnYDMfCq1p0HDka99b6Ea5u3JSW0LJy60gohA05O23uixlsZ/g==
X-Received: by 2002:a2e:834e:: with SMTP id l14mr8806635ljh.158.1565412563026;
        Fri, 09 Aug 2019 21:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8c0c:: with SMTP id o12ls8531829lfd.12.gmail; Fri, 09
 Aug 2019 21:49:22 -0700 (PDT)
X-Received: by 2002:a19:cbd3:: with SMTP id b202mr14543804lfg.185.1565412562582;
        Fri, 09 Aug 2019 21:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565412562; cv=none;
        d=google.com; s=arc-20160816;
        b=aV43UtgfUgkcC8Vxmrru3CBlXsmLBRnl+FSYudAOWsZ+YLfmDZa7O3+efXTx6WT7e5
         w9tIv5x4SH15rnKe7ATdWBBIBVtV+FSLoKsWyBh++rPdwyebM9/i607CHRyQYVLnmoVv
         hZXCHDjuAsE5Q0QF9WH/KSHoLunwWQc4ZVdDaqq5A8Bf4r6GOPz5SdK5mX7fI5x2ykDW
         01N2/qQiFs02xQS9BkThxXk/1ENA9R7xMGt86ygE8T1/LNd2J2KKir6+nnMPPYk68ZmZ
         dTKkEMmsKDA7lkswzcYnb5IKfDKs9JSJhZvYZMTRKVWw41uYMcpikaLOB7gg0ypkeqH1
         c/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ulCsjp9diZ2qriE+4Cg5mruQzjkUXFDOkC4POtPmsWA=;
        b=cZp2it28DXk/SPuxa+Dm4thuc1B3DQ/B4W+cDMvKhZthVzym1LpRFHHLPzsGVAchYT
         d5BGSnHXaYjE2sEMStPh+VTNZYRb60UaxWo8/+BkXnN7MxzHfGWb7+QpPqLmSSTOKSGm
         J7D6l4oPTJxHAEuH6Slyb8LrHf0exi7q5aYei1BlMk6WrvzV3VkHhq2m7GlicKdn9X8l
         TfVcqd3A6HkXM/EtwgHahb4rI8jnLFAx+GCMECli2NDPvE9wgRu/Fx5FkTiRfeSCtZW6
         XJPWt7nDEbnJtAglsg3uY4goqIkRl9kg+jK59R1pH1zH72HdckTxSNJQvXAEYZ79Im/Y
         c4oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NGDK21aD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u10si1117339lfk.0.2019.08.09.21.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 21:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id p74so7513906wme.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 21:49:22 -0700 (PDT)
X-Received: by 2002:a7b:c310:: with SMTP id k16mr13781272wmj.133.1565412561667;
        Fri, 09 Aug 2019 21:49:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id x20sm218826181wrg.10.2019.08.09.21.49.20
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 09 Aug 2019 21:49:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] firmware: arm_scmi: Eliminate local db variable in SCMI_PERF_FC_RING_DB
Date: Fri,  9 Aug 2019 21:49:10 -0700
Message-Id: <20190810044910.114015-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NGDK21aD;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns four times:

drivers/firmware/arm_scmi/perf.c:320:24: warning: variable 'db' is
uninitialized when used within its own initialization [-Wuninitialized]
                SCMI_PERF_FC_RING_DB(db, 64);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
drivers/firmware/arm_scmi/perf.c:300:31: note: expanded from macro
'SCMI_PERF_FC_RING_DB'
        struct scmi_fc_db_info *db = doorbell;          \
                                ~~   ^~~~~~~~

This happens because the doorbell identifier becomes db after
preprocessing:

        if (db->width == 1)
                do {
                        u8 val = 0;
                        struct scmi_fc_db_info *db = db;
                        if (db->mask)
                                val = ioread8(db->addr) & db->mask;
                        iowrite8((u8)db->set | val, db->addr);
                } while (0);

We could swap the doorbell and db identifiers within the macro and that
would resolve the issue; however, there doesn't appear to be a good
reason for having two copies of the same variable. Eliminate the one in
the do while loop to prevent this warning and make the code clearer.

Fixes: 8f12cbcb6abc ("firmware: arm_scmi: Make use SCMI v2.0 fastchannel for performance protocol")
Link: https://github.com/ClangBuiltLinux/linux/issues/635
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/firmware/arm_scmi/perf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 2c5201c8354c..ab946ef6b914 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -294,10 +294,9 @@ scmi_perf_describe_levels_get(const struct scmi_handle *handle, u32 domain,
 	return ret;
 }
 
-#define SCMI_PERF_FC_RING_DB(doorbell, w)		\
+#define SCMI_PERF_FC_RING_DB(db, w)			\
 do {							\
 	u##w val = 0;					\
-	struct scmi_fc_db_info *db = doorbell;		\
 							\
 	if (db->mask)					\
 		val = ioread##w(db->addr) & db->mask;	\
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190810044910.114015-1-natechancellor%40gmail.com.
