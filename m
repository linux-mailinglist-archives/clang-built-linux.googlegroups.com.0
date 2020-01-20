Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB4GLS3YQKGQEA7XR2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A6142B87
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:57 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id h7sf31681511ywe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525616; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ua/O5tlw9WK3moKGD0bRMapxzdYl41WWpjSiRBjTQaDlEfX1gTdWzz4LWLaZQOrvtB
         3Lh+kVOIoAKAzyNDe9aC2W8A20q18oPtXnlJ1t9ikX5xLkCIn0dIRhsQD3KNwdWLtgsJ
         MgpceqcXzY1zyfhcGaCLEddMXaclKTDojxz56A6KmE9LMptK/0iJapxJmK+rBgdFMenD
         kecczG46pNNIVCr0wiImPIAo+ow6e/nqWWpzAnk/9jqriAdv3WVDjZIPoIlBnnpZCjbb
         HRwZ+rAKutEjKz/6p0G/CqeSUbBnEf1P3ehL3D6j4utBT8c1ADGodJyw+G8I6OUyIlZg
         cxtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=gqRjnYxbtyaWnz2GGQoz/3Xq2wcwDvpO8uvOy/YMv4c=;
        b=nxwi49JY4adj0Z5fYFD9r214jiGeGhA9R2Be8k+Z9FEWXvaYSklXSvGSNnT+PoZ+qX
         gXqJaSiZ3amTVmk2jevxkckEzcI+kwSyKY9pVc4LLeuiGPREFGpdarD3KkgtM9/fWv3X
         3CDx8wYopAwxZZ5K176ZIqB8QgsWjTJJBoj6+GmPDO64XnEqj/BBF41NnXjf3bniticY
         5BSwmD0fDAGldFCLYa3J9xh7dtHhOBqoLCvgQ3hz1vICKDnN1SmepQ7fFab76HVAtyvB
         4GYVz7vvNSC9WtFgdi5vfAx4yrSFYuqe0i0oxB9az+U5kwn5NB7TgA9juRPiZ++slDiL
         gJ8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J+zSVCCD;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gqRjnYxbtyaWnz2GGQoz/3Xq2wcwDvpO8uvOy/YMv4c=;
        b=rN4SXipt7iILOOlrb38HzcQLgMFSLCqmfa1LkPmDFepIoidDaHXOFK+YqO+E5eO0CB
         JrSRFBB0tHlD9vrBz/eXCWgkOks/jDa5GGyzLbj+5LJv8Rn8MHUoYo2P3/+6BNPC6Xt/
         LVXi2o6RUpGwKaamFOntAcXmG6j0aoT2Uh36tkYoZcJX3dwob9F2U3RcJR8F2pnk7quV
         W8ajJLMDnaZeC3o1sBg600pmXhVq+9ioHCVSvJECIyRmsiwlfGK2a0mA3vOvaluZqF0O
         Y4L5GJ7VFTebZfpd4LLS/d+X6dksnA8RkDtPrdvJZ+fL1eFURLKCgxe5b804Sx7oULUW
         IBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqRjnYxbtyaWnz2GGQoz/3Xq2wcwDvpO8uvOy/YMv4c=;
        b=UoMh5kzMkKEnsSXPDXzf+2XDZcQdOfcQte/kaFAVOeccDe8b8NxmZpbY5TwsE8EVt3
         r3BJ1vtP790YVBXVgCWMiJsPWcu9heAyKS1xV+sjJ8Pl4+PzxaXEVKA2Jdg4js7fOKNb
         MHBc0BAMftxt/G1QnP4GzBBgbVkd/yguyI+dLGLNCSvWv1iP5JmUVfM0ptnIA1eEAe1R
         o/VXzAUahWwlTMnJzdRBDRCtUENY1bqnwkj6nyq7/nCkxhK7CrLuGgqiQ3gkBrhP+XgR
         vT+56AxT4yVXKarjmCYWRSgY2K41KiQvkZqgpfbbToWIc3pSEyZd+JQDaX5DCAeeARgY
         JTjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIdzRyD/T0lJ7AwqojnbOrPKGv8HuYN+zb4hitqTOHFdDG8nKZ
	GHnLZCc0tDsgAkYccGmeDh8=
