Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBDWHQHYQKGQE7CBU7IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBE613DB68
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:28 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id l13sf16116797ilj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180942; cv=pass;
        d=google.com; s=arc-20160816;
        b=jLrNQsCwq2CohhVmh6I9Xiu31CLUqHEF9Rl5NBc0nLGNxn56IHjoll8k7Hk1sIGqUP
         5VJ5MopXH+vPaT+5fPJluFfgkyj9QOTjAXBOyb3GYp4hyqeMR05Qq1zgzWKC30hMf+YA
         PUrOvV/N0KDUWW8pX6fL9/F3lU2BAwU0+eHRWMx2LSQJEg9lEzRW4TLgaLVv+0p1OZP7
         TwLDOP+/qm0meHRS3Zc8b74nVqrYiBwP/aYJHnyC5chpF51OBGKaPfyh2mdD5AK+sxn4
         sUsohPZdblFDRNHnBk1X3rIWmyYIkGu19eLj3cKD0Bn9vm6X8H0UPH1xVVXYdvOLKfYN
         2AmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=NykbCInXNRD2SBhfw3y12qLnP6eXKam7uVz+TlIOHVo=;
        b=fPxJzBSDzVEvsTuRxyT9ryvTsticmM7n2vTnMQqDMLQvjoTGZjLsBhIIZ91H+y+hwF
         lbVs9NtLyDK22DSkp1ZTBRGv0GF1XctpSfaVRosfhSsnh3zuVFJDnMt7idoUNU2yShWQ
         PCWd6JDX4inrUamdhONkdkhuU9JegxMT5J5uzZqnSbzTJTTC20J4VSG867HArzAnIUwW
         hVgfFWFEAA/v5kR8Z991KromIqzc3qvP3sfn9/JCBbRbGl7mhqG0uq1ekxCcra6lR2GS
         luRoKwQR6apsP5SBnrQkgyUVI2LuZaA/CCIOKmayvcNgxuYo1xRSWfWiHBW16i233lyN
         90gQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aocViPNf;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NykbCInXNRD2SBhfw3y12qLnP6eXKam7uVz+TlIOHVo=;
        b=Ui61u0jdV/63W3v9kkFJBrU46/jyCV7Ty+wMkpipGvmImg19z+3+4WxzWT3yT1JO+o
         5g5kd4qnjpvQkKF4VKcKJtOhyVgcuVDeCDA+dIvw9bAh796q5Eq+PCHIyHAkW1HgD0ke
         xh9KTbNrPLiiaXjFrA8f0fPqG31tnQJoUoFvCXWxFK9LZ4xyP/l8t/biapJptWg0MHCL
         ES+p2g10yyVmlxqFH6YTwXfPh2ngcuVxygYL3IvaMIBDaEzSAdfzNa4KmF8OIeMiMC3+
         Ku8mTf98RE5+B7SHBWGVrsSGv5GdqIZjH/FyG1mAF75rY7cs5YpVaz1l6OYbxwsmHq/J
         JUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NykbCInXNRD2SBhfw3y12qLnP6eXKam7uVz+TlIOHVo=;
        b=hmzE19005wOO+2ihwYw/nzp8UC5C7WyrptoZ1tuT3pmJUbFJvO/VnD9kYpJsTMn6Mj
         8PKN/yrhUl0YraHIIYUEmX0skJkNYtrNc/oJrdwWHWm5ybbzunRoMgG2ZpaeWMc05Vwm
         vwhspQTYmYrfjlxj17f0NisD81O8ckrnTd9zy3NG7Ti2Paens3PeNDDr2yBh/RnKdJfD
         Ecg/9bVNhvVeOTbFl7/yVwKpIzSoho+zlanjAV/D5cfOzLEXG28BPtgQqbY/xxMFTBUf
         BPatn9mllHZsIBRvolXaz4G9rfEypd7/JSNCXFT0LcLb0SM9ant8/uDiRpmPIf+W/Nc2
         tb1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWKM9hvThaZOtueJu9whxBs+16UtV3BQrjmjFuYsFiqiUOgV5o
	e/v+lUokuvASzvt5PZa3ec8=
X-Google-Smtp-Source: APXvYqwCW13ywjfXqaqCzW5GrfmTj6OLFLgbMWVfz8CwTt500SmIeywLjehT4HFuQziMfd597955Dg==
X-Received: by 2002:a92:bf10:: with SMTP id z16mr3543875ilh.87.1579180942469;
        Thu, 16 Jan 2020 05:22:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cc85:: with SMTP id x5ls3953006ilo.12.gmail; Thu, 16 Jan
 2020 05:22:22 -0800 (PST)
