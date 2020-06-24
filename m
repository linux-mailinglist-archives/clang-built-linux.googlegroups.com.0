Return-Path: <clang-built-linux+bncBC2ORX645YPRBFHRZ33QKGQEVSZO2RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id F0439207D16
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:24 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id h18sf2488406qkj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030804; cv=pass;
        d=google.com; s=arc-20160816;
        b=xeUc1rFxFIHiIP0x/ugJQpIIaGxsbc4n1Dll2HL39zL1ws8Lcgm6PbT/8ro2zJtLyC
         RtumdWVLccYKBsN/vl1wn6TsalyrrmSjTRXSaAzSHax2rUzcMlbJJ2h9cv//n2i0VWsa
         CcUYVGMuAEy8fgdpVaOvZi/oo141lh8v9COHVwqt9ESqbviDa4n0d1xuXLvCmFye5lWB
         s67DBsQJ9/a8fzxl92AT9yExn1GufaoUr+g4XQki/a6QZZuDPP/n58LAtaeS8N4SwAuc
         soCYp40wuTeJ7dzQuTyG4LlBNmp/VAPEiQUcSoCBPFU1nBW/1a1IuuYbieB8YhTLY4D5
         hF+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=+MBPLhgFccQoHqifEkiSg2wlbN3hbMxMWsWe+E6wsAM=;
        b=wvEu9jnftMyLwdUTcvtjf1UxAk06Ws1VVEkCZxArxYjXBwJ/t6LXRytmj7RiAdppfe
         qXNZQhcnWG5cW5O/elvw6u1efEwdHOWPucRSWJNSLGGVuwqtx5MuKgFVSnr+2zk5L68C
         RS2AlgzL+EQhMWRFY00s0LKx0/7bCJW7BjpmohNFZw/f4dtKMGbzv+0mKlvisN38rdsD
         y+1NEV+/77tqpa7ExhC88UJXX5zdQdNGJ1YV9aBs1Zjvbox76C42p/19QSVhSQ9no3VR
         P77r79d+/dcKkaXI/WziA2HnLdO4MTIcw6/7K0IDMw/vfoe+dXfbFsGlCl6Za8MUbUf1
         lpkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHLFKZjz;
       spf=pass (google.com: domain of 3k7jzxgwkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k7jzXgwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+MBPLhgFccQoHqifEkiSg2wlbN3hbMxMWsWe+E6wsAM=;
        b=UOEUVHBLGTUovRbAM0henkG8ReAFNloNnTs87wcCRfnxSD9i1KpWuGBO3aMbMb8kvi
         qZ6bGgmVLAdRRfSiju+bfQaRiJgZoXCApmDudxk5+adyugLqLq9VU6nqz24y4LtrrRF/
         dY6oxDF4xW+zoUFFGtfWCzy7OkJMD7I/YUv7TFbwNEtFtbGlcprlazC7WZvlm4be47xw
         +dZlqg08GxBvy6BTVLUyHub4JRuvsmrj1zCA4/SfrPpJCBy7Sc5uzuL+zRPE3Xlg/qIM
         Chb91JwWL1xa9EDae/78Zbkp7MBFAIcRi+rUhnS2g9T0WWPkwinbSxBm4p9hrDO6twKT
         obKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+MBPLhgFccQoHqifEkiSg2wlbN3hbMxMWsWe+E6wsAM=;
        b=Z2rQ092y57c8zEtw1gdkP8PSwd+hw5GU0XrY/KJ2yH0mTfPk4K5BB1WY2bXGeTvn2L
         O2GBZ4KXqWbvRs1cExSqnAtNG3J1pSEx92F03fCc5z9j5acgQzlhswC2z4t6uqbbSsdB
         q3ZZzP8kc5vepNQ4PmvULt8ITB0BcmtOsq6flFoNsLF2V211fGoxQjQ8MeWqGk2SQYqZ
         NfUrCnOplhyKWZ2Of+w1DoszrcFMC9E/5lQq6lTVYq/sw1Npa+2KR6w9RsQ56PKwFceg
         q15sWAa3gG5QLmkZtZbrBPu9tIqes/yvrn1JANRPxRfGmu/1CfXr8e7hgRIZzaQ5jXxD
         roBg==
X-Gm-Message-State: AOAM530TIOamfT4X1PA9ZMUHdmc2xfpVpv6qDeTrgXE9xHHV3q4RN+9D
	VrXJ5oyB+RWZfHFLjIXRsgI=
X-Google-Smtp-Source: ABdhPJx1r10y4ybIP1T09o0DJgtdmgKLGAyQ4ogHKZK1A9TAFX1+a6Ul+kUfamUXXg8iyScIixC1HA==
X-Received: by 2002:ac8:4ccb:: with SMTP id l11mr27942946qtv.18.1593030804058;
        Wed, 24 Jun 2020 13:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1928:: with SMTP id es8ls737783qvb.10.gmail; Wed,
 24 Jun 2020 13:33:23 -0700 (PDT)
X-Received: by 2002:a0c:8d8c:: with SMTP id t12mr19020155qvb.234.1593030803700;
        Wed, 24 Jun 2020 13:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030803; cv=none;
        d=google.com; s=arc-20160816;
        b=uyBL1A7RL0PRZPpIwwnTTzkjUyaMV6TyZnfbtxj9QxXopOR6F23Fr4s0b+GyP5jntd
         2Lk7BAH3PZAZwC7qglaYdj4osrGybeU0B7UAUnPqmO1cc/H4cWtNKqZGtzNEFNbt2rVK
         zIkJSXY669HK3y3YQ+jSv31fYE3/iLUVS3RjCSQSBV/uGTChCt+uBuvQ0AJtiK26mROF
         BcvSPVEfnQJ9FkgKwlp8+sZAt9tTibhOfchmioczLKkWukiWwihR08ucBJWca+sCYpVA
         ipW4F8KmJBf4L8Q/nwqU9VmskN+Cezshjc51xzDPTLLzZq1ymgjPU8OA5f3o2VRnBRoF
         DyGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=063/REsTpnFRr+cDI+sseVhgFckW5SG29uiho3UNZTY=;
        b=TxcGEirNL71Lyo0LhN2a6btY1H33tmG0Tzbg4isjYjV09Y0gM/kRIfiorAbzzIRjav
         IpmAGaDCdE2CHoHsmKBqff4t41ia2UcT6lnEgH6CtGBs5Cc8IkCSUmgbQ5UR19L2lTi0
         S4CwCVp4cwTj7FhZUxs2np+8ZNlQ2uQUbviAdSZqHLTGuWLoQayQHGRpjn+wLVMsPMxf
         kLDTxwxbbVmIFMnRR3O3NcunGV5dm6lpbQ3BVgDDUcd2h582fNIDA5BXcbrvPEFQeUG+
         RPDqqKtcy+25vYG6sE4eOJclgLrsKm2X2B5aOJVaVOLilJ1vruPqif3aHy5+nqhWEW42
         nphA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHLFKZjz;
       spf=pass (google.com: domain of 3k7jzxgwkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k7jzXgwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id c67si1191705qkb.7.2020.06.24.13.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3k7jzxgwkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e82so3496526ybh.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:23 -0700 (PDT)
X-Received: by 2002:a25:e8b:: with SMTP id 133mr46457083ybo.13.1593030803250;
 Wed, 24 Jun 2020 13:33:23 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:52 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 14/22] efi/libstub: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QHLFKZjz;       spf=pass
 (google.com: domain of 3k7jzxgwkanaew84fa7hw9092aa270.ya8@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3k7jzXgwKANAEw84FA7Hw9092AA270.yA8@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..95e12002cc7c 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -35,6 +35,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-15-samitolvanen%40google.com.
