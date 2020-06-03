Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA7G4D3AKGQECEBQPKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8921ED91C
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:20 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id v78sf2377534oif.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227139; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0r3wPvYCGGS/alCnkJ7j64sYqeKWozxKPJ53bgARCjJxrIjGT0LBE8zgrOzcXz9k9
         /OjvkoOfPPxM/2w3hnxnr8FlHwCzVItQLWA1CCZ7oj2QsyiybAPJe1dw1u2QgTFrk/sM
         ss0jflEfZ8Uq78mhxFFeJdVG+05aTEbVuy+G7yjLuiIxa8XkNhbdwwGvkIwju2yL+lqv
         3R/tpKBD76jQquzA5mcxJSieppczY+QBUVF1b1BYg4XsTs6bIv4P8AXhZxq0+E8ONOqu
         FdJQmVCEJakUDve/2DPBfr8mj1HYfT7dYSaZA2/Tl/ghaLowQF3/SMlq+/eEgH1YvA2O
         8CpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=d+QoZ4Spwy5PF7S4THQnH4MJdduVwcF5rvRKhi3GV4I=;
        b=fwUGO1N66xRDbSMTBISgIjmTBLw9ee2NA2pLA6RVCLKYaQQRrTs3LA1r81IbuVp9OR
         nRdi6zfjjM9jqTFofqWZYvkS5p2qlcuBVluzsMapCvUvcO8fbyD9V7jC4zw16J8fhreH
         ZYDdfl7hcbABai5yTmNBHo8MsiPm9MEPG9OCVwnZINVzV6CEDBa9lKOFhUSNCYwMSyse
         ZaYEfyLW+qkxHGEGsgo8f0ecApWgNZcJoluYAKPVOYaHF9tl930jmZfq0qfQUQNlVHJD
         F2Y3LoSLGguG3CQX7bIMnHaAZCOTWAsjZ1nwLqTXO+xnZAqq7wKt8KBc7Xq4x64E249s
         sbgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YTEneSOL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d+QoZ4Spwy5PF7S4THQnH4MJdduVwcF5rvRKhi3GV4I=;
        b=KO54uMkTi5epwWTILPnJ2Yoeu84Ck9yYYhWTr+opWL9ZsNw+yUZPpRbHznmJ8sGuj9
         s2rbx2+nVbc1P+v8UYlYi9PE0juh/+3x6Hf6MwbrTPIEX8pOWU3XbkHwYtBBbv2VR4fJ
         H1QuRlAgm5JCO8A0lONJ8MePp2r0t3VDsV4MccwGSAvJ0V8CQwys9eEEcA32CySQD2fI
         TgHtKGzLUP0NrbD5C0nLEI9Xq19nxEsnVmv8ZjB9RSR3rhEbo61Q44xgmVHcZ0aXBQCP
         CsMFiiBXtcD7whTuJxa2IGTpPDwkQROGHElNPDYMQyrM048CTzy8XJSsjfOJAryyfpE+
         bsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d+QoZ4Spwy5PF7S4THQnH4MJdduVwcF5rvRKhi3GV4I=;
        b=UGFqc5grsQP3+GzPVJpzAFQDaFxuqe7hB1GTgI+/HaVXem27bCIVGLGIYp1mYM8PV6
         GYfFaOMS0smK2NSnLen7fFTNpNYGoSZTBqbxXR5Qy+kfSwz8mLHv9GGyFKD5OPOq9qdP
         EVbSth8lhfwvlLCQ+IlVpLyALUF5lMcgiokAVO6dKOnQCZ3c8CnEtqjyVa4eXm4jEkZk
         E1ZyFQ7HAWh/9whxBSEaKuURAnpzCB3CVUTaT1jEmilDYO96BIXWmhmZU3RsKyt0Hhbo
         RX1ilT9VnBLcOPYVfvWteAMHlcR3vV4c1FlsxjcfuPy7MZ7mpLJ5mvYw9DY2ykarL6NF
         c2zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531icVQVWaIhHYGeRyN1D1QourJhHGrklKKFHdjs/IwOGi7m9jXq
	/J9tVVwH23ZqMn3Q+3ZadIw=
