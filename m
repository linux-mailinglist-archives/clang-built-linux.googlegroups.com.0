Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBZ6LS3YQKGQENL5S5TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 96234142B7D
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:06:48 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id j10sf20802912qvi.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 05:06:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579525607; cv=pass;
        d=google.com; s=arc-20160816;
        b=LtCWhLpkBobRzU7bvQIgx67tcA0+tlzFKwzASgQbXrF8SDe9xOPxMqvQJWoPzsA+A3
         kkykMtS0NiwZOIqkfWzmrwvoMkTpC62Rp7k128Ppo+wbiADY9NeGLk/uC+1P22V3CFPf
         LmE3tYRSqfkV41+31KLBr3+vwfYo8b7oX7TNWK7/KYDBrDLT+xuTmCTEdLkqU3sUaNQQ
         rMQ/rKeBFpX+9Q7AGxuGM9DOaw6EndT3+TI6pOXDy8rnvEwK8CxkIYPO+VJG2AZhedgm
         veDA/j6x8THnoALVdP/aWmkfV2lhcFkWYsHcdRUFUIxg6pSf2uBBbmJcIspqZdqB9owd
         /l3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:message-id:date:cc
         :to:from:subject:sender:dkim-signature;
        bh=X3xTp2QPi7II85jdycOQQGAOHnV06BBLHID9cgmbIio=;
        b=FFA8iL/ufM2pXDiMpM5Wb2J5N6qHj0QWtf0PhETTE0COb+l99N57psGcO9lQpZKFZR
         HKHVwZrJmf4jC0FEALt+w/zYrR0yIf0Ma5srGKEdrFycBb/luvb16pazQ/BngMyE5l8Z
         6TylhDm/z43rCOohs0tOkrx1HiWkNTApnrpQbC4yrPI7cXieG2oQstHJgsPqNPhuhZMb
         EVChHqc2DhjmpKqRfIr9RxLVRZDKXtBsUXI25IfJSvGwzHkMfVl0yqLDHh6TM4TzsCpJ
         05HKz8DrmnMZfia43BCad+rnv+8DYm0ik5agf/ke4OwMdUhm9VgRX3iPj7zcyf5S8KgK
         eb4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="bZIF/wct";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:date:message-id:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X3xTp2QPi7II85jdycOQQGAOHnV06BBLHID9cgmbIio=;
        b=Z19p1yNBaxbH15Uvr5q8rtxtCpSB0bky7VPgqEjAAxuiyEPgxCxwUEAlQPiOOl7qLy
         5oV053DdBRXq3DZ0JD7kldOlacsCaSTruCfVoOBkcPjKlyqeqryxebCAqsHG/vRJ9uUF
         77DC/uPBRZB1ou53O/LCfLo5cAzRATKnT3HCtZKQe/gIb6H8DE9gXibR/F//qsRjb4PZ
         vWymYfON84p+edo1qwaYH+nL18v/MQjMhIc1cNraMq+j3adn7gFYp/DRMurlOEnVHBlf
         F7VbHPZLoe/vJr77e9p9Y5aidq1spa8qCmjaHGGvzflo7xoVAeEevVgN3Ytr+Beh2MqB
         ekLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3xTp2QPi7II85jdycOQQGAOHnV06BBLHID9cgmbIio=;
        b=hKm4oSmsCblXcibvG2UsO6lqtC9VktNrXTYbKxG0s5BoVGCwXErr8FMXy7idD0G7EK
         5Rez12xXBWHs5MfKRiSVJS5IoBwtv6zZaVA3kktlN4xKCFfFky9QfZVHv9yLDnX5BpCr
         H8k07pVfb6p4AEGOsvPT7m0Rn1fZbLzSyLKa+AJR0cuVSPBBvBNtshNboyVS/tkgDlXs
         FThla4LkeNBmVlUkcxC3hhU4SeRqZ0UULOgSD+T/H1leksUrNGpu9SZQUdIyagjEGusT
         0W3x4lhqOjFg8Nwie1y7SvwfwNXsd6+3wmn2tQ5B0AaZHQaY9gvqIl8DLOn7ncNrnzQS
         ZuDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLzB2jmewNoAqoNiYDEH/HDFyJ0ZgKsvaNCNVYGJybQOALnOKU
	D7kQklyF45jzI+fVzY65xlM=
