Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBJHBXHVAKGQEDDGHH3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C93C88915
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 09:22:14 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id y22sf58630291plr.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565421733; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnjukFd4B7HDeMaDZnEpoe2yqVtrywDMaIPCJzrrxXVK0u8oc6TlEzQhnKocwC81aR
         f9pn+3RQwbck3HHkEMqPv0u/JVka449ToRACIwFPukDxx7KSTsuzZyVKT5vG3AL3x7jN
         ARH+m6ekersbH5PhbThyeQqzlWOtECqhxXOmNxyr4PUimaYnoFmrnpPskEpxH9PQzDbK
         yC+yrp1eCGfXOg92hisGh2GIO+dVGs7T7NxRpPBW42L5QXAXRiFGyqEXxoX1zGyp2v6q
         PXf4PSGt74OD5YVg5d8/J9JpgPuztOlrr5shTN3Jt/yV7B7HcGJX1KCOuGMXfDSfFw16
         tXLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=o/PwhMs4jSq5DSWv/THDE9aNUVNeWgityi2P6dFzr1g=;
        b=jA2ruaP2bjqrZLbIF51HnRiouCU6Jz3GozY46dhIfxX3wnBEO+szxbZlWME9JBIGzL
         17m0089LuEdmIHHpBwRzPF6Vvjh4Emi8XzGtkB/CglrfI61aDD0SEOKZAz4lMY4LIWvr
         9YgKpRcoTB0tqV//qv4ajhVjrGZYqUkYYPODlnCScla/+8XuHOop5N9tOMWLvnAkOUap
         x3m/faN35q36XB335KJC9iTbe3DkdU5UKgjQW9AWjYcRWSau8UGt3qgFysU1UwDg0kuR
         y594N2wP6ZWFGwtf5b9ecInMRQtcl/hMM6y71I+lcLBU/irqCT3SxWCcpj87lBZLv89M
         4Qdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=wQJH7ETU;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/PwhMs4jSq5DSWv/THDE9aNUVNeWgityi2P6dFzr1g=;
        b=JdBOukX8R3T83lJcJ4YWuJeqyx6p8WSHRMHCxTeWTLjk3zJVz4bIZL2scrjr94yfhU
         r6RpDK80hd6Sc33zMRslQu4aeTMdXoRCFSJ0opdkCeZtsaeWGev6W20rVjWcpRjJX5LE
         QYLy24Ybw198IJG3CLUXt2kFvf74nWOY8eF1FWIKajuGKNT7ujmCl3nhgVDmFCkxda8h
         OxFnRq2coSvuthXn7EowWRZv1Ez0FQdcbHZ5z0KSBs4+YFQHmK5LAyONakE84hm6F1l6
         ijkfNzK8YuRNTVBzEVqObhb0GvAJ8G+YElr/zh7euOSPv1vk+aRrI1VVMsH/0Sxl0RMc
         vAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o/PwhMs4jSq5DSWv/THDE9aNUVNeWgityi2P6dFzr1g=;
        b=GM9bOQg1xcMiMKDGL3Ee5Eu045e4VoePlGg6oOQmga8Ne3JAH/aJgi/a5Kmz7g8Num
         RaYcUUY+3LEFfKDEJ/LYnjBIKb0fy/d2nTe9HbciRiEkgzm8DRgZlK13g+qRvjM72AnG
         kio8RkE/Zp7VMDYpIoSmN3RNRvD3ngIZgxV8OA5wQoXSAZghgEEyoaH8TItwYFTGLDuZ
         R2C+trA9X9AYTMzLPmlUc5sDLa8QlqDuv4sMHIIsYnQCVMHStww1oFHf88tN+fI974i7
         ty4D2u/wnt7y4AtFV9+U8evYSVvf0R3Mpc/wizTvVOgAvDU4zySMAovDcjdcTxbikOg9
         xYlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/d9WfBOIUgMGLZ2QzObyUjUaIaL67xq3iMb16Q/JmBp+rgBXS
	ogDrvpaVOMt2jZbKkP1l/g8=
X-Google-Smtp-Source: APXvYqy+KLjq57NlC/zXgnO1p1ftyIHyOVmvu7EsuK5OiAJJkfr6ACSGeTbeMqZE0yjLRB3GEkdoSA==
X-Received: by 2002:a62:ac11:: with SMTP id v17mr25783846pfe.236.1565421732925;
        Sat, 10 Aug 2019 00:22:12 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34e:: with SMTP id 75ls20264703pgd.11.gmail; Sat, 10 Aug
 2019 00:22:12 -0700 (PDT)
