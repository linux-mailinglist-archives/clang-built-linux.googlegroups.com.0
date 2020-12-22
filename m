Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI6CQX7QKGQEYFPMILI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FF72E0489
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 03:59:49 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id b123sf16243237ybh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 18:59:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608605988; cv=pass;
        d=google.com; s=arc-20160816;
        b=IeEx9oV+cTtF9GX4B52F4Xz+0b6XZ3Xl+GDMnDUEW+Fa6PeyUL+eBXK7Wrsg857AoC
         JGBqhIVQFmOlYZo1vCnzjvqnuGZ9SB6rugBTp8Mn4tX37VrFXLiJu26F9iV3Frpcs6Bi
         ebireQPS/KFkQCvqGVfL427jJhQ09CkSR711HbtXUz3cakl4zdGPh53pK+F2+W61aMZJ
         HHzLb09OWzVWJDLK3Vg+jqovaOmno+NIOVukpmPO0+cssdO1Sq5IMIhO5NbO5Cfeg2hd
         BENalf4J3srN4VFb/1BXpL93xZV/dKc1FgpDmU8m6TddJ6MvP0nBFUl56M1Mn1jGmcui
         dLdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=E+bvBGV40rN08OCf9N4RE6u6WDOsHJiUvVi6AwCa3a0=;
        b=ct3nAvugFeY7BG6IYbRBs0E4hn6G0wDMUDiV+GY47BVQkvwzMR3UkTCtJNAe5jwTZU
         OPrsc7kLR6ieMEqPgi5o2fi7BxkcZJDyfjFmKf9Jd/I5Hak2ipvjRDj0g2JbVSwnQInh
         KgqfCR0iCackcc7n2tyieXj0JhWGJ6E1T9V91pQ3UxYbtMCA4pQM/NicA19xEa6jogSF
         /CwyoTPSHFZyf8I0gw+hUjuw23yd0mCd7cOYmPvlzUFOVjAuVDj9xboMEBXPxIWxPT8M
         Z95iEBqDJRIikQD7oDuD5Y0Z/CPDtnOETfwqHCBM7aTHLkN35o/CCKsh4sKTnLJJ+QM9
         joZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8jLwdl3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+bvBGV40rN08OCf9N4RE6u6WDOsHJiUvVi6AwCa3a0=;
        b=ZLl3heZkQC4EhxOu5wvusxPrIYP+D+N9dLjON/Ym8aFXTL7I2BHWEY0njUPO+2XP+c
         AStHL1L/FrcQD+zPoU87pOvD5v9MSQXP/QTAjIKHsFXltZK529dn1rUcDjH4iApzvSSW
         h+RNGyqGtnYSE4b0SHtVBWnbhLR1Fco983kbdD5lgK+gX2L/CZDRp7XgcUPbylsxH/tV
         wVEg4ewWQIkUVRG69kfERVDveCP1QqenelhaJ5NHh+cog2KRPr0LTrJWEsAcJ4dlHvp8
         NctXXJtpblhtRPXqgAX447ON/LYE5ux31gFbAymLXWpFvac0wPDFb5xuNwmutPAiQRHF
         V3RA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E+bvBGV40rN08OCf9N4RE6u6WDOsHJiUvVi6AwCa3a0=;
        b=jErIq8WUSrMLdXiolBCGImz16WTN8kGTIgRy5Hmk/MgtiV+rRT+fju8OZ/Vcmad/mj
         eBCb3AazlcIGNc6Li9fZjxgC/anDCV3YAo5QsXVID98DIxseEgaXIB60xsvjaAm/Tdd0
         GJVKPcdSxWYnQtfgKZ7wG3HKr08tbZEhnWb9xV9nlwLtPIOlLS8g5CO7UZrRkSqzK+BP
         SvYGiorSLVFO9/23gHo1BZhv3R3pM8WUqwDAtw2Cg+xdab2DPUK++KAOdBoaJezbI7ye
         dsOmlrHJ4SHumGvUANnBbgOu6hBQr4EOiBo92cjxJexzSWvBJ8HLoF0/OacbHmGk+UXL
         585Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E+bvBGV40rN08OCf9N4RE6u6WDOsHJiUvVi6AwCa3a0=;
        b=iWV7mEIuLIcz2NwJrOMGXvcNYdvQokc9XIQZhNQZWjeBnp/wMOENAXwLPJ63xf0suw
         Qt847KKtKWKccNL2gYCIWTieuSBRn8wANV7JpxVvTkMnKwVTKXncE1ywrSbCDqRhI6//
         42nai57t1KEyicoAz56/1qshxSacWFAL3AfEUvqTzmhW2+m92YNEa6ZYABKRL/usyxwY
         E3oxk/Gawfz0Qo+ab9E8FOIYyS2xlVBooPHkVTg7WIpVWcDyOPG+LAE6hTMk7oQTFm/K
         oMDZE00SSEah5ErEl+y4ihNIdOEbIOhAiXEYplKxIKGB5YlPxDa+FDp2FyKvUvX6Zs5k
         dwkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nlDcDm1fXF+wnDojFHJSvbOdKY0YvD9lNEFmu9Palvndxcnby
	ZSvA2KRqCYMFThik+KSspMU=
