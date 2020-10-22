Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6OBY76AKGQEGTTNZOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B370296575
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 21:43:54 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id f126sf1800100qke.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 12:43:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603395833; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvfLTfagBuxHCGK+8jg2mbwz85CuR3aEKC0YhMBqVjWlqPNrfcP1E2usTTnZCsQ/n2
         kotdlk06x0dDZHW55QwIMnHpmKw0CunWeA2IGq0TRUOXsXFQwrwpIFbVmamIZ6tqLcYU
         HkOz3oSS2qKJkFlk7ZaS43y4t7ctgBL+qXTxt6+LW8wIbgggezd5u0ZdfydXFVDiay1x
         WTgCxeJ32chO3LnpIITIK0XlfUq6hMk6GVwHNqu9bWCDzpXNlyMybLhhHyC8XWFShvJ9
         tBwVtnFOaaSBc0dxC0MZGlXWjjCVfwW3VDPTY9ZSFaDrPe6sTnNYltD/ni6SnIFGYYjQ
         xGiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E0ApCh64HqkmhKjwjiOvp2YYsRwy+VidDPQGWCIlN58=;
        b=hX/D6/yU1ljYjp6x39k6wdbf4ZfXnBlesWK9f4LCk3T3VslVNhjLUUivFqU7BndQIh
         tCLzg0yu3cmPz52GZzABYhtBYxSj5N8YslWsfQ+LAe8dBCNJ1GgFLqBALh7EPTQTynZ/
         g6vrM2yjuVEpWfn4Z8WJAxKRR03vB1YgcxvwtpNzbksGThfbCkXyrb89E5n492fdD+0C
         HDY6WJh6q6YAPxLVddADENG34c/vBlUs084pZ/vV+bmvByr5x7CopHwLyTwnBEdhjrp3
         6WrLUNPFR4QszKUduBQTO8v2a3TRlWDjd275sJprpf6FC6l3mqt/h5/JF2q937H+sVVC
         jv0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wC8jNJtJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0ApCh64HqkmhKjwjiOvp2YYsRwy+VidDPQGWCIlN58=;
        b=GUhBrMBnjkIjTgUSUTgZjuMlO8OzkYZpK8LPdxjPZuNkIbpjILtHkJdP5zFwod8/ph
         i+ZhMQ5N/CXO3q5nBvWOtO7cXKc1H5YUUevaw2gTVwolQo06UEdSjE8QShhMBJXA20IQ
         78DsPrt8HL18urnsiz7aG6VwMD1k85K2eYSZxGTRA2/3JDTm78sn0dyt5GcY2QUP3lAc
         w5bWWa84xMgdxrUDk7Zt29mLjYv2bQkCtXRXM5SHm27G2XANw/cWVJAcQWM5EIiyIRD7
         Acdms2z1bi8Mrwa9izJcuky23rP+YFh8ddnkZVB/DVjz7qYp0CNBxR62Gozd7Q8XfvKA
         ZfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0ApCh64HqkmhKjwjiOvp2YYsRwy+VidDPQGWCIlN58=;
        b=V1ZzthIMVWh9dxWvJ2u5XhIIeOR6dAJmv7W7a4XuAAAKji8NfWZgWO1+Yb27lIvlRg
         pWyE5TPIULV4fSdOn2W+x30cHp/B73+P2HD5AfBKFiLr0CJltSbP/bbHMb8CPL377NHY
         mRRpKbAHhjZuEQORHIMpoBAIX4xPdIOsZDicNAHJRE/kH5h6HCAtBtyrod1emXP5UF2q
         4dIkXAeblwbawXCwJAfevULStXVuevmO5C5f4ylrTLzsVYKjN7YLz8gLQhrmKe6Sn38S
         TODh8NB1huuMvLnRNFY+m8glnA+G+THi9GpqcTD7JynAg3d7XS8MBfLp0mmUUnZDDPoo
         xL1w==
X-Gm-Message-State: AOAM533/v4bc6Q1YKI8wOQCgM5IRTmuiKHoPWdb7Y/eKJKrhfPE4W26d
	sFEe+Eh+Bg2NC6MnqOhdxNQ=
X-Google-Smtp-Source: ABdhPJwcKf0hBkEaiDQmSikjiZBYQExElBmbFLuZzi8jwHUuk2NPKHJZfeJFlmrczR0AOFqCOhalSg==
X-Received: by 2002:a37:5ca:: with SMTP id 193mr2660061qkf.44.1603395833501;
        Thu, 22 Oct 2020 12:43:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7347:: with SMTP id q7ls955168qtp.8.gmail; Thu, 22 Oct
 2020 12:43:53 -0700 (PDT)
