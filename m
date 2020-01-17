Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBZ7TQ3YQKGQEFC73XSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CA7140B34
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 14:43:04 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id w205sf9509466oie.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:43:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579268583; cv=pass;
        d=google.com; s=arc-20160816;
        b=VV1fwhA4VTFm5Nj8Byrk2rk8gZPcWeJ8l7mMaFfCham0+enu4FIyOtg5nj4RbcncSm
         A0DcAZ5LWhUC0vjYznBdjxXj4OKRjnfrVoUcaEZFd8C84bY3aj1+wdFPmBwDdMzDDEr7
         a3OWMQchiSa3EYyvHHJLI/qP072oeUYz9YrDdd3pzY9RV8HASoOB2dP/EtkkSq2c15oa
         tzbyVU4IvvHzVoqcQpIjytryrxCYOl7uZTCo1nb+Cuumwgts24lzLkFjFWRR7P2yF/y9
         ivdUCbMS9fBLcJtJXE5qvoTu/xy29P4HINEuyDj5T819yMUpUjbmHHfxealiT5FbOFq/
         FV2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=X7p4BLp27Je1CGrbsZfIysr+SdZOsyygzRhjRLIj+5s=;
        b=qnkjtk5kx8nB8WgnstFO5Y606HrodG6+2dgs+hDvgk7pTZlV+GdC80c1nwNoemBsTr
         UYuNBU4igLNAMV2tcRewB+AaskhD4prpkfC0RfYbKmJnJnuHk7BCw44gLgBxF+McLVVV
         /jy4IweA2pavFTNBu2tzIrmBEQ1BxHiHCiRDYgyMvFqFa1DetqY1buo1u1YxuXmQZOio
         1NWy9RPHLiGDmVlQiW1Of01IwG281rYhRDWly84I0juOeyhfvKNTyd/q0tvtRwcB8DeJ
         xO7x/kGr4SgyQ8LB1ZUvvVj1boydaN2Ijbru4cCrW2f/GFB4f8ILtWzhVi9ZFnjEzFKS
         ZlyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cu1Gj4I2;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X7p4BLp27Je1CGrbsZfIysr+SdZOsyygzRhjRLIj+5s=;
        b=iCht1EzDpqHgL/KbLozzPLKJkYk3FYvLTSj7WEKH5+8/E3jgTU1yvKdrm4F2LbB2Qv
         3ffYbQIKCVqQ96UgXeLc7GSbDJix96W5xBNtdEO4mApxnlqFBHDBX6dD4XJh/fTauS9W
         mx7iPGF3CcLKbV9juhGiI1XiZngj7ZwMTF3iAJqvFKcoLC0yTJgE9ixTOyRHiO7WfxbE
         F9pgGHsgdkHLEz70GSo5N/DT0Cug/uvNNgfJsh1vV/5eHFEo+3mTwnWz9syTrtzS/7/K
         +K03eb7f+JeMGAvfZY2HEUPf5AECjUXFjhbVzecfLONuPfj20tZnkiUMf7a8sZZduVzk
         BsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X7p4BLp27Je1CGrbsZfIysr+SdZOsyygzRhjRLIj+5s=;
        b=ToGTAfFH9evuCBe87GgWt0RBfZ4XF1MYMPtJKrs0pL9QDuBJ9VSuCV5XGVj3iJQXP0
         Al4O6/HvZ8dlf7FeYxAR9EnNMXDs00J9bEYqsVfTf2p4uzthp630aSexQ9S6u+B8wFB/
         IGcYz1SMLPyC50Skdv0fkras4vJZf+E3A0errNSkKji25YG6uWRaqeAaLBolqqZiZIqM
         7apmQQpFJhSO0ZF59cP5Bs86BFh9acWlfAhJmEoyQmfDyo+yeK6WULfIO6oPhwOLvi3N
         i6lhLHUkYcKdGIbrjNoI/dwM9d+kTH8y8Ti2rFK4IFGoBOq3/iLIWShrZcMoUmJxOnMo
         d9Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXwCMcx5WXE8obnk2uPeesUPsxz69ZlSDcRwDDHcDwJQggMMk4
	kWK+stmqgRt7xggJUs1vObQ=
