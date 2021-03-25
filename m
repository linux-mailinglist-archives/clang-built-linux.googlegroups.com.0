Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQU46GBAMGQENZZO3CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D8708348BDE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 09:48:04 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id z11sf3420755pfe.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 01:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616662083; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8OxEuc8k8UtPpgv7qxlYBj6E+NCvD5+bUeo7n/kcy8YfyOaTGOlpTFo8DKI3auwia
         +i2oMP0C9ue0g1BsdntQDPeHz6TvULGlJi79xx6zfFTLKEvZ3EGIIRoLaTO11ZWCRWRD
         B44oAOgpIaL6oMT/1c8MnkxMoXY0e4aTuZCXNZ8fNYf6SAXGbnBG0o2YVftMMeXUHjdE
         4T5EKzWvqkN0JfwZ2bDPYZl3fB0XBFi+gJKdcF025rryQUj5Phr/r3FHepgB/bNuXS9j
         xcXxrQgtmovw3Vsvg/QE7RkzOKWuK4J1Fw8ARAFC1gfIUY/yFhbOi+IfzAP8Zh/s0tKx
         1Yyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=bQYe+ztMbQftD+EZG27KvUbs+ZCi5dr0R5j8/fv6RZY=;
        b=p8xETFSZlpiLjAzRWKScTFxT9vvPAXOQL9LW97wPRW44WgPLEzxuXBOW5YSTbvtvdY
         jtvgriD44LDaFOON+5pQM1PDsbvBj/J4dnmr8MRTomvraEGyDynMgHH1Ye+nngLXNIel
         NM2+LxuC8LQgMyBQ2X1IXeL4ekhBfWbQLbZWr13tTLvMxQSqTorkagST2ximPkwu6hrr
         zPpia0OBdKoOhjNTZJvGKCnYsTlDxSAMcnBqFnZXnNx16gKNXKj48Mrs1VtYCScA6Xgv
         Kmf+xA3qYilVoC1N8p5ehGJ7VlF28X50kPN+rD8a18YNCZSmArbQFCFDG/t/E0+j42aG
         BQyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EcjmLeYJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQYe+ztMbQftD+EZG27KvUbs+ZCi5dr0R5j8/fv6RZY=;
        b=U87Ow7/4p82kyRKFHkeLzc2/oQgdxkWSMYoF4cwAYysbrkJmTiBphgYt6CW4+0yLAP
         5LxqyDDdHX60f5hAfPYPXQ7KQffuFSaKtkGlRcS5X1YP/Y1X5bJa1yW6y7r5f/+qWbkK
         nmRwHS2znsn/1d+EOM5Qn3FT+OfEIECbUw4Ymtzi9AnuX4FF29MFzhm2qbt7kx5SipVw
         mQmwkfoNSivb9IyYsa/aUcpp5cQdglFb0jtgR8iZPYRmrgHhmRO7a8/Ar/h/Dc/tKRvP
         xmS+St2c7AFnaFcZCIdsuChuslKKuDM65q/9OOskXs3y5VLn8qO8BlYFpLDiX73tPy0Z
         k3Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bQYe+ztMbQftD+EZG27KvUbs+ZCi5dr0R5j8/fv6RZY=;
        b=Z77lWAVM+99KZSFVaJhOjxMHgKiXeawDXSxiecGYGCUgp8YwTpM7iJanJGe3zn2Cp3
         eD0PfzAyyW6QyAtrcn7uyXa0mx2g6svvPDXpnDL8EDEjlC8BI+GxIVEd29EAscXoSTXE
         akYk1xiVUN/Cqj0kVTHf9XXkOJlXx0cf7ZUkYnCQDDPgVqmbx/aOLTesdgrht7d2ajyQ
         d0voxGeOs2DUzfwD1B+xLT4mcgwt21njhviBuOggccuxr7htY/5zlcrHiBtKxvigOx+v
         /pnxIFKCYj1JWy+RdYEpkpBw27ntOaaqqYrFvSo5wdEQnCiv6BP6c5VSikN0fap6vuvI
         5tow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQYe+ztMbQftD+EZG27KvUbs+ZCi5dr0R5j8/fv6RZY=;
        b=OXY/seGgOFnTcPoVZDfTbq41ZBleweURVBsP0dRx3pQHUJOqSJg5gxMiGqRl8cPZw3
         CiKnFWmAYgqAFQpk6tjcb+BFZou2VBuXfKXesWYovzCUSufOL278JClRRfxdue6CyxON
         g8gTWDMzj8cK0VybRLkuQ2t2GUoUtPJ6mExzcuCzYgo3mREP1bYK/l0NqkVtP4NelS/Y
         uN8lKkcbaMFgDAevnkWpQEQMoMQVRZvLOhZWts3hwrheXRMpSwttSDySahljX+/Krv20
         6CEt5gXsG9YeCNMbaU142qNMJhB4ZTtMHtObaDgClSP/209sYw+Sag+xfc1JfuCdmDDJ
         kKIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316Dqbj+1yIUo6AxJvxequosWV+WBE4QiL4GNHtjjMt2uvrnm/U
	uBGGk1J6rAmeGdFIofhCIAg=
X-Google-Smtp-Source: ABdhPJy1bt2tb2xMHK4ewfVHUc/bQCBcQ/b4cvU5w3flIR23GDNiSUmTN/JI4LaBtARNWp3J8rjBZQ==
X-Received: by 2002:a17:902:d4cd:b029:e5:dd6d:f9b3 with SMTP id o13-20020a170902d4cdb02900e5dd6df9b3mr8380368plg.43.1616662083069;
        Thu, 25 Mar 2021 01:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6256:: with SMTP id q22ls1799475pgv.2.gmail; Thu, 25 Mar
 2021 01:48:02 -0700 (PDT)
