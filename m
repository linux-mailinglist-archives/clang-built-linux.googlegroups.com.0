Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2GLS3YQKGQE3U4R3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1737C142B80
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:50 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id 144sf19880215iou.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525608; cv=pass;
        d=google.com; s=arc-20160816;
        b=iB42Pz3muuLmtewPwmajBzaApvLmdGxMMjBZpAHEzXNuVLu8QH/zsZyJGRsKTqOPVb
         fnORPZNv7a7KPX9DQt31M+Vq4o9rqjozMIg/A9QcZbTG8d9HEvrvcIvKn8Jj61CuNjtJ
         MitYktRQ2y3BQQiUOuA3Es7YUmCjAvTKj4rYbA8Jt1hPcoZ74ZC9aFFYD0qDR9DlYvys
         t0RiwBnpkeFK/H9RZpEG+OJU4YK2KBLuw69jGhZ8bnD4RgAciZ+fYqDb/64T0W8yzSJA
         qew3vzqj5FvQgofysuGC5j2+SDb1y5WIq0kSpwbAhqUtHyM72EFaAsNll3+O4a/lWZnu
         EBrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=3yr7k5kxnklGzrwJNrnGyRxSBc/Dv88PUBDkYKmWc4w=;
        b=K4OvS1USOKpg700mq/b+apDCFCm71oK52LTc4UoWqx+V4QohbGZNLTWjqBmlbJC2sX
         XmPU1H5vun15YaavZFsoLdusUfClyQ4YpLa1y688xivqrPHgcTwEsWiHJOI5D6HtOq+P
         riOXOkMND883GIKf5ZHUqnyiNfnkn7Y2gYEDuC/FgjOqG/lxQh5OQs6+yWFE+0rZPttD
         d1LCFsGCLGcZNn2z+JhigKbHqxirT3uWLrox43XSwW/rdqxUUg52b7ayKOYsPgOJ5hjl
         ZpLeDBJVETgFMLgcIRXH+9dxlRk+wCiaNemyW0qIB2IzStOHEOqB9/r3Na7rmvOzwe4G
         QzEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MSa1xlT2;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3yr7k5kxnklGzrwJNrnGyRxSBc/Dv88PUBDkYKmWc4w=;
        b=lJi3rRcyhbqaAE7yk+q9S8U2tndVkz3jLIKNqtO2nndNUgwWHmlnPE69TfK74EeZVf
         6Wlqr4tF81B9lVFNG7Qg2m6VAkgqReX3kyOuTPqb2w3BZpP6QB6zgBKzb4CEWdWsO4oK
         Yxl/UrD1n9i1oNZLwcCeBYui0FfkG0tYMYaqFSJXiAhy1J15DeBXK1oh7xKcWHmcPPGv
         0v42tknTMIBTbVeRvH9JoghYGEu1w7wAYghbCS36W0Imx5DtB9UDqPOeDWuzHt7Zm0zG
         C4vCwowyAWHppsatqkCBKxI/kw6xj1psIYIBp0L0C7CWawWjTmnZPc7LiRUV9B5S4rh2
         R4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yr7k5kxnklGzrwJNrnGyRxSBc/Dv88PUBDkYKmWc4w=;
        b=Uonqh/oCPjb4V9bhTj+fIuGbatZo2eJjRVoBkmKBC1lVDAid3h8EAe4KL2olRwt9Nq
         60Qyvf5ET/AFxaYNL4qfoghwUeq3tC7pVkrlKh80L+gCvFWfB0FYewiXuVRBC7rxTTo5
         EbNGLweRQyzoGJUoag8msxfM/wAUwaWksWVccBya1iilQRYZtU0JGRNWG/Mnb36INIqo
         H8gUVFofFAex//Rfaa/yZHj6RHuH+KXQyUj4sCs2ERptVIhwZdQAPLjY6JZljlW0wT5O
         MTPKOTZMQqGleIccit/38XoZftYwoG9RoJHzpPNdpXrCTzEQzq+nnDYdNidg7KhPk4+v
         91Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsNKhyK1jupol2eVqLjoELsTSMGhxkuToYae3rsHwrOhREMLui
	7gPb8LUzjItnYug7pbcOqko=
X-Google-Smtp-Source: APXvYqy4qOM6GqY1+KMBkp6BKMUOxlVwGfWodrK532C2pRGlQIJjDoTEn6nly8G6DAmlf1u9BW+GHA==
X-Received: by 2002:a92:390c:: with SMTP id g12mr10421940ila.246.1579525608719;
        Mon, 20 Jan 2020 05:06:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:e8f:: with SMTP id t15ls5675204ilj.9.gmail; Mon, 20
 Jan 2020 05:06:48 -0800 (PST)
