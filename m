Return-Path: <clang-built-linux+bncBC6JD5V23ENBB4EEUD5AKGQEEW7LDUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B025254D61
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:58:57 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id e6sf3542035pfl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554736; cv=pass;
        d=google.com; s=arc-20160816;
        b=U/L9htxQN5Ye9Kh3kMPTO2Nm1pyC59/BCT0VVde51SBREMAcGL/vOuILq605UYKP1D
         6OXQWuUTJsNphpFxhG02IMDVTOvM8VS9ClbnbN8CpsJyHgiZltoq18lDiZFDnGtPMtRh
         pHsv2+I8zMPGRdSduOzbSiMTBYZpb6OE4qzjohsAcDdG/iLhClQgRG2qnrZ4kZ7qTj0D
         cx3UCF/ouB4sK0bIz0fZj/dxl8S8WpRpXnEQ7fTlVr5cRzHhmeHgZBKVlURjOq+spx5B
         MQ4mcgozTSplyLPRfWLnrsp1uDQp+MyU4F03dyeZyXLYJnu/11PHGcGePUi0yQghEQa8
         A6pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=NLOcBxu9Ugl7VIxtZe/Buzpn6dhmt5yvotOk03KsXmA=;
        b=UtkMTdiXovGo2OavPlMdviPxJx6Dlbhopn9rZd/3YBfeESdDlZUqENnBEKwr690MfY
         614tVq5EvL/jD7ztEWqGpJOmRzMjnDZXYYVe3gJAvNfFc2KyZrwyb1rHPMugWBTygAMy
         /NC0HOhSp3iXD9S6415iphIOq0fu5G9CCbiEMM7lSVb2l1PIGMxjdtGUG8vccR3NaGxo
         6Coqp9D/B7NY/JogL14FymLpFFK+C7E507oqRCSYK82BSxb3q2SNhYYek08ttuSOQ59G
         zqMpfz5m2TIjLi7T/vANfRqxWxxUJKkPDZ2zZeyb0+yJRlaET4LpkOkjAkKpO1S2tuJD
         zWfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Ut2/W2sV";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLOcBxu9Ugl7VIxtZe/Buzpn6dhmt5yvotOk03KsXmA=;
        b=L0e4ths23+MwVK8N56ArpLqi/bVCPRA1b19aBNn8kUpg5PeDgbKqTF024Vr01jdgrS
         TXPxs1Mt2KYW8HQNAzLKJAf5LMZl+/rG/OxwpxZpCVFdW5a4cXC3Xh6+hfgU1oLkkk20
         +C0KnUDSZ48GV5o2zAA6nw454mk0L47+p2Q7zGPTYqlkLUi+E9NnzcyLd1pJWJdawjCc
         Sl0LIpA0JVFZTsIZmGCx2bIcES/3FHuFWe74jO9S4xsZIjq8V9lqeqJTDwd6s9MtpCQh
         2ypv5GQueXGjfqmKLTKCI1kEM0qC+zquhe74l2svdKRypqqnNN/w/iC7TjGDcZhpGyQ1
         lw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NLOcBxu9Ugl7VIxtZe/Buzpn6dhmt5yvotOk03KsXmA=;
        b=MSah4DWSE/7+dCxgF2pp39QA7twnKxWVsbh8Cm1VWw06GilVKt0mf0iSKyLOKcbPEp
         24NYQ2DbM6wdmjhp+Ri6vSxRcnc+RnJ29SsTfGf5i0SNB8lbtKh4n1axp81zVi2cEYtH
         hchh+Khfsckh1RCVC3zpm19CiIiHqaQTrnhT73HqwMy1KoMerDMnIYrcnM3D9Y9s/I8s
         dsyNbf8zEVgmno/RDnR94+V8uF4JOBqdA8Nc0Hka/3SdrWXPuNv14bD7y7zf0lIqR47o
         i73HTJ/gl6gMk4RhFmkGA7D2D8iY+El9E1ziz4O5R9dlXy+/yiU3/a0u53M3Tjzn/Ikb
         m25Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533abgoZ6yXpoLzZAbd/+kU6igrw5hydg4iOYFViWFkQxwfBJ/Ar
	jQ3RJf453MOOb3l66LYz5MY=
