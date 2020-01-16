Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBC6HQHYQKGQEKZZMNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4517613DB61
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:21 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id t17sf8698431plr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 05:22:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579180940; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMa4VdUZ+7Dr/U4e4pxkzQYx1WcFn82sUch8okbEMQ7uVKp0CaZ0ni0/l4R9VE43r0
         vyzGVs39sewx4gqX8F7g4CCUiK78xNiOI9rOTZ2Gz1oIOjdxcipZ79q0X6kItSoxyYrk
         +S6ZjCAq0JsXrlk1+bOOObMC3I5+WugdGOLFmB/dCtdtvIwghJkCIeVyfTIvszSC+Km2
         m7unowcjskJh8zhnbE5SlOuzMLl3on+neRLdAfO9AEfpO5XyJSzXk53Jvz030Ix9DJeG
         j+dmLn6nl20jeyTPE56tG8wXq5YSa7FR3S+lwVt+Ta3wl6CoPqyygYeMk5r4YPYMJo9C
         fq5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=6zWifsJSXhTGRNFIEEgsQcl3eAq81g67IjYefcOwRao=;
        b=wcyFgRZ84M8sisT8OWN+tev6GKYIBpzjyFCLNVf9OEbhYIbtSxK0h8u7f+0jlVrrOq
         k6EbJMkn28lGOowK/lPaUzaH1CdE8KYJ4fHSIvXqVWHGWPPDJsC7IAqgo9IvdHFttOF8
         76Qvc99T3qSkPXNYvqyxtPqoazs4WMZvI3VomZXiL3D2hQsvzjldXQk9XoqvMQmRY2C4
         lHjx65eClCSNu+LI6UHgWcoZmf8E7qD7ll3kdOxLcf9m1LbEooeIa5YQMJPaLL7/vqsO
         hoQLXqRhKtVLC41na/pDO1ca26MVN/p6zBuHPEyUGwORddvlZfB+ZTKp4+h8YsnArThp
         3BMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="NbwsfX/P";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6zWifsJSXhTGRNFIEEgsQcl3eAq81g67IjYefcOwRao=;
        b=T3wOT0w2IQCbatdGeZwpK718rpFKCkAgOlmRdp5NEUWB/drn5uftAXZUjOVkcSgcdU
         HqObIjbG+rMobq08XhzD7j29NSurX8US9mFUgdO4rQCsrIqAxlMEzfzbGPt/17KG1wR4
         87VkfmjjUacLNaJz62OXsw6ZE6u6AAt9b4lqQUTN/xMAriggcfpIdOHORBOUJ8nAHuUX
         gsIVeWIWRC2VkiZqCn0EWZU0gD0j5fy3cLsXUxnoIuUsU8mwpDghKRErNtvagJ5mSwS/
         8Asgz+qAmJFuqK8xE088MfHhG2PItbfXYnruGrnd4VkCGlz2xhR++OaDgjzaU++kWbwy
         rqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6zWifsJSXhTGRNFIEEgsQcl3eAq81g67IjYefcOwRao=;
        b=k9W671s3N9kAroMxDAljH0pfUOs2R5xvOOxPuhYcVyW2ZrXpVHOgj8lBea3NmMAE/T
         ox2kLQbqPRGai85VPUKIOXY5G1JqNdh6xa2dCQ2h8DKpJvCajSzqzwVorNFAJ/U+i3/2
         4A+E/cGPtChxOwGktI3Mcwf3tpNFNIF2itJCYvGpVVITxGvx0zkfXZfpea0Z3kqgVWC2
         DakQ0RULBa52MpBQniZFYwTorG8OXallzzJMDqNHev1ZPzZCX4ppooDdjgcpSDZ1OVV/
         K8PYUMija8JMJL4fnidsnHO3Quc0ExMq1VdQo0wKj4A/iXNz4vXhlNzNYWTjpQST0GXM
         cH/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmktYQkerpDiMHyurgv3dpnleIgHSnwd0sK56r0zaWaraVyPNz
	E0WuAicdF4q2iraH4+imXD0=
X-Google-Smtp-Source: APXvYqyz0zgYecpM+GgSMU1oa6hOLpWqPc1whbnF4Tn9b1lbUxdeiSoQ/BagriWDnmu23NpCQwOJRQ==
X-Received: by 2002:a62:258:: with SMTP id 85mr38742944pfc.254.1579180939809;
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c5c:: with SMTP id 28ls5994503pgm.12.gmail; Thu, 16 Jan
 2020 05:22:19 -0800 (PST)
