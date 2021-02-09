Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBOGLRKAQMGQEBBPB5RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2AB315265
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 16:09:45 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id k2sf5254618uao.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 07:09:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612883384; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOvtb4HVSjDEG+cIHUKeKZd51lxkQ2RtTjXdF+uuP0RGn1STO4LYgDAttN/aiTjfXv
         uhpGYAFNivVUhRIIkFiLj3W0XodOil+bvSLlPiIWpwzAUWYb+PV5MEZWqY8ZaWL2vG8b
         ftDfrpPsYNvBsMJ9ak3UKlMK+soL1kaX1tlYxGiF/31NC4wMz9ZJy7Fb/01t1nrvtsyh
         9bgncM5nNNCEQ6mdw6O8tDCRC8kmmPGYXhGZyf2Rj++ikdKOH1onLuf9783AaBPW5o5M
         6OYdO2hwGKMqzAAVgfpmUHk2N0k+TOGkm5UisC/h7wlElAEYYlJPc16wn5Jeefbr/SF7
         uAUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Mw2SLRtrmiETYdfqxcOtYcP1wj8pvv1q4sXhuD2qGi8=;
        b=vI2YOddeSqhsBV8Z1WNffJSKQpxTecwOpC6AB7P+cCjsZTun/D3+MmmxWXpMWl07LE
         PThzD9OFwehiqQtdoprdLcqWBAlhAZju1OYCi2aboKHYWhLFk0j3P4ud3yS9yTrcSVMV
         4D5T11Ufz4OUffvI0qv4vaFEtDeegtJDZ/BOVtAzEEVV92VYnIwtc8/7QgOEZe43Uhwm
         dEn+1dzAAtn6670t3XjIwlVNIFZXQIIH2nmcfta+v6nyFfi4FyV2KfeeGgFRelGKOpfz
         L5Jv1bYp6w7FIhCd0HH87pin+hty/hS1KxKBis7xjq08ROE/tIwW6fi5XXiEqJw2sQav
         gXIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=epMLOmer;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mw2SLRtrmiETYdfqxcOtYcP1wj8pvv1q4sXhuD2qGi8=;
        b=lFLpyV3bhsrT6rvRr+0dGetBcIl5VW9XMR6rSikvJSIvln5jtzaCzKe2Afk3+LZwbb
         DUtUyMjsWYvLrTR8PriuLWOtc7cEdTHjjP4e1TxEZlq8XfgicY8+yKHIzWH4fmAVbnUR
         NR04+dOo+jtflcmB+TG635jz5hYFdDaZFpLlbDBMu5rJsuyUv7Lt9xSdCzxCE25zKKVi
         pUTXsfTerCkXIP7T99etPw9Hse8TN2CSEzY/QySBlnulCoOEEzaRnVcHHI3ooPrbTY6v
         92StV8fW585c9WmTHtKB9j6ZX0JgJpOtTwgXxuIOYrhJ/NwrAg/bDGquzsSDhFlSokqn
         1YeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mw2SLRtrmiETYdfqxcOtYcP1wj8pvv1q4sXhuD2qGi8=;
        b=X5pQlNYvgc5rYMpzDjVpELkwoDL5vRVIk0eMD0kabQtB5fdWXJfNDMLTzPH1xpcNfg
         yiZi7SrllaGMYX5i+DMgmIC6jan661lSn8K2spb1G0rMK3IeGY83Y//RQY7DRX7unxEd
         o3DqLloiVustTJkyDDIknd4/KphEs+n3EFnb6tNnNhwSSBtL/eeikFvsZ7uZmVw2M2YK
         19hX91u+Obvgfgi7+IKb324rsQhujS3xWQF36ypTRRGRQW/u9UxDq7LJ4szBSULDIP1F
         QoGtLHODDlN+ycfjRmjQJwpYHmb8Dx43Iy2qXhCzieyelb4oDB0rEhIkUFI2Y47ttQdH
         41nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Rdry4Z5xZku4vVMnusammjA0FpDjy9y1vX9Dqq9MKPyw4CGfO
	QoQBG4B5UCAuEwq3twLaPX8=
X-Google-Smtp-Source: ABdhPJx63cnJRVcac2eqFlMEiDyih7AGcuTa08hyfU7feVtociX8J3Zh4Z/TxH4sdO5lq50+LSn1Fw==
X-Received: by 2002:a9f:2628:: with SMTP id 37mr13070924uag.87.1612883384142;
        Tue, 09 Feb 2021 07:09:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls2496964vsn.2.gmail; Tue, 09 Feb
 2021 07:09:43 -0800 (PST)
