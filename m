Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5V6732QKGQEUCPKW2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0C21D5F8C
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 10:08:23 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id x10sf5415852ybx.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 01:08:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589616502; cv=pass;
        d=google.com; s=arc-20160816;
        b=tM6e5ut+PU3IyVmjY3jUN9jE7Q3oNwSTGRlmMwq/Sh2vAqhO1JNvDhxenKs6DQabeW
         E2+VSVZPpYb2W7MWMd/9Z2GSs82T9JhhMJZzwwzlwwXjR91LA7/q3Owxax4gDkXxXnHF
         l/nxXllTyDRPMkpp5nVH6IzIxB/fPpneTwUBTEYNy4RiXQ9rirsSJIsuL18pl5mrw6l7
         eKET3NfX3ZLfknuQyy709m2fWCJn7kc6MU4WLOJNdA0ZcJBD9+vH8/tZDIqMqwuLolzx
         QQT7o80l9hJpW4UIWVoM1h3M3Gq/7Ldf4F4iYlYjKZGsS5wbJVughRC3MxXdA6ZTbGAz
         w1NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=ZhUjr/ENS8db0tBKpEVXZvU1m2MkLsBJe//BxuVuaJ4=;
        b=FWZV0nt3w8I33dP7jSdRUyCMNQc5QMUS/COmxyF+/AJhK8RlJG6DGef76SWfPzIJKb
         F0u2/Au0Gs7aDxnx3ea8hRmEczcLgWH2ttVUPa02CMwW+ajqKTKGl75DgvkdihdJ5IlH
         CUL8bqm9HvUGl/nIxm9RNkx8scVi8eKxBezaeFVfgMdxDKyM/iq/auqQWcbP5NhsH0+H
         HkwfWX/bsebgvJkk3i6l5rFHzjavZcMm7iHkCMp1vji+9zTDXeFCRwsXT1yOnpmvPBaS
         roRe03wxMdjJZc+dh16XXdi0ao3Ogr0m3ARxktwpQcDuke5Lb3H3GxWns+0y3e/3PaMg
         mIxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gd/kZlQy";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZhUjr/ENS8db0tBKpEVXZvU1m2MkLsBJe//BxuVuaJ4=;
        b=bBLHLG5qx51MaPHjzJew3xPVh22SfBdS/vjF5Ee4dG63PEhtLQ0Fs8kJFRv24+WMtf
         ay2eib4tfh4UBSptiS5b6fcCqIcdSTr4FJ+vTPsENRr188ehw23ad1ipJX3r5/CGMDrf
         0msPuK/4Q5N0NCKYAuEeUpAMU+nu6vwU8P7zNV8obCjf7A4zg9iN0TC6GOEU08r58ERE
         UaGK6J+8EFE5MYx9KqiCPDiqAkIYVE2j8wJPrp6eGazW7QlbJf8nWnBFngcm3qVBVNiI
         NWyZ02+WKejCzNG6nATDuK4XQ6TRPH4gc9UiSjaFDZOS63Y1cyxnndDFYAQ4vId6OEuC
         bg5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZhUjr/ENS8db0tBKpEVXZvU1m2MkLsBJe//BxuVuaJ4=;
        b=ZQJu9wRzSW19QqVX6IvhXb8PnYEucTW1poOuaDYCObndN87WRZ57ZzLaLvrLfSwReT
         pIdMNMX/sHniOxdRxa5gjvSlMy+KcULTUIKmwEUq3clpBIOjkyeTAodOeQXMy4qqsHQq
         CBCdAdwNfQr1/jlEBegvWtvV651xd8TMoILQGCsMRv1Xxl5Kpf/o480OqZyAoidN2DXr
         hkee6QEJjSimFzOT8jSIiyMtnKWmvPEYfPOleDtyfUktOmJauPVTdn1aol21/JcpJDjK
         6vvFG9ve5St2EZCNrgShIylnWhfSRZzY42/POEjtPS7FcHNi+TsJq6pQWoWXNZWGGY+P
         YPsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZhUjr/ENS8db0tBKpEVXZvU1m2MkLsBJe//BxuVuaJ4=;
        b=f68gcXZ1SM+R8NVpi1LTMvDyHwZUZjOSXMcShEEjlOXK3YlMIaYFMb/cSJ6jeEMwZ4
         qgsNutO55NFJq+KEdaJcdPeeA/QnahjSJ2JKp+6YzK5viOSGzyNQZFNogZv2KPh7L5bU
         iVWUSIk5TThhpUBhsLOJGkudeoAJMdjiGPzkO8EkV4QHL58oSPyylQ4kBIVE/esVzPE6
         CxBrrnitwVBSOdnalqTnruLWex2zt1sG8Q4Lr8KMmn6EuQVWj3AGmvu2TVGELIq6bFPB
         3STVRT+vgqOEJJ/oXCzDPhkj52hxN97IUnAnZVoTWfjIIUoRgfRliupw3xlgICB9NY4f
         UTzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VrSCLQrUByBOkVuo++e2pwtOcVPnM7IcO+h3tjkVOFbwFtIiK
	laQdcwc9h3BIUx2WJ9zj5LY=
