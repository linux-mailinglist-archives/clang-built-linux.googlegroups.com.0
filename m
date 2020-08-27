Return-Path: <clang-built-linux+bncBC6JD5V23ENBBAEFUD5AKGQEYR3MZUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA22254D70
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 20:59:14 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id o9sf4839538pjg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 11:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598554753; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLXOLJVgNPrBcB/790dLjjAAKgFrk5Z6CvxzTGXX82DaHG9zyP/1VACf0J4WxzRukr
         gbqhVeWonXpPGNwkYCuFTxtvKSiwX7a19Q+b/unGLfcQZBen1I/l77haQ4ifq9RuA6Xd
         ERq9j6Ak9D+nyR+Zq2tpihqFuPywk/eZH7fF86hld314vlRgNosReE995LNF6PlThx+z
         SuWRl8Sh6vdHrihHKZ7rzaoODFZ5Pi9SWM61pz2po63Yv61Xpbepx7pofypzlbQX88+q
         ipoIMbaEu9Th5kw1a2zxYqNeWKJxa2SgBYKSe4uociTYhsE7wQgy43ISbseDj0D3pAoQ
         7b2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=jLspIQHv+YoqFY70gryWzUeifYTyvZ4ELd8s1S8hAe8=;
        b=PSby7lI1oH9jad5+b6IRNduJyAUcRoOCQMf3fAoApyRF6me6Vf9QCXqH8hDcoxbLUd
         hnKcJDnl9arKpXHKckEuDrqKDBVbQbD9ku2e1IjOZTI7eTd1UCV/6Rmske/8vRhcDEw+
         5VQjga7LsGq8EzfjtuoLIJPbFwecfesJg+Dz5DwYl8PmQAe211AsNxmMUmRULSi7K8Ui
         jh/XhAL4UVjYtz9KhnJMiWo/pyraSMvdzEMCevJ0Y8AVxMxvuEpDAPxgVnSbsIHc8LJa
         lODxDWsxyLBHToh9tKtLPNcuyaB8N/8DKs5+CdKiinuDuQ7/DDWfIzktDcA6BoANyYor
         gc0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i67ZNRM2;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jLspIQHv+YoqFY70gryWzUeifYTyvZ4ELd8s1S8hAe8=;
        b=aUrpzhIzol8tPq7JwjREuHqz5Z+IkD4jr5dOzBQw+e3v6xYPL9jT5LpZH5pEgHygL/
         i8h6JR2/D3AvsDiLU66h0auIhRiT38p8Hd8M8SsaODwBODhDT+6R7hqm0uRxdJnS2npB
         1VifWbWAprKHEod6OnXBVW0ez/CxqNNsWYwn5VCV3bDq7/n8zhbt2knCFf0kk9A+Wkfs
         XF1m5EfExCcgNJ9D8lmFALvFKSO43zjPMheQbZ09urskezhjK1vZZ5gYGVB9ixci4QW8
         O+Txmlg0yPWW8OHpGtgMerox50QZNHZPDUMFahh5T3coKLT9MV78bzMw+pppjmshtiDj
         +onQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jLspIQHv+YoqFY70gryWzUeifYTyvZ4ELd8s1S8hAe8=;
        b=iwPX9QGYcktuUaPBFvMdl82L3b4mPrJnOPp9kgn6yVdZTLXbU4xEjXglaFnr9ADNUz
         6yttNE1fEGOnAjK30sXZmewXXBq0qY6VOXHZxP/qsbLCtJl3Tew8CbNafdry2uxVE6cS
         TPsPPO3lHo/+of3UC1EL2Y4mjdqBhn0GbNnbWU/JRDEiD+Xn45v7pMvU6o6ew50TfW5j
         T8pnUpt5g8Ap7ehgqAnUkbZHVgizUbojxc8RN+cBfsY3PXmoGLgsF/sHZfX0cATXTqhO
         eIcZbWrTIx2ur2apa/kNf+JSOlIj6E5Osad/aQhY/wNQTFA4b/2mnaOUyJa09sfBZXqH
         O4og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jn3YVXH95IZXe5eAxtT10B64f2x5katWd41f1Q7NhAsoUa8gD
	F22GC/hk8wINPrq8jyvKY98=
