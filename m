Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBKEDRSAQMGQEUB5GUZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A673158BC
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 22:42:01 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id e12sf50997plh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 13:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612906920; cv=pass;
        d=google.com; s=arc-20160816;
        b=sUcdb5faPJA9IokijaU6xXpkScQN2E+0E1f4quSkpJbEGFRxPmpv5fInOkBy8YAT1V
         34qHFVzQnUfDFpeBxm15zPfgXjnZ0Xy17/TuK2fkX1sGiNIRXzEshxgHYMZ5yK/A+Lpc
         oa+Qqw8sXmE/I6I+jQsQcIplEC/0tcLNbcOyx8R1y6t1MgFe7+aG3qdL+p6yTSEhNlsS
         qR6uU+Bh73kLqOVYOxBqEqeDFiDJNwcRQp79wRVv0tUr4Uebh2cGpp6ZglpXhyO9/RnO
         oseTHIS66O6ZAOhXQRh6z9h3mv8r2RxZmYQ7gJYbgHPvThMv6qK8QuxuynWL/JmZWv34
         /q1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nysVddvifFgsQRUukyWYCBOIrxH2wky6Zy2/lP2yKDk=;
        b=snSzTejwJuelYD9CSYfTJDwoVnKbIaGHdUD2R2dQX6/AoLU+aJopn2e8b7C3uoPmiL
         tQjxTWeT8yH+G1hO40oP9MS6j1UwakO2cr8fV7A643ES2yI5eRtIeLm7mwRWJRFWoaZV
         au9EGsfbIeuYQDH3KKm9tUCUF/YTwLFvgnQ/D1mFRaAcJXE7kpGPvLbIA/L9fNIdoFyc
         quug0+tgnTqr+JAYhz8Wp+8tuZI9DfdqjiuXP5hfzXvWWGQGHpgAAK0DFW8soR1ftwT5
         nnEEW8uYFfgPC6YzQMBeK3eMWcLaAskgQBNtYgnrhTvDHU4vGP2NL7DVBgQ/i9/Kipyj
         6E5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XMbyDvvF;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nysVddvifFgsQRUukyWYCBOIrxH2wky6Zy2/lP2yKDk=;
        b=Y06E3U54ME4e17gp9oiT5/diT8s0v9FudMutwku7NbXP1rHioHQzl/e5Qu6cCQuoZu
         wJE9d0V1BOJNupkC2fNbAg3wnTlvm7RCxV2RuJ7BdMocf1nRR4GljZAtYBNJgJNV5Mlz
         awddSutlHPUu7T9+mg8zZqcSnMST/2bwXyEK1n9uLfB6iqDeUv93NHtHonFnXAuf6aWn
         40n5G7crB5njOEwerkJT4oUMopL3ktitBa9c3+rIW926xV5aUQGfVXnNMatyjAMbNUmx
         ZgKtMRYbs3086Zrfj1/2vYEAQQdb6xbinZvg6D4581tn3ucSZiB/Yp9khLTo5nRYRKe3
         a9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nysVddvifFgsQRUukyWYCBOIrxH2wky6Zy2/lP2yKDk=;
        b=e8+gDTfiRDGgwknEht8qhNCPXwgQ1OVwjFAp4chnSOQc3igXkAdIqv5wnuXPb2NUQX
         2iMuW7QIrhiVp0fPLJ8gIVUsECyCH/Ot1orEyPteIKZBWE6gJ4ppAAfCKtu+6BF7FZRB
         Mdm3Z9RMI2W5eWAPCO2dT/LrcV9LSHINDjTXVG7+vw6rmBWdI/Lz2+Z8/mMG8QFDK4P8
         fJLkP4sAhjDbolKs060NLmFyVoAmP+A+hCtW5VJjJ1PHtAbgitskuEOVVe6JyTj8LKOi
         RrJwkrR+S/RnM3rW2XE2+R/ZoaSFj73bGxUW+2glvqVQGpwJ3Y62MDGhCSgB4ayjy1BN
         ZHmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bHHag6Cc+eNULM8q/SLFIqZW8SlLLaNOTfu+WYLflyk4CFm6U
	iWXapA13g4GoKOixxHxhqrE=
