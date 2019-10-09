Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBF4M7HWAKGQEVVDJI7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA06AD19CC
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:59 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id z1sf1617923wrw.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653719; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4mCfySkOZ0BLebZS8m1R3E/Wnempf/UhqS7Atp+O4s9WT6zvKN3DHbhNi7IOQOx23
         ZsGClFLIdj+ON4SnlTnNyz5GuZk68fEoAoKDYHVqk4tiqXWHVDLkJNqKPVPPfjD2zsL6
         nTHBWqfl7+zWLRzThP2O7lEMF+xYHf9u2Q5CGpj13PAsKGecOzqSjFXIaOimjGP1Vg5G
         cZClCYk1BL44Q3SRgNJoEz4U2/Xt46xP5SBQLkvfIEkNkbgvggNZLuauJQJaFLLC7Gon
         AkmRjImmuznN6pbSfnJemwZiuw7SOm237vphVfPwK3gxcnzMa0Uxp1ckcKGtFAgm4NPX
         r6hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=Me+GDwpDd2w6DsMJ+64JMrNdzezJe33O2VJQ8O0Hw+Y=;
        b=FctVXF8Y/qb46Q9NofVvPHkyfWXKVpB/DPl0NC96PnC6oBfE4JxZBD3fCHsZQT8izh
         kFhZlWahjxea37pbF55bFNeN9Xd4/sdtx9/HlpNBYQKUR/ceHaOFFQFGGiPlAZl/v08c
         TICTAYWNqlPafPqh+BwMF5bIQnLUtoiW8Y0gsdz+iq4aF9uVvhLmVxHVni3c5ugxFTb0
         eMxNZ9a0cWHcexsLJ+2ZHxAgQT33oXPYK+b1sMW8rd/CQNy/iB05sBhSuA3CgiH0hCsq
         oda9piAtDav5Rn5EW9+qLvpP52/dSyxGwcD/bE0vsa5bEI1sI7knT5p1A8IKDhsGh3tN
         Mrfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pzdPyL78;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Me+GDwpDd2w6DsMJ+64JMrNdzezJe33O2VJQ8O0Hw+Y=;
        b=LH1oUUPkzBD7QbsYPH88465UgnVJ8kkWFJOi0HN4B9LJxtUPlOfxCxL6A0tAUrQzCX
         g83E/cjCmKNXmGL1hSLtp3Jd57ndGF1cRipEImOXm1GRVwwAXXi0ZOJNJ+1TU9S7beWB
         11OZ4CG1W069o+OnI1kq1zbghHkmhF5hV2NQmBVNmAs8ewnqIMrJ+dvIynd/FbXvhdNC
         YDCCp/9dppYOwnu/ykb4h7GQeT4wgQwfqzmtVOlryQKKITTHAiZP09wO28xAC1ZTYs0G
         3KSGw81SN/Aqpf8bXuJZC9+eUlTl5CRgBB4A1IOmF1vsQLHP0d5FwOThBwoXIXzAAE5d
         pB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Me+GDwpDd2w6DsMJ+64JMrNdzezJe33O2VJQ8O0Hw+Y=;
        b=qY2PBby6Xp8YmdK/KjwQNdIAOb9jqMIn2/eYrNGbmAa9YrncGm7oLAB5m9uYZhFzAt
         KRguEHumCgK21Et+XoiqGw2twAxwZIK+skzqY+6Aa+WeSeb5ahGq2OqCbYWQQBKwPrWy
         AtTBErzNpXP4f4WUgDG8NfW1cG9VK70LRgKRCElzpFghL08TZ3TXMTVp3LMJ5f5XRI++
         MPW4zJcZNifZ/J/uH87N7ZgQuhVhrS/iIkSUUK0tpVSiVJO4o+pu6qlLYiAmHAPn5bPR
         SkUqfKcUfV+GrKbt/p2iS4T2TCrONnV64v+/QqbtJYmKS7udGGwVT/8nCYfKcuZBT8BQ
         NCbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVohI3ocSzNpI5m6BuydDHCJ5VrGhAn+K+JlNAYuO+A1INNmhm
	vNKowV1yvtdV+qEkzPSTDXA=
