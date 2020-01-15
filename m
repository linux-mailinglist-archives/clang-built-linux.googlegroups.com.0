Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2537TYAKGQEYWNW4WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEAC13C510
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:00 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id f193sf5325765ybb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097579; cv=pass;
        d=google.com; s=arc-20160816;
        b=NDiSUttclyNcd8zeu7AWEkaDVMvG4UH86l4W61C54g4nuEASlxsNU3dvU6DlQhICgH
         XmTiB6g8xSaZbW1W0svKGcaBgN0V++BlG/OFSu0pCDfL4oZ2P0W32pnokDNP+MgLmg8f
         YQCQbcxGXVY+j3odlsJzt/uJF82KzHlxCrq4bwPFsBH2MW53G0exBtVWj+KZRsL8YPJo
         f3L8yk7f3K2WwUaVfQEGFSFsGuj4EaiOI/BYcjjmusstjXezP1JnHCEcGE22F6/mrRO8
         tq+1hmgqbXDLFAGjSjmjyYK62nkxjB0oVPserrB/WPed3MrmvMpZeQKA9/atS7Cu2uIn
         7fCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=YLGYVCODKxIvBO5GxWlIWeBk9Kl5O/4b/Y9JscM+tU0=;
        b=FfeonZkr2UWxWSq9av35/5Rf4RoCwVa9k2tdk/2Pd+s0m2zqB1XLq9RPrdnjYY7ndK
         A6L1RQyBqxT3DX2P2mMUXoM7AzhlE6MJsPLk+KJANAhT/tqCIuFjPt+o25EgvbAtK96b
         pWBfetiL/5bJ9eO7DM1bmZPCdJzJAhuGMhy+r1rT/DDFk3jfO7wqF1tyw7A5I+LiQNvv
         eGPiZF5wyqGWSA5ZcK966lUuWfVhdmRmFeAmILJP1VNvfAx9rjKxA9Qqv6akzcTZnPZ9
         bBwcbhLbuZEgphkKhpZt5QAfgEWoqcOXch1qENHQdemp+Oi4LeIHSUw5Q3NnrcC9K1ua
         lzww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T30Wcp7Y;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YLGYVCODKxIvBO5GxWlIWeBk9Kl5O/4b/Y9JscM+tU0=;
        b=BwsfLlschhqfInQqGZfLuZ6aeTZi+03v7B1zBJB0jS92ztFrYkWdLQtEv0WIemBY6F
         RYQc4JGh9rHrmmB5H68TgN5y2RlwG3/k3HVPCinkA8jX9CtR/RxbvQ+oIZFx4XMZVZNb
         DF5nb/5DbmOzSlClRSQlSGbyJl/h2uMKDv3WiMdJMvIWSBOzjbGGUVvkSse+DYe+3gr/
         /fo93QESxFl/o3lE0nURQa0TSkSZgAlt3unGtqpAnyWjV/EGPXt1NI80KUKUfLpy2Zwp
         761kBm/FouknytuLg1j59xl0QvbDtV+FvmAYkesvdbEK5hE6AcgFId61tJEcXfOe2bEX
         CYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YLGYVCODKxIvBO5GxWlIWeBk9Kl5O/4b/Y9JscM+tU0=;
        b=G9SQBXBQwlsX4eXUmX3GA4AvUFDClWgt/7RLKzA+dXLXVXoCCZBOH+DIgEKSK3odt5
         FSJQMgG4HckDvdYGGSzJnTyQwwumQpfNzRpUj7EBmhQklnmraC1cx68boP5VIMCU7p5P
         TkhDK0/juXwyULSChs5LrjR615y68RUKvWM1EkeA2/+c74ByBGM2e9HmAuLItoOWZfMP
         jFnEDDdrc6Yfyl4Qu85lQWJBHjVQG5l0MLSlya8RprA7LEfkhW0JOAx+pBaT+7HbMBHx
         SubIB7y/O+dh2gbHlJNnFvg6I3sUu+ziSrt9fNmn/2eimWjZ5ntgyQ7XcjrTG1QPqoXg
         ksAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwyqQX5sOkwg5qvwQE+qKyHAEqVqoBfD1/30qJrYCglHbF8Ewi
	4burkFsQN0ybCXuI7mgwdCI=
X-Google-Smtp-Source: APXvYqw9llG8AS1/5hU8Z8Kxq8i9AXQZ+nm3nZgsxRcpe+seE5zv8exLxz+ZZjfiHcHfa5MGLdRDbw==
X-Received: by 2002:a81:3b4d:: with SMTP id i74mr20862780ywa.351.1579097579461;
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9b07:: with SMTP id s7ls2994850ywg.14.gmail; Wed, 15 Jan
 2020 06:12:59 -0800 (PST)
