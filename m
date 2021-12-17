Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBGWD6KGQMGQEEJIWTPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 435AF478DFB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:31 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id l6-20020a05600c4f0600b0033321934a39sf1128398wmq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752091; cv=pass;
        d=google.com; s=arc-20160816;
        b=VT7p9ZPi4S/ehaLpi/qagkjF2nSXm3pd75ZiP15QYgcIxESxFt0goXDrREp6gFZC8X
         ux8pVqBZXqclYhJX7xM4hUxR1p+G4zSmEQhjIfdSODbSODpM7RQ1GIbGJOYj7hmGFxRF
         JAEJfa1XANUKUc8f2lRGunKrKRX2TeqNpQVsCOk//UDO0M6qqpSzO6bdfs0WdmLGU0VD
         hzkRDTLNIZAm+uzBxHCwgACzbvVjVe+y6wlamegMvhpQ8H3WLzg9hQe0Jg1ufq2IM6lY
         EXWCxCWhzdw6WIo/1MBQppsTzqtnRkujKANlUfMr/dJYutiwePkuygscb24Xol9cdCtp
         vA8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TTptbL0t8Mi5XioxQs2MhyxoSASOP3kSDSX7WSshyQI=;
        b=RWMdx32Ps4yrmsILw/+aColg9Aj1hST23T7SLBYijG5D3prVleNx01RaiptRmQAaHF
         8v8XKY9ftSztN9bViNlf33cRnjU/wiOV0P0OWV1q7t0wTXPghajYoAlsjdcVRoJI6deq
         ylKA90wspT4Dm36KtLgIFeditEWQtMNzyYiKr+cqJc3VvIGAXXDA9GSp3iDB/DJmIntd
         0AAf6mmstCFT7O8m6gzfF/b6ygGGbm+xQnRRw960kpw2c8XC+2tpjNI4/BHbh83BW7g1
         3Sm2SghZ+FfIHAGa4rRbn6YpWKa/0iciGGFVBcuD9bXKRJf4s0UgrOCciw5+GnoY7iY8
         IO1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=PukQFC8e;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTptbL0t8Mi5XioxQs2MhyxoSASOP3kSDSX7WSshyQI=;
        b=U2Uh6jMqkjglprgvJjY4TEq3nT3U2PtJ8WdO2vxCdx8KAejLuPQS2M1NQoWbPNO503
         tzKWHnsnIuuDw8daQB1t7raBNRll6S3tQ7L67Fdq+2OHUHFKLXAbREzczbFMTWQomP1p
         WO/h7JUWVNB1AmoO7bfVY4COGoaU2ilQITBwdibmsamo2EqRnpqvE/YY037twLntlNqu
         WjNKf/jxTLAXrAtdDD7AqzAyp5WbZKgoy9NpwjACC3CToUJ9LIlOlSperVdj1KMQnL48
         BdayinfrXMms2zscAElzoS2LiN1aI4sOfpDaYI6cJFzLAWgeUayRUt4lccO2vinwshib
         yelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTptbL0t8Mi5XioxQs2MhyxoSASOP3kSDSX7WSshyQI=;
        b=FrH57ZH3UGZbo5T7KBsxzm3G0vo5yK8+F7eGXJbhawx67Mvz3jrdym8lilCY46AmAx
         mTJBy2TT2cz058h7lmxyl49xEOIO+Bz1wSgr8gDs7p5IW7VjgfbSUWh6kKkFNXZ3JiDG
         jHm4ycxJyHsBahgDmjfDjIJ9xS+u1/xyVVZO81S/1WzATTOd6eHDo6rO65zKADQ2OI0y
         eq6h1PN2xRVe098wnmrofr6Li4LtJO24vcGhzwZSKnqdRvbGzdZi3R6OXKBVV/FDrwHR
         AyhYYkb8t2klgekY9TIrmSWp8ELGeaOjaFbR4PbE/BEnAsKaxfYJPprsRbt9rAmN1vuX
         rcMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WTTj1X9+KAW0Ok1+OCYEhVo88IUh27udyPfBuA9A/AjpaOoXQ
	8QcceDizd6RHsgqKbyPR1Cg=
X-Google-Smtp-Source: ABdhPJxDAUJkZqHGZbsBxNxayZVYb3+dw66b1zBDjpFknH86N4ZZOyLLTYx/8TOkjmCPjKNBmN+Ntg==
X-Received: by 2002:a05:6000:1c8:: with SMTP id t8mr2978124wrx.542.1639752090934;
        Fri, 17 Dec 2021 06:41:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4092:: with SMTP id o18ls564631wrp.1.gmail; Fri, 17 Dec
 2021 06:41:30 -0800 (PST)
