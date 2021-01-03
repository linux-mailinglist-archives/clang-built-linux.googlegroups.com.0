Return-Path: <clang-built-linux+bncBAABBQ4NZH7QKGQEEIR23VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE982E8EAF
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Jan 2021 23:35:49 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h23sf12328772plr.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 Jan 2021 14:35:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609713347; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3rjaWxEPNSLPlAyZ7UaLkP5IY2BPzDUY78FFTfR3PA+K0ISHaCnVoC/3/pvQJ70KO
         w9UTu/8J0vSFZsiF/B3dhOfHlGZWEvmU5gLrN8FBnn1BobeS6McVrt1zYYm5DlP/E5SI
         2prDGDFea0cbzzTax1Ae4Fk0n21/zCo8Jadb9WOANKAga+5D2TCasbKFqKWwwPJdtZPl
         AkatEnAZF5wDNU0uUhnAV72K7aty72X88P9IaiAQV3nAsxWnZ9nIhboAwHAAq0kfh84B
         eFiyiR3/tasham9tQRUSgTxlC3NrmK9D4/kzj7vAJhNw3u0XAEy65nmrp926XET3Cxbb
         x6bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=IzHfGGvB2x2hEmeE7DZxsIjaLRwfZGBSsC6BY94seQw=;
        b=mZ73qDZu9GafFpWSLplemXl9O9Z5wlqbcjX/WpKHkNxJ1q2s34P7qn+L/lBYq3hKgf
         ERtCyMcERpy3yoXP+gleG0ii2fZGPgf216ZpA6VhjPo4lOsWjw/1DkoisQDC8NQ7QBVe
         /147BkfWNn1Sj+sZKwmFrETlMAtR6jhq2GpsQ41DEJMIc7syfV2s7sSjDL9ocr2m/s2I
         ASAxYOhWqTJmfZET/mn82na2ZKHdODT8TNRXz3YxWW8wEFaLb691r+Tp5CImxMvUzPNu
         XxDJKwr3a2LDRKV1Zoz8OCozt3sXbXo7/5S1cX9qy5gdQNZoeNWIKZOxohy8ASS/f3Ou
         brdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YNWdRMaI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IzHfGGvB2x2hEmeE7DZxsIjaLRwfZGBSsC6BY94seQw=;
        b=RBlKdEFSmCgCFhwNddMLyBuuXBQtDrO/yfY5h38+v7ooJqwU95S2b3xhWJybnLgz5r
         ddMJIfgG9UqnlY+hzD9tGExCbvw4TWEFo1xkbQebIippY0sdVQDd2YYtIzn4DnRxfsLe
         1XhywkvaXQ05vcfnyC+WCWiz8Q8yEoGKI17rEyBhVUr1ctWZ3XekKc8WpyDxaf0Beztr
         Hn7kYAz3fQEnorDJH5be54Lk7SW5Pk+4CgALvOmsmgMsfQCnev1XVAsMCPWGM/gaH6HU
         /sD1AXXGORfoGpVUtwHXXGlpYzG8wXbYKpm1aXeyA8yXqwRYHo37qF4RtWFRdfjTtVxe
         /glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IzHfGGvB2x2hEmeE7DZxsIjaLRwfZGBSsC6BY94seQw=;
        b=H8qeCAaFzrItOkvBjMVWnU3GLkt73MabRrnbH2HJRgGIb4OVMi1D/8fv5UMniduG21
         6VwZz8vlil46IcGgfmIEcgmMaSb04V1OM6DYaUN3C6nJ+qrxcTxLriph1mGdJK6o1VmJ
         3lznTYTy0dr3vjuXrFnqZsch/KNJpibN7TK4zoTKSk/HbbFYFo9Vc0DW+kgshQIWGQFg
         Y1AxT2Pha3vuoTMHfcQ2S7hI8zHS0T+elSFL7ORrUsVamcHVZjbVBmd4NzcfbA3RwOdn
         7U6FcgjwF0KusoTlqPNrDddwyPcq+yv0SIWrltiLUUYj7vvNAWzoG71pl7OpVPcLUyHF
         /wvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328teptnBUTKQi2HHGKdSKtSsR2Zhbi7KP6FLNmm2JomnEnvx7c
	wHis18f6x/gBwhIduI2IrbU=
