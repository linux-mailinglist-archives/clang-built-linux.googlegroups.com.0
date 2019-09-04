Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBN6WYDVQKGQEJU7ATHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1BA94E6
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:03 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 19sf117756wmk.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632183; cv=pass;
        d=google.com; s=arc-20160816;
        b=De1oURw9NB0x2ww6XcVOk262Xbrvx8lj+n8ZP6fOZ7hZ4FvXnPj60wbPH5SwmhsKYd
         EI/u3KXqbjYbNPY85/Tw88IiWwI+/G/z102px6D7whu/K0Ziojy5abN9r/3L3PK0Cm3P
         dEvBaeQQ6Xg22CxTJApneuZcAlwlDGeVXApJ9t2f1HMHX2h5xfsBjRXeqbqroWFJFovc
         z15tyWg4hEJ7/E9Qlws7V3uZtEZYriTKFpNHSTs1qtUlub8X3QReQcBSIu06i4ogDf2z
         Fb/T4NPE9Gp+cxrFvTEoZX5EZFSdsMfDvl3R56086kJa+0d4WpHW4Pw2YZUE7TmNYywO
         Kj9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=R8Z1kmym/bfA6y3FP9pzriP+4EJec0hyFHYYD/WXBRI=;
        b=WKEj928G4pGnjSck31tHHzXR5+aauhY+gA1/dlHMtKu3BgTEqZISnumGMV+pu93lGi
         Ctxewd32/UWEtKQK0rgSK5nrWEg4ANbu1ZLKm7kA9DyLCh4wPofenVCkQGgArTCDj02f
         Sy2h0kB9iYcam8PoI7jEQYD+rx5247Ezc5Daw8ovjxgIEFDFMr1S/nlFEwbIszy2I/jC
         kiGrQkIjFpCsTHTyc3BsN3wN3n6G4viJY30Qt0BComKfHH9owkBCwCj+RXxq6mYssB5o
         +w8L6UKCHhc7q2DBCOooco8phFq5aqfk7PcVPdRbcEZZLjZ3mcs2GOqFh+8ED7y06uUj
         qHjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HEvKyf6h;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8Z1kmym/bfA6y3FP9pzriP+4EJec0hyFHYYD/WXBRI=;
        b=ItPMhh9umvghiF6/TH9uMPAJGThNplKDTR7QlUKZt4g1+Qod5wjScZC7GPM+AenURX
         bCphhhiM7Z0L7sdKWpHJPewd0lnaQWz2RIF7k+lzPjV5mk4dKuNePlS0Gcn1m5nImlBR
         iXI4dIX3eKHdt04kpW5IqTP7Si52cbgSVxX8nHEZ0o4i7tiiMvHUCzyhbDAR5ezV7PWY
         BN84Z/wK8Ar7P5YynUWQrCVG02vT5MDL66iKjvlR6MHwuwWo4NmDy0bgRwHGt+WVScqe
         pjcXRwnBkkv6pfYeIkfYILejYmA2Lh/y4fr9vqxQoO3dwy8qb3391NaFjYYtHgYdOjXK
         opnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8Z1kmym/bfA6y3FP9pzriP+4EJec0hyFHYYD/WXBRI=;
        b=T+fywZJqXdEZL+exq4gJX7JsGu+twY47ejnQJ/RZMjGg8uqHeVnDBzyNa65smSydIK
         4rf0qiGJc6SMBW+voeNBfyHHYiHn7i0S+orgvqSKGGI0j7F7DJuKiFaw+Bmuamkbo+G6
         UkQmlebT44RikW6zSaxzU8nJX9SFBjWj2QhgFl92FOXGUJ/tPtiCnWNdhyC7DO/Oqn+8
         MU//aWvybbkZrDimC677BsoCJRkjmFKTV3h11cCitZQvoh8gIS4tXQSa1y1h2kwLtBrD
         ITATsN65gjHfhJB2JLb2fVh7XlmhBb7X0fWczu7V2VnduJyiNzcfkaJA8JDEYyM3vY7a
         XiOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNC14jiLLdVVrTT7u/tvr7QxgU2CwM/EGwWh4falrWirpGj8Hz
	MZfA41+ncl2SGhZ/cuOk8Io=
X-Google-Smtp-Source: APXvYqxxSBATcn4q9286sP6/84pQqXzbk40JhgjLUQGNcbckS8mRZxuftnuF35ujtZtLV2Jz4av76Q==
X-Received: by 2002:a1c:7f54:: with SMTP id a81mr250703wmd.100.1567632183082;
        Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:550b:: with SMTP id b11ls2663252wrv.1.gmail; Wed, 04 Sep
 2019 14:23:02 -0700 (PDT)
X-Received: by 2002:adf:d187:: with SMTP id v7mr519623wrc.33.1567632182655;
        Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632182; cv=none;
        d=google.com; s=arc-20160816;
        b=oujqrTdmEZmObWQZh51QG8Zcnc5kK8p99xThF5Poo3+EPibLJ83MweDiFZWjO1V+JL
         MUG/Nor5at/XgJMFsSglFiF6hDaBPgzxaIAMBZpFnj0acqGhu87r4Ul7eFbFA73r15Ia
         72DXpWWN5qs5OQL8ywW+bT5R5MnxnSV/NUDeWANpUQnGQ9FuQKk/qM5K45F/Dk3+t0He
         Pa3c3YbK8fT8skZXP7qRkajVjulTCNnBG4NvZ7RclsvNXhA7VSm0ofsLNvfe48Yll/wo
         FpSeyZQrJEfs3wcxz6W/ni8uEB4D1r1O2x1XcrvXeaRv3prBsif8FPlY7XvtiAeBg8GF
         tc2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Uyna4IYOJol121SLmRwAZvx/NaOoPDVjYK6GTYbGUpc=;
        b=X+gjkm+dXvU5HoDDB5EnOB9ircTkOftJ2H5rN6KTct4EzNTKePQClz4TJEXpNcYZFv
         ppG9596JBDMaxD0e+eAV7m3Yboy+ObciMtoD9tTr3K4sSXaGaJtzQ+IaEB1ETeB1w+DF
         T1kGDXLtbGLyRT58LAqXtdHdyZt2+77BXCePiT/w7uoTQJL/v3WAnENitYpg4wuh5vhk
         BIenUr/wdJ6hw58aicSEPFopJsBokcpfJzq512T2h6be4a28mpITafPzEC5bf0LDONpW
         KUFWav0/QurzQp+MWf7FS1DCAWosdOnaRVn+faWqYr8OWXiarMOreVcmMND6hf1Z7MiQ
         OESQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HEvKyf6h;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u20si7702wmc.0.2019.09.04.14.23.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id d5so164594lja.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
X-Received: by 2002:a2e:93d7:: with SMTP id p23mr3270338ljh.100.1567632182383;
        Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:01 -0700 (PDT)
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
Subject: [PATCH bpf-next 1/8] samples: bpf: Makefile: use --target from cross-compile
Date: Thu,  5 Sep 2019 00:22:05 +0300
Message-Id: <20190904212212.13052-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=HEvKyf6h;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 1d9be26b4edd..61b7394b811e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -196,6 +196,8 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
+else
 CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-2-ivan.khoronzhuk%40linaro.org.
