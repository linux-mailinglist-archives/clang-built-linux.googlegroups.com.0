Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBCMM7HWAKGQE7JQRCYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3615ED19BB
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:46 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id j125sf1570231wmj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653706; cv=pass;
        d=google.com; s=arc-20160816;
        b=BPVZJSczNLL3lZL8HkSZtlrYdOZ40BksGgcl+KkJHRnVCCInZw0abCDfFOiKpFEJxM
         cm/Dw2zC/w2rtn1th9yU733dwC4eLa2IeSpMb+4344gOvA1N3GzCzBipiYeu8kGXXBOs
         oSwp0yga42NgtySfZ0LpvWQMZRKVpMWsEgG9IRA9fw38FEWKw1RWkRvdrFlBvi6jFpe1
         Kg6jg/byo0mMaC0yGp7PtgaOJeThAkzujAcUVVIYb0qF2OE78+SARXITgyzrW3uldT1o
         uYxbOZax/hOqdJdCJ6hZdpNejU1b9ynFft/x72VvEH3aLB2pofDfUoeQGLHcpg9nPrX9
         IvaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=6QlomHduSM7r/nwdDNlgwCJDLyubwE3mgWV5B2dHmn8=;
        b=PJAURL4axMUsQbjBMPMYUpODD4nKrH7seybkIBhyRng3pQoIOWz/UmpMAc/Ai5LoDv
         nCorxWoy1cAr3oVSvGu8GxlOhUPWRe85RsCLLsVWhECuR42NghzT7fmBwWntTd6yP7PU
         f4xwxrq0CWcX29SbRP7Mo3MUeOk1hL9LgHRYMON71AuwU2oHGn1J3e591eL2aGjK2sy/
         QGnTgsCRt1MjKCl7LBVtkiv+tt2CwN4qNjqzo03dZYu/eRvcz7TXfCjkgMFzFfgG+qS0
         6d8NxcBntZU4eCiQz0h/xHC8+Hw2byGBcB9X5Sbm6SRgm15gwx0qTDc8eMxPagnV9xr+
         qP5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=u9WblPuD;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6QlomHduSM7r/nwdDNlgwCJDLyubwE3mgWV5B2dHmn8=;
        b=OrQeaNG97Lf/EfTBjLQJPLIhyT1JLRHCevgTnM9Mrj2GI3lM23GhNyxzErBW8rCZNa
         Rz7JXhRvFCEDj+M1ZBEfAYvzF6n792LFZ7DaIKuPyokx6zZXeu77NCwYJfG9CrYw1dbQ
         0E6gzHxUYzvJpMfJygGWwjUvbx1r3BwhuBTV5yqgk4WcLdzi8YnyC2zFSY5RWhiduhdq
         pRH326ML0PYglpDj1oGO1KZKfLcQ7BJhRseiUlMSr/Csrl5e7UePajsjulTXIvzr1HzF
         A+bqt+PIafRv+eoz+MDTjZlQt9K2zKTxlC1gNfbQ+UqaGkYyzuUEbnilHBwn1SCmc7AN
         UFcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6QlomHduSM7r/nwdDNlgwCJDLyubwE3mgWV5B2dHmn8=;
        b=RP3xhe/UzVtakeBcb4oK+MiTzOrg1lthACicb0daYqClVTUi6rQE2/uuYKic8XAcAD
         7aiJw0j8s9klM89qNR/QF0ke8NOZVxC7zpdW67pqYUE0w4wVgelRE89E1zNyutKaL1RD
         GogdLpX6pLKgc7LmhBckvov8ObbZ1BUOP0xuhyahIlte9mNApRKvD/u5IREVK8SkGt54
         onU9K0PJQjF0Bh7Gd8eSqUpNcQNv/5wYryBHWOKJzDEbuf7WfPFHxufQfSmwPHUqOxR0
         3pLLeFyjL70bDjU06X/pHbezGNmFmr15emefbOHDI3gtCf6zEZGIBuJM3p4qe7/FaU6U
         IG3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUH1g9AnerrWLQCf6aiix+WVm139fJyHhrgnVN+XwkU8dTlI9OV
	m6S/wYQS9Uo5Rh4ZuLYWY+k=
X-Google-Smtp-Source: APXvYqzY9PGwjAVVLxbr8B9ZaSjU8n69yKpJCpKYCWPLIKxNKj0GLV28Ns4u/rIOiCufOWtd7tSFNg==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr4110678wmc.80.1570653705895;
        Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c408:: with SMTP id v8ls579370wrf.10.gmail; Wed, 09 Oct
 2019 13:41:45 -0700 (PDT)
X-Received: by 2002:adf:e286:: with SMTP id v6mr4673425wri.226.1570653705526;
        Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653705; cv=none;
        d=google.com; s=arc-20160816;
        b=Rsw9QHbNICRyOI59S6EkFomLDkG9ff+yCW8WlsWGmceN7XZ3vnMqer//n6Py4ROPCf
         7X1d3tokQuOdvEeUbn/A/fEhcCUvVbc7ptGYTGCRK5V9xI0xwPKsLiJstjYdnA4Et5n1
         E9Df8zSOEu83Ku4G3tUZbiGcY/vFmgwwb2C36CSL5ln0cjj/z4Fjb0C8PgHVIWCd2con
         xKZ0u5VevXKiCfSicaACjRdDQzJyLc+jL+4fZkaUlJNIUVIj0v3kqDGfAo5yIkTeAMeQ
         Y//1poZtTU4xUvsOd3Shu3aW/4xlzUO9dYWt+KyhijQhjePZ7evWK3+qLfK8A2C5L6eR
         uQqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=j9oehlPvbpQ/3mUr7ILsjkWG9P4RuU3Cq2akh+BGeG4=;
        b=Aksu5ZI/e6VcIwWiW++SW5YJ8HWduEYgDp8GOwbqrTIZBIe9hmBb4yssoHeBCS2QKs
         rbMFzuq18l7xhn4DBb61QfOPpSmxD3z9P7Wo33D6qaUqNVPNGh1q7MsPZ1mZccQSgny4
         7H18wHuQChTFnt/kvDPOqkERnav71qn+a0IBSj5fqK4KiixOjxxZG8oSou5MQ2terRq2
         2Q75BmALa191quHfsJ6pkzD4NkZKc0uMJEsJh4aRqNVe5K8Z7MzUtH00fgDC3o5ZS1C2
         Iy7y6mPCGQjooj//TsSKh5ZetTxz8SnTgshGGV5Od0FK6aJ+VBo0JHEkDZj7nKd0dvdB
         3DCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=u9WblPuD;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n16si211749wrs.4.2019.10.09.13.41.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id m13so3837756ljj.11
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
X-Received: by 2002:a2e:9b12:: with SMTP id u18mr3696925lji.142.1570653705253;
        Wed, 09 Oct 2019 13:41:45 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:44 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 04/15] samples/bpf: use own EXTRA_CFLAGS for clang commands
Date: Wed,  9 Oct 2019 23:41:23 +0300
Message-Id: <20191009204134.26960-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=u9WblPuD;       spf=pass
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in next patches. Correct it here for simplicity.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9c8c9872004d..cf882e43648a 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -218,10 +218,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	BPF_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	BPF_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -280,8 +280,9 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ -I$(srctree)/tools/lib/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(BPF_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
+		-I$(srctree)/tools/lib/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-5-ivan.khoronzhuk%40linaro.org.
