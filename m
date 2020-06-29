Return-Path: <clang-built-linux+bncBCS7XUWOUULBB47U5H3QKGQEE7BX62I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC25D20E95D
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 01:34:12 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id x2sf4798265ila.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:34:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593473651; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1LBLHI695VnpCA+S74BkbpPb2vVWewdyBS8dGFjWl/fG0Ro4dvLWn0BZjqKwo2c8Z
         qMsTJFrFhrAQY7svmVi8j+FvkXPSiybt+nTgLPwFPYrvjOix0UfKBIYC7WJSriY+gaiJ
         pIEiiMmekxzEduLeAQNSoefq0aQLqOAAjX7doY88P1ek09yj+nc5IuJQh5uTkflzY6K+
         9MrakfL35Nva9qC0B+s2Q/gMYKHOWsSvq1CPa92y9JB9rNWtQNbX4CkCiDpyMCPmSDw9
         PdO9jFLejmsYah/QTvaUJ6UjOvKdes+3QN4Q9gKDGXTmiJ4H8A4xbTPCVLcI59jxHGZN
         xxFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jxId3KbapOJcStIdF/ygsTCrG3gqeFhm9pM8VlBif/A=;
        b=kse3HoXY6VyyMlTw9srYaOSTczcMiBSIzSsUKSswsmUUxNSCa4jeFOXBlnAbSbZ2Xb
         NXbtYe1YUc0ReE4+ceCMd5w3Y0r2DxiVYWYuqZ6OOdD5QnUvgN8e25yEXXgARdUV82N7
         +GgrDO50Gw+CuTkwVdk2hpT+xOKZCsqH66eD4lFXFJVHTdyxjEyP0QnVApLPa4li77cr
         GPvkikd6sBXh0u5mIap6sRdZXzszShXoIU2wgSNudOpdF8CARxntMeFCZTznmCs27ktg
         2NcRU4jv4JUykvEey3sjYLw/4u5T71pd5wpeciXEUaL0E8ZvRRghQNzJsv2WgC4A1WjV
         ekLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O8CsQx6q;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jxId3KbapOJcStIdF/ygsTCrG3gqeFhm9pM8VlBif/A=;
        b=CNfTVDJBI7O00DLwTHBga0JGd4zYPn1Z/RQ3qBGqDxftIIK7Iv4EitZKfp7+K1clWs
         urm+E7CUlO8Q0MpKNZjMemyzUXTWvSXT9zLm4C4rcBPVMCNjcTEoFpYN26hDyVg4fCKD
         SPakQlzKG6fhxsvdm6PZzlUKkQ6vskxbHx+ZjrB4og81Q5DSwkTSXvLz29YoO9DqtKbN
         5RSlmsdaEwktzDrECJaneJIaIu38LeW5Bqzm1hYhoa+1tsyYXeoquAW1T8G9DbwafVOU
         VuTZ3k7IwW1pabNJYbx5JxAX2IoLuGD4u9Cjlds3G6r8CZpPbJqNhlr35Kx3a0wKOpDH
         7aAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxId3KbapOJcStIdF/ygsTCrG3gqeFhm9pM8VlBif/A=;
        b=qEN+JjJQUO7K1kLnqh1AGmDQwM9jgsb1aBvP43MH2wRb7JduFD3KWtU/vVn6Yd6NOz
         NFkDz+j6mP4/M3l5GzA6I9+U+xuhEkHcGb61BVPMWi6hbIUjXNSHHPkXyqdlr63va4wf
         jPRnSIDiN5LIVCICh6tSPrWhNF9P5zcfOFL4hgiCaw6eB78YShhXbUxJeQBb33jTU6SG
         /9EVP7zVieiXsGsRF8QnGZdQU65GMOMKqhXeV5nUCA+nKOagCQsWCR+CLmMbkCLW8Vxr
         MlQDpwHQwHfc7EN4XovWSDIuspe0AHkuu3QixReCtEVi5N93cL/O0rN3gImUdwCnor9Q
         BQAQ==
X-Gm-Message-State: AOAM532pybJ9s/hxSO+JAw65b6SAkMHLvlN80IZA2aQUON5FlV39+8G2
	Yvt/HtmFuHdrbzemtyPrzi0=
X-Google-Smtp-Source: ABdhPJzUUDDONbJi541jbWUxwUv6NPsdvmZI7kdMdqD2y8kh68c1kfMdYOmOQz6LC9pP2Bm0bHLPBQ==
X-Received: by 2002:a05:6638:1483:: with SMTP id j3mr20712924jak.65.1593473651704;
        Mon, 29 Jun 2020 16:34:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:e54:: with SMTP id l20ls1955435ilk.0.gmail; Mon, 29
 Jun 2020 16:34:11 -0700 (PDT)
