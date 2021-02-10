Return-Path: <clang-built-linux+bncBCDZTXMP2EPRB45ER6AQMGQEKLDT24Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 213273166BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:32:53 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id a5sf176085vsa.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 04:32:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612960372; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFB8/JuqA9JVL7ZBj77KETcElTIvWhCZm21XVMFWjV1ibDvPq3kHYyXY+pSW2/7ykG
         pwTGDCUl2DrPIIRFPpOxsEjED/fmOMYaH3/j1AgwK0vqIUHQHBXZj9CPRL86Zr05tV0L
         hCDoG7xERDIK3L5UnMANuD7sUwEmD1zUcTMvfmLDI6Vl1ySJ0J1uQ2rpVxOo/sgp0mNx
         BjJbiVopDdoSRlJpUTad+vYz/Bsl8IJB09r6T80Y8nw2mt2VmR5Xw+TjZ9iU5E97Zq3M
         j35Ojrm2RvT2NvRKZ6GDf/rwrHaYhna58KDIyOlQp0rHLgOzI8Qs2gKuI6YCNrENXbSr
         aq7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mmWHeuTDGIqy6LJ3dE/tFuKqxaxfL7xVCxqIPa9Aq5k=;
        b=JXWB/nnCRPvCSMAG7IGFcVcIIqcIHnhYVBalUK5CLoyh9ZlE4dshV47/Ru87eNtTA4
         MjLvcETi3RkSyQuj/vVq7TMTPzG2o6toi1edodb5i1DO5wJdRsYN26S99RPFJoCc8HxA
         liuV/Agk51Qhepeh2bUBmdGP7pS6c2C5oQy63LetD45HVgzU3Ft/+SZIOO19yU5i1RBn
         mWQgpABeWDLjEwNrj3N3aWGqnyjqCok7J7kApLFVwc4hW5Tpr1OjwehUSSMoBmTdK1ed
         o5IXjGuKTmnBK72Azl2jp2EHKq0HExRXRHuWiSEjWTC68o6invxVYOLUJpP75cI9Wqao
         aoHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hGamYpqN;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mmWHeuTDGIqy6LJ3dE/tFuKqxaxfL7xVCxqIPa9Aq5k=;
        b=iZAg6htCtLCnkiqS5MGloqpQFs9fAEt5weTplUrIYrrcVVbymZZRg9+0obwEHjkDAt
         mp9XKWS22SbgFedatZEN6jHrQJeAmQrNT48fVPR7oNXC/eILV5nwWOC4nHkG1ybAhX2q
         fSNoK4Qsag2nyWkr5iMva2iPTr/xGRDI0BSI/pgANKXMN9i6y2AHF9fZGcTKS/WM7uwK
         qhLtmgv/JbDCnRQr5cc2prxLFQ14hk5WvlkDhvG7mIKZezHmqu/yfRC+kjyz6ag8gi+e
         Tgef1184acXL/SjNxqvm74SugPjL+qBnynM/thIWSJ4FJgsNwzJvmU0PrJ0LbpX8p9TJ
         PYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mmWHeuTDGIqy6LJ3dE/tFuKqxaxfL7xVCxqIPa9Aq5k=;
        b=M6V81ekodmrbXq9Vdj1d6CFMm5tG9lOh9rfT/47X/NvOzmyoj2Igo3KSQ4s0hLFk0z
         wnRjbVwkRBjE1ZxGbgVCvqoEd+S+Uu/ttaVGv78bLlNZfXTbMVkHsyTBUbIUuvvPNrBS
         6CZMzVnfcQgbKU4RfQxFafgcv8lQT+nLVmL/41GIjyo4I5lGw5xHjnh0XJXZi1xQpqU6
         wi5omx7fd1SQE/X+Cu7e1iKN2RLb98glMNu320GROMbqMe8MtETyqowp5C77dps8KIIL
         sA5wXnbCAFyFPfVuYwB84rwj2Wy9hmB0T477hRjNg/UtXzz8vVgHhrOA97TzZ+SmaKTa
         kQHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xf8GlZ6tc8C5qcpEaE4L7Xn4NrUg4MNvS5oiohFT6osbsu//z
	nUBPvvBKBTJsfKdNGQ8vtqM=
X-Google-Smtp-Source: ABdhPJxGHB3sigZ6zPujHgdfx9jSUuSMFQkYcRwrPfyam2+1JuvEhjC+osUlSrSXrdR/hYqsRMh4Cw==
X-Received: by 2002:a67:e404:: with SMTP id d4mr753210vsf.59.1612960372103;
        Wed, 10 Feb 2021 04:32:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2645:: with SMTP id m66ls181498vsm.3.gmail; Wed, 10 Feb
 2021 04:32:51 -0800 (PST)
