Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBO6WYDVQKGQEF4OL25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3610FA94ED
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:08 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id x1sf13609wrn.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632188; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hkz8z7MgyvKHbyqu1e07pwxqKSBbm0HPC+U5dp/h9NZTc+3t9MUliu/eU6xNSsZY+O
         4RSNNB/PYX1jIfB0sg8Ce8nPL8NtfLO/B8EEUv070iBI56IO37/DXeItvoaXmawFWF/Y
         pGMTe8gauBdFM4dMqhU05XUgPE0jfKIpVOAGe3+qpg0UycY0q/s4gZs2R3dD7lEFxscL
         LBwODczxyezlxGUA8k7Xp3pgGqLIXovg9uc+x7oRFCxKfLWPQX5keoNBrIpO8KBHeLu+
         Gn0LH6SupuCx2pdZkW28g5JC7SRz5IJafMjVMr/T+cJ6rhAObrIg+oEGLgOAiRksu7Uc
         vTIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=RKtctvXIUvPsRVWNpoIRP6gmqcnC8GxK6c8/PLbHAvs=;
        b=AjpwIWBGdBlESI4yMPc/DRNRpNcTrRhzc4o9rqdoyzWvwNd6TADy3t0nDCtPtjBfQU
         nHSrGs2HCT926AEV9w6KNSX9f22DKipC56rdCiNSryZF8YEFyxaZHTFfrr8DHxM3JdL/
         21DJi3R9uSY+GiEEM4Xv+JBqRl/TfoCtjTuMfVw0SVdM19OoBIjHlAN0+h3SLc2CKsXw
         GwSTybpe1CTtYD/iTneHHyvKsVIKl279VHnFosSvtJIRU+0ojoFYcObmKFXjUbshJvv1
         x/QkZu47uNoUfYvZ7my3zhiEDB+2dvZmQGioPFHwSjaRMx5hJmecX42U57JZ68h2Zbrh
         zFUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Qrn6kZhS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RKtctvXIUvPsRVWNpoIRP6gmqcnC8GxK6c8/PLbHAvs=;
        b=fmEPnePGO9SjqZh1DyzjMHJAH8y1nKNGxnooxJlatcHA92SZv4d0sh4/cdMTm+Zowk
         6bBpsLPdUATbxhkWbsWqgumAjs5KK6seqe7H8vzFvyaQSfEl9A0lOm7vtBSJ66bhVB7s
         ZDRiRJhAeiwe0icr9L2lvpKKvAWB0fE9XnXeKELWQp4xMaVJM9u1kIIOnrqfOnA77NMU
         toHAXmAHchqhpx2O28iND7bYv41xuSaG2uXHHk3KBuBfT7AD+eo6X3FMchgUoxzRbVW2
         QKMBzH6e48BW4jWCF9+CD0nXWpj6aMj98wMSBFjqOkeufpBH82hB+f/+SWTQq3+qPTNT
         sgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RKtctvXIUvPsRVWNpoIRP6gmqcnC8GxK6c8/PLbHAvs=;
        b=h+M+thUQZsGZPPy1PZsPUItsezfec+5xEkbygMkgdgU/mdVJN00CUp1GlcZE8FJ42B
         yzTApGaCdk/p3RCXmstLhStrffSn8/DepqS6WnwL/4pQsAoGQ4ZIsX9vQU1aWzgXqgkg
         hezoUAqd4YIPLvw/q8XgKqY0j2QHK7AvuQ5ac5eCWDonCyBZEaVcwdMqN+1ts5e5E4kW
         zEAA/vXKOUGMDpowDxdgrOVSB6Kas0hZLcbAsRbcNh3ocJY0JGD3yklU76syUkMGtWsW
         vhWDsZFjDRitkBhw/8iGuSslxvtgFFj2zl5Wg6lBGRRQRKziZSa0cy/bk7rIMzv5Q/ve
         Symg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUswqZFi3q83cm9Z4LGsWnGLBQuij6Z7wVO5t55JN02l1taa6Ke
	HgFqneOGkHIVf14VahnPszc=
X-Google-Smtp-Source: APXvYqzUhbpfyvZcjbeDdxnp/eUafA0V+nPmiLaDOAv09/dTcVKcUVmG0rO1tJOyaoxsHyDasLnJFA==
X-Received: by 2002:a1c:be04:: with SMTP id o4mr250286wmf.60.1567632187944;
        Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls1674905wme.1.gmail; Wed, 04
 Sep 2019 14:23:07 -0700 (PDT)
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr253705wml.86.1567632187577;
        Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632187; cv=none;
        d=google.com; s=arc-20160816;
        b=qCgDisbJEG3Z++Ki0duufYh7QHaey4Qs+ADgCOldp7SOyIyAIjv2XRIgJXnt+ig977
         uc2Ob3mU0K0kTQc818+2TVS8Ip0ZTF34TbmeZproFcWvIFnVmMaiUI8rYYIvGcU2fF/V
         ZQF86H2JGHHr/1NmNRczlwoJ0UTbjOSg46Y5HkA9BpttbcYfc8QEPS2PSS8uNJxp/X8/
         1PdQPz1xgYo7YpcP6UVI/AzszLISUwzOE8NJwNn/LTCOUOxs3GBFi2ooOM6nCQVvW9zn
         dygmo/86LJQCYAB388StSjpYg3xQj+1NwyGTzLdfTFG0lTXOZqLCFMk1zts2OEp4r1gZ
         J63Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=XM+El1wyypVfaXfQc7FxTfECR5DYv9zUGiXmgC/VC5g=;
        b=fJiwTliMaJXCHN6vmsVDxDmsq2O8QkTQAKW0TktWarQKEyoKSTwSUpadunwOGIzOgr
         O9d9L/Jdia44qwgD+4Y61+f0n5DACWtEC+kmcJLsm9m/wyyCbzcZCgU9QOl/ZyfQB287
         PwzOunBGMzl7a5oJaoRmMlMcEL0R/H7doF6+Gpcvg8T5gldiqNSK+3e++kYyf372hyI9
         4guy0nb/ek00aeQ3YiB1MLi1cu03onLqBtCwdu6OepUnPMVZrQFL4BP2xBddnOrvMRrU
         q29xWXjIY0md8z46/GcF45ZGGVfvGwGm23P+EPMGKr34yP84llOKa6KUnuqFllBEY7JO
         NMtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Qrn6kZhS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x13si271100wmk.0.2019.09.04.14.23.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id x18so218922ljh.1
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
X-Received: by 2002:a2e:9a82:: with SMTP id p2mr24383354lji.64.1567632187076;
        Wed, 04 Sep 2019 14:23:07 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:06 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 5/8] samples: bpf: Makefile: use vars from KBUILD_CFLAGS to handle linux headers
Date: Thu,  5 Sep 2019 00:22:09 +0300
Message-Id: <20190904212212.13052-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Qrn6kZhS;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

The kernel headers are reused from samples bpf, and autoconf.h is not
enough to reflect complete configuration for clang. One of such
configurations is __LINUX_ARM_ARCH__ min version used as instruction
set selector. In another case an error like "SMP is not
supported" for arm and others errors are issued and final object is
not correct.
---
 samples/bpf/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index cdd742c05200..9232efa2b1b3 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -186,6 +186,13 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+# Strip all expet -D options needed to handle linux headers
+# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
+D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
+	sed '/^-D/!d' | tr '\n' ' ')
+
+CLANG_EXTRA_CFLAGS += $(D_OPTIONS)
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-6-ivan.khoronzhuk%40linaro.org.
