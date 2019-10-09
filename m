Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBEEM7HWAKGQEAHXVQZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE81D19C0
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:53 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id w10sf1642663wrl.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653712; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/IwSsVgSxewRSWRmNcxf8JEWbQN1pfYWcp4ryhJbQjleSX8bHbNizlSwkZOfgDYRW
         JzlH0JIlP9xqVSqYavDwbHh8CLkGL244xQJl4AntzLPsMLSWv//abkMTKAEE6bxhZYhu
         Kb5gL+dZUEBYsIdx2YPsLeOobqRZjCPTmZWeiW04SNOo8E2Nc3iy0dkYt47fPbzUyOml
         DQuiwKggsnqJIMppWZTyabzCqdNi4B7qpvEhFKEwnmRfZU8hDGIfHDJdWfRVyMG0ASGf
         rXsmPdDREweEtFcY70NfrOdrVAaWvkM49PcZzomMroZvfL99/c7DRxXFJjAIDhNAFE0c
         ZJVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=k95OIGVHzmxIIf55pLUbLEPrBx5Qr6NxWZtOSNMJYNI=;
        b=LZKRJx8IUVmTtNLQnNkIlmlPGElZ54WB8iXVHqPztqwm+5Y0gPHEL8aIUKoKnaFkhq
         +R7dsYbRmJKCQLv5BdsZe3UKYy/KsSwTGNSHTZZQXzY5ju7WjxZUiS3qETq1CSrDfwT7
         L27xy/hi6e1C9XXpG2rHtBxlPxiqdp+8AbnC9ufoYsBfhonlXKummW9DzBnk/zuFziHp
         0OmVZ2fygoa0Ar6Da1opmUBxPX92YYSzBO2XY16RT71o1X+TIUOTC4KF/Z38u4OvP9wX
         60rJp3IUbb/IFzPdUchyO9+aqvCYm4lhKDBnZWCQT0n6n1Db80dkHSlkf2V6lqWblgRN
         h5ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XKt173H8;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k95OIGVHzmxIIf55pLUbLEPrBx5Qr6NxWZtOSNMJYNI=;
        b=K09JZly+4FMtylH0iswlIvhxDu2fRt9qWu+pui01pVrQJhA163svRFii5yQBn2guds
         IUTbRQLTXyD0Nsbx+C2Y2hVzf+WU/psS8WbthDxkiYvT+ikXqasKmHZIKnrCS8faae1l
         Yza9DUaGsm5vUMNtp7RyQd5BzM/lQHnHBYZdxxSteVzfxPlksU6I1VLRsq6+WXdpfuYc
         WuSw9pFFdrNtEEoQoL1KMUBI+z3s/xml6H4HvqgdpcqHKm3MllEdRQ6euhDlF+RWo1bf
         cVg7XQSELfl7OYxB4jCJXX2GxRTIXMbnC9FDvbd2wfzogH/z3jst2Ia5fhsHBB/9B/hi
         BM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k95OIGVHzmxIIf55pLUbLEPrBx5Qr6NxWZtOSNMJYNI=;
        b=ko4T+FIwHIT40EX6BJBDZBdF96yvZ+Nt4KWS04vm8Y2OqEkMGkjY16Yku4NALD+oHj
         bG8U+A0bgvg/OKtGrZiD5FD/5v2wYO2woLpg52a+JajoU3JtAjzxBCokSQkPg086U3TZ
         87+infDBtOMw6jyIREnV5gJ5NUOxPuoQoPiAzQDt8TX3E7Xvx+cOXEY61MaU+EgM7TQO
         CEtWkZNtbZs4bf0R6wGK8dImYp4tc1lHxZDqfYizYpDX/sB8b9bOuqr2ggiA7A3EVc1G
         xl/A1VpOPULywPfUogZHRKWPHFzW5wkdVaFnKN0eIg7rvEWHgnqtFWm6KpZotGkOW0Us
         6FUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmCTJVInBwmyIGkOqTIKnrljvtccpDxvwZ1adUjtOlEv5zUMXf
	KCZK7YunIdSJjT0sDdziZlM=
