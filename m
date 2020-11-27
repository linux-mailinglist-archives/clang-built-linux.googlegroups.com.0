Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBUXWQL7AKGQENL46T4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB12C6101
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Nov 2020 09:39:46 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id c8sf3162764wrh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Nov 2020 00:39:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606466386; cv=pass;
        d=google.com; s=arc-20160816;
        b=NeHyA1S9EWIe6VySzG04ekzasFPwnnJ9y3u8be41RziBKjb06N15NQ5HYemuqvHvuQ
         R9iYzNXcVIqCkjhiGfHKIknDnrDpt+LMzYZ20nvQikdLiIze0DUbGrGREUEOAqZIcFqm
         GZiSI/FEbh/MfeiXgcNKkRO1A1wdlkXDeZHoRlCOxM8h6B4a2GhotXOOzHa/XC92Wr/2
         5sqlVJhX4fj5TO0Xk5BtmqtHsOqxJIqcCCTdsXRpZrO8M79JiGTblQs5CtVOkAlNuhUr
         gHglkU1TqecR3l3A0YF+oEnN6V3JVRn7iNckBI9IemLIreOEIQpD+XvJlShcypybmKRi
         VoYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=71zWKsbW3NZ+ZHicMb8CrOO8Wm8sm15Vpx+/V/1X/18=;
        b=IUYmh9xCtITb0/C9evFoxDe176XaEdZh1elotzP+9Y60Xqpxn1h89WJFeNqusOlUuc
         afm8LAtWQDBdt+jM2iVM9uAK5nuIqGwDfvhTytz1/Gip2p+QbsI3grHvekDMZOY9SbD3
         vhXIbDGLq9ouZ3yDU4hMUPnLL4OlhtBElPofoRT/mbfA8jsJHWNPz1vcwfAxcWBGhdkR
         0Gk6QGDKhXgIWs1vuAHx0wFdzrynn2bGDyyboMf8An/cJ/GGRqCT4zkUlhMBrdnXYaWD
         hCc3y2Bm0NiZ1n8eOTc9YU9u4RNaCsC+boYB+fOJKquoZ9o5HK52H409ZzfsHsQzTK0E
         Z78g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CA94T8+X;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=71zWKsbW3NZ+ZHicMb8CrOO8Wm8sm15Vpx+/V/1X/18=;
        b=Y7rGz3WwdhoHJQ/VTZggjC3ih72Sp1X69YvunmXY0aTTnJvXi0AvMC9KSQ3gdU1X6S
         mCDGJarViKBHM3kmc+Ncwadn+6VLhikgj7c4W0SADZXoe74Vxd7oViJD7hFocwATQ2EQ
         7JbWwW5G0zBaJqi7Amur50BrHM5sMTNnsa3s4qGYnbtEtIzuFJeR1Pp8RoHxqTH/v/G1
         RIN5mCz73pGrGg4GsN4gg4WMFZLT7RnRwtPhijpR+01AFhMqsYoEg7luYa4IBpJ1eywT
         KTm3a6NJ+QqEwvVTf0ibwycCo4P75beQcgt48j2RlKBBMAvFONKOWtJfE/Pgke70cedf
         cE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=71zWKsbW3NZ+ZHicMb8CrOO8Wm8sm15Vpx+/V/1X/18=;
        b=Abg8UCD3G47YtTtfAqShZVuoBfpYmLj3iaBS4f96gRr7IGOciIiRtsF00JOyLKopHB
         oWe0S+X9TMLCXZE1/7wRKLnVxEExvobhlxIQWQITPCIgcScrxneDaJCiRcJpplKo6A7M
         tx/r8HG1gz3qJtlxpJjWiK+nd9sz3HHJsdpRIgHlRGP7RBEWl7NGtToyzbfEMttzFn0M
         hKMWZWHmo+beMCVa6SIFZ7/jZB+5Q9TpqQIfmqQ4bmODLOYQH3moudfBlfbHTjHuVgpM
         wqGA+pJoVrlYOcNqsoEvlkv0zvISAjNZouhR7JtffLuq2wSdeAXkx95bQhZ5M3tnGPr+
         qBCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x4udl+WyESCDCcPbUuV3z8nwovaGdhixnL8fJXZ/4pn0AaQO5
	zItK/6ySdq8mAHBF24AF8wk=
X-Google-Smtp-Source: ABdhPJzvqd3F393jev+oT6VHguMy65N+rtA3FUDxCdJ9Y47AE1LcbXnKJ9ErEbwr5rbOxratF1V9mA==
X-Received: by 2002:a5d:4e47:: with SMTP id r7mr9087950wrt.342.1606466386675;
        Fri, 27 Nov 2020 00:39:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2348:: with SMTP id j69ls2073931wmj.0.gmail; Fri, 27 Nov
 2020 00:39:45 -0800 (PST)
