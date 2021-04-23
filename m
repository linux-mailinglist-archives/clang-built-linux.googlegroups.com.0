Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBVPTRGCAMGQEWMGKEYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C072368E05
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 09:40:06 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id g7-20020a1709065d07b029037c872d9cdcsf8092317ejt.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 00:40:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619163606; cv=pass;
        d=google.com; s=arc-20160816;
        b=iOrHBiNNrP3IykpYu2A0fuJE3LuhaIespglCDD1knP883gv1sEq3jqfqeCWOlxU6DS
         CgbKmlHdOG04e/3UwRdiylCEcY3HB+GDVpWKar+NPkVrccbVEGZpD+dyAc1UjOA3r7Lh
         TpijBbIPSxOZ4jEUEHYF+F3ifXx8JTPYO72DGe7po6dI6pO3z1E4R8AQtzFXFM4nfEKi
         fRyyGLeE160hdQmaj3rPfCtfKob4fwYeIMUBiz9X2qIbUkQ+vvAPrIcxlpeSzQSs6u9C
         CEvytLFxJGuc0Dv1I3JHUI0ZGv1+kvT+1nFtCYYYOuJa1ERyQUlqVp0l+9S/m5+VYgrG
         IlZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=rnsfiJxJDigytoIYZlbHsrWlb2gWBj6GZhntqsHzpXE=;
        b=AesOHYBWQUImxhskMHaAt9i4iRXGc7Tu31b/kZ7Ifa4IJMHtpOJvsSQiugnIfPll8C
         j3HgSsHI/aD95mnMuK61qLM0wrpoSc7h1nx9Rrh75CaXprYtGqiEqLmbva5HC5z9Ecn6
         lG4wF1VmwXUrz6DgCi4iOf4hZuaFi4/OhJ+rwtXt97/ASTn+1ITvvAUU+HndXxwVR2Ii
         Z8jYjrWVZcBfvv2n8RwSWlwCFBWYO9YQXQWmLov+tykxcG3kEYEmQstyk3AArTc8ohRW
         jIGTEko0CCTPxm07dcSO7RJaybyhhq8UiSwmsctXRdskGJD4VKseF124uc+SDXeqX34d
         WrJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rnsfiJxJDigytoIYZlbHsrWlb2gWBj6GZhntqsHzpXE=;
        b=r3XmrQKq4+gpNCYAVCj2Pd3QhM6mKPhZMUfIQLzE9R6F4+Ww/2Yql9HDRU6WD29WHs
         B9PtTwM4o7ka8NYUjaXkMZpxi2D3jH6+itiy7QmtqQeDwcdYZHpRmgQ7Oh/Ec03sy3hB
         yD0/yXcZfQeVdTAliupOp/xRUyse2GWcxs89zzv4bgN0zgcCpvkddTuccoH6Ks1o13/Y
         oITJxj7vwMlo2q9mqnpq2a//aGnMTzW7Y6C9jMdfb0Tq4FQPdzcaV7EOXPVWpne3Lp81
         3n6VU5DMqh5sLU3O6hWPa5nLF+JLP+a0WrNMhktG7Nw/Y2O//yPghjuTrIzJmMhMmaYZ
         3Jgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rnsfiJxJDigytoIYZlbHsrWlb2gWBj6GZhntqsHzpXE=;
        b=nzoy+f4i2D+LOJENhptLkrMRkJlPYSJxBGcAdPWl2FQi9k5PTyOFeMpaZd4Qq8xqPv
         AY4qo8gbM3/Ebj4+4Rxs6VH579ChiTyjqPPYPqThMTKlpEczP64WFTAnG73u/XH1yG4G
         Z6zj3zzxYFiQIQpGaGgGEW1VqiRw1CsoEAfZIRnD2E5cWsSI+EZ3DEB3t5LaVmpjIyGT
         XFVUyNt74U5wdegLXU1XXfBdq7BSUjlVWN0DyPBeym/q0JLLlz1BwmejoLDv724XSdTs
         lKiIUBuUZ3fbnYt+B9i1PeO1QdHIZlVQ8i9LJEFfI2woleH5yimAFK1t/o/r42I0z3Cd
         yraA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x9f4d+G38hHc+KF+RSyPNtuj8TDeBfBVrwfFRu4XfEXdbvMHE
	+kQgl+xXIjmqOZf4ZHYSEpU=
X-Google-Smtp-Source: ABdhPJxM57cJmiXt+ytx6enNahMo5b/d7BM60b3ESeBpXTjdYpPaUVodYQezcIbfNEy18iHNJ22XCg==
X-Received: by 2002:aa7:db04:: with SMTP id t4mr2909598eds.274.1619163605977;
        Fri, 23 Apr 2021 00:40:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e085:: with SMTP id gh5ls4034734ejb.6.gmail; Fri, 23
 Apr 2021 00:40:05 -0700 (PDT)