X-Google-Smtp-Source: ABdhPJwbt5Cja/M+uH0anPRZlWTFQE51YU7sjlV85Bp1I8D9HJLSfKUUeU0eDX7uiKfidfub7uoYuQ==
X-Received: by 2002:a17:902:6b45:: with SMTP id g5mr17526668plt.163.1598554736127;
        Thu, 27 Aug 2020 11:58:56 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls1344470pjb.2.gmail; Thu,
 27 Aug 2020 11:58:55 -0700 (PDT)
X-Received: by 2002:a17:90a:fa0b:: with SMTP id cm11mr229297pjb.53.1598554735689;
        Thu, 27 Aug 2020 11:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554735; cv=none;
        d=google.com; s=arc-20160816;
        b=o/mU1ndsUOFQkxjn6kyV5uFqloRCl3tEChgnkPKOr5vpaXAhJlngA0G6eIwZZWTgtk
         RDVbuFLZkNAj+pIRlPGNAcodWxEYwWaiwhqpLHRUb/cWt3FisJkeevU42VVbuh+/HgKN
         eB9Q74PtEJYS13LUbNVnPggpaeoK3GHs1tZK1G4N3UWp8RdKw7dngGLhXl5Vm1xzTHhT
         lpCrauSk/Seo84qjV34T5ZULK3b6guhn8xsLRmUlB1U/179bsWZ/WVjPCshbfRequlYc
         Fm7adCvcUf7+tBVQcT1+vP+vbsaEQzea4qO13/UYq+70QhL5P/kBQCPbz5KxlX4pIIZl
         eznQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZlZ24TkmyYuKfymz/tD8uk88E2Mg2MRoVe2NJUMJP2w=;
        b=FYMP18d8NXcwuecLsuaJCPYNHbHUNMn1DN3J66lazIO2slxabNx82GQSAqbXxCs8mh
         K61njIuKDYU+MU64AtiGqk67LEesMFBK5WrU7lq7ZcunHcGK/mbF9GfAWfTql/CoTMyw
         0aZrNZb2M7ys2FxEnt8lrO9JL85jP1ojIXFSrzYrPt8u45rCQlhwAl5wUQGSGcKEy+Rd
         1szKQsi46K1cPEQm4P6Geh097dEWqLCp5ZKPjBVx0wC/lMNTEXwX46IcVnm8qT0R/Lcb
         S82D0AUm5CQjRpY8mg2hvROfzwsnYDfQ1ObkZ+ecvwQpb24+JyOmJuI2QqkWvfkNqXp2
         8U2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Ut2/W2sV";
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bj6si170285plb.4.2020.08.27.11.58.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 98CE922BEA;
	Thu, 27 Aug 2020 18:58:52 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Bastien Nocera <hadess@hadess.net>,
	Sangwon Jee <jeesw@melfas.com>,
	Eugen Hristev <eugen.hristev@microchip.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 04/27] Input: pwm-vibra - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:06 +0200
Message-Id: <20200827185829.30096-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Ut2/W2sV";       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Common pattern of handling deferred probe can be simplified with
dev_err_probe().  Less code and also it prints the error value.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>

---

Changes since v1:
1. Remove unneeded PTR_ERR_OR_ZERO, as pointed by Andy.
---
 drivers/input/misc/pwm-vibra.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/input/misc/pwm-vibra.c b/drivers/input/misc/pwm-vibra.c
index 81e777a04b88..45c4f6a02177 100644
--- a/drivers/input/misc/pwm-vibra.c
+++ b/drivers/input/misc/pwm-vibra.c
@@ -134,22 +134,14 @@ static int pwm_vibrator_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	vibrator->vcc = devm_regulator_get(&pdev->dev, "vcc");
-	err = PTR_ERR_OR_ZERO(vibrator->vcc);
-	if (err) {
-		if (err != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Failed to request regulator: %d",
-				err);
-		return err;
-	}
+	if (IS_ERR(vibrator->vcc))
+		return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->vcc),
+				     "Failed to request regulator\n");
 
 	vibrator->pwm = devm_pwm_get(&pdev->dev, "enable");
-	err = PTR_ERR_OR_ZERO(vibrator->pwm);
-	if (err) {
-		if (err != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Failed to request main pwm: %d",
-				err);
-		return err;
-	}
+	if (IS_ERR(vibrator->pwm))
+		return dev_err_probe(&pdev->dev, PTR_ERR(vibrator->pwm),
+				     "Failed to request main pwm\n");
 
 	INIT_WORK(&vibrator->play_work, pwm_vibrator_play_work);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-5-krzk%40kernel.org.