X-Received: by 2002:a05:6e02:eb3:: with SMTP id u19mr18998698ilj.130.1593473651366;
        Mon, 29 Jun 2020 16:34:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593473651; cv=none;
        d=google.com; s=arc-20160816;
        b=IwlPuExwDWo3OLyOj7/cuUMCrCmVnokghUcPCMMfTj066SSU5JuavLTOrm/MX7Xjl3
         Z5MHMW5LOGJUDk7YZlt5q9FbP9PYBNtQrpkx/tc0sbYhoVu6BK8Dh0ybR//SvvRr5lkf
         NrFRTQu0ngSQv6tQCI5ZUslM6PKYkFzo32Z4dTmE3fu8QXon2vfCRfkIug93tyAL2C3E
         4FclMdOK89yWjfNemhl5JjHe4sjdCB9pITEi9K8x137S9HyOV2cP0Gu6bFn/MD9/lUJo
         cPeXt2Ba0TnNumRaTA+Cl2imz1x1LpM8Tir6INjHDSnInN0Cmct5g3HmnUBlQouP2vjS
         vSwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5f9mb9YPg6OjmB0FalT+YWZSWHeNIR0BJDsRMM1Osec=;
        b=xG885VdeV4D1S9GZCM8ij3I8sT7Lyuv6wLfIRC8pUvKe/WNFVHwbSSoTxUFVK/Py7o
         Klo5JcG6ElWn8olxAZyZsNKHOU2oS5/HTMVQreu8rOWZ9X1zonyoUgbDDsx0zJkK9JnY
         1Qn4l7FmGTavu0aGSnGOtMLOkf2cLKFJa4ZBT0ZLMwMGYMWWOpgG8/8rq2y1w/SALTe6
         9XQtR4Yop3k469+2RoumyKAZWx0AFCm+mjnOhUAknflw+OiZHMsGbosiu+HR0A+6kD0r
         +P4jyjr6ZGRTRb5HeRSn/pKCoZCbxzGQX7zrXQpJ0sNnrXX8AOCldi6uVzx467AhI2N8
         Skog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O8CsQx6q;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p1si120379ioh.3.2020.06.29.16.34.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 16:34:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id f9so8581803pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 16:34:11 -0700 (PDT)
X-Received: by 2002:a63:5a17:: with SMTP id o23mr12507469pgb.218.1593473650486;
        Mon, 29 Jun 2020 16:34:10 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id d16sm645765pfo.156.2020.06.29.16.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 16:34:09 -0700 (PDT)
Date: Mon, 29 Jun 2020 16:34:05 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200629233405.n56yb4xwlgxrt3fn@google.com>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
 <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O8CsQx6q;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-06-29, Ard Biesheuvel wrote:
>On Mon, 29 Jun 2020 at 19:37, Fangrui Song <maskray@google.com> wrote:
>>
>> On 2020-06-29, Arvind Sankar wrote:
>> >On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
>> >> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
>> >> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
>> >> > >
>> >> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
>> >> > > > Add a linker script check that there are no runtime relocations, and
>> >> > > > remove the old one that tries to check via looking for specially-named
>> >> > > > sections in the object files.
>> >> > > >
>> >> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
>> >> > > > are available in all supported gcc and binutils versions (as well as
>> >> > > > clang and lld).
>> >> > > >
>> >> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> >> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>> >> > > > Reviewed-by: Fangrui Song <maskray@google.com>
>> >> > > > ---
>> >> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>> >> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
>> >> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
>> >> > >
>> >> > > Reviewed-by: Kees Cook <keescook@chromium.org>
>> >> > >
>> >> > > question below ...
>> >> > >
>> >> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> >> > > > index a4a4a59a2628..a78510046eec 100644
>> >> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> >> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> >> > > > @@ -42,6 +42,12 @@ SECTIONS
>> >> > > >               *(.rodata.*)
>> >> > > >               _erodata = . ;
>> >> > > >       }
>> >> > > > +     .rel.dyn : {
>> >> > > > +             *(.rel.*)
>> >> > > > +     }
>> >> > > > +     .rela.dyn : {
>> >> > > > +             *(.rela.*)
>> >> > > > +     }
>> >> > > >       .got : {
>> >> > > >               *(.got)
>> >> > > >       }
>> >> > >
>> >> > > Should these be marked (INFO) as well?
>> >> > >
>> >> >
>> >> > Given that sections marked as (INFO) will still be emitted into the
>> >> > ELF image, it does not really make a difference to do this for zero
>> >> > sized sections.
>> >>
>> >> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
>> >> you said was not allocated. So, disk space used for the .got.plt case,
>> >> but not memory space used. Sorry for the confusion!
>> >>
>> >> -Kees
>>
>> About output section type (INFO):
>> https://sourceware.org/binutils/docs/ld/Output-Section-Type.html#Output-Section-Type
>> says "These type names are supported for backward compatibility, and are
>> rarely used."
>>
>> If all input section don't have the SHF_ALLOC flag, the output section
>> will not have this flag as well. This type is not useful...
>>
>> If .got and .got.plt were used, they should be considered dynamic
>> relocations which should be part of the loadable image. So they should
>> have the SHF_ALLOC flag. (INFO) will not be applicable anyway.
>>
>
>I don't care deeply either way, but Kees indicated that he would like
>to get rid of the 24 bytes of .got.plt magic entries that we have no
>need for.
>
>In fact, a lot of this mangling is caused by the fact that the linker
>is creating a relocatable binary, and assumes that it is a hosted
>binary that is loaded by a dynamic loader. It would actually be much
>better if the compiler and linker would take -ffreestanding into
>account, and suppress GOT entries, PLTs, dynamic program headers for
>shared libraries altogether.

Linkers (GNU ld and LLD) don't create .got or .got.plt just because the linker
command line has -pie or -shared.  They create .got or .got.plt if there are
specific needs.

For .got.plt, if there is (1) any .plt/.iplt entry, (2) any .got.plt based
relocation (e.g. R_X86_64_GOTPC32 on x86-64), or (3) if _GLOBAL_OFFSET_TABLE_ is
referenced, .got.plt will be created (both GNU ld and LLD) with usually 3
entries (for ld.so purposes).

If (1) is not satisfied, the created .got.plt is just served as an anchor for
things that want to reference (the distance from GOT base to some point). The
linker will still reserve 3 words but the words are likely not needed.

I don't think there is a specific need for another option to teach the linker
(GNU ld or LLD) that this is a kernel link.  For -ffreestanding builds, cc
-static (ld -no-pie))/-static-pie (-pie) already work quite well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629233405.n56yb4xwlgxrt3fn%40google.com.
