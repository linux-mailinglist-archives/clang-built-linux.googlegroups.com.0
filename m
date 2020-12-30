Return-Path: <clang-built-linux+bncBAABB4WAWL7QKGQED6GXVPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 256162E7A8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 16:44:51 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id a17sf12962484qko.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 07:44:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609343090; cv=pass;
        d=google.com; s=arc-20160816;
        b=IWDgO1jFGeXL1Gocut07Iek2CoriOm/EQqpx6sm8VOGKxZO5TG7KlgbeoSBFkcwSnq
         7iT7b2q3+p+oqDBQ8sEALwjLTPDDSH+Y1h/oryMrqtkSFXEzIshPKC/oqPj5IYmucYGE
         IeuNJW2MKrRe8mfpOaLe59BCwquwLCNboTbjyaqw/U26oT7Z1SIHdz0g/ajmAlufecXD
         dM4NE7ns4W3zP/8H1sNHHfgNTiEuvvnanRWeK7IkFKtHI2g6S8dfyDnsPAGDFroPpVjW
         oKpKFGa4AM13Ol4u8ga9F9C0DCQ9/8aTAlmYQP5iFCbgBjzY7BwnMFF7dd6bhLQHrjnm
         ySEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=gNHoMZeLYEZX87bgtYiPEOtfIO5NORIkc97ZFAhM4Hs=;
        b=JDA+I/QcpT/GDNUNDnFbOzZbiZE0+FfecTLpHLCUMGKS3Mlf6mieEtcPxHFwKwOgFI
         nk/NFC9InIT1pZX672IyWk/z6yEpbxY0fwc0P0ahYub02O+twB4FgtL0vlYMc2+nc7s2
         97oBoMBWkxKkDy8GfZjxcB+VBPy4M9TClhitUUgZ4X39JDhwHSVK8a3WA9/R+NDwsOW6
         HaziqfXOJ7pAvuK/vZmtpyVkS6fghjpLGsYSwBK403kqpxK5Ui/7Dw6KytGceJTu67QS
         B6gopfJS1Dj7TX8+4rE/wRrUGT4gH61HIwxouZm2+TNwUULcqnZ/htkOPCXF4yrnCAQ5
         bsqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HCKeDJ0K;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNHoMZeLYEZX87bgtYiPEOtfIO5NORIkc97ZFAhM4Hs=;
        b=DUHGQm2c4HaEMfJMhc38ELGcBcXZhutyYBs4j/uX1jOkd+/FnFSukntVVLMLeg7642
         xrpAvNMYaSuBvVue+/NQB/dA8MjgY79+AU0XfXR6XiQ0VUnBXsQ5INY/SGkD33sd390U
         GTRxz3my4Z4TZPXhH8XnMRKAB74Y2DBT0eby6mn4n6UCg2DSboKIBcqFlXW7YVGOd61L
         0szfAl7IJe2GXT9qc+2Rv2roPIgHFZD1kbua4gjSvRDQaBZbLUMHR0jxB4Ews9TtAMab
         8sta9VPpKeFKlNakgCZbNx+bEZSR5vbQQHSFNKzHkCVTZMZ9MTSHWIkg/4hzRAhVQPKb
         Kieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gNHoMZeLYEZX87bgtYiPEOtfIO5NORIkc97ZFAhM4Hs=;
        b=AALKieTvcSGATRFMK0tNMGPGz1CWw0ArsF4wii37CWtGW0BET0JjDxmh1W31Rq/0BR
         5S23TR+45aqsdHzzujHpq5y2YkdT2Igl9lyzZ23GhDZzpeUUBddT4KAC3ENZUOuYVzYs
         cP9g+HVDl8fNUTX1JoidSr/t2fayzHDEV65bHieMeEzMVEFMUklK8ACHpLdSvXAaxlyB
         hf2n51hg1ijq/MtMp5opv7Y1asFTmKhcpqCOpODJh6GXyhNVZER/UoWFQZbL2Q3fB/AW
         0JP1cO3cQfd0URPmVjHz8u9Uo5O6PvKG/yGM+l8qO72Ldf/tzSaNDf65CK3QLJvKQO1u
         fP+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sICElnBnhJvQ5E+HPugTXKN2wyL+C8Qt4C45PsQp38fMr1lSF
	cg62CKOj4ciPtJPnepwlAGA=
