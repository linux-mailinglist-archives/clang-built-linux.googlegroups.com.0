Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBFGHQHYQKGQEIOPPZNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A067313DB69
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:29 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id c202sf13034915qkg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180948; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWToe4P62ngKfplW717MxUChAHZtMpvnnnP97hLkJoq+adCw+J8jF/zc4tErC1JhdC
         1fG5SI6iMpDRiQdcf5PbNoOmmUbqxUJWRfWYoN8jcuDzCkyXHE9mFKmE/kgrnlN82/M7
         +e0V9x0WGROFbafkEu6re0xEB8YGAm5rwQL7LMt0FpINKoheBnh4eiB9q63mY2CMIYIv
         xdff7qYD0CzsQg9JLCfsSzm5om8sF8X87jTKM5eMWfdknTxahzaKTT+xXdFaGv63w6NQ
         iTQBP/miNSWZukCBOhxZ3fJzE1Uz8IqR2zIHCAwwbJeBdL3OV0F+6xVgql9DhdCoj/YI
         AzUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=PGQRF/21/LO+9d4nSIe6bjEZWaTZsnIsXQaQfjw8L2s=;
        b=08EWeVYt2c0EKVvTlvsHqEiVWlujkcV5T8InsRNulamihN9PjwxmA7m3hzUBXKH6WF
         HdQCDusl2NSNK79zKQvCKrmLVUTc5OdChKqnRUT1EyARUd8aegDjWyfBQwXOoMnLl6Uj
         +5+MjBQl3HwZteGqqnvFfdKTAiEsAdzsZG/cmExPzKSk7w2zJPf7lIcuRPOQz2nOtIDz
         88vHFEUcBIf6wyVbDgz6xcFTax+MxXWxPOOeyp4rt3ErzheCgVkJTShm9rPfcx3Lxmk7
         bINMPWqFVChIJYW+8xRMp6ZtIQtAyB7sj5rIXfQQBcBYgfOiXHvOPKVrxTXqj2EPE6Rv
         8Rqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eZSFdJTH;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PGQRF/21/LO+9d4nSIe6bjEZWaTZsnIsXQaQfjw8L2s=;
        b=bz83JjFb4kivC76GSiHHd8Qkrq4rpCLBFufuSaPmqn45/3wnT51sKFfi48H70DGt5F
         Rqp+Dmj1CxaSMJHww7RWuvzlO5v4IJcWA9cjJ7aDgcLTO+9AafXX6YnpVvQhLTKGovHU
         okDYlGdr9giFT9nEO2oCp6hnVFOyFfaX7WtSes4U9Wfo2M+Q7wEMc7gQrVlACq6vu+yc
         IxNvo2XQ1+qebW4J4K2brUVqzbr5WynHqc0w+lBVsW/ZV2uKr1El8MhPUYOra9oz43y8
         K+87H64s3pJ7I2+oi54ZZ3hLR1t1TrPfiJjTgP4C2PSZZhVRNqWboVQKkQgz+pGVrZek
         ptsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PGQRF/21/LO+9d4nSIe6bjEZWaTZsnIsXQaQfjw8L2s=;
        b=iz5W1cL6uT337ZwSjx8364LogGq2ndUsoDNhGGjqctzkll54zNpnaozaheafLT2nO3
         f2ERMdi3s6Ff+tFJ/zDzKcaRsQJEjJh079OC19jEBNPcq56aNiHgEnRl5ZwnAk9kbcG3
         /kyazgvsxLTwT2MKvpFqWUjhklikS9Hhb7nEQMN+d0EAHIHvJwuLQ9wWhCaLj9okZ8B+
         HkClSp2MucRpGi5x4Svsv/JgxOUCjelGuweh75UP4McsMTkiCQeIdjjVu/USGhHgc50Q
         dMoVs9AVjz19htPq2gX+XctQKG2qa5bs8K3XAAUBDFDVtyBHE7VMm9YMmKcTwsaaGcEz
         D30A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHCx2bUbCmSdHEcgNLVxE6H8Hb/l0Z9dGxIP7/4Fd9VXFt4BX0
	n0iqWDnnBPdw/ITqhIaSNFI=
X-Google-Smtp-Source: APXvYqx8kf3pdOwUNsE42WmaQGbdGQhtmrYn3KDYcB7W/y0hvgr5eY0PB+4LKU1/y6E8NW3kSYJSXg==
X-Received: by 2002:a05:620a:1478:: with SMTP id j24mr26024668qkl.363.1579180948695;
        Thu, 16 Jan 2020 05:22:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:480c:: with SMTP id g12ls4702654qtq.11.gmail; Thu, 16
 Jan 2020 05:22:28 -0800 (PST)
