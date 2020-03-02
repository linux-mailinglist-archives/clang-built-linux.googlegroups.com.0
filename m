Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX7X6XZAKGQEEVGE5TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E0F17660C
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 22:34:24 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id d12sf58267vsh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 13:34:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583184863; cv=pass;
        d=google.com; s=arc-20160816;
        b=MzgASunmW4cPYf0k/CIUIsvygf9hFaj4sgNR9cCsVb7Sqp3yszA/g0APn8rOZdQPIV
         QyImF0KePFairnrECGdkqioAQ/2IYBuSlujVFtT16oyQrx5xSjvN2vt3Il0vysztRuI0
         G+e2biZT2eyqTQISZI6A481ndi6tMtQvajkzaz5yTylOkfnEV/YHdxvV6e0gvJ4Acs8R
         Q+yBP54aXAtv4EXj4Z8L9vhf4/XSKBkYWDwTHHV55sxWbymqX/WIDE0ZTsNpNEQX2Bsh
         gluA1/2hoj5v7dKFVVEggUmeSDmHz9zXTyUWWtR0Lg6+Xeu0eS+TirIS0j8/4kbNhKZ1
         0gpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=LbLaC9CshYPLWJSckRlr9TeyOZbCYihWe/PWuNtuX7Q=;
        b=aIM/7vaAy6hYjtVrlj2MpqqI44dYvCrfdpGhuvNSO8ASAIPW7ck5hhiGn90H2QtrwX
         GD5+2WOdeTMzK2GcXnySbl8Hyy1PFRAWcx4NI01QCmIURbUzxMQ56nXo70mVQg9GpRxm
         abjhSQNJVO2h7r/dplsfxbSvM6uwaSBeumaQ9JbyWceXKGpFG0INQPOsUpQdgtt4ERPm
         V+QrX46YxisHZV6tt2APsnlX3BYI0dYRdWXpqBGcK4abFGOg09fivF78fRm3f2zohTYE
         dApCp0FhRZoehcI8n5F8rpem1qcPTt2y1UJbd6BIT15nHJZlCix19NFutEXyWGE+YsSR
         x0sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=al25Ucu2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LbLaC9CshYPLWJSckRlr9TeyOZbCYihWe/PWuNtuX7Q=;
        b=fzyL6hKwYmITYdIsbGevSqEi+NnJj/vMqraz5OHhDNLipMJh1EBMg5jYrc+KXmJM0k
         D3yImZw1Apam/95HWS05Fz3fI9c1B9PDgtYUMi19JVGmQOXkfdExq1WPjG5eX8RtyOwC
         N/ro+fVFiydpuezBrHc2BB3RXbBrTipRlWg2RleERQNf9q/T0aoP3LrgTYgwh/7N6zDo
         PoEh5HYHOfWx/gGIGwAd559tLv0mZo5sWBowsz/Y9zZTJmznCh+fMlhD1YVQT5MFTWX4
         3FHegxhgIPXv8CTS6aiF32I5mt4/vgo5alWAnDV9tmPn3CXWckqyyrtV6PQ6WF1nTAx1
         6vvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LbLaC9CshYPLWJSckRlr9TeyOZbCYihWe/PWuNtuX7Q=;
        b=BJyKGYON/YumFyDU/LMlw0X7/GXlSVtmlfFY2pJ3iBzFVAcFmqkVrSDba62aaWo53r
         JMEB3nYrjSlxvWFT8KRBODqjXxgoJi1ouj9HnVlTkpXKdeEG7Oqbq72ERk5Pj8M36HAd
         t8ecXihiYXqeOsXHxXiyqqenSi9c6cbBHoUrRQW3eu00TFNZj85TEqzsb8Qk09fMg1wX
         Nht8c0MBjLqSmN/xcBdADIYGDXEcB9sRfhyssY2jHfNwve+FyOII//2rLRnhUmlIXJml
         L/EjGDeHIkaLcbcsvfzd7wVp0KDDpQrTF/+Z84OZcfqaDnPXB4MOZ8VKnYBdmSc4zYnB
         gFgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LbLaC9CshYPLWJSckRlr9TeyOZbCYihWe/PWuNtuX7Q=;
        b=Hnm/tylwiCZx6NksxQlhxhR8yyUEX5bNpRZ6wa9ZkIkhmF4v3jsOOSaw+hswz7Ghcl
         gzG4nDIJIHJ55J5YmEJrmVcECsCgopLdhXB4SuAQ8NkqBT8DvqWOnqMhOlbcm7pCRpFn
         SIomf9IRY5EtMqPr0umxfZCl+Z/hVrtO7lGgLhDHh4/wBzgdHP+azxgIu153C0+0FYEy
         6y69X528JUivLKdj8eB24LJOhtfaXQOmwcRfuXQeJ1yqTIjzkWxkaia71Ihcnjr26YIb
         WWwWHuQkpmzTTvHw15rRi9nwMMQwWJVpcMt0X3IL1AX9eGpjdbCjVgOXfHbgSJ0OxgOg
         v7VQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Bk6+yLuz20xMd47Am41+uqH96aYBZBbpdACMHFrApRvGmUSa/
	CvLKxCRVvrWhkgSzrxZV2U0=