X-Received: by 2002:a5d:64cc:: with SMTP id f12mr2847951wri.145.1639752090066;
        Fri, 17 Dec 2021 06:41:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752090; cv=none;
        d=google.com; s=arc-20160816;
        b=fQ5380tOLZ9uveRHvuv/TNT4DBe27AdqACy4UEWNqxA5XsTA+/mJTudac2wui62Epu
         Vg+wT8LOMWzNnk+v57VwveDj/sA0hTS26mfRgvgNscCjAFt8t4OG0xMJ9re+72RfEJqn
         PW75IjJceDpOIwG2J3hJ4O7Auc1PMKmXxZdIKVUjHwLpbloAS0w10JohCdF6f2FIEFv7
         0aVrPZQSmlH3z30RuaJ53+vMxEDxAUwg2i8qSETXuxdsD7aJ4HBusgU4UsUNKbqG20Fw
         xB0hPUTSUzVasJNZrMygf/LbacrBtjdX6pnkz2yg/WbYArJ3KkX6JgasoMOcaBqix6ic
         CnGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uTnI2mJGzMXkNd6zD8dQtSYENNAOb/CaCe05utt5/js=;
        b=l/ghNXBUDbYa2/iTYNQ0y+fBGtQ6iWgJ+2a2q7v/ojQcYmjQPBWY1G+BzRFZUbs5i5
         TpCOK518Q5i6viJD4fZgFyaiOgdbBHyUrbkW3Ls+ibBRFz24KTPUzc8pKSyKxGLknMJy
         oKZIjWYdCCElalX91pCUB5PZyJqJiKV1ipTybgebwVoIsR2LGyyeeNMesbyuaEXPDlzU
         dcs42d9DD1x1ahf4GgKJ+KFfqyHMdUjc7MSkAHcPGI+M189OTfhDcOjDnPJL/mH2aOnX
         OyFlMuZcHaV+1d7LwBQuZrHJJUaPcm7sZA7IUsGTpMNOUN2e3BnIAzEkYgC9JWyu7hQq
         CXEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=PukQFC8e;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com. [2a00:1450:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id d15si278760wrw.2.2021.12.17.06.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:30 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::52d as permitted sender) client-ip=2a00:1450:4864:20::52d;
Received: by mail-ed1-x52d.google.com with SMTP id y12so8526156eda.12
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:30 -0800 (PST)
X-Received: by 2002:a05:6402:14f:: with SMTP id s15mr3145035edu.118.1639752089832;
        Fri, 17 Dec 2021 06:41:29 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id o1sm2992009ejy.150.2021.12.17.06.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:29 -0800 (PST)
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
	Nathan Chancellor <natechancellor@gmail.com>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.19 1/6] net: lan78xx: Avoid unnecessary self assignment
Date: Fri, 17 Dec 2021 15:41:14 +0100
Message-Id: <20211217144119.2538175-2-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217144119.2538175-1-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=PukQFC8e;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::52d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

From: Nathan Chancellor <natechancellor@gmail.com>

commit 94e7c844990f0db92418586b107be135b4963b66 upstream.

Clang warns when a variable is assigned to itself.

drivers/net/usb/lan78xx.c:940:11: warning: explicitly assigning value of
variable of type 'u32' (aka 'unsigned int') to itself [-Wself-assign]
                        offset = offset;
                        ~~~~~~ ^ ~~~~~~
1 warning generated.

Reorder the if statement to acheive the same result and avoid a self
assignment warning.

Link: https://github.com/ClangBuiltLinux/linux/issues/129
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/usb/lan78xx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/usb/lan78xx.c b/drivers/net/usb/lan78xx.c
index b328207c0455..f438be83d259 100644
--- a/drivers/net/usb/lan78xx.c
+++ b/drivers/net/usb/lan78xx.c
@@ -945,11 +945,9 @@ static int lan78xx_read_otp(struct lan78xx_net *dev, u32 offset,
 	ret = lan78xx_read_raw_otp(dev, 0, 1, &sig);
 
 	if (ret == 0) {
-		if (sig == OTP_INDICATOR_1)
-			offset = offset;
-		else if (sig == OTP_INDICATOR_2)
+		if (sig == OTP_INDICATOR_2)
 			offset += 0x100;
-		else
+		else if (sig != OTP_INDICATOR_1)
 			ret = -EINVAL;
 		if (!ret)
 			ret = lan78xx_read_raw_otp(dev, offset, length, data);
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-2-anders.roxell%40linaro.org.