X-Google-Smtp-Source: ABdhPJzkD/5fUyMxpDK3pzzx9u3V/nBQkZsV6hXHl5I+tDQZItIv6m2Db26Zt327F0LvxDNG0iZC1A==
X-Received: by 2002:a63:7c9:: with SMTP id 192mr68428382pgh.265.1609713347272;
        Sun, 03 Jan 2021 14:35:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1e5a:: with SMTP id p26ls2080235pgm.10.gmail; Sun, 03
 Jan 2021 14:35:46 -0800 (PST)
X-Received: by 2002:a63:745a:: with SMTP id e26mr68719200pgn.321.1609713346793;
        Sun, 03 Jan 2021 14:35:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609713346; cv=none;
        d=google.com; s=arc-20160816;
        b=EmnFpHDmJ2zPv33gMymWDgidzl2yoiR5y5XyIRCQnSzDQpe20gQbzzfWVuCBwgKH0r
         tm19pXNrLEUydUAu2lxasPuLZgO6zQZNooVK4dYXF+n6JZjf7MUxvjn/SX94XnRKewpo
         wOyQmtJ8/B4PBPUQ4zWHOnNArFEr5lFZJaeTRmxyZK7u3c/HLB6LYL9y4lC/qMae4rpP
         zrVvb81GkiciEdzlZcYVfd7CPJ6u3KActeRWsxRySBQ2Gg217lnbqa3Pfi+4rKh/8fKr
         bPE8ZS25Y6fwtJeYVdA97/0IhZspHjk6omNye2FJUixfp0g/yV6IiILSysVpxHNMJGiB
         LIqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fky6HmHjwFpGSuMFXaKf+e9LizgnH1Sr1oCGkMJ9xWM=;
        b=dqbjPCL/vO/zscjWuK5It3XUIuL1xOTxbE/KHdP5yQGSPT1tJ56KkcxFRWIavD8oFN
         lO1NgPHC3DGYBt0SnpR1fcdeP4Xn846XZa+jlfHJuA/NQcRc/fqYi8Yjo2jHmNfe2zax
         8DTZepCfmCvEfyyRV4MzCplWn8RCXqXBpFRbCbWuVAroECDpTwoPL7DGOf8dLUU9calr
         /s4aVQi5OTzS+pLRJXq3QPLhy/Mzhjx1KQanN2RdpriP9wgorJGXad3FT9FxWO9T7CDW
         qbtV0yOma4GFpBfX1g6CRNs7M3R+C87B+sAtrHPGSIotELUuXLr5F+DBvj79kNm5FX8q
         XaLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YNWdRMaI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d1si1607496pjo.1.2021.01.03.14.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Jan 2021 14:35:46 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C20A20773;
	Sun,  3 Jan 2021 22:35:43 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Coiby Xu <coiby.xu@gmail.com>,
	greybus-dev@lists.linaro.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] staging: greybus: fix stack size warning with UBSAN
Date: Sun,  3 Jan 2021 23:35:32 +0100
Message-Id: <20210103223541.2790855-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YNWdRMaI;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang warns about excessive stack usage in this driver when
UBSAN is enabled:

drivers/staging/greybus/audio_topology.c:977:12: error: stack frame size of 1836 bytes in function 'gbaudio_tplg_create_widget' [-Werror,-Wframe-larger-than=]

