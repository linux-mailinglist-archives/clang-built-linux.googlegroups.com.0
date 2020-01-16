Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBEWHQHYQKGQE7GMA4GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0405F13DB66
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:28 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id f124sf12976791qkb.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180947; cv=pass;
        d=google.com; s=arc-20160816;
        b=A7LCcVltVSzKlpA2R2Fmqylr9QjorWPjs5sazOw6rPxvHxFPlovEb3LDqJV9g8P/cR
         jGFtcfQIGYsfFArkCCsGcY00VyeK8XoQwqJYGcqNmiRa2OvOrtZHpx6wzX7KJ5MrPhSm
         J4RsE58A2Y+TfW8jDKK1635u9Jaw+IxoNwBf5lZEuLzigr4T7UbGwBhNgFnkWHY7r1/1
         JBJKaXcW+eEgWy9oAbYlamZt5Dl02RxJ93YhMg3uIV2uQVCPVqy4tlUmuPb3lffD342+
         JDGbn++QAg86Fa3eokbtOY2/9DlUzHCxjOWn9Y/OOlhGZcFeEQGFzX3s/xm3/Shg6FpR
         sA9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=nW6mf6owfMZScnqQKpMDtXc1gb9x2nNDlVDT+Fj8bwE=;
        b=piZmPIpP65LJqsC54bW7AFNFE/ImXtO9RBY6ByZ8M0DviA4syE0DlCL7/RONmSS5hs
         MnG4wieBdlVnIaKa7axSlAxFXdnRhSERzei/yPEMQqSXAQZBqaTdxLu17aRXjDqhlqm8
         ucldd7duaSqXf1oM0n0XZGUrwHa9hLl4yv2icW0KM9thVgAoxPQTLh8LuOsSt7iBDfHu
         vcjlssVNVGYo3vQYGhJx3KpuvcvpGXYD1KOwVSsdjbWLsw+W11kWE9s/oYT75FAb7aWE
         076KZaaxFAKEZ2JgL9v6d4ipcukVJctAXxfCCa+P2qWa4nU4aFNYtWwjVO61MabK1IQs
         Scag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y46Uws8y;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nW6mf6owfMZScnqQKpMDtXc1gb9x2nNDlVDT+Fj8bwE=;
        b=aovmy4dTob1fjvRBjEBnm2vIWEiVoJS6IQ7ZdVYesN4AKLtIov0oF1cGKY58tNZK6V
         DxhcTZhEO89GKCCsIGAeqR25uj3AdD55X4Ax0Jbz8p1LklGsdU/yEbCQBCdknDnppPSK
         IxUwibkjvd/LJa57yKdZuS2d+2bRS5IHEz4gLuEucKZ2LPjGil3mGIPQ10ltD7oAgJqD
         +ffcqNUF9opaCvPqBuGSCjuZ0ysD4xRcYM3nJ8dx9pJ4iJoYN5aEQ1gzByRxOkI20iUi
         HMkBdKmbFi3HQw+tfCYDge9NO9KB9zc1Q4y+ah9OX4hDyLpU+TGAizouu9j3UWdmgiBS
         TwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nW6mf6owfMZScnqQKpMDtXc1gb9x2nNDlVDT+Fj8bwE=;
        b=EZziXZLrecrGIjCERTZWwat6FAoVJr/XHsAV+PM8sWEER6iZmyKntbj0ESakcwjdeq
         OcPKCpHdvZVIx1X/Q8EXAZVEuQSnVgj9m4aGPYAH0qOdQGdMHJuxD29IJb/em7VP7bef
         faGuEFPlXSNziXr1bocBcuX1wUP2xDOZv33mzjJ0OcTDPaxoAZc2F1237PZtu8Fqd8/b
         jHoMGg+raSocdlrtXstOMOPIYzuywJKNquErlDiTf5O9ko61B/CTku6iEZbKpKMoQERY
         SYHaH0xzOwFXC0rPQ8S7PvSSoKyEhB/DCxCvSrco6ykY27J+MZSx66MKEHMHz4Wk4i70
         /unQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWuyxMcrVbuNY4xgdqbx1GyDsXgctsb9R2EzY9cyQgaPVqB4Qfo
	v5cpRcnV/mU4200HoIVCFzA=