X-Received: by 2002:a67:fb0e:: with SMTP id d14mr4068882vsr.54.1612883383593;
        Tue, 09 Feb 2021 07:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612883383; cv=none;
        d=google.com; s=arc-20160816;
        b=eYuu+RsRmtXyemVYvx1/yzx3j7Mz1ldEND/czan9z9JajeWgbqKF8vjCCwKf03i2IC
         GNXRdZU4xmkrhqffVVWOAI3yi664yzi9rykL5zdtdMfu9/Dc5WnESUlVSSk1zOh0OErx
         IBOm8F3I0apGZ/DZu0Jau7Bk/kc8wxBniViF3iAdOPLtOMGy45L1HOH4sgV9URZdTk/l
         dt+mrnknby0NmVAtrHbZvJdQMikeD+rg6gVEmCOVCjMU9R52Hru4XRioJKiDNo2TMZZ1
         R9iJykQ7fq77RSRMS9biQ/dMBl4HiDPyBxV5ENN7ZTO3FsUthNy0B8AZVLno4zM2FoO/
         IIDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZXNlHgyuKL00Z6KzjxgYnO1IfttFoeilisityDdyutI=;
        b=U0Y1e/Z80mxlnBGzZoB5oUW++cJ0zwdi12xByxQnGA1UhxDjlRbj9/DUTaVBLEvnFQ
         w1vtMwtXtFV9y8/g8Srw3UE6z45w1drSjmNm2Ac6QnTfEzVQaruZTNp9dlh2C/fEVFf1
         70nqqwj7OEKugpa0Xlz//t/Dd3DVcecSaR1QQee7jwhxGsWt1AQXR/IswPsiMNHMtM6C
         ansgpr01/tGyfDyoVYJVozonLdZxXQQrqHf+erwmlT5sAkfZbQnnsMgXk1DtstXa7tH6
         0Cu5Kagx8IRaD/0pzkl0mDvhQm5kDGeP7gFBrA/mx9swUBe6r64FugEDiO+H21UMIR6h
         OnZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=epMLOmer;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id q1si1323683vsn.1.2021.02.09.07.09.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 07:09:43 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11--5s02YDBPXmpkhWS_HBJ-g-1; Tue, 09 Feb 2021 10:09:39 -0500
X-MC-Unique: -5s02YDBPXmpkhWS_HBJ-g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9B5DF1966322;
	Tue,  9 Feb 2021 15:09:36 +0000 (UTC)
Received: from krava (unknown [10.40.194.224])
	by smtp.corp.redhat.com (Postfix) with SMTP id 48E0E5D730;
	Tue,  9 Feb 2021 15:09:33 +0000 (UTC)
Date: Tue, 9 Feb 2021 16:09:32 +0100
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
Message-ID: <YCKlrLkTQXc4Cyx7@krava>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCKB1TF5wz93EIBK@krava>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=epMLOmer;
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

