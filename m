Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB5F37TYAKGQEHZHY67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id F073613C518
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:09 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id i8sf10376061pgs.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097588; cv=pass;
        d=google.com; s=arc-20160816;
        b=YvASqMl9j5n4fhOZhaQOVWYw3GkpKx/13QBZwY1PhkK+OvCuGpZY9+cwGhkilqUr2g
         AQ2YT1XsF7reFQ07CO1oJrquF6iBPctpVJhjD0IptqTaOyY/j/cG2CnxIzyX9lQGSJIR
         AAguplT/6vASasQ/THiPe/UzfzM0+PxhRM1PCPUDPiBOUnaH2Gfr4iK2aJwNzfEzdvWv
         FOMlXLHBU1JCl7HZ4IcGPgJ/s8oiarawwnvGMDTn1ykW2ZUv5xTqWAok/QUet7xYsp/U
         kcncx6luEFWZzRZAUjKjF1sthVP7s5u7TG5gJlp8lwYBLUroswYirH5kgmrlAGQjV/JX
         rWiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=99ZP+K75MiW2b1b3NGyJkoIOF1ncndsVaT+K5rG1m74=;
        b=hZAckE+5Y9AKu0mQXcE1chXERFXlkf6Mf7BPCH0vNckbHMjqxru2khnK1phF65FEq5
         4u8SJnpqywvw/oJccx0u1SCl5AOcot/5oK+fPYlY3a8+KnpMkHFCQUERkzLnkoj/npCE
         BcWAPggTQuOi8amnCUcCvH9rY7coZjVzGtu/D2sJ6r5hcvX6sBEZnVz5I3nNTMVUO+lD
         jad8W0rhCyqUjjU8MHUz1QaCu+J+GPj4zEwujqEJJan7TC63c2R0m1SGv3TOamQjgaw0
         200oV5dZV/jcrotXquysCaQVOKmKpvw1Np7no4y53eUxIHKiKBJs7bfSNyuI8+eo1PV9
         ZC0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ei9Pi11f;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=99ZP+K75MiW2b1b3NGyJkoIOF1ncndsVaT+K5rG1m74=;
        b=ATRfyr0poMADZz6nS7yWaW4sGckISVwpj+4mOVOx2SRrauIvxoyafyKYb8MmoxY1/X
         Nn20Y7KHcggdQhiEaBvqlydLj/nfSLx81xax/n9AVFjyhBPltjN6fMsVbe4oTaO6p11Q
         DHrGkfvMufKpkVo/GRFJvnrympVHNnGvIbK0piDFv2pxuCIVLf3Rd1VgYWehoVsPn62V
         piFBRg4q7bi76ozH3tAQzhKxpdtYOIV5BAtNTcXfe2J4QtNf8C5BLYhJ5xI/BvBkpWy0
         ZlOgxm9QpayrGbxv4ZzTkOLBYXz5q595/xlXawaUY0fhhr34anr3vbebV81V5VgNNZAe
         XOWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99ZP+K75MiW2b1b3NGyJkoIOF1ncndsVaT+K5rG1m74=;
        b=D+5fUWoqRZ5xME4eix1hcYnrd8SmXHtxuT+u02/8gyrH2POZajSF7WHlqb2sOz0Mzv
         YPiKa+d/QFrbRf2udQ4JT3rLGuo3WXXGQ6uIpZ+Zry3i4BKKkhFSReUpm9y40RibayZZ
         KKTh/JPGAVz4p/B1wzH29BZXjaC1JHszfSzr3s94ldBA6aN1dYnDiQgFQhdYp0Wmk+Lp
         kmPjrs0RxIVJ1bv090Bgz1b622rbd52QOMv45an4ng9W9MbeIL+XuXA/qyshjo9taQHI
         zdpAV2r1ssl49AyjDPNQv5NyqT7ruuMZYLnWtQyZIkj8Ah2h4p9qrotWZjDsKszXeUV6
         LSeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5lZOQGkIUYogplr/6VKDFuE3EvsZuK1T9Moczipjy63By/Pm+
	8uk+PqOOwV1Q9llx8zZbfdY=