X-Google-Smtp-Source: ADFU+vtcoFScQvZC1FjJEBpQX+8P82EP/cyY/JFGXno0eAqvv+kO0yMOaiAoN0UUk4+9W+/nf3I0Rw==
X-Received: by 2002:ac5:c30f:: with SMTP id j15mr1110936vkk.52.1583184863410;
        Mon, 02 Mar 2020 13:34:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe08:: with SMTP id l8ls150775vsr.4.gmail; Mon, 02 Mar
 2020 13:34:23 -0800 (PST)
X-Received: by 2002:a67:fbcb:: with SMTP id o11mr617753vsr.109.1583184863079;
        Mon, 02 Mar 2020 13:34:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583184863; cv=none;
        d=google.com; s=arc-20160816;
        b=HZkbZ2mor6nR2jOAHMB/ZxO0v1dfXj9in1GS+/R9thN+TqJcSDcRH5EP5zNnhtrAPU
         z6k11qAfw8GEZe4XtdN83AuEPeWcHLF45Yr6RGQYiz1EijMA/Skh7HLpPQxreERa1F/w
         rfqobw5QUsBB6uPrii6vofVuSw9BHYh80G7h4Z8tf8DQPWZfygc9Q/xCZZNbIsUnZcrQ
         clpa1Rz/mCdwA31c5VVP3XaIlbJCGM5ouwg5N2rbgN508sZV0IRZ4gNLYeN1Tb7Td3Yn
         eE9xpACmhAajzJEbcBkMPS51DOc2JlvYWQsQSg+H3rVE9IQICSb/k6akDxL6OrCMyPNo
         Mw6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=I6ClrHJCDNehdRwS/y+69ocK05bWUHG0fpm4Y3ogQMg=;
        b=FfLRq+y2risYrERtT9q8jRs/Tl+mlKaJ0LrrUAGwiXyPGoHMJ27OInyXJXxt/Uq+rU
         hzNM2GJEYjhEZnh2xx2kXKzKmnhLcttE4umHnK62vDshvkUfOxQ1tOb9Mr02xY0Y3UL0
         ady1kezJok/TiO7VSkEeNfj7v6b/haItsQ0Q9xeBTjN5rX5PhTRHI+9JYYiPmanheULm
         K5Xb+yhMJHzQg1fBjFmN98gmwOOZi0AGGz/shQtnVIT5CVzjGl0sXdpZkBPjkvWXTWQI
         zbIsWyoYjai9QpAFSIieU6u5jzfPsJiqEfXGrS7EZU95IXFMdxJrRszm/kHZhXOrB+bX
         VFTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=al25Ucu2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id u25si1066962vsn.1.2020.03.02.13.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 13:34:23 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id g96so800573otb.13
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 13:34:23 -0800 (PST)
X-Received: by 2002:a9d:3f5:: with SMTP id f108mr953744otf.103.1583184862374;
        Mon, 02 Mar 2020 13:34:22 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e206sm6809252oia.24.2020.03.02.13.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 13:34:21 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] coresight: cti: Remove unnecessary NULL check in cti_sig_type_name
Date: Mon,  2 Mar 2020 14:34:02 -0700
Message-Id: <20200302213402.9650-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=al25Ucu2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
address of array 'grp->sig_types' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (grp->sig_types) {
        ~~  ~~~~~^~~~~~~~~
1 warning generated.

sig_types is at the end of a struct so it cannot be NULL.

Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
Link: https://github.com/ClangBuiltLinux/linux/issues/914
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index abb7f492c2cb..214d6552b494 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
 	int idx = 0;
 	struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
 
-	if (grp->sig_types) {
-		if (used_count < grp->nr_sigs)
-			idx = grp->sig_types[used_count];
-	}
+	if (used_count < grp->nr_sigs)
+		idx = grp->sig_types[used_count];
 	return sig_type_names[idx];
 }
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200302213402.9650-1-natechancellor%40gmail.com.
