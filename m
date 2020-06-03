Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB77F4D3AKGQECXJJK4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C67B1ED913
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:16 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id t18sf3043358qke.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227135; cv=pass;
        d=google.com; s=arc-20160816;
        b=lt8Aag63UrVWS+dakn50tmIuBXgokqGXsis4XKavH0DyVYV6jAn2a9Zk0QUUifHrrY
         +1pBN8Ktp9qeHFWC2qIyuFvicgZ3JqLpUYyC/9q5pJKxXLoHIQnHhdxqVXKNcV54dNsh
         e5o/4WpYVsiJS5fXZsQxvvAeEJmxsL2YFDlkScFnZUtAQmg/IlRSoILrilaNMPwK8Yy8
         r2+KLlEP4ZYB+ZZAVPE6qfPrfxP64KNw+Ao1u1gJoBqwfP8p+4GA72oUO6REwn27VX4t
         ues2n/pNVyQqojL42bgYqsyKlcaQ1tc6l21sWj02UTXHr+VJ5/lRxAa3C4+7juSQE60W
         6RgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8jOrMMvRoeSwenoNjTBRieAEQmPcpbJGmlX9QqJe/8I=;
        b=j5q7dcj+FdNhydcguIpDoft8oGP7Z1rjtqyt7QZ9zhTv4BNpNcMOHAO/YYGJ690F2G
         HVdSQIcza+iW78LUp9N+7eGjEGq4rHXf0Itt7yadt6vMMvKFKoEsKYVT+e5Q3aJ52Xzl
         FK/54TzM9QI6tCyWD9ZxoDupvY9hOeh5aUeSfgYj7aXbbqcOwdMi67JW67ZatXAAsfdP
         nis0YCCpHtH+Vl6ypxFb5cmz2P08MH6cQ1jGdYrKA7+hy4Gt+gK15ZW6ZxaFOCmcw9nd
         YjvuLzEeHsLx3FSVDFa2fuz/VBhxKGqB6J+lq92Cx/0KwTAeZNcQ5xf4eMbTlM4DbaqY
         zHAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VUpMlsS8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8jOrMMvRoeSwenoNjTBRieAEQmPcpbJGmlX9QqJe/8I=;
        b=BAXVInLo5TKI11/OoIc0adxCn+rjjL6iYrj0rAtaKvLxuCVgwu7Dkw4wUZfrQj83aC
         IXpSGcA681sg6+dXViwMaqNn2T8vcetZNXk+QwKZs0caf5mfGC3Da3wxg20ThNrOcbwJ
         IcR3/y5eSoeVV22oLB+pdxStzw207z5ltkgAZfG/ULytKMq7MC2ma9U2SU958fqmUl/4
         Kzaa78DusNoSJeIsjEqrxoOql8QE01pC+Te4HP/dK968BWDvvsERIJpwoh0ppLK7MCRS
         coAX+XxegPDRrxHdFVUFnm/wFLWB7TQ8DzXSGxHwjQE2YNbOMdeffW2Di+XfpOqn+94n
         lEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8jOrMMvRoeSwenoNjTBRieAEQmPcpbJGmlX9QqJe/8I=;
        b=t+AxWXELO0ecOAjd/f9qT6tLrhYJpp7Ssesixr4DEDkXAagQreNQL1FOL6/nqTRkRm
         oXhBDAZ20OOfNg0vRacM1cnKh/jgEaAtmF3WIFnhfnWMSZ/OOlXbWsYLNtIrIfRy2y+u
         WnTRpM7kj/2+xIjyIRnRK2DouG281DDqJ8QAmEAIbpd484jKOWgkIxtB30T1KL6+4vnJ
         fd2KITH6qwKKnr06FlsN5C4ostV2pGJydpy4TbxNqBVEa6BZLI664aVcPHnPbnCBcPYv
         Oi9SKCT/zX7E//5g3Po4eWvsM1KHmQiKVA7V0IPBkL0fWsBikY0guH5GyWrovcDhoQC1
         hITw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LDYdBUzrSzKOGXzu738BjTOGNj4KI3srCUqO7kVyA7R7aSfIG
	wD+Pyt/VFgApMRsSjLwP1ZU=