X-Google-Smtp-Source: APXvYqxmGRBI7fNZZDe52RJR4xe1g6RimvBqPtLbj7ZZPXdDT7L7E6ckYsOjVgtJ7rrfZGk/fuqABA==
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr4210073wme.60.1570653712835;
        Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls579966wme.1.gmail; Wed, 09 Oct
 2019 13:41:52 -0700 (PDT)
X-Received: by 2002:a1c:a651:: with SMTP id p78mr4196333wme.53.1570653712431;
        Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653712; cv=none;
        d=google.com; s=arc-20160816;
        b=G/08O7Ab8q8elrWudTspVlcU14I0currEbAkrAV3uvWxtPOE1HduIcfBnAOhHEtT0j
         sumK+FfAk8oUWyFTYTKWdg5cXs0ztNatCTPgGo6QW1OeU/jyxgyFFL5sGMfJasO2qogI
         Y4dQ6/sg+8cV9gE8eXIYvLOcOzZHpBKz44oL6pNXuZ1ZGhoUXTd6qMEyiKwFjHFQkGRG
         SC35OaE/6PNse/JvkMdFjILknij8pBk6tNDUnNSVF86fHfWtFgvfxlx+ShfMnPV7z+q5
         Zt87LddUtHjoQBX/J1RRm/vSzkQO3M/hP8nf+Ydvy+VcaEIqs6YKIX1KbNoy0iEI+y5O
         EH1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=OsXgBugq9yBTYp2TWj7gghCrTtBB47X9YeLV9E3YhNo=;
        b=lixXRXUitCImcXV8uPzI9BIpJReXAmPuXd9fTWh+MlmopynkNviZyL5jjzlbtTNs3M
         BvHpL8PbQMk25GDjjv1PjF9/C03cFn2hej/I2rYK4W3t8jNEjhlGEI1+BB8ab0vIQkKe
         rD+JkigtQGUUMEslkgFwY/7sEqKwJnpuCQcioP7siTXiwRcMNJ6xcOAw44oGFZSzKJn8
         638rT3wjTEANov0wz4YOdXAggRipRax3Ry7HH5GGk42ZconynpaSjlCtjt3R8iy6vIoT
         CgV9Bv879gd/w5XPItE/zTW7r6MWfKx8Fp/JTf/gkwD55lug2nAGiXLGDk3HgVrRjA59
         t3Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XKt173H8;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id o10si257675wrm.5.2019.10.09.13.41.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id a22so3917051ljd.0
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
X-Received: by 2002:a2e:9958:: with SMTP id r24mr3544709ljj.61.1570653712166;
        Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:51 -0700 (PDT)
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
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 09/15] samples/bpf: use own flags but not HOSTCFLAGS
Date: Wed,  9 Oct 2019 23:41:28 +0300
Message-Id: <20191009204134.26960-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XKt173H8;       spf=pass
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

While compiling natively, the host's cflags and ldflags are equal to
ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
should have own, used for target arch. While verification, for arm,
arm64 and x86_64 the following flags were used always:

-Wall -O2
-fomit-frame-pointer
-Wmissing-prototypes
-Wstrict-prototypes

So, add them as they were verified and used before adding
Makefile.target and lets omit "-fomit-frame-pointer" as were
proposed while review, as no sense in such optimization for samples.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 91bfb421c278..57a15ff938a6 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -176,8 +176,10 @@ BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
 TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
 endif
 
-TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
-TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
+TPROGS_CFLAGS += -Wall -O2
+TPROGS_CFLAGS += -Wmissing-prototypes
+TPROGS_CFLAGS += -Wstrict-prototypes
+
 TPROGS_CFLAGS += -I$(objtree)/usr/include
 TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
 TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-10-ivan.khoronzhuk%40linaro.org.