X-Received: by 2002:a17:906:2746:: with SMTP id a6mr2737935ejd.265.1619163604975;
        Fri, 23 Apr 2021 00:40:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619163604; cv=none;
        d=google.com; s=arc-20160816;
        b=Xi0t/TBjbtuxxyJu2oz4J5+pwS1PvFnDQsI7OR7rRDUPokKy4aebTfXdUOa1wao0k4
         7gYeL4PGPFMcOLDzQ1hDVeu/rfpRDEy+b25JO9abdHEyYcbYYwpsuYNoseDOpfIxWxdw
         ncTmxkvjbj5FkbxTNytlW9NYevRhIH/JbhUM/IN6Lq/NfK0Xzn/hOHUC3LC/Tl1GzKxx
         7mFn0WBywcP82tfoSnmEeF/pUOt/wpfT53uJ18JBGbgTApG+ABynrnp+xY0d/pdrMo6M
         DYQRY5iwn3vazemtXhqYK1VXAnAOxdnJvVyZWPCqAXFTkYb4bYyvdVNnEOu7n1NNnZT1
         /7VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=mrKlwX6dKie5cmZENmCBvYK5DrJ5X1AWZwbaTjZh42o=;
        b=bY0HzQr5uUHZpE3o+ZkaBmQ431R5/zmp5qRa4slkda1OA9fWet3Nj1L123Q9bXJ3Ui
         hIPPGO4nLUrRpdZjMdEFFd1dIvUJwjdPCTQ2gEb9a0b7xPwUp1n8AogQ26WNC5delcCQ
         7GO0qH2140AZWyaCR5TyqS7qN5khLe4iJTUXBgfFyQynm3iFLH0fp7zyTK9B9LDZf2k1
         3Pl4SIR+df5xNn4wKjmYxdRtkT/QvP9W73Y8baQN2vNWLRsK74ZGicYfhlLPrkywDx4L
         ODMcJrDOQ45JDMEZcxYf2Jaevn3/xfmuJeaL3JY92mYQCg7awrsKqMUCEuI6Nb7upQUF
         DFFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id d24si578491edy.0.2021.04.23.00.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 00:40:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4FRR5b1yHcz9typ8;
	Fri, 23 Apr 2021 09:40:03 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id ELss1ENvDDh3; Fri, 23 Apr 2021 09:40:03 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4FRR5b14z2z9typ7;
	Fri, 23 Apr 2021 09:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 80B0A8B79D;
	Fri, 23 Apr 2021 09:40:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id KUSTaPnXfcX5; Fri, 23 Apr 2021 09:40:04 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id D6ACA8B79A;
	Fri, 23 Apr 2021 09:40:03 +0200 (CEST)
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
 Joe Lawrence <joe.lawrence@redhat.com>, Kees Cook <keescook@chromium.org>,
 Fangrui Song <maskray@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Nicholas Piggin <npiggin@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Mackerras <paulus@samba.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-2-ndesaulniers@google.com>
 <87blio1ilu.fsf@mpe.ellerman.id.au>
 <CAKwvOd=ZeJU+vLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw@mail.gmail.com>
 <3d837a36-a186-6789-7924-eaa97f056b68@csgroup.eu>
 <CAKwvOd=KP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e=zvB3XpQrp_-g@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <b73db2b3-16c5-caaf-acf4-9d22d45cba5d@csgroup.eu>
Date: Fri, 23 Apr 2021 09:40:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=KP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e=zvB3XpQrp_-g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 23/04/2021 =C3=A0 00:44, Nick Desaulniers a =C3=A9crit=C2=A0:
> On Wed, Sep 2, 2020 at 11:02 AM Christophe Leroy
> <christophe.leroy@csgroup.eu> wrote:
>>
>>
>>
>> Le 02/09/2020 =C3=A0 19:41, Nick Desaulniers a =C3=A9crit :
>>> On Wed, Sep 2, 2020 at 5:14 AM Michael Ellerman <mpe@ellerman.id.au> wr=
ote:
>>>>
>>>> Nick Desaulniers <ndesaulniers@google.com> writes:
>>>>> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for o=
rphan sections")
>>>>
>>>> I think I'll just revert that for v5.9 ?
>>>
>>> SGTM; you'll probably still want these changes with some modifications
>>> at some point; vdso32 did have at least one orphaned section, and will
>>> be important for hermetic builds.  Seeing crashes in supported
>>> versions of the tools ties our hands at the moment.
>>>
>>
>> Keeping the tool problem aside with binutils 2.26, do you have a way to
>> really link an elf32ppc object when  building vdso32 for PPC64 ?
>=20
> Sorry, I'm doing a bug scrub and found
> https://github.com/ClangBuiltLinux/linux/issues/774 still open (and my
> reply to this thread still in Drafts; never sent). With my patches
> rebased:
> $ file arch/powerpc/kernel/vdso32/vdso32.so
> arch/powerpc/kernel/vdso32/vdso32.so: ELF 32-bit MSB shared object,
> PowerPC or cisco 4500, version 1 (SYSV), dynamically linked, stripped
>=20
> Are you still using 2.26?

