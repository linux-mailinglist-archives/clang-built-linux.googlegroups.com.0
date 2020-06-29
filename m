Return-Path: <clang-built-linux+bncBD63HSEZTUIBB4O55D3QKGQEC73OAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B9920D085
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:12:03 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id h93sf14276214pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593454321; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNgMRgjsbCfjTNIIgoOS8hpFMwzF8WXdUU2yeIewB5+PFrfY/4OwqTgn3v2ljd/8iy
         KmoCwL55oh8SBKeLBLax0744wGkiOnqbhyuWSbQV4ienHHAQLu/OVvp+noW/C78MZwiH
         Qd1wpUra8VVFXlPdFgegLYwQsRaCC0yn0O/C0ZHQiVGsvUqjKLcSy+NljCA6j9XrtEMp
         MUfmoerDAnz6lsdaqaXJAtocaPgEPpya8S6oNZYZ4+ArfEl1tAcZa/HB6+S1UBk2x9i/
         U3v3PQ7j5BgQfOk3/kBqTfaLS03yUfaxKFS4WyOrjpUK8Wd5s57CUYA8H+ZcUm1hSyqK
         hGCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ysQ4cfFqFm2sSjIZ4a3Ut9VCjbjitP3hhUvlLqPvwUw=;
        b=XmFilYHKvUfE2lOEeIv+fTKnPs5UGD9fXE393Gkb8mmUqdRIRkGNvmM7I3MxwQ3Eoq
         5ow/gayEaC4dNNuNXdvMcwxfULZ9/Q9WPRHjHk+nlBmFYkBgkO050AInY3cuDQ1N64p5
         jW/heBrCAVBC0UNGiGkWqfcmGYtzvtwRcRymZ4RHHJwSevPVPKwgT4sDK0d1OFXmVRpN
         RAkEaOZDLxFA49zGpsdJlw+TsMbol76j/tu1zqFXMbFmdeDk0Ipjsc6QXjALoAc2MN+n
         3P3nAAjtSr8o2iJ04Qknuyo3pQLs7KAOVYi5c19MGQQ7SkDB4ixByKUF2339zTsm7vdm
         vZ9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DiNV0rrk;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ysQ4cfFqFm2sSjIZ4a3Ut9VCjbjitP3hhUvlLqPvwUw=;
        b=R//6ICEPnrFz1Vu0z/MaTjAUE1PiNuDQq6ty/mmk0TRvhQC7Z+nrjihcY23Ma4U7SO
         yy/70ZFB4KRmB4DhrDsg+9LqBYc0JpZQKoElD5jifXVz4T6w+594khAM/emm2HRX/Mb9
         E2U9PAL5/CqKnKWq3k7oiTqB5xgzYvVhjVlcjQK2vbu2Bqc09JJph0WBjlm4+nh2WXpF
         R30XQdLex6vJ56T64FEV/7fuw9wYuQQpfwQQx1ucO2gdLC21KFNu7MqbjA0P+mpTeXnH
         Pn5oY3R345vhjWObvdUbUi9R4sFggKJ9ZXe9m/fhbuhJN2zkJyVtfLU/tP33UhEm+Nq8
         Lwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ysQ4cfFqFm2sSjIZ4a3Ut9VCjbjitP3hhUvlLqPvwUw=;
        b=EvrRSRXHg6nWZgMnw4BRQ72sGle2+GmRPItW6mJvIdRc8a5fQL3qqbNR2D9iyoTjBX
         qQU+KoZGzp+Fv+Sn3AuU596WgxIpvDTzVwWvHgZweD3s77Gns3vjwWwat1TPglun8Dcr
         qL9oSGI4TjPdlH8aYQv+db9cnebEbacaNY9oEKyTB+/TOskvaHVkDjsoMl/5JL0Z0tU3
         1O1xozaW2sAyGpwghst19dZ+5cTb0gysQV/OJcUuDWHyoNAvBlFGwSgVV8GJe0AsMu+u
         t70Ila/mc0c751O/hn1i2xB3Kqhp2f3LRpez13QS7as6bgcOiPVmk1vxZn097mFCJvqu
         lvmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PZs5xGGJblYJu1AQIX+CvX4vORVQArjizs0I8yEr1RM47k6m8
	TsXVgI4qUQtRg4Io2G38+Ko=
X-Google-Smtp-Source: ABdhPJxoFW8TY2VDHEk1OnrCgFtxJ1rKjGUq3HR7nxF4f72xai/dBl0q0PyYP/AKN3lFo5wNKmDNOg==
X-Received: by 2002:a17:902:9f84:: with SMTP id g4mr14707452plq.146.1593454321621;
        Mon, 29 Jun 2020 11:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls4746669pgf.6.gmail; Mon, 29 Jun
 2020 11:12:01 -0700 (PDT)
