Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCWCYODAMGQEVJAW4VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A22F3AF5B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:57:16 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id r17-20020a17090aa091b029016eedf1dd17sf339520pjp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:57:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624301834; cv=pass;
        d=google.com; s=arc-20160816;
        b=uG6+5Q0Qmi5iS2RDJOC6M44Kd/ue2C+pFE7gODniOMr7Fm4/E531kOUKRpRXa60G3e
         61JIK48qntqk9SbHkquxMBVNLiAWRxQgLEtihlcDvU21W2mOYxe1b0yhxhILzspE2isA
         n6eu0R3/v0eUtp+anpEto+vyFsTj88AqQXgvcGDCvww4Ne/ecZVhf0NDXCGWi+mFSTlU
         Lgs4aXy/rmzAlPv9WRUalmMqZfH46i9nYe2lUqPgEAJsn4qEXG9eZNFuhiUJ6kphwYwG
         6UZX8fEer6avSwcSWa6Yjl0y2n/K+kz52ZoN9g2PGTBEh71MBJC+nutp3A7taeQCYX0z
         7Xhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=G9CpkhTe4hn98JzOznxPcuXKdh5ce1HWvCPUKQ4ONUw=;
        b=DXlZsDNA0WmJIfJtiCsD1NliXkKZm/ctBZQkvQM3q2h68HNdk11Xk+9uwGPE+4YvJz
         +te3KyZZdYmGfR9Q0B5OWt5kfqDPN82LwaRvnbHjekEJjm77rPuKHQHfCZJ/ibw9ncd5
         p+oK1moq3ndDZbD0Xy9cNwdLIpFfiycFTogko2QsYa3U9KiQpphFnZYxwyy0fu8ORzSX
         zDzfNlhlDbGGJVMXxoCanGSmjqA5t/jL36kOMOcKRN9DErdua4E1xgzrqA2YNlvICPQQ
         fE8tVgnoJY+kkvQJndhNNnvxGZmL3E2NB4ysYtbY1DM11V6PyPyDSVmRFoPYABcnIyyG
         DByA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BHt813KO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G9CpkhTe4hn98JzOznxPcuXKdh5ce1HWvCPUKQ4ONUw=;
        b=Zuh2mydybfqWMzHH85SyayLs8tyepTWRc86hwwWGih45SHCbKddfpu+Av13qu3jKj8
         eZOoUDLIIU0ERckiLGANrwI9853rZYHykcndM2UWd5pSsmOs2pdkGcmIv7cisHQMmhfD
         TIImsmJmzHgPJYTGb3vv7Sug8MOXFsJ6m9r0/Dmr3pTKCVivWhWpYYRMMEp7KunzECZE
         cYrZlrqL5OAlrkdotR4Dv9XPkNqKXd2NQlYeph7SCbf8uwhBsMTS6uF27aYALtA4+oQB
         nQcV71UaneiPmew2YRJI8cNJa9c7uErEUPp41B36NuaHB7E3EBkoZltmrEHb3I2WJNUg
         FHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G9CpkhTe4hn98JzOznxPcuXKdh5ce1HWvCPUKQ4ONUw=;
        b=O2hXa+rA2n9OvUOculFBUZYQidVE1UqzZ5+PDDYbFapLIPA5VcocMLCswnBDYeA4JG
         bgZ+I+pcqgRvpg1MqCxZsdvQkBFvVEXUVDhA8x1+tHvAp1r7eNP70yBeJVQGiwVa9/kp
         QP0p9154xdCwkQTbqWveVvkRIjj+Hh/K7z1pfXsoCuOLtlBkurCaHzk0s2O2e6Vi9Kag
         4e7ymo1Svwr1ZwPK0R0ag1j39Nn4smNDVL8+EhTgyrmxEpfxFm5ej1n0Trhn57q/rdca
         G+njBm5AqNyaJFMIxBlmkClcZSpkjxzrwQXAji9MHF5wUklr0KY4viNIybR4bWnZd7uR
         85Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gS+MFvVGJnElc3kEyXoji8e/tqc+IyNX/lct/sGLscNrNbvSY
	xYEOKY/KgzGJf0cKGOuC8CQ=
