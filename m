Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBLN2ROAQMGQE6FHP32I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 71002315672
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 20:06:23 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id f52sf5722765otf.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 11:06:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612897582; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuXH3wOXacClaJd7OFHeEStuLBGTHe83iaFV8q/PHjHuDYKxMzvW9rtqLjO2ltv3Dw
         qJsmSXzDTo5akivUTrRJ+2c2FiUNPfHfb1rRKxI8iwvPxSqvP6rBXwlyu94qiP8LOUQE
         iJz63iaqiw3gtrJjkbcTO7fXiGOjsLC/33Py7zzAsgLYN/mUoy0O65R1kbdwG1NzBEzV
         gy426++095QDt1u1gCDrS2B7yF2Xynuq/I/dQsNre4uysr5c4uObyFm5i0YgbGbJbEAB
         dYK5bmv0QqzM3vVvS/idDnjbu1bsW4AeNXoxDrB1fe+Sy7TfPFNjIuKMmdHy1y7q7sAE
         jeSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cD9HuKYRezig09eLPerXJUio3Daac1vHUvmmkKFfB3U=;
        b=Ezc64rwM4DSnF7LjkDzgn2PByVuMNSZ0vtuqNGA33v/v97HL1zWspKbMmk1pz2sS46
         qGiGd4GkDoYA12K+i5LbpsUlWF60zPenN9OP7A/oj8QEomLAS0kU8KtoajTD6ykQJ6ym
         CGqM3wdLiw0i1EoCUP0bf1nZcUJP+ZExCXLySh0TlRvAVJCMvRwJQYpWFeAK22dB7nzl
         82Zt3+okmEr1eTQzIAW8b9c4lT9S7jjiypjfeG/kxp6vnIO66gsIbyeCRAjeZwY/diQH
         1EZjystYanjgeh4sMjwZQlHfvn1frQBne6uVEVZ0rWHea5bKi8iIMmI2W0iB1yMzd7PL
         kRDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=flSMKnQr;
       spf=pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cD9HuKYRezig09eLPerXJUio3Daac1vHUvmmkKFfB3U=;
        b=RY9aM4B0D3lNFt3EzQAQVgBtMaHPKu973qvoNpk8dmNG49hDPxiBUzO/88cgeUEqaX
         sTJJ4JMdfBdbgzVPNFUoGlPCqo6sOaniZ0gIKewTAT7dBH3y5gkXiyD8scTJojEdnD5B
         hutRSepB60Wd9vzhYebuTnHbxmTkpGSI33V9mMQ3t19HNrK6BfFKkpgCaBlHH21HDjXK
         pHmyTJyDkCOnXVVYa+C/OPjxu3N9qgy0biSgjIVQ+vykAWtWH2ymmKYmSUa+Ngeo47bR
         Rz321ZAZZ3ArNpXdfQeod6GhpdHxjt8CSGI7OioKUl266VDnyknTPyzBIiK7oF0JhBZb
         zPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cD9HuKYRezig09eLPerXJUio3Daac1vHUvmmkKFfB3U=;
        b=pgGGKiZ5y4l0g7ex2uaQXznWhiiEKutftk7cnnUJ7WHvIdqmdYQQqI0yYuQFVuC5qc
         wApOTnpSZXzllaLDrKL0fOUi8B//j7ONTkiAEHcTOEMa7eMeZladga5qqggxTAGWnvxm
         KFYuCcaVNHUzHR6+6dKqY0d396SpYc5fyis2EtHFBaJCMsobEGF9exvXI13+tqhKEhlm
         3iq8K8S3S3XaCUBEJEJ/jmVQfXRVToV+hT+s62yESGPlbYcviKefg/KqLYoquWccKjB+
         aWXOX19bWl8I2aBTqF2SeUKbhGSIb1DnERopFhJPO8z3BYPxr/9leP8lQ/0zFHuK1735
         cjPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OxCCOGRCzvbXfd7MgXgQB4ktaZVIWN3zHt/6SM7bi0dN03xMv
	z3rjVo/OQQ/2X4mnMMyIy4Q=
X-Google-Smtp-Source: ABdhPJwNPwYNFYupLDEqjezrqkLJCVWvHy0FL3Ho5chQ2a4Hlj3TohVhv5OD1UuZ3Nk8tNt8WlC/Vg==
X-Received: by 2002:aca:c786:: with SMTP id x128mr3460619oif.120.1612897582013;
        Tue, 09 Feb 2021 11:06:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7249:: with SMTP id p70ls3895266oic.5.gmail; Tue, 09 Feb
 2021 11:06:21 -0800 (PST)
