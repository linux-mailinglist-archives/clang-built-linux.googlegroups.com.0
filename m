Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFPQWT3AKGQEOO6IEBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id F076E1E259C
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:39:02 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k15sf20932998ybt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:39:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590507542; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNdlBqxnpZLm+4iE/mhR0YOeQg6p/VzIj4AGOSv4q2Bfo3co7mnfZORi2sGj9g8uh+
         ld3MGvE6dIUY1k4fccqfKpcP3d38777bgJWp0QuFKhE7FzDOCfmER2RM3aJEuraeuD/H
         Yoly9NPx0YQ4foH0GxgGA1lljVuygaoonfuEfsM4RkJJk3+qXFhtLz9U9HywJAHHAHEh
         hwfFKi/1FdAns4+xZMOu7RqBzuSDqrLGheI9MMvD1PlPye7wRAYC16NSfsUkX49ehKhg
         WW0Rm+W0+7RxYmABZYhfbSfXszQoQUUPS3Ap/NGTfHX+r84YVEQkqrhxvXEZpERYH6vU
         taIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dOpBq4wiPxwM+m21qAUUekaqRyPwpthE0MNVMGfLz9I=;
        b=jTKE52tcPvkajtf5+IxH2EOlpWNY/HcPOa66jB2lgZ96bp1jo8pskzM/wyZjcwgbGb
         qT8uD5VxtrEJ4rKqdOTubhiTU5ywsWNVMpzPBFt13MPXXLU8tvQjWU95OB63ydi4LZ8I
         C4b/YnuOYHgwUloY7ji8eEw2hSK9+07hCfu2auipnn7+ZK8nCpmBXvTA97Hou1/oyyW1
         ogh2FVgQdaadSFIOTv3ZkQBPZsMLniDw1bw+EvRgi+HyFdBdmeBdIE1cHqp25IHrXTRW
         ezoYZoxRMjF64ZeE761WZ657YrdqCnuKjy+TrCyvp7mE0WB1TE1jTYgCYFtnD/wJu8Bp
         PgVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtxbLmei;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dOpBq4wiPxwM+m21qAUUekaqRyPwpthE0MNVMGfLz9I=;
        b=XOT4CXieeCSb7M7NKkxzXocNz2zkCa2pv5bTuaWPcv8JG9ecjyV6xqYM34kCf86HIb
         cgOjmJT7G92CNaHtDKepfUPFS6XLAhE4SLsjcIaUgm3C8BZAoRkjiQIZQC+OfOi1aTFP
         kaklW3uBuX29yzxfrqtshfAkcD1GqTcXlvqFcedU+/SCrED3xt+G3JaBu64D2DCL1WtL
         iCOjPNdTGr+9P1rx/Sc7jpk3RM4XAp28NfjbE9nUjME29JXOPE3b1fguCwQpq0+m05/l
         rX9OZ7iRyoMNkJS8sEcQKmZGmDxorGVFYrCLtf18AdyGRkPbfFPkGqiQP0dslR4zXHQF
         fsPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dOpBq4wiPxwM+m21qAUUekaqRyPwpthE0MNVMGfLz9I=;
        b=ibBve0RpyEyvMOmhxqpNtDkJHovw/M8e+GJXuxsQy1qQguodiyy1dnCEkrrpY3/laV
         uQFEo5BImvjVRMjWElkrI72fmiryhKGRNJhpVvBuyA6jDPSz9vn8+skIuHfJ2pQrGmLj
         dF0vhDEmPau/vHGuxG6pgdW8VTs3QWZ1NMkGFdEbiP0mGE0QwbVojbdNgB1zOT+MhdRj
         rArs554OFUKQ7Dj2Tuwmn1ZmnkehGjPgeEDw2L62Y/CDcPHE6v8KGyB4Q2zJsNcBUsH3
         s4BLCa7cqYf3phDYUqFNG+FoTogPzSjUo9fojqDRIp6+iloloQx1l/JkR2++2LW3okPi
         6bKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dOpBq4wiPxwM+m21qAUUekaqRyPwpthE0MNVMGfLz9I=;
        b=XnCBwzT/lnKxs08u47eDKEezefVomO9L6eTiSO+fpMPTkc0VS0fAQBwza+EpmT/ipk
         25QzDOKiHbZbLhcxfwv5RsnIw/tQrqL5Rsz6j8X5H5MPm2ZVAmLhp0Fs2uMRu06s7s6E
         5ThOgDaLC/vstFG3ucLPy2su73BIu1WAwIXmcvNp8yJsuxY12a11mvAMAecox4UFZk91
         FEjAEFCr9HOEuM0ldSo5q7QCUURmnDwv7Bi7Ne8JmWhMBW51A4O/mt04ZAnw/te+EWAQ
         Gpf+vAB6nHfH6wBNjjkmfudDfYULU9zjHz0oEadulzlcKl7iO3Mm6YdwzPCC1ROgmXk/
         9Ypg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Lk2VqW0RmTh+kuZJYZ6oZO/aKPUS/+nHoXs/63veq5I5DaV/X
	K5z6sS+1UFbWTCKqqI0QBpE=
