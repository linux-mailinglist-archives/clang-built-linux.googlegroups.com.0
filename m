Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBLEZ77WAKGQE46TQ33A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4BAD35CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:29 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id 38sf4646235edr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753708; cv=pass;
        d=google.com; s=arc-20160816;
        b=X4UNAxTj6zKclw2qdsSXp6l4kDjxBlTqnRUO61WcgfGDb8BAO39//VH9dM2CsAJb1P
         Sl40LsDt/3LxWLwhsVPMezYCGC+rQE5vDT1cAXb8XMPE9XuthlkWOrENkpjcgUhLzYaa
         rwXS+75/14JX4+6YaVPR8aiPqZ0z0NnNP8b9tmUP1XScxp+dq47ojGHi6KbcIrYHmHj6
         uAimXCK/DIbc+fTlbhBeqDsuoX03lxFi0S7aMh4GP2+KNldpCVd36KrjZ4+zd0VBznku
         KFMva2TEquG+xqhfpgTF4hZ7gknejoUQTNo4JbIODm8ALvRvu6keF/mErGstfhU5NZRT
         45CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=J2gysZ9DfzK1gDEoNa7HR9tl4LFix6rofKAsRH8KQso=;
        b=Fm1RaJPXLFN/l4M5Q/8S7fmeKK7iFjv44VZMxUbIhoOjQgtCVEfhelrUhNoytxhPoq
         sYJud4AXfMcIUsQDlyiru5HwKPvOwGZeZs2Ndj7825Wr9HKHXqXqy/CZGKWDdu0lrUND
         AWl27R+G2LIo9myGpp7bsS8UtZD5OffgtYrzbdKRmNgPVIGoe8l+Gg+3RLkknTAU1huY
         JO+APPn+8mO+E660wxmCcTcDshg6RqtQF6mJYX1WXj1PR3NWVU3SIVGQ7F7iywRt1w1x
         phAYdGqsdzofF+8RtwTMCSn7Mm6UGe/zV7C5RVNKE38LhqIj2X1j+guJc5xTVgcYMk8J
         uAUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JiDnktEV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2gysZ9DfzK1gDEoNa7HR9tl4LFix6rofKAsRH8KQso=;
        b=Ph9h/3O5RWJPOnzgaDy5u3qhy3amuMAxJ+c7LOUOvnDylv1uTxYHHn+I6hMm6dqk1n
         kYjS89Hjli5zeGTLaY5mr1QglVgfwY5vnu7t3AkazeqoH7Kxpll4ncmPc8T2wLhqm3xY
         27IhtUUbl23BtSos9zV1NXxRFPlIGecxxy29bLlmrtHt8eJg9UeZ6liSz0ZjIFGtKU2f
         ZPp9EjvjyUtBZGbLOCkF0KQYiLnGKSr0dWu2A0RQeua8jdXw2wV+9nink4ZlEwbNuZQ5
         ZIRC6F9LAUB4I1sPxNgPDgrdPmufUfF7q+NCH7H4Zb7Sul6WsekRX/9Q+HI7NuNQJ4fP
         QlQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2gysZ9DfzK1gDEoNa7HR9tl4LFix6rofKAsRH8KQso=;
        b=snl2L/akrvhXE/lXnxrSGgR5pWl2Hc8c6LIdziKHu2tvHo1GwM/O3HpofV0GxsKHhT
         P6ZgmV73K/Tk/PfGXlR108KQnUBM1+WRUxpFDLD7tZp48nuyuK4wpQVCKRaDLVNjoReg
         z67I0wnfgMZh2GdYm8QmwIq3xZrfhbh71cEeJIOPsEi0qMnhs1lutor/O+jwoget/uC4
         7eyauMUgh0JXMrbLWPG3/qJaN8SV1o1vM5Xf2gsoaU+0xWAp/jM9PqP9DxmbZ5Eeuv9V
         S/QPmwzUhofooziAIbAonH0kK0wrnbg+4cZQnnkW8MuRV5kZA1Gchu3wBTsNnn7AOEOQ
         ev0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDua5v4Cj12gHzVXXzfdADin1g2lmZn3dD2vv8ZNpISQuKl/Mx
	IIku/GwhULsFpNnPL2Baf1I=
X-Google-Smtp-Source: APXvYqzAacujz9qmXvjPMOm7o5CoJOLjR8lal3BcJ5D4Asp92sQD/DB0Tnctv0pO9ArpgIwomo8ijA==
X-Received: by 2002:a17:906:8608:: with SMTP id o8mr11148355ejx.179.1570753708728;
        Thu, 10 Oct 2019 17:28:28 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6957:: with SMTP id c23ls1452240ejs.9.gmail; Thu, 10
 Oct 2019 17:28:28 -0700 (PDT)
X-Received: by 2002:a17:907:429d:: with SMTP id ny21mr11299310ejb.176.1570753708305;
        Thu, 10 Oct 2019 17:28:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753708; cv=none;
        d=google.com; s=arc-20160816;
        b=c0PaGHzRN5GXMPlpfuqjI5dFltkU0pxhnEramghVMfo+vPVDN9H7gzGSUdkIC6mmn0
         LQpS50hO3OfUgw7fyjCUqrb7jOcTtrXl69j4afJDX27+qapSNe5hVQKAJy7h0DKvs7Bl
         8T46cv2siIVRyrnpcvTT5eGj69g76hlg+dsHY/gNYCnfEQ9rGup+ww44uJ73Njk/BUeA
         QLbyqe94VsdOVGKNUpazUvP68Ly/d/mAhIEJBxl1/uE4PHNhcmFmCxXj5AMWfAfrOowI
         O0+GIHWesargbbd1qMSO79JH8GQWbGIqEN9jDv3+1zqvW+PD5iTJg1w94iL3kL6LXhPZ
         s3lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=dRRusRl3mddScRkdUTvMTuf5U4XldYcoWbxA4ajO70k=;
        b=dTlN6roXXPx9bNJoZ+jb7vyS0776x2TpaOLULWSA+qEVsutFgVn7KvB33ZgkU8OHcb
         yHUlEv9kZieT8KdHRpVZdB7kweZZSjLwy7oHyEt4r3X6Ikvgy4Uz8/AyC8L8o5wfV5MJ
         VqmM248y2zn/sMwt9x4fPfNZt5UrwKZzJHL3R7cybXazTelSlR72fbQfhwQGAdwlCLIw
         FbM/q4EHJWwDCQUvFzcxFFsGJ7pz2r33KpDL8bSEM7/imag52Rj8VgfUlk9CAewBu9X6
         UBevAaTiEbkgINPG9OJU02Sm8okQAJRFXXLGf2zhC24EF17ZSHkrSSQekeZwmM+w/hqM
         TEeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JiDnktEV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id q8si94015edn.5.2019.10.10.17.28.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id d1so7979432ljl.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:28 -0700 (PDT)
X-Received: by 2002:a2e:a211:: with SMTP id h17mr7749678ljm.251.1570753707769;
        Thu, 10 Oct 2019 17:28:27 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:27 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 05/15] samples/bpf: use __LINUX_ARM_ARCH__ selector for arm
Date: Fri, 11 Oct 2019 03:27:58 +0300
Message-Id: <20191011002808.28206-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=JiDnktEV;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-6-ivan.khoronzhuk%40linaro.org.