X-Google-Smtp-Source: ABdhPJzS2RsiOF7XXO9HXs0d+XkuMbRGs+ej8/7LAklxiXmmdv5Vhkw4kR3mqzK3me1tAsyGr+BvvQ==
X-Received: by 2002:a9d:1727:: with SMTP id i39mr1677258ota.367.1591227139185;
        Wed, 03 Jun 2020 16:32:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls948706oti.8.gmail; Wed, 03
 Jun 2020 16:32:18 -0700 (PDT)
X-Received: by 2002:a9d:3608:: with SMTP id w8mr1836420otb.318.1591227138901;
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227138; cv=none;
        d=google.com; s=arc-20160816;
        b=Kux5p4cTmD/ZuipyOToy/6bypkrfQxKdapcnY/VI7SsE+1AguUCp7C/ttWb7D8QQce
         PqocrWMao669eDCU5eefnf8j+V1Fwo040+w1bLnU+o+SuJvO7Yqh39yzOmU5yvlclmYA
         wLkPuNyLUlSrpdCbB0cqJ2r+kMGVad5zcJuLo7Ab7IQUpN5uRcGV0mfAqpF5THbd7SPK
         g1xt6lT3GQvOXYzdtaKExOpX3QywNlaUbqCoBSPZLOgWRiJbPsAcbDHkG5UAVyDQvHba
         yj87jdUJvfbcqKckiU0OrtnUBbk+pxVaQ7pf220grJVVkJLYPY1JcxcBwogKzKlQXWwZ
         dp3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3Hqe0fSnXDR9BQhToHGwDvWeXmOn6wXlTM1ZNtQBNo0=;
        b=soU0y5yZjTkDLu1ISZ7NY/ZLOm5ECknHihtpLNgQwtfataLqRnV2sMI029rkxUDPiH
         D4Boo2E8QJd6kcfQAt8u2MQMCKG6VHUPXiNrvawKGQubOAi1g9/AgVivEFn5uDC9y5T1
         Am56mSLdEK9B9hWSoYFdw5cRnrYxFd/S+/MSKXih3ydeWDe6jp8kqpWkJSKfEc0Uqlzm
         kSuGfBnsEQpKCwa0iRTBqNbJl8tNFQUbOYDer0zetiEAIghnDZR8X0mcpb02baj45uu8
         LlTzBxJWpMw6M9j+2OgwXsEJiF8Yjx7oGUQj/PIHHmL+nl9oL9HFCTWxD+IGoY730ari
         BtDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YTEneSOL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a13si174327otl.0.2020.06.03.16.32.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id s23so1165480pfh.7
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
X-Received: by 2002:a65:41c8:: with SMTP id b8mr1632114pgq.265.1591227138290;
        Wed, 03 Jun 2020 16:32:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l3sm3402369pju.43.2020.06.03.16.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 05/10] ide: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:58 -0700
Message-Id: <20200603233203.1695403-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YTEneSOL;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just remove this variable since it was
actually unused:

drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
        unsigned long uninitialized_var(flags);
                                        ^

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/ide/ide-taskfile.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ide/ide-taskfile.c b/drivers/ide/ide-taskfile.c
index aab6a10435b6..a26f85ab58a9 100644
--- a/drivers/ide/ide-taskfile.c
+++ b/drivers/ide/ide-taskfile.c
@@ -229,7 +229,6 @@ void ide_pio_bytes(ide_drive_t *drive, struct ide_cmd *cmd,
 	ide_hwif_t *hwif = drive->hwif;
 	struct scatterlist *sg = hwif->sg_table;
 	struct scatterlist *cursg = cmd->cursg;
-	unsigned long uninitialized_var(flags);
 	struct page *page;
 	unsigned int offset;
 	u8 *buf;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-6-keescook%40chromium.org.
