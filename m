Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBHGD6KGQMGQEYY3V2NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E6354478E00
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:33 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id t25-20020a2e8e79000000b0021b5c659213sf757392ljk.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752093; cv=pass;
        d=google.com; s=arc-20160816;
        b=KsGWZRnf/CyM9BI7xDoNcU3Umfb3jqht7dY7CMLY07eoIkDbQMs45ln9l+nP3UjaqM
         Htn5WBQXsKWGFtrwbMUe0/djswC/ejKHlGbmAQ+5yx7tQ2WnUgzQ/pJ2a6p7x89B1RVH
         vl3/AwisL/2YudVo+1bqXH1hZ+oPZAuczwU6AUD90+objI+iR1iaZqeG+FDwuJurWSAs
         xTce9WfIJEmZuZ1h5Y3+luilEYx5I4kf2A/5lewJ7XvI+6tLu7l66SsLhZ3oY7s3xJTH
         X8Sc/xVfXRH195T/izPbChuO/FjN5qQM4ZCn//0EMviH6vSpjMoU9A2Z4TNu9dLXfPur
         s4Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6dLdIDlkyvZ4zHbiGrzc7sKrpqQqziP9JNMBAzKx9Lc=;
        b=t965VqSsBaY5W2mPFCf3btiNV1ZbXAAHrOqLgAclAWqPszyWIegEQIUg3ijm0gMqqE
         r09kz20f8nUBM0fNyJcyiZn/yxD4CErylMvUBi60xruE2LxF0tfZAoXXYzXGQra5Z1+y
         WJf35FtFn8Q5pxACAAyQWZLmysi8UK6mYQ5EXkbZB0n4qNunUVyVBlWZ+1AODcm191W1
         Zz9KEvHcCpyiUmZHdKmsYvdqzZwixZ6Qc3bLbuy0tfFxJWgCpJ+v1kg9+hcWF/yzl5x7
         nq7ay8NuTkesBC47v1+PZwuTvP7On94/+Kx7TOYAwVGDxNfJsnG/03vUh16amEgejHUQ
         nnJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E9Ph0oZK;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6dLdIDlkyvZ4zHbiGrzc7sKrpqQqziP9JNMBAzKx9Lc=;
        b=t8X2USIDH0NJAqohxVrAvBJDWFtvZsmiIloh8xHIJhrAP92UMC1OJ1rmtGOsQ4nbm2
         IGaM0Pfnmpi9WxskxyzniLrnp/FjJ2Y7yNT6XwNkhatjWt8fZRiuH5os+zqjFe2E6nFd
         0PQl/0cvFf9b47pxIY1duTr7KWVkfgntqclwGEJ4B6mqhiuoJR8fUPScgmGUIaRtk7bC
         eBkkptcSXxffdiiKU0eMHAW24894zI7FmhzHK/7WAtYma8qEAspWUwip/2M4OLFXRwHr
         pO8kdcEwV18JBWsd5RGAdL1qUny3ibTOlaU1xNAzsTRTky50Koy2b10jfjBVgoTTEZar
         bAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6dLdIDlkyvZ4zHbiGrzc7sKrpqQqziP9JNMBAzKx9Lc=;
        b=evYhbmiGsD5q6Lxvp1h/rsDr9Iza15jUVK/fserf8NxoR6uf3Q0K8lkoGnOQVk8FON
         FTlbO8ytH2ymAqbuG7FOmt51BEPAzn5lzrQS+3oualVwDX+uyTKAIforHOLcn3FCztTh
         HGQGoYnv6dsuW/6TS4jIZ7cnaBquDDXBTPTskfHV877F/u1HJ0YpV+uh5H6anqhO4Qze
         w1pcG/sdwfyEYDbLogJzmvxDCiqeGM+v5cD06Vdtn5l2ynXHcc+zmeKO5jS0mjtMtE1W
         gsoFRZVNjtskIon/lTrHRAeq14mEf2AMU4pM/0j2SEMkX0Ap4AauppZ3IJMA757JrmSs
         AlIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zdNu+1hs+shKUZkRKnt+ZOWlrV2+MkV4IB659oU3CA3wwlgRa
	ocACqBwMfySUZQ6B1dftrFw=
X-Google-Smtp-Source: ABdhPJxDIG5p6cc1IWj8Hjee3djjLsjT+wqktISE8uUYIBZpxZSqTIJmTcsyS316OcnWSU/U1dSjtg==
X-Received: by 2002:a05:6512:118a:: with SMTP id g10mr3065174lfr.17.1639752093032;
        Fri, 17 Dec 2021 06:41:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1251:: with SMTP id h17ls1574046ljh.6.gmail; Fri,
 17 Dec 2021 06:41:32 -0800 (PST)
