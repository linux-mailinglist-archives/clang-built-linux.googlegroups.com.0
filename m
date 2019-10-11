Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBJUZ77WAKGQEDFVT3BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 651A0D35C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:23 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id q185sf1371754ljb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753703; cv=pass;
        d=google.com; s=arc-20160816;
        b=wNhdKu1cLIGNg58x/OPegu1wE2U8g1pxhER/cygS/RdT6op6j9CzkhfTeIFG+3A2F8
         ohabddN3wE9OUnqSOSYfOSaWZedXF5pqwa/w0O9GhpQDEQ+vCn4PVn1AUzoG8Z9FeHwQ
         x8fS2UzGKgymmG+EqshwTSL20VQ+3Yq+B/E9oC2l0lrecyrI1PgPcNfV8OxUfHCAZR/Z
         7lxrPfg8ZVMJEIIRqfCdDZJh0X5jpeTXv3aWtw1w15+woqskb1DDqcyq4cQw9cPNuGDk
         Ox6sP9O2479tChLTPw4h6J30+3q50RckvHviG0CBuLztA/LpnUCwBeDuLuYSWam2O8Pa
         BCdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=4lcmyIGMOeJvsuCY8pvd/0NXqeqvnRm8NhvpFOSrcXU=;
        b=on43bJrnblapjH3TOk32v3uHqV7vlD8cjqIpg6h/ri8MchhcZXOUnIUswa8oxDGvYS
         3YbbumVIM/wmUXhraC0MpIYENonc33BXU89zQKlsvKIqjclA4jYtDp8Njy8fhlSwqVz5
         jftvOB1SbfSAYY8b7wJUNZQyGVWdoRECWHVVJARSXl2rmmf02DfbgYYpu7A9+mV8z/3H
         mHQ2v4rJKUxkMKqTEs2TTaVRfYqAN5SSFd8ZpGoIIBe2WNj0nguxn0uCxNN9VU4J1lGl
         SfHF0AACqosvpO6KJ00rXR2gT202T7F+EYVlwj46y46fMWnY7B1eUnotaCMpipDoNk+N
         hyXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=n7n7nGtk;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4lcmyIGMOeJvsuCY8pvd/0NXqeqvnRm8NhvpFOSrcXU=;
        b=HHgGL2f2wA80xdvZVf+twlSCqKl8YFHLLGCS0QgH49TLePBYHYfkazgPggbqWnKBoi
         y1JllDE0ZTh6S4NYJAL981GrHmRzzwF4jayYba2HMJGLuTzBQ9Ou+PNBFOWw6xloBnQJ
         oNdLU3R0f59TGHi+q7va9tsAOnkI1GixiBsuKky/T7603c49z1gabof+Ec6DfUmsBnCA
         qYWByIda5bXYsc82QGTXJHqXCgtg54gHQAFAmZ4wX8gnPlyS2vUwkIxjqMOwM8X8az03
         4WGAFYfVGZ4E2unknXNwKMIcFQWYCvxIOFPm9vfqncOCU8vBd3GeZJ/mrUuH43lQ+8Yz
         Z74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4lcmyIGMOeJvsuCY8pvd/0NXqeqvnRm8NhvpFOSrcXU=;
        b=a4Ba7ezPbD8Sd5IbRpaNWJ5i0py6O10Nm+7rPMyzYvAJDebH3pJMyouM8N0+mMHcsS
         j7qhXfF+o6G7Vs+v5Kh6zYqoUXTU6g9/C/ygtchVGeqvjCPEnWiJ0ZoYofkOWrLKllfa
         OAPVD+Y01hxEqqV0JuatWrAvxPNui/upcrn5kn3KVU6p/oWk+1FqyffYT/CSltsuNYdX
         1IsrCbADADK/JJ6vmgDue+XDQfthoo10FLvd1uDI2ENZ2ZYM04UwSqqqDUB1+IfqisIA
         v/FBszKZRGDiJW+I2FdOqhThGvrjeBu22BUhmUAH8QiVF8N1aI1WFDvOAhqvHqlaBkbS
         WzqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUY81iRlcL0C4VoeohW7RwCp0OCOvZLS3OMXWehHgHhdxQGkr34
	q81LBQuttXDUnWO3o+hC4uU=
X-Google-Smtp-Source: APXvYqyWk7Gyd6nZORhRGo2JTEmd81sTEKFZ5YmabIdeZA9eBJriJ3eiS4figLFFoyxqTCx5UiEmHA==
X-Received: by 2002:a05:6512:25b:: with SMTP id b27mr957244lfo.146.1570753702965;
        Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5965:: with SMTP id h5ls540622lfp.1.gmail; Thu, 10 Oct
 2019 17:28:22 -0700 (PDT)
X-Received: by 2002:ac2:5453:: with SMTP id d19mr7488798lfn.89.1570753702509;
        Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753702; cv=none;
        d=google.com; s=arc-20160816;
        b=tLEVFBEflfCOwvMErumbw/5QycicAJTpCEx7JP29yYsROQKx2z+EeVp/YOlv/0T4VS
         OAbtiq9NCbdZLsBWs+QjWSoMHSCrsN/xS3CN0bBIhEZuWqWATSJ+OKMZ4ex+HyuHHLmG
         ED/6lJ+JCjr+goEA57Dxg3XpjpaPpayIoMmheUrkU/RiOICgeuo7VESaAJBnvu3ZzlE4
         FXskDZZh88xNrtlWikokI31zOUUHvMcZ+ibWj/RneT7YzcPyzBuGGv01yjSkLVtIY1bQ
         Ovxy+iCxd0nCFhFfCK5Irn3Q71k88nKVnXyxN4cehcBDrXdf6ozHPTIurej7K6/FDX3r
         r+6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rC9SMV92VCkp1Gr2RjsUAyri6h3CbwRZLjtMRm5Ly2A=;
        b=Tnvk3gBqU5/YiS14/lxGRdCaMepJvMFAZUWzAJ52rcSVJmLhjcg5edBv2Gp0rRWDHX
         axyUvJvPppjVjsRxCVCFK8TjYLZu9m+r6JgYhBmjh/yHS4h0cNM6iu1C08frOIq23rbK
         xj4TiMroHlxt9CKaAC3eM9xi/w0lnZA0subvbcj53mVOxRZz0O1iwGgTzn1mbJWd9rmx
         Gu13l2XgzLQm7XigqbpBCSJW1AvwBHsKjC3g8LkCId7aQc70W9pJoBgEVgD/aS+9iKD3
         7pMoZGqZDqktthn1zia6X4jiin6wzOMvF8KOstlNvmxAFAwtgXXuQxktmg5PKWnhjhY+
         8uTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=n7n7nGtk;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id q25si87167ljg.5.2019.10.10.17.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v24so8044898ljj.3
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
X-Received: by 2002:a2e:9a43:: with SMTP id k3mr7415360ljj.70.1570753702298;
        Thu, 10 Oct 2019 17:28:22 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:21 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 01/15] samples/bpf: fix HDR_PROBE "echo"
Date: Fri, 11 Oct 2019 03:27:54 +0300
Message-Id: <20191011002808.28206-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=n7n7nGtk;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

echo should be replaced with echo -e to handle '\n' correctly, but
instead, replace it with printf as some systems can't handle echo -e.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a11d7270583d..4f61725b1d86 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -201,7 +201,7 @@ endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
-HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
+HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
 	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
 	echo okay)
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-2-ivan.khoronzhuk%40linaro.org.