X-Google-Smtp-Source: ABdhPJwKbaQSoQi0mbSZRGKfqjZWvzy5wtxfs8Y2sYuhfxaXH37ZmeTxqgFxrpPwB58TzyRVB9OvVg==
X-Received: by 2002:a25:cfc4:: with SMTP id f187mr10832571ybg.167.1589616502355;
        Sat, 16 May 2020 01:08:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:ece:: with SMTP id a14ls1770770ybs.8.gmail; Sat, 16 May
 2020 01:08:22 -0700 (PDT)
X-Received: by 2002:a5b:383:: with SMTP id k3mr11235070ybp.332.1589616502048;
        Sat, 16 May 2020 01:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589616502; cv=none;
        d=google.com; s=arc-20160816;
        b=rmbEfofPlEUh4qlGqMvp70uYe0MxPEbtNioY5H7l3cDS/SD3Zf2InCE6WLKJefKE9T
         TyFSKmy2AyzdP6iU6030TI5hnX3m83ocaMqT72XaDmJn6fFcmnezsIHxelZOKHbRFtMF
         OOXZCECVHAriHWm+eQn6czeilrCXb2r8WOjkv33uV4qaC4EFxQyA/g0t1dqoaeD42LE9
         V8ntFBhTr0SUtVHZ0UhPHIp4SPn8GiMytDgCD8TEMrOQCOAZsqeuaE3VIKZCQ/nvLvXK
         hIC2X60zJLc7OioCZGHcB46Z7QKXFb6/W8Muz2WDjMhgQxEimOkLT3Fco9QYO8Isu4Q3
         sSVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z2Go5PJBGLNL35dW9/nW12LRtHjLfeR0GNx6XNTzagY=;
        b=k1sVz0X/GlZE73imB5IWYEzOp1jTLocucTw8kv6rl8siV23FL2yra/C25SiWXI+e0I
         dINI3oI7JzOSGFQy33u9uWr4lHunFPK8F0gf1hqmUhCkTnrxYERJAqNCQPkMIJy/OZTa
         ijZ3c6YIsb8t3NrfsRhwSZ1m6WF2W/1C+I5QjW9xgLmAf0Rwmhni5ct7WAcNJTqwDL+V
         EzHhfOi2aoL+9R3KYhL3gg86RfnEngACRfG4HGX7eXeZWOWvbIwQIxDjINFlR+RNvnkn
         63OKzZ6t4aP2zFGz4B0I0Mah5CYmYXMmEEgGPw6ULRTiuOBU9dzZ72gm6SqgzXHVOSKL
         RWtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gd/kZlQy";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id p85si272818ybg.4.2020.05.16.01.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 01:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id r25so4479622oij.4
        for <clang-built-linux@googlegroups.com>; Sat, 16 May 2020 01:08:22 -0700 (PDT)
X-Received: by 2002:aca:c142:: with SMTP id r63mr4562254oif.84.1589616501578;
        Sat, 16 May 2020 01:08:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n11sm1321064oij.21.2020.05.16.01.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2020 01:08:21 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	linux-clk@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 2/2] clk: bcm2835: Remove casting to bcm2835_clk_register
