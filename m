Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBNPMQGHAMGQEAAQIJVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0432B47A97E
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:26 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id cf27-20020a056512281b00b004259e7fce67sf864886lfb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003125; cv=pass;
        d=google.com; s=arc-20160816;
        b=qCWmggH9OlAAI46LoOectlTsw0Rji0WIy1nafTIlmouwO9fMsSwi/YxJddlsliDvGf
         U+cHFXJPxH3Sgc38qgJobncAoJmRpCbkvJZ/QlX9sJqH85QcEG+LtiT5m+sA8ZLS/F1L
         TlynTC2mXDm54ttJPyRO1zbDf43iugQiD79K7qYw/6EWr2zr9Ebz1UvE+WUDgLHIiv6N
         dupsY7+8euFXKt8Z1qpMRMpRvB7WLPMeaD2Alf24c0OfC1pffMGf2Fz8BEtuAul9aWEx
         ItLtdX5dFDHDDYLr+goKCmfrKoxWmI2pAu1N7lp/VFf6Xo0+gwzt1EGUvfDcV0h1XwEO
         kNEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Tvqz40cfHbkKvmQx98XZjGXHsLiKEKFOOK4ig9G+3ok=;
        b=jiQYYjCPZBBJf4mjp/BYQTdmK2dzoKrW8o1EIuPf4xx4tmHLqaoSqe4fb+hnwBgPLM
         mD6vsLlDdLb8ohOZ6Qm+lsu5iHa52lkvWQbaSk52YRMOM2X+0XqSvFvU4ITb9m4uNjvg
         BrH6mPeJ6/s3lVtXQEFktNU1xSStmxQ6+biMItD9O7TpFb0jelAb56aZQC9nLHqGuYAV
         lrWbyfqt6jwYAJ2QbbCA8diUkWUwmtVk3bEbPUsysnn/qXWjrktV8j4DNrkk2zAa+kM1
         rEVzPnOw5K0bPsid6gUq6Wn5wn7Y15kct9/T0oh4mDx5gJlDhJNIy4SYOaKdQIbn6HKj
         o6yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E8cyRV5D;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tvqz40cfHbkKvmQx98XZjGXHsLiKEKFOOK4ig9G+3ok=;
        b=pO9RtIhrHMf9vLEg7uTTugItqO6SwFVLsHfZtEPVYsTm2Y9C5bhpJUg0tm3kHNDAWX
         FS2OyfT2MXyl5xtE7/TvNolBb7lTeNeV4eGckQseyb3KiKkULzsfpFi6h+TtmiNDulOF
         4R2arzlx3mm+FsKmjtrIo+674pg9ck/y2NfRz92GvetYagzPkipM9cHpNAt0uNB3eYSk
         fTgS6uJnMu1+BtI9bhiZjH3t8BR50afiocqJocOOs7IzyyGMuOh+EXveP0i0Dov/CzsG
         cIUo9tdk8/C00VtyZir6C9FZFVqwVQ4tI8dRIju1YTDbu2gCEhl12a1pW1eK8HUB51w9
         UKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tvqz40cfHbkKvmQx98XZjGXHsLiKEKFOOK4ig9G+3ok=;
        b=KEP/ziin1PV5YWZw/wP2OFRdcUHAXT88ciKQeolFBnIQxP3eLcNCclVHVLhQ39ZTka
         T0rdOZ0PaFjMpJyfzW3iyAdL4QPoxXBpwhmCUqo/+Xy/zb67Gs1vE1/L/pAoK8dwxQLi
         WW4Uw623SvA9QXbI4etMX5F4UQI8gRZT1AxZJnt/VM1+GClzPKET/H4ry7HAKRpem++P
         dXbkV90pTH+7F17HPlGDgDzQFU6XggQigA2woADSKuZuwmp94WGBX7K1pRPBpZkG7ZVT
         iT0DJhhYxTHWAB77aS2WIUDHCzpiKEIsOENdooQuQIeOvek+9IZS9CFDeD/OyqWLVIab
         Vttg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tbkf9+dh/JFNpNHP7Yh55alPS4mR57BGeAH9cPo6o9Ndzjp8B
	q3FomdLKeaLvGbNMn9Nks3I=
