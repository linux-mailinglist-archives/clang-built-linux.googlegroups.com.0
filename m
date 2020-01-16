Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBF6HQHYQKGQEQPQZXMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C784213DB6A
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:32 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id f10sf8698025plr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180951; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvClZLCtCO8LXh1wa24DalOMOjXw87oaE/33wJt7e9BNqyszSEpYV99k0zIBo5JrQR
         Pnx91kh0HXNjahTTfkL6MT6QSdhnfccE3A4r5G0MXlWrtH27Uw9RdF2NuCkvmBZRoc8p
         hScZb7QKZrY421cOIfmgbriT0z1f5Z7V54WtU5Vt7oIoeZc8xRdICkCHWVUB2xV13Cej
         Zuz7LJYDU/iKMZ5rGjpxgX3rFizcSsSXOel/QjRc2giIBpPrfdUiJuiiQBYukp6RhN51
         0QPHTDqg7u4ndsxltX/goJBQyLjYBCrFT2chwbECF+p2YSqtjsNhiy+C3xicIohrhLJq
         JACA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=p+QSV+ZzP2BCsk1Z+adN8anHKmOcs8lC71/5Tn6EP+U=;
        b=zJrgtPJzhjIHvZ4JcLlIBwBrfpNqqTeJWOiRzUZE/eDSWQ/Y8DIE+nv3Nlf8Q+5G5M
         bRQuimNk1j445vo2vttiCOJoo3HIwUZivxTWSpLPI89nORvKMPb8/CUEF91Hg0QCK2YJ
         dQ3ckmPIOjwEPvrj3RIrC1dezddscqD8IR27HgYflt6LZPKLLb/vMOC4sxkr43TFznqH
         83z52hkHY8sI7OzLwrcKjfgPyWpQUrzOKER1+x1heXSU0deFywsNxeeUwXn1tV+Jr4WY
         T/p3xHnC6edOBW5MBtkgrEvaFQu2epFZwVTYie9+14/6hwfXaxtZH26N0uZLVxfI0jbx
         ayBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jV7HjGBL;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p+QSV+ZzP2BCsk1Z+adN8anHKmOcs8lC71/5Tn6EP+U=;
        b=IVzj2/ECOS76e5g1bTNB6Ck8WWtQ7NdAwQFx0RKYsBn+cvNZOB1jX8vWtW+wWE3G5L
         +kS1BSlsGJL9hzbbWBHjb5thCuvm93UliN02nEdRpxrtrX7jxE2luCyN1rHmpfV1Dh4F
         l1iFqwhuSNZpzmTX6AnK3d1LmT67Y9bqk1wxazPTtFvU3JMOaRkgq9C7BVohqVBlLTUN
         DSVEridMOrmsOVY74xxomq6qe7nwtf+TuQBMjXy2W5KM+KJUZKHcFsMGjsghS2p/eICL
         mr1jbJkguB3EvHKOff5Vw1LkLD9fojntMXfjufLhz8r4OYHbNlMp3SS+NvPB6kuPHCSU
         bgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+QSV+ZzP2BCsk1Z+adN8anHKmOcs8lC71/5Tn6EP+U=;
        b=ANOZ0AUN868yEBlfGquP9O/ys+jielD7WEl6wglHKVRP+4WJsDwwsGJBctD7zsTh4P
         wG7y2G/VfgyGqMo2VJnXV8NlpT9+hf3dCsL/+rXWQIqiEZYrW91mjSa86Z2HVIHSICEi
         mom0TSkplXUkgUCZfgd2r/+fuoxYA3HaP07kIIrPoqyKrwkYb0ZPLKAz0atB0Yen7jFl
         fOCP0dkP7i/aAlmdqwmzTQ1BMUNdbf1gFxUk0B5usHeewwW9wRxyn6RxbI2kPEkrVA19
         UMnseUVO3iggyETsUr4d02t50hyNIGLdehGMNr1Kw1oKcJMEPIQy9dc3W4Ulsvjmc0CU
         Dxbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVb5GrAL/JDIeucHDT7Yqh08YEJiw0MNbvQflbmMccdRotCRdXg
	OoFTj1IegKVM5eBoWRgtdow=