X-Received: by 2002:aa7:8c03:: with SMTP id c3mr2830467pfd.139.1565421732656;
        Sat, 10 Aug 2019 00:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565421732; cv=none;
        d=google.com; s=arc-20160816;
        b=iSPyvXh94lSruEzzIvimtxQs2pVQmJ9onTlTOv9TgvDLYHRR5sbspP84p2Pp4tlXKX
         N1NctJNcamr2+gguToy3iHROztzFVwM7ow7jwZozHoZznb1QlyIIiriyU2qCwPCxAj+L
         rn1VX2bva2oX/6lyh7tGdqzbm7KZ5E6Rt18fvDPKc9EiBL9CAI35Og5sDsPFoRcuKLxF
         ez+2fWPX3Dww4CxH86NiFxL5c5CXHbzuYIZ+hZjlkOwEZcLNzhS8S9DdzYIrJYshHCvK
         eejjpoq2CqI+Z98rsVw2IMkekcMjA6kG3MmDSKS2DsTPxplHAw3F7T6M5UiMtxGkhmfI
         L/mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=SUoVe7v3rT/MuQ/nwpXN/VHHe+ExuqKtoNBajOsMZ6w=;
        b=ULLVtIVo21GZgmmDrz250bmWy+hS2P9zt1ZvZcMWXE7uir6AH4MF5jj6uNoPGwvOL0
         1kt9gSjMDqqtw+qtk3iAsa/+8n1FPqCyGXZ0RqT/PH3fg4wMtQ9SM1nlxMbWxTRDZkHT
         lAniwB9xw0sxm37F9tE52fyGoFmvLUZVV99NL0AJVHwdRnGTnpDvuY7PaQl7L8gkcviH
         +Q3yw8puUupMKx6uV+IB+zONGF1DjBrF1vYYNYmcGIMtqeAdpBGkWLbSJVG/JQ4ZKfjf
         CPcKBTD+OmAh0j2f8p3Ly3F8FXAUlQbggJlE5KStyn2mhQlnhr7s5eDfvxvWkMejk4Bt
         5amg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=wQJH7ETU;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id cm10si4350001plb.0.2019.08.10.00.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 00:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n190so6130070pgn.0
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 00:22:12 -0700 (PDT)
X-Received: by 2002:a63:124a:: with SMTP id 10mr20982007pgs.254.1565421732167;
        Sat, 10 Aug 2019 00:22:12 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id l17sm24872660pgj.44.2019.08.10.00.22.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 00:22:11 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	David Miller <davem@davemloft.net>,
	Milian Wolff <milian.wolff@kdab.com>,
	Donald Yandt <donald.yandt@gmail.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Wei Li <liwei391@huawei.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Mark Drayton <mbd@fb.com>,
	"Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v4 1/2] perf machine: Support arch's specific kernel start address
Date: Sat, 10 Aug 2019 15:21:34 +0800
Message-Id: <20190810072135.27072-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810072135.27072-1-leo.yan@linaro.org>
References: <20190810072135.27072-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=wQJH7ETU;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

machine__get_kernel_start() gives out the kernel start address; some
architectures need to tweak the start address so that can reflect the
kernel start address correctly.  This is not only for x86_64 arch, but
it is also required by other architectures, e.g. arm/arm64 needs to
tweak the kernel start address so can include the kernel memory regions
which are used before the '_stext' symbol.

This patch refactors machine__get_kernel_start() by adding a weak
arch__fix_kernel_text_start(), any architecture can implement it to
tweak its specific start address; this also allows the arch specific
code to be placed into 'arch' folder.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/arch/x86/util/machine.c | 10 ++++++++++
 tools/perf/util/machine.c          | 13 +++++++------
 tools/perf/util/machine.h          |  2 ++
 3 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/tools/perf/arch/x86/util/machine.c b/tools/perf/arch/x86/util/machine.c
index 1e9ec783b9a1..9f012131534a 100644
--- a/tools/perf/arch/x86/util/machine.c
+++ b/tools/perf/arch/x86/util/machine.c
@@ -101,4 +101,14 @@ int machine__create_extra_kernel_maps(struct machine *machine,
 	return ret;
 }
 
+void arch__fix_kernel_text_start(u64 *start)
+{
+	/*
+	 * On x86_64, PTI entry trampolines are less than the
+	 * start of kernel text, but still above 2^63. So leave
+	 * kernel_start = 1ULL << 63 for x86_64.
+	 */
+	*start = 1ULL << 63;
+}
+
 #endif
diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index f6ee7fbad3e4..603518835692 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2671,6 +2671,10 @@ int machine__nr_cpus_avail(struct machine *machine)
 	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
 }
 
+void __weak arch__fix_kernel_text_start(u64 *start __maybe_unused)
+{
+}
+
 int machine__get_kernel_start(struct machine *machine)
 {
 	struct map *map = machine__kernel_map(machine);
@@ -2687,14 +2691,11 @@ int machine__get_kernel_start(struct machine *machine)
 	machine->kernel_start = 1ULL << 63;
 	if (map) {
 		err = map__load(map);
-		/*
-		 * On x86_64, PTI entry trampolines are less than the
-		 * start of kernel text, but still above 2^63. So leave
-		 * kernel_start = 1ULL << 63 for x86_64.
-		 */
-		if (!err && !machine__is(machine, "x86_64"))
+		if (!err)
 			machine->kernel_start = map->start;
 	}
+
+	arch__fix_kernel_text_start(&machine->kernel_start);
 	return err;
 }
 
diff --git a/tools/perf/util/machine.h b/tools/perf/util/machine.h
index ef803f08ae12..9cb459f4bfbc 100644
--- a/tools/perf/util/machine.h
+++ b/tools/perf/util/machine.h
@@ -278,6 +278,8 @@ void machine__get_kallsyms_filename(struct machine *machine, char *buf,
 int machine__create_extra_kernel_maps(struct machine *machine,
 				      struct dso *kernel);
 
+void arch__fix_kernel_text_start(u64 *start);
+
 /* Kernel-space maps for symbols that are outside the main kernel map and module maps */
 struct extra_kernel_map {
 	u64 start;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190810072135.27072-2-leo.yan%40linaro.org.
