Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3F37TYAKGQE7ZSTV3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9EC13C511
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:01 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id t17sf6945200ply.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097580; cv=pass;
        d=google.com; s=arc-20160816;
        b=lr9DEz97KuSM/kje0lxAL/rSm8mlMqi10slcaNkbRc3MAlwc/2zP73ljiu4pTW6x0o
         UPG/fDSUkztQeg1AueVS4wEpgcgJfRib8HNiTqVvTwlcH/eJFDhQYh73lF/t7H2iM1XA
         c0ckM5apXc077XVk2cn2DTR6MNY0ncxEqIXWBt2TOul7N4yiLVGWPsub1wvx3dQyznF2
         d2b3D8awtidtVywrC0rhVWQoZk0r7JtnigA9G5KBv5EPdybEbY5se9G4SPK4VjZvuyZj
         wuAXFdG8RkgIDhNxNDshEeEBsepIcIiYwpdOzBG+ll68W1ApHFMpwuhNjBwB86aGYUWH
         juFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=SnS0M4/qttpb74130ZKoWynaZcrADALtTvtz1avfDnI=;
        b=Ur4AqDnFtH/hFydIQo6s7lDUhrkt4jtTVzVhD4CFqumTb36Ppo6VtfBHD8I7WE6BX5
         KNxPj0b5Exws6uYqF27NWZz/mgTj2YpQ/naL1HIDjkYxKNf6gD48rtovkNgXYljSLnMb
         8POoK1RFBpiQI2ax/soPjfB/zTdIlo7f4oomqaN4JMWyNnIN1lhXj5Lm7EB3BajqUnDN
         0vrAxeGzz2ni4uC4lQ15KvneonQoDfYNPVVKAL965DP0TlBZA7GFUAhRiHQPIfqQwscY
         +WPYGfII1P3uCF65bgpl/WvDuCdLIq48aj8GJrxkWagSdz1ue5rwdeMFoyfHTMIS0QC/
         Qymw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FYwXTg1J;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SnS0M4/qttpb74130ZKoWynaZcrADALtTvtz1avfDnI=;
        b=oGgBdtWsn261LE9O3y4tDiUqtjTsgGtr2m6DBgtftHlWGNf3pifs+6O6Or68iuZRh7
         x9QF/GZJbv7Na2W0VZpc38yh+bDkJtIqJPc7phRp2SQ0Zxb7FDHnLoaANwTSsA0miIO9
         XJmVY4HjooNJ5L7RArMohWOra9m/9xyNxNX9PLISoq8l4urwzlqPSeWjSIeIMu4tiUz8
         eB/XOYme2LVRSvv3Qrlw4ZqpKFJHAoD2Il6yHDOF/J6MfEcc1lCg02CNYWGcjP6aiO52
         bkuRVElfKAlmLPlT3iaqG9HbvagUplmlYYRjUe+g8p3E04nEzFAW81QWqwgCpFBhtuJw
         kZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnS0M4/qttpb74130ZKoWynaZcrADALtTvtz1avfDnI=;
        b=Krz+tbfikGnu3hA2EaJUJ3AiOfCeIcziLiiihDqVF1BvzISzsl0v3w8pmt2TD9ypKp
         VhCm/068Zd+bzCCBZpcFELlupewkuJm3G3Z8QJOtMMmREg8by5gfOMb8CBhgHgdqYVEw
         pWVK42ypkNDw0ZmLQG53RaeL9hgUt8iDBUj41LdUPuhYgGzLmAVH+zeCXv0QP6wxd+ay
         OBTADGRRN1t5J0Y8CgQZIyJt1NvZMCA19cWJV7b1rIb4dwmsx5qbTqMz5ZnzR+rdBmOO
         NOvmDt+quyy45vwj4j5vpkjTJew7hXypwfNz8VQfIUmsET3xDvBk3n1KtT7SCRWQZYX8
         g+Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKw34lgUjqP5TelkByhgpn+oHH37bCIGlDTL5CgWxX85Lup20q
	7I0Py1/8wXMmyf9ZR0Q0rEw=
X-Google-Smtp-Source: APXvYqwe8wvX5wmETIy1OQw1OpDabY4pi2BnOkvn+jzqbukPFTiZ3CfX2zaJ16zJLVlaSvrg3SpPVQ==
X-Received: by 2002:a62:258:: with SMTP id 85mr32787284pfc.254.1579097580189;
        Wed, 15 Jan 2020 06:13:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls5849580pfy.1.gmail; Wed, 15 Jan
 2020 06:12:59 -0800 (PST)
