Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3N37TYAKGQEMNBB4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B696713C513
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:02 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id q204sf6326738oic.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097581; cv=pass;
        d=google.com; s=arc-20160816;
        b=k1FpMDvDyccq44w9qsOW8WokA8W4AAlnLz8RIO0iWrUd4O2ygpnf0SU3OPjeLXwBWn
         fKXVkot8o+o78vHHZM7B0QuLeOe0f4EKr5ifEcAJ93UtnpXQmZf1DpTtZQxHlJFgpMlR
         AupBc/TrM/9XFEa4yWcexkbwmnujBQUw/Eh35nRPTfJoNsz/aocDZ1M6CxkJR50s7ob5
         /Q4YcJ7UT4bypSx5t8hCEAzj0S/ezRJzve61fLDjCc4RUC2CRDRxuH/QSOqyUzT/Yw+q
         5vE/eixL5s+2hJmw5BCW/q2iZb2Sc+cc5AAEx2uQHIHMmIfcSmWy8aUti1WbUYwz81E/
         Z2qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=QxE2WGaIThy5JXhtw9G2CqjoiFx0UaBeYfmVJoJUrQg=;
        b=hylob2aIyQCGtWJ90WVeVkrg5lzBTMOS136nsp3buqW+iqOROjrbea4mgtzDU2Vi/s
         m6jBj0qUNO02LvUBs7+M3smc1Xw6C8hViMmRK4kSUJfMwoNuzslQEJ4XQEz13q3Qq0ox
         hSt/NVlv9Zv4V0l9q1aJh3OKFuCjHiZ+l6BjZrI+ezNqv0eyIRQ4MrhWzTB6WviMRD5Y
         BfAYcyQR13EkQ2m6m9qvLctIb6laRSlKkXO8EG4kKbk2MtwlsG8iCQS6HRwC6wwhbM72
         h7J19Ed9E3Ql1oNcOHXAYd7tp3b0Kb7HD+ic3jUYM9bZarFuQCaNN5CNWUSpInpKURqq
         udkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JUzKSRte;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QxE2WGaIThy5JXhtw9G2CqjoiFx0UaBeYfmVJoJUrQg=;
        b=td0HSShUdEXA1Fm+YNRGLdgpJfIkDkvAe3xNiX39WA3OoL9FuYS/nSorRhuiuDw1nd
         AZzhSJ/bwpXOCxtxu/R6cY6VPFUxrrHahkuvuMllR1XreIBT4SEUVI8W4IlIeJkoLgrA
         cfAWLEOpe3vaIA1p7Ww89CkO1CGqTf6dHgcf2lEUFgLhQcNe4c43zJaDeIdfOW0MI2Fp
         bWNwEYW8gC0NOIrD6i46lXtssUr4PNxA/jv/Zqp0lby1AnmwqlJMygt7KcnsT/xwyr/C
         0khfwWdgl7Y8H0tqxesO8gBJTXWqumhyMwH+CZy0LuJ9FMmIU90sWSSHwEn40hMwRffz
         G/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QxE2WGaIThy5JXhtw9G2CqjoiFx0UaBeYfmVJoJUrQg=;
        b=Go1hOYjgMWS5cQNamqnA6fDQz5Cxv8aGXePneRppH6SQTzkxZolEbAfk1V8bYXbrL7
         IPIEj6O+yZEfSp/ZWwRBk4UiF9oMC1ilI/PmKBih24goWBFBFxOvvd4TCn8G9Cvnhdqs
         EJfwBvZIwQBhWSr6L7IdGMxdv7CXJedwgvm6hHiYdkM6gRdbAqY0CEgD92iuA+ckn86Y
         CBsm/ODJbC9QJhyfXF4ulXeCS6p26YZEADVFiQ7QbBLL937boxu1NsGcCc5ZDiII+VOs
         MA4D0VcC726UiTrBdBFjS9qWfbbL+BuxhxGPfzjSkoFntCn5GIEPfifHuS+2VyATwd+l
         bP+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlxZOiX9xeyPCcKSF1+FX2btR+Aqt2UNRkmyQfxLfP9ps/Y06a
	ch0khBPsFpb3sc5Mcr/l1Bs=
