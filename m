Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB3N37TYAKGQEMNBB4EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F1C13C512
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:02 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id s62sf1352225vss.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097581; cv=pass;
        d=google.com; s=arc-20160816;
        b=JU5zbNiTdEAMEns/WHu+93lAJhnhpOFAg9G2yEsRAEgct1CoYY8zY2DniudWmXt1yp
         +tqnHtqY3+jGC6Dg182uD9OIu+bq33lygHITMG9t34bbPksTxWTp1pIS205OI5hQ4Fql
         9zoMrHXxoc3GZGunx+H6yKUkKiEzGRt/fgHm7FacqzeXljw1Yxd6WdhlJ2KqVvcem2vx
         D7PoX/4Kjf5QeEc/o6qxn3jFk7yhE7K0XPCsX51XBVy0HWP+uF6ZjJKQzwcTenSxwa/Z
         aqe9+e4bs81zlTqL5eDDDfHc1t6n6X69021+mtfSV4YHxWFHwpH8hAmo79Uo5sOFUDCL
         YZsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=wuNwoooZjkMYhlpes7rp5sIqi0EolcNuR6JiUfStZZU=;
        b=tVg7szSgeDwJ/4d4UKeQ73HTxtL1xYdVu7J6BrCDRaFPjUTCi6/s1woP+vjjQVlMKs
         69MGx7aWZ9u4VosebvrEBJ0RmR8Ouhz17JP9wYAQ5srZfZvaEc7jdPKVoo1Z9x4SLa1C
         EbH8KImbiOmUSWasHEhiVNKZwtHbmn7cRIUTsCoQCayHWWk46iENg0Dyldm6wIMnUg/M
         CWoU4yWenOeLQEaXVAG8FQQYxTiF1ieGZoZ9lHC97+YXrPBL5Xhz3wD37K+79W59vc0d
         SVOhJduJe9ntqrgWBcnCftM7I06UEs8oEytv4Ew3qn9fvhqCSqk/3+bHBQ+jHNAq0eh9
         MJfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TfqbiJ9u;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wuNwoooZjkMYhlpes7rp5sIqi0EolcNuR6JiUfStZZU=;
        b=qal73/Vi55oJWcNIe0Su4n4YjM0EJVLLWim6v0DkeX3csyrInufAu8SYEJm+8nb1D4
         YBPeAl6MhVIWCl0eccWTR9sDodxAm6DaXoQW1nGF0ithSrsFoBmF1DhX/9eoSUmoC/wD
         dQm+9UC+TQSy+2VjnfrTgQC5bgf08bdqjafBiQ2Yj3v6LGY5iKDlLT4g/Uz9053O8zmS
         bTaAunKGr1oqekcxk+d0Oob7zf2T+DU5Mk9wl/crFy8tYJ6hoZ6o8T2e4wQIj0/QBFDQ
         7mOs/UvAJrn36qSzZRtxveimc1dFviRWSdwCZn/HbDSYXP2YQtKC4lyTXZEbvn9WwMww
         q3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wuNwoooZjkMYhlpes7rp5sIqi0EolcNuR6JiUfStZZU=;
        b=L2Slxai4jWrOOXq82OyyqYZ1s3GUJ2SHrD9owWSAF4SthhMuP/sluDvlAkqcNW7arS
         8jzhNfYFKcrbNbhJ2md4rBCuj7VGkVbGAH888DmN9UMu43k/vvvxu0Qz+uXnJlAD5naR
         FgiPO/OVHfnaAz8oDXZPu5WCjy3p8STKerIXhRP03Zc6tfOh/B2Ag1ykf53Xy7y881RT
         WzwWOjKWhEWOl+c0CQOiHh0rzO05CP8b+Iy1MS16VCnKfXSeSyqsNGmCscuEAAhATPO7
         E711Zz9eH0F/KDpUZX9+7GtG4tmlLGzKnUPYYUJM7TD/lA36G0ipV+615eDnebsBn8LF
         wJ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4nxG10H2HiGl2n7N43tI4sdCzXPPzi2tQPNIAeC34pTtiCdSp
	DmOBU9KN/CJ7XAYKarlqSt4=
