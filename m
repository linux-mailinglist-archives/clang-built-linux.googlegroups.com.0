Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBC4M7HWAKGQERN2L57Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id B4169D19BC
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:47 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id c13sf853948lfk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653707; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Yj0bONKrSADSn6c4WBTjBgSFUrHkXbjFUUu7zLjlnxUmRfiLBiXC6qnJyDhDV4dUO
         3SyBO/y81dCQvCvL1O9xMJVcJJvZzZT/840y19QyA8n06uYchHlrWlZmm7KRDkZaHEV4
         /kV9ydtWASG7Y5PA08jJIC+Ln9w/ov1zlcIu6G6eFeyGc+hmY1+uk6heNu9SRlvWSXIU
         550THpp9ChHMyDpams0NxqfrXwCPAsrOcSCGAaJ4F0pwpZTbQZqj2A8AaXhFwQZ4pBUx
         xBXKr9p1NkfA/rJXowtNUxDK7JrwH6fL4Kd1gju6jYO9xnBlEW1BzvJrtKIA4e0mHc/3
         ZBlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=er3sZOc0AYXi77wN5b9tbo5M03Rb95paC8rzRf1ZWKI=;
        b=WYMZ5gRDGp7tdAe0aiIThC40Vev3BPSrRig+0iXMvbYbhCU5sAGkFYlImkKMp+wv7j
         vbz8AipzuBN40Zt3C3jkt5P8/3o2ajtDjKAeNtY93sOhD1IPUhF4zDZGBSngfaR21+2z
         J0z9eDMQK79/eWzfmo28KdWF0/lnNJ0mgJzl2eeJGA4cSG/hd/2k+7AAv6250nXvamor
         7JfCsbn6VIt1qN8ricKrROynN4Mn74jFz58pkyzeqvuvb9sdHQxibajeWxgsGG8LmrUY
         F5ibtWcX9cDQdej+Bd2XWFY/NmWKUI8royCNJftZISsTCr6IAmQgW4dqrUPI6k6l/GPg
         gr8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pfrCF401;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=er3sZOc0AYXi77wN5b9tbo5M03Rb95paC8rzRf1ZWKI=;
        b=LDg1tC6XvmFzMCG0zbGRW+DH9B/bXAHuHB3O4lAYcJRxKuafpgkMR8TgwfJ7bW+/HP
         dZOknUpmACeFWb9qvw3+CLusqq4wUgyK319XrD2sWc+Ik1nAjF5E48BrsZEQ247KcxvS
         Y/lmcMbj4e2F3p28f7/IQsKT/ZkObtUtuS5qhlTjtcViprRluUQsP4ojicvTZbuSLNpL
         +3jZKmO+tiHw9MU7jl7abYUNjnLYBrNerFb6gXKAjaBFZ4Mp7gN6Dp32gxVgF8ReFcJU
         YMjFPNqr0AET+9HX+xezCnh9WNvlG/98Q8wGAHcN3kij+V4Nbmj6/XrEX+ZaRTeh0qP2
         /+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=er3sZOc0AYXi77wN5b9tbo5M03Rb95paC8rzRf1ZWKI=;
        b=hycYrSCBUac6lniMoKz+m2YUacS5huHn9fhywnXeuWSPoIgAUId91s4pJ9nFETwJ+F
         9aZ3FfJOGgHBf0rNb3/uGgB/aBD6F8AWac7jTZnSSpZ9BprXVXFGDKXAigOBzpJtq1lI
         AUz4sAwGerQ18Ls9V+wS8VxMg8DTIvqTIFZl9E7ClirkeO2asRMssQAVKroHuR/iw8e1
         MTukDsFJN8c+uksxsPQhqYaTeXnKTR6f/vR/D5yrdZtZN8oWXl63RtbPHWsNT/uf/n+t
         SeD1T8AgdGGQ20dZJkOCLXCIVZILREWmXu+L40+KsUgxamHGSV9XEeBTTqyHTNcDzIRB
         oFag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1YlKr4be+dZhzqQi15XMNcPGrvAFvE9/cI+/LaTwPTnuapMkm
	j8impx2UNEZNnJw6X7H1Wqw=
