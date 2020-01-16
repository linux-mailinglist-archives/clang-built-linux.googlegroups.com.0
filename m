Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBGOHQHYQKGQEEV724XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id C410A13DB6B
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:34 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id l25sf13585118qtu.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180954; cv=pass;
        d=google.com; s=arc-20160816;
        b=QIs+pZF5Cp72pviHVJFmFlGYMmhz0mie2imXNXp7dRxgP4tiLaOyd5SlbvTToav906
         MgNmmMr7c8Gp+pw8ooT240BNYpEbV3ZXuaHaQ2qZjwy7PHbjuPD9ygXvf9+q6PKi5pRk
         fC8+mbi9xOOvWmOJHIOAEFc147vzfhLL3KEtugsWJ81dn9zcAl5re2uAyG4ay+PaLkTZ
         bpXRr6/SMCu1F6VSidTeGNQDEXbiA50DyTKxrUA0KVngrxhvnkp1bUeYhSHWdCZbHqXf
         99J7h5ryvG8QPA0hyvjSjb2AreEjEzxo1qDXfhUD4inV64LR6Mgek1XyJXdqRGYpTUlD
         WPwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=NpnAOqvq2R2X/5cUD1cWgcOzRfMMYLhz0S/yEMkNsx4=;
        b=gDErnIma2c7ylSLhM009xIIoEpeYa6RKD6InB8UpcfxcgzWwCnk8FcKLGcGh1PryKb
         iYIzLir4iyzshT7cn/fyXjN5tFl2ksycStcYCsLcB4yNQLdCbR4XYPme9K3SzJ2EpYfV
         R0K5ws95CyL500eX2C8S5tYf/PLuYCJnv/sWi/TqZ2lWr68JHBsPOpcPt3hPMZSwPTj2
         vzLMSgjQKoex5UqPP48+wFdZPOqAGYK80GH92SVJNaR+SfD+94XfAO+h4zioM00d01CJ
         g5oy4ahH0YucUH526JgTDZhSO/kMmvzanFUBiKnlM+ZhCIoKUyMz4/NEdjnkUJ5jp4PT
         IWHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BzVVBuGJ;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NpnAOqvq2R2X/5cUD1cWgcOzRfMMYLhz0S/yEMkNsx4=;
        b=GAhiyNqSmp5CMMnd3RSpWUrCONXLMn7YhI+9JLf6otF4AcSaoIeKKTYSP0ynwXdIur
         7TJdktjRsT/5vVEwI6eVu1K10KuTGX1EphKBr72g3eH5fH6rfnbLu7SqsDr2ZcKYue+5
         varydXp6/Ql4KPVis+SxLe+GGJWoiAv4E/cVb/pwg7b16ayiQ5XLYwXTfyXkClUOJ0sx
         MpizKO9BCBSCEUDjOVY+qBiX0u6+7l4CePmIwMFA+guUuoUoF3mh8Map/cEo6BcHBvvP
         8g1KfuAleircfdmnC0cvuysZ0XDO4US79+hcfw8qpZVOCdxFWqtSSemp1iRJCTrRopiB
         tgQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NpnAOqvq2R2X/5cUD1cWgcOzRfMMYLhz0S/yEMkNsx4=;
        b=JkDgtzTjv0IWQM+RvtXfa7zgw/o4syQGIlC08Hr9wzhTMGGQKUbZAZk3idqTUG2LlO
         ogf8kTWXcqc2dZh+PVTPo1B+FyEwQPChdz2gx7V31Du0zH0Jim29FwxBcDLQxKDL+QAz
         frFyFx/jkrRHzh7TE5Db98WUmcCcv/fEgbuOEnqv30xdBUkMWK9vPpFhxbHDLt6SSVuG
         1fc9ZDF+r1Nhz+9/Zr2fOgygvDqVDNuy/SozDEmY05PYnq6embwznk12RGsLOFgBquXK
         ezluy76wQthTG/45mSRniUK1wwRUdrYEf8tcSwo5W6OHMzUPBz7AjmukwO/F+Or67MQZ
         IlXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXf4EKFyywsLZTjYof6ktCAn+XEdadWEfv/WvE1cBnksNT0zp3S
	XdYgQnZQynkRC2OpDqmB1PI=