X-Received: by 2002:a2e:5816:: with SMTP id m22mr3016188ljb.347.1639752092045;
        Fri, 17 Dec 2021 06:41:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752092; cv=none;
        d=google.com; s=arc-20160816;
        b=Vtd4UXxFTNm66MV1oscJgAgSn0md1izsxY79yb9s5d7Nxj3yLz+gAazklz6pkDGpfu
         FjbMQVgEOeY976S9lVUu61WG3f5sRQIfo8lIFixbNvpj8CE9ihapTO2fGyUKRx8JrYzh
         H3k8sEL49RDYMl0WO2ftcAlTZsvpzBzt3WpZeiBpHNAkBGoECNOBClaetqU9iu+8W2Nu
         a9xoeslUavsQCS5xxrLjOYMBK/O6WC+rq/gZ1KTnlGmFZq6tK7S/QDvKb8c6SMTE9efw
         YUwNz/12q0WOrRSXY+7/u9gfrEqvfyXSxpjznNOwdEyc+F+Az7Wt9LII39P2Uo4MlZGn
         fYwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=prx8zfLm++UaV7tRi+h7F/1CWXMzXH0CDo7rG8rAFdA=;
        b=yinyXmdUbg9d63cFY1YAvBoF6yJJk5i5tLZ0Rfn0CeUPzFXjM+/68SRqJ2syrou0fj
         I7O278UoRHwcGhyEv5XzDosbWNDGbKJqi1gImtI66R/CR/uckdoq7ndeE8fhJ1CTTVKh
         vzhx37g84jBf6/1ydzryFpWrM90b3LXZ/dEzOk0p0H9UIoVODgzGLoCH8UY1tIaDJ/eY
         rArvR859y1ltebol2rJlueGUjQ0G81NneytiHsu/n3T0Hb4zar5/Pl2kBbJvnotKqHlV
         vLVtzNo5FQPmlWAI0w7OhnFaEB8w6tI76C5reMZahwF2uIofxX0bhfZ0fM3GEI+a+EH4
         0HgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E9Ph0oZK;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id z24si122922lfu.0.2021.12.17.06.41.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:32 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id z9so8664193edb.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:31 -0800 (PST)
X-Received: by 2002:a50:9ead:: with SMTP id a42mr3159418edf.315.1639752091690;
        Fri, 17 Dec 2021 06:41:31 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id w7sm3674153ede.66.2021.12.17.06.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:31 -0800 (PST)
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
	Andy Lavr <andy.lavr@gmail.com>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.19 3/6] mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO
Date: Fri, 17 Dec 2021 15:41:16 +0100
Message-Id: <20211217144119.2538175-4-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217144119.2538175-1-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=E9Ph0oZK;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

commit 6a953dc4dbd1c7057fb765a24f37a5e953c85fb0 upstream.

A new warning in clang points out when macro expansion might result in a
GNU C statement expression. There is an instance of this in the mwifiex
driver:

drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
')' tokens terminating statement expression appear in different macro
expansion contexts [-Wcompound-token-split-by-macro]
        host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/marvell/mwifiex/fw.h:519:46: note: expanded from
macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
        (((type) & 0x000f) << 12);                  }
                                                    ^

This does not appear to be a real issue. Removing the braces and
replacing them with parentheses will fix the warning and not change the
meaning of the code.

Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1146
Reported-by: Andy Lavr <andy.lavr@gmail.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/net/wireless/marvell/mwifiex/cmdevt.c | 4 ++--
 drivers/net/wireless/marvell/mwifiex/fw.h     | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/cmdevt.c b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
index 60db2b969e20..b7ced103b814 100644
--- a/drivers/net/wireless/marvell/mwifiex/cmdevt.c
+++ b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
@@ -324,9 +324,9 @@ static int mwifiex_dnld_sleep_confirm_cmd(struct mwifiex_adapter *adapter)
 
 	adapter->seq_num++;
 	sleep_cfm_buf->seq_num =
-		cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
+		cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
 					(adapter->seq_num, priv->bss_num,
-					 priv->bss_type)));
+					 priv->bss_type));
 
 	mwifiex_dbg(adapter, CMD,
 		    "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
index 8b9d0809daf6..076ea1c4b921 100644
--- a/drivers/net/wireless/marvell/mwifiex/fw.h
+++ b/drivers/net/wireless/marvell/mwifiex/fw.h
@@ -512,10 +512,10 @@ enum mwifiex_channel_flags {
 
 #define RF_ANTENNA_AUTO                 0xFFFF
 
-#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
-	(((seq) & 0x00ff) |                             \
-	 (((num) & 0x000f) << 8)) |                     \
-	(((type) & 0x000f) << 12);                  }
+#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) \
+	((((seq) & 0x00ff) |                        \
+	 (((num) & 0x000f) << 8)) |                 \
+	(((type) & 0x000f) << 12))
 
 #define HostCmd_GET_SEQ_NO(seq)       \
 	((seq) & HostCmd_SEQ_NUM_MASK)
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-4-anders.roxell%40linaro.org.