X-Received: by 2002:a81:1d53:: with SMTP id d80mr18760041ywd.115.1579097579086;
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097579; cv=none;
        d=google.com; s=arc-20160816;
        b=kMYV2kwj2SIAjbDw9Y4rJjLrJvQf3PEpBO0Rf7l7LvZNaqGg/UxWSaYgMIEGBwiP50
         MuG+745qDODhWgwGbLEJwjye17fDZaLH/JhRC5eErk/fOhNkTWRcBGcE4ot3yc1PXKpn
         D1ut2HA1aqkGYrXFwLeL9zaFUHHt3WixkauANiIneHWNg5NwCdtpF6G5RAt6h0s85/d/
         ou9kHm+uK6pzmYHMdnyPL4LKjw+FaTlgvRTVHciiqiphd/u/aDfkpZIyV7G58kcb78Xj
         aFAKf66v/rwoHgM5VQQLC7auqN51OP3VmOo4xQvy4rDStjst20pe4kIf4uEQN4lmluaW
         Ww9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=BpsexyVEpjbyYq2B5NMw82O1MnK2trU5/L7dkMl7Tvs=;
        b=g5wfOJGvwwT96ECsP/A/l0XYeFzeKBD9NqlIl7gUgZcyW9pTbDms/ONq7I85cmFZGH
         83NyhpVbhPOsnUyuthf5HhBRctItrT2rJg+hPdqQUwxqDzRpwt+Gqc3XF8INQ0ChZf/i
         BNS3r1hKYHpA0SgJMFUUzL6jx8HfVz3Fo3h5UPb49KIQliNy+JVxufqoCaKoQw/Xciam
         z4uYe1DnuTOKTFiyivnE6U19Dg7SQNEaaG9iPEpzB0fVRiOoClPKi5pfUj3gcYU40F5u
         /jPUKI9nsFxKJYR2xcvLyGQPVdXwvFk+rIonHDV0HpdX0z8pn/SqF1QNsGOHJq/sbuGA
         NyrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T30Wcp7Y;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id n67si1009309ywd.3.2020.01.15.06.12.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:12:59 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311--MfpqLSrNiCMrQigu5i4Fg-1; Wed, 15 Jan 2020 09:12:55 -0500
Received: by mail-lj1-f199.google.com with SMTP id z2so4174279ljh.16
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:55 -0800 (PST)
X-Received: by 2002:a2e:a37c:: with SMTP id i28mr1772082ljn.118.1579097574010;
        Wed, 15 Jan 2020 06:12:54 -0800 (PST)
X-Received: by 2002:a2e:a37c:: with SMTP id i28mr1772066ljn.118.1579097573864;
        Wed, 15 Jan 2020 06:12:53 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id p136sm9082048lfa.8.2020.01.15.06.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:52 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id EE0AE1804D8; Wed, 15 Jan 2020 15:12:50 +0100 (CET)
Subject: [PATCH bpf-next v2 02/10] tools/bpf/runqslower: Fix override option
 for VMLINUX_BTF
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
Date: Wed, 15 Jan 2020 15:12:50 +0100
Message-ID: <157909757089.1192265.9038866294345740126.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: -MfpqLSrNiCMrQigu5i4Fg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T30Wcp7Y;
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

The runqslower tool refuses to build without a file to read vmlinux BTF
from. The build fails with an error message to override the location by
setting the VMLINUX_BTF variable if autodetection fails. However, the
Makefile doesn't actually work with that override - the error message is
still emitted.

Fix this by only doing auto-detection if no override is set. And while
we're at it, also look for a vmlinux file in the current kernel build dir
if none if found on the running kernel.

Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |   16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index cff2fbcd29a8..fb93ce2bf2fe 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -10,12 +10,16 @@ CFLAGS :=3D -g -Wall
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
+ifeq ("$(VMLINUX_BTF)","")
+  ifneq ("$(wildcard /sys/kernel/btf/vmlinux)","")
+  VMLINUX_BTF :=3D /sys/kernel/btf/vmlinux
+  else ifneq ("$(wildcard /boot/vmlinux-$(KERNEL_REL))","")
+  VMLINUX_BTF :=3D /boot/vmlinux-$(KERNEL_REL)
+  else ifneq ("$(wildcard $(abspath ../../../vmlinux))","")
+  VMLINUX_BTF :=3D $(abspath ../../../vmlinux)
+  else
+  $(error "Can't detect kernel BTF, use VMLINUX_BTF to specify it explicit=
ly")
+  endif
 endif
=20
 abs_out :=3D $(abspath $(OUTPUT))

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757089.1192265.9038866294345740126.stgit%40toke.dk.