X-Google-Smtp-Source: ABdhPJy2Dw08jGLSZ/Jhl2QjMdiTiZ7RrsEA2rPpO15P5fIbD+Nz9kH9z1liFSdm6RkDGCokI0AKmw==
X-Received: by 2002:a62:68c7:0:b029:305:324:17ae with SMTP id d190-20020a6268c70000b0290305032417aemr552025pfc.28.1624301834377;
        Mon, 21 Jun 2021 11:57:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a42:: with SMTP id lb2ls12069228pjb.1.gmail; Mon,
 21 Jun 2021 11:57:13 -0700 (PDT)
X-Received: by 2002:a17:90b:994:: with SMTP id bl20mr20475653pjb.233.1624301833651;
        Mon, 21 Jun 2021 11:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624301833; cv=none;
        d=google.com; s=arc-20160816;
        b=tBrlGSmiri6Ve4DyNSbKQwlKiN6kewgB1EvtJFzq1qzXJWykrWUHDsB5QUdn+FLa6M
         SYRM+fy3tb+r+xvBoCGoHtiKC8fUJthi0fQrekdgkQPQxbm41fn+/tZCNBf90+6Q6+nB
         eyIX/3BgQYQF0pC60qVyV05+ng2AsQpWxgj9Kt19Om0g8FUanOdXZqTR6PYZOJsLVJSm
         4X5de96dVWufO3Mp5zOfvhY1bj8RC/cleYXECIHPzHXgyviTE5zbFPLtUau6AijvkXZ8
         CiD6F+v/9/YdiGVG9yZ0o+tyOYXb1M1yIl50K1kHLVU3WQBSQ57UpBsvWg1Mf7GD1fKN
         nSwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/ygmZYU+MG2byTMVpaiprOTUIHyykhwgUiXgax26SdA=;
        b=GYFg6ZT8xOTELVg62jpxWmC0R5Wgfdm5zLNDf+jH5wp+La4z9KTXBmsPxfvO9ruoLN
         Qn3tAU0BY9zsK6D8Cl1QEWbQ/BlmgJ5OwufbCOJ7FKHiIjws0oRUvDFKU3leqhuUJ2s5
         RTpZFTFr6vn0nXos8alGe7j26xwtEe4HJpuJGkGf0KSihOfgjLzlty6ts2IjAtG5dilv
         S9JHZTNGaK5r0QUubZ6a6RqOS16GCvx/+Rp2/y8v1SuQJcARPkbp+CnwKoj+yWCdCe/J
         qDQzN85QbtJ+4xQwkI/JP0n8RUK0Rg31SuaYl9293SkL2JgkDBC19USJEak3yPOx8pg+
         mNiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BHt813KO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si7639pls.4.2021.06.21.11.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 328A660FD8;
	Mon, 21 Jun 2021 18:57:11 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Peng Fan <peng.fan@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	linux-imx@nxp.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] mailbox: imx: Avoid using val uninitialized in imx_mu_isr()
Date: Mon, 21 Jun 2021 11:56:45 -0700
Message-Id: <20210621185645.2373845-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BHt813KO;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

drivers/mailbox/imx-mailbox.c:284:2: warning: variable 'val' is used
uninitialized whenever switch default is taken
[-Wsometimes-uninitialized]
        default:
        ^~~~~~~
drivers/mailbox/imx-mailbox.c:288:7: note: uninitialized use occurs here
        if (!val)
             ^~~
drivers/mailbox/imx-mailbox.c:263:9: note: initialize the variable 'val'
to silence this warning
        u32 val, ctrl;
               ^
                = 0
1 warning generated.

Prior to commit 91c8c1fbe498 ("mailbox: imx: add xSR/xCR register
array"), val was always initialized in imx_mu_isr() but now, it is not
initialized in the default case. Return IRQ_NONE like the statement
below does and add a message that there is an unhandled type for this
switch statement so that it can be updated.

Fixes: 91c8c1fbe498 ("mailbox: imx: add xSR/xCR register array")
Link: https://github.com/ClangBuiltLinux/linux/issues/1404
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/mailbox/imx-mailbox.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index bc51bd3c1999..0ce75c6b36b6 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -282,7 +282,9 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 			(ctrl & IMX_MU_xCR_GIEn(priv->dcfg->type, cp->idx));
 		break;
 	default:
-		break;
+		dev_warn_ratelimited(priv->dev, "Unhandled channel type %d\n",
+				     cp->type);
+		return IRQ_NONE;
 	}
 
 	if (!val)

base-commit: 6393989e2a31914bdc50211ff350dade6c729ea7
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621185645.2373845-1-nathan%40kernel.org.