X-Google-Smtp-Source: APXvYqwZ3r7lLPiB722JGH0aS3INSc64r+Gitnqc/pdEpx/4dWch3BAVgqb62c68C4SoZhRKaW2/bA==
X-Received: by 2002:aca:b187:: with SMTP id a129mr21481114oif.175.1579097581270;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5051:: with SMTP id e78ls3381885oib.13.gmail; Wed, 15
 Jan 2020 06:13:00 -0800 (PST)
X-Received: by 2002:aca:f305:: with SMTP id r5mr21870778oih.174.1579097580862;
        Wed, 15 Jan 2020 06:13:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097580; cv=none;
        d=google.com; s=arc-20160816;
        b=qhPgILaJBm48ul7n/KOLEIQYHMitZLsw9vX54+hiF2uQbkcvepHOv0xsIuhi22uVXV
         /aUPJR0pcgTpgluCWFinRkvybTcJu5s/Nwwh7f9p2GXtFYsB2FXZIqs53MJO7cGZKZMY
         NEuSTEtefCPgTIZxismOdySNH9dYwC1aYPJS05V/O8LJH6rNMXl1PuX24L2cDzQHjvTO
         xdXSfM2GuO9beW6f1qoQ8D41y6ivmjcsgZOGl4MkRwsr1gUp5yC6C5JkgnOsuryp1S49
         SCCdvlB377SbV/v+iMg6oVwz6rdhBasLHwNrFs4QUcT6OZynp7de7mkBb2CnOet+N7UK
         tJbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=srcYLyIp+WBgJtVa2IOthNkBumVC6U7rXZ0IMnT/9Ng=;
        b=kEH41O9CMZY6OVD1wrwQgW1f2+k2rPRPELslJKSfYZAcvk2AlX068qOZXzPvwyy/36
         nREwJPvWPbL9WJkE7YIk3Vhj10NENVzn0PfGRH4rB07SAWIYTlNviMwzTo7+XLmtEL/y
         0XZTOFT0HqaDBUJmTi2cTR6ad6irmicKghfWsmndnjozABYxXPWIn4aPQVvJuuKv3i6M
         +eHaG4cqPAQ4B1d2tKQRjV9KpSIbO+4sT1+KgYCYbz7cUPK0ufrn3yY/x5AOWIw1XIBM
         hTCCByzW+ftdE8tWSq4SiZ3WlLRDpm5ukoncmySJyUai7onSYyhRRMdbK6XvVkb/eMoB
         6/XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JUzKSRte;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id e14si985104otr.1.2020.01.15.06.13.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-187-gcX0REyiOhCBHrK-5HGxBg-1; Wed, 15 Jan 2020 09:12:59 -0500
Received: by mail-lj1-f198.google.com with SMTP id j23so4190038lji.23
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:58 -0800 (PST)
X-Received: by 2002:a19:f00d:: with SMTP id p13mr4985141lfc.37.1579097576649;
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
X-Received: by 2002:a19:f00d:: with SMTP id p13mr4985119lfc.37.1579097576366;
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id u16sm9134697ljo.22.2020.01.15.06.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:55 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4A1171804D8; Wed, 15 Jan 2020 15:12:54 +0100 (CET)
Subject: [PATCH bpf-next v2 05/10] bpftool: Use consistent include paths for
 libbpf
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
Date: Wed, 15 Jan 2020 15:12:54 +0100
Message-ID: <157909757421.1192265.7677168164515639742.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: gcX0REyiOhCBHrK-5HGxBg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JUzKSRte;
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
index 7ce09a9a6999..b0695aa543d2 100644
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
+		#include <bpf/libbpf.h>				    \n\
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
clang-built-linux/157909757421.1192265.7677168164515639742.stgit%40toke.dk.
