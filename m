Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBA7NTX3AKGQE3EOQEAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1641DE021
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 08:51:49 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v87sf7740738ill.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 23:51:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590130308; cv=pass;
        d=google.com; s=arc-20160816;
        b=mWI4GdG5/88irgRCC29aYGPcxwU+5mtP0071Ss6zihod9eCfmliqbE3M0yJBcT7MwG
         VhnsB23ag7U9bDcHGf/v47VPFOT17MmpUGFws2SLqXuB56XdL/fEUAw/r8CUuLvjdMUN
         7d4/5UdkxMNbtBbzBvwtMxtqYAi1up1KfganyPCiCAJppzGMR+or6X5Qr9xBWrlnTVx6
         9gbxTot6pmFRE5KyecFXEJ60s/0Qh/PMwFPWVwPkTUBmcAh7LP9uyOzIX4FT/ub6eZsF
         Y2l8XQWdWgQ3cS14kUopF6GmB6kNZ1QDzLDbqoghC2zoF9GLp6i+YKXSmZZYoRNe/KOT
         ZqQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zciu4B8HDr/7b4B7xI9jaK+8PmTh275FpaF/1b+qN04=;
        b=tIW74tP3sMDqwsaw6S04nHAlE+7E2fXWQfetv/Iz/LQZZvAf1lhwWqe8iR/z/dw66w
         aCltCsaXRMUL8LdJDCWFQoRETxhs6/lkj8ZRgUghR+hV0P1a9skwEG6HfKtNQDVFX04r
         Ni1vJK3U+v0qqkA64E9MFJ4LtIj4fBddN6IN/l3dxQx0Hw61e/7Q+VD1BYpflRehNktw
         y/iduPPhqZ5YLFPUzC6HW0hF65Z0hV7JrtjT40QVDP3KyVlFDwQ3Wc+BS1bAoFDZgofy
         6vnOoyHjzLgTspU9bFGlR3S/LIzY7vtIkq58PtglKKs28fY3OBBMIMcOef+gUOEo26SM
         vLQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V6bu6wMy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zciu4B8HDr/7b4B7xI9jaK+8PmTh275FpaF/1b+qN04=;
        b=dfdc3I+WM5p+gymYTcAjzpqu0Rgi2KAsJCiVCgAhJm+tjYJsCA9pl6tjaMFAlQx7PL
         LARYOuifrXQRkC6QvowSZJVsHCRm9yOd8Hc0QoimWEgcCU8gQWPTV4OnqpyV/j3S5WAM
         VQWp9/WzmKPaLadfTZh8Gll+WSZtP+dhb+U8vphzh5A8WRczE5VIpedTLI++Gy1mkqDB
         8gwpaGtSbqEEtdgBdMv+152NLTBIIWZnK1zWsKT2ExsI/6yvnoglAVSnzNv8bX4lVowL
         973rw6bfgezTtp66jMVbzEn8OdgUEKwjaUUz4xXXCLHOKqsd8Ge5KjMWtTdXttrgOT4N
         j8bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zciu4B8HDr/7b4B7xI9jaK+8PmTh275FpaF/1b+qN04=;
        b=L3H6mrE39gOxzMqFOkkP8GOrPt/AkZlKNPw2LkHMAYXkq4Bs10OgT2+a9OjNQXt0ki
         HdUKlWM9WwxTewDFQhvdhsBxLvr/2GxuSRDCsvNiDfh2pNLECzoDnQ43um/131MtOi3G
         JE7890bZKt3WoP8pXNAql4tBXc+B0OK6AA287f0Pc2tpJ1huCrPpB51uAjyMQfOzeFTp
         pWc9VxpGtv5RNqVD04mcjR6roOSwaW+ZRXEdqHfoqZQ5x0DlWYkkL7JQRi/K52c+1KlV
         pD1BxsFE/AkjRE6IzkCgzYRG7iNrZzsNwNt/pPVUEEansR+xIuX85dj1A32ywnknQTcP
         fBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zciu4B8HDr/7b4B7xI9jaK+8PmTh275FpaF/1b+qN04=;
        b=LnnJwYgiCUL1/sEOJwG3opA0Ev+nunLXbiAuJx3veHcL5nXlbB6yULDmDKelKGP/p8
         mpEsG2MEFaTqPUKzyVPKrj56H7JpNJWDEZJophC5D+2mIQsyJF7UJWBnTXW2xNz5K69j
         9LdZE/OjFor4iE54XqiTzq4NJ22pdXhQXdrBUys5gZ1QgjX0dBaRbg7xx6auifWGrUXR
         jab6ULSGeziwC9CyRAf8X1x1YmJOrhihYuRp00+M6YK6+AVkl4cmkAsDjqGwJBvxpZ3o
         wKMOzRcTCf5aaRQoz36eB+y/Jk643aanovF3BGGLIyun8Y8nRoaLnrMV9YNMZx1s9Oo/
         sAoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mqG7jpM+D762lNWxpeYXkn4gyxrOvVBdNrkPuv3oPKpnNlmtv
	M/keX//kzenksPs1PxVIQb4=