X-Received: by 2002:a62:404:: with SMTP id 4mr16147299pfe.133.1593454321248;
        Mon, 29 Jun 2020 11:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593454321; cv=none;
        d=google.com; s=arc-20160816;
        b=IQltCpjElIXmSeJPsubK/O+WX/RdbGQnnFyh/22CGHWDlXsxzS9dafjwLN87Rx2Xkq
         t89nJPiZR4ibKqoJOza+eknGjHb4OhNWQtsPgOpQiGryqzVgs+W235P7YSzn/zyroGvg
         BLZrnpD7nvi8G5o8qqnp15klDCMbnk3eGUdshcv4nGSXGbSAMphYQF86EJ+9plh9fBeR
         8ly0HCAXOmCw/wS//SXlOtNARHvx71T4XMjVKwmR3I/ePQs28/rfV0uW8WC+Y32pCdNZ
         TjPc/6Vc+LEp0kihlxOqb+vWYcmkoN1/uaJjniej8J2QzQwtl460/RF0RAC4YJyOiiHj
         4dyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XPqVKxCTxbefqR5O5kGm6jHUHovR95wFNbmfjLVaZJo=;
        b=eRpRbxsUp/ouTw/NzbrznsE0l1vCNWJg/KShjG6xu3En1Z1lOJf0SwwWErrrgHBslw
         nyvp1nQTr66o20wvBPBTVqeEEESAF2XIuVPSI/4h0mZlkz2rjke8kfHoOeVlV7veeAf5
         MgchvdWEfCDw2MnHFCIDibzw8uEOmQcKEWN+Qde9tp01JRL+x5Cw5NjQTipCy/atXhim
         /7WnazzKxatueeiVMWXXuB9Lh7Bco5u4qIycAyMOKc9MbfryKw4EGg9J8gWyz0jPrg8i
         OpeNQ4VWjqkcYbTPEvTDaIhQqQuJX0lEOsqjJZe6aWf+AqjZ8VP2PdXUXne+BfSxyJXe
         NhqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=DiNV0rrk;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y20si16551plb.2.2020.06.29.11.12.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D0B80255CF
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 18:12:00 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id t18so3553123otq.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:12:00 -0700 (PDT)
X-Received: by 2002:a9d:4a8f:: with SMTP id i15mr15291584otf.77.1593454320102;
 Mon, 29 Jun 2020 11:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu> <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook> <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
In-Reply-To: <20200629173735.l3ssrj7m3q5swfup@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jun 2020 20:11:49 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
Message-ID: <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime relocations
To: Fangrui Song <maskray@google.com>
Cc: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=DiNV0rrk;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 29 Jun 2020 at 19:37, Fangrui Song <maskray@google.com> wrote:
>
> On 2020-06-29, Arvind Sankar wrote:
> >On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
> >> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> >> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> >> > >
> >> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> >> > > > Add a linker script check that there are no runtime relocations, and
> >> > > > remove the old one that tries to check via looking for specially-named
> >> > > > sections in the object files.
> >> > > >
> >> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
> >> > > > are available in all supported gcc and binutils versions (as well as
> >> > > > clang and lld).
> >> > > >
> >> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> >> > > > Reviewed-by: Fangrui Song <maskray@google.com>
> >> > > > ---
> >> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> >> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> >> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
> >> > >
> >> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> >> > >
> >> > > question below ...
> >> > >
> >> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> >> > > > index a4a4a59a2628..a78510046eec 100644
> >> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> >> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> >> > > > @@ -42,6 +42,12 @@ SECTIONS
> >> > > >               *(.rodata.*)
> >> > > >               _erodata = . ;
> >> > > >       }
> >> > > > +     .rel.dyn : {
> >> > > > +             *(.rel.*)
> >> > > > +     }
> >> > > > +     .rela.dyn : {
> >> > > > +             *(.rela.*)
> >> > > > +     }
> >> > > >       .got : {
> >> > > >               *(.got)
> >> > > >       }
> >> > >
> >> > > Should these be marked (INFO) as well?
> >> > >
> >> >
> >> > Given that sections marked as (INFO) will still be emitted into the
> >> > ELF image, it does not really make a difference to do this for zero
> >> > sized sections.
> >>
> >> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
> >> you said was not allocated. So, disk space used for the .got.plt case,
> >> but not memory space used. Sorry for the confusion!
> >>
> >> -Kees
>
> About output section type (INFO):
> https://sourceware.org/binutils/docs/ld/Output-Section-Type.html#Output-Section-Type
> says "These type names are supported for backward compatibility, and are
> rarely used."
>
> If all input section don't have the SHF_ALLOC flag, the output section
> will not have this flag as well. This type is not useful...
>
> If .got and .got.plt were used, they should be considered dynamic
> relocations which should be part of the loadable image. So they should
> have the SHF_ALLOC flag. (INFO) will not be applicable anyway.
>

I don't care deeply either way, but Kees indicated that he would like
to get rid of the 24 bytes of .got.plt magic entries that we have no
need for.

In fact, a lot of this mangling is caused by the fact that the linker
is creating a relocatable binary, and assumes that it is a hosted
binary that is loaded by a dynamic loader. It would actually be much
better if the compiler and linker would take -ffreestanding into
account, and suppress GOT entries, PLTs, dynamic program headers for
shared libraries altogether.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHaXzYFkW_H%3Dw36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA%40mail.gmail.com.