X-Google-Smtp-Source: APXvYqx2YMNc4r9INUCQB8hHRsErI9w9o9444WgssnpTrQfZb/KpIZvxdaGUMnyOHXZP9ia2Nh+ZXA==
X-Received: by 2002:a67:bd07:: with SMTP id y7mr4614388vsq.144.1579097581482;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:201d:: with SMTP id p29ls530179vsr.5.gmail; Wed, 15
 Jan 2020 06:13:01 -0800 (PST)
X-Received: by 2002:a67:e954:: with SMTP id p20mr4563247vso.3.1579097581114;
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097581; cv=none;
        d=google.com; s=arc-20160816;
        b=iI4aJvVTqkx3A/3aV7MjSKzFTBBgIJxllx4ubJwacNRedLye7YN8fOj1Ei3WmtUvfp
         mjGZCVQ3C6EAx0r7Hxmy3i0YxsBCF4rgDiQSI5Bt+4m0ZNPHQd6O6BT2ty9ncgOLC2IR
         sXfMIJMBJFTPzBZU5VM9OoBIMELhVVrSyuDmKAmyBjBH/KokyMQUy+g85Ur9WjAqGlkb
         aocAv3O7P3Ib2wh+7FGgjBjBwvqJQ8ZgOcmDXlLRYh/kmU58TRGSnnQUJZ5pfW38bMr6
         o4sBkBzTfV6umidFVqqpRZYpampTekRv+3e9eTZ7VMpSKisLSonVYQPsDgryo1gguM6/
         3lmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=qLUS27Kyh+/rAh4xS+yf7+ESHdYodw3RMYrLyb5ghUs=;
        b=l5Q3BYroAMU7duTeCROvNzPInCNqtaxcMsVBiLxTEdlTaM2ULElKlF1byGoHaVO4MP
         EYJbKDWKhkWjy9ShTs3cSaQVplnFxatpT62apd+HqrXdVDtolvJ7jk/SUEvvEsqEhXwE
         NIn3QxSMVUwz/9Eur2PidymwKCwvzajahJ/KMsS9OUCkZDtfRNWY9QitHwJcwh/PLI5I
         KKW0Ei9upk3REaiy1hcIZCTxvJgojqBeZ80/0htqO9BpyiaUGXOU2T1gTO7D5Rf3YG6W
         vJa86Da41pbkE4OCpKDHjpdMaHgva2y1Fm1bexY5u4kW6uEFOVyDcDsgKPPxWsqgLzdL
         YPUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TfqbiJ9u;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id x127si702426vkc.0.2020.01.15.06.13.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-p3LY6pRgNIaTNDjfn9LG3g-1; Wed, 15 Jan 2020 09:12:59 -0500
Received: by mail-lj1-f198.google.com with SMTP id b15so4182634ljp.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:58 -0800 (PST)
X-Received: by 2002:a2e:9587:: with SMTP id w7mr1910156ljh.42.1579097577654;
        Wed, 15 Jan 2020 06:12:57 -0800 (PST)
X-Received: by 2002:a2e:9587:: with SMTP id w7mr1910116ljh.42.1579097577147;
        Wed, 15 Jan 2020 06:12:57 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id t9sm8960034lfl.51.2020.01.15.06.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 5F6421804D6; Wed, 15 Jan 2020 15:12:55 +0100 (CET)
Subject: [PATCH bpf-next v2 06/10] perf: Use consistent include paths for
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
Date: Wed, 15 Jan 2020 15:12:55 +0100
Message-ID: <157909757530.1192265.16430056843174690136.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: p3LY6pRgNIaTNDjfn9LG3g-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TfqbiJ9u;
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
clang-built-linux/157909757530.1192265.16430056843174690136.stgit%40toke.dk=
.
