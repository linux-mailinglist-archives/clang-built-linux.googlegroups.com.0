Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3WLS3YQKGQE75WJKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7534142B86
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:55 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id d6sf9683274pjs.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525614; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lk8ALUlUMvbNGPMC3THKQucc3xhqBbG1lAaG8fvI9fJLwVrGSqgFkszztrEQCB/oz1
         nuC8CQ8BhrQ1MLTcLyKSJiZuCYIXpvtPd2do0DqbahD53ZIfv99Dgek1dK8jKrCoLFNm
         Xf+oBXCC76K1DFBrnTiJxS7cMV2XriIo3YCXBYMv+nxUWYYZkuUP8txL87mTWBY7hM6T
         RrNXNNt+Sd87VBnJF3ouYizIgiQOunsX7UG+plQOY/4FDrhvE4qoAiTzAXH6+JjYElg1
         CVwUJpoYSrxdfJv4ooLoP7tZFgcwGGJxJWlG8WvqppY4d2iOPR+eeYb6Xd5pcIjV9AfW
         X3GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=IrkodS/qtbrMynTmjnZPfwEMSAxz2bh0ShqJHNnnU7c=;
        b=V9OMWUJ2C3Gy/ShtjqMcxiMPfrPbEtQe6GZMc/rS+TEs7lxT4YJ6lC1vCWvvYCQ36z
         Ok61sJ0FMFU9O8oXfBaKdbFS5eRnGs7BbXNldTTZq21KWfD8gN+CFQ4V0t893M+MzMtV
         ouK+AUKn36j/bkn2k1orfWHCJ0lIIqRpklWAzlv93pcdvxG4Mt7BX8xHiyfx4QKz8ovM
         4SPoLB/ZfwAgRgXIH3MkwxD+nFn+LNWBNaYdZ4Y8Ib06nvI6WQkOY22/US1sN9m9a4A2
         FQYNYguruTUrUStMrrWJP0sM34pVAyzRMjuAjI1tNtZQvRZ/Gnkd8DDxeZsFbTUWIdJO
         fORA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dbMjQ6ZX;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IrkodS/qtbrMynTmjnZPfwEMSAxz2bh0ShqJHNnnU7c=;
        b=U4dxvO64KGQsZ1NGFUFkMcrsGH07+bsZ7xeEfSF3Xu+mlCxb7H6n0S5zIppgX6od0o
         XjHG+HtEHAog2JlccCcw0/z3r8bPIssKbEuNW+36hA68Mi3Udp5v+z7iueRqikPnMyc4
         PaqICwrwaDhlKBXP0utoQ9lPHPrLqfzkk2NeppaFTo3IK2AH+1KICmvVRWLuBXpSUnLg
         zu96d4IQLkynyj7gjXA53HMx4vTPVmx4XVU6NqkPRIZlEPCHa+eesXx0/q1ZbFJCPQ8y
         vmtzc+BK1gsF7lwH08Uv10lORsrLa8b1aZUBQG9zqnlhYz5rhrw5BUSrXuOPvvnU4Eu0
         UlAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IrkodS/qtbrMynTmjnZPfwEMSAxz2bh0ShqJHNnnU7c=;
        b=oH3+HPMyjUy7WOy4EC0gqYFkYREEpar48l68vhQocBhPMjl8E5KX3dJ7eVVjrHoOjv
         J16u1HEnys2pTKRcgNkZiajmT8S8vHUcjJgrKeH1xp6ZGVXVPtYsPQJTWy03e7Y1pr+x
         gFuvOR0ILQQG/Vnz2gISkqOx7d00kC2i7eHyHfg8KouixLZ+mdixmLCG0g94Knn5pljy
         apTUslBs7H7OJq9b8ooUKKoy26DcPmAMd27ronpw8T2GwwDqRCzLVyW14pWzh/2R2d5F
         vLmkEgebqtROAdxfDLkIaYAGN0dYL7cia8bNrryZt7Q89BYBc08Tru9EeVeu2z5KW0c2
         coMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVMhIPU3eCnQ55+WivN64erHweD67z/V63FmM+CGgXzwBsUl09I
	AXaFLI1iEOSGey6NvIItYwY=
