Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBEGHQHYQKGQE7M3TNNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A9E13DB65
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:25 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id 33sf3187057uaj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180944; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmfj0PVAOdZ0aZ/wrqwukyBiIaw8sgPWV21LpoQp/BWyvARlG0E6/omWYhbL15kcP/
         0N1hEeeb8MtVevd2UkL+G9LIb3bnVf6HlhXRD0x3M699hVxQRw42j7F7Up/0TdSodgRj
         RjTxL48NJgXCGCPyllL68u6SnrqUVwJk+ujBTIokkwpepMYSs6dpjEQqZjVk2X85/503
         P0mRLBRmsgX0Y7ke//FG6liYVzHuVgkbnb5ZQD4O6Jjax0Xfq+7QNOKgyj/UmTQrUYrF
         tQsTr20NNpGcN4WIb1i2nQgOxaVGTWCjdXIhlb8g+DvYm1LQ4++2d+0avkERVLz2uDBX
         Oi8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=e/y8QRPIzcfur/GRsjOz1ykORfXVBk+4LGMfZMV668w=;
        b=xd4HdiqcMUki/eAbL4IOvDCwLoDbtmbotO+qmleMLBprpOa4bg11m1D8WF/hGFVL7a
         8+9nopEItz8O59JVD8/hQ16Syx5gs9I/A4XgYEdBIyAWMoqAywAqe4HIKpFZXEVB0e9R
         SueeXCWpr0dyR2v64P5FD5K69FovOc9iN59c8SSDUIHH4wAyXFZFHhAA8JSyK3AtW08P
         drjCn9Qv9Ca/Yhvjp0I5Q7fjr3jgGQkTXOTz5gE/7VgfcRiViQieFzOKmxuLlNuwH1zK
         UEnh3Vx00uAcCk1RX8ggwzfduvoGS4XMJ6ZMY1O4eax++ywPKhklVM8XYyI4v3n1H94Z
         nlEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RTYKmpwP;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e/y8QRPIzcfur/GRsjOz1ykORfXVBk+4LGMfZMV668w=;
        b=JGpVH8NByH1siyQPHwjvRjJ/v6cxWN048NfY1KEljO4twOVof2dqfQtHha5COUqXAH
         7LJdMhYtx/+8sWM3xp9L006b3reHziUnuU9oujj5oNOplST9las4nwcBOo3casfM/+EA
         ArMTgc2PKaRXbuqn8g2yOp21KSU5eE3s7eBI6erzy6WJKQia0j4vIyAkIUZI5Wt4Xakn
         VekW9J6LA9SE0QD82z8c6rwxhM4qmvsKQYKkmHlc2Z3zJkvkWzXlOPzVI33U5Gj9/aA4
         IjOJMR4/7BgiMgOIJzAyW8Scabm6i8RmSqNAWlw/7DNsz7EhzpSYfw6pdysBkBUJuHjD
         s1Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e/y8QRPIzcfur/GRsjOz1ykORfXVBk+4LGMfZMV668w=;
        b=Dr7to58SzDCp8XbCcdq7EPexLu8+OpychJAUkdxaVOXlrtR1FsZBMbTO97ei5Pmy5+
         ws/PuV/lzWcjEXb8cd7m52GUVQw/gX6wtEHTLdr7vElzytuNs28wI25RfDgv1dEW6OUq
         xx8cQMAUVyVG5HQ52/XPrF2eVnQ2kGMmSyxyxvYa1JVgWNE6pwZQ1MgoyR8Ul6gm1PA2
         ATfvptiMo9vrshXTRx6t32aMmQEhNXInTnrDn9a/6GzyJJ7VKQ+/gB1Fc9qI2IG1Iz2G
         rMp+ggVo3hpw91dCRm1tUZk9r2UHAsA0Tjn5y1VwHqh/0dKVXYH2U6rFLjBrZL1wCf15
         p3RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWI+wWxy08VMGZ2kQoaOjACxNuhPER5ejITS7e/uR4UP8JSidB5
	mPPKZhsguBTfDuyEI/4bdJI=