X-Google-Smtp-Source: ABdhPJw5exQbW1vYBedG781U0u1/GlmffffW5xf6XWvbp7HOBIeti0YxI2PDpcZvjbDQoRf5hOyQ+w==
X-Received: by 2002:a05:6512:c20:: with SMTP id z32mr1772840lfu.295.1640003125474;
        Mon, 20 Dec 2021 04:25:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a222:: with SMTP id i2ls2451350ljm.9.gmail; Mon, 20 Dec
 2021 04:25:24 -0800 (PST)
X-Received: by 2002:a2e:5c86:: with SMTP id q128mr13829339ljb.245.1640003124443;
        Mon, 20 Dec 2021 04:25:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003124; cv=none;
        d=google.com; s=arc-20160816;
        b=Lp8R3WPxZ1ppb2WxDyzzUg1xdVDM6c5C6+O7Cjug0UVfhq+bLW8qav2UcCGs0CTTiR
         1o1l5G4vT0nyfYvsjnB2pSP9kUc9j+lXBcOURkdL7V/TnSWuJ9ddwAgOPdXTbAVcP2Wg
         YwTC75l+RHGRxlpWkg/fgMMp7BJDWdw7Cmwe2XjPIErQdR61B0Hc9EZSF8+fMo0E+rak
         hKYS6O0/ddzGz+xzZP+Ly4NJL7vP54gtAGb2wSCGohbPIRUpPhRGss2YAv4Re+1rRJPY
         HgFq9ILbYJjAusSS85eVseedDCMejZ9PZzLYEmqpCJnS+UiW30FINB0ijTmEJ4ScbkTi
         MkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BkU0CaGENz4v/3Yu7z2QNSSezrRYwzxHe/jHn0X53Fs=;
        b=zPdxHvqjiFUdCI885hlaseBvit4zr8JFLwOkBpfmnE6MbTsCNGYOxXlc/U7l/3j4q1
         0ZyTb4aqnsOzz3lzy1N06RDkMK2o6+MvtOFpPhqDGO/8USFSPrMUSJfNAbSq1h8gunZA
         Kuu1OkhIgNY3Z6CDTFd2NlAAnx4iuX6g9RfO3Ahk2HrANzqfuCOhntmrNQh7JLvtDUug
         xBSSe0hbpSCKNKE0R8lkbMuEQl2Wr30793jWkDixrnY+IkGkd2gbFuj3wnHinaFfKzN8
         y1cKrrRC+F4wbLAP4GlJTVZMwD7HiCyrYoerpD2o0spkUSReVrJb+F77rxKKIumiKgYh
         bsvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E8cyRV5D;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id e18si843018lji.3.2021.12.20.04.25.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:24 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id m21so10339445edc.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:24 -0800 (PST)
X-Received: by 2002:a17:906:4788:: with SMTP id cw8mr1045314ejc.22.1640003124185;
        Mon, 20 Dec 2021 04:25:24 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id z1sm6666242edq.54.2021.12.20.04.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:23 -0800 (PST)
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
Subject: [PATCH 4.14 1/6] net: lan78xx: Avoid unnecessary self assignment
Date: Mon, 20 Dec 2021 13:25:01 +0100
Message-Id: <20211220122506.3631672-2-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=E8cyRV5D;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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
index 838b6fe9dfaa..e286188b6ea1 100644
--- a/drivers/net/usb/lan78xx.c
+++ b/drivers/net/usb/lan78xx.c
@@ -920,11 +920,9 @@ static int lan78xx_read_otp(struct lan78xx_net *dev, u32 offset,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-2-anders.roxell%40linaro.org.
