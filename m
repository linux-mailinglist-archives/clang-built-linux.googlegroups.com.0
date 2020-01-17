Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4XQQ3YQKGQEE6BXNEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE09140ADC
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:51 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id f193sf10500865ybb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268210; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhwbJZUDPwZcm1PDZ/4QXf7wHDvt9LZiDQz5DVTdXRlhrDwnTsp4qUdvArcrYAgmVi
         xQg8eJ3hH96KnWVrJFjWYaLqJdFZPSfVh4ZLmHknGZK9g9gT/nkUMUi2S5oiiN0fjH6H
         C1k4Ph0+ZzMvx5zIrsLczOrhoaXae5ylYRWCe6XFxph18FaBNlRiC9RIL9mlzwdslWdf
         KF05iWikXFrFqEwEAwvTEnNflg/KHnCchzd9W9CT19KYvR3FYLWL///2n3eMvKqun+Mc
         usdqZgJGOZBwMsmRWUDNwM5OJtRKLYLRcmNiaiEOs4O+gNovOYXA7quT6GEMKVf51Ah+
         0qSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=gxCrzGzZVBqGnxUof+K4p2lJ8oGzlrk0uiRbSVd/s00=;
        b=lqmDsl9Uv6ebWSrAbH/zYbSe0m/SS0mf/aew+d06Srd5oAvCwLb/ad37hKmXQWJ2bz
         uAghf8C7UMlxzhyfAQiPwINA5de6I9di9afIyfpzPP2LeTk5ilGCCxo+c+7kDQKHOrDA
         z1kWHCHHStKq565RmQ1+1SMh+a7fZW/mwq1ixhufQb/8WYvCDYQYcWwilBh6GIlJqfbI
         LhmVSCdT5yxjCuEsKwitYqaBK0Me7H9oA+Hh2j0YQMnx0IowoonhU9DxexLHgJ/YJGVz
         PQtLW8SYg+4TDIcSPZ+eLUoW44ZJP3Tx0CqVzmHTcrsGl8vhAJ1MP+kQr7NIG9Cbgqqs
         nDNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MLKH4HRK;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gxCrzGzZVBqGnxUof+K4p2lJ8oGzlrk0uiRbSVd/s00=;
        b=grRi5wDKuJp1V2Gosd5QzFV8nRF/JETuxfgl80RPuFf5JBwujUtWEYQQBf4k3bawyI
         2w4pfdM6J/U5XXyzgIkITUM0Vdbyexx1E8WVM88Lm19VOjGipt/1a2g4IeYdieuiEcRb
         CS8ibp/81R31nF/Hu/mu58jSSa4BDZb48Kn6T+CbgLU1mC35iUEtMHRPLQr9Mg1/j89K
         wchUUrfFMPEZdKuKBGAEVQN+oUGBQ5+EfvAu8rgNSMIdyiYoT5VDMO5B8w8BKMuOYARh
         RxB5BpivpVngRhs3JH1ueOTdWzWwddhLAuUlpb+QUJsjCalfJoZ8G+dv8CJhu/8rZRi4
         sqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxCrzGzZVBqGnxUof+K4p2lJ8oGzlrk0uiRbSVd/s00=;
        b=iCBbo2s+K/GdFshHOz/QfY38bgtqZVRK/C03uY3gQXLWEaljHpM1fcIdh3e6s7DYs/
         QdvIXNGsbbu8oN0kyuWDumFKRJzRiTn0y160/me4BXBoFkhKKRikRmqVl16F8RWOvC2T
         xVS54TmCeOyYzqRm88ywxYahfytvKvVE1E9VzUW9gjg26iE2VS/7WDWSJHq9s+uWDzzb
         cvkx43U5SsNpEg32Tcg4viziHRwD4m6m/TOuGODSxSpFIOGc4YGjNcTPtwSfEhBZz3Du
         0vEYDGKG/8AVKPDCmKBJsSEcIxyJvsHMr9SMDBdVOXMk1bgQgU9cQIB+OmxSuXALC1ib
         DTZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVy0kwqrkuRqc2Cslz65xYm90bL5dGY12VPKkCahSNi90soRlDE
	TjCHH7RrgDs5BgbhJyMFa04=