X-Received: by 2002:a62:190a:0:b029:221:cd7d:7927 with SMTP id 10-20020a62190a0000b0290221cd7d7927mr1085971pfz.27.1616662082432;
        Thu, 25 Mar 2021 01:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616662082; cv=none;
        d=google.com; s=arc-20160816;
        b=dunZ1evvx56WUOPd6kmQWlz3PN+75ze64QPPRZ+W0pwfSszcKnMpaDcwTCyh6Itm9s
         RODjzBVLqK1ZvzeEmmGeRqqoWaEzcwV2suhFGZ9klSZK2ntrXMLDKulpQKkNbw+jXI0t
         UqNrx2dJmVsKHIz4fnXLxknw0JaloM5AFcQexuJMNVD6hA8bt1GOIs7CKVuT3KCRlokW
         gYP0Xh8lLaqqCji7W+2JV7uDX3aMQ125p65b3qV/t2/P5ZTHQe+lvsRrbRhFd9xpZSxn
         O2XDuNf9bAohq5iIy8s67uu9IfI0wsIJ4+quWDEHivLi+lETOBuy70uvVvipBPAGaZYw
         fP7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=DGCP5O5/7akEGs316eVVMjHCB2l7/EDTYabX4QLEA0U=;
        b=RwLxT4h8rl3a8Ava2yI0MM1iAR5aaGBy3RLdcxidNC5E6EWxuxOLjH5jc7YNf9In4a
         Z2zVLh+FE3Fp0AjfKW6ZVMMLAJrbsLL1fCqKGOsc0L+F8xC9ulDpgRoZAq29tnd+HMFq
         99oAbnWsO744gDoraAyBrGk5CN/KBqL7qHesEeqCmMJPA5iI/SZSGax1uAAkVQj1upDO
         F/ZvypWvIJvM/Pz1wWzkw/ddkEqarDwHMQ3za+IYkWCntPUwWknfk5Fluurgt7BKhRsE
         zJovs2nOnPBZ0xrXTTXR8VOVsGsw0nDgyHGCcCk9sZMJ88UaD7+Vq8xjJ9teAaSBJ5/G
         qMQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EcjmLeYJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id z22si130680pfc.6.2021.03.25.01.48.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 01:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id r8so1468952ilo.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 01:48:02 -0700 (PDT)
X-Received: by 2002:a92:d78f:: with SMTP id d15mr5044103iln.112.1616662081901;
 Thu, 25 Mar 2021 01:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064b16905be4e0722@google.com>
In-Reply-To: <00000000000064b16905be4e0722@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Mar 2021 09:47:25 +0100
Message-ID: <CA+icZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - March 24, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: android-llvm@google.com, clang-linux-fellowship@google.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EcjmLeYJ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136
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

On Wed, Mar 24, 2021 at 9:20 PM ndesaulniers via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> March 24, 2021
>
> LLVM_IAS=3D1 ARCH=3Darm landing in Android
>
> Probably going to skip 4.19.y, one last assembler bug won't be ready in t=
ime, 27 kernel backports required.
>
> https://reviews.llvm.org/D98916
> https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck=
-us.net/
> https://lore.kernel.org/stable/CAKwvOdm6FXWVu-9YkQNNyoYmw+hkj1a7MQrRbWyUx=
sO2vDcnQA@mail.gmail.com/
>
> 32b PPC BE builds spun down in CI
>
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/111
> https://github.com/ClangBuiltLinux/linux/issues/1292
> https://bugs.llvm.org/show_bug.cgi?id=3D49610
>
> Riscv crash on -next, requires earlycon to get more info (or GDB)
> CFI patches need help review+test
>
> V3: https://lore.kernel.org/lkml/20210323203946.2159693-1-samitolvanen@go=
ogle.com/
>

Thanks for the report, Nick.

I am a bit astonished that ClanBuiltLinux Mailing-list was not CCed on this=
.
Can you Nick or Sami comment on this?

Personally, I am interested in the x86-64 part of Clang-CFI which I am
testing for a long time successfully.
What is the plan for this?

- Sedat -

> PGO patches need help review+test
>
> https://lore.kernel.org/lkml/20210226222030.3718075-1-morbo@google.com/
>
> Wenlei, Hongtao, Yonghong (ThinLTO+pahole)
>
> https://reviews.llvm.org/D80765
> Duplicate type info, skip emitting it for cross TU defined types? (TODO: =
Nick: talk with dblaikie@)
> Inlining of global functions means they can=E2=80=99t be traced; __no_inl=
ine_for_lto __attribute__((noinline))? Prevent inlining in LLVM?
>
> R=C3=A9mi, Antonio
>
> TuxTest, TuxRun demo
> https://gitlab.com/Linaro/tuxsuite#tuxtest TuxRun not yet ready, stay tun=
ed
> Would allow us to drop distributing QEMU, simplify workers in CI
> Plan file support to be added to tuxsuite, months out though
>
> (Arnd) warning promotions
>
> Warnings were disabled in top level Makefile, but not enable-able via W=
=3D123
>
>
> ________________________________
>
> Sent by http://go/sendnotes
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/00000000000064b16905be4e0722%40google.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUXC2YTR356yYhLDjeh6ibZ9OAY6o1U1keygPdWHWE2chg%40m=
ail.gmail.com.
