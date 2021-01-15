Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2WZQ6AAMGQEU2J4YHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AFE2F8563
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:28:44 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id c18sf4411286otm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:28:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610738923; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtfrLc8SMdHrtUv6qi8PMWR6JgUqDYfmg1Tu7jAFVNcZY/TmPejTJY+Sa9t0/U2mbo
         1kyvBqyXpwARVpriOjbuHVyBfo3r7yn0+WxwXKJWj2xgs88QJRk9OexcUt7sLhTI4DBt
         MIijbn1d6T4HvTTk8T6CKYIUhte5Bp3X4EAj1sHePLgkc2/Leq3IBPl+2lzwf3pEMj5u
         DPJKjjBGn3hWJ9iVlz0Ed6Lz4NLmpNu5UZ9Tuo4DvGmpkZDMr3n9j57XnFPSSWcl5Fjc
         vt1rd3Krw2Sw8uiVDyE50BNNN9Ct40qvT/JePsDlTAlL7LHmTFi5fm6uxaiRbvkbvI62
         m+kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=prmZTSgwQhTu9r6OJ4D/eG7wS1rODZTuJleBYj2i0qs=;
        b=Nzogypaw1Tlc18gdvpxFAKY8bein9Wk9AUSJNxXwTrmaXKW+rOdN17dhFlIOBNQ34H
         uL2b/hKLsKUTK5cwzHpR1xkaMIUtvKOOCHQDBMgocKC93nGIXF+9+eoH5fuWcvuWfBw+
         rav6lRxe+6WDlogYY1HJO/4Qpn/DNaNqpjVgLX2emFc4dZ5Vh66YoZa/lWDz7CnyXcG7
         mlhnFLT/YIiOX0I/7SLz4l9V3FFnGvJMRWrKr71Hv0T4+ra4TXautGohtIGz2KAfaXJd
         5H/Be2S4tUtKFtaw92yp3z8WDFkzSDd9RYIu/Zrx7WbLFoWcDLK/DpBb1AP+CuoLwNKT
         i0Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BeA8Q/Bl";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=prmZTSgwQhTu9r6OJ4D/eG7wS1rODZTuJleBYj2i0qs=;
        b=stZWIakZURUEbTsD34ClODLIX4Vd6BInKLW7dXPPnaKWXPySlOsLwTNDKLEdkX8Ezr
         +oa+yYyHzt7+RAS8jVi+lnHk/dXzH8UIR/A11WDn6PR9oRyTwtf0TZ77epsagu6FTsZe
         TFJqIzurB05rNFPb4mjSx/RhuNpF3Nqntf1Z/17HfRw+sD5NK0/vu27VPS/jvvX20XPG
         0Pxu62IKgQp2pepH+asp0iqMzjMNoYI2aGSyeqUYggYeE6T+vxCLt9pHCb0TOqxCJDEm
         cpI8EC4xBHMbnTJTPissIttPrwhetCHTweYrZM16lJtHIC6z48p+LQZ0RVGV5CTU54nZ
         oQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=prmZTSgwQhTu9r6OJ4D/eG7wS1rODZTuJleBYj2i0qs=;
        b=V1vPtrEPfxFTHMO4JSU7KbHv9hEbdm3cMSTOzpKmaEfW0vOSAJ4HHWT80c0lGEdbPz
         D0POdAaMUV6xfg3EGK0iMxySTvq0JVcche29vOROA9UIHxYXdLN262U7HzjdmB9WhrV1
         cR7H2yuU3AS6Yz+nswZEigAyq7/iGImevm36Jhc8CJS3C0M5kKZFQduAc6ioTwLsozsE
         JQISops1BeZmXoX7yzozG88YfPC06gpfBrzj+sgK9U+iACKVmfvYiF5f540RHQ++/cvi
         y6bFg9IjjIupCP7kKRbDE1XAsP9KdcB6eRYOKVThZ+bcsFTb1FN5LQiYXC7igJf66xye
         cFvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532U7W3oiTFMYILsrFS1TTcNrno9e38ewwNZB4oAK3nIeRol85bH
	Tsp5pgoK4krZVlj99/T3gMM=
X-Google-Smtp-Source: ABdhPJzpH8sTD4nZx63lqnhEaaUjlUby6sTrQj+8cs0RVkRWj2veSSNsTRQwLi2A1eWCNOJawGYhdA==
X-Received: by 2002:a4a:e2d7:: with SMTP id l23mr9495918oot.67.1610738923023;
        Fri, 15 Jan 2021 11:28:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls2554639otn.1.gmail; Fri, 15 Jan
 2021 11:28:42 -0800 (PST)
