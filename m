Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBIOD6KGQMGQEMW4VRQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 563EA478E0B
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:38 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id j71-20020a1c234a000000b00342f418ae7csf3046527wmj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752098; cv=pass;
        d=google.com; s=arc-20160816;
        b=zWw7yE206b/C3qZjsTuOQ6ZQTnJYK25ddEZAPwmsg6DCy3vuQXrC9Rrbl8EamhQCAl
         CKMCS7t3fLjH51pj1Fbxl2DvYU8OOevXylreMaFRutIJQk7CmbCFtMT+lvTEAUT4p6gj
         bIktAjVy7prvxmcysgYYUYCiJomyBqO+PXhBZeQXDWHttc+yvAXBUe6fzqXGgG6Azt6J
         GrQRViB1jK9B+y/y1s5HHBaQjCEmWv9MlHj+AC+idkvVSYNWjKGnVEfq9Fl+4HPHs4SV
         ScWKgw0+Y9ys869qNj8DWZATBZ6LY0sOyXa2fbcXmWlIsieIfkvyC6ygryGOrUnbroeo
         51pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qzAEpkF3lGWwMks/mFA3vXxG322pNqMboKECFa5k0rU=;
        b=WGMTk05Lvoq55f82Ba1qGvD5Fa8BdVyPXTW9KF+5faFsrJafAzMiXa59fue33/vHC+
         I4ScY57pWxNXROKQlAyMILjd/GWntVwjpyLoJSEfycpnIumg23tgCyBVhUodJehSB4m3
         QNdHPZ0oczp41Tn+VGbljUc3hrS5zpNSxAUm07rGlqnUuOzjbEW498fwA7tiBxJPopg0
         EM9ATFIIy5g3RPzQIjqP63YF+jaljx0NIVtpLl6VAPBf+TZdDU08A335QGcDZOH4oR3i
         Wquh/1XJHowWp6znDeYe4Asu45WQAeDJ5d5P9EOyEGmaEeZ042W5vy3EuqtnlOImD2KO
         1UEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="RXAJP/Lj";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzAEpkF3lGWwMks/mFA3vXxG322pNqMboKECFa5k0rU=;
        b=I9yyiOp5n8WonlghtPtR6iu2NBs4U/4S+dUt4ugGrpjfrdVUDzp+tl4jSFOR2utrVf
         AcMWNUaI+NnhqXqzY0STSCaFwny27e2tL2Xb95p6JvurcYmd0GAkivXfNfr4JGekDkk+
         or6RiiIwihVcY11/tv6J8h0BYz1J6y2mQjBPvh0six/HCja+SYyeoz8FrhAXUv3ghuyz
         2tOclDMu5xV4osI2zne0sUYt6D5B16KRnxCJsrKPHasU3d6z2C7Fh/E1Njv5a02h3CwC
         Rf6D/LnVVCqNlB0E2S/2stQxW49i4Olz+ixeTBmxck1BEtUnyuWWETmhgI7fDkTYNQbT
         DPEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzAEpkF3lGWwMks/mFA3vXxG322pNqMboKECFa5k0rU=;
        b=oErSEqDztGU90AzSvDcQWqNaNVfAEIqhQJ8jO3KKF0JS7M5taLu0suPgUxX37lpxtf
         g6nBlSToo7Rw5jiGZIsXdrDCtfv5vuL9wBQ5+m1lub7qcOAjTVsPuIsOnfAXcuKyIbCA
         zYEYTvYDtq1zLzCCRr0jUPT2P3BYXR3zodtEqJqd17/tSNcjWr9xo5bdxOjKlaoZTjzl
         IkGh/pPYJ4UwH/nAS9yHVtvp1qnTtzoFz+P0kc1tjiEfNU2VZzDL7neR4TjYufYv75pQ
         cLzkBaqe5zgkdA0veT6t8XYn4DHSatiF3uyeIwmc1U/VVEPlOEIFjvAsvi93PSXxN2Am
         GvNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327hqO9h2xLb8efPVjzxUUKpLeMcZJsGqJOOWjMizaERvDxXpr2
	YJzaRzHblYJm6PHZKqhxe7g=
X-Google-Smtp-Source: ABdhPJzuLxV4R6V4svVQXURJH+Xy2Q2mI662ou9JFJYcQCBFi1SlfWDilxsYpqZzJWqejFXxWPoGCQ==
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr2856727wrp.683.1639752098094;
        Fri, 17 Dec 2021 06:41:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:210c:: with SMTP id u12ls205966wml.2.canary-gmail;
 Fri, 17 Dec 2021 06:41:37 -0800 (PST)
