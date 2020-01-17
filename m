Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB5HQQ3YQKGQEEHRT4CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 826DD140ADD
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:53 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id e11sf13297814otq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268212; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8eoMu9uTKts0lROg9w5nY2ZRNI6nyNI6D7h7TOeONM7kQEaOtidFjCmWobXMNrN9o
         dSE829XdS9VVLzMs6vuUkgqSGA/WSlybnU2l5O+uoYpzQvDCR49BH9ZMMQbm9KajpjdA
         11P/Nnyk0OZ7z283jK0HrFB0ZyskKmcVDOxi8qkV+e/drvqRPipGI3pByfQstCOLUlcS
         oHCWsP5W5+0KeUSWg+6oImBQ1Fk60JL+ZjPOW2PUYmhmBEEPT7c2cFC6PN7zUZziT+JA
         IOmUBbCEbUTSj76R2MsuPBiKAKiKlv7/gIA3rV8GbGnrcIkIlHqqAj24nWv6SPIYOHvV
         BAkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=d0wUGrFqIt760zMaLVfcdqpYicTJbXa9848RMXo016g=;
        b=lXQwBxdc6TtaA3SZcRq4Cp68RbGNxMH8wWiEVgsOPJyMB3ILD2syi9EmxP0CEk9prD
         G4hLJEZEDEaJanarSGiNJCHiIsU0Pfvm6so1W6uUlDbp8scwDIX2dBox/17xFp90+1wG
         ewnBnTwy3lErLAP544RpRfh5o1n5S0+oxmrMJBOFA861BsSk9Yh1LH4lSHW3CQskMGZq
         1H+XetHLZypSrPovCAGIFzYmATAi1SVn5DaTEo8GwgZ9yvgGy0kPKLVUmPz7D/v1zk67
         36UwdCRvsl3UNkZcePc9I6zGnzMTD7B7y0R09mqHba0yF9+KTlRJez2sEA11QcgGYG3D
         RGRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XfJgYAr1;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d0wUGrFqIt760zMaLVfcdqpYicTJbXa9848RMXo016g=;
        b=F1hLk7MYkmLpoFyZn1wxOYD1NGYOGQkJiNhUJOIjDSwFzi4Yn+7rlwmSczzB+Ca7uJ
         N0zKYpTXGuBag8Xa29lrRHs4S0hQljKftnC/h+1tsqUswJItYYicUG1277lWf+kyzuR4
         eAGCnV4//9uztz5mkZExZ8oc+vcT/SJurUzCk0+IxPGbtP41/jS4khn+QjgnOI1J3UqT
         nnCbLjyDz3QriTChmgrd10OaEzn0a/K5XgmloWjy6nKfCce8IEd5MK3FAyGAhsEyHPeq
         WJzQwj0Aemp+We9mHa0Z+MPJ03M2f9h85UNaQhKfIRoggoSuXcHXYsYugc452CFvyTH3
         tyIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0wUGrFqIt760zMaLVfcdqpYicTJbXa9848RMXo016g=;
        b=C1Fl6JRLhbKmEkSuVa7W843GW8XjY9dPFbx95lyJLAaofzLX2Vzsqs5BWb1Ij4zL4I
         zuy8MgZi86LJUpFyaYf/+Y9qzvUprXioQBk4ivy1mBt81dEeqQj31n345Yoa+co+v/0h
         TvSIRGz0KBMapraasjaxfXJ/Tj1wS4eXHWKvUnBqvpK/bSkSGF8/23SS9tg3D+/cfVg/
         iSdEim1rojKQAm4HZuMFfTLLI3eqlQ8vHzFBw/i8FYfUkZ4VCWpjfMzhUEW0F7J3UrAt
         9pm9a8JlKr9hIVoDrIiLkr5eojDxjbVRdLIn1I79lwrzbcz+mhxxvQ8nA7j878ocdlYq
         PABw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMGwmDShbh6g+uI3BT2M1TYVmVNl20Ti9Y+shD3frklciRCUP6
	qncRsHAZu+VNpWI4pa4aFnM=