X-Received: by 2002:a92:91c7:: with SMTP id e68mr11192925ill.161.1579525608376;
        Mon, 20 Jan 2020 05:06:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525608; cv=none;
        d=google.com; s=arc-20160816;
        b=uJE65p3ZFwRH9THmVy1tjGlKZ2f4n0dFjNWysDZVKXnjbKh6130/Ii8r15hNztox+L
         RmO9t9V4uEX5gHQtVhiNV8OQviam88ZTOxfnWe9NiY7vG+FyyAIPpRW9Lzf8jziP2gS1
         SQDubfibvNqBUxB8nZeZjq1bjIczLb9PEh4u8Qs8EfnyKxlQEjG4HUZKcNN6E0fd49AI
         4wOVxcZSfDOiwX49YZrvyWbpDjPHkSVsrLxZcORyWOBjtHj3FUCk45hlaImzAgiQ6DRK
         5qUAELbPL8TMF/ynSCRUNjRZ2ZqD/NG5NMqE8iMqEwB7GgSqUwQCqPLd+2vX5/7qRXAH
         ljKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=HIs2IoJFybehdEV46F2hE9tBdLZd5SSeEvzZawQp52k=;
        b=Ser+IKhaF2nnqdwcserlQ2Gv/KNgQxeKX2BAQ57JA5x0wPkUNJzmMUUYkpS8pCtT4Z
         mdE3XxumVQpBFyoym/j04FRAxScMRpGTc/6Q4WQzo/JtdEmQDwmysXGXfAhaqjNeBD7t
         sp4CqOMK4q3gVW0l3gtDmOndwOUIZaHIYFofZHvvrNJkq1RWq7G/+7JqRLKk7h909wmY
         pSLkoAdBCqEDcksEBSsqXwgGKjYL0MfHjQLYw0vEZGqsemQnvaw/6f6Gir0MP9SL3Qi3
         ES+twkajjswX3qho9ZDz7mSJh+I4faLoXZa8LYJdZjDbNRgRFu0iNBdXAbrIY/pNPIHq
         QVJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MSa1xlT2;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id i4si1416158ioi.1.2020.01.20.05.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:48 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-9IiIDugMO328QxGz7KMi2g-1; Mon, 20 Jan 2020 08:06:46 -0500
Received: by mail-lj1-f199.google.com with SMTP id r14so7507637ljc.18
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:46 -0800 (PST)
X-Received: by 2002:a05:651c:1a8:: with SMTP id c8mr13483666ljn.207.1579525604696;
        Mon, 20 Jan 2020 05:06:44 -0800 (PST)
X-Received: by 2002:a05:651c:1a8:: with SMTP id c8mr13483642ljn.207.1579525604292;
        Mon, 20 Jan 2020 05:06:44 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id e8sm19898063ljb.45.2020.01.20.05.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:43 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 6CD9C1804D6; Mon, 20 Jan 2020 14:06:42 +0100 (CET)
Subject: [PATCH bpf-next v5 02/11] tools/bpf/runqslower: Fix override option
 for VMLINUX_BTF
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
Date: Mon, 20 Jan 2020 14:06:42 +0100
Message-ID: <157952560237.1683545.17771785178857224877.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 9IiIDugMO328QxGz7KMi2g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MSa1xlT2;
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

The runqslower tool refuses to build without a file to read vmlinux BTF
from. The build fails with an error message to override the location by
setting the VMLINUX_BTF variable if autodetection fails. However, the
Makefile doesn't actually work with that override - the error message is
still emitted.

Fix this by including the value of VMLINUX_BTF in the expansion, and only
emitting the error message if the *result* is empty. Also permit running
'make clean' even though no VMLINUX_BTF is set.

Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |   19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index cff2fbcd29a8..3242ab874ac0 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -10,13 +10,9 @@ CFLAGS :=3D -g -Wall
=20
 # Try to detect best kernel BTF source
 KERNEL_REL :=3D $(shell uname -r)
-ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
-VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
-else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
-VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
-else
-$(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicitly=
")
-endif
+VMLINUX_BTF_PATHS :=3D /sys/kernel/btf/vmlinux /boot/vmlinux-$(KERNEL_REL)
+VMLINUX_BTF_PATH :=3D $(or $(VMLINUX_BTF),$(firstword			       \
+					  $(wildcard $(VMLINUX_BTF_PATHS))))
=20
 abs_out :=3D $(abspath $(OUTPUT))
 ifeq ($(V),1)
@@ -67,9 +63,14 @@ $(OUTPUT):
 	$(call msg,MKDIR,$@)
 	$(Q)mkdir -p $(OUTPUT)
=20
-$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF) | $(OUTPUT) $(BPFTOOL)
+$(OUTPUT)/vmlinux.h: $(VMLINUX_BTF_PATH) | $(OUTPUT) $(BPFTOOL)
 	$(call msg,GEN,$@)
-	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF) format c > $@
+	$(Q)if [ ! -e "$(VMLINUX_BTF_PATH)" ] ; then \
+		echo "Couldn't find kernel BTF; set VMLINUX_BTF to"	       \
+			"specify its location." >&2;			       \
+		exit 1;\
+	fi
+	$(Q)$(BPFTOOL) btf dump file $(VMLINUX_BTF_PATH) format c > $@
=20
 $(OUTPUT)/libbpf.a: | $(OUTPUT)
 	$(Q)$(MAKE) $(submake_extras) -C $(LIBBPF_SRC)			       \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157952560237.1683545.17771785178857224877.stgit%40toke.dk=
.