X-Received: by 2002:ac8:6b8d:: with SMTP id z13mr3646625qts.41.1603395832892;
        Thu, 22 Oct 2020 12:43:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603395832; cv=none;
        d=google.com; s=arc-20160816;
        b=vCt6xuEzyOfpC6LuUSJFFtPUGyMK876pYP55OskTh2fJqLADKk4ZuWsJqKzfJcTQNC
         CnAG9xEyBtaJP0unC4G0HaUw2b6I/raCl603B6cHFXYyfvlzh/VQKMjb4Xta2DVLgaU4
         muoKx1Gx4eGwDVpvKDxp8wQWB2g6q521MwDHF9otulTQ6qicbeDXbng5fiISedclEfiq
         BTURNGabU2M2zZKeBwPW6q6QkFBJOz5VDgjWuZ4V+g1qZJJN6po26IwYbYf/MmVmeknJ
         JfqfQWHQ3zHz/IGgjMnjqsqyQxtIu0IKwQF9W5aHe1TAaaTNMNsdIs2xf2ZtDqummrop
         WzNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KU1tmdNxboz7OccinppOrMQzVMtne9nya9VKm7C7P6g=;
        b=QJCPxuf84Fifxth1XzITX1j4LzULDtkYGvQkNE9thKJSpXw9Q9t+DG+3k7//qlrcAI
         8pUAS3f9MVmMfVkYbx8pcMu31nlXn98KMuqm0/i5rpGgOimzfjtzc1SW2Aj8y3UXl97t
         RaHbexKWHBsi3FPq4VAZ1s1R2mSipPbcBnp1tatkpvI6sFXTFTkwgy3dARul986brmbu
         eiD/HcrlE4blhn2NvTRIwbcexLhPWDyAE2Xbjxw84WRLklxM9s3oN97Mlh7iC5M00MWZ
         0m0zF9YAkTNG5nIB+ovDiu/hC8xP/Xgv7/2FT14Hpl7iaiTZP17fB7kZj6UFJjqGh3P2
         qMWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wC8jNJtJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id v189si140485qka.7.2020.10.22.12.43.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 12:43:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id t14so1605632pgg.1
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 12:43:52 -0700 (PDT)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr208204pjb.25.1603395831612;
 Thu, 22 Oct 2020 12:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20201022072222epcas1p252967ec49294985d09ea651f7960e4b3@epcas1p2.samsung.com>
 <00c301d6a844$150aa530$3f1fef90$@samsung.com>
In-Reply-To: <00c301d6a844$150aa530$3f1fef90$@samsung.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Oct 2020 12:43:40 -0700
Message-ID: <CAKwvOdkdKD=AtVPNCmcJ3-nz607+mM9Zo-i4Scf8RFr8YNBsTQ@mail.gmail.com>
Subject: Re: There is a kernel panic with CONFIG_GCOV_KERNEL
To: =?UTF-8?B?7J207KCV7ZiE?= <jhs2.lee@samsung.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, mcneo.kang@samsung.com, 
	cmlaika.kim@samsung.com, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Collingbourne <pcc@google.com>
Content-Type: multipart/related; boundary="000000000000fb179305b247ae03"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wC8jNJtJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000fb179305b247ae03
Content-Type: multipart/alternative; boundary="000000000000fb179205b247ae02"

--000000000000fb179205b247ae02
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

+ Sami, Peter
Note that CFI is not yet upstreamed; it's part of Android and a major
dependency (LTO) is in the process of being upstreamed at the moment.
Discussions about CFI may not be relevant for all folks on the CC list.


On Thu, Oct 22, 2020 at 12:22 AM =EC=9D=B4=EC=A0=95=ED=98=84 <jhs2.lee@sams=
ung.com> wrote:

> Hello Dear. GCOV maintainers
>
>
>
> I'm JeongHyeon Lee, charge of security features(CFI, something else) in
> Samsung.
>
>
>
> When I tried to enable GCOV feature in kernel using this kernel
> config(CONFIG_GCOV_KERNEL),
>
> I met a problem about CFI(Control Flow Integrity) feature.
>
> like this:
>
> ----------------------------------
>
> <4>[ 1.379424] [0: swapper/0: 1] CFI failure (target:
> __llvm_gcov_writeout+0x0/0x7c):
>
> <4>[ 1.379462] [0: swapper/0: 1] WARNING: CPU: 0 PID: 1 at kernel/cfi.c:2=
9
> __cfi_check_fail+0x4c/0x54
>
> ----------------------------------
>
>
>
> I was try to find root cause, but it=E2=80=99s too difficult.
>
> So many new =E2=80=98__llvm~~=E2=80=99 function add when build time. I do=
n't know what
> each function has.
>
>
>
> It's not easy to find out root cause of this problem on my side.
>
> I think GCOV or LLVM isn't consider about CFI. because CFI is new
> feature.
>
> Or There may be GCOV or LLVM patch that do not apply on my side.
>
> If you know about this problem, Could you please tell me about it?
>
>
>
> Thank you,
>
> JeongHyeon Lee
>
>
>
>
>
> P.S) This is a call stack when a problem occurs.
>
> We get the kernel log with "CONFIG_CFI_PERMISSIVE=3Dy"
>
>
>
> ------------[ cut here ]------------
>
> CFI failure (target: __llvm_gcov_writeout+0x0/0x7c):
>
> WARNING: CPU: 0 PID: 1 at kernel/cfi.c:29 __cfi_check_fail+0x4c/0x54
>
> Modules linked in:
>
> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S                5.4.61-~~~~~ #1
>
> Hardware name: ~~~~ ~~~~ (DT)
>
> pstate: 60800005 (nZCv daif -PAN +UAO)
>
> pc : __cfi_check_fail+0x4c/0x54
>
> lr : __cfi_check_fail+0x4c/0x54
>
> sp : ffffffc01005bdb0
>
> x29: ffffffc01005bdb0 x28: 0000000000000000
>
> x27: 0000000000000000 x26: 0000000000000000
>
> x25: 0000000000000000 x24: 0000000000000000
>
> x23: 0000000000000000 x22: ffffffc0103fd000
>
> x21: 7e04a0fb7ad8bcd5 x20: ffffffc01380d630
>
> x19: ffffffc010b1cd00 x18: ffffff8000680430
>
> x17: 0000000000000000 x16: ffffffc0119a1014
>
> x15: ffffffc0129b2e17 x14: 000000000000003f
>
> x13: ffff000000000500 x12: 0000000000000001
>
> x11: be6ce93934dbcb00 x10: be6ce93934dbcb00
>
> x9 : be6ce93934dbcb00 x8 : be6ce93934dbcb00
>
> x7 : 0000000000000000 x6 : ffffffc0138d0827
>
> x5 : 0000000000000001 x4 : 000000000000000c
>
> x3 : ffffffc01005b9c0 x2 : ffffffc0119c0454
>
> x1 : ffffffc01052cd40 x0 : 0000000000000034
>
> Call trace:
>
>   __cfi_check_fail+0x4c/0x54
>
>   __cfi_check+0x6e2ec/0x7ae50
>
>   llvm_gcov_init+0x104/0x108
>
>   do_basic_setup+0x44/0x7c
>
>   kernel_init_freeable+0xe8/0x168
>
>   kernel_init+0x18/0x2c0
>
>   ret_from_fork+0x10/0x18
>
> ---[ end trace ba162e7bc497b725 ]---
>
>
>
>
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkdKD%3DAtVPNCmcJ3-nz607%2BmM9Zo-i4Scf8RFr8YNBsTQ%4=
0mail.gmail.com.

--000000000000fb179205b247ae02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">+ Sami, Peter<br><div>Note that CFI is not yet upstreamed;=
 it&#39;s part of Android and a major dependency (LTO) is in the process of=
 being upstreamed at the moment.=C2=A0 Discussions about CFI may not be rel=
evant for all folks on the CC list.<br><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 22, 2020 at 12=
:22 AM =EC=9D=B4=EC=A0=95=ED=98=84 &lt;<a href=3D"mailto:jhs2.lee@samsung.c=
om">jhs2.lee@samsung.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div lang=3D"KO"><div class=3D"gmail-m_-17411541304=
70991441WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Dea=
r. GCOV maintainers<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">I&#39;m JeongHyeon Lee, charge of security features(CFI, somet=
hing else) in Samsung.<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">When I tried to enable GCOV feature in kernel using this ke=
rnel config(CONFIG_GCOV_KERNEL), <u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">I met a problem about CFI(Control Flow Integrity=
) feature.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">like this:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">----------------------------------<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">&lt;4&gt;[ 1.379424] [0: swapper/0: 1] =
CFI failure (target: __llvm_gcov_writeout+0x0/0x7c):<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">&lt;4&gt;[ 1.379462] [0: swap=
per/0: 1] WARNING: CPU: 0 PID: 1 at kernel/cfi.c:29 __cfi_check_fail+0x4c/0=
x54<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">---=
-------------------------------<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">I was try to find root cause, but it=E2=80=99s too=
 difficult. <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">So many new =E2=80=98__llvm~~=E2=80=99 function add when build time. =
