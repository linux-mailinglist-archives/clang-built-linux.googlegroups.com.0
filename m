Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4PQQ3YQKGQE4K2OPPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 83046140ADB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:36:50 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id a16sf25036777ywa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:36:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268209; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXisp5KaGx9DrmWBXdIWCxP+6lJcK+jRErvsBJ4CEjw2PqmGtwFy3CAQJNIK9USGmY
         yaRCz/3mIlBH0TSgqDeEwxZR20cqQ4O+0Kbn1MPbVayJ8AKh5z/2yPshnN967z205g6V
         MwYHfEa8SydkZ/QU0hXCxUwu4MiIQRw7aYwrrpQTse/qDbTUP873kSwDwo4Ve4zl+gIW
         NOZKeNKW5vltqj+Gq3va2VYFGjQKpkWqKi/IvQYtPEPkUZ5u1kQHpbLVd1U30G88wnNN
         USCFQaIw1pf0ftoV4n1yTYzFKtWq/E0Vnv49NcWnVwz8+cq7oKgQMzg8B9xPjWuGst3E
         Ds0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=P9G/VfuuCHExAKpqRBUqpYQtIozMjA1CFB26nhSrv+s=;
        b=t7L4qSVSR98CvrGLAeydiDC8xeRqiTgw2O6t8JkzXtazWDS8qyP6OiuqLTQm1yDP7p
         S8o/hg/vePJG7XbQC2aORWLAtUbS7kdnAWGidu3y5ieNwvi0M81TGv8NlrgX+b0vH/Mw
         HALQ/T5Hme59shSthjhXrPb7mdAjJ7ziU/X7TCdroO65PoRJ5gzwA/HlIKCJQ/Y9TTY/
         mczO1fsTYktkzcA1FjhB+7z2VQTxDSyRP9i32ZBxI+yiXTsmqYjs/veTtAzOOobjh6N7
         lv5bNOpIeqHOu+zxGxDFuYxT0ydXeFiXMrZEJveERF9A9RFjMkJLsIEeVQmCaPzXL2SZ
         4+Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZeE1yXq0;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P9G/VfuuCHExAKpqRBUqpYQtIozMjA1CFB26nhSrv+s=;
        b=b+cspEDhT000BQIAmjH8Qy6yID8ZypflbFbCjRcnWozdKn+tGfNQtGLjYdaMoD7ml/
         fDrSNu0fD+KpKI8iYjnKmKX64jkY/Olm8SLNWgG4h6YoImzHJfceTDU/XF6tmPMe85tY
         qCB3Q+AlMYji1WG/oZTUyjn1KVHKUUX05lIukiwl439UoOwIAgLVQ7yHz/HisRei5wep
         EwDIPuqCbRwP0n88vg7qrTn29wmIK2PonmCUWS1ABJq9f8HVFXu5zVV/p2vZpxYFCaVC
         BrYyKjsN+UVICJpVzS0PwQEck6qk5FtOK2Mv1b+2X5aYOMh7ILvaGZ94FgI6OYPV+nIN
         tRlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9G/VfuuCHExAKpqRBUqpYQtIozMjA1CFB26nhSrv+s=;
        b=bGW+pWxseqswraCC0jYTnqpelmEPBV1dLp9m/id2TWan7df3zYPTH06IDCNY05fPTA
         6bWZ5EROMf7xnBfzOmC9IjPjEFFsKhcHFm5PnUcXXvkZCoVN007S3fIT51hQ1uoFxEi/
         c6JyG6NdBzDVm+gnWXHTGj3LGF0WAqP1uzIWDy5Z0oeZdyYQ57QDioapscfCpwDmQuoo
         DRPaW+mrx6E1/hsI+mFzKAduuRJgWNmfPN36E8JRMgtb4wwipYDAKNyZ0nlOFXPABrhY
         WvWulCq11NIA3z+qNz6mVsPETIgcm2XBooo6zBJ9TNqUkw3BzABbw/+SV1OBIgu8zy/L
         zupQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJQp89NHm3jjhbYLiAWQEkdQngMpW1QY2vryyavQTOGRLD4Ro3
	94DjUozzqiCt0ze9gSoNCoU=
X-Google-Smtp-Source: APXvYqxctijDSTaCU4AC4IBSzWb3ABj6wJRP2Dl6HdgKhR9ctAx1l68SyDU5/XTE0p7nVXHZVd9esQ==
X-Received: by 2002:a81:9912:: with SMTP id q18mr29668992ywg.383.1579268209502;
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:86cb:: with SMTP id y11ls3437240ybm.15.gmail; Fri, 17
 Jan 2020 05:36:49 -0800 (PST)
