Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBM723XVQKGQEM36FZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A14AE851
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:43 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id b15sf8803686wrp.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111923; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRNonyWBxCl6Ab6rBAXorbQMq5MrOuYLTR4D+qApZcarJw2w7mVhHOO5RhEF7K3D4n
         WNnU3ibm7w0/sbvCOlAgcyCA9Us6Smh5VpdHXTi2h/8bvSF0AW2r3DYQxdciixkHgZY1
         UMU7e2xddIuNffiDaVhOjqfaG2plPBzZAbwc5TcMTo8gstyo+NViwrvfKWlFwCr+dyn4
         TS4F/5pTB822GP0DWE7/5FYB7norQgQ/OGhfYRRaTxn0zSNfh9Zi1K3sT5NKgpbiNcK+
         IahUb1Nr3jFs2f/Vf2PqDg6cfcQ8tJEXy9QbS0yR1NNUF9fx2Du+pHbaUzG+rxhORySg
         nl3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=/Y7XHsdWga5s1S1/0c2jy3pMXypTbESZp/f+WIdxrME=;
        b=BnxKSuCWewGy8WWhW5EYzKTj3hLBmxye5IIIePDpApQAiCoNS8GbLCf1RBDAtdfO10
         qs+ECTwg+QUzDwRHcJ7Cu8HTbci+/qIslZzTD/nNRwnU+oa9vD5EyLRebLYi1Lr3GmZc
         1aRQqHIocR4wjKeHktUSIZP+kCavsCmSGWGk6ZljlggpnA+64oN0cEVAk4rKSV2RUcgx
         61sr3DZ2vo6CqXLWQHmwWTXLNQzvOWE2Bxzr+AhjTsAcAdwxKY6vrfRvALA8neSZ7YoZ
         U9lfXnbOwL6kz41085HOdHPoS0Nw4RzMuxDtgXBN3Y6JmfGshOqmKdaI+e8mpAxNOYrR
         Ej0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXCPyNiE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Y7XHsdWga5s1S1/0c2jy3pMXypTbESZp/f+WIdxrME=;
        b=RRGbTZt2q82OKp1ozPEGGajjRmv+I1Zr/Ip5gvBumQY5O/QBmjuyyAGG6DUDPewU1S
         P1FBQZSldVGp1NeUc3D3x9LytLZWdxV636gQJAOT96VHRDfIu3ExZbkyfJKC5a8bRGev
         +EhGIktTTtoI3fTI2V/nngCSbnX1arGs3X+7wsGXP4lSAQSwnSsIUXB1hVjk4RvoETqq
         MGZQWJAf9LKmxFmorg7yNFwWm9AgU7g+lYJWG8MgFS7f1Y4Rr3q2jOaVxKmf4h0R1CJC
         m+FrYfpl1m4MmX1z8KpXHm+pF99t685JiL/y3YnPu73qhbPaTS4jruj65f44JBw0OIA7
         XqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/Y7XHsdWga5s1S1/0c2jy3pMXypTbESZp/f+WIdxrME=;
        b=WSm9obfxeupP01zrLvxvhAnEPndjNB9BiHECJTawzr1sPMCpxmRc9s4FWMWztZLbW9
         N4r1l7HymeAxEwhZTLEufDedSV21irq9xrvoZzwnvf4QZbMldG6ChoebB6wOArxwWbL8
         CQZwUry664sZpTC6Rte+oUo4M3my3FTQfGTakuS3BZv69PMLRDppECn/KY651eg4PSRk
         tioN+D1LGl/T8z3hDGR8ZgHmO7ckmnj1cQD0VZ+y54NRz2Mb9paxQXNgG6xe7mH8kljl
         Ib5CYDicoSeAzfuwoaEVKU2pwtayuGQ4wMcezs4kQOKZtDciPuFAxNsnkeoewClPTcw3
         gb7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVlf/IAmTfG++Dmh7NZHUYLza+sbnU78NMCQBv4f9FsphY86UIC
	Xeg8jNuHrAckInPMJp9k2W4=
X-Google-Smtp-Source: APXvYqwylcpalvsMLRQgeQOdxZoOEWBEd5iQuE0p7cLDQ3LikiCW4kZ0MdpXvNIpdJ21Wj0INSzJwg==
X-Received: by 2002:adf:e908:: with SMTP id f8mr24899059wrm.210.1568111923380;
        Tue, 10 Sep 2019 03:38:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3c4:: with SMTP id g4ls5193440wrp.4.gmail; Tue, 10 Sep
 2019 03:38:43 -0700 (PDT)
X-Received: by 2002:a5d:568c:: with SMTP id f12mr25732551wrv.248.1568111923008;
        Tue, 10 Sep 2019 03:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111923; cv=none;
        d=google.com; s=arc-20160816;
        b=uIKWwpJ+nKaGhcpEftvoDQTaFT1KO+3Ykr/13HTJd8bH6RZLYGVFiqHCwSJZYogj7v
         eQGJycL8tCwPp8iCMIuvtHyGxnRn/JtDX7uSXmremJsMgra9hdBT9FgpPl4RScesoIbE
         O6RZDSz8yzFuFdHxW4k2AeTkOsq18UW5xzLzKs3HnCkRKQfyeJCezMuibV0GXvCT1egH
         j33civ81ZBz1SB2AUcMR/atdGN7QMEF8jre/YIADnTMsIiUnCGIU64OylCVqmq+uBh70
         3KdJ6tsm3qxkZzSeipX5bi9Udp8WrfZXaKWhOz7tSkBCF+j/4jircPKaiOOMCHxqYRJi
         T7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4FRJ5Ph8qMbMU6/W3VLuGrqprbT0bDHz0d1WvLmMb4M=;
        b=Sh/4kjXRWfZzYXpvQFZl67/2volKjiTXbtdVkjaLpJJkryqVole3KISD9oshXMN3kz
         320pHoHdqFanKSj/74cskgzGJ8D4+aoyrBTLRzMGvejpwyWIajs1TjpQKbVOxq7dHHJX
         jAgAsA3puS0OvjM6FRyqVX0dx4EH8jHxvnMtU4BVsuOoHvjCM68jRU4FfoApclUCizZ3
         laBbaLo+hpxYB2E7jvZM1lpNELdCN+3l1jKayhDFqc5Vh1oMCpd4SeIuaiHqLKKXshJi
         gyrFMpkw3gfPxF+ZOpuZk+X/zj9d7BWlR3ddEDB4N+UMQZu82Eoy6qqbrarRzYy9K2mg
         et1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=TXCPyNiE;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id j4si805015wro.5.2019.09.10.03.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id w18so1118290lfk.7
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:42 -0700 (PDT)
X-Received: by 2002:a19:14f:: with SMTP id 76mr19346797lfb.92.1568111922493;
        Tue, 10 Sep 2019 03:38:42 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
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
Subject: [PATCH bpf-next 04/11] samples: bpf: use own EXTRA_CFLAGS for clang commands
Date: Tue, 10 Sep 2019 13:38:23 +0300
Message-Id: <20190910103830.20794-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=TXCPyNiE;       spf=pass
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in next patches. Correct it here for simplicity.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index b59e77e2250e..8ecc5d0c2d5b 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -280,8 +280,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-5-ivan.khoronzhuk%40linaro.org.
