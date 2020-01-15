Return-Path: <clang-built-linux+bncBD5NPEPNXUNRBYW27TYAKGQE5VUQVTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D21DB13C738
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 16:18:59 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id 199sf19810312ywe.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 07:18:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579101539; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6l2IPxKcNL9fy9XuxHmhOuAVTUb39OEbywIofPY8V1IJ5xJG7E9JBD7N9B8aOr4cF
         vSSgcmt+Dt26+aU+d7EmA7X+w6O36MAd2zXLxj1Xepc/SJ14dwMoAuFY2kkn1b5+ieYa
         aYDBc1P7T2Stn50FOsLE2ZHhQ8BFYLAb5q3McTZz1vSbA3VtiNWjeMprtX5e1DXteyuJ
         f87U0sW+jDUUzxufhgpAF0JHJxu78Bb2qpPbdC16FulnmL2YybSS0XlAg0NPcBRk3hoX
         ZhlsAVliikh001BKNgC+MuQp+d8IygthJwx6ETYhCryM0PrOVUta2kISp24NVTCKYkU/
         AJng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=ucCepWuUbW31YiDu+PFFAYcaayUTewsUSIXA6O+7CHY=;
        b=VMEKrUIjUJNh7ma6XQWZDSlXyV3Mgvuag01AvaxPhUTualS5VtEDqadyvAVQC6lwQk
         1xzPljdik9/MVU/YSDA6iyREEalR9iIk5htc0DAtjzBuU6w9pzobjLmmsBe3TQZHK9Ee
         pWCnQDuNb7nRYAaXUeQ87Q/KyT5WJZapjuKhlCoRuWJHfx+m95EAdc89n+rDVWyjWVJu
         yTpZApkOoDGoaQIVxC6o98weotGt4WkB7ekwOscopgz3LV5naOLNIX8jIBI1LSFGOEoU
         Ap1CjIwQbZ0L6OGeT4N2EFHq+Y8uYDsgMyVb+7K7yzySyYnPklYPyn0nF/PSi2+g36bQ
         klYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F69sbxVl;
       spf=pass (google.com: domain of brouer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ucCepWuUbW31YiDu+PFFAYcaayUTewsUSIXA6O+7CHY=;
        b=CRKEhbjDdSSKxE8XX71QH5ieIFYakZ1GPEoyEmjgZgsg+9Wb+cgwNNWmXycyEWsXN5
         BVQw50KUPphG+UvS6hJ5vAcqWqgThe3FcY6wwArA/h+0eZGauWMEeTQPiydsr+YdZxqk
         eulL+orDVAqhNoHjp7xJJPybR7mTAn6We7dxcGbbN0TIYzNl79hQnx71sodQB9kVbaqB
         VDXiZtS20A0YoHwbSk71dy0/pbtncENQHQDauL2p+Jwi5FmFd3eXvbDTcXLaWWHKRhlq
         t2VMJQ64To+GZpkP0sMm8zkLpp3nRuiWuomyfDsHa38pfeCDRtBUa2yT4+dkhPdOWFH8
         3F3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ucCepWuUbW31YiDu+PFFAYcaayUTewsUSIXA6O+7CHY=;
        b=uHlWZWetgjopZDtlb8bX7RC1sGkwdFvBM3wniJ5m7uVyUEDFFhEb6bGWb48iT0x8vM
         ccTrB5c32qpRxmGIypD/E7iO3QDXIURWbu7f/G1E1oSnXA0lPGVhZLek0qR6SSfkD9MB
         pqmbSQK3Dmnrr45/QkdP0IrQ5U3eRSEx6zIdJAToqACOybxXhJkaqJ6zAePXC9dMbSNi
         sr0qwM33RJ7U8xY7I7EEhldX9JdG13dg2h0yaOujq/ayTBbKDMiTc7k+son3WeabI3YM
         8BEBXhbmIxaKt9ksElgfwgzLhoMy0jCmi/9Xdbxqw3AvVU3Ecl/ySNbkajSN8oDUZRRP
         +rqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWk2SEw+0UV4l7oToCvltepPDnijDsU0JFD9qW2Gapde91eVKc
	OeJ5nZ/HV4YinTj/z2ohjdo=
X-Google-Smtp-Source: APXvYqxKrGs2U9862AsV2yFYrMNVA3yE7QVXqehu8d1zettlbYqILRgDlc4+OyWVpTxxm/DH1if9WA==
X-Received: by 2002:a25:ca51:: with SMTP id a78mr20592180ybg.42.1579101538772;
        Wed, 15 Jan 2020 07:18:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:2f58:: with SMTP id v85ls3033553ywv.11.gmail; Wed, 15
 Jan 2020 07:18:58 -0800 (PST)
X-Received: by 2002:a0d:d954:: with SMTP id b81mr22968425ywe.123.1579101538415;
        Wed, 15 Jan 2020 07:18:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579101538; cv=none;
        d=google.com; s=arc-20160816;
        b=lYXSU8wqeqIZlDy6o05QtqF9dMNLGs6dLjzywhS67E3tm19pbYgu/cK9HXBQIUVKh/
         lVG3PIgTfFv2udAnjNmflGIl4Vykob0q7afjUgQl3leafOKw27qKKlc5Hv5BvuLZU8Iy
         pm+vduN9KnhNh1HT1iOHE0X8Xjk3+/T5OUz7XaTp8FrYTRQx3CBj3kCawrZ32VVYcVzQ
         jhv5jxulwe2jYrwblZfb256xPJSjkODqObvxnds/PjXMAIOTbLQSD2O9f9ANbfov5KOD
         fpHXka4k1qJKqXKdJxfLCsRL92HpRCPdRi5UqV6M96Y15dYAWXZ7k04QfvZNgKgZaGeK
         TWZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=O28pugdE3ji8Z7d58Dp1KejMSWnJ7EsYgUczW6n+9NY=;
        b=OgQsWo1T0pCZmiNJXWUQ8HO8tQhLu4kON9LnFuVxuctGe7Z6AEp4MKILuo4Rbrg8MG
         oZNJu4OaAcaUg6mUzX8amoH6I4+qi6mbH/94EnPreeQf7aQ6Ca/dqZM1tmi61VbmIMTT
         b1tbgETwLsMlEgPx44c2RRuEZo03Goo4jpYYWMRzWdKtztK1fZy5xP9GMbmKamvERX+D
         R7MuZSF9CDCzWJx743Cp4/oSIkTn1cS3ZT6rpOqN5rPYFKSdLxVbyKN/a5yGLiOHF4eU
         lwgV3M4FZR8sOHPlZgkcblIxjTEhfoH1JSp2G2lT9Y6XQAxsr/sYzoU/h01zNKyHG82K
         8oeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F69sbxVl;
       spf=pass (google.com: domain of brouer@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id n67si1021025ywd.3.2020.01.15.07.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 07:18:58 -0800 (PST)
Received-SPF: pass (google.com: domain of brouer@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-q6bYgGs4Pb6_ldebLaXl3g-1; Wed, 15 Jan 2020 10:18:54 -0500
X-MC-Unique: q6bYgGs4Pb6_ldebLaXl3g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F20318F8A0F;
	Wed, 15 Jan 2020 15:18:49 +0000 (UTC)
Received: from carbon (ovpn-200-25.brq.redhat.com [10.40.200.25])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1E6A66842;
	Wed, 15 Jan 2020 15:18:26 +0000 (UTC)
Date: Wed, 15 Jan 2020 16:18:25 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko
 <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <jakub.kicinski@netronome.com>, John Fastabend <john.fastabend@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>,
 netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org,
 clang-built-linux@googlegroups.com, brouer@redhat.com
Subject: Re: [PATCH bpf-next v2 07/10] samples/bpf: Use consistent include
 paths for libbpf
Message-ID: <20200115161825.351ebf23@carbon>
In-Reply-To: <157909757639.1192265.16930011370158657444.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
	<157909757639.1192265.16930011370158657444.stgit@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: brouer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=F69sbxVl;
       spf=pass (google.com: domain of brouer@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
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

On Wed, 15 Jan 2020 15:12:56 +0100
Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:

> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>=20
> Fix all files in samples/bpf to include libbpf header files with the bpf/
> prefix, to be consistent with external users of the library. Also ensure
> that all includes of exported libbpf header files (those that are exporte=
d
> on 'make install' of the library) use bracketed includes instead of quote=
d.
>=20
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its include, remove tools/lib/bpf from the include path entirel=
y,
> and use tools/lib instead.
>=20
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

I like this change. Maybe the reason so many samples/bpf/ files
still included "libbpf.h" was that once-upon-a-time we had a "eBPF mini
library" in the file samples/bpf/libbpf.h that were included.

The file was removed/renamed in:
 https://git.kernel.org/torvalds/c/8d93045077ae

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

--=20
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200115161825.351ebf23%40carbon.