X-Google-Smtp-Source: APXvYqzK2fYamEiQ7Wd8s0EmNXvxi6Lh2krwynl9kFGcCNoXM2Bsd0Xh5oZB7H+yYK7jNuHnqxBxjA==
X-Received: by 2002:aca:ea43:: with SMTP id i64mr3494982oih.30.1579268583595;
        Fri, 17 Jan 2020 05:43:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:40e:: with SMTP id 14ls4651074oie.4.gmail; Fri, 17 Jan
 2020 05:43:03 -0800 (PST)
X-Received: by 2002:aca:458:: with SMTP id 85mr3531381oie.56.1579268583258;
        Fri, 17 Jan 2020 05:43:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579268583; cv=none;
        d=google.com; s=arc-20160816;
        b=FKFgI9fDH1RQHdrURG/bShDEEVMixWUv+Gy7b/IlWZkQRWtP6P/NzMdRdy0iTYU42v
         YpvHuiPssTywMjjDTnBGGx2Mh0oIxxY9bBBL8AIS2cLv69OH9jqj9sEQVXvW4NCZCQ2c
         IliLb32pmEtAo/oEJoPMoEqKr8YoOBXEmhu3DedrXwDA9V4dLf/lKK9/MRbVXhAtZezS
         vaCsWxwKXBiTK/hkE97hnk/y4TUzKqer1PG1cX+tiWowFcP80mctCT5kUmEX+FrA4MD0
         jYqtjqQbQr0ZJ/hoIc2n0jhU2dTIOlteg80kAg+yQtxMvchHXl+C24TsPnr8mHPrpxwl
         oZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=UodtdfoibDAm+8GkJBH5DvM+TLWy5L4fq+XSxdOREzY=;
        b=Ji0KV6DnenWqU/xpd9w5KlLhIpdTeuW8Two6lKCfHGXvpcQoW06xdlDGG7mVZygmZf
         I8sDhy3OJ7buCT2wODZvxLvrVKISdtgV+IR/vB/ECqvengm677B7SAJVQfIqpmLWjkur
         WuLPdRARNddpU+UtJSI2yOlGENQYjJfr57XSsmvmbIrW1WK5OdK0pRBVB6Mky3eC4U6n
         zlwhmJ49QXqQjjgkhFOgdw5WynXO3igOWkKYxDwqtJjxfiaAsuNGwbOk3R5YvIRhObZL
         ZEniTH4yhpfJIqeUh/7jKhMm4Z8CBgDTVmYH5iqiDypvxMZSSOM4qkYYZVQ2tXMLwiS2
         T2Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Cu1Gj4I2;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id w63si1139027oif.2.2020.01.17.05.43.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 05:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49--CxnBGK6PMKpu_sMWrQ8xg-1; Fri, 17 Jan 2020 08:42:59 -0500
Received: by mail-lf1-f70.google.com with SMTP id y4so4381803lfg.1
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jan 2020 05:42:59 -0800 (PST)
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr5597194ljm.218.1579268577932;
        Fri, 17 Jan 2020 05:42:57 -0800 (PST)
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr5597161ljm.218.1579268577656;
        Fri, 17 Jan 2020 05:42:57 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id i13sm12376914ljg.89.2020.01.17.05.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 05:42:56 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id F09801804D8; Fri, 17 Jan 2020 14:36:47 +0100 (CET)
Subject: [PATCH bpf-next v4 10/10] tools/runqslower: Remove tools/lib/bpf from
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
Date: Fri, 17 Jan 2020 14:36:47 +0100
Message-ID: <157926820790.1555735.1100844709479532083.stgit@toke.dk>
In-Reply-To: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: -CxnBGK6PMKpu_sMWrQ8xg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Cu1Gj4I2;
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

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/bpf/runqslower/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefile
index 9f022f7f2593..0cac6f0ddccf 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -5,7 +5,7 @@ LLC :=3D llc
 LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
-INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/bpf=
)
+INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
 CFLAGS :=3D -g -Wall
=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157926820790.1555735.1100844709479532083.stgit%40toke.dk.