X-Google-Smtp-Source: APXvYqy6q8vmMAMGVmxbkaMZdkZwA0RErStoGyO2gzqJsspxz/e6Gmn26UIdBjySf+fw60yqkJ8aQg==
X-Received: by 2002:a5d:4685:: with SMTP id u5mr4807165wrq.264.1570653719505;
        Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a78e:: with SMTP id q136ls580008wme.1.gmail; Wed, 09 Oct
 2019 13:41:59 -0700 (PDT)
X-Received: by 2002:a05:600c:205:: with SMTP id 5mr4235535wmi.19.1570653719165;
        Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653719; cv=none;
        d=google.com; s=arc-20160816;
        b=nngYBv9c5Ph25Q1s3lDF/vj/9rN+9/ThjiaArgP+3qZDCCLCLSVTcso+nwuBdYMMPp
         Y8+6KpM0ACLbQDjs9mhjCe5JHqdvs6HmUH3khBuZb6rNxt9ynOZjXz2QlzCR1/lrspqa
         W4wWGZME/apbeVl2zSnutiYkjoHyJ+PkPdTU8FQ4GPn20Y12y0u77qW3jQMQ+nHmSe1W
         slHSDBxVI+XOGga7yZOCoqtD5yBpzHGC6gbg1/N2b/Ybf3Zgo9Z8wpvnTm9rlaQAgkyw
         2dFsR5VckCB+MxoxQRkxnxEY70WKlKqFgp93s6v+W9h0BY41pigllLnNyorsleRdUsLw
         vc8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZSbYJ+tLtfDuMSVqb7LwJbRD3u314/MfD3p1keHf2Mw=;
        b=tcLLHHrwTUVj5/RyczbQl5qmv7ZTCclgTSC7EFoVQ3kt+V8AnvXOy/VLj89jeTyL72
         643DCu5fmlpaPiN04jfIsr3nM1+x3QDW4KizGKpPCuglCAceuL/Qeg6ODmD3Fk4TbNTB
         BvGuntWyqMJv+UYi3CbjHlUYOKStPOD5bQE9J3Ha8repbLTMCt47vRIcw+lftr8jRWXZ
         5Vd0j8wGC+1/FUuBcVTPnhfOEwGHTnFzznd4ENPXhMf0WkWXmmIz7Ywv7YmX5FUVJfpc
         oHGfEKrvpTKqR5ZMK4Mbbu4nhK/BAe7QGHr6gWNGK1SCC01AKGN7of28/cYU4RQsQnx0
         stog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=pzdPyL78;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id n16si211764wrs.4.2019.10.09.13.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id j19so3922069lja.1
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
X-Received: by 2002:a2e:86cd:: with SMTP id n13mr3689328ljj.252.1570653718918;
        Wed, 09 Oct 2019 13:41:58 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:58 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 14/15] samples/bpf: add sysroot support
Date: Wed,  9 Oct 2019 23:41:33 +0300
Message-Id: <20191009204134.26960-15-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=pzdPyL78;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Basically it only enables that was added by previous couple fixes.
Sysroot contains correct libs installed and its headers. Useful when
working with NFC or virtual machine.

Usage example:

clean (on demand)
    make ARCH=arm -C samples/bpf clean
    make ARCH=arm -C tools clean
    make ARCH=arm clean

configure and install headers:

    make ARCH=arm defconfig
    make ARCH=arm headers_install

build samples/bpf:
    make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- samples/bpf/ \
    SYSROOT="path/to/sysroot"

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 6b161326ac67..4df11ddb9c75 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -187,6 +187,11 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
 TPROGS_CFLAGS += -I$(srctree)/tools/include
 TPROGS_CFLAGS += -I$(srctree)/tools/perf
 
+ifdef SYSROOT
+TPROGS_CFLAGS += --sysroot=$(SYSROOT)
+TPROGS_LDFLAGS := -L$(SYSROOT)/usr/lib
+endif
+
 TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
 
 TPROGS_LDLIBS			+= $(LIBBPF) -lelf
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-15-ivan.khoronzhuk%40linaro.org.
