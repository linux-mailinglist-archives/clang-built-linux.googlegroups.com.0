Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOP23XVQKGQERJIHEBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE2CAE856
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:49 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 205sf2833538ljf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111929; cv=pass;
        d=google.com; s=arc-20160816;
        b=MkCVJuz41tZlKKnGNbYM4i/Ol+x7SEsJTxrcEI6LV7/lsFKcyyHqjgpShu5KxSkvZB
         wy/cJmDa1HsZRwr/HMjZQkcl3QR12//CNtSOk6aaspcb1hCpxHFAeIAvjv4jUgx69sVV
         YgIvQ7PBFB/3DyJBg8goXgPgDSCy3OHp2/dUlvPWVvGMjDrcgK/7p+Roqp/JJd9o3W4E
         PT2X6Pu7bV5WHY35/lH8xEX2r8LNxCtCh9G1O2w76NRxB6b+FRNzm+u9tHsWw8FCh0FX
         H20K2NqU0eR4s1A56Q+TeQLryvrXBCmz0kVpuJxJvrqzAWP6k0MwPJJv+E9RzRUWFrIb
         EJZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=SGceBq9bd5sP2bzTcXNEuB/fm/z3CHhJQqBdHX6xKNY=;
        b=k4zTpgVJ8NolMTGrj1V1+t9k7wcHSve4DdhAvAvvc6voPIx9+pxkuMjQZuxV/T+wFC
         1DugXcgDQoTGhSbm7RjFF/hS1xPVLMaxf2lXi/YOmgHMJX3DFM019snsYQ+s8Tc/n5fs
         7y1V/0+hcFmSABg8tksaAYxUe5XscEzLHWjuS3++yMzJHp0bPh6GKwjGMR9ssyx9fxyd
         xrjJUNp7VSoUIsWUiWELp4anM6KulRR6uJP61HEkXgHu+p7U18HPY1NEXONCukXj95Ob
         KDlNmW/ABsAf1Kwj3WuRW6ZarV8CYBBn9RxW/p43RdxES07FjEPyyfDPE3iC/AWU0FI8
         XPLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RTYn6wq8;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SGceBq9bd5sP2bzTcXNEuB/fm/z3CHhJQqBdHX6xKNY=;
        b=D2d3T23lDyrC1UjZs3EFPdBR9ijCt6lZQ0EA+dlvAih0sKd5+5O6S1kl6aBlirDMr8
         RTG9DjZnlx/TQj+yvLILjIT9KGTGrO8uFvKRL6mCsAAnU+lnsLxADAcCiTuizC58nOqU
         GTE+28T23utaqLJdLQ7ygDU7uMqAAxTQeA+mbEwhfSwvRrDAAXsDwuCLas0gHgG5ev1P
         pSkdOxTDwhh/3Pomq23Z7TsK1MQdmw2BrSBAOifw/PlCvXk3Y9It/4GySJSnFwW0Hipl
         Y9V32DIDwlLy/vVneWclZ/mT7Hga2CnXYKhWv+irKU4iK8l2rUtbhwxDXm3MNWOn3KN/
         D9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SGceBq9bd5sP2bzTcXNEuB/fm/z3CHhJQqBdHX6xKNY=;
        b=fFDhZq63KpK8FpguwhuEBkafYf0bV+3KlfMA+hDdGTOd0Rh/lC7/iJAKT7G8LtFq97
         AyvXwHbvOeRu1TqF+9Yg9SbYqY9QI0+Vhcpp8gcKor+yBNUtTx7tXOiqYRyQelel4Eng
         Vu+lvMRMuP5AtJK17G0x9sICFLSxp71srJmVdulcJhRuST7d4zFHftrMQyEdh2w7qmKF
         UesDshQfJKL73MYWaBJFaQaITNLi3bgOamtjCe4NYRxzSe8AlLIlbc4Ff7nJpMV1LtgL
         pi5aH3SX4G/u4omem+FK2vORWV3NAt3gHTIGAh77Wct4iN+GFJvpYTL945+psnxJMOB7
         HU3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUVDHbD6/2/XlZHBlwzZ9IOJehwvGpIJmFj4vvxHivj/tJVY3u6
	nW8jnRmo/UE/WSWPFRVXzxY=
