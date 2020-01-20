Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3GLS3YQKGQEMFXG3OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A136E142B85
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:53 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id 144sf19880359iou.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525612; cv=pass;
        d=google.com; s=arc-20160816;
        b=0tUnVdMBiRUvWdhR37hIBAvvdyZO5KpxjujEnZjFeA7BBzwLudtitIZ095+8l080gZ
         8DBPEUtx195jLU0ib0YWMCWnHKnN4dhdZ2AvYmL40O/Ej5+CF0fCwmft1ZaGcaSJ6wGh
         qka131x18+RNqwT6+tyBC6cahZITytKHMR3uC/cENeSvVrZzeFCNrHrmiLuTxwjpljdu
         IFYWFoF9kmaPYCTATCT1Lqr5mBHI1cIQl9yd+FSCaN7DCNxVL54PXNhL+OBKNUyr+Q2Q
         X9XnubZKEIwabf4mUpPCRcxQ2mfMxKOKXW6V5BkcwJ3dd+wJ4cnN5G0AsznPefCUyGhn
         JM3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=58P2cArgf5yvzt78wV8iw/4urWvfzQHTOib/TeUzpQo=;
        b=X5dG1a5Vgxe509QPMbzmrhxlSdj9d066ojPtNM13xRuWYq//LZ5B/n197+hXsEFFPo
         yLj9VbOXAhh+k65EvqD32P0JAfib9APB0j6JAZ1SNBUf6VYDWSTfgkqK4J4kGoyHC/ZJ
         dloMg5tenwJVPkzA9eJrnETeVaHyBa8wrI3n+o5IJiZQh0jTJkEuMuFCGOgmZx7zXuRR
         7xGyaPBVnz0sKeO6kjdR5vou+6Zw/uG9Qrqt2p5E1HQ3Ob7fgy+iHuh14nggeFmOl+aO
         eXH0jxwmSdcL+VBDXZ6fbByuOc+G92RkiLwZr3zF6lTk2/jGKf/l7PBJxAmPrPnhLNJF
         EzZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cbd0BBsG;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=58P2cArgf5yvzt78wV8iw/4urWvfzQHTOib/TeUzpQo=;
        b=Zm19RBjw2Q+JFtFMx/cDUBRACk/dzoirS8XHbx3F4qWuzorbhSLozF0OK0fuS0cGYf
         Te3+hFD5fyANlTuVjc6u07GUyL10DIIQO7ljI5afRiQqOqRrWwD5SmBWBeXiAIl9t1m3
         jBwvp1kcPjr8MhC7pS2oX8iFIhCQoW/X5U4aU/cNcQZ7eBX/tGdgfEr+ovBRYY1CWcmv
         fcUx6fWsgF+UTCQhUVgjJQx8QZg7mri/QSY4nnKqawSW+EMGZ2e2bWi1V8Dpq/ioYTE9
         EOkXvK2qBu2cctqiQAwFV9XSugyJ8tCvsmp/cTw1RWK46FSaPeyaTDnfJgwgJ+tn4RIb
         4ymQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=58P2cArgf5yvzt78wV8iw/4urWvfzQHTOib/TeUzpQo=;
        b=l03PSYmRULkqBrRcZhhmlzZTvyZoNIDA8umMg0wbT8zOuJNWeOYzmRZSfQ2hLOdEQC
         qyk9b3tf0FJ37IUiLPN6SG7qLj8C0XqBX8KRlV33ec+LKi7seV6G0hVKhyRoAlvKUeIe
         5kSUS0ZBanHnwssrtv229DmFFGY7hLj6tFr7yhWK48oqaRWzKo8gCpoKsvGdqbzs5lfC
         o4eZ0opal0e3lfnO7RMpT/DIQ9QBan0jLYgvuOIDDEPp9N+0dyKY8YXJMQ+wdSPI9UYl
         ta/yD/d3OFqKoCCP/um6jnd2UdaG+ENh3kIBguOHRaML4GRqQlzcPNMwT42wprKLnOqQ
         qjAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUbM/kDrrFcNWSXiKVTuHulPHUi49GYbI9lIOcekj03NCbq7dzI
	tgh7SDlGcDUMRjfguilAwUg=