X-Google-Smtp-Source: ABdhPJyBhkSbF1NTgZrHPSCvaBQh6/ippGh7StTqNrSkolk2tOMJLD63RRZ3DR2pRhN56gst7DPn8g==
X-Received: by 2002:a5d:8b81:: with SMTP id p1mr1877946iol.189.1590130307998;
        Thu, 21 May 2020 23:51:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8582:: with SMTP id f2ls101555ioj.5.gmail; Thu, 21 May
 2020 23:51:47 -0700 (PDT)
X-Received: by 2002:a5d:9ac6:: with SMTP id x6mr1902451ion.191.1590130307666;
        Thu, 21 May 2020 23:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590130307; cv=none;
        d=google.com; s=arc-20160816;
        b=o0HeCEM5ZyISAJvfzPOKJ8Ymncx/o0U6VwaeszhraquQQG231PVOZIjyRiAD7qX0ca
         B+iKC4cOqtfWEQoeatnCgIn4ZfL1PQCZRuUi7VQfB8SXI5RyBjIyTDL9qRW7B7+fMJkt
         UM9geSJt2JDv7ooocqi1vbpu18h8R1Yeo+wM/rxgeAc79buSMdAmGD1JJ5pe7Lu6N2C/
         U9ZAyKzaklXflsjgjYI6H8i9OTbyEbZbGMTOHenv+xAWXbODpXstI+K1u1S+ZFYaUghq
         gqO4IpJj0I5lELQJwWdnxDjPDJeWDay9wWYyHpGECuOpdqfrX/3ctEJrgNyrtMSKsZgT
         w2RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xdvsxmwUKO7Fv5eHUB9PeRikncRekct95ZZzbVNJGJE=;
        b=a67CrLbP/I3jNKeJqOupIDK+0jD/HA4Tv97FPWtvmYtdsD0eGmgVPEFB3C1p28v73T
         d8DmVR286W8wqok1rLoboJudtNtuAvsZoBz2gd22EkyPcIC44N6BrvJJeSL8AGSy34P8
         +Zh3S5UtiNnkMAFeiNlF3ZGsWvbkhCMydsxAcgzhADj58Y+5mhAzulOr+oE8jrSuVVTj
         h0cYJRIho5osZWG8r+XWUPo4lz+WXbKcEX/Hxze7kLPfYESHZs0blwusJdT4j5TL3g27
         ilbGd4kZkn0kFP5/b3oyxck5HhA37C0/OCTXCqr9yMOQXvXe+qkgVnaiCoWfDP1B+mhT
         R5mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V6bu6wMy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id s66si465958ild.2.2020.05.21.23.51.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 23:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id q8so8900775iow.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 23:51:47 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr1967924iow.70.1590130307320;
 Thu, 21 May 2020 23:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200520182010.242489-1-maskray@google.com> <202005211942.6E5061433@keescook>
In-Reply-To: <202005211942.6E5061433@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 May 2020 08:51:35 +0200
Message-ID: <CA+icZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA+8E5aquWQaScg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
To: Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, x86@kernel.org, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-efi@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V6bu6wMy;       spf=pass
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

On Fri, May 22, 2020 at 4:43 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, May 20, 2020 at 11:20:10AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> > "efi/printf: Add 64-bit and 8-bit integer support",
> > arch/x86/boot/compressed/vmlinux may have an undesired
> > .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> >
> > .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> > warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> > part of the memory image, thus conceptually the distance between a
> > non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> > link time.
> >
> > % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> > ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> >
> > Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> >
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Fangrui Song <maskray@google.com>
>
> Yay macro usage! :)
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>

Feel free to add...

   Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build and boot on
Linux v5.7-rc6+ with Clang and LLD v10.0.1-rc1

...together with one more patches in the x86/boot area:

x86/boot: Correct relocation destination on old linkers

Next run will include:

x86/boot: Add .text.startup to setup.ld (v2)

- Sedat -

[1] https://github.com/llvm/llvm-project/releases/tag/llvmorg-10.0.1-rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA%2B8E5aquWQaScg%40mail.gmail.com.