X-Received: by 2002:a92:3b98:: with SMTP id n24mr3716649ilh.108.1579180942107;
        Thu, 16 Jan 2020 05:22:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180942; cv=none;
        d=google.com; s=arc-20160816;
        b=xeIoXvIEB9CoSScFJSaCCBOJkhQWvOKK08dlHuJ+7IMcmjwVpOdJZNkvLHIkvPStUV
         kYox6t0PteFod/yXQe/uPX+3An+jS0P6oyYu7wHAtHsYmnWSsPuAhwlejJCs93BTBhyk
         94bi/kGS12aDy+YKJuJfNcuJLv6Xmzy/FvdfrGqqlvJDpyKvW4tB8r95Ud4evNMyUXGL
         3W+SlBUuVP5Rkymm/Wf8adDAT9K3oHTWHHp9+15jj7dOacAcWKKsx7LlyF0myKFoLmbf
         SIMpHOKH+N6BksIpkxnw1Juc0m+rsbkCf3tghtsFAGVO9kOMNQTUCTSQ3YeEqYDcUCAG
         dgkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=cSVtvLLBzEQjdxYKQgUXBqq7B1YKjbnsoiMxYb7AwMc=;
        b=ac5Wirq7R2XEV+GRx++UVG6+kcXOdCdQz5pzDfLZf23R162xJ8GZMwTWDddj/tTBBT
         84wrZLvKefk+BRVv4XHAjNK8Ts83Nkfx2UwgY2mcf78O4+z2xeeU1gYPp+iXCxZQRBDl
         qcepOT9GWmy4MDFArU3FYxHkHgluxI1A9GItIeM23iIKuuKj5Q+HwxL04sDBvJ4xXAhW
         KBh7ndb6LdxVpZqeJheOk+uakgZgXC4U2rhU7PNM/tmuU+wi7tMXpkHO+UWuJkeKz4e5
         8+CpM0K1P4hS39ZO4IeaQwJssm85vZ3/HDAy5WbMbEtwFIa1uAidn3tlX6Q0LuG1ZdyO
         v6Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aocViPNf;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id a1si1108354iod.3.2020.01.16.05.22.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:22 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-spU7ijlWPImcyN3XrdUXpQ-1; Thu, 16 Jan 2020 08:22:19 -0500
Received: by mail-lf1-f70.google.com with SMTP id t8so3799536lfc.21
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:18 -0800 (PST)
X-Received: by 2002:a2e:9b9a:: with SMTP id z26mr2097986lji.181.1579180937450;
        Thu, 16 Jan 2020 05:22:17 -0800 (PST)
X-Received: by 2002:a2e:9b9a:: with SMTP id z26mr2097957lji.181.1579180937304;
        Thu, 16 Jan 2020 05:22:17 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id v8sm10931631lji.16.2020.01.16.05.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:15 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 2129A1804D6; Thu, 16 Jan 2020 14:22:15 +0100 (CET)
Subject: [PATCH bpf-next v3 03/11] selftests: Pass VMLINUX_BTF to runqslower
 Makefile
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
Date: Thu, 16 Jan 2020 14:22:15 +0100
Message-ID: <157918093501.1357254.2594464485570114583.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: spU7ijlWPImcyN3XrdUXpQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aocViPNf;
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

Add a VMLINUX_BTF variable with the locally-built path when calling the
runqslower Makefile from selftests. This makes sure a simple 'make'
invocation in the selftests dir works even when there is no BTF information
for the running kernel. Because of the previous changes to the runqslower
Makefile, if no locally-built vmlinux file exists, the wildcard search will
fall back to the pre-defined paths (and error out if they don't exist).

Fixes: 3a0d3092a4ed ("selftests/bpf: Build runqslower from selftests")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/testing/selftests/bpf/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests=
/bpf/Makefile
index 246d09ffb296..30d0e7a813d2 100644
--- a/tools/testing/selftests/bpf/Makefile
+++ b/tools/testing/selftests/bpf/Makefile
@@ -127,7 +127,7 @@ $(OUTPUT)/test_stub.o: test_stub.c
 .PHONY: $(OUTPUT)/runqslower
 $(OUTPUT)/runqslower: force
 	$(Q)$(MAKE) $(submake_extras) -C $(TOOLSDIR)/bpf/runqslower	      \
-		    OUTPUT=3D$(CURDIR)/tools/
+		    OUTPUT=3D$(CURDIR)/tools/ VMLINUX_BTF=3D$(abspath ../../../../vmlinu=
x)
=20
 BPFOBJ :=3D $(OUTPUT)/libbpf.a
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093501.1357254.2594464485570114583.stgit%40toke.dk.