Yes, our production kernels and applications are built with gcc 5.5 and bin=
utils 2.26

>=20
> I'm not able to repro Nathan's reported issue from
> https://lore.kernel.org/lkml/20200902052123.GA2687902@ubuntu-n2-xlarge-x8=
6/,
> so I'm curious if I should resend the rebased patches as v2?
>=20

I can't remember what was all this discussion about.

I gave a try to your rebased patches.

Still an issue with binutils 2.26:

   VDSO32L arch/powerpc/kernel/vdso32/vdso32.so.dbg
ppc-linux-ld: warning: orphan section `.rela.got' from `arch/powerpc/kernel=
/vdso32/sigtramp.o' being=20
placed in section `.rela.dyn'.
ppc-linux-ld: warning: orphan section `.rela.plt' from `arch/powerpc/kernel=
/vdso32/sigtramp.o' being=20
placed in section `.rela.dyn'.
ppc-linux-ld: warning: orphan section `.glink' from `arch/powerpc/kernel/vd=
so32/sigtramp.o' being=20
placed in section `.glink'.
ppc-linux-ld: warning: orphan section `.iplt' from `arch/powerpc/kernel/vds=
o32/sigtramp.o' being=20
placed in section `.iplt'.
ppc-linux-ld: warning: orphan section `.rela.iplt' from `arch/powerpc/kerne=
l/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'.
ppc-linux-ld: warning: orphan section `.rela.text' from `arch/powerpc/kerne=
l/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'.
/bin/sh: line 1:  7850 Segmentation fault      (core dumped) ppc-linux-ld -=
EB -m elf32ppc -shared=20
-soname linux-vdso32.so.1 --eh-frame-hdr --orphan-handling=3Dwarn -T=20
arch/powerpc/kernel/vdso32/vdso32.lds arch/powerpc/kernel/vdso32/sigtramp.o=
=20
arch/powerpc/kernel/vdso32/gettimeofday.o arch/powerpc/kernel/vdso32/datapa=
ge.o=20
arch/powerpc/kernel/vdso32/cacheflush.o arch/powerpc/kernel/vdso32/note.o=
=20
arch/powerpc/kernel/vdso32/getcpu.o arch/powerpc/kernel/vdso32/vgettimeofda=
y.o -o=20
arch/powerpc/kernel/vdso32/vdso32.so.dbg
make[2]: *** [arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 139
make[2]: *** Deleting file `arch/powerpc/kernel/vdso32/vdso32.so.dbg'



With gcc 10.1 and binutils 2.34 I get:

PPC32 build:

   VDSO32L arch/powerpc/kernel/vdso32/vdso32.so.dbg
powerpc64-linux-ld: warning: orphan section `.rela.got' from `arch/powerpc/=
kernel/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.plt' from `arch/powerpc/=
kernel/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.glink' from `arch/powerpc/ker=
nel/vdso32/sigtramp.o'=20
being placed in section `.glink'
powerpc64-linux-ld: warning: orphan section `.iplt' from `arch/powerpc/kern=
el/vdso32/sigtramp.o'=20
being placed in section `.iplt'
powerpc64-linux-ld: warning: orphan section `.rela.iplt' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.branch_lt' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.text' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'


PPC64 build:

   VDSO32L arch/powerpc/kernel/vdso32/vdso32.so.dbg
powerpc64-linux-ld: warning: orphan section `.rela.got' from `arch/powerpc/=
kernel/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.plt' from `arch/powerpc/=
kernel/vdso32/sigtramp.o'=20
being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.glink' from `arch/powerpc/ker=
nel/vdso32/sigtramp.o'=20
being placed in section `.glink'
powerpc64-linux-ld: warning: orphan section `.iplt' from `arch/powerpc/kern=
el/vdso32/sigtramp.o'=20
being placed in section `.iplt'
powerpc64-linux-ld: warning: orphan section `.rela.iplt' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.branch_lt' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.text' from=20
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.rela.dyn'
   VDSOSYM include/generated/vdso32-offsets.h
   VDSO64L arch/powerpc/kernel/vdso64/vdso64.so.dbg
powerpc64-linux-ld: warning: orphan section `.iplt' from `linker stubs' bei=
ng placed in section `.iplt'
powerpc64-linux-ld: warning: orphan section `.rela.iplt' from `linker stubs=
' being placed in section=20
`.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.branch_lt' from `linker =
stubs' being placed in=20
section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.branch_lt' from `linker =
stubs' being placed in=20
section `.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.plt' from `linker stubs' bein=
g placed in section `.plt'
powerpc64-linux-ld: warning: orphan section `.rela.plt' from `linker stubs'=
 being placed in section=20
`.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.got' from `linker stubs'=
 being placed in section=20
`.rela.dyn'
powerpc64-linux-ld: warning: orphan section `.rela.opd' from `linker stubs'=
 being placed in section=20
`.rela.dyn'


Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b73db2b3-16c5-caaf-acf4-9d22d45cba5d%40csgroup.eu.
