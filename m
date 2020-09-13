Return-Path: <clang-built-linux+bncBC27X66SWQMBBNGZ7H5AKGQEFOJULZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8720C2680E6
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 21:02:14 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a16sf10373201pfk.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 12:02:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600023733; cv=pass;
        d=google.com; s=arc-20160816;
        b=PU8ZpMshBYk/kVHGKSUyvZoqI5b52feHufRSJ0u9Mv+OLxXB9UtOe1W3tlSmioVmxh
         2iRLaO+V0kLKECiw8TxNGQMPBkpaduJEKpEnfUMI+PWt1gJDlIwJpyNqax5pWp003SdJ
         3wZQm6sV7xZNYv00N4twMmXJnRplYBI44XVxK/Fl4LxhIobiOAnt0gYPJdnzbVZlu2SL
         ZkH2l9hD0z5l1P7jGqlJEE713tiX414Bwn4sJpb2wEtwd9O8cNDJGBzZVOOil0vdSK0k
         xNRftfCDX9a33Off6wVYrMc5haCTT4om9HYrodPTPMm6U0T01LZlE9vADWXbFJjKkBSq
         ArXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+ALfsSZdf+cOTpIon8+ue16ZTTM1hKt2dOxsLxVhehE=;
        b=BRZs5Bjj+SbwSDbiSYAAilCzieJYi/wU4fgZZfDnw/XpAnO1igJAHk/DScUOvTo2/i
         8aIe4+xbySAzVtjjdsXGKb2wFxDNWs2lp2/wbUm+5OlNuePi3A0UW2EwnlTclgAH+LUh
         0IsYLp7E05vcacfiwXQlvEgbk2PNVWFGjmqdfx66AufbuAiUViDm6rFshECQr/HSQy7N
         WL+2U0cB4xHhB6PKoorLKMejKrizvwyxTU8TwKaJw9+TSB8C4FGr9/Jxg6G1fvNDHpve
         SBgKYgFI0t31ayDQSY7cGpyzrALtnhGCaOF+VGZ+tg3ixcNQCC7dQ9DRyoSbECGnqGo/
         iFZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CsE+hOS5;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ALfsSZdf+cOTpIon8+ue16ZTTM1hKt2dOxsLxVhehE=;
        b=LZCs0aPPl3EN3hvXQaobGsB1zUmrVBEEpi+Rfhkkw2zOhFfdRvYrnUa0Xq7XMUjhE4
         +sMZWh01w0udBSn5A1lrVFhUQ6wQygmoh87UdkKrE8fF9pC1WW9NN59kyzLJeiL6ZNGJ
         6TSJuRuAiBhZR3Ytepa+BYLC85kGmIx6z5Kduz/0F5EGsfIBRZ7KyZ00FPIL0+w+YZ3r
         HefH4zt0EMA8B8P2dB+QdLqQehHl/3xGKrrTuNef/wFPHpBzjQrelFWwlTfBvNoYwwyy
         F1gyjx3r8aVKeeavyO2PtJmoVTT4Z2JV08c5Ov/MHaFYtDXVtuvDMCKtGj1v9vJsJFNS
         AsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ALfsSZdf+cOTpIon8+ue16ZTTM1hKt2dOxsLxVhehE=;
        b=nw7629XB9ehWSiVxXooJ1xr09AEsmhq5jhqgy/qBb4OshnQ0QZD2AVWks6cJllckbA
         re2Q+AgRt5P1/qjkDUnFiKgO/x86iAGqiryGCvNM1tK4l7ejtulOK9y7XHgITnee877Q
         ARYzLSBjxiScvQNI9bx72YuHIbvIIhHHp54IRBLd+WK0NsSOcvED9AWalO+YAsW5TD5j
         2J1DFIk3QF4e07D79wAlkrODvBR0xLdKDNsOHEFU1CHecJ17/mUR8cYYAQ0a8ZMWsZDu
         bE9ll90Z/UrcoAxvgR6yivLHzXqmHg7Cm/kCAT0DWoYRrjDANtjFBU0IV0yLVO5e8LbE
         o4Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530T/VKbOLYrcyHTGWmrPcE0kviB3F5y69mHgurtQomZlPq1UwrY
	OYrh4JpIYn9zpLs/C5ujaUo=
X-Google-Smtp-Source: ABdhPJy+1xDKB1d07OqX9PV81VFKc+em+XRVnoBTaEtUDvqEk5yDIPPaOlEsBJ019udeAxY3ASGBmQ==
X-Received: by 2002:a17:90a:70c3:: with SMTP id a3mr11054940pjm.74.1600023732731;
        Sun, 13 Sep 2020 12:02:12 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls3416611pjy.2.gmail; Sun, 13
 Sep 2020 12:02:12 -0700 (PDT)
