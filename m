Return-Path: <clang-built-linux+bncBD5NPEPNXUNRBB7OQXYQKGQEJL7KURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BA41405AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 09:57:45 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id e10sf15088789qvq.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 00:57:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579251463; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOFJl5YUr+alj0XsE1xSN1NzODsMHb+go2M3ugaNv7/vZpS1t7K3ioPMtN5pCnObVD
         X7dFluaQocwukfZ+f1v0xG5jboihuAUXm2dtbpVw5coHpWVAzwkDHPiuc87zTn2MULa4
         EXBimV8bYwdhNDvRF920hSfUQ2Prwzi3Yt/u+/Ik2W4sXIIysjj/JAdxYeaaaGMy7uOJ
         VhIaHeXLEwjUQsXSya8J22z9MiJ3MyUvErc+u+a35SY0wlYEBVfHANvdfcS3AhptnutR
         acbOkAFKJZKD0h6lh4fmv29p8MKx4qWYG7BPZnZT/KWzgEQkOrpizkR2G6/iF37RUAV4
         ODmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=Tar/D4JVG9w60hmX22nxuLd6y3jzrCLHswdTbvn6Jyc=;
        b=qOn8lBdwUn20ZvH6VXLhtWTMQxCr2fjZcBCzf5sTGDFJZvVbaeK5znefeI6MX9h4L7
         F8y/bvLzaoWQMOOx9e1xF06lp3p+xCNvNWYlpZ4XPVFUQia7F6iNSbGXInVtiEw0yI3d
         CgDxNEQ3szo3VPdfADmxDWzhec9LwOOFcVCdWF7wDpJV5galitb9d6ZxbosALECcxamb
         G3CFRBUbztHtFeN3ovJKTGurIxXUVZ3Mon7Nc+Sr98v9LDV3x8+VLuvZEWYiMQTW3GbJ
         OX2vrMPW4Rb525L0J6c7sB6dZffwjBbvJ3rhaKYtqQ0mmJ4KBgoK7xgYJ7cl/RANzH16
         j2Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hpa1waJg;
       spf=pass (google.com: domain of brouer@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tar/D4JVG9w60hmX22nxuLd6y3jzrCLHswdTbvn6Jyc=;
        b=OZCC52VMN+BhZHcIGEobZAuFFzXCO/JIehbtKHkd1Y3KrBDQWnOUKGsN2L+CRO4RDw
         UdUvCD4lwck+KBD3LorZAiVJrvmeWcHs4kYgzWfmCsyQQ2rk9TcsoeOgYK01b+U2dwEQ
         lKnmeEWw3Fq94acXAW+Tb/VLwzRqUtwz1IdTmaBTVuhlBH3zLPtmGWmm41/cqb4xZE/F
         z9UP9hl2QRe8lsAOegW+oyhNP483XQzYNvKPh8pcbVbrWIPvw2MMRRg1YutnLUQIrbXF
         mwDYoLrho/7TPZZs8EJjlCwqI1gKYuu7DY41QpN39KZgECl9OGjqTout38ej3aF0Dl4Z
         SMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tar/D4JVG9w60hmX22nxuLd6y3jzrCLHswdTbvn6Jyc=;
        b=FPoJPN6ViLzCwpQjQcdNQFzZDAV6uEDvVmPwXqT4kshtTVn7jGn8IqnWPlqp2tK6JZ
         5Iob6bWFqFhGREQ4GQT8hDkjM/4FczA0bDT5d0fEOjIvxM+1xjnk6KDRTit17XSR13e0
         Yy2LaeIz/CXwh9qH7o6wz15cBoGMNCLWQA64Dx+JdqT/5deS21/OCKbSrPAjxlUlW06D
         kDc2e30Sqh04ZBMoDtjWxFSCDQXfpmmhlqOMfX6ZBjP5Szk37w9vbw1K2oaW51XFtoQS
         R+GRxSQqyp2nr+X37bcRbmw9s5YgGzGVgOHprUOqn3SQV/VGscaJgA0VqMCNLK9LyKF2
         uHUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWItc2mhS/Kzdu+baWxIsjvPcv1j0Sb7+82gIyLf1VKIhL5/yjm
	cwUTw8CKBAmf84mpqwiG7Mc=
X-Google-Smtp-Source: APXvYqxUgzZCdwXfIsYBDUKux24eO5iumAprYZA3N/uh+yOBQzyXoHHMy1+5k1R/NFw9H6SebFYLhg==
X-Received: by 2002:a05:620a:13e3:: with SMTP id h3mr32091432qkl.319.1579251463375;
        Fri, 17 Jan 2020 00:57:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:4f0:: with SMTP id cl16ls3454487qvb.11.gmail; Fri,
 17 Jan 2020 00:57:43 -0800 (PST)
X-Received: by 2002:a05:6214:1923:: with SMTP id es3mr6907471qvb.49.1579251463005;
        Fri, 17 Jan 2020 00:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579251463; cv=none;
        d=google.com; s=arc-20160816;
        b=MZAR56EwXTFt783CJkoBEaube7GBTu4YVAhP/jf5ruBFlLWPxMtU3gdSvLh0iAdpny
         leN7U8Fw5RBYxb2GPLgF62XpHXTrU7xSLYGG3qTtZ+wk7VViO8mMOyamxtTGSzvKfhmm
         ALUv/siiLFSQqdIqfGiKUY/lGkrGwBglsU3H2n7LweGNHvhjxGHpJsRCnxBSzcN8U/gh
         orXrEH4wj8pRSXAAIwMc3k3nFsQNCCbIHihBNcYyONMyE9TdbzuSLqehzVqvndpByFI1
         Rq7brJkwzthxdnZ//ZnC99LoPNAhJqAGYIO3Hte5eNJG5SAY3tONgcDBg+qpqAGqJSQy
         Z07g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5wGVm7vGifojmQs18rmKxAMnZ1ofaqDbsZAnJ2KgVM8=;
        b=WwA+x7TXfgsC5uYvUQc9CRVsNSkHWRxhXYZVdH0DtBC2mTkoFa/sLgJuMDY9BKrjYE
         tFsXNWtzC+XrVEh2NgLjHBfVZ3bcwvdFHu9yDdH8lL8ugc/V+b4IN2cvBsdCYqmRgmMK
         tYOFhStoLg7brw3LzMam0toP7oiVyEXmbj12TVJQbJ0o03W5EyeSu9Xh2SDSekkYC8ky
         KZ3qTCXLw2LPhIb7ITw2azOhYlCZ+tbW6iZNuduWoOjSwWJ87BhOJdwmuABeLzUOr7bO
         1bu8ixZBhbhdLr7DlL06Ce6lShN2PaAmyqGVNowmbJ2NLLvnvaiB2bCJm3gzYfU5YxH9
         PIqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hpa1waJg;
       spf=pass (google.com: domain of brouer@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id g2si1136962qtv.3.2020.01.17.00.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jan 2020 00:57:42 -0800 (PST)
Received-SPF: pass (google.com: domain of brouer@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-bAqU4dETMIa9LQgbw4bJAg-1; Fri, 17 Jan 2020 03:57:40 -0500
X-MC-Unique: bAqU4dETMIa9LQgbw4bJAg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F022BDB60;
	Fri, 17 Jan 2020 08:57:36 +0000 (UTC)
Received: from carbon (ovpn-200-25.brq.redhat.com [10.40.200.25])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 80A8219C5B;
	Fri, 17 Jan 2020 08:57:24 +0000 (UTC)
Date: Fri, 17 Jan 2020 09:57:21 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong
 Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford
 <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo
 Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark
 Rutland <mark.rutland@arm.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>,
 netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org,
 clang-built-linux@googlegroups.com, brouer@redhat.com
Subject: Re: [PATCH bpf-next v3 00/11] tools: Use consistent libbpf include
 paths everywhere
Message-ID: <20200117095721.0030f414@carbon>
In-Reply-To: <20200117041431.h7vvc32fungenyhg@ast-mbp.dhcp.thefacebook.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
	<20200117041431.h7vvc32fungenyhg@ast-mbp.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: brouer@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Hpa1waJg;
       spf=pass (google.com: domain of brouer@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=brouer@redhat.com;
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

On Thu, 16 Jan 2020 20:14:32 -0800
Alexei Starovoitov <alexei.starovoitov@gmail.com> wrote:

> On Thu, Jan 16, 2020 at 02:22:11PM +0100, Toke H=C3=B8iland-J=C3=B8rgense=
n wrote:
> > The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.=
h are
> > taken from selftests dir") broke compilation against libbpf if it is in=
stalled
> > on the system, and $INCLUDEDIR/bpf is not in the include path.
> >=20
> > Since having the bpf/ subdir of $INCLUDEDIR in the include path has nev=
er been a
> > requirement for building against libbpf before, this needs to be fixed.=
 One
> > option is to just revert the offending commit and figure out a differen=
t way to
> > achieve what it aims for.  =20
>=20
> The offending commit has been in the tree for a week. So I applied Andrii=
's
> revert of that change. It reintroduced the build dependency issue, but we=
 lived
> with it for long time, so we can take time to fix it cleanly.
> I suggest to focus on that build dependency first.
>=20
> > However, this series takes a different approach:
> > Changing all in-tree users of libbpf to consistently use a bpf/ prefix =
in
> > #include directives for header files from libbpf. =20
>=20
> I'm not sure it's a good idea. It feels nice, but think of a message we'r=
e
> sending to everyone. We will get spamed with question: does bpf community
> require all libbpf users to use bpf/ prefix ? What should be our answer?

The answer should be: Yes. When libbpf install the header files the are
installed under bpf/ prefix.  It is very confusing that samples and
selftests can include libbpf.h without this prefix. Even worse
including "bpf.h" pickup the libbpf version bpf/bpf.h, which have
caused confusion.  The only reason for the direct "libbpf.h" include is
historical, as there used-to-be a local file for that.


> Require or recommend? If require.. what for? It works as-is. If recommend=
 then
> why suddenly we're changing all files in selftests and samples?
> There is no good answer here. I think we should leave the things as-is.

I strongly believe we should correct this.  It doesn't make sense that
someone copying out a sample or selftests, into a git-submodule libbpf
(or distro installed libbpf-devel) have to understand that they have to
update the include path for all the libbpf header files.

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
clang-built-linux/20200117095721.0030f414%40carbon.