X-Received: by 2002:aca:43c3:: with SMTP id q186mr3399013oia.77.1612897581601;
        Tue, 09 Feb 2021 11:06:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612897581; cv=none;
        d=google.com; s=arc-20160816;
        b=FC3E57dqcfylqMPGZopayMG4l7tznLJQazqHe3M0d+vevb+00TUqBh4pY3lzyJ25rw
         N7InQVBdoNyIXYD89eYzD6JD5u43ql4My9KeK0Rx/LuJ4/rf49DOBf44jPYwdCqTH+Tg
         n+SZyX3VsMEak7oCseKcSrL633CmYXZklSNcPnTzv79+hSEdCkPgURFKPt2J1UUFuvEd
         yKQIGphfuXWZhO4TtV8RiGjthfQUFf2rljRZjtM+1Ahrm6PdgtrvnucdgmNkSDjEk3TG
         wMSYsXIQwYWizwUxh4ZLmIo4FMNennaO8oS4+ezlFtE4pfDE0/xolzm8VVZg9HWsmcpl
         pRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=y13n9ltDuIqN/elDFZtGeflsvqYft3gs4cjirXXX6wE=;
        b=aMCmuw51ex3pFE+vV5WfFBIC1jbmoEetYbMWZfy3Z27yl/TCfxPzCv6nL7ct0JJJio
         z8rdDDpOeFSS1PQIjgc6y9zyNZUliA36/kI0YzvnjxULVWBc0PDNsaXVq9aq465mcinW
         MJZAMg2YhaKvp2Cd10d7kQsqvmCG0azH6m7QqL905mB164OOkfJp1jSkXEacp/ovFa7D
         7/AAIpl4cSpiPcRyRs5Dbu8UdfdIWtRqHfa342JuIoGWPQOMwzoR38cMsry0F709Mo/Z
         VwKv4MpWVFNekerqMP8P6ErkZIVhkE6LfL+Ibu1Pbbb8oiFzQDUJ8uk+nh1flTyo7Dg6
         g90w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=flSMKnQr;
       spf=pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id m7si1471581otq.5.2021.02.09.11.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-x7-UMDNoN9uQpT5J-jn-3A-1; Tue, 09 Feb 2021 14:06:19 -0500
X-MC-Unique: x7-UMDNoN9uQpT5J-jn-3A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFD60107ACE3;
	Tue,  9 Feb 2021 19:06:16 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id 762865D749;
	Tue,  9 Feb 2021 19:06:13 +0000 (UTC)
Date: Tue, 9 Feb 2021 20:06:12 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCLdJPPC+6QjUsR4@krava>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCKwxNDkS9rdr43W@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=flSMKnQr;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> 
> SNIP
> 
> > > > > >                 DW_AT_prototyped        (true)
> > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > >                 DW_AT_external  (true)
> > > > > >
> > > > > 
> > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > strange, given vfs_truncate is just a normal global function.
> > > 
> > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > that appears to be nops, which would suggest it's traceable
> > > 
> > > 	ffff80001031f430 <vfs_truncate>:
> > > 	ffff80001031f430: 5f 24 03 d5   hint    #34
> > > 	ffff80001031f434: 1f 20 03 d5   nop
> > > 	ffff80001031f438: 1f 20 03 d5   nop
> > > 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > 
> > > > > 
> > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > addresses only for static functions, not the global ones (global ones
> > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > 
> > I'm still trying to build the kernel.. however ;-)
> 
> I finally reproduced.. however arm's not using mcount_loc
> but some other special section.. so it's new mess for me

so ftrace data actualy has vfs_truncate address but with extra 4 bytes:

	ffff80001031f434

real vfs_truncate address:

	ffff80001031f430 g     F .text  0000000000000168 vfs_truncate

vfs_truncate disasm:

	ffff80001031f430 <vfs_truncate>:
	ffff80001031f430: 5f 24 03 d5   hint    #34
	ffff80001031f434: 1f 20 03 d5   nop
	ffff80001031f438: 1f 20 03 d5   nop
	ffff80001031f43c: 3f 23 03 d5   hint    #25

thats why we don't match it in pahole.. I checked few other functions
and some have the same problem and some match the function boundary

those that match don't have that first hint instrucion, like:

	ffff800010321e40 <do_faccessat>:
	ffff800010321e40: 1f 20 03 d5   nop
	ffff800010321e44: 1f 20 03 d5   nop
	ffff800010321e48: 3f 23 03 d5   hint    #25

any hints about hint instructions? ;-)

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCLdJPPC%2B6QjUsR4%40krava.
