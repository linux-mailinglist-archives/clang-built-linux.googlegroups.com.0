Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRXLW74AKGQEPIIMSYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B3021F8D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:13:27 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l12sf10149700qvu.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:13:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594750406; cv=pass;
        d=google.com; s=arc-20160816;
        b=nc87bQylaCO8MsRFSEqoEBjGBvy8bKtYwBUbSllI4Ep8+MV8xMA9TJR3orCEyg8cQN
         RZgPZZv7DNQj99BivXlx4joN53OykLoQ1dxekkUZlUj1e0DqcFI0dejzTl+iuWpZRI28
         U0nf5Ji/bjgwUzHbwmRp8T6EWrt9UcJQV3MY7P3NFl1iH48zyzPMsO2NtDsTF7AUuoA6
         uKfd2Opk8Q2h0oIbOUYJOnjfJiwpP6s7DoeYIju30Vh0gBs6XH0i4IHmaEOp8h+iO65K
         3JY38kx57i3qVPxQPQy4c4YDIV2qB/RcKuCpHrUPN4MkRXTv4ZpSBaX5yLeSw6H3WsAg
         3+7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0aETpnjJk/2hCNZzQz61uaHQhAdJBDwy/NfrTSHV+d8=;
        b=FvOV6ItmUJsAiW4U5LLaKPUZPyJHsil/RCF8fhSQ31AaDjvuqQWIIg5+ZN5w1UclJD
         9xByQswdPRGdjDZLppoIFnd483vGaHZqDE8d4kB5XTjKPrEqiV8oiTM3iQUk+yfRGjfV
         3eEzJoX6sJs7hMzd1woods3mBjw9gH0qPRR60JPJWU3PcHnvZy1qa5+Pacj55r1PDGIw
         zGs0WSGD5KS8Kqb+XPI+9izKixc0pM03X3N/7VwNTqlt0ID2Aprqp13MxdQcUftIuF8I
         8WVx0FZghCXW+fE7KK0KC1lcaDDoqJY0Epc2S1RC7P9ES+LD6o0Bjb8PUwH7NK3b3GYz
         ErHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XnYy2yXl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0aETpnjJk/2hCNZzQz61uaHQhAdJBDwy/NfrTSHV+d8=;
        b=ojI9dipbX8IkLzRqTJDv3kKmanoEke+B7xOUxFNyJqcVcLmsNggat9HhW36WqPZOPz
         uIq4/2mH2geOAfYrbJm3kpYIrb9YQYSKLblt3pUZg4qGz1KRzacPwQMEvLiRbMKno+pP
         LiOKc+IZu8Hehtf7cUAyimU71nfXDEQnQKPQ9akwi1U1U9fxf/yVv6NwAYWUTGXCsnqi
         Ls1dBs5JXQNa9hsEfVR1C2exjtlELSonuoJxWH2JHCzRQVwMg5jNjPPflnjVtYlo9tYh
         D6TzPtpGNwZ747Vttumdf+nIjPchim8g1XGiSbA1xF549JbSVrijmqfmBKgek8Hrbi7B
         tpaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aETpnjJk/2hCNZzQz61uaHQhAdJBDwy/NfrTSHV+d8=;
        b=RUepBusJcgaiVmFntxXqVMYefOYo5q8matSOHxenmFIyJEql3E+p0XeCz7bcwhTy4H
         7jqnDGDRyH3tfXUF2wbQoIJj8gM5szQlXggYnUg1QN0d8bUHmBtMTAsQskPDMFm1MYLf
         FZI9p5BCuAfNO9U0dfh0QWc90HuKiKba/imBJUi2LHJpT/+l+z2apg4DWdo0XiXFLT6g
         X+aFfJYGiD+ql2xMsUPYSDMaMqlBoOzWalm+laf5IdBzSpM6XLXBgzrSiYnWzl9R8e1/
         FpHfJCskNDCDy2v8RVLxybu9K5rkpAj85GVgXI1ZXwTgp7KhJb2h9Knl/YkfOCehyk2r
         gQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aETpnjJk/2hCNZzQz61uaHQhAdJBDwy/NfrTSHV+d8=;
        b=aymwixL4+joNTVYWobmIi05NGLrLsZm+Sg48CIaarZd6mwVxxXDCfMAvfDCRckYfl7
         B3cRr0UYU/9Ql0uRanEj1dQadv9ieKCvy8MV12AmUsQMTI9clyAuihjL4Dvl+w/hbV8d
         AuZ8sgoZDsNwoGXqiCAwkEm6K/huhXrIuBK15KPskRTmaxmCjwQZLE9na/riE0LpO/9p
         +xX1dw9mrM7Xhr86J8HMGzyc2WkO+1Kj3P9UGedv5I7Igki+aXziwIIr1HgYwpiPrv8W
         OswAQ6NLvDNGkzju0IJfY2NtkehJt2mpVohW/h4LJKeSIq5u89Oj8eI9HBV8u0zT9Mh5
         XLSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531prdggoZH1uCu/vzv5mW96M5uzngN9jify65iA//5EnoK/n64K
	VMuNDD21+ZBZndOI65wAzlc=
