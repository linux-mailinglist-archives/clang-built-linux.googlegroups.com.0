Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7OCQLYQKGQEIFLKVKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 021A213EAD1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:46:39 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id m61sf2571633pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:46:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196797; cv=pass;
        d=google.com; s=arc-20160816;
        b=STxMvBPgiwWOiEVmUNoaI2sEnsDm8to/Zf1AWfNE7HNPcXVZIbcmfnclWu+6Rd4A7l
         KQvucQMe3dhkYUg2GfD7Bg0UpA4CLv4Hr9CjhZxmjuPSwE269qxyGaTIKH05+mVbSkCg
         EP8eHIwB6kQzxAMT14HJXxVhpjEVhl3S7/Q1ZRfUSoZ/VNPKqWmwFhPHKCntN+ar/Se9
         g65tR96FUyn2Om6xoIhoZ3l4JSlvr16X4FBSxcovbMsZQOtobDXqi07KtgYlfmjghU1o
         EwSwt6MY3Xny1ru0fbDgHiXSrE1wkZIWKK/IXHCaADoDqn2ymuVNBd2lstMXTACyfdyI
         L3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PgsmqeiBWShu8QJw8Jq0gl+EfP1jbQ0H9Iic+9lns64=;
        b=CZcYLlJ+xD0XlTVroIvjbQJaHQdhRrvTerQlbt1duq5m6eyn6na+24WmW+jTGYg73i
         zj/q5BJmwU/1/BqQiI8BOOccIFYO39wjvUt57GWyfJLoirMAxSkcgSTfR56N+ij/+IS4
         yzV8gtoO+lro4qEIzpKUBwBNWX4nC64pAYwQ2VnuCBbo4RjnBR0kczVX94KwNOsYmd/t
         NeJspJh2zo4lOmb96fWf/XlKiatsrwkIq2JStmC/ZCNTEWSvUF4culNaMZlD8PXivtdx
         +O6xbWY6w3xxp0OTmFES0qiCc/dtvT3M6OaFXXaE8w+Zj+7XWbgA6scrm/vWODKb7IPe
         EYng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w2GBgU+s;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgsmqeiBWShu8QJw8Jq0gl+EfP1jbQ0H9Iic+9lns64=;
        b=Fgmo6Dk7izq/mvD03Ol4QzxE1PwGrL0WiPQunFWbxRPenxXZVGz/YIrRIhRHgQtQSV
         GQm2zZyVaYK+E+8ElXjja+OM3aNxqnw7N8e8bU5KcZw9y/JkOPVaLYYu2evhdSInTAXP
         NdBqsiVOba9XQZtbsrpuw+Ld3zMHKKLB9Rp+zHDk7lDQj/Ec5OIaKaxUI/YzJAGlyvri
         NEPmY9x8WXl9zI4hUsxTDFyk979gtDEvilXgSGcCYyrhFhcPNzudPUReHrrbLMJ3JKwq
         Ctp/Mu1EZXIkic/JEitT0fZ59KY+w0CogtG8gLlVl+yPUONr7Mqt/4qAC7zDH0v1OKwD
         37Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PgsmqeiBWShu8QJw8Jq0gl+EfP1jbQ0H9Iic+9lns64=;
        b=Hhze790WhbU3s+2t/zV5NJT9EDrXAlAKI8BxDytoPpil6zTkmcAmAIunuDap3IPCeh
         W8iWPov1a0u0aT38eStZihDgR4/j24IkRgMX0aeQEiMAwWawjvj1YJOdMdampvT5uOrg
         roYq7drdV157XTE/zTO9Z3HdEqrwwhQkhht8mZEfAuhp37f7VeQQHbvWJbJtzwHiI2QJ
         7L4urS2UYxmL0mrq4HhGu1RDCLGGQHlqYQET8r558vTABglwNZWIGZ3Dem+XSjEcUw9k
         YS2vEcm5ecGvpHpCmbRYpqtVKbljqjNKvjWVwFmK4rM91Z0jOAESkrQiteQLBD11FzhU
         i4Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdkrPC9/Sq5F6kcJ7VViKLimCu55bER0OACvVZV+UhdjTEAFKq
	4tuG2umP7856U7Q8P7qJJI8=