X-Google-Smtp-Source: ABdhPJzbDBuEOAT8JQZgCr0K/QYhk3JtzyHUZyi+17M3eKEyE+sSA4fT5sACmvZpgbpb6lWpMIhkwg==
X-Received: by 2002:a37:a80f:: with SMTP id r15mr53079155qke.289.1609343090231;
        Wed, 30 Dec 2020 07:44:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls24493111qtp.7.gmail; Wed, 30
 Dec 2020 07:44:50 -0800 (PST)
X-Received: by 2002:ac8:6758:: with SMTP id n24mr55122446qtp.258.1609343089960;
        Wed, 30 Dec 2020 07:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609343089; cv=none;
        d=google.com; s=arc-20160816;
        b=QmdH1o9YpYFyn46eMXAoNEqDaH4srdBk1bFtvj6ZVgzWSN/8iuX6wiD5JJ1BPxrhrB
         wRKuMLyojipfvufAAMCP/XLQDGizsNDXxkO7HDNiW7RZB7tOoFxZOw6nA0aqoylF29Wk
         PLMzfWgKUXKqe9YeteqdndwVNImYrgeOePZ0VKr/W05znwBxNDIrbEuvfsYdWNqhHdRH
         TnVF5qn3mhMgxnnQS6RGy9DA3/gIQN1cGxFINuuHywVoiqltK7rlhc8bcaGTRjWiD4H3
         hAkSceJqXIinb1EEqPfr4cNv+ArTalatQhaHX7oVYy/8qbQI1ZRhWTyN5u3VLBV9Wog8
         Df9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AL/tMDhvZLKoDh7YO+OfDb1+N9GOVI/ovuuABNu2M8A=;
        b=C5xjm72wvwc47suGUxuj6ciqPbwzFtA9eZJ/iMWYCiCXuMMlpZWoGRJ9kGDvfJwXZP
         x7SL7djBEi/GPJVC6qG6DpuzbTwAs2lIBIMkTkAtHhHm11MOBFD1keFvkP3orVsy4Obq
         2DUFqazQrYU+gn80M679UzM7BcxUV9oS6wbP7eAlQlIzmeQEYRVVrcaE8JJGyXAkc/vg
         uBHIMJcD750425FUgD9hoNMixoV4wfJf7j+odKBya8Mz+pwi+NEyDCQylD1mrMJReV26
         P23y1CR0nzy4AkB017k4ztqgEl5AjdsxHjYQjNLDq+FUNN53s27jC7pNYADCnw+FzlDT
         4OBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HCKeDJ0K;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p55si3027409qtc.2.2020.12.30.07.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 07:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 413BD20725;
	Wed, 30 Dec 2020 15:44:45 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Timur Tabi <timur@kernel.org>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	alsa-devel@alsa-project.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ASoC: fsl: fix -Wmaybe-uninitialized warning
Date: Wed, 30 Dec 2020 16:44:15 +0100
Message-Id: <20201230154443.656997-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HCKeDJ0K;       spf=pass
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

Clang points out a code path that returns an undefined value
in an error case:

sound/soc/fsl/imx-hdmi.c:165:6: error: variable 'ret' is used uninitialized whenever 'if' condition is true [-Werror,-Wsom
etimes-uninitialized]
        if ((hdmi_out && hdmi_in) || (!hdmi_out && !hdmi_in)) {
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sound/soc/fsl/imx-hdmi.c:212:9: note: uninitialized use occurs here
        return ret;

The driver returns -EINVAL for other broken DT properties, so do
it the same way here.

Fixes: 6a5f850aa83a ("ASoC: fsl: Add imx-hdmi machine driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 sound/soc/fsl/imx-hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/fsl/imx-hdmi.c b/sound/soc/fsl/imx-hdmi.c
index 2c2a76a71940..ede4a9ad1054 100644
--- a/sound/soc/fsl/imx-hdmi.c
+++ b/sound/soc/fsl/imx-hdmi.c
@@ -164,6 +164,7 @@ static int imx_hdmi_probe(struct platform_device *pdev)
 
 	if ((hdmi_out && hdmi_in) || (!hdmi_out && !hdmi_in)) {
 		dev_err(&pdev->dev, "Invalid HDMI DAI link\n");
+		ret = -EINVAL;
 		goto fail;
 	}
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230154443.656997-1-arnd%40kernel.org.