X-Received: by 2002:a65:4c06:: with SMTP id u6mr40094917pgq.412.1579180939366;
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579180939; cv=none;
        d=google.com; s=arc-20160816;
        b=UoChm96EQIBm4yb8UiZ+qLobxEjijlRL/0HRRZH64Jd/I0t3NUiqc4pARaBQlU8zIY
         eZ5NM8pNJiy4+/YHkRnwzTmUqW2gQREGtgFgMAGOXfrTBPKaQT3Qlfiu/WByB8SvCE0g
         JTL45xzzatUnu8GIlB0MVHIdEVKTJyYXCUO8Fdqz5s7KIoDgLyG88cBwQwrHtGBHEvxS
         TrZ99ubDP+NHMXDEnhjRbqq8PaM85mPpLtIXAvvmQtnbWU3+PPdCCS9IBCcEMJB8qVR/
         2EbCeasUCeDMN2pRs7THbDKFRCL4+Fj1scAABpNpM6lxqdX/p4XhDO33MmTVuC94rhBn
         nY+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=QtXWgYL/Jbfe74Yfrye2aGf4SllA3gGqdtfnCKKZXUw=;
        b=aar1FFu4kKi2lvhUj4e2KSpAWO/D89jEwcorE3wBgShlc4ZcwQGFSE1z9k/TGaIupy
         v6kazeckj9xhV/GU04QLMdHcxZ4XMm3RxWHGlAq5wyzCnkqg6SHDh9MbRzkJeTsBuczV
         ZGeqdChBLLY8iD3cvVWXfhB+VtC52uWGNv5lqQ/OZrNI0dYgrVLmpzEWqFpMcB7Fy5/M
         r6awKMC7KP2qj5loBDiyb9u3Cnq8IsBgTc/97c+vIxChhUhSBAUFUMwf8bYeTvL+Lg3y
         hJGuO+dYpwpHI4dYgRgmSJ3XcWWzRFXAe9yjyL21yb79kB6OuFCFuPXibNHcnl7k+EwT
         dl6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="NbwsfX/P";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id c24si60206pjr.2.2020.01.16.05.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:22:19 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-313-5C6ceV9SMc6JxJlfy5e3HQ-1; Thu, 16 Jan 2020 08:22:16 -0500
Received: by mail-lj1-f200.google.com with SMTP id b15so5138799ljp.7
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 05:22:15 -0800 (PST)
X-Received: by 2002:a2e:b007:: with SMTP id y7mr2286050ljk.215.1579180934267;
        Thu, 16 Jan 2020 05:22:14 -0800 (PST)
X-Received: by 2002:a2e:b007:: with SMTP id y7mr2286032ljk.215.1579180934124;
        Thu, 16 Jan 2020 05:22:14 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id f16sm10703433ljn.17.2020.01.16.05.22.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 05:22:13 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id D9E2F1804D7; Thu, 16 Jan 2020 14:22:12 +0100 (CET)
Subject: [PATCH bpf-next v3 01/11] samples/bpf: Don't try to remove user's
 homedir on clean
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
Date: Thu, 16 Jan 2020 14:22:12 +0100
Message-ID: <157918093278.1357254.3453847369567754938.stgit@toke.dk>
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 5C6ceV9SMc6JxJlfy5e3HQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="NbwsfX/P";
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

The 'clean' rule in the samples/bpf Makefile tries to remove backup
files (ending in ~). However, if no such files exist, it will instead try
to remove the user's home directory. While the attempt is mostly harmless,
it does lead to a somewhat scary warning like this:

rm: cannot remove '~': Is a directory

Fix this by using find instead of shell expansion to locate any actual
backup files that need to be removed.

Fixes: b62a796c109c ("samples/bpf: allow make to be run from samples/bpf/ d=
irectory")
Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
---
 samples/bpf/Makefile |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 5b89c0370f33..f86d713a17a5 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -254,7 +254,7 @@ all:
=20
 clean:
 	$(MAKE) -C ../../ M=3D$(CURDIR) clean
-	@rm -f *~
+	@find $(CURDIR) -type f -name '*~' -delete
=20
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't li=
ke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/157918093278.1357254.3453847369567754938.stgit%40toke.dk.