X-Received: by 2002:a1c:3c44:: with SMTP id j65mr7704293wma.13.1606466385806;
        Fri, 27 Nov 2020 00:39:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606466385; cv=none;
        d=google.com; s=arc-20160816;
        b=DMyrJPmxtY4sS3rp3V73tarrZJQ3UZB3HS9UtefqRI1rQPWIFOsUhLMiiSHYY2NR7T
         W/TenXMie91ZOeTNUowiFqtjXdL36utZ2pqgtb5e8tTuQgcZ8kJbKHp3q3F6bK3Y4WGb
         uujbOWtJud6I5HF01Z/WWlscpThR/i4TH3t0giY9SQtbc9Eb4azgqU/NPlQkMXMaMzu2
         S9uQnlPeZ1CjT9WoGHbD+RrnDkRRxLIVV3vtzhLs6Oitu1p74t+9PqAqOer7UHtrILhw
         R/4HRAZ57PBxTI+PGRmRjezjiDNeNOoefgL7PowD9W6AEp1iGqk5PlyhiPwoojI/H8wP
         kGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Xq0pZQK9Mol8DOtCUpYSsXSaOdIRPPSzZ/jWHRVV+rU=;
        b=ZBnkaklt8rfFmYMYZv6Y8P4Trn59ERTu0aYdPUbTmWCpx6mnTS9vz1Y5aZEcOPxG4I
         TOW5P+7Jt7cCgW63SMhSgzHvtEvASkADse1vvs2OQn58qaeoff2Ikf8hjh7GpoXIP6jN
         sCPOtj83Wzw8/bQCKogAKux97RMdqvcaqlYL0EFlQOPUNq5PKu2OHtKkUlsCoMT6w6Mx
         BCJHJ7PHDT5VySWVT0IbKkXHW7Q3oZEluvt3wZV0Lz28RjymZsDOVLSDbaWrjQQvFC5Q
         DdsLyUg5Jr2H9dJ0i9uNTp2VWk5kztzgo/tvcpfxcbpTk74AE3O07E+A1pV+iy5ucISW
         n4BQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CA94T8+X;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x5si280271wmk.1.2020.11.27.00.39.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 00:39:45 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id z21so5910555lfe.12
        for <clang-built-linux@googlegroups.com>; Fri, 27 Nov 2020 00:39:45 -0800 (PST)
X-Received: by 2002:a19:7c9:: with SMTP id 192mr2695383lfh.424.1606466385391;
        Fri, 27 Nov 2020 00:39:45 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id x11sm603745lfe.96.2020.11.27.00.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 00:39:44 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: tsbogend@alpha.franken.de,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH] mips: fix Section mismatch in reference
Date: Fri, 27 Nov 2020 09:39:43 +0100
Message-Id: <20201127083943.2666864-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=CA94T8+X;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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

When building mips tinyconfig with clang the following error show up:

WARNING: modpost: vmlinux.o(.text+0x1940c): Section mismatch in reference from the function r4k_cache_init() to the function .init.text:loongson3_sc_init()
The function r4k_cache_init() references
the function __init loongson3_sc_init().
This is often because r4k_cache_init lacks a __init
annotation or the annotation of loongson3_sc_init is wrong.

Remove marked __init from function loongson3_sc_init(),
mips_sc_probe_cm3(), and mips_sc_probe().

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/mips/mm/c-r4k.c   | 2 +-
 arch/mips/mm/sc-mips.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/mm/c-r4k.c b/arch/mips/mm/c-r4k.c
index 99521764c75b..4f976d687ab0 100644
--- a/arch/mips/mm/c-r4k.c
+++ b/arch/mips/mm/c-r4k.c
@@ -1609,7 +1609,7 @@ static void __init loongson2_sc_init(void)
 	c->options |= MIPS_CPU_INCLUSIVE_CACHES;
 }
 
-static void __init loongson3_sc_init(void)
+static void loongson3_sc_init(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
 	unsigned int config2, lsize;
diff --git a/arch/mips/mm/sc-mips.c b/arch/mips/mm/sc-mips.c
index dd0a5becaabd..06ec304ad4d1 100644
--- a/arch/mips/mm/sc-mips.c
+++ b/arch/mips/mm/sc-mips.c
@@ -146,7 +146,7 @@ static inline int mips_sc_is_activated(struct cpuinfo_mips *c)
 	return 1;
 }
 
-static int __init mips_sc_probe_cm3(void)
+static int mips_sc_probe_cm3(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
 	unsigned long cfg = read_gcr_l2_config();
@@ -180,7 +180,7 @@ static int __init mips_sc_probe_cm3(void)
 	return 0;
 }
 
-static inline int __init mips_sc_probe(void)
+static inline int mips_sc_probe(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
 	unsigned int config1, config2;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201127083943.2666864-1-anders.roxell%40linaro.org.
