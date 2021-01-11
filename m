Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEEY6D7QKGQEV7AHRKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id C985E2F0E24
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 09:28:01 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id c2sf12705370qvs.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 00:28:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610353680; cv=pass;
        d=google.com; s=arc-20160816;
        b=nt4jw8f4k23rgAx7/nTxmNgq1e0X0dsd8ntLLPqnaFfwszHBm745AxPKKELS42byQ6
         HccVLyaAEizHFE6yZoh/BndNfzGyprF+njT1KWiYrYhtCXg36hv4FzD/2nzpV7MXfvvj
         kjC/rElhBspuFnr654mxp59PlTO2+ZP6XEUS+cstzOuJEAwkCUosL1k6/g4mFqvbxRpj
         IgbmuIukicMHgrzOdXUVL3wT4oND1pgUdf1Sxtbwpo9D8zROYwzdaKBm3nDtGtvw71zo
         Xf3Y0x6/VcLKpIX0P/gcxyjt0M6M1ivXchzBxvYlalRmrZuXB5X6SGU9uyABHTpSwhWZ
         dNZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GR11I3KN2OHn2o2Ae6n0RV7Lmn8E1nPnAlA1TQRnUqw=;
        b=0hgM1M4iHXHngLifxLu/yv9jr0Um6B9WP/NE6/n620YG721vRnm9HzDdyQm+A9o2RF
         1IxZ6wEQ/CH5W8hQpejdttnCYHBv59AXNjvTI14j6zyX0WFSGN4W99hmf/XZAhRJPFKS
         RlGHL4jCdKM4Vg79sZxAMm0ambF+Bl/kXcYsaOJ6bc+Q/2LM13rxFNZj9bWunu42kviX
         5BwbaOeXyqJ+YdmamVAX5/nyMBJoFDwI3DNMaay8NLhl5knuG+BcrRnO+oZ8prJJpoTy
         wGLff9+TOBKFS7rj7GHEjYk3xNlJbMejElWPy6YjzsLNN9Tm/cvjTROPYjmnCCkd2RjI
         rSeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Js5tYKbY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GR11I3KN2OHn2o2Ae6n0RV7Lmn8E1nPnAlA1TQRnUqw=;
        b=omE1Zxo1FcptZM65CfGb0EEm7d/CPiehd1XZqrOrbZo1njK/r28lbI8XRKCUBvsTkP
         g0KEdIoOUD7jOpXSfrurpU0kDxkYO+ValLDVvajZteqN00u5u+ylZaDlEyq8vAa+9orS
         jRY30pmDpzcqmfycMyy4XBBDIvSz5DBBBriqZGDx3PmWKnuGNfoE34OVsh8eCkwisdN+
         8W/9o5z0YoTw70KpNfcGTL7hmOjyRFVVrrVdGnJdawdvRfnKlcfgSA2TnISIRpD2KRaZ
         A+d9mu/g6+ZKR/MTj/I0dvV02okirW9RzRASfNKnkaCfpSXqIPsVL+jO5g53zsrxJjyv
         noUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GR11I3KN2OHn2o2Ae6n0RV7Lmn8E1nPnAlA1TQRnUqw=;
        b=qnk55PQfPuX70Gxr1FWOEsxsaMUCHQk2HBMXU48hfyKlVTV5ijZc0OtrFfGXowLkhO
         z4ltIIb+NINaqRYQLXOafk3M8L4k3DLM3tm0cide4Difa1/MGYRy0gNXPK3a9ZOnHnxN
         13ILP290CpjnzIreqijBt53HPzkhv4uTND0RpCBUBCM9vHhQriTBR/Xa4W90IBkohHqu
         r/x87yRa4OgCkXrpsAK5bZkB7iF6+hYQSJVW6l8vfAJvpaTogytrD+5TmUCTqWSYyGcR
         xzT+cH+GyJ7SwHXuyYSpfDgzV0jNEtQ92TL9bjyOb2iJymfZhBnrhhPfmT1UUrEXPeMS
         jl2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GR11I3KN2OHn2o2Ae6n0RV7Lmn8E1nPnAlA1TQRnUqw=;
        b=Q7As07192kPZXJxql5GFN/1RPgT/y4Jsf62wyouVwxbJ3OH3PVYVGzOGmDHcgI3xKb
         ewnoWNZFgZk0BwmGmQHD6nAqLetXdEtWOfgI8W3LRoAH5i0MeHztVjS0wo4XEWBJCieH
         H4smSZm8N7lE+n2MAvcLEoZto11MV4S9ls9GpcwWsA2v4SgWuToh4euYAcZv1N738fgR
         FyIQfum0memRASqz29DGX0C6xzDfqPEzHpgiajMSTeQ+nG125Io1LWRZDNegB6N0BUiX
         xbbjGat40v84dzJW4RhmB/JXBP4k75X3YCEpy/NUkYTq7dvToZlRxeQ5Po+XpQBNifpE
         YTYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hBOkHgIf4edqP9mNdBKSC6Jxf3C1mn6sznXrfwCjs+MOTCcc7
	NyB364bPAwq1Acc65TA93Bc=