Date: Sat, 16 May 2020 01:08:07 -0700
Message-Id: <20200516080806.1459784-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200516080806.1459784-1-natechancellor@gmail.com>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gd/kZlQy";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

There are four different callback functions that are used for the
clk_register callback that all have different second parameter types.

bcm2835_register_pll -> struct bcm2835_pll_data
bcm2835_register_pll_divider -> struct bcm2835_pll_divider_data
bcm2835_register_clock -> struct bcm2835_clock_data
bcm2835_register_date -> struct bcm2835_gate_data

These callbacks are cast to bcm2835_clk_register so that there is no
error about incompatible pointer types. Unfortunately, this is a control
flow integrity violation, which verifies that the callback function's
types match the prototypes exactly before jumping.

[    0.857913] CFI failure (target: 0xffffff9334a81820):
[    0.857977] WARNING: CPU: 3 PID: 35 at kernel/cfi.c:29 __cfi_check_fail+0x50/0x58
[    0.857985] Modules linked in:
[    0.858007] CPU: 3 PID: 35 Comm: kworker/3:1 Not tainted 4.19.123-v8-01301-gdbb48f16956e4-dirty #1
[    0.858015] Hardware name: Raspberry Pi 3 Model B Rev 1.2 (DT)
[    0.858031] Workqueue: events 0xffffff9334a925c8
[    0.858046] pstate: 60000005 (nZCv daif -PAN -UAO)
[    0.858058] pc : __cfi_check_fail+0x50/0x58
[    0.858070] lr : __cfi_check_fail+0x50/0x58
[    0.858078] sp : ffffff800814ba90
[    0.858086] x29: ffffff800814ba90 x28: 000fffffffdfff3d
[    0.858101] x27: 00000000002000c2 x26: ffffff93355fdb18
[    0.858116] x25: 0000000000000000 x24: ffffff9334a81820
[    0.858131] x23: ffffff93357f3580 x22: ffffff9334af1000
[    0.858146] x21: a79b57e88f8ebc81 x20: ffffff93357f3580
[    0.858161] x19: ffffff9334a81820 x18: fffffff679769070
[    0.858175] x17: 0000000000000000 x16: 0000000000000000
[    0.858190] x15: 0000000000000004 x14: 000000000000003c
[    0.858205] x13: 0000000000003044 x12: 0000000000000000
[    0.858220] x11: b57e91cd641bae00 x10: b57e91cd641bae00
[    0.858235] x9 : b57e91cd641bae00 x8 : b57e91cd641bae00
[    0.858250] x7 : 0000000000000000 x6 : ffffff933591d4e5
[    0.858264] x5 : 0000000000000000 x4 : 0000000000000000
[    0.858279] x3 : ffffff800814b718 x2 : ffffff9334a84818
[    0.858293] x1 : ffffff9334bba66c x0 : 0000000000000029
[    0.858308] Call trace:
[    0.858321]  __cfi_check_fail+0x50/0x58
[    0.858337]  __cfi_check+0x3ab3c/0x4467c
[    0.858351]  bcm2835_clk_probe+0x210/0x2dc
[    0.858369]  platform_drv_probe+0xb0/0xfc
[    0.858380]  really_probe+0x4a0/0x5a8
[    0.858391]  driver_probe_device+0x68/0x104
[    0.858403]  __device_attach_driver+0x100/0x148
[    0.858418]  bus_for_each_drv+0xb0/0x12c
[    0.858431]  __device_attach.llvm.17225159516306086099+0xc0/0x168
[    0.858443]  bus_probe_device+0x44/0xfc
[    0.858455]  deferred_probe_work_func+0xa0/0xe0
[    0.858472]  process_one_work+0x210/0x538
[    0.858485]  worker_thread+0x2e8/0x478
[    0.858500]  kthread+0x154/0x164
[    0.858515]  ret_from_fork+0x10/0x18

To fix this, change the second parameter of all functions void * and use
a local variable with the correct type so that everything works
properly. With this, the only use of bcm2835_clk_register is in struct
bcm2835_clk_desc so we can just remove it and use the type directly.