X-Received: by 2002:a05:600c:2f01:: with SMTP id r1mr3025854wmn.153.1639752097153;
        Fri, 17 Dec 2021 06:41:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752097; cv=none;
        d=google.com; s=arc-20160816;
        b=oyeIBtr8iIlctESCvSlUiX+WS9h3n8fI73ggV+dm/8sAEsFzo11FLsof2Brc0aOO82
         TQ08bjIFqjDpx9EQx7riDkgrlWFXxFl8kYvG8MwGgFIuBuQ5G4CK8TDWh8dMdZ9BXu1B
         bjazLGXt+uoRRW+3KaTijiitozWAww8Dd5L1Xb0TMGpKBR/YGxD4QfZxb/2OtCSYkTtX
         KxrYUUrazL6Y2t6ga7IDkNVE1h7dvBGU0ts3Rw5x38xzmrl6Yrd5oYw6tt4kCvAe0TQA
         sasuBoEWNvDfr2vOfX61e5f4xtjFgnA8fr9XJlJnuE0Ak3DxSQwh8EskDf57nQylVAm8
         AEkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WJLLtim2zy2Cp+CHKaq9b1jzJ0TEP3xfBC/wmHNF3bg=;
        b=F6V5r1HuTZupWoNIAMUqxDJfCOEUYqKGJYMr48DOrc5UCOXlgiD3qfFriKtuAHbMBO
         o43To0MN16RCVFt+IM3NldoP7qoF0bRjM6h3cPKmtNrsMI0GBMk7tX2XlYXT1hvxB7TT
         GoI63Rhmkt08e9RQuKpNbfX7DTCW0hDQL+0Ih2+fSMi5qdmzTp9hxqfQzDCvvocc0Xuo
         fGrRr2MIiPvDbuNPG1Xv/1ZQlCNuWnlDmfZmNeABOiTFyY2KmQ0VETfoY84L2Rj9VojP
         WbnuKzYI3MjpdO4QJhXFf4Q7re4n4hEVvDMvSSnDl70aW+kMD6oCTCCS/vowS4vXD4OA
         GltA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="RXAJP/Lj";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id c14si208002wmq.1.2021.12.17.06.41.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:37 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id g14so8584359edb.8
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:37 -0800 (PST)
X-Received: by 2002:aa7:dad0:: with SMTP id x16mr3251578eds.404.1639752096108;
        Fri, 17 Dec 2021 06:41:36 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id cs12sm2967751ejc.15.2021.12.17.06.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:35 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.19 6/6] Input: touchscreen - avoid bitwise vs logical OR warning
Date: Fri, 17 Dec 2021 15:41:19 +0100
Message-Id: <20211217144119.2538175-7-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217144119.2538175-1-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="RXAJP/Lj";       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

From: Nathan Chancellor <nathan@kernel.org>

commit a02dcde595f7cbd240ccd64de96034ad91cffc40 upstream.

A new warning in clang points out a few places in this driver where a
bitwise OR is being used with boolean types:

drivers/input/touchscreen.c:81:17: warning: use of bitwise '|' with boolean operands [-Wbitwise-instead-of-logical]
        data_present = touchscreen_get_prop_u32(dev, "touchscreen-min-x",
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This use of a bitwise OR is intentional, as bitwise operations do not
short circuit, which allows all the calls to touchscreen_get_prop_u32()
to happen so that the last parameter is initialized while coalescing the
results of the calls to make a decision after they are all evaluated.

To make this clearer to the compiler, use the '|=' operator to assign
the result of each touchscreen_get_prop_u32() call to data_present,
which keeps the meaning of the code the same but makes it obvious that
every one of these calls is expected to happen.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/r/20211014205757.3474635-1-nathan@kernel.org
Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/input/touchscreen/of_touchscreen.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/input/touchscreen/of_touchscreen.c b/drivers/input/touchscreen/of_touchscreen.c
index 9642f103b726..b9baad7d34a7 100644
--- a/drivers/input/touchscreen/of_touchscreen.c
+++ b/drivers/input/touchscreen/of_touchscreen.c
@@ -80,8 +80,8 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
 	data_present = touchscreen_get_prop_u32(dev, "touchscreen-size-x",
 						input_abs_get_max(input,
 								  axis) + 1,
-						&maximum) |
-		       touchscreen_get_prop_u32(dev, "touchscreen-fuzz-x",
+						&maximum);
+	data_present |= touchscreen_get_prop_u32(dev, "touchscreen-fuzz-x",
 						input_abs_get_fuzz(input, axis),
 						&fuzz);
 	if (data_present)
@@ -91,8 +91,8 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
 	data_present = touchscreen_get_prop_u32(dev, "touchscreen-size-y",
 						input_abs_get_max(input,
 								  axis) + 1,
-						&maximum) |
-		       touchscreen_get_prop_u32(dev, "touchscreen-fuzz-y",
+						&maximum);
+	data_present |= touchscreen_get_prop_u32(dev, "touchscreen-fuzz-y",
 						input_abs_get_fuzz(input, axis),
 						&fuzz);
 	if (data_present)
@@ -102,11 +102,11 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
 	data_present = touchscreen_get_prop_u32(dev,
 						"touchscreen-max-pressure",
 						input_abs_get_max(input, axis),
-						&maximum) |
-		       touchscreen_get_prop_u32(dev,
-						"touchscreen-fuzz-pressure",
-						input_abs_get_fuzz(input, axis),
-						&fuzz);
+						&maximum);
+	data_present |= touchscreen_get_prop_u32(dev,
+						 "touchscreen-fuzz-pressure",
+						 input_abs_get_fuzz(input, axis),
+						 &fuzz);
 	if (data_present)
 		touchscreen_set_params(input, axis, maximum, fuzz);
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-7-anders.roxell%40linaro.org.