X-Received: by 2002:a67:581:: with SMTP id 123mr1468039vsf.14.1612960371559;
        Wed, 10 Feb 2021 04:32:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612960371; cv=none;
        d=google.com; s=arc-20160816;
        b=spWxDZbvoFjlcj/ioR7QxW2PzHbmvS6domblmheyRxwDmZJo3q4tHAEcbyy+6xaLDi
         kGF+XNpIc75yPAReqW2GwHb+YNpV+MxHREXFIsBzyFGAL2GEwIidMzYLMCkNgeR+FXpk
         5z2k09Bl67NNWaWOUa98vvU88QxJ4uQ9mYYF8R25IM5cx6FefFhx/kutj5I1CGTPIH6i
         ps0h7sbe6wZCs0vLn2C/tyQxPHl9z2pKB6RHTyx+4o65jKM4AcAUjtjNzdiQ3r+OUpd2
         T9PQwpAa0JpOOYIwSQEATFXIluSD/TozGBSjGC1j95v8gHMXcAP9YO8Oo+X7k7YXdq3b
         5uuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JzdFsPraeCWajGIcw01BPCKeAxZ8iBlE0yhBilS2XoI=;
        b=UnWG03okld/u6RQrdjoiKD8j0gf0+4qS0jUPD9wVaomx50uJoHDDbivGVf1X+9tQIm
         5RKmNJvDYsn92MkGi1lT95MIdpMJb5AZOMpMnqp1SvQk+ep5QqWMeVYEIeHDK+HYocrS
         yH6ZtXPKWMfHxoZF4I8D7hfP9DDagTgPxzPK3pwXH0Aeruj/CqKM5SZDqg5ZC1dtezDn
         dTpkjV2Eee4yf52MOycpXSr4QvJhVcGnZFMN+17L1vocgc8lKTH42Nw+DD2TuNVhgXBa
         +nEs6T3qqB5DkT+zywONT1pVNja+Q0rufFooYC5OZx3dQeBMdKDU9NENJT1dcBqV/2Ae
         7stw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hGamYpqN;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n3si116115uad.0.2021.02.10.04.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 04:32:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-203-2B_1-xrrNrS33ccH2a91rQ-1; Wed, 10 Feb 2021 07:32:46 -0500
X-MC-Unique: 2B_1-xrrNrS33ccH2a91rQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E029801962;
	Wed, 10 Feb 2021 12:32:44 +0000 (UTC)
Received: from krava (unknown [10.40.195.206])
	by smtp.corp.redhat.com (Postfix) with SMTP id 8F991189B8;
	Wed, 10 Feb 2021 12:32:40 +0000 (UTC)
Date: Wed, 10 Feb 2021 13:32:39 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: David Laight <David.Laight@aculab.com>
Cc: 'Nathan Chancellor' <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Networking <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <YCPSZ0ke/WWmrcTP@krava>
References: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
 <20210210000257.GA1683281@ubuntu-m3-large-x86>
 <67555404a0d449508def1d5be4d1f569@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <67555404a0d449508def1d5be4d1f569@AcuMS.aculab.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hGamYpqN;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Wed, Feb 10, 2021 at 11:34:25AM +0000, David Laight wrote:
> > > > vfs_truncate disasm:
> > > >
> > > >         ffff80001031f430 <vfs_truncate>:
> > > >         ffff80001031f430: 5f 24 03 d5   hint    #34
> > > >         ffff80001031f434: 1f 20 03 d5   nop
> > > >         ffff80001031f438: 1f 20 03 d5   nop
> > > >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > >
> > > > thats why we don't match it in pahole.. I checked few other functions
> > > > and some have the same problem and some match the function boundary
> > > >
> > > > those that match don't have that first hint instrucion, like:
> > > >
> > > >         ffff800010321e40 <do_faccessat>:
> > > >         ffff800010321e40: 1f 20 03 d5   nop
> > > >         ffff800010321e44: 1f 20 03 d5   nop
> > > >         ffff800010321e48: 3f 23 03 d5   hint    #25
> > > >
> > > > any hints about hint instructions? ;-)
> > >
> > > aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> > > encoding space to make software backwards compatible on older hardware
> > > that doesn't support such instructions.  Is this BTI, perhaps? (The
> > > function is perhaps the destination of an indirect call?)
> > 
> > It seems like it. The issue is not reproducible when
> > CONFIG_ARM64_BTI_KERNEL is not set.
> 
> Is the compiler/linker doing something 'crazy'?

I need to check the gcc build, where pahole in my test sees
zero ftrace addresses, while booted kernel shows ftrace working

> 
> If a function address is taken then the BTI instruction is placed
> before the function body and the symbol moved.
> But non-indirect calls still jump to the original start of the function.
> (In this case the first nop.)

for clang build, it looks like pahole needs fix not to assume that
ftrace address match with function start, I'll send it later today

thanks,
jirka

> 
> This saves the execution time of the BTI instruction for non-indirect
> calls.
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCPSZ0ke/WWmrcTP%40krava.