X-Google-Smtp-Source: APXvYqwQarTgd5OqUfP80+K9UsctjD+Rw24jbzjYEtJV0q5uwHT/i42333AZ00ULIgYkrROnh3WHbA==
X-Received: by 2002:a62:5216:: with SMTP id g22mr37848652pfb.196.1579180951531;
        Thu, 16 Jan 2020 05:22:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d007:: with SMTP id z7ls5997082pgf.9.gmail; Thu, 16 Jan
 2020 05:22:31 -0800 (PST)
X-Received: by 2002:a63:106:: with SMTP id 6mr39276006pgb.190.1579180951023;
        Thu, 16 Jan 2020 05:22:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180951; cv=none;
        d=google.com; s=arc-20160816;
        b=WxbDK09XnKvEJ39V5LJE2OIU4UMDv9pgDgjOKUkGtntZ9vVbRVhDHiNqMIs2735g59
         uloDCH/0ffQCsFLyPM2cFPMFtsOFw69eHRGa55aP2hWodq+kbf+nWuZkuZu6UHsKw5R+
         adWhA4MLidrdLiv68bFw07zfkTMYFHsxhEbgsGf1zzTIZpbwvURKLWOWK5/eusIWw4Sd
         vCCulXGA7YpOwC5zSCpCqAVlJP96ATVLq1dgGyJroDotE3fihtUOuiluwTHuObewYIGy
         GDxSTleGOIIrty16XcN6e5wnPPpzLlPp2lQwprw0h+kQASkTxFDte9gooUaMSI5liRum
         7rwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=qgBgR+Z52WrKfLcT8hkVNQbHXiqA97nbEgP3X4l7a8k=;
        b=X/AKbJ9zxGKds+cCg8I1FtKM6b5SQfxy1GgdS0TululD/nHdM2+d0QqWJS7+uEPpBY
         D0c3oI0Oh9EPmLYgplQjZmWrsSUyyWdmk6GP40QtcJTZdAwRe7rIhvAsm3p5VWyGQBT/
         QN11KXAlRT+K8NtQrmnwq29j5I92zTxF91H7ig5Sg0P/ByMuTkra7aGudDVwdkGCdgLn
         zKKKgizfiFbim+gCKBgdLunJz1KgNawDnpGazYSizcWhGv/20kYeQjckPX0/OIYtKtIM
         UPBBcnnwEp5XePpryPwtRVmggaTa7qH4Q4UwvFBNGmSa9trjWR2G+wWQS2/qMiNr5tWd
         I/4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=jV7HjGBL;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id h18si79284pju.1.2020.01.16.05.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:31 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-7nUKNIdcNyGHqMQx6kt63g-1; Thu, 16 Jan 2020 08:22:28 -0500
Received: by mail-lj1-f197.google.com with SMTP id g10so4208971ljg.8
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:28 -0800 (PST)
X-Received: by 2002:a2e:b52b:: with SMTP id z11mr2348623ljm.155.1579180947068;
        Thu, 16 Jan 2020 05:22:27 -0800 (PST)
X-Received: by 2002:a2e:b52b:: with SMTP id z11mr2348613ljm.155.1579180946842;
        Thu, 16 Jan 2020 05:22:26 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id s22sm10945565ljm.41.2020.01.16.05.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:25 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 19EEE1808D8; Thu, 16 Jan 2020 14:22:24 +0100 (CET)
Subject: [PATCH bpf-next v3 11/11] libbpf: Fix include of bpf_helpers.h when
 libbpf is installed on system
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
Date: Thu, 16 Jan 2020 14:22:24 +0100
Message-ID: <157918094400.1357254.5646603555325507261.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 7nUKNIdcNyGHqMQx6kt63g-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=jV7HjGBL;
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

The change to use angled includes for bpf_helper_defs.h breaks compilation
against libbpf when it is installed in the include path, since the file is
installed in the bpf/ subdirectory of $INCLUDE_PATH. Since we've now fixed
the selftest Makefile to not require this anymore, revert back to
double-quoted include so bpf_helpers.h works regardless of include path.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/lib/bpf/bpf_helpers.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
index 050bb7bf5be6..f69cc208778a 100644
--- a/tools/lib/bpf/bpf_helpers.h
+++ b/tools/lib/bpf/bpf_helpers.h
@@ -2,7 +2,7 @@
 #ifndef __BPF_HELPERS__
 #define __BPF_HELPERS__
=20
-#include <bpf_helper_defs.h>
+#include "bpf_helper_defs.h"
=20
 #define __uint(name, val) int (*name)[val]
 #define __type(name, val) typeof(val) *name

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918094400.1357254.5646603555325507261.stgit%40toke.dk.