X-Google-Smtp-Source: APXvYqwujECM1O6Aqem8KhLBYBotl4p9krQQ4LoHtBftu9ewI4ZhBmbqdAcX4x29KbyM0hZ5dPWgVw==
X-Received: by 2002:ae9:e304:: with SMTP id v4mr32565874qkf.399.1579180953871;
        Thu, 16 Jan 2020 05:22:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls5436865qka.10.gmail; Thu, 16
 Jan 2020 05:22:33 -0800 (PST)
X-Received: by 2002:a37:8306:: with SMTP id f6mr32819065qkd.372.1579180953543;
        Thu, 16 Jan 2020 05:22:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180953; cv=none;
        d=google.com; s=arc-20160816;
        b=sTUcBetq1HcEcyBG7DJmuGqQWXaDks0tMGNPiC3TLGws6sw9Egi/G4LnpnmF8O6Xny
         clPNZfC3MCNsY0kSdFlLscHRoyHnzxdJzHUxOMZNEbSZhDg3zvF5HRrfpxDVZPl4Plft
         kud7QbtJFclY84qwzxJCDWKwGxmJKHGw6uhzjKDYn+iibXFCef8YzCtd1P3c8DnxsdAt
         fZktYvtuFJZJi4aPoMOUyIkssglS9RWFcJm22kqGkjzk6P8WLTj69NpeX64EDRocaBGQ
         db0zhpOcLP21B1NHFrnQqwJcZYrSpB3r4XkxCDJcwbVKQRPnFadTFGTgJHRsO8ONvX9F
         ea4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=zjvyiIBPmhsbkqv6S2ys74y4zy8JqbCYIZa50DAjK9E=;
        b=BYs5H7rGf8b8NGFuK1DRsJTlMtDPfLr95DidBn0Wy8HgmzzbMRmTKFfnXzw9M7jEi0
         awLTI0GyoBoXi8wSoV72mkwrTjQh0GavZoe+jeZIsaNB7Nlp4nVZK9MXy4hZ1u6lJdMK
         o4Gb8o+vmf7QHPvAHO1BFpvK4KuX1eS83aMqp1qcoDYqyI7zsGadFeR3Skc5o17WnPNI
         9MMikybuhOc1puR8hTAtuyQOBJMIYMIFFs4doR/Mj+p1vLSVB3p9KwCg6N+VxGDciGuI
         pN1SgYOtctDZXIZh+vc98G9qoJD2UO/OkEaA2YI2VM4G3p9a/vSgdW3X/MDOlurRvxrD
         AR4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BzVVBuGJ;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id o36si1022686qto.4.2020.01.16.05.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:33 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-15-2WFd-lfnOTGWDZAECtugow-1; Thu, 16 Jan 2020 08:22:27 -0500
Received: by mail-lj1-f199.google.com with SMTP id r14so5126499ljc.18
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:27 -0800 (PST)
X-Received: by 2002:a19:22cc:: with SMTP id i195mr2462143lfi.148.1579180946445;
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
X-Received: by 2002:a19:22cc:: with SMTP id i195mr2462134lfi.148.1579180946289;
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id y11sm12233392lfc.27.2020.01.16.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:25 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 0044A1804D9; Thu, 16 Jan 2020 14:22:22 +0100 (CET)
Subject: [PATCH bpf-next v3 10/11] tools/runqslower: Remove tools/lib/bpf from
 include path
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
Date: Thu, 16 Jan 2020 14:22:22 +0100
Message-ID: <157918094293.1357254.438435835284838644.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 2WFd-lfnOTGWDZAECtugow-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BzVVBuGJ;
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

Since we are now consistently using the bpf/ prefix on #include directives,
we don't need to include tools/lib/bpf in the include path. Remove it to
make sure we don't inadvertently introduce new includes without the prefix.

Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index c0512b830805..d474608159f5 100644
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
clang-built-linux/157918094293.1357254.438435835284838644.stgit%40toke.dk.