X-Google-Smtp-Source: ABdhPJwvASiKUFBLOsYLcRkeH5wDQT1hEDNzh/n95Do3Eqnu58F1CIi3Ait3D3gpnGQ6D+ChRgxJTw==
X-Received: by 2002:a25:1b87:: with SMTP id b129mr2833632ybb.445.1590507542048;
        Tue, 26 May 2020 08:39:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:88:: with SMTP id 130ls4288573yba.0.gmail; Tue, 26 May
 2020 08:39:01 -0700 (PDT)
X-Received: by 2002:a25:6f82:: with SMTP id k124mr2734409ybc.74.1590507541686;
        Tue, 26 May 2020 08:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590507541; cv=none;
        d=google.com; s=arc-20160816;
        b=iDyDCAa7ag5QMaskN/KAX4Oo9muI2A2ZmnelBGF2hSAPkPvAhLOGAvVASXHjrtPImA
         yypX5NtPsUpVEUyK/jRd+DUXhmzsLc1Cn4ajwRTpMlZ3zZg8HCk/jTe/tUeUGUPfdonv
         spxb/la4hv4JFy+PjwXgggGfaOVTM54msoiNuJdXrEaiISGPm8kebu2TYT7/vUvonEVI
         4sltylr9SGl6bkFZN1ST/m72uKvmHVR7CRf5dDqQB2iq9XKgLJ1Vu0/724K6BnTV2Xnx
         GB/qeZIEmwb0POad6/gAULQU+EvbGilCdxESP7WAfbr2HsAd7ZED9gmnw07bYfA5FdhT
         1InQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4ZIKnaG5waGw7rdcggFZ4Qkg+MYDijQCP6NqwMYy6bU=;
        b=uRKuiCVYKyaeSsOqlvEgWArCpeMVKjc7fVZFl/H0wpyTFH55bL3RtHqGqEY0TNwhIN
         ry5q1wPeaOoeXejGIGJtm7RPeWVKA0lrI8cvGyJwfTjA4YxAjfC7P5VqLog+MyrEGgSt
         l4kRFUoP4Mf+NNTLxx/Wbzjg7ctXizP2NyIugsSQyJqurW0EnJwj7JsgysbIQ7jTwdkF
         /4IMhJJRu0WCTro+9f4hPK79W7HOJy6Gcnib7c2DsPrBguF64QREXsoEcy0hPend4uNo
         NN2zWMKNmwnf+KEnbnNGNkCrvkNGLvXmMdM9FUBWpn8UuA1fZoZqvIl1feRhiGT/LdPM
         hOqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtxbLmei;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id a83si14525yba.1.2020.05.26.08.39.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id c8so2105268iob.6
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:39:01 -0700 (PDT)
X-Received: by 2002:a05:6602:2f06:: with SMTP id q6mr17415978iow.135.1590507541222;
 Tue, 26 May 2020 08:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <20200526144748.GA2190602@rani.riverdale.lan> <CA+icZUUY7a5XGwcQQ511OeoTjOzWbrgF8BZdTrLDK09QWG4hwQ@mail.gmail.com>
 <20200526153636.GD2190602@rani.riverdale.lan>
In-Reply-To: <20200526153636.GD2190602@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 17:38:50 +0200
Message-ID: <CA+icZUUtdT+zV7Y9LM9qRxUSVPuOsf2EQMToLdF-fwrageWpKA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HtxbLmei;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 5:36 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, May 26, 2020 at 04:50:38PM +0200, Sedat Dilek wrote:
> > On Tue, May 26, 2020 at 4:47 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, May 26, 2020 at 02:44:29PM +0200, Sedat Dilek wrote:
> > > >
> > > > Are those diffs correct when using "x86/boot: Correct relocation
> > > > destination on old linkers"?
> > > >
> > >
> > > It looks ok, but that patch (and even marking the other symbols .hidden)
> > > should be unnecessary after this series.
> >
> > You mean _bss, _ebss and _end?
> >
> > - Sedat -
>
> Yes. Those .hidden markings are there to ensure that when relocations
> are generated (as they are currently), they're generated as
> R_386_RELATIVE (which uses B+A calculation, with A being the link-time
> virtual address of the symbol, and stored in the relocation field)
> rather than R_386_32 (which uses S+A calculation, and so doesn't work
> without runtime processing). After this patchset there aren't any
> relocations, so while the .hidden markings won't hurt, they won't be
> necessary either.
>

So, I am here on Debian/testing AMD64.

How can I test the patchset worked correctly?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUtdT%2BzV7Y9LM9qRxUSVPuOsf2EQMToLdF-fwrageWpKA%40mail.gmail.com.
