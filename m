Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBO7MQGHAMGQEZA3U7GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFCD47A985
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:32 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id z23-20020a0565120c1700b004258a35caf2sf2776591lfu.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003131; cv=pass;
        d=google.com; s=arc-20160816;
        b=wTmPgC22lS1PyFyDyq1SXO7RrmIilplZDB3PYBfvnxd0hZOCMqkKj6uatIj2VtdnSc
         YwKw/MjQnkjw7JRR0tRlHiR0WQw5m3MfSV7g6xrKc53SerXQ0FCjU8PlFak9qaS7oOC0
         vTXFuArAMkGi2YKfIpCEVeSX7D4UMTBRLNiFYu6RLiwcHW2MFr7suENcY/66R6juOAvR
         rRogPFaftFblbsy0TWq7tZibglaqQAk0ILNVm/3M2GL61HzYvE3fcEiLOXN8KVq0k6Y7
         CjxzA2ORHLdwxukeylxz5ZfH25IySTF+qDHpG2Gik8Vvif1pVvaAfdnqx3U5jDoyZT1v
         lqRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qTVSFAblCS6JWA2sOUNWYwKYrkf95Jqe7/lT677pcfY=;
        b=MOTuSFzC2LFu0nD6cjrFS89/Np8DMoPK8ewiLNtchT1VXtj35WrEIKnd25KqJ68056
         4//q66/cfMQjNG3wWuyeTja8mS9ZSAGYZH8UY5Qq68PXotC8hLM5PlSNs68A4ZlQ4rI9
         NKainIycMjzQVQnbG1WRlkUNlI4I9QQbeyeomFGmnRWGTQC3KQcn9GioT5qXjp8meUS9
         V3srq8Ep92Z1eWImPWzjndUdyAzDs5fxMdJQFaWDZSkoe6aVkTY5CJMeG8JCDkFRNlUp
         0U0v68tpUFiwlXs9R4MclDxfUzc1/QmIKmHveIloW4xlYgP4Of5ajJIbz/lunx7SQl8Q
         z1qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uHtnQauX;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTVSFAblCS6JWA2sOUNWYwKYrkf95Jqe7/lT677pcfY=;
        b=a8FqvWcJw8BbkwgWT2+x5akuGSrWkvu/iHqFPaXeD3MDvqpXcf4FNmW22vS3xeZkBK
         MtMcSufkAh8b4ID+6xrfAVEH1iqiua/EM4hZR3q8c+KrPQX1wrU8Myb3cVm4ixvlXR9Q
         /s0wft3aoZzFgwBa6KZjnlmHAVbS27b8BDuSwNL/fFJiCNzuemW7yZ/l/PLg4EhKexQZ
         S4jDQeoiIaU/Y2erzIMyg8GczORbCSDE3+qzaz+GuAay+/w0RV4SxT8J9HLuW8zXygPE
         LDDMnTBHK8BtruS76Lb7eGPjQXr8FgxwXeQBOgpY1bcgAqghFOuQbiGfjPi0mVEngfrF
         burQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTVSFAblCS6JWA2sOUNWYwKYrkf95Jqe7/lT677pcfY=;
        b=kmDn8G1fi8NUY5CF1A2rmZXGi4NPuZW8bVjIAGeKNDeh6X5DUun1u5+sfAuHKK9L6l
         Mp3kNy6+HIKFfoXh095PuMMsE07Q6dGgMdQphudL7pi1bV8hMHLAIL9xyTzoafGbCnTG
         wSFfP4GJgYtzODh+9VYseJ220Z8ZQGRUjA+Wfd0uiJVvj54poovF6z/kMO2UeQ7n10zY
         LppmKXeS+uU8S1noGFivRfM6eZ5iLm0wBiBwRC3QVkJ+b0Ys6z4W49t4OGFbsCF6rgsR
         lvZOk6lHgfPvRoPIZfpDwGeiM7BTKNAc9cYyWFDUnzPNuNmmYF9OztGM+art1jcShJcP
         jT8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335MCiRb//UD2knSlZ0ZM8qaEUhmGzOdv+faXlwdlC3lJmknjTx
	jsRsOfAnDW+a4oORFL3E5Is=