X-Google-Smtp-Source: APXvYqxFtO3p1cfmOLDN9oYq17xmzobnfyMojkh0hosUbbSkrIh3pE0MK5yljmg+Peu81rdS6inIYw==
X-Received: by 2002:a81:de53:: with SMTP id o19mr41846357ywl.62.1579525616637;
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac4f:: with SMTP id r15ls5116828ybd.8.gmail; Mon, 20 Jan
 2020 05:06:56 -0800 (PST)
X-Received: by 2002:a25:c589:: with SMTP id v131mr37235434ybe.490.1579525616291;
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525616; cv=none;
        d=google.com; s=arc-20160816;
        b=fjXFgfyDvAkAZsfhUBfhUuWjGeaBacXRkg4PabQBntU9Rav/9B+R1vPlRzPoGZY/79
         3IAs4yLRpZKTJOvbDkM08Jv8SPAmg/aEy94RNRPQzuuRB3AbmZ2JSz/kC5O8SPYdcRyO
         gbyjYOMtZGEMaU+kfi65Dk9C6hgA/7OIgXgm4hZVaJQqL9mxUzCBkVeZKYi8U5fZtQQS
         sVu3v67c9iHY+91MJPS+be5VyH3OoSz6q5Se4xdzXViE095DTbk8k/ZSvF/Q7ibZ9jyX
         PqmU5eyOKwXaSTa3PSWHU/V93ot/K93CaR3uYRcSAmLVU+9W/4S+8VRJB6bVklMZJsdI
         +3Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=/9zEkQ3dl4Ltc93bkTjnji23CTbDAxQlILTg2tmiHFs=;
        b=Pn0ZdnjdhAkO0fumQvJVEkCbn5iEG1QvA+SD65esrP+LXYnCvimKlnMEycrCHK4tc4
         J3pJl0hjwrzueEfqv097loiaFx9ad3e/1YicgR9gCz9UOveRiR4FcrmTYsmYlGAsSC8Y
         EXAUTwIXuwCCTA5xCkLvBTwJXEFOuP0Ybur3ciGmslmyPVQ4vtrJJT7fF3ec7ETS7U+s
         x1dnewl/v2KEWXiA/VL1UY+6UMUVoJ1N0bI/rApqdGThTlzEhch+ipsj8w0/6JUTS/wO
         Jv0sAYZycGvIQhGekXpBQquycu5s+zt3zY3uP0ZJ/xEfRsPGMVyS0AkWX+4y1EBPOfat
         nUyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=J+zSVCCD;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id s64si1551371ywf.0.2020.01.20.05.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-z2OLlvWfMEmCv9YKdS72PA-1; Mon, 20 Jan 2020 08:06:54 -0500
Received: by mail-lj1-f200.google.com with SMTP id a19so7551039ljp.15
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:53 -0800 (PST)
X-Received: by 2002:a2e:7a13:: with SMTP id v19mr13537732ljc.43.1579525612597;
        Mon, 20 Jan 2020 05:06:52 -0800 (PST)
X-Received: by 2002:a2e:7a13:: with SMTP id v19mr13537712ljc.43.1579525612235;
        Mon, 20 Jan 2020 05:06:52 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id u9sm16734044lji.49.2020.01.20.05.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:51 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 567801804D8; Mon, 20 Jan 2020 14:06:50 +0100 (CET)
Subject: [PATCH bpf-next v5 09/11] tools/runqslower: Remove tools/lib/bpf from
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
Date: Mon, 20 Jan 2020 14:06:50 +0100
Message-ID: <157952561027.1683545.1976265477926794138.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: z2OLlvWfMEmCv9YKdS72PA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=J+zSVCCD;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
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
index b7b2230f807b..b90044caf270 100644
--- a/tools/bpf/runqslower/Makefile
+++ b/tools/bpf/runqslower/Makefile
@@ -6,7 +6,7 @@ LLVM_STRIP :=3D llvm-strip
 DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
 BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
 LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
-INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib) -I$(abspath ../../lib/bpf=
)
+INCLUDES :=3D -I$(OUTPUT) -I$(abspath ../../lib)
 CFLAGS :=3D -g -Wall
=20
 # Try to detect best kernel BTF source

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157952561027.1683545.1976265477926794138.stgit%40toke.dk.