X-Google-Smtp-Source: ABdhPJwsDXJwuqKwfrSOTHrWHk2j+eDzDB4X4AKD00VOFnzIbQMIkqYYmx7egX+d/vtf+I2eRcq8nA==
X-Received: by 2002:a63:e715:: with SMTP id b21mr23639033pgi.335.1612906920552;
        Tue, 09 Feb 2021 13:42:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls10211072plh.10.gmail; Tue, 09
 Feb 2021 13:41:59 -0800 (PST)
X-Received: by 2002:a17:90a:cc03:: with SMTP id b3mr6137723pju.2.1612906919795;
        Tue, 09 Feb 2021 13:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612906919; cv=none;
        d=google.com; s=arc-20160816;
        b=UCHQbclaf1slRZsvN2/PY5utfalvbOMWxfSjptKFknYlU60ES9DDB4JOorWA42td3O
         NczSWHuI89HkBy3tB5ETcxmyArJPCu2PtM57LbKCNrQOJuHXHNLHyXqwpbCvsFtvnAII
         lYluMvx4IGMdDHqUkQpwnRysEoCW/R9VU2uAj8dSNAKEfeB6hCrf1fbWv/mjtc64QVA3
         l79DCjAny/Bn8tvKDr+n+f39j8BiBUiYPTYBknz3Aj5++8sUaajM8zB+HIAjKKJ5UUAp
         EkHKn18KVN8bFrMd2CDikTHIhFY/Ol5Ou69sO7IuYe1JedHnB/zXlqXCyuQrX/6hNK2X
         yhYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LlfTMLVBHMWsjcgkhsCMYhUdpfeSRHZZE2Im+2isGyg=;
        b=DO0IpQifzhfOcUIOzkC0g+dalxfjeuE3mRiaIyjAE/RzBQID6Dk7ewL1ppI1qkOkvH
         AnpTOXf5TOEApp5dP7eyMlEFwkK7gqVPLF8NNmsO1QjT3an1mmr9ytxczleEH5uvu6Zd
         nc2M7hAMLu5b5iqiZSHLK4l6wUZn4NtQ34OS6KO9ZLDLzdJRV0/C0TUm2Py6MxKG84hR
         38xqXmJRfkXsTTRDIJR4PTCKxdpvlCOsGl+vZBYQPw123g/WhxW82Vk4LKjutsVV8Hn0
         keRW2HXCfBNcyXSYsU2Txr59xECmMRTIfMrJnVzIXbPrrr4tXZGtPdg03F+iPsLmtXs2
         KvIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XMbyDvvF;
       spf=pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id t25si663777pfg.2.2021.02.09.13.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 13:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-602-JpWUcil0NF2JEdCCKSmXeA-1; Tue, 09 Feb 2021 16:41:54 -0500
X-MC-Unique: JpWUcil0NF2JEdCCKSmXeA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 630A7192D78A;
	Tue,  9 Feb 2021 21:41:52 +0000 (UTC)
Received: from krava (unknown [10.40.192.77])
	by smtp.corp.redhat.com (Postfix) with SMTP id 2E3105D747;
	Tue,  9 Feb 2021 21:41:44 +0000 (UTC)
Date: Tue, 9 Feb 2021 22:41:44 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
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
Message-ID: <YCMBmNujLsMg0Q0q@krava>
References: <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
 <YCL1qLzuATlvM8Dh@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCL1qLzuATlvM8Dh@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XMbyDvvF;
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