X-Google-Smtp-Source: APXvYqwiETkMEIAEQGpfkrdgtr6D6G3FJrbJSXyg0xyCihiVSmz1/6eOsaVXhLvXtkKCx5yALRTyOg==
X-Received: by 2002:a05:6638:a4a:: with SMTP id 10mr44072804jap.44.1579525612472;
        Mon, 20 Jan 2020 05:06:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls5669833iln.5.gmail; Mon, 20 Jan
 2020 05:06:52 -0800 (PST)
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr11472748ilo.227.1579525612026;
        Mon, 20 Jan 2020 05:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525612; cv=none;
        d=google.com; s=arc-20160816;
        b=gwSpGPRSokzmeRVZKIa0rdkLiGJCirZncWHxrtNIY/tIRxbndm0cd/t3mGSZlZLnCV
         OQMwNbO6DvHCjem5aKzMWO3JvWnfCSMvWCZkUXi2allFN+7Dl5i5WHn9yM4TzPJxkIDN
         B1VeQh7bQtNZymT4va/Iz/W6QiDQ27zwGHlHB8ifdG3LjiaTwdFQPumthDqZ4LjyqLmz
         YH8QYNxQBJFSEN78Sx0hXvjh4GuM5n5oMeB8JTxTWGn1RaeeVU7HxSZqshu+TLU1FBKW
         C3grQA0t0mlgrzZ3tL4XAZQBpQ0x4OCcJHcUCwIaGKqRn36Z7kneoxI63mHxnrn/1Mxa
         Ur3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=qNhWokr+SfMrmxT7xxOImaovOE5Q2qURsjUkOqwyAsE=;
        b=UYiNU9VhoY1jJrn9wwhtPeFXiFkpP8JOOdAxmow1roAN3EdLVNScBMks5XMWsqIHp/
         ZX7F/qC4ACsuwLr5gqQaofqac/5ticFdCeH4BX5Il1jQkilvyzJEkKJAhwdbYUsxzs7y
         A2OwL2ibj5staTzetmTwIR+UTu0LjdUfN+G0A8H9ywXLnjKEIwjp7AQgeG52/b/aYMph
         vHxdnsNcg3ZNP3EKXSRQus0ZPyhOxGuHOnu0GjFSOOOoAVFO3JEu+PiGbuFNUiRHzRfq
         Lqh9/CNcid9TXqLo+s6kprRORv5iU603yz3isl+tr9UzqBVv+qYyMRxzjuN9EoYoPwbY
         NVmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cbd0BBsG;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id a1si1595705iod.3.2020.01.20.05.06.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:52 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-208-xYVSfv9OMEabf700wJMDXg-1; Mon, 20 Jan 2020 08:06:48 -0500
Received: by mail-lf1-f70.google.com with SMTP id i24so1686858lfj.17
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:47 -0800 (PST)
X-Received: by 2002:a2e:9cd8:: with SMTP id g24mr13288195ljj.243.1579525606546;
        Mon, 20 Jan 2020 05:06:46 -0800 (PST)
X-Received: by 2002:a2e:9cd8:: with SMTP id g24mr13288163ljj.243.1579525606301;
        Mon, 20 Jan 2020 05:06:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id g24sm16765412lfb.85.2020.01.20.05.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id A70281804D6; Mon, 20 Jan 2020 14:06:44 +0100 (CET)
Subject: [PATCH bpf-next v5 04/11] tools/runqslower: Use consistent include
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
Date: Mon, 20 Jan 2020 14:06:44 +0100
Message-ID: <157952560457.1683545.9913736511685743625.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: xYVSfv9OMEabf700wJMDXg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Cbd0BBsG;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile         |    5 +++--
 tools/bpf/runqslower/runqslower.bpf.c |    2 +-
 tools/bpf/runqslower/runqslower.c     |    4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index 3242ab874ac0..b7b2230f807b 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -6,6 +6,7 @@ LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
+INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/bpf=
)
 CFLAGS :=3D -g -Wall
=20
 # Try to detect best kernel BTF source
@@ -51,13 +52,13 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
=20
 $(OUTPUT)/%.bpf.o: %.bpf.c $(OUTPUT)/libbpf.a | $(OUTPUT)
 	$(call msg,BPF,$@)
-	$(Q)$(CLANG) -g -O2 -target bpf -I$(OUTPUT) -I$(LIBBPF_SRC)	      \
+	$(Q)$(CLANG) -g -O2 -target bpf $(INCLUDES)			      \
 		 -c $(filter %.c,$^) -o $@ &&				      \
 	$(LLVM_STRIP) -g $@
=20
 $(OUTPUT)/%.o: %.c | $(OUTPUT)
 	$(call msg,CC,$@)
-	$(Q)$(CC) $(CFLAGS) -I$(LIBBPF_SRC) -I$(OUTPUT) -c $(filter %.c,$^) -o $@
+	$(Q)$(CC) $(CFLAGS) $(INCLUDES) -c $(filter %.c,$^) -o $@
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
clang-built-linux/157952560457.1683545.9913736511685743625.stgit%40toke.dk.
