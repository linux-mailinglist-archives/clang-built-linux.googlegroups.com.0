Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBA6U7XVQKGQEJTAHIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A60B38B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:59 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id m6sf5382551wmf.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631299; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHSjZ8r9h+Ads3UhlG7uvwtedhvu3qjPh63Ci1r8cRw/++n7K+D++lT3V/02A+9tIC
         kvy4BvonG/Eo84p2AlZtqDWPub0V7LRPrQGYAEfYY0HowhgAtEDty9yGHK83rAmoUvGu
         xliwZg1OEbhYIkjI9dnN8WElyGPF4wDsdpsgauhoMTqqUiVghgSYZHy5XDxDcf5z0jRF
         plvxmPCy8J2QUtMQs5KwlgJkofprpKFDNtFK9CeA7cGMA8mRlR2XA2Z0dDqUJeHMJ/TO
         LQ2hKzwjlzaTl1Xly0hoqJrEBuvzdsIh612YQDnQlRg1VMuLISRMUvIwsHHrxkQYkhsG
         fiUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=FKkEYeHlWVcGIc1rhFQzvzJcCKWBpMWrXE6iZZgxdgw=;
        b=AS7EKQjyDh4Mn9aArZkZzTXfKZq+aufShLliOcjcJqvT8306MuMKaup3rjvmEGql6J
         PXwCnAfKWy7INTCzWbA6EYdo3DpSIKrfLRNUCfhQL/RhSr1CUsMwm3SbLx641k8PnUez
         ts/yWaiBTWA8R8JSmYJQwySZY2RAA42sn0F21L1WzT7WVcip7KS9JffAxFIHZw8PbBP0
         sZrpiBsQZKBe8a+fYI3HE4P0B8opYvhX9l+8nPPJ5iJRcawZ3AtOT9cvON3XkQNbJ50Y
         7hfoK/Oix0EkCfC26dINqkLf0jnW1eK8Zbc74c+7QVHeEwxQAui9uHavUmQx1sdEKKgJ
         XfzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MhheypW2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKkEYeHlWVcGIc1rhFQzvzJcCKWBpMWrXE6iZZgxdgw=;
        b=IGNkCOkUVrVZ4wN6KUTD1f+KoaD7x0Ca513qTK2pXzGXa70HhRxIa8GbsTT8FQmfyI
         VR/9KVzP9MMSOE1bAmj8dMGIUzUO+ec71SeERKecl9UNQ8UAb7HsGX1CB9+CnG4G7TWv
         YN5OR7+pefJTFsDAMEDg2zexvqcHn45Rj+eVgfftuW+8h9tCHwowjubKccnJtLCmv4WU
         GUaBFqIoVFjK7BN8gaeFm7yVO6YmYBUW5CcvrnsDIRz8/2VfvUxJdXYsPFN2LovjAQJn
         LAAq7euJxpC/Dq5F5mAAT3jXweLvO53mb/scU2HvpZrZ3pD5Asvb9V/LHkEIA4eEerBQ
         zoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKkEYeHlWVcGIc1rhFQzvzJcCKWBpMWrXE6iZZgxdgw=;
        b=ibl4Vhsum01qdbtynns+2241OzHj4wuOL2tgbgM16AfkYxYMOtz+HbXakOi19oQR63
         hf27Gx2DpvLNp1+rBUKcBR+74EgdZgej8NC9bQfSHJa9Ns8puTR7CYOPUdzndKjl+z/o
         hTveya8hQI8sXBHZ+Yyp7RaWVBOgbRnmR6ojNpPps75zJQ5gFEkrkeM8fsb3BDv2hl+1
         LjFHke2MLFZ1AsTHMe7HtvBEOV5n/ReeciUOmV/c4uiU3eetqFKUaOzZ7uzMlsHHVLdc
         fIRPO7FYuxCCKouWyguZQqUs7NiErxKFvshjwvoA0Z0L8AhtwuyUUew8wWepLkHyvkXC
         JJmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlw95h+kAHiwvQ/lgz/+jZ8TlkTiIMlAeFBYu/onHTPDOL20kw
	tN7jp8Vtwlr4ZPK6JMoc3M8=
X-Google-Smtp-Source: APXvYqxMG0Bq27qmNtuVwB3mEbERyXka0TpoKyHgFX419HfuXFSOfrqI9JIPaQ+wB8k6DTqd5DiSYg==
X-Received: by 2002:a1c:23d7:: with SMTP id j206mr13492391wmj.57.1568631299111;
        Mon, 16 Sep 2019 03:54:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6889:: with SMTP id h9ls1096225wru.13.gmail; Mon, 16 Sep
 2019 03:54:58 -0700 (PDT)