On Tue, Feb 09, 2021 at 09:50:48PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 12:09:31PM -0800, Nick Desaulniers wrote:
> > On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > >
> > > On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > > > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> > > >
> > > > SNIP
> > > >
> > > > > > > > >                 DW_AT_prototyped        (true)
> > > > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > > > >                 DW_AT_external  (true)
> > > > > > > > >
> > > > > > > >
> > > > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > > > strange, given vfs_truncate is just a normal global function.
> > > > > >
> > > > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > > > that appears to be nops, which would suggest it's traceable
> > > > > >
> > > > > >   ffff80001031f430 <vfs_truncate>:
> > > > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > > > >
> > > > > > > >
> > > > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > > > >
> > > > > I'm still trying to build the kernel.. however ;-)
> > > >
> > > > I finally reproduced.. however arm's not using mcount_loc
> > > > but some other special section.. so it's new mess for me
> > >
> > > so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
> > >
> > >         ffff80001031f434
> > >
> > > real vfs_truncate address:
> > >
> > >         ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
> > >
> > > vfs_truncate disasm:
> > >
> > >         ffff80001031f430 <vfs_truncate>:
> > >         ffff80001031f430: 5f 24 03 d5   hint    #34
> > >         ffff80001031f434: 1f 20 03 d5   nop
> > >         ffff80001031f438: 1f 20 03 d5   nop
> > >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> > >
> > > thats why we don't match it in pahole.. I checked few other functions
> > > and some have the same problem and some match the function boundary
> > >
> > > those that match don't have that first hint instrucion, like:
> > >
> > >         ffff800010321e40 <do_faccessat>:
> > >         ffff800010321e40: 1f 20 03 d5   nop
> > >         ffff800010321e44: 1f 20 03 d5   nop
> > >         ffff800010321e48: 3f 23 03 d5   hint    #25
> > >
> > > any hints about hint instructions? ;-)
> > 
> > aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> > encoding space to make software backwards compatible on older hardware
> > that doesn't support such instructions.  Is this BTI, perhaps? (The
> > function is perhaps the destination of an indirect call?)
> 
> I see, I think we can't take ftrace addresses as start of the function
> because there could be extra instruction(s) related to the call before
> it like here
> 
> we need to check ftrace address be within the function/symbol,
> not exact start

the build with gcc passed only because mcount data are all zeros
and pahole falls back to 'not-ftrace' mode

	$ llvm-objdump -t build/aarch64-gcc/vmlinux | grep mcount
	ffff800011eb4840 g       .init.data     0000000000000000 __stop_mcount_loc
	ffff800011e47d58 g       .init.data     0000000000000000 __start_mcount_loc

	$ llvm-objdump -s build/aarch64-gcc/vmlinux	
	ffff800011e47d50 00000000 00000000 00000000 00000000  ................
	ffff800011e47d60 00000000 00000000 00000000 00000000  ................
	ffff800011e47d70 00000000 00000000 00000000 00000000  ................
	ffff800011e47d80 00000000 00000000 00000000 00000000  ................
	ffff800011e47d90 00000000 00000000 00000000 00000000  ................
	...

	we should check on why it's zero

	Nathan, any chance you could run kernel built with gcc and check on ftrace?


the build with clang fails because the ftrace data are there,
but pahole takes them as 'start' of the function, which is wrong

	$ llvm-objdump -t build/aarch64/vmlinux | grep mcount
	ffff800011d27d10 g       .init.data     0000000000000000 __start_mcount_loc
	ffff800011d90038 g       .init.data     0000000000000000 __stop_mcount_loc

	$ llvm-objdump -s build/aarch64-gcc/vmlinux	
	ffff800011d27d10 cc330110 0080ffff 1c340110 0080ffff  .3.......4......
	ffff800011d27d20 6c340110 0080ffff 1004c111 0080ffff  l4..............
	ffff800011d27d30 3804c111 0080ffff 6004c111 0080ffff  8.......`.......
	ffff800011d27d40 8804c111 0080ffff 0405c111 0080ffff  ................
	ffff800011d27d50 3805c111 0080ffff 7c05c111 0080ffff  8.......|.......
	...

I think if we fix pahole to take check the ftrace address is
within the processed function, we should be fine.. I'll try to
send something soon

jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCMBmNujLsMg0Q0q%40krava.