X-Google-Smtp-Source: APXvYqz1wMk3icDQW/tpmm5kVOhRlUSSKnKvL3Lzywzd+9wYZ/MSt4Uh/OoNuXFa3VACYwqVF5fOgg==
X-Received: by 2002:aca:6042:: with SMTP id u63mr3460251oib.76.1579268212386;
        Fri, 17 Jan 2020 05:36:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls4648997oih.3.gmail; Fri, 17
 Jan 2020 05:36:51 -0800 (PST)
X-Received: by 2002:aca:bac3:: with SMTP id k186mr3544229oif.19.1579268211787;
        Fri, 17 Jan 2020 05:36:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268211; cv=none;
        d=google.com; s=arc-20160816;
        b=fXQihkPGnxp3bevIqPUkPs7zkmIdOZF0cCy2zscIW612kZZZXoSXrGsRtZyJOZJGqZ
         gORCk6eqN1MZikCHb0QIIBug8xMHIe0584vE3DpYACc2j8cquHIMLPxlAQGh9iDmaCCW
         qWJr5wrzdDTeKMmfXVHbHtS3Ocy2HQ3gEH5qYgQjTyZzeJo7E7QvikoPPcQm6DEGZoDb
         olTtBoFGBvf108g2yKUYPx3GABtZIY7kL9PdtcTK/a1QaATBndH9zutWLMBlaOTn5bAt
         btOavKuWQczxD1QWUSA5fK9F9pfQI1O+dxu4MbMNSHL3YxmmoWCXNT5w0DdvXiDbKlqs
         IENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=n+v67BAlvf4eTayyNySUE6qCDGO4DTVNR4l40xWqp9A=;
        b=wG/ZMgJrqMHKmGqnKGSsY6V0Waz6CbIrcn7zCwlCtQEGLbHC/8XSzrbhl9Plm9D8ir
         2w2LIU4wKeMmFsbzOvXvKq6t3TlDkpi1d88TC4ZhAb338chVMxAMJicQumzfh6UiVcQ9
         42K56AmzJDs9EAIG4WJdi7bDn27MNi6/TNVDdL/xXBCOV3zU1NjGBQpmmqZZBPw7K1lx
         XIC01tpCRTtaZ3poJR/zVYE1NRHo5mBuNbltDOO+MJzolBbnK4MgTgCT5Iq7UiRQJEsd
         wPte7YAtymzvE+udkkVRRA6xU/fTy2kS83UwsTLjo8bhmMittL2lOb++8Of5AOxIXQx/
         2Iaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XfJgYAr1;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id a21si367264oto.2.2020.01.17.05.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:51 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394-mW5POcI9Nhyr-9HoC-h1iA-1; Fri, 17 Jan 2020 08:36:48 -0500
Received: by mail-lf1-f69.google.com with SMTP id f22so4383375lfh.4
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:47 -0800 (PST)
X-Received: by 2002:a2e:548:: with SMTP id 69mr5667575ljf.67.1579268206513;
        Fri, 17 Jan 2020 05:36:46 -0800 (PST)
X-Received: by 2002:a2e:548:: with SMTP id 69mr5667551ljf.67.1579268206336;
        Fri, 17 Jan 2020 05:36:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id h14sm12058134lfc.2.2020.01.17.05.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 9A5EF1804D6; Fri, 17 Jan 2020 14:36:44 +0100 (CET)
Subject: [PATCH bpf-next v4 07/10] perf: Use consistent include paths for
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
Date: Fri, 17 Jan 2020 14:36:44 +0100
Message-ID: <157926820454.1555735.5332893006269327491.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: mW5POcI9Nhyr-9HoC-h1iA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XfJgYAr1;
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

Acked-by: Andrii Nakryiko <andriin@fb.com>
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
clang-built-linux/157926820454.1555735.5332893006269327491.stgit%40toke.dk.