X-Google-Smtp-Source: APXvYqwVB+Gcw9fOwhvSR1wt6iYRXweAzx6l0D08kdc0kkwdETIq7gaIAZSqKCKy6qIcmmGfOk0jyw==
X-Received: by 2002:a17:90a:17e3:: with SMTP id q90mr226910pja.139.1579196797249;
        Thu, 16 Jan 2020 09:46:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:cd83:: with SMTP id o125ls6821640pfg.5.gmail; Thu, 16
 Jan 2020 09:46:36 -0800 (PST)
X-Received: by 2002:aa7:9111:: with SMTP id 17mr39558450pfh.163.1579196796927;
        Thu, 16 Jan 2020 09:46:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196796; cv=none;
        d=google.com; s=arc-20160816;
        b=LEvrmgL+csQyE7b9KYB1Guj8mS6JjOElmxZdksQCZSzB1uxZSfytPp6h9khg00xWEi
         8EJ6zev2FCYH3bV/CZRzV0lLIqLTXz/mLZgVQFCa/6A016UqiciF+7ekdN0+3N4d9tP0
         Ovnih7/0nKBdkpLKXmGQKddPRQdsUT0tJeBUvyYr5gbZxCf1lRidvLmuMkWsZ1O7Ykxt
         aKnoEL/OFa1KbY42wdDk4oET83iHo2bOkHAplfoOpI7hxJ6jV07vhyJoSMPqN0GUYG1r
         1B1egJO2g9Ujr0EWhdVLrhaxIyTn2WkbKUWAupzF/ku5LM2i5BFYXQtWvkZsnFRFWZBv
         /UKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p5aoqXTL2Q6zD/D0zdh5L/FnKVl5iel6lKNo4iSgshc=;
        b=DBn/W6Gw5K0QGh0MamQDknZnoqctwKvZDittiHFOjZzzZif8m/NXk9muEjoMasUko4
         5zLt9p+CA+NVxAD6yEL0yONak+KrqPNIrHbo5p1RhFHPONDWnWuhGybqMjh2iNeFMSU3
         6mZA1V5dlGqp9CFEYkpbVXo+f3Xyg6rD7KZ7yzNxt0HJLhjCsIXQqOQyVeiaIa5HBIzK
         n3cW/8wteFtr3cBZA6pZ2syRHSPEytVAN5fkbfosfoGEe0FNHy1R3L3CX5DFyExNaa9s
         0UnWk5pQsUb5zJ/pjUbrbtkIa7FvjBcPTZ8dFU6026p8cgTrlXMnWc+U4a9VkhwTU8yh
         aMuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w2GBgU+s;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si536734plp.0.2020.01.16.09.46.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:46:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B43B9246EE;
	Thu, 16 Jan 2020 17:46:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 157/174] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Thu, 16 Jan 2020 12:42:34 -0500
Message-Id: <20200116174251.24326-157-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116174251.24326-1-sashal@kernel.org>
References: <20200116174251.24326-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w2GBgU+s;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 091c6e9c083f7ebaff00b37ad13562d51464d175 ]

When building with Clang + -Wtautological-pointer-compare:

drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
of address of 'rtlpriv->regd' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (wiphy == NULL || &rtlpriv->regd == NULL)
                              ~~~~~~~~~^~~~    ~~~~
1 warning generated.

The address of an array member is never NULL unless it is the first
struct member so remove the unnecessary check. This was addressed in
the staging version of the driver in commit f986978b32b3 ("Staging:
rtlwifi: remove unnecessary NULL check").

While we are here, fix the following checkpatch warning:

CHECK: Comparison to NULL could be written "!wiphy"
35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
+       if (wiphy == NULL)

Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
Link:https://github.com/ClangBuiltLinux/linux/issues/750
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Ping-Ke Shih <pkshih@realtek.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/realtek/rtlwifi/regd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/regd.c b/drivers/net/wireless/realtek/rtlwifi/regd.c
index f67e7e5b13e1..005bd7abc247 100644
--- a/drivers/net/wireless/realtek/rtlwifi/regd.c
+++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
@@ -427,7 +427,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
 	struct wiphy *wiphy = hw->wiphy;
 	struct country_code_to_enum_rd *country = NULL;
 
-	if (wiphy == NULL || &rtlpriv->regd == NULL)
+	if (!wiphy)
 		return -EINVAL;
 
 	/* init country_code from efuse channel plan */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174251.24326-157-sashal%40kernel.org.