X-Google-Smtp-Source: ABdhPJzGySNWaIcGRtHy6iwxOHyGrvpfIRO6yn9YGQKAccyDADwjjlIns5DUfbyEAK/ZPMaic4R/YA==
X-Received: by 2002:a0c:ab55:: with SMTP id i21mr5994405qvb.139.1594750406739;
        Tue, 14 Jul 2020 11:13:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c987:: with SMTP id b7ls4939445qvk.1.gmail; Tue, 14 Jul
 2020 11:13:26 -0700 (PDT)
X-Received: by 2002:ad4:4444:: with SMTP id l4mr5993267qvt.121.1594750406274;
        Tue, 14 Jul 2020 11:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594750406; cv=none;
        d=google.com; s=arc-20160816;
        b=YY4ztnyr+to1eGjnWeioG6Rd8DYLqUsm6M4qRuRvmvAutFPbaj4MjoTtYZ5rQQSOiq
         XXO/t5KHagrZRmH8XLyBYpBZv8KOAkzvboOEWg+ZUP8oHI5uZG6odXacCYsKIeI0IWPs
         wZJTaNZaEBQVy/nOISnbTAV85NkbAc5OoWkVyZHSrdm445e/n+LRNLUyj9Cv2R2c+5Zy
         5KqaBHNdQvj5LpZuOH/IG1yRm+Z4+sLQS9JWI6uTnxyh3En354b3yiZQxfCxyWSw+ly9
         ErryDOYsjzMJvena/t4FXnxHAN5HKj14oXE28dByKzi4ZkjLPTL4i57Tjo5YILat5Voj
         C+pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DkaDz2vQpSy5XI1g9Hw7BaXUJBJ+MBpnR3NMIQZfDRQ=;
        b=vbiVtKNEO+bTClCV7/kJAn34mfwqTJCflnZ9agSyj01agUf1e33nKfnalCtF5N6szt
         fwrog7j9bOGYWJORo+4eJZ0bzXUuSjx4yVdRkSNOkV3a9z3z0HGEZphE8HsFD5BOwIL/
         nhXmfs6ozVLJbAPOaMbTpzqnn7Fie+swmKvwT+nPmFpFjATsaVlhXsJrOqdf6hdUzY4O
         3PQ/oDDydMeic3z8nUsGzDASV5PdkNnWFTnrNvPDS03H1MIi9k5Z2OP6mQ4mWddoeY1N
         AdTWz8f8HNVIOBuiRzkfU1Ro/yMdlKxc0ZfpJzYwYzLyQ/BPVIumYI8lmf5bSsV6vOuT
         6dUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XnYy2yXl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id d27si793483qtw.1.2020.07.14.11.13.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id v6so18323660iob.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 11:13:26 -0700 (PDT)
X-Received: by 2002:a02:a909:: with SMTP id n9mr7259618jam.70.1594750405993;
 Tue, 14 Jul 2020 11:13:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
In-Reply-To: <20200714141550.GA329060@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 20:13:14 +0200
Message-ID: <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XnYy2yXl;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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

On Tue, Jul 14, 2020 at 4:15 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 03:15:49PM +0200, Sedat Dilek wrote:
> >
> > How to test this series without building a full new kernel?
> >
> > make $make_opts vmlinux
> >
> > - Sedat -
> >
>
> Not sure I understood the question: you do have to build a full new
> kernel with this patch series to test it. Since the changes are to the
> compressed kernel, you would need to make bzImage, which is the end
> product of the full kernel build.
>
> Thanks.
>

Thanks for the informations.

make bzImage

...was the last I tried - gasped 15mins on this - after gasping 30mins on

make vmlinux

I did a full new build...

...and it fails with ld.lld-11 as linker:

ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
-T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
*** ld.lld-11: error: -r and -pie may not be used together ***
make[5]: *** [scripts/Makefile.build:281:
arch/x86/boot/compressed/misc.o] Error 1

It's annoying to fail on the last minutes of a build.
Sorry for being very honest.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW%3D6ES9kA%40mail.gmail.com.
