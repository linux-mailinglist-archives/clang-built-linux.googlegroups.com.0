Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB5F37TYAKGQEHZHY67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id EE65813C517
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:13:09 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id l8sf1971pje.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:13:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097588; cv=pass;
        d=google.com; s=arc-20160816;
        b=DJpnHaKJlrh8XpHXrb8BzT1ZzAubVdqKjFTUSdEgtnVDT7hq/fZSnl9i3BKNOuJgIJ
         HVjkl4LK9+xlQ+RHYJxBFB1VTcll8kAdAAAbLaETppqZJU3+UEtFfG0Dci7kEv2SeXgb
         r+OmVIolG8lqcJOYZtMGIjQv6Z+lXlYpSwa8RWNXDWvHRJ8ZijIHoDIUVFRmAghU8vP7
         39A3PPCAqqALtpK893drWkFrf0MruKePEWPs1BSUBc75VsQXubhBNG/TF6M05nbI++QG
         NVx9A3avl/xaJRLnddC30dXNvogOukCOcxPE+rJ6S/ozczS6/WI5bICSlA6QeTzwyVQa
         qxwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=joMp/9CewBeZmWf4nFvLJ15DnOikgXBhfJZVXEcyPPs=;
        b=GF63KlIZQdAT8ajD2j/0Ybq087v9b7st0TLxLqpyqezWVfMAcz4Bu7Uw8StfX6Hc4R
         HSsqDMp8wwwZLCkn1VduC1yxWK+BpX+bEYo0WoWl+7GuDvOcmmANMDuvEMDPpCBO9JcY
         jKTEPIxGcJIlGbwwZIC3GkgDEKAoAC4EiOFmj55aNpTyV2zPYUoP/fuCXEmjKF/Td3Tu
         8+hbeu/5GroP78qrgTe/8CmdRXnLyADeCQE3//scap4Zyo9k+zdmlBfm5CBbhq/HFHQ6
         s5eZ02B5mItS5wkygJzEw74SttbXukiw0TtrnS2ZHMl3BRPR5mXb4CNqecgs+CPbe84u
         xaUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FZawUP22;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=joMp/9CewBeZmWf4nFvLJ15DnOikgXBhfJZVXEcyPPs=;
        b=WjjM77xCU6nWdzhqkprUYGetjAOFlGhoCJlx8nBcmacZLmMQObAjmqm/XJvTDZa68h
         IhqZpamK7kDhHSj9h6RO+IgA6p1G6R7DNvbMH9zNHGKdUKZVlEf1kERN37BdCKOYQSMJ
         S0y5+eP6l8dCuLTXoJ4r5oG+jrdm+lH4nSOuuioSr0s4/Ozx9Dx9qlhUctlprduyfwmL
         FwfoJIM5TVCEofVK3oIcYtAHTM1k+zGih0Aa+6HVp/4nAa5Vg0NHDhzcH0r/9kj4jtli
         RX97RPUlqglpLCyWp+hUy+2bj5GXaq6iIi3QUcg3I/YNd5weT7bmBLNPa9OYTUo/RfK4
         4VSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=joMp/9CewBeZmWf4nFvLJ15DnOikgXBhfJZVXEcyPPs=;
        b=Rt5G0A5szTyweoGCx7kzHScyblHjHUol1RNPWrnCIf/zHlep3JC8rqzm4bTKTpkeSD
         LsnXEI6YI8ozk6KRtzrR0HZp5nP2b32xVkA+dafBbCbLaIUAjc4V98mZaLNclwrU5Dmi
         XnQUDh3uW6lmObDgpohTyi7Pc61fTrGjoYT78D1z/OsqcTuTUm01xX0Y9BzatWbf6zzL
         WB7T655ZxL6YfSv8jWIRNzNTndSo3RhGePc+2ELioT1HR3Aqs5cDH2yW5wmC2k8iYMeN
         ak4Usm5Z7E0Ar6GdooE786p0/csrE4nJXLFGrZilXzbwOHfxjvA3IJ1TPFenQuMTWL5y
         J76A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvjANXNKH2ZAeObDI+uqOHZ19pxoMS3uS7cKv0/F55kWfTgCGU
	iDujG0CO5XESiKbIRpni9uE=