X-Received: by 2002:a9d:2248:: with SMTP id o66mr9457673ota.236.1610738922647;
        Fri, 15 Jan 2021 11:28:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610738922; cv=none;
        d=google.com; s=arc-20160816;
        b=vMd0Jm2N9SnW7xGWHubeM1xXd4PIqk2QzsdPwmi4eFeyrdJCnDUoFuX68FjrB+ILrj
         jpdy3ikGYxNdGVszBqTkXUiDoUKbwCspr1MNSTzX4Kbln4W0eSLpUdcd6cEi4MElN4Ci
         r3sZLs8SbCMwsJcin3sr3Q9BM43u7AJrE024tMyLvY5m0eTLYdpjppkIkju2sM1oeDxp
         xXWwaiu06E4tue45cPaozJG47aTH13dUn2xBYi9FzdQi+Cu6SVNOWqqYSc+v2tZXGeR6
         vIG6NgSWTuHwWh5EcSM5d8rLvSZoRATwllCoQKvS/8XNZXlve7uQWRR4uogBuYyn6idi
         5U7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9L8f/VSlWhMvWlsqTvqtVSbWxu6uLg0mO+eInY55OoY=;
        b=uJEUFM2+Nr65x+0rMnT9i7QqBETV3bJHa40pMnOzaI2EhDB9VWNT4aauYZcMoHUxqu
         i76n60L2Lh00evNyuv9/SfFNzTX1+B7oofbdeap+Ww1B2h95nbYjRzO784VTQB1z5ZzG
         qMMZOLInFYNo9Il0RTWLBuYFFnZPamyBFDMJUXSROghgcmcv/GHjIuwvOvpPDRzt0hqL
         Y0zrzTgzVHDAPJDfElw/wryhnj0FpKyQm6+fNtlBv+g1gHBDCSjm4QII0ZBWBAfUbnFO
         Xi0MWfzF71d8AwncIz3b/vX4F+ORY7XIKqqw/bsQOmZQKwQd2qK/PWOGVlWEeTYWSlkM
         /aEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BeA8Q/Bl";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u25si785795oic.0.2021.01.15.11.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:28:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-423-C_VcrnmtOYC_tEVxj5nSKA-1; Fri, 15 Jan 2021 14:28:38 -0500
X-MC-Unique: C_VcrnmtOYC_tEVxj5nSKA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82D561842142;
	Fri, 15 Jan 2021 19:28:36 +0000 (UTC)
Received: from treble (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FF0D19C71;
	Fri, 15 Jan 2021 19:28:31 +0000 (UTC)
Date: Fri, 15 Jan 2021 13:28:27 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
Message-ID: <20210115192827.d6qsfgegp7fsfn7j@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
 <CA+icZUVc0M3Ydf=SKSV2MhDmdb49nGSrN-9TjYvjL25vmDHaeQ@mail.gmail.com>
 <CA+icZUUzN96qSudFCJETNAu6-cq1NKfgngh1PM7nxv=FUPuVBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUzN96qSudFCJETNAu6-cq1NKfgngh1PM7nxv=FUPuVBQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="BeA8Q/Bl";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, Jan 15, 2021 at 07:54:29PM +0100, Sedat Dilek wrote:
> > > I tried this series on top of clang-cfi and it segfaults here.
> > >
> > > + info OBJTOOL vmlinux.o
> > > + [  != silent_ ]
> > > + printf   %-7s %s\n OBJTOOL vmlinux.o
> > >  OBJTOOL vmlinux.o
> > > + tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
> > > --no-fp --no-unreachable --retpoline --uaccess vmlinux.o
> > > Segmentation fault
> > > + on_exit
> > > + [ 139 -ne 0 ]
> > > + cleanup
> > > + rm -f .btf.*
> > > + rm -f .tmp_System.map
> > > + rm -f .tmp_initcalls.lds
> > > + rm -f .tmp_symversions.lds
> > > + rm -f .tmp_vmlinux*
> > > + rm -f System.map
> > > + rm -f vmlinux
> > > + rm -f vmlinux.o
> > > make[3]: *** [Makefile:1213: vmlinux] Error 139
> > >
> >
> > I re-tried with the latest clang-lto Git and switched to Debian's LLVM-11.0.1.
> > This build was successful.
> > No objtool-vmlinux warnings observed.
> >
> > In the next step I try with my selfmade LLVM-11.1.0-rc1 (to see if it's broken).
> >
> 
> Good, my selfmade LLVM-11.1.0-rc1 is not broken with clang-lto.
> 
> + info OBJTOOL vmlinux.o
> + [  != silent_ ]
> + printf   %-7s %s\n OBJTOOL vmlinux.o
>  OBJTOOL vmlinux.o
> + tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
> --no-fp --no-unreachable --retpoline --uaccess vmlinux.o
> + make -f ./scripts/Makefile.modpost MODPOST_VMLINUX=1
>  scripts/mod/modpost -m    -o vmlinux.symvers vmlinux.o
> + info MODINFO modules.builtin.modinfo
> 
> Josh and Sami, any idea what's going on with clang-cfi an this patchset?

No idea, I haven't seen this.  Are you still able to recreate?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115192827.d6qsfgegp7fsfn7j%40treble.