X-Received: by 2002:a5d:4646:: with SMTP id j6mr935909wrs.173.1568631298739;
        Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631298; cv=none;
        d=google.com; s=arc-20160816;
        b=EWfXx3J7LvVAGlL9Ovb+2CUwln6eqvc9YQ80HH3rxcjkOXA+GvuZVe0r9QoyB0AmRa
         WIeOf3M0UB1fhTWWIDTvNkChYEXa0YTl/C/dKaUnwlkIk7YehK3apVqiGk7O9+g9d+jm
         qlk7ClgD4c9rpNDmWHgKDYVgtcqyr2vasXP0lUDAX8kwE8EQh9TkWri8EAhaYMsYGkaR
         aaS+NhxytV+ed2cJXuso6ZymPVHh4Za0FfQj8HAZc0e3Fu/r5MKOpzmSahWe8Iff1X2O
         P2KEq2BkkG4i8BCJ27etcAktw3uXavdHnh8bgj4yuZGIi+kctKZauxzYocyb7/nW3Yf8
         a5tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=sLN8PEIzdXJ4vyRQJpg4LVfYYRixS2x0Ts7jhtzHOWM=;
        b=fLjfCrAQDJgOyx+6a+EfaJlv6Po6xaLCZvtdqAvi7iX5HawwzL+52+ICeMDxLHH9bg
         Jspl0+RI8yusePJOG0XIoCLnnuFBVy9jiWu+ociPgDH9+gdttkAS3ffner3p8rf21rjv
         +HhthkfWO4Rbqu940rqUR/mkZ3qK2BnbRrKQPCz7yhB3gw8dZ+pl+bSZyn55pbXpjfot
         pfs0JxDdbBBOa1mxc0M3N5yuuT5rUJZ9wXAypNsJJKyr6tbQxiUu2Q45z7O+ZwM/ANaP
         cLFQSILBFhBjwZ9djru+PMfIGV0238avFuA3vM78xlt1Tr4tEcYHMzFiXgzAbR+PvLtR
         0n4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MhheypW2;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n16si712935wrs.4.2019.09.16.03.54.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id w6so27101017lfl.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
X-Received: by 2002:a19:4f5a:: with SMTP id a26mr37493210lfk.116.1568631298482;
        Mon, 16 Sep 2019 03:54:58 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:57 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 14/14] samples: bpf: README: add preparation steps and sysroot info
Date: Mon, 16 Sep 2019 13:54:33 +0300
Message-Id: <20190916105433.11404-15-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MhheypW2;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Add couple preparation steps: clean and configuration. Also add newly
added sysroot support info to cross-compile section.
---
 samples/bpf/README.rst | 41 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index 5f27e4faca50..d5845d73ab7d 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -14,6 +14,20 @@ Compiling requires having installed:
 Note that LLVM's tool 'llc' must support target 'bpf', list version
 and supported targets with command: ``llc --version``
 
+Clean and configuration
+-----------------------
+
+It can be needed to clean tools, samples or kernel before trying new arch or
+after some changes (on demand)::
+
+ make -C tools clean
+ make -C samples/bpf clean
+ make clean
+
+Configure kernel, defconfig for instance::
+
+ make defconfig
+
 Kernel headers
 --------------
 
@@ -68,9 +82,26 @@ It is also possible to point make to the newly compiled 'llc' or
 Cross compiling samples
 -----------------------
 In order to cross-compile, say for arm64 targets, export CROSS_COMPILE and ARCH
-environment variables before calling make. This will direct make to build
-samples for the cross target.
+environment variables before calling make. But do this before clean,
+cofiguration and header install steps described above. This will direct make to
+build samples for the cross target::
+
+ export ARCH=arm64
+ export CROSS_COMPILE="aarch64-linux-gnu-"
+
+Headers can be also installed on RFC of target board if need to keep them in
+sync (not necessarily and it creates a local "usr/include" directory also)::
+
+ make INSTALL_HDR_PATH=~/some_sysroot/usr headers_install
+
+Pointing LLC and CLANG is not necessarily if it's installed on HOST and have
+in its targets appropriate arm64 arch (usually it has several arches).
+Build samples::
+
+ make samples/bpf/
+
+Or build samples with SYSROOT if some header or library is absent in toolchain,
+say libelf, providing address to file system containing headers and libs,
+can be RFS of target board::
 
-export ARCH=arm64
-export CROSS_COMPILE="aarch64-linux-gnu-"
-make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+ make samples/bpf/ SYSROOT=~/some_sysroot
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-15-ivan.khoronzhuk%40linaro.org.