Fixes: 56eb3a2ed972 ("clk: bcm2835: remove use of BCM2835_CLOCK_COUNT in driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1028
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/clk/bcm/clk-bcm2835.c | 68 +++++++++++++++++++----------------
 1 file changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 7c845c293af0..0d0eeb3b0dd5 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1296,8 +1296,9 @@ static const struct clk_ops bcm2835_vpu_clock_clk_ops = {
 };
 
 static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
-					   const struct bcm2835_pll_data *data)
+					   const void *data)
 {
+	const struct bcm2835_pll_data *pll_data = data;
 	struct bcm2835_pll *pll;
 	struct clk_init_data init;
 	int ret;
@@ -1307,7 +1308,7 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = &cprman->real_parent_names[0];
 	init.num_parents = 1;
-	init.name = data->name;
+	init.name = pll_data->name;
 	init.ops = &bcm2835_pll_clk_ops;
 	init.flags = CLK_IGNORE_UNUSED;
 
@@ -1316,7 +1317,7 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 		return NULL;
 
 	pll->cprman = cprman;
-	pll->data = data;
+	pll->data = pll_data;
 	pll->hw.init = &init;
 
 	ret = devm_clk_hw_register(cprman->dev, &pll->hw);
@@ -1327,35 +1328,36 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 
 static struct clk_hw *
 bcm2835_register_pll_divider(struct bcm2835_cprman *cprman,
-			     const struct bcm2835_pll_divider_data *data)
+			     const void *data)
 {
+	const struct bcm2835_pll_divider_data *divider_data = data;
 	struct bcm2835_pll_divider *divider;
 	struct clk_init_data init;
 	const char *divider_name;
 	int ret;
 
-	if (data->fixed_divider != 1) {
+	if (divider_data->fixed_divider != 1) {
 		divider_name = devm_kasprintf(cprman->dev, GFP_KERNEL,
-					      "%s_prediv", data->name);
+					      "%s_prediv", divider_data->name);
 		if (!divider_name)
 			return NULL;
 	} else {
-		divider_name = data->name;
+		divider_name = divider_data->name;
 	}
 
 	memset(&init, 0, sizeof(init));
 
-	init.parent_names = &data->source_pll;
+	init.parent_names = &divider_data->source_pll;
 	init.num_parents = 1;
 	init.name = divider_name;
 	init.ops = &bcm2835_pll_divider_clk_ops;
-	init.flags = data->flags | CLK_IGNORE_UNUSED;
+	init.flags = divider_data->flags | CLK_IGNORE_UNUSED;
 
 	divider = devm_kzalloc(cprman->dev, sizeof(*divider), GFP_KERNEL);
 	if (!divider)
 		return NULL;
 
-	divider->div.reg = cprman->regs + data->a2w_reg;
+	divider->div.reg = cprman->regs + divider_data->a2w_reg;
 	divider->div.shift = A2W_PLL_DIV_SHIFT;
 	divider->div.width = A2W_PLL_DIV_BITS;
 	divider->div.flags = CLK_DIVIDER_MAX_AT_ZERO;
@@ -1364,7 +1366,7 @@ bcm2835_register_pll_divider(struct bcm2835_cprman *cprman,
 	divider->div.table = NULL;
 
 	divider->cprman = cprman;
-	divider->data = data;
+	divider->data = divider_data;
 
 	ret = devm_clk_hw_register(cprman->dev, &divider->div.hw);
 	if (ret)
@@ -1374,20 +1376,22 @@ bcm2835_register_pll_divider(struct bcm2835_cprman *cprman,
 	 * PLLH's channels have a fixed divide by 10 afterwards, which
 	 * is what our consumers are actually using.
 	 */
-	if (data->fixed_divider != 1) {
-		return clk_hw_register_fixed_factor(cprman->dev, data->name,
+	if (divider_data->fixed_divider != 1) {
+		return clk_hw_register_fixed_factor(cprman->dev,
+						    divider_data->name,
 						    divider_name,
 						    CLK_SET_RATE_PARENT,
 						    1,
-						    data->fixed_divider);
+						    divider_data->fixed_divider);
 	}
 
 	return &divider->div.hw;
 }
 
 static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
-					  const struct bcm2835_clock_data *data)
+					     const void *data)
 {
+	const struct bcm2835_clock_data *clock_data = data;
 	struct bcm2835_clock *clock;
 	struct clk_init_data init;
 	const char *parents[1 << CM_SRC_BITS];
@@ -1398,8 +1402,8 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 	 * Replace our strings referencing parent clocks with the
 	 * actual clock-output-name of the parent.
 	 */
-	for (i = 0; i < data->num_mux_parents; i++) {
-		parents[i] = data->parents[i];
+	for (i = 0; i < clock_data->num_mux_parents; i++) {
+		parents[i] = clock_data->parents[i];
 
 		ret = match_string(cprman_parent_names,
 				   ARRAY_SIZE(cprman_parent_names),
@@ -1410,18 +1414,18 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 
 	memset(&init, 0, sizeof(init));
 	init.parent_names = parents;
-	init.num_parents = data->num_mux_parents;
-	init.name = data->name;
-	init.flags = data->flags | CLK_IGNORE_UNUSED;
+	init.num_parents = clock_data->num_mux_parents;
+	init.name = clock_data->name;
+	init.flags = clock_data->flags | CLK_IGNORE_UNUSED;
 
 	/*
 	 * Pass the CLK_SET_RATE_PARENT flag if we are allowed to propagate
 	 * rate changes on at least of the parents.
 	 */
-	if (data->set_rate_parent)
+	if (clock_data->set_rate_parent)
 		init.flags |= CLK_SET_RATE_PARENT;
 
-	if (data->is_vpu_clock) {
+	if (clock_data->is_vpu_clock) {
 		init.ops = &bcm2835_vpu_clock_clk_ops;
 	} else {
 		init.ops = &bcm2835_clock_clk_ops;
@@ -1430,7 +1434,7 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 		/* If the clock wasn't actually enabled at boot, it's not
 		 * critical.
 		 */
-		if (!(cprman_read(cprman, data->ctl_reg) & CM_ENABLE))
+		if (!(cprman_read(cprman, clock_data->ctl_reg) & CM_ENABLE))
 			init.flags &= ~CLK_IS_CRITICAL;
 	}
 
@@ -1439,7 +1443,7 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 		return NULL;
 
 	clock->cprman = cprman;
-	clock->data = data;
+	clock->data = clock_data;
 	clock->hw.init = &init;
 
 	ret = devm_clk_hw_register(cprman->dev, &clock->hw);
@@ -1449,24 +1453,26 @@ static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
 }
 
 static struct clk_hw *bcm2835_register_gate(struct bcm2835_cprman *cprman,
-					 const struct bcm2835_gate_data *data)
+					    const void *data)
 {
-	return clk_hw_register_gate(cprman->dev, data->name, data->parent,
+	const struct bcm2835_gate_data *gate_data = data;
+
+	return clk_hw_register_gate(cprman->dev, gate_data->name,
+				    gate_data->parent,
 				    CLK_IGNORE_UNUSED | CLK_SET_RATE_GATE,
-				    cprman->regs + data->ctl_reg,
+				    cprman->regs + gate_data->ctl_reg,
 				    CM_GATE_BIT, 0, &cprman->regs_lock);
 }
 
-typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,
-					       const void *data);
 struct bcm2835_clk_desc {
-	bcm2835_clk_register clk_register;
+	struct clk_hw *(*clk_register)(struct bcm2835_cprman *cprman,
+				       const void *data);
 	unsigned int supported;
 	const void *data;
 };
 
 /* assignment helper macros for different clock types */
-#define _REGISTER(f, s, ...) { .clk_register = (bcm2835_clk_register)f, \
+#define _REGISTER(f, s, ...) { .clk_register = f, \
 			       .supported = s,				\
 			       .data = __VA_ARGS__ }
 #define REGISTER_PLL(s, ...)	_REGISTER(&bcm2835_register_pll,	\
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200516080806.1459784-2-natechancellor%40gmail.com.