X-Google-Smtp-Source: ABdhPJx1A/PFpPm+helUKiS7eFTrGl8X3sQZdwjQwqBQcA2UcM6UWXzJCA70y01pF1n9g6XkFIiK4g==
X-Received: by 2002:a05:620a:15e3:: with SMTP id p3mr15168617qkm.397.1610353680486;
        Mon, 11 Jan 2021 00:28:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bec6:: with SMTP id o189ls9128577qkf.4.gmail; Mon, 11
 Jan 2021 00:28:00 -0800 (PST)
X-Received: by 2002:a05:620a:5eb:: with SMTP id z11mr14958665qkg.411.1610353680096;
        Mon, 11 Jan 2021 00:28:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610353680; cv=none;
        d=google.com; s=arc-20160816;
        b=cy27rNEvIPEU2uWlqWdz4z/lB9NxSaVGlcLFthtReVaGS12YH1Lwioks4jGu1winyP
         cKOJkk8JzdrycOXN8axIEAZ0/GIAe/GEPsTJT9KluVCNIzvhuG5RCGKlVYcyYm+SRfva
         e8fyyvKfXI+GWDuGOjIEtLWMfi3dbzSNLWZn7MQktJO41re8vOBkjhRt491HyO553EW6
         iQNqy17S4cOO84iqEg3K0Qnfvugdzap0eJVUZXj0XK6mB5hXoueBVQLRgyr2XU19JelQ
         q6O2M8ABeWNPmcekdzssMjLjXO8qsuYteztEfAVHBY1EePLWoeLTaxjjUI2TUePox2EN
         KVyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uDB65wflImnNQSYN8BWWQYD3veRP8TbQGAUKBI7uogE=;
        b=aMZgcAcz8zKg8WEQBrHvG9u7PYyS+bvaUe7Vp8n8XMsCce0lTKdE59L8ws07g9mQ/6
         m9ELgAA1+LQB9wn8V/ASXA+MKnBJr16iNwO/Gd4m1r/uuiu1uU728Gv2lRKSmxSgwgG4
         JPWqoHR07lx2nRO/zxJIJWuHC9oiYgn/NZBS5pBPAZjLWUvz9X200K/o7vvdMHgAa3SN
         D94n7QFiptVCX//Lo7K5RE02L8HD1DeHUh3XWgoXT/0KceBEJOeJ0J7K6o7MG6FGePJE
         OhuqxKxgEZXAEc+kbtJ0ruKmgcEEDYb4jPNv6cDwe6Gia2Ys7la9XkILF2/WbjK9C+Qo
         HkwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Js5tYKbY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id n18si1302991qkk.7.2021.01.11.00.28.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 00:28:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id w17so17474983ilj.8
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 00:28:00 -0800 (PST)
X-Received: by 2002:a92:c002:: with SMTP id q2mr14604909ild.186.1610353679616;
 Mon, 11 Jan 2021 00:27:59 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com> <20201204011129.2493105-3-ndesaulniers@google.com>
In-Reply-To: <20201204011129.2493105-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 11 Jan 2021 09:27:48 +0100
Message-ID: <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Js5tYKbY;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

On Fri, Dec 4, 2020 at 2:11 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>

Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and clang-cfi)?

Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
a base for my custom kernels.

It was fu**ing annoying to see I have no pahole binary installed and
my build got broken after 3 hours of build.
OK, I see that requirements is coded in scripts/link-vmlinux.sh.

I needed to install dwarves package which provides pahole binary.

I would like to see a prereq-checking for needed binaries with certain
Kconfig set.

After I calmed down I will - maybe - write to linux-kbuild mailing-list.
Hope this will be a friendly email.

- Sedat -




> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 is a cleanup that lays the ground work and isn't DWARF
> v5 specific.
> Patch 2 implements Kconfig and Kbuild support for DWARFv5.
>
> Changes from v2:
> * Drop two of the earlier patches that have been accepted already.
> * Add measurements with GCC 10.2 to commit message.
> * Update help text as per Arvind with help from Caroline.
> * Improve case/wording between DWARF Versions as per Masahiro.
>
> Changes from the RFC:
> * split patch in 3 patch series, include Fangrui's patch, too.
> * prefer `DWARF vX` format, as per Fangrui.
> * use spaces between assignment in Makefile as per Masahiro.
> * simplify setting dwarf-version-y as per Masahiro.
> * indent `prompt` in Kconfig change as per Masahiro.
> * remove explicit default in Kconfig as per Masahiro.
> * add comments to test_dwarf5_support.sh.
> * change echo in test_dwarf5_support.sh as per Masahiro.
> * remove -u from test_dwarf5_support.sh as per Masahiro.
> * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
>
> Nick Desaulniers (2):
>   Kbuild: make DWARF version a choice
>   Kbuild: implement support for DWARF v5
>
>  Makefile                          | 15 +++++++------
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 35 ++++++++++++++++++++++++++-----
>  scripts/test_dwarf5_support.sh    |  9 ++++++++
>  4 files changed, 53 insertions(+), 12 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.29.2.576.ga3fc446d84-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204011129.2493105-3-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg%3D1GDYR8-w%40mail.gmail.com.