X-Google-Smtp-Source: ABdhPJzrIZ8CcEG0aP7wauBqg2WDBMInQKrta+50gVWd95ejJhfpYvA9qV30HTvLOWE8fZVsRYFLlg==
X-Received: by 2002:a63:5810:: with SMTP id m16mr15626206pgb.193.1598554753013;
        Thu, 27 Aug 2020 11:59:13 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15d0:: with SMTP id 199ls1257819pfv.1.gmail; Thu, 27 Aug
 2020 11:59:12 -0700 (PDT)
X-Received: by 2002:a63:841:: with SMTP id 62mr16170644pgi.429.1598554752505;
        Thu, 27 Aug 2020 11:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598554752; cv=none;
        d=google.com; s=arc-20160816;
        b=z2uYiwHPWGKU/ThRvX+PNyP6M7gAUCRnArcB+N51R2wUCLkQo5RhKvT1hB6Mj7q2Eq
         NyrAjkCYyOTkZ/rzAWpq0nc9963wu61MJsdqV1rEZ5CoE43WpffQnPHGz2ZqZ/f6va2d
         Rncw6zaduZ/vRa3lGeIbEE2mG41KPT6MZJvKs1dCL9pB++itnvEnXcYy+oHFNifSNWl2
         Hs1gJUr6XQnD9/0xrWMp23lAbIfQyYPk5XpjEeYgr+vM9XizU4N2ADNFyA/oE6Kq/Qea
         nbuuRQJOcHqIXy6sPVDwtQFu9/PuOsrppbVvLBKl46O2UEDZ/05tLDe1P7AZ9FQ8hzzv
         BWOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=3l0Pg9uAJrm0S57qbXnLkw6z84ot+b/zrVlxlN+UA1A=;
        b=LMkkbgPLegZ+DcltejB3OOIMHyep1KZNRX8bWH6a94rWfumjCGq03fOCsButE5lN01
         mKCpAEGC7saDYJyGa/58PTejC7f7FDSnOK85Bx9O2PGoONF5lOn9gTnZY3qBJEFa7niL
         d0Zr/Lsebk+ykGudVlb/eXmwnUbhRZtPbHFJJwFbHDdzxYH4a0FS8tTI2titMrUJW0nD
         X4YVkYgx2uo4xgmp4Z/QfVr/IO/uAFsgNo5+Hx9sjZ2M/t8lC2iIY+hGiDxguySOHQqb
         fDDviWTDdZKpGTM6v4+F/sQnIrIUa4MEyjZOg4B13X2lZMMZjIxhRQ38k7lqaE53BplG
         vqtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i67ZNRM2;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l26si258462pfe.2.2020.08.27.11.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 11:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6CBBD22BEA;
	Thu, 27 Aug 2020 18:59:09 +0000 (UTC)
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
Subject: [PATCH v3 09/27] Input: chipone_icn8318 - Simplify with dev_err_probe()
Date: Thu, 27 Aug 2020 20:58:11 +0200
Message-Id: <20200827185829.30096-10-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200827185829.30096-1-krzk@kernel.org>
References: <20200827185829.30096-1-krzk@kernel.org>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=i67ZNRM2;       spf=pass
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
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---
 drivers/input/touchscreen/chipone_icn8318.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/input/touchscreen/chipone_icn8318.c b/drivers/input/touchscreen/chipone_icn8318.c
index d91d2fd78649..5bee007184c4 100644
--- a/drivers/input/touchscreen/chipone_icn8318.c
+++ b/drivers/input/touchscreen/chipone_icn8318.c
@@ -194,12 +194,8 @@ static int icn8318_probe(struct i2c_client *client,
 		return -ENOMEM;
 
 	data->wake_gpio = devm_gpiod_get(dev, "wake", GPIOD_OUT_LOW);
-	if (IS_ERR(data->wake_gpio)) {
-		error = PTR_ERR(data->wake_gpio);
-		if (error != -EPROBE_DEFER)
-			dev_err(dev, "Error getting wake gpio: %d\n", error);
-		return error;
-	}
+	if (IS_ERR(data->wake_gpio))
+		return dev_err_probe(dev, PTR_ERR(data->wake_gpio), "Error getting wake gpio\n");
 
 	input = devm_input_allocate_device(dev);
 	if (!input)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200827185829.30096-10-krzk%40kernel.org.