X-Google-Smtp-Source: APXvYqy7kEfXkU6IGjjzeuWNmZYAkTgN5OdV9g6Op/vh1+Rv1/7GBPXn/uAjx2V7DqDmNj4AKrFlNA==
X-Received: by 2002:a2e:9549:: with SMTP id t9mr14969035ljh.189.1568111929420;
        Tue, 10 Sep 2019 03:38:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:7102:: with SMTP id m2ls1675939lfc.15.gmail; Tue, 10 Sep
 2019 03:38:48 -0700 (PDT)
X-Received: by 2002:ac2:5297:: with SMTP id q23mr20704419lfm.78.1568111928897;
        Tue, 10 Sep 2019 03:38:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111928; cv=none;
        d=google.com; s=arc-20160816;
        b=wUW8AvuImNFsHSqwCRu1D3zh8DW/RiDPegc/i/sBZ1QcDL8s/GeFO/jz/BJmy9ji+X
         YcYp7gxZAASwNWttNoqb3e/Se7iQ8jzRdbnuCl5h+aaodircanr2iinZ1SE85f7yXFCL
         2vHsZ0XYrkcM7yuHgmun5NbB+mXZbj7nD9oi77hXXcbMciHnewORsI6Vi4bLZ917SlHx
         YV/4Tii0oS7Z6nxZv+PWzcdnCfcM2+Gu9380X6h9kdRxPoQMJB1FsGc3WiTRtRdnsG/O
         oIa1BgzGQ1Zt2WGO3hutZI61/Avz3AhMNar9AE5jv7/XcErk4LZ/Edqz5yKWmm/Cq0/a
         vTwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=4Ec4H0Qe1jdzuqdUWFKh+P+h2+Aff+D7k9SQeZ/p30E=;
        b=DQPO1BEZURNdaj0R1pvV6smSx4y4dpKZrMtvecJi+Kn3pr0PSR6lQ+kM7xsgbzttrc
         aN4Pyz5Wpk2G86no0LIcixvHddbEUt6k9oFsvnqlaYGc9794bHnhy6FSJs49p0NQVvqB
         zE8GfUeN69jBVMgggEDWH03UPvNaBBfE1ErIqDPt5c0LbE1MJVE4Gi7xv3nnu1SIQXlp
         S3reIul/AqCWF4OOGLy+5PnzRA59viJhroGjkttGPpNU+DcsPD+mclaD+bVVKIunkDiW
         kL6MGOnj33q/domKPsOSVHMCSrM6S9UYgZcMJuOv0xuAJub/R+rfjBSARgnTmO2hWiEl
         9lrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=RTYn6wq8;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id c8si1063487lfm.4.2019.09.10.03.38.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y5so5077169lji.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:48 -0700 (PDT)
X-Received: by 2002:a2e:7210:: with SMTP id n16mr19306668ljc.235.1568111928714;
        Tue, 10 Sep 2019 03:38:48 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
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
Subject: [PATCH bpf-next 09/11] samples: bpf: makefile: use CC environment for HDR_PROBE
Date: Tue, 10 Sep 2019 13:38:28 +0300
Message-Id: <20190910103830.20794-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=RTYn6wq8;       spf=pass
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

No need in hacking HOSTCC to be cross-compiler any more, so drop
this trick and use CC for HDR_PROBE

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 625a71f2e9d2..79c9aa41832e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -209,15 +209,14 @@ BTF_PAHOLE ?= pahole
 
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
-HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
 HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
-	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
-	echo okay)
+	$(CC) $(PROGS_CFLAGS) $(PROGS_LDFLAGS) -x c - -o /dev/null 2>/dev/null \
+	&& echo okay)
 
 ifeq ($(HDR_PROBE),)
 $(warning WARNING: Detected possible issues with include path.)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-10-ivan.khoronzhuk%40linaro.org.