X-Google-Smtp-Source: ABdhPJxX1cJLVfruCP2/dHShGyFFHAYDl8TB2ILNMgghe+IUbaRhlxx5NJbr87B43FNRoKJZvL4few==
X-Received: by 2002:a05:651c:323:: with SMTP id b3mr14308930ljp.316.1640003131699;
        Mon, 20 Dec 2021 04:25:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5304:: with SMTP id c4ls2381926lfh.3.gmail; Mon, 20 Dec
 2021 04:25:30 -0800 (PST)
X-Received: by 2002:ac2:4c48:: with SMTP id o8mr15254718lfk.690.1640003130670;
        Mon, 20 Dec 2021 04:25:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003130; cv=none;
        d=google.com; s=arc-20160816;
        b=rYkg8WD/5UO7UHrFkGpS5aNEWvWZUWkaGrovqRLcJjkE45CsWn+kqbPrfgNW/8JwaP
         mzxanfFRMyzTYvCICANyHscoZvc8XSfhXDYBvwViVQbz8i0evI/oWVBg0IR1HSKTxA6W
         UgdokbZKJQltZlBiBlRfoLCSZScX7Luxlow3Y/pFtUKQJVGThcpdUH5Pv0VP79yC2CGX
         67fcxSm7zAguGSqM+3cvj1kAvcxclFGfz37qfgTS6f0vhlShRcd+r0VvXKPu9XQ8gdyj
         OobLCIVtk9hdpejkGT7awqP15j9SsrptRYxZUNLvD2d1Pcpm7rcmP47EfmKLK72gOrR1
         unVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w5l6X42Q1hhXCCV2zsPbnIHkIz6QpyD+5/B2sPrSWbY=;
        b=udnSDWIz26M5BLLgPPsRjs+Hz5etNXldBwyb8kYm1aDdJMqp/5ljRKikGFKoosDn2l
         mOIiCWEIBCQmmHzzWV5kdy+2CeJcxSrfP/MpOY0RJOJQ6iLocFhFGBBeR+9jrrFuEJZn
         CDoyxAcGzyJxP5AKeL0jCXNPMOFOGVUGKWmein639kF/uT3vKaVn7maX7v1WamSPF/j4
         OeHYmZU153z1+5zWexjTFxNBf6DP/uUG6TQmdGDLIOWtNVBjGsP3dmbXK92Og7aizA7z
         q/xbIidxLSc0LLQ2/EnAACi2EuaS0WIF4Tp+m+bgpfS7gXCh8EcL41cWXdqIEfnorVLa
         aOpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uHtnQauX;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id i2si392213lfr.4.2021.12.20.04.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:30 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id z29so37461091edl.7
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:30 -0800 (PST)
X-Received: by 2002:a17:907:16a8:: with SMTP id hc40mr10497296ejc.210.1640003130404;
        Mon, 20 Dec 2021 04:25:30 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id f27sm4335374ejc.137.2021.12.20.04.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:30 -0800 (PST)
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
Subject: [PATCH 4.14 6/6] Input: touchscreen - avoid bitwise vs logical OR warning
Date: Mon, 20 Dec 2021 13:25:06 +0100
Message-Id: <20211220122506.3631672-7-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uHtnQauX;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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
index 8d7f9c8f2771..db499ef6ccff 100644
--- a/drivers/input/touchscreen/of_touchscreen.c
+++ b/drivers/input/touchscreen/of_touchscreen.c
@@ -79,8 +79,8 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
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
@@ -90,8 +90,8 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
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
@@ -101,11 +101,11 @@ void touchscreen_parse_properties(struct input_dev *input, bool multitouch,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-7-anders.roxell%40linaro.org.