X-Google-Smtp-Source: APXvYqwoC8EtRMjFx4lO+TkmkdgxCJlAxRt9Nivr0vva5kCzwqE4Uvaavt9IfKZQoWR2eHQzh/a/2w==
X-Received: by 2002:a81:6d17:: with SMTP id i23mr3182300ywc.58.1579268210124;
        Fri, 17 Jan 2020 05:36:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5d09:: with SMTP id r9ls4120205ybb.2.gmail; Fri, 17 Jan
 2020 05:36:49 -0800 (PST)
X-Received: by 2002:a25:3b90:: with SMTP id i138mr29587173yba.163.1579268209751;
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268209; cv=none;
        d=google.com; s=arc-20160816;
        b=GyD5nCuGVSpg3ej0nAtteiqI3TJBiLFfeV2dDRvESpJe8Hoz75TxxrwmlnBQMNHwkt
         eBxCRmpOzo646LXTCpxV64kpF1A3Uwk5EqrCamHNhizwgEXaTXm4Z+q9UUWkUSx3B7fv
         FRk25hWHouoyPM2t3ibl/FV1p9MDeHnBNoYBeskjU4vFPZH0yJMHINYXJDwz/3315M3Y
         iutJ7myhRA3CCMuBowozpTHJZ8ajFBhdJwt/tDwzfe37XDrIOJNDWlZvgy/NAI1Ae9tD
         WF15kJWlscBbPly4ZWkMjCURWBZuxHLLNIUZYZXGod/y2KrPRoJ/Swc1FsoA9fZPb9kG
         btzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=y+OwxDzrDhczAwDLy704277B3X/gOSr1YPq6JbWPfPg=;
        b=euq3FrYvCg1lo+47z0/+r9FyeA/5NSq8AqJzNC16u7i6mTaf9oc1kGRN7I2hymWq4f
         nvivxxuAuOHpv+1zHhSkNXI/fUYKKtkhvP4/0p0WpkGOPZSbw3Kbve4g+jlUQC2dCpch
         Pol4GDlQOT+Z/2Xigexm0h8eoRCvVSOK4k9kju15/X9U52kg4prmWSTwCBstjv6DHEGG
         Ab4kwRhRB5X1bstzqnrR6/NLhcXFWJqFxMwVWn4CTaQP6DXIfnOf0GLyjmuU+hUiyH1L
         WGUj/y6ahuhPKsdUfuQcmb4XYHnnVbrQta2+AifsQ3sdZS0P+37WIlhaviH/Bt5peROl
         3d5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MLKH4HRK;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id v64si1415444ywa.4.2020.01.17.05.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-197-HzUcf4wINvm9QADPJYFsUA-1; Fri, 17 Jan 2020 08:36:47 -0500
Received: by mail-lf1-f70.google.com with SMTP id i29so4355745lfc.18
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:47 -0800 (PST)
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr5545351ljk.179.1579268205984;
        Fri, 17 Jan 2020 05:36:45 -0800 (PST)
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr5545314ljk.179.1579268205612;
        Fri, 17 Jan 2020 05:36:45 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id b14sm12052204lff.68.2020.01.17.05.36.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:44 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 8547A1804D7; Fri, 17 Jan 2020 14:36:43 +0100 (CET)
Subject: [PATCH bpf-next v4 06/10] bpftool: Use consistent include paths for
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
Date: Fri, 17 Jan 2020 14:36:43 +0100
Message-ID: <157926820346.1555735.299604543718558729.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: HzUcf4wINvm9QADPJYFsUA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MLKH4HRK;
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

Fix bpftool to include libbpf header files with the bpf/ prefix, to be
consistent with external users of the library. Also ensure that all
includes of exported libbpf header files (those that are exported on 'make
install' of the library) use bracketed includes instead of quoted.

To make sure no new files are introduced that doesn't include the bpf/
prefix in its include, remove tools/lib/bpf from the include path entirely,
and use tools/lib instead.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Acked-by: Andrii Nakryiko <andriin@fb.com>
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
index 86f8ab0b7e63..e6c85680b34d 100644
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
clang-built-linux/157926820346.1555735.299604543718558729.stgit%40toke.dk.