On Tue, Feb 09, 2021 at 01:36:41PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 12:49:04AM -0700, Nathan Chancellor wrote:
> > On Mon, Feb 08, 2021 at 10:56:36PM -0800, Andrii Nakryiko wrote:
> > > On Mon, Feb 8, 2021 at 10:13 PM Andrii Nakryiko
> > > <andrii.nakryiko@gmail.com> wrote:
> > > >
> > > > On Mon, Feb 8, 2021 at 10:09 PM Andrii Nakryiko
> > > > <andrii.nakryiko@gmail.com> wrote:
> > > > >
> > > > > On Mon, Feb 8, 2021 at 9:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > >
> > > > > > On Mon, Feb 08, 2021 at 08:45:43PM -0800, Andrii Nakryiko wrote:
> > > > > > > On Mon, Feb 8, 2021 at 7:44 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > > > >
> > > > > > > > Hi all,
> > > > > > > >
> > > > > > > > Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
> > > > > > > > https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ
> > > > > > > >
> > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > >                       LLVM=1 O=build/aarch64 defconfig
> > > > > > > >
> > > > > > > > $ scripts/config \
> > > > > > > >     --file build/aarch64/.config \
> > > > > > > >     -e BPF_SYSCALL \
> > > > > > > >     -e DEBUG_INFO_BTF \
> > > > > > > >     -e FTRACE \
> > > > > > > >     -e FUNCTION_TRACER
> > > > > > > >
> > > > > > > > $ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> > > > > > > >                       LLVM=1 O=build/aarch64 olddefconfig all
> > > > > > > > ...
> > > > > > > > FAILED unresolved symbol vfs_truncate
> > > > > > > > ...
> > > > > > > >
> > > > > > > > My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
> > > > > > > > although that seems obvious given that is what introduced
> > > > > > > > BTF_ID(func, vfs_truncate).
> > > > > > > >
> > > > > > > > I am using the latest pahole v1.20 and LLVM is at
> > > > > > > > https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
> > > > > > > > although I can reproduce back to LLVM 10.0.1, which is the earliest
> > > > > > > > version that the kernel supports. I am very unfamiliar with BPF so I
> > > > > > > > have no idea what is going wrong here. Is this a known issue?
> > > > > > > >
> > > > > > >
> > > > > > > I'll skip the reproduction games this time and will just request the
> > > > > > > vmlinux image. Please upload somewhere so that we can look at DWARF
> > > > > > > and see what's going on. Thanks.
> > > > > > >
> > > > > >
> > > > > > Sure thing, let me know if this works. I uploaded in two places to make
> > > > > > it easier to grab:
> > > > > >
> > > > > > zstd compressed:
> > > > > > https://github.com/nathanchance/bug-files/blob/3b2873751e29311e084ae2c71604a1963f5e1a48/btf-aarch64/vmlinux.zst
> > > > > >
> > > > >
> > > > > Thanks. I clearly see at least one instance of seemingly well-formed
> > > > > vfs_truncate DWARF declaration. Also there is a proper ELF symbol for
> > > > > it. Which means it should have been generated in BTF, but it doesn't
> > > > > appear to be, so it does seem like a pahole bug. I (or someone else
> > > > > before me) will continue tomorrow.
> > > > >
> > > > > $ llvm-dwarfdump vmlinux
> > > > > ...
> > > > >
> > > > > 0x00052e6f:   DW_TAG_subprogram
> > > > >                 DW_AT_name      ("vfs_truncate")
> > > > >                 DW_AT_decl_file
> > > > > ("/home/nathan/cbl/src/linux/include/linux/fs.h")
> > > > >                 DW_AT_decl_line (2520)
> > > > >                 DW_AT_prototyped        (true)
> > > > >                 DW_AT_type      (0x000452cb "long int")
> > > > >                 DW_AT_declaration       (true)
> > > > >                 DW_AT_external  (true)
> > > > >
> > > > > 0x00052e7b:     DW_TAG_formal_parameter
> > > > >                   DW_AT_type    (0x00045fc6 "const path*")
> > > > >
> > > > > 0x00052e80:     DW_TAG_formal_parameter
> > > > >                   DW_AT_type    (0x00045213 "long long int")
> > > > >
> > > > > ...
> > > > >
> > > >
> > > > ... and here's the *only* other one (not marked as declaration, but I
> > > > thought we already handle that, Jiri?):
> > > >
> > > > 0x01d0da35:   DW_TAG_subprogram
> > > >                 DW_AT_low_pc    (0xffff80001031f430)
> > > >                 DW_AT_high_pc   (0xffff80001031f598)
> > > >                 DW_AT_frame_base        (DW_OP_reg29)
> > > >                 DW_AT_GNU_all_call_sites        (true)
> > > >                 DW_AT_name      ("vfs_truncate")
> > > >                 DW_AT_decl_file ("/home/nathan/cbl/src/linux/fs/open.c")
> > > >                 DW_AT_decl_line (69)
> > > >                 DW_AT_prototyped        (true)
> > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > >                 DW_AT_external  (true)
> > > >
> > > 
> > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > pahole ignores it. I don't know why this happens and it's quite
> > > strange, given vfs_truncate is just a normal global function.
> 
> right, I can't see it in mcount adresses.. but it begins with instructions
> that appears to be nops, which would suggest it's traceable
> 
> 	ffff80001031f430 <vfs_truncate>:
> 	ffff80001031f430: 5f 24 03 d5   hint    #34
> 	ffff80001031f434: 1f 20 03 d5   nop
> 	ffff80001031f438: 1f 20 03 d5   nop
> 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> 
> > > 
> > > I'd like to understand this issue before we try to fix it, but there
> > > is at least one improvement we can make: pahole should check ftrace
> > > addresses only for static functions, not the global ones (global ones
> > > should be always attachable, unless they are special, e.g., notrace
> > > and stuff). We can easily check that by looking at the corresponding
> > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable

I'm still trying to build the kernel.. however ;-)

patch below adds the ftrace check only for static functions
and lets the externa go through.. but as you said, in this
case we'll need to figure out the 'notrace' and other checks
ftrace is doing

jirka


---
diff --git a/btf_encoder.c b/btf_encoder.c
index b124ec20a689..4d147406cfa5 100644
--- a/btf_encoder.c
+++ b/btf_encoder.c
@@ -734,7 +734,7 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
 			continue;
 		if (!has_arg_names(cu, &fn->proto))
 			continue;
-		if (functions_cnt) {
+		if (!fn->external && functions_cnt) {
 			struct elf_function *func;
 			const char *name;
 
@@ -746,9 +746,6 @@ int cu__encode_btf(struct cu *cu, int verbose, bool force,
 			if (!func || func->generated)
 				continue;
 			func->generated = true;
-		} else {
-			if (!fn->external)
-				continue;
 		}
 
 		btf_fnproto_id = btf_elf__add_func_proto(btfe, cu, &fn->proto, type_id_off);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YCKlrLkTQXc4Cyx7%40krava.