X-Google-Smtp-Source: APXvYqwiALVgxeu3VBbTJY7uZbnF9zlpfNg/CTkh/9Sm0CU6z8QhOv/3YUwfvIKqx+oUQgDCmPQQYQ==
X-Received: by 2002:a05:6214:15cf:: with SMTP id p15mr2528133qvz.140.1579180946813;
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ac11:: with SMTP id e17ls5418330qkm.7.gmail; Thu, 16 Jan
 2020 05:22:26 -0800 (PST)
X-Received: by 2002:ae9:f003:: with SMTP id l3mr28154054qkg.457.1579180946467;
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180946; cv=none;
        d=google.com; s=arc-20160816;
        b=oOUuO8C2wvLYim0cbmqYM3PrJMFvvXeVw+RSmwwvF1BtUIudMe9XNM6JaFYNGiBwy5
         2ft0MViDrOciP/SemNe/waJcamGsGrIkfhgXPEYWYZm3r0eAI2+lZf7AAVRT4GuamIXD
         dRSZyDOj7ZO4EkgZzF6KyuEg47gAeg4SQK7vY1O5erGxCSLAT27N/0qV33/eqTI49Kzq
         UfgMeRpBoq8TrPQEdxgsM9yHhkbpcn9GutYiPkkwwI11w/i7QX8sf9C3gvY12Tvpd0eS
         MsYEguZOkF5a2SGRD0zw2U38fuZ1Q7SeqE+9yX6FXc982tnsOxg77C1kBIsCy14IRLRf
         Je5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=f0RSs0qAWh3suBHpn7SGVyiw+uxUJoD4LTo15iDeOZQ=;
        b=vnzqHxavv8Etroq2KNVvr9r6IfGBQbDcbi8ybAC7RrxgT62ESeWWwSjkx/BD5oWBu0
         ystH1uHDVsznkskltBpLBiDcKfLqTi4ndkBNL09X4r6Ye8TZOguHaTWPotgmtZvojMDJ
         abKAacX/+wKSlVt+wCmTJSWrqR9O9KzAuJDMyvfjfRSoTjbhKzA5Jvge3l8kIJof587w
         z8GKEna3v8tI9nHWexknuH/v1/DXoohvJsjI+3AdeXw3MDhp754HthXRDZtm9eLbyh2z
         /NWYD7d9p7ag2T+8cCGDuAurh9Z2MeYLEHggw+KV0wiufcDETm99aoUNos1MO/vgcxP5
         0YYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Y46Uws8y;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 134si823660qkd.2.2020.01.16.05.22.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-iWYSmYmCPU-T5LXSoqIu7w-1; Thu, 16 Jan 2020 08:22:23 -0500
Received: by mail-lj1-f198.google.com with SMTP id s25so5147629ljm.9
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:23 -0800 (PST)
X-Received: by 2002:a2e:3514:: with SMTP id z20mr2173432ljz.261.1579180940603;
        Thu, 16 Jan 2020 05:22:20 -0800 (PST)
X-Received: by 2002:a2e:3514:: with SMTP id z20mr2173417ljz.261.1579180940344;
        Thu, 16 Jan 2020 05:22:20 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id l8sm10745410ljh.65.2020.01.16.05.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 7FD691804D8; Thu, 16 Jan 2020 14:22:18 +0100 (CET)
Subject: [PATCH bpf-next v3 06/11] bpftool: Use consistent include paths for
 libbpf
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
Date: Thu, 16 Jan 2020 14:22:18 +0100
Message-ID: <157918093839.1357254.16574794899249700991.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: iWYSmYmCPU-T5LXSoqIu7w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Y46Uws8y;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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

