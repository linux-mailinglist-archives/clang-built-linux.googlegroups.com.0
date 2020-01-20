Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4GLS3YQKGQEA7XR2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D86142B88
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:57 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id g6sf20657429qvp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525617; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2cVKCz66CDVGUqMuOKUWb5+RyEtwGM/6CLz2p578xikSoJ6MsXbEIsStqbFE6nSwo
         tCbcYa/HvqGloQYCoqKj5VlYeDC44V6qp9W0Fw5K5XioYADDyKmfqO2y+OC+AQCj5khk
         FwpHDkEdr0Zeiyn1Q3wR4Mh/1tuUyqkCwJ560e6xQl+NMjXVEupVig0oeRl9naSY1ZFf
         DXp9AgaNv5gNI0QYKXUr/WHSqL5x7Lu4BKzxlS4A0tJph07mL++yxKhAzeRUuWqy/xZj
         lEA2TEOzWZML+/HQ43qtAHctFpRI+eH/xLMfOrUhsPf2eTNCpWeB20cN/iRpa6Rv2ll8
         7Q8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=0HqvGIAcAnSEYV1QlsybkaXBOZo643qmu8wqm+3bQCc=;
        b=fZmozsbQRlobQbxsBkouSG68Q72+G+PH44lm4O7NKKjLLEfSHLltb5XOG6mDzxC86r
         IcO0xQ8G/w2C1O6Ed19KAOZGH/t/rHiK6Fmqp7tLq86LvNNkpZuHBeoyvP5P+xx4mAaQ
         JLn6hm3XiNcc7bfvPxDWwx2IqvIWyFD4Ap3KFzKqh3zYtHloV8j9B8CSDafDNfyWiej5
         4izZ9HCtMADQh8bkDi3oxyRZsmPWSHrZtqLwHViMgfioKgNXomt32dmuUZn3sU/ZXfKf
         5R+uCOIzrYYOE16n6z8n/Gu+6b0KOrv0F/F7iPaGGnQ43wkEJmDkChwZUCtcFsAmRY4R
         WDSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RNEVpO3S;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HqvGIAcAnSEYV1QlsybkaXBOZo643qmu8wqm+3bQCc=;
        b=GQTSzcV8eeasbCpRSZme6ZceOnsnrb60jFkQjxwDrVHkIfDVVFDXmXeGTRbngTVQoP
         zDGJhxoZR41VOWwNjfQ2f2RUoLhv92NwGcqkIVADE+wz9BR7g6sjgoh29qunHBDtInJW
         SZhw3wbYIURQgGJ93NiL070zeX6QJnE6MFeQa7y3bSxvKG0wpYv/Ets4jzMt6waNARKt
         As1hXZgVSwtWysTQLztrtnFKvNRI0RRDh2l5GcL8gk7DcXE/l/SUuTBQpOvHlx0pdlNW
         0blqAg2PPlW1K+a/shuBPnxaE81Fp1fBjKrseSXtcygDLqIwXs+SESiUNbtTG4qjmgzE
         4wrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0HqvGIAcAnSEYV1QlsybkaXBOZo643qmu8wqm+3bQCc=;
        b=bWS/YFyK0m3Qeo61hoAKRqBtHaR6XksB3JtgTdsbKTr555vOD04+58vmKS9LgxvApI
         gzR+XYufna7KQ74F9MY5zic/YKJu6xnpaloOFkqn5GlCZ+gVv1+JPQzDL7YNm+dEVmCz
         uloRzfmKb1W5ePjVE4HAiBzn0J+eECGCNf/kCZsh0YcsMtC31jGH9sW2K+bbyIuqH+hn
         ZTEuXgFnQVfzZToc/gKPICJ67B4rrZtMkA+CoTmtdi3+llZfb56nSyApc5j2Ya2oMvhF
         I1VTLwKMEJqRsSFs+XeT18DPZaseQH69uH3igC1KKhXJLWhzjVsmGle4NAqQQMlYVT2J
         ADzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXSY+265KaBD9JHhbMSqTq0wavrxVFDC7lcdhYbsXPkQihzpW1x
	7qMisPfdQAiOrVgts4eFtMo=