X-Google-Smtp-Source: APXvYqw6v9P3lbCQZ6xA4a4EdKAwa/4j0t0OEUA45y/BhqmJpPhIiGrVCdE/ul8jWezUSWQ6E1XBTg==
X-Received: by 2002:a05:651c:113b:: with SMTP id e27mr3462706ljo.125.1570653707336;
        Wed, 09 Oct 2019 13:41:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9246:: with SMTP id v6ls209946ljg.6.gmail; Wed, 09 Oct
 2019 13:41:46 -0700 (PDT)
X-Received: by 2002:a2e:9890:: with SMTP id b16mr3652957ljj.4.1570653706841;
        Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653706; cv=none;
        d=google.com; s=arc-20160816;
        b=EDWrckY1hcERIZ6wx+/8H23yINAF6QZfGrYsmwZMfdE7h7wdCPjbo6pvxX/jdaZE+B
         Tl4+1SyB6BjbHD8PMP7vR4DHvpkXznzvOEaKrUXX02H5RXrhntQs9Nt4YxFWfOc9/w2H
         aExwiWW78HyntSK9YFXVALVh36vyAK5ZVwEpX34Zt6FdDCNJ8dQA0dzDxqD+x86zUuDD
         HidSl4t7kI5i6kOtCY1f/YD2eLK3GpmtatnenHkq0xVdhQbBsjIoT6MY2SSp1KG0ZltC
         Hl4SrYXUTMXxMCRaoaHY1fKlVdv1r6FN1jfI21nwILUnKy3MYJB7LAt3PRV1hdbqLgqD
         kj+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Q8GViA3rslKXoIblVB14HOdim3G08AtxcYrIekVeHcE=;
        b=FvezA1bEQcVsmdABJnVtV0wmsAsKZBRjgBZr1BhwMae+wmgpiqKM5G97uPA9XsBkTA
         r1BFgMA+PQJ1F1tEsFHdxtjfODrq+DbKQdxokqWPYbAt2KSPX/55mQEoT4CQuDHS0To8
         g3uVB7Bb42okTq0/i464fV6u9Bi6jf/IUnDHrvDHP04SztFRhX2SeRQPDnKO2rPkvB/z
         Bdj3om/DAbsXlU31AmocNUaOO3d6wzLyduV7vXbbUsz5eLI3RodvGEdKmzAUEEwm9AGN
         cWz9zqpjaHbDIL+8IHQYSl66/AJ8UUtXrc2bEELmuP6V5TT5OpSsYCGeSyfLJL9hcoT6
         S3+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pfrCF401;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id q25si278877ljg.5.2019.10.09.13.41.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id y23so3846119lje.9
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
X-Received: by 2002:a2e:9890:: with SMTP id b16mr3652941ljj.4.1570653706617;
        Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 05/15] samples/bpf: use __LINUX_ARM_ARCH__ selector for arm
Date: Wed,  9 Oct 2019 23:41:24 +0300
Message-Id: <20191009204134.26960-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pfrCF401;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
set selector and is absolutely required while parsing some parts of
headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
retrieve it from and add to programs cflags. In another case errors
like "SMP is not supported" for armv7 and bunch of other errors are
issued resulting to incorrect final object.
---
 samples/bpf/Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index cf882e43648a..9b33e7395eac 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -185,6 +185,14 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+ifeq ($(ARCH), arm)
+# Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
+# headers when arm instruction set identification is requested.
+ARM_ARCH_SELECTOR := $(filter -D__LINUX_ARM_ARCH__%, $(KBUILD_CFLAGS))
+BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
+KBUILD_HOSTCFLAGS += $(ARM_ARCH_SELECTOR)
+endif
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-6-ivan.khoronzhuk%40linaro.org.