Fix bpftool to include libbpf header files with the bpf/ prefix, to be
consistent with external users of the library. Also ensure that all
includes of exported libbpf header files (those that are exported on 'make
install' of the library) use bracketed includes instead of quoted.

To make sure no new files are introduced that doesn't include the bpf/
prefix in its include, remove tools/lib/bpf from the include path entirely,
and use tools/lib instead.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/bpftool/Documentation/bpftool-gen.rst |    2 +-
 tools/bpf/bpftool/Makefile                      |    2 +-
 tools/bpf/bpftool/btf.c                         |    8 ++++----
 tools/bpf/bpftool/btf_dumper.c                  |    2 +-
 tools/bpf/bpftool/cgroup.c                      |    2 +-
 tools/bpf/bpftool/common.c                      |    4 ++--
 tools/bpf/bpftool/feature.c                     |    4 ++--
 tools/bpf/bpftool/gen.c                         |   10 +++++-----
 tools/bpf/bpftool/jit_disasm.c                  |    2 +-
 tools/bpf/bpftool/main.c                        |    4 ++--
 tools/bpf/bpftool/map.c                         |    4 ++--
 tools/bpf/bpftool/map_perf_ring.c               |    4 ++--
 tools/bpf/bpftool/net.c                         |    8 ++++----
 tools/bpf/bpftool/netlink_dumper.c              |    4 ++--
 tools/bpf/bpftool/perf.c                        |    2 +-
 tools/bpf/bpftool/prog.c                        |    6 +++---
 tools/bpf/bpftool/xlated_dumper.c               |    2 +-
 17 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/tools/bpf/bpftool/Documentation/bpftool-gen.rst b/tools/bpf/bp=
ftool/Documentation/bpftool-gen.rst
index 86a87da97d0b..94d91322895a 100644
--- a/tools/bpf/bpftool/Documentation/bpftool-gen.rst
+++ b/tools/bpf/bpftool/Documentation/bpftool-gen.rst
@@ -196,7 +196,7 @@ and global variables.
   #define __EXAMPLE_SKEL_H__
=20
   #include <stdlib.h>
-  #include <libbpf.h>
+  #include <bpf/libbpf.h>
=20
   struct example {
   	struct bpf_object_skeleton *skeleton;
diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
index 39bc6f0f4f0b..c4e810335810 100644
--- a/tools/bpf/bpftool/Makefile
+++ b/tools/bpf/bpftool/Makefile
@@ -45,7 +45,7 @@ CFLAGS +=3D -DPACKAGE=3D'"bpftool"' -D__EXPORTED_HEADERS_=
_ \
 	-I$(srctree)/kernel/bpf/ \
 	-I$(srctree)/tools/include \
 	-I$(srctree)/tools/include/uapi \
-	-I$(srctree)/tools/lib/bpf \
+	-I$(srctree)/tools/lib \
 	-I$(srctree)/tools/perf
 CFLAGS +=3D -DBPFTOOL_VERSION=3D'"$(BPFTOOL_VERSION)"'
 ifneq ($(EXTRA_CFLAGS),)
diff --git a/tools/bpf/bpftool/btf.c b/tools/bpf/bpftool/btf.c
index 60c75be0666d..4ba90d81b6a1 100644
--- a/tools/bpf/bpftool/btf.c
+++ b/tools/bpf/bpftool/btf.c
@@ -8,15 +8,15 @@
 #include <stdio.h>
 #include <string.h>
 #include <unistd.h>
-#include <bpf.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/btf.h>
+#include <bpf/libbpf.h>
 #include <linux/btf.h>
 #include <linux/hashtable.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <unistd.h>
=20
-#include "btf.h"
 #include "json_writer.h"
 #include "main.h"
=20
@@ -532,7 +532,7 @@ static int do_dump(int argc, char **argv)
 		if (IS_ERR(btf)) {
 			err =3D PTR_ERR(btf);
 			btf =3D NULL;
-			p_err("failed to load BTF from %s: %s",=20
+			p_err("failed to load BTF from %s: %s",
 			      *argv, strerror(err));
 			goto done;
 		}
diff --git a/tools/bpf/bpftool/btf_dumper.c b/tools/bpf/bpftool/btf_dumper.=
c
index d66131f69689..eb4a142016a0 100644
--- a/tools/bpf/bpftool/btf_dumper.c
+++ b/tools/bpf/bpftool/btf_dumper.c
@@ -8,8 +8,8 @@
 #include <linux/bitops.h>
 #include <linux/btf.h>
 #include <linux/err.h>
+#include <bpf/btf.h>
=20
-#include "btf.h"
 #include "json_writer.h"
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/cgroup.c b/tools/bpf/bpftool/cgroup.c
index 2f017caa678d..62c6a1d7cd18 100644
--- a/tools/bpf/bpftool/cgroup.c
+++ b/tools/bpf/bpftool/cgroup.c
@@ -14,7 +14,7 @@
 #include <sys/types.h>
 #include <unistd.h>
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/common.c b/tools/bpf/bpftool/common.c
index 88264abaa738..b75b8ec5469c 100644
--- a/tools/bpf/bpftool/common.c
+++ b/tools/bpf/bpftool/common.c
@@ -20,8 +20,8 @@
 #include <sys/stat.h>
 #include <sys/vfs.h>
=20
-#include <bpf.h>
-#include <libbpf.h> /* libbpf_num_possible_cpus */
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h> /* libbpf_num_possible_cpus */
=20
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/feature.c b/tools/bpf/bpftool/feature.c
index 94735d968c34..446ba891f1e2 100644
--- a/tools/bpf/bpftool/feature.c
+++ b/tools/bpf/bpftool/feature.c
@@ -12,8 +12,8 @@
 #include <linux/filter.h>
 #include <linux/limits.h>
=20
-#include <bpf.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
 #include <zlib.h>
=20
 #include "main.h"
diff --git a/tools/bpf/bpftool/gen.c b/tools/bpf/bpftool/gen.c
index 7ce09a9a6999..f8113b3646f5 100644
--- a/tools/bpf/bpftool/gen.c
+++ b/tools/bpf/bpftool/gen.c
@@ -12,15 +12,15 @@
 #include <stdio.h>
 #include <string.h>
 #include <unistd.h>
-#include <bpf.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <sys/mman.h>
 #include <unistd.h>
+#include <bpf/btf.h>
=20
-#include "btf.h"
-#include "libbpf_internal.h"
+#include "bpf/libbpf_internal.h"
 #include "json_writer.h"
 #include "main.h"
=20
@@ -333,7 +333,7 @@ static int do_skeleton(int argc, char **argv)
 		#define %2$s						    \n\
 									    \n\
 		#include <stdlib.h>					    \n\
-		#include <libbpf.h>					    \n\
+		#include <bpf/libbpf.h>					    \n\
 									    \n\
 		struct %1$s {						    \n\
 			struct bpf_object_skeleton *skeleton;		    \n\
diff --git a/tools/bpf/bpftool/jit_disasm.c b/tools/bpf/bpftool/jit_disasm.=
c
index bfed711258ce..f7f5885aa3ba 100644
--- a/tools/bpf/bpftool/jit_disasm.c
+++ b/tools/bpf/bpftool/jit_disasm.c
@@ -24,7 +24,7 @@
 #include <dis-asm.h>
 #include <sys/stat.h>
 #include <limits.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
=20
 #include "json_writer.h"
 #include "main.h"
diff --git a/tools/bpf/bpftool/main.c b/tools/bpf/bpftool/main.c
index 1fe91c558508..6d41bbfc6459 100644
--- a/tools/bpf/bpftool/main.c
+++ b/tools/bpf/bpftool/main.c
@@ -9,8 +9,8 @@
 #include <stdlib.h>
 #include <string.h>
=20
-#include <bpf.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
=20
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/map.c b/tools/bpf/bpftool/map.c
index c01f76fa6876..30f06f50e8bb 100644
--- a/tools/bpf/bpftool/map.c
+++ b/tools/bpf/bpftool/map.c
@@ -15,9 +15,9 @@
 #include <sys/types.h>
 #include <sys/stat.h>
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
+#include <bpf/btf.h>
=20
-#include "btf.h"
 #include "json_writer.h"
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/map_perf_ring.c b/tools/bpf/bpftool/map_perf=
_ring.c
index 4c5531d1a450..d9b29c17fbb8 100644
--- a/tools/bpf/bpftool/map_perf_ring.c
+++ b/tools/bpf/bpftool/map_perf_ring.c
@@ -6,7 +6,7 @@
  */
 #include <errno.h>
 #include <fcntl.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
 #include <poll.h>
 #include <signal.h>
 #include <stdbool.h>
@@ -21,7 +21,7 @@
 #include <sys/mman.h>
 #include <sys/syscall.h>
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
 #include <perf-sys.h>
=20
 #include "main.h"
diff --git a/tools/bpf/bpftool/net.c b/tools/bpf/bpftool/net.c
index d93bee298e54..c5e3895b7c8b 100644
--- a/tools/bpf/bpftool/net.c
+++ b/tools/bpf/bpftool/net.c
@@ -7,7 +7,8 @@
 #include <stdlib.h>
 #include <string.h>
 #include <unistd.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/libbpf.h>
 #include <net/if.h>
 #include <linux/if.h>
 #include <linux/rtnetlink.h>
@@ -16,9 +17,8 @@
 #include <sys/stat.h>
 #include <sys/types.h>
=20
-#include <bpf.h>
-#include <nlattr.h>
-#include "libbpf_internal.h"
+#include "bpf/nlattr.h"
+#include "bpf/libbpf_internal.h"
 #include "main.h"
 #include "netlink_dumper.h"
=20
diff --git a/tools/bpf/bpftool/netlink_dumper.c b/tools/bpf/bpftool/netlink=
_dumper.c
index 550a0f537eed..5f65140b003b 100644
--- a/tools/bpf/bpftool/netlink_dumper.c
+++ b/tools/bpf/bpftool/netlink_dumper.c
@@ -3,11 +3,11 @@
=20
 #include <stdlib.h>
 #include <string.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
 #include <linux/rtnetlink.h>
 #include <linux/tc_act/tc_bpf.h>
=20
-#include <nlattr.h>
+#include "bpf/nlattr.h"
 #include "main.h"
 #include "netlink_dumper.h"
=20
diff --git a/tools/bpf/bpftool/perf.c b/tools/bpf/bpftool/perf.c
index b2046f33e23f..3341aa14acda 100644
--- a/tools/bpf/bpftool/perf.c
+++ b/tools/bpf/bpftool/perf.c
@@ -13,7 +13,7 @@
 #include <unistd.h>
 #include <ftw.h>
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 #include "main.h"
=20
diff --git a/tools/bpf/bpftool/prog.c b/tools/bpf/bpftool/prog.c
index 47a61ac42dc0..a3521deca869 100644
--- a/tools/bpf/bpftool/prog.c
+++ b/tools/bpf/bpftool/prog.c
@@ -17,9 +17,9 @@
 #include <linux/err.h>
 #include <linux/sizes.h>
=20
-#include <bpf.h>
-#include <btf.h>
-#include <libbpf.h>
+#include <bpf/bpf.h>
+#include <bpf/btf.h>
+#include <bpf/libbpf.h>
=20
 #include "cfg.h"
 #include "main.h"
diff --git a/tools/bpf/bpftool/xlated_dumper.c b/tools/bpf/bpftool/xlated_d=
umper.c
index 5b91ee65a080..8608cd68cdd0 100644
--- a/tools/bpf/bpftool/xlated_dumper.c
+++ b/tools/bpf/bpftool/xlated_dumper.c
@@ -7,7 +7,7 @@
 #include <stdlib.h>
 #include <string.h>
 #include <sys/types.h>
-#include <libbpf.h>
+#include <bpf/libbpf.h>
=20
 #include "disasm.h"
 #include "json_writer.h"

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093839.1357254.16574794899249700991.stgit%40toke.dk=
.