X-Google-Smtp-Source: APXvYqz24QJdk1oW6t1UPmM1WTxBv6qsIqgWOf2uhskQkXUYf88RDo5QcXzloO3fyGANeAMOvxWJVg==
X-Received: by 2002:aa7:914b:: with SMTP id 11mr32328139pfi.69.1579097588526;
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a8f:: with SMTP id w15ls3906993plp.10.gmail; Wed,
 15 Jan 2020 06:13:08 -0800 (PST)
X-Received: by 2002:a17:902:700b:: with SMTP id y11mr26667515plk.304.1579097588082;
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097588; cv=none;
        d=google.com; s=arc-20160816;
        b=ydcRC4/WwkXfQNl1JS2zjZY0pN9em3sB5FKLdfM/imUsi7+SGjzTANCxccbr5qLGyH
         6QWbRu5JLW1dEICyg7b265tueqZZxP2CNLJiAMtHhpIDcHK2OdVIm8+68tFkQqlRRLOd
         zHoXmwz7QjRh6MhQwUbcc8iu/a74lwkCgzSHl7GpgzzdEe5w34sExpDYpf/AA3NeURLl
         Nwhon4EUlJToxTT/rU8/hNJuYP7TiWvdmYPLWciVigJEWa1vq3nA26JSIH+AmcoxFQlb
         Q7OhuU/ZV1VG2oLxqsE7ts1Hmhx8iSxgOR0PIzKpt6501xJq5NzQ6V5oxTZugP5urGVR
         20qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=VdP2BPp1ktzDOuFX9ruLU6N0myZ98UXhDeUTLFLHl6g=;
        b=ft2uJUNg6/f7oKnICFZzIt3R/A2hSgkw3s+Quha9a7dkGXKO054PO6lvC3UjSfuCkj
         F+NghpTuOTX+Cq6gPDKMtwAOOq3/+iomfWVLZgxeSm7NWAghYPADiJzsiCE6sbotf4D2
         LPgJ34aR0k7v/WSxMPZyEhnpeQUaWBqKLUaaHBiUGSyr/I9XQFus5Ah0F+pHbaI7DgD6
         kccGvD25rMOXQI6POmQIFEboRrxDGTPuKehKIhkHv8H4riXANq8EPJbJyIsAmnWgF+An
         AoWtxLizVTa5iyZQi5uUFCzJME6vdKPEDLgE4wNRzlizBl7jA9NoxRU95YIBwRflXgkm
         aR8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FZawUP22;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id n20si809175pgl.1.2020.01.15.06.13.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:13:08 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-7jdZGbGPPe-JXFQloljZwg-1; Wed, 15 Jan 2020 09:13:05 -0500
Received: by mail-lj1-f197.google.com with SMTP id k25so4173587lji.4
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:13:05 -0800 (PST)
X-Received: by 2002:a2e:97c1:: with SMTP id m1mr1938330ljj.270.1579097584084;
        Wed, 15 Jan 2020 06:13:04 -0800 (PST)
X-Received: by 2002:a2e:97c1:: with SMTP id m1mr1938317ljj.270.1579097583924;
        Wed, 15 Jan 2020 06:13:03 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id t81sm8978733lff.25.2020.01.15.06.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:13:03 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 941A11804D6; Wed, 15 Jan 2020 15:12:57 +0100 (CET)
Subject: [PATCH bpf-next v2 08/10] libbpf: Fix include of bpf_helpers.h when
 libbpf is installed on system
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
Date: Wed, 15 Jan 2020 15:12:57 +0100
Message-ID: <157909757751.1192265.13380767037659864244.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 7jdZGbGPPe-JXFQloljZwg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FZawUP22;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
installed in the bpf/ subdirectory of $INCLUDE_PATH. Fix this by adding the
bpf/ prefix to the #include directive.

Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken fro=
m selftests dir")
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 tools/lib/bpf/bpf_helpers.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
index 050bb7bf5be6..fa43d649e7a2 100644
--- a/tools/lib/bpf/bpf_helpers.h
+++ b/tools/lib/bpf/bpf_helpers.h
@@ -2,7 +2,7 @@
 #ifndef __BPF_HELPERS__
 #define __BPF_HELPERS__
=20
-#include <bpf_helper_defs.h>
+#include <bpf/bpf_helper_defs.h>
=20
 #define __uint(name, val) int (*name)[val]
 #define __type(name, val) typeof(val) *name

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157909757751.1192265.13380767037659864244.stgit%40toke.dk=
.