X-Google-Smtp-Source: APXvYqzkUDfEJUouMxE9QwZON9cd6EQIeVIzw8K0aSx5mI2ZowpfJj36DXJdF9J9lZDa0HDcAjtzew==
X-Received: by 2002:ae9:e01a:: with SMTP id m26mr52264371qkk.275.1579525616925;
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ec3:: with SMTP id h186ls9443168qke.3.gmail; Mon, 20
 Jan 2020 05:06:56 -0800 (PST)
X-Received: by 2002:a05:620a:149b:: with SMTP id w27mr53001211qkj.229.1579525616571;
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525616; cv=none;
        d=google.com; s=arc-20160816;
        b=bI1+tnzNYeAvS4LV4nrT4gtiSK9G/ZzFUx3TTcu34QhET3nqUQ8aAL/YVfEhozwYXg
         WQuLuXfyjGlGqPHUYz5oPg8sdfNBa1STVqMhC0/AflmRa/3KIv5pJ0Fg9rzk70xLW6Vv
         wpAYCk0mRQM7YpGWaBlaVBd4JzQLWAVYEevp2znpOLYzwwiyFZBhTNuKO4VcG/kj2BiH
         emFlh9TSwfI9y1B3hJzhenfYTQThrLlVfYoj0MpPv0CVhrPBuwYDn7e7OS51zRKmRWkh
         ix6AnzIkGqXfPM7GU6k/Jq1X22iFXmsa6jbZkmqotG53o7mkFoCyKXjidQwKsgG/9s34
         h57A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=y+OwxDzrDhczAwDLy704277B3X/gOSr1YPq6JbWPfPg=;
        b=T8yOwQzkvSQMF97ZzW9rqq9JlFnaVy/9xgQZHIcRekWEAX+Uaw4VRUocI7aZUb1Ybn
         IoUZdAz0RMDdPoZdi2ATcx8rRWoB8AJx7Gv6SZit6/ZTNwMxk4VlCmujNnEss9GaWvzC
         vO+tZzQroBRmPV/QSlT5qP5q36tL6TxLresmSUR2AZt7bfmD8FiYVcop1eoWqWWMukD+
         3WytNi6RcZ14Pi5nPGzUg+UkxZRdKvxn95FvCZgvzc5CXOMa+PWYkC/Yd8l0xHqduopV
         r0n7kb+2kn6c9FjpwoJ+gASwyWSFYpKX7Z50MxI78aItEn8P28ZcG48zxA3jMR+mYR4y
         iLng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RNEVpO3S;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id z17si1472037qkg.3.2020.01.20.05.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-ox0Jcs5sMeuFbB901kIang-1; Mon, 20 Jan 2020 08:06:52 -0500
Received: by mail-lf1-f69.google.com with SMTP id y21so6209126lfl.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:52 -0800 (PST)
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr13302626lfo.36.1579525611274;
        Mon, 20 Jan 2020 05:06:51 -0800 (PST)
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr13302607lfo.36.1579525610900;
        Mon, 20 Jan 2020 05:06:50 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id h24sm16817656ljl.80.2020.01.20.05.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:48 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id ED27B1804D6; Mon, 20 Jan 2020 14:06:46 +0100 (CET)
Subject: [PATCH bpf-next v5 06/11] bpftool: Use consistent include paths for
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
Date: Mon, 20 Jan 2020 14:06:46 +0100
Message-ID: <157952560684.1683545.4765181397974997027.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: ox0Jcs5sMeuFbB901kIang-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RNEVpO3S;
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
clang-built-linux/157952560684.1683545.4765181397974997027.stgit%40toke.dk.