X-Received: by 2002:ac8:684:: with SMTP id f4mr2301974qth.184.1579180948313;
        Thu, 16 Jan 2020 05:22:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180948; cv=none;
        d=google.com; s=arc-20160816;
        b=AwcTB7tnM+tKgMgu+r+q3MYXx22XTE19Ss7KP/YTl9hLjFztu4hr0TpsMRKwjv1+nI
         ll+Lg5tRAp/Dcgu8Y1IXmUDk/rnO5QeUqtiNNh8g4fL/cLAsFTJNiuAkDjSxhWy7EBHv
         4GcEGemxGeyU4yky7ZdqN7wAOIW0mfFwGxrKC9vYQ9v00Kn1yLyGhy7xuBRLydMb7PS6
         7QO8B490rQqWlBENWJ72q5buEWnXEYsZWoWaINi5FDgjmtJg9H5QompiZj7IX1MlGo1o
         Q+KwEu81tcdSMXzwk+S8PU5t0p1koFJtzYW/ReBpHTj4PiVyKlY1w3uqsjwV+S46Of6U
         nzGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=qLUS27Kyh+/rAh4xS+yf7+ESHdYodw3RMYrLyb5ghUs=;
        b=b6CsR+ouxpaxUjBmesKCcoqYFeLgwuHoKjOXR0MQRhwh5+W4EVvjwWb4Ag9sQWjS/m
         RqB9TpytmoHpprEZJXItQZ9O7oQhV3pD9RFZhsXT6iQqHbGQr0EiTJYj3uPUtHyjnZGU
         1jlggp3MiGrNK5OtgFNoT6VaDDaTd7Qb00HShmww1sqMqfIjdzcECyq/qeTdktTjhsKF
         ZdHo7nmcdY40Oc86ZEGSC6lZjg7+oDsq6ZatGJe97EJDYLeGAiqR0IjPUSJSfeR26a/A
         06UOg6A/QuM1w477iK4CHCLF7FrKyuJRtHjiSweglmNsJT9qRKGPV0+pHgpSOwAk+dOn
         Ecdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=eZSFdJTH;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id l9si1077835qkg.5.2020.01.16.05.22.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-VVcx4UFbPGCiOx9WrEoXRA-1; Thu, 16 Jan 2020 08:22:22 -0500
Received: by mail-lj1-f197.google.com with SMTP id j23so5149294lji.23
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:22 -0800 (PST)
X-Received: by 2002:ac2:4909:: with SMTP id n9mr2519576lfi.21.1579180941343;
        Thu, 16 Jan 2020 05:22:21 -0800 (PST)
X-Received: by 2002:ac2:4909:: with SMTP id n9mr2519569lfi.21.1579180941159;
        Thu, 16 Jan 2020 05:22:21 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id o12sm10794767ljj.79.2020.01.16.05.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:20 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 9E2171804D7; Thu, 16 Jan 2020 14:22:19 +0100 (CET)
Subject: [PATCH bpf-next v3 07/11] perf: Use consistent include paths for
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
Date: Thu, 16 Jan 2020 14:22:19 +0100
Message-ID: <157918093952.1357254.13512235914811343382.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: VVcx4UFbPGCiOx9WrEoXRA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=eZSFdJTH;
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

Fix perf to include libbpf header files with the bpf/ prefix, to
be consistent with external users of the library.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/perf/examples/bpf/5sec.c             |    2 +-
 tools/perf/examples/bpf/empty.c            |    2 +-
 tools/perf/examples/bpf/sys_enter_openat.c |    2 +-
 tools/perf/include/bpf/pid_filter.h        |    2 +-
 tools/perf/include/bpf/stdio.h             |    2 +-
 tools/perf/include/bpf/unistd.h            |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/tools/perf/examples/bpf/5sec.c b/tools/perf/examples/bpf/5sec.=
c
index b9c203219691..49f4f84da485 100644
--- a/tools/perf/examples/bpf/5sec.c
+++ b/tools/perf/examples/bpf/5sec.c
@@ -39,7 +39,7 @@
    Copyright (C) 2018 Red Hat, Inc., Arnaldo Carvalho de Melo <acme@redhat=
.com>
 */
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 int probe(hrtimer_nanosleep, rqtp->tv_sec)(void *ctx, int err, long sec)
 {
diff --git a/tools/perf/examples/bpf/empty.c b/tools/perf/examples/bpf/empt=
y.c
index 3776d26db9e7..7d7fb0c9fe76 100644
--- a/tools/perf/examples/bpf/empty.c
+++ b/tools/perf/examples/bpf/empty.c
@@ -1,3 +1,3 @@
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 license(GPL);
diff --git a/tools/perf/examples/bpf/sys_enter_openat.c b/tools/perf/exampl=
es/bpf/sys_enter_openat.c
index 9cd124b09392..c4481c390d23 100644
--- a/tools/perf/examples/bpf/sys_enter_openat.c
+++ b/tools/perf/examples/bpf/sys_enter_openat.c
@@ -14,7 +14,7 @@
  * the return value.
  */
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 struct syscall_enter_openat_args {
 	unsigned long long unused;
diff --git a/tools/perf/include/bpf/pid_filter.h b/tools/perf/include/bpf/p=
id_filter.h
index 6e61c4bdf548..607189a315b2 100644
--- a/tools/perf/include/bpf/pid_filter.h
+++ b/tools/perf/include/bpf/pid_filter.h
@@ -3,7 +3,7 @@
 #ifndef _PERF_BPF_PID_FILTER_
 #define _PERF_BPF_PID_FILTER_
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 #define pid_filter(name) pid_map(name, bool)
=20
diff --git a/tools/perf/include/bpf/stdio.h b/tools/perf/include/bpf/stdio.=
h
index 316af5b2ff35..7ca6fa5463ee 100644
--- a/tools/perf/include/bpf/stdio.h
+++ b/tools/perf/include/bpf/stdio.h
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 struct bpf_map SEC("maps") __bpf_stdout__ =3D {
        .type =3D BPF_MAP_TYPE_PERF_EVENT_ARRAY,
diff --git a/tools/perf/include/bpf/unistd.h b/tools/perf/include/bpf/unist=
d.h
index ca7877f9a976..d1a35b6c649d 100644
--- a/tools/perf/include/bpf/unistd.h
+++ b/tools/perf/include/bpf/unistd.h
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: LGPL-2.1
=20
-#include <bpf.h>
+#include <bpf/bpf.h>
=20
 static int (*bpf_get_current_pid_tgid)(void) =3D (void *)BPF_FUNC_get_curr=
ent_pid_tgid;
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093952.1357254.13512235914811343382.stgit%40toke.dk=
.