X-Received: by 2002:aa7:8088:: with SMTP id v8mr32267108pff.142.1579097579742;
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097579; cv=none;
        d=google.com; s=arc-20160816;
        b=Xk4AdqIKnDSGQBcsGWg/zDvRj+mgxbMc+kwAIktGs0KyAimgyDsxc4+KMjwa3aZDj7
         3hfn3lRAQ88GoeHrgZZFLqf4Q4/QMfFcRV9RkoZia1Y6vErQJPwAZzo1SvJ3OTWq0eri
         8xhpv5bZhFz1uFXn1RrIX5bogTagYJgVO7IIoxbIH3rEDa7Jjk7xwgxMTg9IvuDqQW7x
         G8Qt0Npi3RSs1ex1vjxmfEQfCfQVAleWIx0rnbMvpt98AfmaWnskzRo9f50po71abLuc
         wdYjryCEnxMbUYUYrCxXHvczkJAP07haPaakqA22tmFaN89o56mgQwjp6YnDy/UNNft7
         IBxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=oMSiMB8K20nYF0DmyOcRPG+Rwk4tEyMGITF6HinMjt0=;
        b=uKELIYQYWi8gP4nRp13WiPZOrZV9+LpNob0kmwqtK9n0URmYTkunzDe9CvRX4pKDSL
         coiLBMSl32NpvkoJD93UmhGmHTgzp/4bk9FEwqqPmMl6AMGfpCP1RZaxEmaJP6//mHnP
         g8GFMX0s7cMpfjNFM1Ls5QanztgZ3jfFKJPUHE/cL8ChsaVBevu7+PJJg8AnYv0Qkkjq
         C7yVYUKRsTNQvrRmRnuSyCURN2ONi2LoGUxd3z9MUvirGFOFF+I3rsTl46ZywzYDLfFg
         gMdhKo3MnO8HrzWn/oXbWSryPf2/pkETGUlzojhCduZVDqYjVVXPyelG0lLtXq0EGMH/
         x55Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FYwXTg1J;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id a24si622930plm.1.2020.01.15.06.12.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-22-95ea4vdnNku1FThiL7DpKA-1; Wed, 15 Jan 2020 09:12:57 -0500
Received: by mail-lj1-f197.google.com with SMTP id u9so4187350ljg.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:56 -0800 (PST)
X-Received: by 2002:ac2:58ea:: with SMTP id v10mr4813024lfo.202.1579097574851;
        Wed, 15 Jan 2020 06:12:54 -0800 (PST)
X-Received: by 2002:ac2:58ea:: with SMTP id v10mr4813000lfo.202.1579097574687;
        Wed, 15 Jan 2020 06:12:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id 195sm9156230ljj.55.2020.01.15.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:53 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 149BD1804D6; Wed, 15 Jan 2020 15:12:52 +0100 (CET)
Subject: [PATCH bpf-next v2 03/10] tools/runqslower: Use consistent include
 paths for libbpf
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Wed, 15 Jan 2020 15:12:52 +0100
Message-ID: <157909757197.1192265.9826436565959764419.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 95ea4vdnNku1FThiL7DpKA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FYwXTg1J;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

Fix the runqslower tool to include libbpf header files with the bpf/
prefix, to be consistent with external users of the library. Also ensure
that all includes of exported libbpf header files (those that are exported
on 'make install' of the library) use bracketed includes instead of quoted.

To not break the build, keep the old include path until everything has been
changed to the new one; a subsequent patch will remove that.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile         |    5 +++--
 tools/bpf/runqslower/runqslower.bpf.c |    2 +-
 tools/bpf/runqslower/runqslower.c     |    4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index fb93ce2bf2fe..3b7ae76c8ec4 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -5,6 +5,7 @@ LLC :=3D llc
 LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
+LIBBPF_INCLUDE :=3D -I$(abspath ../../lib) -I$(abspath ../../lib/bpf)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
 CFLAGS :=3D -g -Wall
=20
@@ -59,13 +60,13 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
=20
 $(OUTPUT)/%.bpf.o: %.bpf.c $(OUTPUT)/libbpf.a | $(OUTPUT)
 	$(call msg,BPF,$@)
-	$(Q)$(CLANG) -g -O2 -target bpf -I$(OUTPUT) -I$(LIBBPF_SRC)	      \
+	$(Q)$(CLANG) -g -O2 -target bpf -I$(OUTPUT) $(LIBBPF_INCLUDE)	      \
 		 -c $(filter %.c,$^) -o $@ &&				      \
 	$(LLVM_STRIP) -g $@
=20
 $(OUTPUT)/%.o: %.c | $(OUTPUT)
 	$(call msg,CC,$@)
-	$(Q)$(CC) $(CFLAGS) -I$(LIBBPF_SRC) -I$(OUTPUT) -c $(filter %.c,$^) -o $@
+	$(Q)$(CC) $(CFLAGS) $(LIBBPF_INCLUDE) -I$(OUTPUT) -c $(filter %.c,$^) -o =
$@
=20
 $(OUTPUT):
 	$(call msg,MKDIR,$@)
diff --git a/tools/bpf/runqslower/runqslower.bpf.c b/tools/bpf/runqslower/r=
unqslower.bpf.c
index 623cce4d37f5..48a39f72fadf 100644
--- a/tools/bpf/runqslower/runqslower.bpf.c
+++ b/tools/bpf/runqslower/runqslower.bpf.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2019 Facebook
 #include "vmlinux.h"
-#include <bpf_helpers.h>
+#include <bpf/bpf_helpers.h>
 #include "runqslower.h"
=20
 #define TASK_RUNNING 0
diff --git a/tools/bpf/runqslower/runqslower.c b/tools/bpf/runqslower/runqs=
lower.c
index 996f0e2c560e..d89715844952 100644
--- a/tools/bpf/runqslower/runqslower.c
+++ b/tools/bpf/runqslower/runqslower.c
@@ -6,8 +6,8 @@
 #include <string.h>
 #include <sys/resource.h>
 #include <time.h>
-#include <libbpf.h>
-#include <bpf.h>
+#include <bpf/libbpf.h>
+#include <bpf/bpf.h>
 #include "runqslower.h"
 #include "runqslower.skel.h"
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757197.1192265.9826436565959764419.stgit%40toke.dk.