X-Google-Smtp-Source: APXvYqwsvz4IYL1KxbjwsDnByKyE5lH84V3WR1EgT71TP6G3lg1NF/ZzSoxnp7iIH0U/PbOV7OAThw==
X-Received: by 2002:a63:d802:: with SMTP id b2mr33225120pgh.414.1579097588583;
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8686:: with SMTP id g6ls5269692plo.12.gmail; Wed, 15
 Jan 2020 06:13:08 -0800 (PST)
X-Received: by 2002:a17:902:bc85:: with SMTP id bb5mr31504653plb.208.1579097588064;
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097588; cv=none;
        d=google.com; s=arc-20160816;
        b=JeYkDRHk2Ebi6G480aR/vyROYhMdS3I5LJAjQcA6beIRCW/VR34zOP7s82Nc+uezgD
         fWj/9P8ts6O4RrZl7zTw8SttIEfiI1X59CVKM8xJdAUTStrMpbUa3FYBLjpAqJKdQjuF
         PixlnYegeucWv+lQtY7WRlmTCl4lMKMHiw2OKYFjSoUZ5+RiE27NPimATKpewv2+iT08
         vWK9vtQjtRrHaafYcVlhoedq/HUnujnvUBXSmdAajRn/LJIWyKHX2iDzi6A9/2thpuiX
         DQcrwp5GvqqUTPLsaFHqCV5CnczCNyKFa7FzdrizxD9CcFFaB0AKa601hHaVr8urgibl
         uJUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=HFGGMM3NtNfQKc1g801xui8kuTT65wnCG1hYwR9bbg4=;
        b=gHg5Kv5D0uh9FYpJtfGtCgByMKDtrAa+iWRmmYqr/qQM3Yx8peP3SDGlYcGBDXq1UX
         v0A4yj6T+YCxGXvFcO2RcINgrbWGqAQwnrcjxW3rkg9TWR3lypfp9kWgBY+vhy0bW1Yn
         +IWvBtmh6i/iFQeCnMZZX+lnFI6gDYhIwP8l+N7IqhNk1DW2DKxfD2r4teuKk4FFT5rO
         /jhzGPG4FfkzM7g9bqWEXr8Zkkt8ZR+kMxiM89TJQUNpYG4azidgesKLt+AwLdoZp21E
         0Pu3mJWSeZnWiBY2GIrvbyW99d+3dt7l7ByFkI+2OfTVR41s9dI/f3z0gGpZo5XEayEN
         skMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ei9Pi11f;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id n20si809174pgl.1.2020.01.15.06.13.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-261-43OrxOyhMTeEnqUc6KkqVQ-1; Wed, 15 Jan 2020 09:13:03 -0500
Received: by mail-lf1-f71.google.com with SMTP id x79so3256884lff.19
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:13:03 -0800 (PST)
X-Received: by 2002:a2e:8145:: with SMTP id t5mr2055235ljg.144.1579097582387;
        Wed, 15 Jan 2020 06:13:02 -0800 (PST)
X-Received: by 2002:a2e:8145:: with SMTP id t5mr2055217ljg.144.1579097582258;
        Wed, 15 Jan 2020 06:13:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id h24sm9348451ljc.84.2020.01.15.06.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:13:01 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id BC5CA1808D8; Wed, 15 Jan 2020 15:12:59 +0100 (CET)
Subject: [PATCH bpf-next v2 10/10] tools/runqslower: Remove tools/lib/bpf from
 include path
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
Date: Wed, 15 Jan 2020 15:12:59 +0100
Message-ID: <157909757970.1192265.2735388097487906951.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 43OrxOyhMTeEnqUc6KkqVQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ei9Pi11f;
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

Since we are now consistently using the bpf/ prefix on #include directives,
we don't need to include tools/lib/bpf in the include path. Remove it to
make sure we don't inadvertently introduce new includes without the prefix.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index 3b7ae76c8ec4..89338cd16fd2 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -5,7 +5,7 @@ LLC :=3D llc
 LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
-LIBBPF_INCLUDE :=3D -I$(abspath ../../lib) -I$(abspath ../../lib/bpf)
+LIBBPF_INCLUDE :=3D -I$(abspath ../../lib)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
 CFLAGS :=3D -g -Wall
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757970.1192265.2735388097487906951.stgit%40toke.dk.