X-Google-Smtp-Source: ABdhPJzpcZrG18sXyV2U/X7FyJCA6W7jHwDDkpEayJZ0vSxiqpV/s1ppq1rTYOvG3Gx+5JlFVBufCQ==
X-Received: by 2002:ad4:552e:: with SMTP id ba14mr2206992qvb.35.1591227135067;
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b85:: with SMTP id 127ls1780943qkl.6.gmail; Wed, 03 Jun
 2020 16:32:14 -0700 (PDT)
X-Received: by 2002:a37:8e85:: with SMTP id q127mr2231141qkd.105.1591227134778;
        Wed, 03 Jun 2020 16:32:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227134; cv=none;
        d=google.com; s=arc-20160816;
        b=ME4tVpJVdwsHkYAH4In0GOKhL6sV1At0m9i3cFz00IzttdVNnN1nbGHrLqzLQFnIHm
         oyGPb4ui0Q71dCmZyCQR1/DAmKraIfuJzWmVVnr5/t1OTCBwUfeIllgEQX8WZR6hrrEq
         QaJzPgnCPYPLdSMS/xFvsyqC3WQkR/mAbSGHvQ+YsaS8PPJC3ZTGc288CeZc9WZSOP6l
         VqwjYwKi5p2Ar1JCSwaj/dWKbGupUkCXZARfn8JMsYul5/EsU296X21aTuqoACcR2Fao
         TkfW14y09Cf1M3rJtViASYGqPDTbReIJNYd/ghGnK4jT+xZgQ5ZIcUlp4EVljEHDU0il
         V4zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mP7HDY2ZN5ivM9lomEi6uc16BWfE9HMAWk/tyOctczk=;
        b=kzKAwYneVg/H88CE/sPN570mCrC9n/9ht1mLNbxI6JEviV26uB5YR5Mox0h9humlAC
         iZ+B8AoopnFT9kIC/5OINGY/OEjvjkzi038ITDT7hXPS0+pIOcDqJyLI2V+7oB25P/pu
         QJPmLxUgiYprC24ZMJTSe2spOJiVlToom9eebiCa16rFGPI90rCvSciPBYlqFmUE24ut
         vZsCXa6VW3PPEI5zZA9kqHSwoS++u8ZWt8P5GwPJEFiMfSRLTd/LI4w1virourS6t6by
         7e6SgUQgqgqk45HlA4OXPQUxezckcGlSRm8WxfSdZWaMZLmFSqUO/wrEf/gzlVjYWelj
         e4GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VUpMlsS8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v16si245921qtb.3.2020.06.03.16.32.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id d66so2489220pfd.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:14 -0700 (PDT)
X-Received: by 2002:a63:6541:: with SMTP id z62mr1735576pgb.320.1591227133920;
        Wed, 03 Jun 2020 16:32:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x77sm2799667pfc.4.2020.06.03.16.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
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
Subject: [PATCH 04/10] rtlwifi: rtl8192cu: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:57 -0700
Message-Id: <20200603233203.1695403-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VUpMlsS8;       spf=pass
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
to removing[2] this[3] macro[4], just initialize this variable to NULL,
and avoid sending garbage by returning.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
index f070f25bb735..5b071b70bc08 100644
--- a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
+++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
@@ -592,7 +592,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
 						    bool wmm_enable,
 						    u8 queue_sel)
 {
-	u16 uninitialized_var(value);
+	u16 value;
 
 	switch (queue_sel) {
 	case TX_SELE_HQ:
@@ -606,7 +606,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
 		break;
 	default:
 		WARN_ON(1); /* Shall not reach here! */
-		break;
+		return;
 	}
 	_rtl92c_init_chipn_reg_priority(hw, value, value, value, value,
 					value, value);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-5-keescook%40chromium.org.
