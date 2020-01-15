Return-Path: <clang-built-linux+bncBD5NPEPNXUNRB6W37TYAKGQE5BAXZXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A1913C750
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 16:21:32 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id d6sf95483pjs.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 07:21:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579101690; cv=pass;
        d=google.com; s=arc-20160816;
        b=uPXS0D8ntGpBowuZ9ygwi/WWVtNlBa8r/JfYGNusPVpqqIPgZCmLPJDqQtMaaKxVvS
         ed2Rv1oeHrggssgF8TmzYwyKfrvTqooUz8EwCaArMs/SpcJfjB2GmxLXeI+dtO15QGkV
         83UYBrZC02tlxL3DazI0bOcyxroqO5z6Ayi2vCy8ZTryGQ2qUSuqk/LvWfEQU8lYu6Bb
         9TXe89NdwRotnfdyuzc9Reazr9p5vcGJiSNpVQVOuBWJ8lwgJcRc0Mrfq2cq7aR0iOnN
         Yyl2p2CuPOMbdChxXfQZddZqATiXkvnrJE9oiRlfkkVdgUwgcZ1/U+hFvylxape+0yH3
         z/FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=LQmqEbZHRRlQ/rc9QraVQRylVbwp1HPkzmicFjwtasY=;
        b=cutNXm8/b3RgCHVq5XFN+J400AVCvpQwnZvW+pIVwGHIjmkF/QH5bnS3fHdg5vTEt0
         7z8i0VYV6KWrL+qJUpTi86s6u3GmatRCn/rzQVvp8NyfBmWfiNu/lKxPLAEuedklUxf2
         RbsxWZQlK2Zfyr8Q6TWg3t+ljzkkPpj7sApywQU0zeCzt2Gf05wNXKP9QTvEVsW/zzos
         +ejZW0PfqmUpj30G6DdFL/N833rYdmEpL+8Xo5rQ60jJ/8mTkajbg1CflkwtSQJ2Xk9Y
         87BsEYIKy3/+YmmPJUAof6d3wW/td6irTfvwx3Bjz6elCRofU4iJ0IVUHpxlPoVaq8/K
         99Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KyBFHK4t;
       spf=pass (google.com: domain of brouer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LQmqEbZHRRlQ/rc9QraVQRylVbwp1HPkzmicFjwtasY=;
        b=kSxyqsXCOBVdsA6OBrv9MIW0DFwCrk7R5abQ7qLGpUiBU7YIoa9yhTXBOif9vESrfC
         Ube15YTSYw4eqprH6pXAiMjWwa5fjSbZcIh9WMfwWtTdT7tH1czFIn6R4iO8HicP78ZO
         r5PbQ+WvaSTmNiBRCRyuDnE8t8G4twkFHZlfLkNggz/WS8+vX0/1ROdRjPyrgfauA/+d
         h9LvNf+qSAc0NBAvU9ere+Sq6Sa3/RNrkZeMkgf9r1GdJ9k8xWUirLHoKOnZJeSJGEpQ
         vCUlmJW3BH8KRnepb8o/hVUFynVIQRNnD4gBTKDaQ4/F3e3adKo1Xx4o8I9SdjwOmQdQ
         SGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LQmqEbZHRRlQ/rc9QraVQRylVbwp1HPkzmicFjwtasY=;
        b=J8jPptQzl4WzcL6s46+SxEMzxyC+6AsZU5X2it29XUdhBerN21Mk37GxUWM81xSrtA
         cTEx0kY4Igzz2gQ0TsbxamMiMioxAZTL+GQ5rrq3mHMixWMIAM6peyrsqRw3SnyAMWVA
         Bn+DYVFDf1jlSNHJWNp/rqxV8rONQQAjcMK+reUeMCpFY+u+hYc6xs3eBrc1nTAefugB
         rCWTi/v8HJmMAHEdxE7e0FzkNM0/5i9phHdjfTxLgKOIBEI2bJNXRxGMFXZkM9wtuSFj
         it5LJv8+7Jry0VEtkffUH3XVIKrQJTcrNCt+dzaeX/3SH1zI+2bmtqNOoGNXY2g0ft1J
         Qvig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVddDL8szuS2x6Q6KQAGYtz3YaCcDKrjMz1o4vSOZQMoRSgJB3v
	TzMHFWi7qBNwV8848oBJifU=
X-Google-Smtp-Source: APXvYqz16QI0zWX8cXw9g3DiWyn0QVt0HCU77dBM0n80MVp3Fbq1N8jKy7zFPxs2w9HYjEOpUbwOzw==
X-Received: by 2002:aa7:9908:: with SMTP id z8mr30489947pff.68.1579101690747;
        Wed, 15 Jan 2020 07:21:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba8b:: with SMTP id k11ls5308466pls.13.gmail; Wed,
 15 Jan 2020 07:21:30 -0800 (PST)
X-Received: by 2002:a17:90a:f88:: with SMTP id 8mr352946pjz.72.1579101690251;
        Wed, 15 Jan 2020 07:21:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579101690; cv=none;
        d=google.com; s=arc-20160816;
        b=t6S/wd7hMI1mIeJDdTx17W+ZVV6SRNQyVi9WkfLHJyEzbloKqgoy4itNyZ5I7/ChsY
         IcoGblduyk75QH56St618dd3RQJ0pYkA6TBXdMeYpUxIyWm+HG774NQVxyeO3L09gYsf
         0+uShmEtWtALUyvakg+U+LbH3PJkuZBbSL9cZ7xjhxr/oN+rd0CgSBiHB3C4TT5ER7aB
         ac3f60Msscv9blc6IVoqLWa1eqJOxu7Qk7+aKMBqPMtOoVDrOofT298j9X6kPFdzsAuy
         eg2noBvoBc1qgonYM5jLMHvJqLuvVk/+bMD86Pru7otUEBpV/2y1kJ27QkIjg0vSALpt
         MYnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zTA4sx+gNFDojMXAsEt7yLk4iNXaE/P+y/1BDCCWUNA=;
        b=T9B70IzhPUw98U82/ffmFkhq+NoKRoOWWO2dKdQzJ2ildVrk4idiOeyUtcppbSz2MK
         PIFhoyiNn06czFO4jm4UUUOWDJo5jwvgXl4ouP/VY9DbgNKX2fKe24AqCR/gvtwwyf7c
         3JNi9TpNv6P/UL+0U9RD7JmtYfUnC+GcwZYWGlbdlNgzVmDFNa1eThiW67HJTo4BkYgn
         Ow8SllcxGn8qZ+imxMXyrLEgLW8TrIXsDFqpslG3MaokRtMQGF9IFXOJWckamsyv9yPB
         iyVkZmKseovVwjXSC4anldWAvtQQj2xNvxUQjp1j2WfCb2T/pu7jqUyWB78k/g7CBlWI
         fh6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KyBFHK4t;
       spf=pass (google.com: domain of brouer@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id n20si821764pgl.1.2020.01.15.07.21.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 07:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of brouer@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-171-YiC0dQjHOfKz--2joi_dgQ-1; Wed, 15 Jan 2020 10:21:25 -0500
X-MC-Unique: YiC0dQjHOfKz--2joi_dgQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A3A71136DFF;
	Wed, 15 Jan 2020 15:21:19 +0000 (UTC)
Received: from carbon (ovpn-200-25.brq.redhat.com [10.40.200.25])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D09DE196AE;
	Wed, 15 Jan 2020 15:21:07 +0000 (UTC)
Date: Wed, 15 Jan 2020 16:21:05 +0100
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
Subject: Re: [PATCH bpf-next v2 01/10] samples/bpf: Don't try to remove
 user's homedir on clean
Message-ID: <20200115162105.51c2847a@carbon>
In-Reply-To: <157909756981.1192265.5504476164632952530.stgit@toke.dk>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk>
	<157909756981.1192265.5504476164632952530.stgit@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: brouer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KyBFHK4t;
       spf=pass (google.com: domain of brouer@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=brouer@redhat.com;
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

On Wed, 15 Jan 2020 15:12:49 +0100
Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:

> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>=20
> The 'clean' rule in the samples/bpf Makefile tries to remove backup
> files (ending in ~). However, if no such files exist, it will instead try
> to remove the user's home directory. While the attempt is mostly harmless=
,
> it does lead to a somewhat scary warning like this:
>=20
> rm: cannot remove '~': Is a directory
>=20
> Fix this by using find instead of shell expansion to locate any actual
> backup files that need to be removed.
>=20
> Fixes: b62a796c109c ("samples/bpf: allow make to be run from samples/bpf/=
 directory")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

Kind of scary make clean command!

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>


> ---
>  samples/bpf/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 5b89c0370f33..f86d713a17a5 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -254,7 +254,7 @@ all:
> =20
>  clean:
>  	$(MAKE) -C ../../ M=3D$(CURDIR) clean
> -	@rm -f *~
> +	@find $(CURDIR) -type f -name '*~' -delete


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
clang-built-linux/20200115162105.51c2847a%40carbon.