X-Received: by 2002:a05:6902:6c6:: with SMTP id m6mr30061486ybt.229.1579268209177;
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268209; cv=none;
        d=google.com; s=arc-20160816;
        b=Jf8+ubNHrOlPvYTNwKZRYxJniQzzAwXoGgygbTJMa++LTSjWcezOJDdERL/kzOTg0Z
         e8SoBbsvOPBa8ciRu7OtPNIlxZp4TsAiphi5S1+XHq3QimkMByv/ufV1t8TYN+cte6z5
         PYoVYRqi4WnBwRMNVctuwIR67w6b0j7IqmD70wBiCeDcrVgR8YD14++e8xlAgH8TwLzW
         CwOIB4/c8I+9k6EoTsQneRGflpHRU4zobAnSXYiB97mub5UE0xgX0yzdyWHLpxCmQubC
         3vx6TG9hrT4jYEQlHHRCBvD3m8V0EAO0f1vHDZy4JVdJeetUSW8GakhTKEp7m/5g0Ry+
         AGCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=vdpWGBJlnAzSpUYViiJo2U5HfLzjFym0faK46UOO2hs=;
        b=fK9xACvx9R2XxuPBopkGI7Pv4UuBZQ+rBqMwkKAfYMEUmRLmqnZoCUkFq4bbfMLpqL
         Q9WX1kT1Bt0GBOyLaafIig/rp18gyo1EXx5QeUXyC5uwvnC+nnpNag01yOOiTPCMvov8
         hwdU8Tbzkorw95BmxPKvI7V1gU3kzS+Ct+4cfa9GAvwlVpVZEA95bZIvg1DPq8CqN9W/
         c/OGXGoT2FJZqdysuloxwhcBdmnLsqaQJ4deSX2aJBIjZZsQ23WjW5pKXhnaSyWhauh4
         LtelxLpruMx+yUuh4xr/uJzK5lO4s93ACXUZHyb8Z+AiFLwP4wDsnrCvPH38x8zMgGRM
         sbSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZeE1yXq0;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id v64si1415441ywa.4.2020.01.17.05.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-31-tuX1MJXUP2OWHCZVysV4-Q-1; Fri, 17 Jan 2020 08:36:45 -0500
Received: by mail-lf1-f70.google.com with SMTP id d6so4394700lfl.3
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:36:45 -0800 (PST)
X-Received: by 2002:ac2:5c4a:: with SMTP id s10mr5379659lfp.88.1579268204093;
        Fri, 17 Jan 2020 05:36:44 -0800 (PST)
X-Received: by 2002:ac2:5c4a:: with SMTP id s10mr5379639lfp.88.1579268203914;
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id l64sm12147018lfd.30.2020.01.17.05.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:36:43 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 5BD791804D6; Fri, 17 Jan 2020 14:36:41 +0100 (CET)
Subject: [PATCH bpf-next v4 04/10] tools/runqslower: Use consistent include
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
Date: Fri, 17 Jan 2020 14:36:41 +0100
Message-ID: <157926820131.1555735.1177228853838027248.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: tuX1MJXUP2OWHCZVysV4-Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZeE1yXq0;
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
Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile         |    5 +++--
 tools/bpf/runqslower/runqslower.bpf.c |    2 +-
 tools/bpf/runqslower/runqslower.c     |    4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index b62fc9646c39..9f022f7f2593 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -5,6 +5,7 @@ LLC :=3D llc
 LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
+INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/bpf=
)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
 CFLAGS :=3D -g -Wall
=20
@@ -51,13 +52,13 @@ $(OUTPUT)/%.skel.h: $(OUTPUT)/%.bpf.o | $(BPFTOOL)
=20
 $(OUTPUT)/%.bpf.o: %.bpf.c $(OUTPUT)/libbpf.a | $(OUTPUT)
 	$(call msg,BPF,$@)
-	$(Q)$(CLANG) -g -O2 -target bpf -I$(OUTPUT) -I$(LIBBPF_SRC)	      \
+	$(Q)$(CLANG) -g -O2 -target bpf $(INCLUDES)	      \
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
clang-built-linux/157926820131.1555735.1177228853838027248.stgit%40toke.dk.
