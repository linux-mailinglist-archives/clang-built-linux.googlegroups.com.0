Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBP7JRKAQMGQE57KEXAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FFC315380
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:13:52 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id z199sf11263605pfc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:13:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612887231; cv=pass;
        d=google.com; s=arc-20160816;
        b=okK6vCurFuZigI5zrjf1MhoWTNgK2CyL8jk7BKOOACei4AIol6UiuqqbEOtBtH61Dm
         KN9C7tnCqHTvU+162d2FNlifuYq/Ha60Qn0b6z3BsZGleuRmkh37c4iBvIhnBrXIzrGS
         3xt9xdTkIPZ5vR8RRCInTws0cDdmn2pbixaTfR8th+/WmaKvzmDR38b6ATQDNn/n56EP
         uPD8NMRjI/l0uOyz014DKTMcbPyS+gWO8b/Z/8h9ScWaN8XM+YfE3lblQo2uNvdCzaJs
         5+19DcRwaujR30aB9tgWgqeAV0fEwB3N7vKEwo46KX2+RBoTix3MjHXGz681qFNR+YXz
         lSEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=l77MXMCRNnCnivslAwLpuvWZufEwX7UFnvPZ022tKGA=;
        b=bU5gOvLeftUM0ANiUKQ4BOUtRhdmMgFheh/pmR7eH0bxe9HVGYCIaEO7RIj7M0LNi0
         t3ACbbc85YKV1FcDvomIS/J+Gs1xBYiw0NIffc8/MQnrCIriXZIz4xQq7ehJEwSIkccB
         RWo4u+yhHiQuGIqeMz8E1UPCYX5hN2XCuw8d6kfDKz3r/2sEjba7YvX1Gij5IMKlC43o
         EZIoCR9kenbWe5C3axDhg6Ii6xdWmM37nrgdJSX3ET/rRDWDzbUvHPJk4K/MqyrDtXLK
         /QjWrsgMJ6PLNktoBA5cuxNC9O3oAK1OogPGzDkzJg3hiLpibcU2OG+WgwsXosU5+azo
         +0oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JohqIKN+;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l77MXMCRNnCnivslAwLpuvWZufEwX7UFnvPZ022tKGA=;
        b=o5YmoksTJgUaB7qlmfc1b1NFcVsB6ThlZnRyOkhtz5qJHP4trLjIZKPRqnbo7oYhKH
         LvFfOZE8qNA4FYCmfVPbOLMxaiQ+gLSKz5jlSxuozDH0uRNdXlhQbu9XtebIK6YUhIL+
         H0sr3+H+ndTG6d29xFLXIHopwNLj0IyrCFsWDXL4PR2p7KZpANcxFLBv3BtpA4RE8pg+
         Ujbg1f9ZF+yPDodn3Isnqf/oG1GpR59yAMvtmqYJxM6HTzo8Lhhg7hihUBLfv5VnoXPF
         135TZ4140Hu3T9WHxwu+0IWldZBybUGiVS/CuD8vm5+oLEpFJ7WEcYb+FX1r865mLJ2z
         NNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l77MXMCRNnCnivslAwLpuvWZufEwX7UFnvPZ022tKGA=;
        b=BOkt82LxltARYd2rcLe3r2tRwtOKB6BDF8YE50Irnen0SjvmVmQoROe98ylYeNGAJn
         RZ46EYt2keZIynjqYECG526O7CBZS06RbMvj0LgKArTlj6bJGvE5xKxkH6ENOpaC0Pu8
         B8hfq/9ZG9O145uhb5kSXvXOQDoaPQsJOjyoCuoBv/YHpNxZl4+LPimFB1OH9nx6JRiT
         mCfnPVD1kwIO8cVBUc7O77G1/IfbQEDkQJjcTLjKFYvSifUXQYpfPmn97VC5S/MVAmaZ
         STMoctf2CXMp6J6vLS44XjqYtslzpbW+UP6/b07aaq+7+9o8pLCZXeFAVEuzlzhXApLX
         UmaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Aa+n7keUTPrxeFYxJxp1OgPOaiDHHZY91itZ/EN9nNcqmw0mH
	KexshiEe7Sq4KxVnYeox1cI=