Rework this code to no longer use compound literals for
initializing the structure in each case, but instead keep
the common bits in a preallocated constant array and copy
them as needed.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/greybus/audio_topology.c | 106 ++++++++++-------------
 1 file changed, 47 insertions(+), 59 deletions(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 96b8b29fe899..c03873915c20 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -974,6 +974,44 @@ static int gbaudio_widget_event(struct snd_soc_dapm_widget *w,
 	return ret;
 }
 
+static const struct snd_soc_dapm_widget gbaudio_widgets[] = {
+	[snd_soc_dapm_spk]	= SND_SOC_DAPM_SPK("spk", gbcodec_event_spk),
+	[snd_soc_dapm_hp]	= SND_SOC_DAPM_HP("hp", gbcodec_event_hp),
+	[snd_soc_dapm_mic]	= SND_SOC_DAPM_MIC("mic", gbcodec_event_int_mic),
+	[snd_soc_dapm_output]	= SND_SOC_DAPM_OUTPUT("output"),
+	[snd_soc_dapm_input]	= SND_SOC_DAPM_INPUT("input"),
+	[snd_soc_dapm_switch]	= SND_SOC_DAPM_SWITCH_E("switch", SND_SOC_NOPM,
+					0, 0, NULL,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_pga]	= SND_SOC_DAPM_PGA_E("pga", SND_SOC_NOPM,
+					0, 0, NULL, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_mixer]	= SND_SOC_DAPM_MIXER_E("mixer", SND_SOC_NOPM,
+					0, 0, NULL, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_mux]	= SND_SOC_DAPM_MUX_E("mux", SND_SOC_NOPM,
+					0, 0, NULL,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_aif_in]	= SND_SOC_DAPM_AIF_IN_E("aif_in", NULL, 0,
+					SND_SOC_NOPM, 0, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+	[snd_soc_dapm_aif_out]	= SND_SOC_DAPM_AIF_OUT_E("aif_out", NULL, 0,
+					SND_SOC_NOPM, 0, 0,
+					gbaudio_widget_event,
+					SND_SOC_DAPM_PRE_PMU |
+					SND_SOC_DAPM_POST_PMD),
+};
+
 static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 				      struct snd_soc_dapm_widget *dw,
 				      struct gb_audio_widget *w, int *w_size)
@@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 	strlcpy(temp_name, w->name, NAME_SIZE);
 	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
 
+	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
+		ret = -EINVAL;
+		goto error;
+	}
+	*dw = gbaudio_widgets[w->type];
+	dw->name = w->name;
+
 	switch (w->type) {
 	case snd_soc_dapm_spk:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_SPK(w->name, gbcodec_event_spk);
 		module->op_devices |= GBAUDIO_DEVICE_OUT_SPEAKER;
 		break;
 	case snd_soc_dapm_hp:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_HP(w->name, gbcodec_event_hp);
 		module->op_devices |= (GBAUDIO_DEVICE_OUT_WIRED_HEADSET
-					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE);
+					| GBAUDIO_DEVICE_OUT_WIRED_HEADPHONE),
 		module->ip_devices |= GBAUDIO_DEVICE_IN_WIRED_HEADSET;
 		break;
 	case snd_soc_dapm_mic:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MIC(w->name, gbcodec_event_int_mic);
 		module->ip_devices |= GBAUDIO_DEVICE_IN_BUILTIN_MIC;
 		break;
-	case snd_soc_dapm_output:
-		*dw = (struct snd_soc_dapm_widget)SND_SOC_DAPM_OUTPUT(w->name);
-		break;
-	case snd_soc_dapm_input:
-		*dw = (struct snd_soc_dapm_widget)SND_SOC_DAPM_INPUT(w->name);
-		break;
-	case snd_soc_dapm_switch:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_SWITCH_E(w->name, SND_SOC_NOPM, 0, 0,
-					      widget_kctls,
-					      gbaudio_widget_event,
-					      SND_SOC_DAPM_PRE_PMU |
-					      SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_pga:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_PGA_E(w->name, SND_SOC_NOPM, 0, 0, NULL, 0,
-					   gbaudio_widget_event,
-					   SND_SOC_DAPM_PRE_PMU |
-					   SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_mixer:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MIXER_E(w->name, SND_SOC_NOPM, 0, 0, NULL,
-					     0, gbaudio_widget_event,
-					     SND_SOC_DAPM_PRE_PMU |
-					     SND_SOC_DAPM_POST_PMD);
-		break;
-	case snd_soc_dapm_mux:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_MUX_E(w->name, SND_SOC_NOPM, 0, 0,
-					   widget_kctls, gbaudio_widget_event,
-					   SND_SOC_DAPM_PRE_PMU |
-					   SND_SOC_DAPM_POST_PMD);
-		break;
 	case snd_soc_dapm_aif_in:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_AIF_IN_E(w->name, w->sname, 0,
-					      SND_SOC_NOPM,
-					      0, 0, gbaudio_widget_event,
-					      SND_SOC_DAPM_PRE_PMU |
-					      SND_SOC_DAPM_POST_PMD);
-		break;
 	case snd_soc_dapm_aif_out:
-		*dw = (struct snd_soc_dapm_widget)
-			SND_SOC_DAPM_AIF_OUT_E(w->name, w->sname, 0,
-					       SND_SOC_NOPM,
-					       0, 0, gbaudio_widget_event,
-					       SND_SOC_DAPM_PRE_PMU |
-					       SND_SOC_DAPM_POST_PMD);
-		break;
-	default:
-		ret = -EINVAL;
-		goto error;
+		dw->sname = w->sname;
 	}
 
 	dev_dbg(module->dev, "%s: widget of type %d created\n", dw->name,
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210103223541.2790855-1-arnd%40kernel.org.
