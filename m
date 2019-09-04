Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOGWYDVQKGQEHUV5CIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AD9A94E8
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:04 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id m81sf17168lje.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632184; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAYiYxDXWFftNknEcPUQICAwrDr9qzpRNg/HcHMU2CM4gRtRdGe3NTNP6RR4mt1p+e
         ow9Ukk9pr7aWtxu4eOc2uBw+YaN1mDkdTOnX/8KaQ1Z9qMFwh8NADR7CudACtKerSSoa
         c6e7A1qdbYihMA+wHTMNx3ft1FGuZgN/aaod3W6UXo3i8w7+3mNHUGB8KUR8gNiQIHvF
         nUT5Jyw8rbS54Eqs/61iErH81Q3yx1DdCvXdEBYJ4NrURPCD0mWdijE3xoYUeQqOYj/X
         9nwB35bdxxbagoKvz5aicNFK8Fg9cS6BFnch7vSQj/yNn54rwNgs1QKOIya0ozCNDp2C
         3pOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=pBWGr1aDo3yLOkjLH+JOAfrEwAoOmFAvab8nnvDBoZk=;
        b=lUkz03FAStOvnsoi/74uNe9B82w748YG2CKXoXHULGuSJk8HAZx2VqFDZpf8kOV9Vg
         +UvDZYCo3ADkbMSa19yJJTglqfW0TNfKlaNtcDFhL5OrDB9R+vSSS7yISMP8wabXeLX0
         wruNMBPAc1FIBxnbvg7XrTQyRiXJ7kMkpkSkA73zQSkbk3O1slCZgQaN5KkYyJALlORT
         zJVoC2tJqObRo2S+/lDE1Y0EgNNMJ6Lpixet+LDH/VUWZwtzV5otcoJUko9N1v3evoFc
         dhXSWfboQW56YERqApAGxcwhixQkRIHvBd5us+MQHSTg4E6K82i3Z5pwA7r7MXdSA2Eh
         haLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JxOWBX3K;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pBWGr1aDo3yLOkjLH+JOAfrEwAoOmFAvab8nnvDBoZk=;
        b=JDRrzf7UKzNu6qE4KjvuzAom2efd3iv4e+L1dFmPjJ++1pawSQ9Ic0+p1o/p5X+Edu
         8VWYoIS3zOhQCvfj5O0obT/CFU7A4fM666ooFZ2tIeKvm/epPUwHQilx1YEOhpWaeuJ1
         tYdIJeM/yv114ZJ+lgNrR/7tJaP//Bhg5rtMpiEjX8Mz9QylfQjrEktWa/uFLqoVB0mN
         IME4ZvvEBJMJP9xnxsxizQeIkJZmMOM+EGIyq8OBfi2A8kphmgO8CA3W4rahFMA7Sstu
         b+HjMHr8EyfBT0nL7XRe6kHZ3oWIJpIzGKyXj4B3rIEfCm+q8PcJuRE2dawedDxmooAF
         xT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pBWGr1aDo3yLOkjLH+JOAfrEwAoOmFAvab8nnvDBoZk=;
        b=uC08T4zEkaqXBy9/whzBMbsWJCRxlEXUQlDKGhfnjfBQUFnIKvcqdle0CJGpezk1KP
         nMvqxxVpYrIDlwxmrBcAe+LTnHc8X3yFCSqCzuDbqY6z5Mfkh52ygP36Nx5j3dxcv0bV
         itLV8MYW40mzpLncQR16267GsLaCdj0QZPDWhr6DT+dZzHn2aaPMYqYR0sfxmqFDZ+yW
         e2U6f8BOR7x4lV1VQXncsLw1gEAhYSXvUvxPZlWO9X5pMGs4NiH5Rr4xznQAOK/QD9AL
         lLcA+g0m2IiBExtGAPqjcZfWgjTUX/3GQ3k3B+JReSdA/iSuqEXsfNt6yTJJjP72SfVu
         Vo3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUJeg447stQNbnJlFuTzTMgfQ2KKc0r7TwiHQhc3itDqdInMFk
	NYQpgu2/wLHadMbh32+Ubeg=
X-Google-Smtp-Source: APXvYqymI969nx+NhPnTI+KD/YUNJqyzW/jBQLfPDV+SSWwJ2q/vV7ECufokSUb8tGKYPeVaTKWm2w==
X-Received: by 2002:ac2:47e3:: with SMTP id b3mr132246lfp.80.1567632184368;
        Wed, 04 Sep 2019 14:23:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:860d:: with SMTP id a13ls2565043lji.4.gmail; Wed, 04 Sep
 2019 14:23:03 -0700 (PDT)
X-Received: by 2002:a2e:6111:: with SMTP id v17mr24187256ljb.30.1567632183883;
        Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632183; cv=none;
        d=google.com; s=arc-20160816;
        b=fE9d7sMRiX99NVETEPeFsmvR/oV1VnRDG+VPGjNMOiffmshLpV9eOe7eXpwoEJNq4M
         XXEB/cpukREx5ED4gp3FrQUrFeLcrb5LvUSPXUzQsJpNHX81VqjlXasZdOGxBivvp9yF
         rFm3dsQQedg/lp+cpMeSuD9qT8wSRQOfjU3UDIPEn51s9jOkP/5Z3/WPRIvR7b9JFVXH
         9OAXOwt3pREIGTPuHF182EWaUhvI/7oLcN0x/kq/pZrNY/xldJIJMvrM443jaIHCIYPD
         cY0TNzoPLbytaJc+0cMv60bIVJeM1cafSkUNS4FE3QK7GXmDD5vPweusl8UmCzhroW0A
         HEXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=1A0DTH8yoCPJNcxERaZ+ijIkUOQqqgHSIHaATGrPTFQ=;
        b=S5uNV9mBnxIXHclXyD+ytPLnPUU7ywXhWrbL9ZVgmXEXp8uDdBmd6m6ruF6fB4JoVb
         yjRzwuD8/UYpbLTPhxKps2xKfKiZMRK9F3Nc/Giebq56OUwuy526tu+rIeLhvj8ZsFsB
         yGhkjvToGFpheF7Nj+MyzfAwkSzYBH68kujSrP7F9goDDPTyQ3G++5fL0lyOcvehhvO1
         4jRlY7nYhDNMA7HLGUbN5OGZG91+KSri6qCkz/e4iHOoRaInwGzhuigL3JM3PmZYnCo8
         UBMeARKyAwHM/5B9jNTvkMhHueXy9Y8x6uUdE1UdM9xOayJ+CuV93uDbDyOaSudnjMrY
         QkSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JxOWBX3K;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c8si5504lfm.4.2019.09.04.14.23.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id u14so158293ljj.11
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
X-Received: by 2002:a2e:7210:: with SMTP id n16mr14294364ljc.235.1567632183622;
        Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:03 -0700 (PDT)
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
Subject: [PATCH bpf-next 2/8] samples: bpf: Makefile: remove target for native build
Date: Thu,  5 Sep 2019 00:22:06 +0300
Message-Id: <20190904212212.13052-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=JxOWBX3K;       spf=pass
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

No need to set --target for native build, at least for arm, the
default target will be used anyway. In case of arm, for at least
clang 5 - 10 it causes error like:

clang: warning: unknown platform, assuming -mfloat-abi=soft
LLVM ERROR: Unsupported calling convention
make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
/home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1

Only set to real triple helps: --target=arm-linux-gnueabihf
or just drop the target key to use default one. Decision to just
drop it and thus default target will be used (wich is native),
looks better.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 61b7394b811e..a2953357927e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
-else
-CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-3-ivan.khoronzhuk%40linaro.org.