X-Google-Smtp-Source: APXvYqxPHguH9F3U7JmpyDikmz1vUTVwwjopQ6Q1QTYn7q3sqpt5mMwhx1DYZl2O59H7GzCX5VwExQ==
X-Received: by 2002:a67:e954:: with SMTP id p20mr1467410vso.3.1579180944464;
        Thu, 16 Jan 2020 05:22:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls1287273uah.0.gmail; Thu, 16 Jan
 2020 05:22:24 -0800 (PST)
X-Received: by 2002:ab0:136e:: with SMTP id h43mr21300537uae.90.1579180944031;
        Thu, 16 Jan 2020 05:22:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180944; cv=none;
        d=google.com; s=arc-20160816;
        b=gNmo4k+1HlssVL0PrPtm3MzE/6ws+/9+IjgtveehWXUp7ANIxSrGIYVnsuLjw68Yi4
         FG8CFBr7EFK1fUmOu+zNB6qhCtvCHnhaCP+LitEtL/jVndpKGeheEzWspR8Ka8sRtR6G
         6gwNuKF0Xii6gtsI1b0q7+jAzqDpGtfPgowWoNL6kniYuFMH+wJcayU+du+O0KPwq2Xz
         dB7fQBeMQoqnsdhKQwRKbVkR93FDOcskTk5Q6/H030/EhthoZFIdSi6mWvg/pgq46p/H
         QqQfoChfrbfX/j6biFekKVO05pwkTi58H7XdeQlLe1A5US9vM0xLeyJ51ti1eRuYcXw/
         BrUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=gOOBhai5r25qD9dC/jA2fwYuSRE27Tp+m/mujyCQThI=;
        b=IWZxE1aZNWRcwpApu4Bp3oxB738vfTc6ChTc5CNMnSRDUB2u5rmHpFT7pzjh2K0Rg4
         SFiwckvDI26cOiBWpr90/HF8juwRyuAzqUzY/7nN4WALz2C7TDbnnZPY1KiEdm1rtRys
         /6zbaB1KTA1njgo5EgaUh3nDOLv5V+8MO9wBNQzdOoPndTeMm94tv8501OSmOT0pGRj8
         XvgbVjqOmdjmuebIxvdYnEg/zTr+cu2cqgg4aVSmCQhKedMQ1+vQykayEHWemrR9FLpU
         lARgVyEmfLWf/YmF/drNJvGYkO7Nvg28etPATl4uRrs6/XxDAIi/GE2SmyWq7Jy2adVn
         Xlfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RTYKmpwP;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id i27si961067uat.1.2020.01.16.05.22.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:24 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-E_Onzcg1Mf6fGG6B0845fw-1; Thu, 16 Jan 2020 08:22:20 -0500
Received: by mail-lj1-f199.google.com with SMTP id u9so5149870ljg.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:20 -0800 (PST)
X-Received: by 2002:a19:3f51:: with SMTP id m78mr2377242lfa.70.1579180938886;
        Thu, 16 Jan 2020 05:22:18 -0800 (PST)
X-Received: by 2002:a19:3f51:: with SMTP id m78mr2377225lfa.70.1579180938699;
        Thu, 16 Jan 2020 05:22:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id 140sm10713621lfk.78.2020.01.16.05.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:18 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 39AED1804D7; Thu, 16 Jan 2020 14:22:16 +0100 (CET)
Subject: [PATCH bpf-next v3 04/11] tools/runqslower: Use consistent include
 paths for libbpf
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Thu, 16 Jan 2020 14:22:16 +0100
Message-ID: <157918093613.1357254.10230277763921623892.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: E_Onzcg1Mf6fGG6B0845fw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RTYKmpwP;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
index 89fb7cd30f1a..c0512b830805 100644
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
@@ -57,13 +58,13 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
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
clang-built-linux/157918093613.1357254.10230277763921623892.stgit%40toke.dk=
.