X-Google-Smtp-Source: ABdhPJwvDTTj2USzU/N58zXRAVoeNDmQAlsnARfdsN7JiwsR69tSojy0ixUHhgZboqSQ43oprmXb5w==
X-Received: by 2002:a25:3701:: with SMTP id e1mr28354795yba.50.1608605988020;
        Mon, 21 Dec 2020 18:59:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77cc:: with SMTP id s195ls20389835ybc.2.gmail; Mon, 21
 Dec 2020 18:59:47 -0800 (PST)
X-Received: by 2002:a25:2485:: with SMTP id k127mr27093663ybk.315.1608605987623;
        Mon, 21 Dec 2020 18:59:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608605987; cv=none;
        d=google.com; s=arc-20160816;
        b=1Ih915rWHT7cK7yvsm8Ywj1ImVI20vZK0f/Zo8RT1Rd1kxVKZKUPZXSp1BpmgpgjHG
         1qkYrnJ4OL2/S2FlR97tPiEcxGWKFGzVGf+Mcq28vsUMr8BEFkp5XxcctEW8wBiIM/tt
         qTOWsSLNVNxXvm6SPue4m4xT8wHz6IPim8AxZFRr3hW/u88VPNEXs8plzRWLVjobZ3rD
         OW/MpENobs90IhFycPdjfBFDivKpGZGRmRXQEON8y7yX0eUv4HzVJXh8YxnGeG+aRkzr
         ZK0Q8/a2Yoxj90UsfKRkhg9sGVsOkxOzkC0n26/o8H3l114/rfSU+aopa4RRw4TOThrR
         /E9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=pVwzRkT9t+vCLbJimoRDlmlmCV0mO3Zs8Jqmvw/7+kg=;
        b=tujSnDYebLL5Ck4luLzBq3Ht3tZva8QMhVZfYiOb3UeVfpWpDcpVc+eE3WLrPnzSR7
         Kj5tf63Dxi2sEO/ZKCR7mmhDMCPjFBooznJlGyMS4HwIZ/x/4KG6scWJ2ZI3IP2ZIq80
         CnVYVKtgK4n5/OnHoZK7bAymAbNvLGzfFDyTQEPWAoqKi0dZzEE7hXUpcIa6t2rsvgMn
         llgZimbD2Qhxel2gfbsfwCqRcLdNTZLjDz/aVV82rZ98WMWFUYFcHOHKCA8KGTj25/fh
         kLw3kBWxBB7vX9KySWXlS2WylkU71DjuD/hVafNxXRPH5DrUyEd3GYreVIds3GLMUph7
         Ahxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8jLwdl3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id s187si2036554ybc.2.2020.12.21.18.59.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 18:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id f26so9174898qka.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 18:59:47 -0800 (PST)
X-Received: by 2002:a37:9f82:: with SMTP id i124mr20338981qke.264.1608605987162;
        Mon, 21 Dec 2020 18:59:47 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id x47sm12104745qtb.86.2020.12.21.18.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 18:59:46 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <npitre@baylibre.com>,
	linux-i3c@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused in i3c_hci_of_match
Date: Mon, 21 Dec 2020 19:59:31 -0700
Message-Id: <20201222025931.3043480-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V8jLwdl3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

 ../drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute
 declaration must precede definition [-Wignored-attributes]
 static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
                     ^
 ../include/linux/compiler_attributes.h:267:56: note: expanded from macro
 '__maybe_unused'
 #define __maybe_unused                  __attribute__((__unused__))
                                                        ^
 ../include/linux/mod_devicetable.h:262:8: note: previous definition is
 here
 struct of_device_id {
        ^
1 warning generated.

'struct of_device_id' should not be split, as it is a type. Move the
__maybe_unused attribute after the static and const qualifiers so that
there are no warnings about this variable, period.

Fixes: 95393f3e07ab ("i3c/master/mipi-i3c-hci: quiet maybe-unused variable warning")
Link: https://github.com/ClangBuiltLinux/linux/issues/1221
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/i3c/master/mipi-i3c-hci/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i3c/master/mipi-i3c-hci/core.c b/drivers/i3c/master/mipi-i3c-hci/core.c
index 500abd27fb22..1b73647cc3b1 100644
--- a/drivers/i3c/master/mipi-i3c-hci/core.c
+++ b/drivers/i3c/master/mipi-i3c-hci/core.c
@@ -777,7 +777,7 @@ static int i3c_hci_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
+static const __maybe_unused struct of_device_id i3c_hci_of_match[] = {
 	{ .compatible = "mipi-i3c-hci", },
 	{},
 };

base-commit: 95393f3e07ab53855b91881692a4a5b52dcdc03c
-- 
2.30.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201222025931.3043480-1-natechancellor%40gmail.com.