X-Google-Smtp-Source: APXvYqwuqIXSQY9TwNf8fFOq/0XTMY8s6G8BK/NSed1e+htVn5yNSsmRvBEd/Yc+jTG4SAYwxdP6uw==
X-Received: by 2002:ae9:f442:: with SMTP id z2mr46812011qkl.130.1579525607429;
        Mon, 20 Jan 2020 05:06:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1246:: with SMTP id a6ls9440689qkl.5.gmail; Mon, 20
 Jan 2020 05:06:47 -0800 (PST)
X-Received: by 2002:a05:620a:1472:: with SMTP id j18mr52420609qkl.184.1579525607090;
        Mon, 20 Jan 2020 05:06:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579525607; cv=none;
        d=google.com; s=arc-20160816;
        b=TkwgHVBLadBW8jF0L+a/kBBWcq6xevRLVoDJMg67qB3x7BSeiaXWON8UJXuoS7xii8
         HlUcRAZeJY1dru0VtVNf3L1PX7Lj0vifxcRZiBT1UpZupuiYE3TqPSrN6dJu9I6lb2ku
         ZFONV9t/FcZuC4eb05B4LSKDy8bJfty4CdCN/H321XSOTOi6aGPlX1qHz+pk0LD1cMEV
         G4ETsqvILvDjh59B67WyqRy4CmNiLHjHqb4+DWL8JHIgnUAwK4h3No09pMUFZPtAeR1/
         fKm24rKmnG2/R8ov9eU3rRRjpVk5eibciWF+s25gppDv7TYV/TIv0Le4ZgOkNACSsMyQ
         T9Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:cc:to:from:subject:dkim-signature;
        bh=QtXWgYL/Jbfe74Yfrye2aGf4SllA3gGqdtfnCKKZXUw=;
        b=AwVLjS4086JGvQ/U6Zh6NBVhNMvPyxiWa3nABFm7WYJGBroTuMHNJVT4c9JEwZAb5E
         7l1HEBeBnoQShpHW9wsoJQCbidUX5SVS2SRKKCr8fh6yFlKQ1QWgf7G0Ms4ovV/JrirU
         0+V1Ay4k2mTf50JzvjzYfAuzOzf7HT0L6k6BP24Slur7wWFNykKjDUFjbxXnH8f8zs2M
         WjU/EUeF/2c6WSyk5iYKFVsubWTZjrWgxkw8ZKxrg6RO/4sugKf348UwNiJxMtek9pwp
         d94DnuzgJRt75uyMwUMUybJt5TYATKm/YK/tUpo/4kdaSKpyJQtnz/U062XJnFMJ/H7t
         tPcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="bZIF/wct";
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id f8si1239236qkl.0.2020.01.20.05.06.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 05:06:47 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-kE01DA7aNKehYneqSnhNGA-1; Mon, 20 Jan 2020 08:06:45 -0500
Received: by mail-lf1-f71.google.com with SMTP id a11so6206695lff.12
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 05:06:45 -0800 (PST)
X-Received: by 2002:a2e:9015:: with SMTP id h21mr13901704ljg.69.1579525603448;
        Mon, 20 Jan 2020 05:06:43 -0800 (PST)
X-Received: by 2002:a2e:9015:: with SMTP id h21mr13901661ljg.69.1579525603114;
        Mon, 20 Jan 2020 05:06:43 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id z5sm16825740lji.40.2020.01.20.05.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 05:06:42 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 59E971804D7; Mon, 20 Jan 2020 14:06:41 +0100 (CET)
Subject: [PATCH bpf-next v5 01/11] samples/bpf: Don't try to remove user's
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
Date: Mon, 20 Jan 2020 14:06:41 +0100
Message-ID: <157952560126.1683545.7273054725976032511.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: kE01DA7aNKehYneqSnhNGA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="bZIF/wct";
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
clang-built-linux/157952560126.1683545.7273054725976032511.stgit%40toke.dk.