X-Received: by 2002:a17:90b:f09:: with SMTP id br9mr11353185pjb.102.1600023732180;
        Sun, 13 Sep 2020 12:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600023732; cv=none;
        d=google.com; s=arc-20160816;
        b=XGiqBc6HzejRg7k2svrCfcZ0dcmdTIWHsesZYxQiaMo9UguKTOQBaWn3URQG+cDRGC
         KvuLCCUhYp52kgJxZmQ5OuoAAV5quE2FgJcqSyTuWMhzB/h+B2OQPn9dukggoLK5tqci
         opb7csywrt9ixEmg4cTDyCJbSo0e1NP5znpH6shfwZxMalPxjWrzEzdLbtQBcxXceAeL
         +0YsPGJtz3llO7kRgmM86/XV6aZ7+n9mVryUWyPGFf6vDS/AenlESoCBuz8kqLhoPkrK
         P7K5EceyUNdRbT6t4Ugr9piOqo9k3Wp2EWFdAzUxEfXfluZjzOjBAUMclXr3rxzDjXIW
         FOyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=F8whIUgMp1lvGf/GWEweUfRdukW6LYYiX1ca+Djnia4=;
        b=MSv0u34uJHHCrgK8WguWSAoY8rFMG91r6u82LW9a4k18Y25KRO8L1l4VehcQ6n+AjC
         vzdm8gk227nYKEiTiLzfmNyhIiCGB5KKl5TkLtCc/5Nd0O4HjdwaYkenvXKCB0Hc5Vu2
         Zs1/TR5m7YWhzLMVZayuz0qhL/CeN1FbrHE5iUgwA1Qe61IuS7ptFomE0CRI5cUxgWkz
         jYiRTYlPOiMDlsz62OuEFBpyKpOCvvxGjcjkY8Sex9vHslXJLfewlZKvrXmmTPsHo6VN
         QWaICRO58IqUEis8WfUkN6E800CXh3n5YfEFioBkVsS9R87ak0lyrj9qjXW98HgoL2VC
         CWyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CsE+hOS5;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id s22si512800plr.2.2020.09.13.12.02.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 12:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-4zS6YhJiNMibBqpF2MioUg-1; Sun, 13 Sep 2020 15:02:09 -0400
X-MC-Unique: 4zS6YhJiNMibBqpF2MioUg-1
Received: by mail-qk1-f198.google.com with SMTP id 139so9106987qkl.11
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 12:02:09 -0700 (PDT)
X-Received: by 2002:a37:a712:: with SMTP id q18mr9291038qke.428.1600023729000;
        Sun, 13 Sep 2020 12:02:09 -0700 (PDT)
X-Received: by 2002:a37:a712:: with SMTP id q18mr9291014qke.428.1600023728751;
        Sun, 13 Sep 2020 12:02:08 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id g19sm11583013qka.84.2020.09.13.12.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 12:02:08 -0700 (PDT)
From: trix@redhat.com
To: ibm-acpi@hmh.eng.br,
	dvhart@infradead.org,
	andy@infradead.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	len.brown@intel.com
Cc: ibm-acpi-devel@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] platform/x86: thinkpad_acpi: initialize tp_nvram_state variable
Date: Sun, 13 Sep 2020 12:02:03 -0700
Message-Id: <20200913190203.22238-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CsE+hOS5;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
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

clang static analysis flags this represenative problem
thinkpad_acpi.c:2523:7: warning: Branch condition evaluates
  to a garbage value
                if (!oldn->mute ||
                    ^~~~~~~~~~~

In hotkey_kthread() mute is conditionally set by hotkey_read_nvram()
but unconditionally checked by hotkey_compare_and_issue_event().
So the tp_nvram_state variable s[2] needs to be initialized.

Fixes: 01e88f25985d ("ACPI: thinkpad-acpi: add CMOS NVRAM polling for hot keys (v9)")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/platform/x86/thinkpad_acpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
index 47925c319d7b..24da8b6872f2 100644
--- a/drivers/platform/x86/thinkpad_acpi.c
+++ b/drivers/platform/x86/thinkpad_acpi.c
@@ -2573,7 +2573,7 @@ static void hotkey_compare_and_issue_event(struct tp_nvram_state *oldn,
  */
 static int hotkey_kthread(void *data)
 {
-	struct tp_nvram_state s[2];
+	struct tp_nvram_state s[2] = { 0 };
 	u32 poll_mask, event_mask;
 	unsigned int si, so;
 	unsigned long t;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200913190203.22238-1-trix%40redhat.com.
