Return-Path: <clang-built-linux+bncBCGYFYHOWEFRB2N37TYAKGQECK7BTRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F6F13C50E
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 15:12:59 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id j16sf10823655qkk.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 06:12:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579097578; cv=pass;
        d=google.com; s=arc-20160816;
        b=kOSlZ5+bmBQSyg5mkCSSoWeeLV/WmbjTvGbkUv4gUsJDFDs1XVtrdJwwF9dygEpzxl
         pIX9s5rr6maX/GIJL7GDFd9DIDUBdQo6PkDRgWo+0izKuHO4ZueVu3Diwc0gNp+EwkzZ
         6MqbWrCPLAwTnURQDx+gEzgUmo8zH25lW/kK15QiF0oVP5YawfEJoPG3jyfY4J+n6Q4H
         Csgu/h8jGNICMoPO+T0FpedfUytm1vvVPg9KelKx/jTNXUUsG50m558rNtJfDU8H3ZK9
         NkKz3fQDLr+55LxnLVe3Y5W1ZMhZ1vMxrypMRI4Jvk7RB0Cpul0iGX1oKi1UHbVxzSqf
         Cayw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=m6N4iN6QxVnSAYcyWFcyLCi0gd4Ee5LxzgH16BUA7Zc=;
        b=KIstccrCVP1BgD3zOdvFkTuxikxBoYcCAB5u8XsbZZ7iqrP41DYW7+rP3YSGOKgFNt
         fiR9C1NWIvqoaXme8RptlhxvPZX1RJ0cVx36X6F64HKZSsqECgNszMQXzO62LdAG9XeC
         c6y4elNpzXl6ln0A/r2eGh8h4hOQx0SZxtlEl4Qes1R/P4oT946Qtp4xvAgf/FAzwMpL
         kD9SXLJDH/9fAvGUzzx7l45j/5+DZiBxMyRN2qdUV3ThHqJXrXYivXychaqKfbFWOoj4
         Gu5LFNKzZg4qkQSvmRYdUnGfxY3ktDVoYkykhbRb3K3gmWJeBo1CW8WhlDpN82hyL9kE
         4qpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=O3PUfD0F;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m6N4iN6QxVnSAYcyWFcyLCi0gd4Ee5LxzgH16BUA7Zc=;
        b=CtEGul3lNaf7iWk/TSTxHojmf4s9GoYA9hjlO1m3TC3fyJwObHoSKUvnUTa+juv9r5
         oZr5rCshhSRLYFiHCZGTzqPzIF2/MqB4aF68LnN23rZ3Lc9KfQx/odWrzmu9O5yOoyr6
         RKtGxhI/2dvVMJNLfROf/QOQqu68mrJ2qI/XwLaoW0XzsVKcNpPOX744IFjiL2cpPk1V
         GkWeV9YWJZwQthCQA5XFegcP2tOqyqR8XKBmuYYDlnTBC1Q0V3ya60nXJjsPN/Y7gXN2
         6a+WC+TauLZ/qbjiRZ+M8e4b2lP3maxbPNuUeSgK54JYrZhAVL784Sr/OG8bVvh94uEW
         O/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m6N4iN6QxVnSAYcyWFcyLCi0gd4Ee5LxzgH16BUA7Zc=;
        b=tE7eG79t1njw3MIyhBMZXnxFKLZm5g6j8siC2RCgVaeUVbi8Mxne6hagqi62OhS058
         /p3V7jkdupDxAl00gmLvzC+fcWs/vLCy/JsD4NVM6JIHeXwgI1OMDFTKNHyYqlf5k486
         EA9CrxUN4HzoD+OGeQcyBVdCQMH8IDvEbEG+R1zOOo3DqqJdOmfz2jrzHVFq7sLImAUd
         CPmPWitsB/L9tXOXe8Uc1DeBVngkGXQQ3dzw4KB1FcrwdUWLD7VJMvweN0bpsYhmxGNK
         IuXoDw44jW9SyAQIHt0GDfYUWUIQMjz7uCJQXo/GIJiXhzcjr/xSNFt1NV3tIO0Crhts
         dh+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmNkaLRJcxd7blf+71/5w1+fmjoVRLrMF89jS5QakumldIoEmJ
	z9kYJWRWlnZV7DcEmHRUwo4=