X-Google-Smtp-Source: APXvYqxRWFHS2c7T4kgK+JK19FW93iTyK296fNqFokAgOMRRZE09fzBd/ssH3O4/LqYigKbml4GE9A==
X-Received: by 2002:a63:6c03:: with SMTP id h3mr56902512pgc.19.1579525614240;
        Mon, 20 Jan 2020 05:06:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b789:: with SMTP id e9ls9983710pls.4.gmail; Mon, 20
 Jan 2020 05:06:53 -0800 (PST)
X-Received: by 2002:a17:90a:d103:: with SMTP id l3mr24408529pju.116.1579525613874;
        Mon, 20 Jan 2020 05:06:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525613; cv=none;
        d=google.com; s=arc-20160816;
        b=S6FC2Vv4MhP6/CfGGtjnASMYYIszAYTsXwyPq85kadU1JYdcNkyqRYyAAecuFEbU1N
         g/kxv37B4AngvD30cNQ1a2iwNlXgpRp8qZOuGW1xo7rPP7/+e1ncuceQzFVRG8jQeqKZ
         Ekzy9oMw7LBRKcgJ8xVM/RH2BZ9frnp7pNZf4WmfazX7LQnPt0konB0sRskgpY7/63fH
         /RWYG8Aig43DPdZteiWq2KSZAOuxQudnQlFTPP0V1I+gV2G046Bm/q744LY/OjzfSPoL
         DSI6SIdaTcyN0Y01rIikxPqiv17h/zWCy8UgPhX0AhXET19GOmhYEbTcaHeB41bULo+X
         LaAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=n+v67BAlvf4eTayyNySUE6qCDGO4DTVNR4l40xWqp9A=;
        b=P4SBSwgLz68FUg5hoVUV9yIfVxb/4rYv+akXolKqEKXErxLEF7sSs9GFA/AiZW8zvA
         YpWtRLMq5nNu5OuSERdiO93LVr06iMoPsXy70Civ/0XpUixlHrqUavFKgQNlX3kh9VgP
         v8TQx3TBp91aXEVUe4MU+z8GIYRxTmA4xh/WMu+y066bENbvMXje3tkXdFF7ySwujVZG
         mO3gW6UEC56aO1Uobg3rhDjb8bcypk7xPHpXWCwIozYJfN3I41GO/s593v0Qjy+GWCOE
         8uRyOu8/B14srJ+JcVpZXOwyj57RG/TvLEyEbr9eWwggNljIuvDER8ltQKr73ziZeNk3
         Xb2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dbMjQ6ZX;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id o9si1739999pfp.0.2020.01.20.05.06.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:53 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-Vj3nvyOvPiSkq3aEWxwE2A-1; Mon, 20 Jan 2020 08:06:51 -0500
Received: by mail-lf1-f69.google.com with SMTP id y21so6209122lfl.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:51 -0800 (PST)
X-Received: by 2002:a19:c82:: with SMTP id 124mr6361231lfm.152.1579525610209;
        Mon, 20 Jan 2020 05:06:50 -0800 (PST)
X-Received: by 2002:a19:c82:: with SMTP id 124mr6361203lfm.152.1579525609886;
        Mon, 20 Jan 2020 05:06:49 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id y1sm16673362ljm.12.2020.01.20.05.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:48 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 1BCA01804D8; Mon, 20 Jan 2020 14:06:48 +0100 (CET)
Subject: [PATCH bpf-next v5 07/11] perf: Use consistent include paths for
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
Date: Mon, 20 Jan 2020 14:06:48 +0100
Message-ID: <157952560797.1683545.7685921032671386301.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: Vj3nvyOvPiSkq3aEWxwE2A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dbMjQ6ZX;
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
clang-built-linux/157952560797.1683545.7685921032671386301.stgit%40toke.dk.