I don&#39;t know what each function has.<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">It&#39;s not easy to find out root caus=
e of this problem on my side.<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">I think GCOV or LLVM isn&#39;t consider about CFI. <=
/span><span lang=3D"EN-US">because </span><span lang=3D"EN-US">CFI is new f=
eature. <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">Or There may be GCOV or LLVM patch that do not apply on my side.<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">If you know abo=
ut this problem, Could you please tell me about it? <u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you,<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">JeongHyeon Lee<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">P.S) This is a ca=
ll stack when a problem occurs.<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">We get the kernel log with &quot;CONFIG_CFI_PERMIS=
SIVE=3Dy&quot; <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"> ------------[ cut here ]------------<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US"> CFI failure (target: __llvm_gcov=
_writeout+0x0/0x7c):<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US"> WARNING: CPU: 0 PID: 1 at kernel/cfi.c:29 __cfi_check_fail+0=
x4c/0x54<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
"> Modules linked in:<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US"> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S=C2=A0 =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
5.4.61-~~~~~ #1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"> Hardware name: ~~~~ ~~~~ (DT)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US"> pstate: 60800005 (nZCv daif -PAN +UAO)=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> pc : =
__cfi_check_fail+0x4c/0x54<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US"> lr : __cfi_check_fail+0x4c/0x54<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"> sp : ffffffc01005bdb0<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x29: ffffffc=
01005bdb0 x28: 0000000000000000<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US"> x27: 0000000000000000 x26: 0000000000000000<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x25: 000000=
0000000000 x24: 0000000000000000<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US"> x23: 0000000000000000 x22: ffffffc0103fd000<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x21: 7e04a=
0fb7ad8bcd5 x20: ffffffc01380d630<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US"> x19: ffffffc010b1cd00 x18: ffffff8000680430<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x17: 0000=
000000000000 x16: ffffffc0119a1014<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US"> x15: ffffffc0129b2e17 x14: 000000000000003f<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x13: fff=
f000000000500 x12: 0000000000000001<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US"> x11: be6ce93934dbcb00 x10: be6ce93934dbcb00<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x9 : be=
6ce93934dbcb00 x8 : be6ce93934dbcb00<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US"> x7 : 0000000000000000 x6 : ffffffc0138d0827<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x5 : 0=
000000000000001 x4 : 000000000000000c<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US"> x3 : ffffffc01005b9c0 x2 : ffffffc0119c0454=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"> x1 : =
ffffffc01052cd40 x0 : 0000000000000034<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US"> Call trace:<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 __cfi_check_fail+0x4c/0x54<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 __c=
fi_check+0x6e2ec/0x7ae50<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">=C2=A0 llvm_gcov_init+0x104/0x108<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 do_basic_setup+0x44/0x7=
c<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0 kernel_init_freeable+0xe8/0x168<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0 kernel_init+0x18/0x2c0<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 ret_from_fork+0x=
10/0x18<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
> ---[ end trace ba162e7bc497b725 ]---<u></u><u></u></span></p></div><table=
 id=3D"gmail-m_-1741154130470991441bannersignimg"><tbody><tr><td><p>=C2=A0<=
/p>
</td></tr></tbody></table><table id=3D"gmail-m_-1741154130470991441confiden=
tialsignimg"><tbody><tr><td><p><img style=3D"border: 0px solid currentcolor=
; width: 520px; height: 144px; display: inline-block;" src=3D"cid:17551d52a=
06c204bfcc1">=C2=A0</p>
</td></tr></tbody></table></div><table style=3D"display:none"><tbody><tr><t=
d><img style=3D"display: none;" border=3D"0" src=3D"http://ext.samsung.net/=
mail/ext/v1/external/status/update?userid=3Djhs2.lee&amp;do=3DbWFpbElEPTIwM=
jAxMDIyMDcyMjIyZXBjYXMxcDI1Mjk2N2VjNDkyOTQ5ODVkMDllYTY1MWY3OTYwZTRiMyZyZWNp=
cGllbnRBZGRyZXNzPW5kZXNhdWxuaWVyc0Bnb29nbGUuY29t" width=3D"0" height=3D"0">=
</td></tr></tbody></table></blockquote></div><br clear=3D"all"><div><br></d=
iv>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Thank=
s,<div>~Nick Desaulniers</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdkdKD%3DAtVPNCmcJ3-nz607%2BmM9Zo-i4Scf8R=
Fr8YNBsTQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdKD%3DAtVPNCmcJ3-nz607%=
2BmM9Zo-i4Scf8RFr8YNBsTQ%40mail.gmail.com</a>.<br />

--000000000000fb179205b247ae02--
--000000000000fb179305b247ae03
Content-Type: image/gif; name=noname
Content-Disposition: inline; filename=noname
Content-Transfer-Encoding: base64
Content-ID: <17551d52a06c204bfcc1>
X-Attachment-Id: 17551d52a06c204bfcc1

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
fqAGBgQAOw==
--000000000000fb179305b247ae03--