X-Google-Smtp-Source: ABdhPJyZTm4hdlS8rPSDyped12EjZ46EglEN52hN0yvuG6mczLX5Nx2rw9i8F/1NSWmQpZAeOHO0IQ==
X-Received: by 2002:a17:90a:4fe4:: with SMTP id q91mr4584832pjh.165.1612887231441;
        Tue, 09 Feb 2021 08:13:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd09:: with SMTP id i9ls8351602pgg.10.gmail; Tue, 09 Feb
 2021 08:13:50 -0800 (PST)
X-Received: by 2002:a63:f34f:: with SMTP id t15mr22153001pgj.239.1612887230633;
        Tue, 09 Feb 2021 08:13:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612887230; cv=none;
        d=google.com; s=arc-20160816;
        b=NHzv4cVLarkgNvQ/SUdAYX5DfaPv67XZopvW7Gi1PkX/c/TLycUajg1Cn90Sz3xWQs
         48DhtstnyR+GaThWrWK1RioqcptWfNM6FC2TIULr/BklX7rXU6hX2c2rGFtU/a8YMuky
         yqhetTa97IMLTejBCBgPwodvtNdKa7rR6Z9GqBTJ6pi6+B2wAH4aRIE71HzrXrDMDcXM
         y8FmDa+B2E6cxXoc/w/ofrgTpg2lKwinzkHeAS5SbhEjZVIXQ4aAWpSaKeQEi+Csqp2n
         OUVW4vwhJtVRyZGpeyPDYOsSUhPQefTT+piYzcmYKZID+t4HfUuvB8VyEoUZY8V8cuMI
         adrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nnY4e3bu7/a3DG+aVrgYbco1QCGV9rZ/D0QUrkcNoPQ=;
        b=WCFiF+aaSrNNn2v+cPQ/d6XXEzlnmsddkS51qS8P8yUc03Yj7zGljjKB/Dc50i1wWy
         dMxnEPKK9Kku8lA89/yppdYHOOBfspGoMGlhWQrYsXf0uS435dLL+8NC93A3t5zcwt66
         4wSJ1j8KUcq7mel1xBQhzgN1IknruyNJiUtJob9mO02gYsSe4AaJhQx9yQuF1y6J6wXa
         WakX3qRBiDIqxsgo3nk1A9QvthoKVpMhAM3qwT3PnJW6AkWg6OZr9oaAskQyKYSshTR8
         RVqG0xc0LiIfZDO6Qm6QqVnVNDiVM0LTsIpLyG6DH2koAWnnD6uhmNYLYOiMglYRyJe8
         K9Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JohqIKN+;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i10si1226303pfa.6.2021.02.09.08.13.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 08:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-xaAYfVgPOkWgPiVw3qTkgw-1; Tue, 09 Feb 2021 11:13:45 -0500
X-MC-Unique: xaAYfVgPOkWgPiVw3qTkgw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD735801979;
	Tue,  9 Feb 2021 16:13:42 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id 725F060861;
	Tue,  9 Feb 2021 16:13:39 +0000 (UTC)
Date: Tue, 9 Feb 2021 17:13:38 +0100
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
Message-ID: <YCKwxNDkS9rdr43W@krava>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCKlrLkTQXc4Cyx7@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JohqIKN+;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:

SNIP

> > > > >                 DW_AT_prototyped        (true)
> > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > >                 DW_AT_external  (true)
> > > > >
> > > > 
> > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > pahole ignores it. I don't know why this happens and it's quite
> > > > strange, given vfs_truncate is just a normal global function.
> > 
> > right, I can't see it in mcount adresses.. but it begins with instructions
> > that appears to be nops, which would suggest it's traceable
> > 
> > 	ffff80001031f430 <vfs_truncate>:
> > 	ffff80001031f430: 5f 24 03 d5   hint    #34
> > 	ffff80001031f434: 1f 20 03 d5   nop
> > 	ffff80001031f438: 1f 20 03 d5   nop
> > 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> > 
> > > > 
> > > > I'd like to understand this issue before we try to fix it, but there
> > > > is at least one improvement we can make: pahole should check ftrace
> > > > addresses only for static functions, not the global ones (global ones
> > > > should be always attachable, unless they are special, e.g., notrace
> > > > and stuff). We can easily check that by looking at the corresponding
> > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> 
> I'm still trying to build the kernel.. however ;-)

I finally reproduced.. however arm's not using mcount_loc
but some other special section.. so it's new mess for me

however I tried the same build without LLVM=1 and it passed,
so my guess is that clang is doing something unexpected

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCKwxNDkS9rdr43W%40krava.