X-Google-Smtp-Source: APXvYqz/pIWsBanGaa37TBaRWQaFiGiFM5UNjB25RouxHQPNItBtNTj8G7gDv27KPFex/8b7I7m7rQ==
X-Received: by 2002:a37:2d41:: with SMTP id t62mr22569684qkh.255.1579097578041;
        Wed, 15 Jan 2020 06:12:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls4188854qka.10.gmail; Wed, 15
 Jan 2020 06:12:57 -0800 (PST)
X-Received: by 2002:a37:9f57:: with SMTP id i84mr27658556qke.29.1579097576413;
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579097576; cv=none;
        d=google.com; s=arc-20160816;
        b=hTZlWcUFJIptpAtC2LUU59Hr4poGUVYNvVAsW4Dn8lLS9JhHzJVKFVuxNs5o1ei48L
         yHsQ8FU5ipTKJyn07GlTFbVm8SzCt4/kkXhkLWLMs5LEHIOBFSKzeudvuSxLTbqk6dzH
         Z52DZc9zclGv7XKK4oUQRGQqR2jkVcDi6gLpIV+bN40MQWzrluuQskKb6Qo7mpy/rJWQ
         5wcakOWKJMTqryWX5jgheUT4+yc4aU123tqgQWKQALQ5TQz0e8tYfy3f8RNM7pO5NuTI
         vfVzpwA73AHdbJIvHPCg2QSL6CI7+FiCJ0B2vbC+iMf18wagx6qLkfBJ+6yDfO7nqBPF
         Vm2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=2C+NadkXC2fSjziTHXe5XUxMM0H+uZv5ywYTA4I1XGg=;
        b=kYFTyvyBcgHccB4yo1MPnYEj5B2E6NxhQw7IrA9OPLhtvCQIenWXxz499VR5HPcd0P
         EvSpSYxcVkDroCmNIa73qJ5i7vK9ETf+IuY+2zmjLj6CWaSCDs6ffOt3Vp2TLe6fMiP/
         89FQFFQLfPeTICHMZa6XUlrCZRjPbMC9Vp4ZmzuPI8VGQCNoIyP12tZ17kIZ93aW4bYx
         7K/2igNexV6Pmb0jgvSM1hmxQznjkdgwTEescinpr9pt1SdRbf5faFgTjXvx03kpccA+
         DQcVxHM8NsxFctSxTXHQGjbP+k4qu3iz+5z7ZfhgWuWzE3x4OO68SDS72mRvT3K7D/K0
         i52A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=O3PUfD0F;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id g2si825927qtv.3.2020.01.15.06.12.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 06:12:56 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-JLIn1a9MNIuSC782ryRjkA-1; Wed, 15 Jan 2020 09:12:53 -0500
Received: by mail-lj1-f199.google.com with SMTP id a19so4190752ljp.15
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 06:12:53 -0800 (PST)
X-Received: by 2002:a05:651c:2c7:: with SMTP id f7mr1780353ljo.125.1579097571918;
        Wed, 15 Jan 2020 06:12:51 -0800 (PST)
X-Received: by 2002:a05:651c:2c7:: with SMTP id f7mr1780322ljo.125.1579097571478;
        Wed, 15 Jan 2020 06:12:51 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id m21sm8930987lfh.53.2020.01.15.06.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 06:12:50 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id D8D8E1804D7; Wed, 15 Jan 2020 15:12:49 +0100 (CET)
Subject: [PATCH bpf-next v2 01/10] samples/bpf: Don't try to remove user's
 homedir on clean
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
Date: Wed, 15 Jan 2020 15:12:49 +0100
Message-ID: <157909756981.1192265.5504476164632952530.stgit@toke.dk>
In-Reply-To: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: JLIn1a9MNIuSC782ryRjkA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=O3PUfD0F;
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

The 'clean' rule in the samples/bpf Makefile tries to remove backup
files (ending in ~). However, if no such files exist, it will instead try
to remove the user's home directory. While the attempt is mostly harmless,
it does lead to a somewhat scary warning like this:

rm: cannot remove '~': Is a directory

Fix this by using find instead of shell expansion to locate any actual
backup files that need to be removed.

Fixes: b62a796c109c ("samples/bpf: allow make to be run from samples/bpf/ d=
irectory")
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
clang-built-linux/157909756981.1192265.5504476164632952530.stgit%40toke.dk.
