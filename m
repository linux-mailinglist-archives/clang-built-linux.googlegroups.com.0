Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBZFHS7VQKGQEX2WFYWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AB59F7A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 03:07:49 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 141sf621922pgh.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 18:07:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566954468; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xgfd/sXhfukVEa7mxkDNIlr/YKMvsAA3trUz7Ro/LwZlTKKsX5vsjyaSvzOYDqZL0T
         iEsXluY6X6fs3O8JCyfQ1aCtGmN+yXcWVUOWKN4v9RJuP6rwzmmi4NTR6T+a9sxPEnEr
         x6mWJQFhXlb9EfztM22MnJ/Vmwi14L207kzkFKdZBwLZXRoMqYh1jvT88ZpC64htixNV
         4qqHUYGnxpgfW6AgotTt1STi+ddHuoYWuB9aH8Wk4aPJXezigzHkLyyB1JBB2nv1oZvn
         lH8yrPInjv+9J813tJWN4J5mVT44iDw2mXH3FcKJr963HClTE/UpjUz5poUBqdIvP7U9
         1CNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=mU6E9BmqHI106CV6fIEEkt+FKCtxoFd83xwLY+GLOs4=;
        b=hrfVNTcYUUxpz2topBqdn8ODd2Pf4T5472U00b7VfRAwpuiFvAOvyOQ/JJ6JIePN8d
         P4IQEEFDk+EjPYyKonL3zubtqOGW3bVDV1Fs2phvXCRYi8pyDd2dIfcIRV1xdeBkZ+dH
         nBz6lB6mOtusdzmjw2hiV35+KGAZ1xjI0uwFImmPTeV7q5DamwVPjQKVvcu7QAKh6q4S
         rBepwvu+kRXKzTuvwarRKxKm/1DovdbLlDNSP3ZTcAmAtQoaAurByIHemJPy3EELVKga
         Aj1xa1vBPRQSZKaTxIH28Q/55WkzoWYQtJ99zbNPLFL/r3qKaz/txPObnAusZIN6OTDx
         geSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=pVqmtHMR;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mU6E9BmqHI106CV6fIEEkt+FKCtxoFd83xwLY+GLOs4=;
        b=YuFsdAVznIRqRd6Kkcg0jwNpMSaqxUzcn7alFu0LnGCdGixzZqkNR0HJGcsuZ1BXD0
         YFWjzCINdgLq9+WTa7665ecGhQlTIQGSpHBqqISMAR7b9NZC3LAMG8rBpbhgEYPikprc
         3RDZCsYWXAa5gzTNqDZu1Tfc2Uln3jzbuYP3vnEL837BrZP23hVuWVJtZjckgykZYsSC
         yAPUT4FwdgT9RkTideC+Dzsla9S1zT6/znI/ZmlaUBt9ffFyOVzdwQYrmdeFxN2kI3YX
         oTENt8FuXZUP8IYP8oAX0VeB3g/KGVhwcJcKUBHi0BH7VOsfNX9jQpeI3d4VTSi58miZ
         b4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mU6E9BmqHI106CV6fIEEkt+FKCtxoFd83xwLY+GLOs4=;
        b=eq2nylU3Uk0qtIVRwTpVJMerZqX5LiJiciKzZhtM13oxFGrHkyAycJE24sPk0O7Wwu
         zc7nzMuf13SBw/MwT5FTUHL7EvzlgsloP8f3IdsruIdSwXNmY2Lv0zpQxlhH1m3YHAlD
         emhAH2Ql9UCRKSxDK9GTDdnvynA1IRyIwMfTYe5ailCY/cGbFt7CUvGr3Cmjo2cQVcox
         7fgxpt5glDLdNaeUYcBvb6dSRg/3nizXPAkM4UXZhzA4rfxVzL4VPDrnzWu1eQCheNOy
         Q7i1Z/f37F4En9TPDnoaURVqryYpCER+rtRdZ10Etux53fLo5+8wYy8qKfJbWJjzW24F
         aY1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVxLKSkMtgDH8e/XVmRgIFKXQbVsKTYjkAEJOh45XJqh5IRt2WZ
	k9KeKv300+AKvFEreK0otxw=
X-Google-Smtp-Source: APXvYqwtZuwFllC+WfGljC0cbSliiAqTuAQ4K9jDgfURWlbLl9GBbiV7l7UK6msCUTbKjPMn+25/3Q==
X-Received: by 2002:a63:3fc9:: with SMTP id m192mr1176253pga.429.1566954468507;
        Tue, 27 Aug 2019 18:07:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e589:: with SMTP id cl9ls359693plb.2.gmail; Tue, 27
 Aug 2019 18:07:48 -0700 (PDT)
X-Received: by 2002:a17:902:fe01:: with SMTP id g1mr528362plj.154.1566954468166;
        Tue, 27 Aug 2019 18:07:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566954468; cv=none;
        d=google.com; s=arc-20160816;
        b=HF8qykugte0ncgm+Qy8HJzLHn754pbOl8ILnUVavTQqWUXOSq8Q+vKtC3TpRwpzQKF
         7lHQibsMHwgvxYX6pHzwJ2F2VsQ9RAbedoA+iQgib/dE+ONbo+5M2bH/WlMXeA+ZRDuR
         BafseiH5HSlPJxQF8Ng0kDcobRSN4xI4X8IyFfwxrr929iKsIUlJtaRYebHPxJAyTobr
         qQXkdY34KfFLXcHkE+8X/ydaF6hbH2OYi5YP6GHUHHEUqjHxs8jm7Mhp1Fc7TYznzbUU
         cGgTRjkq9p2BeJjeegByMvG4i16Pq1qovt8Sow5zGmiSp3f+LDeK5qDTsaiOOJ8hjWwn
         XwQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=swyKWCdFIdJtO8JPMoHRDo+8t4IfVauN96cB1sxTR9A=;
        b=aYhd2rHUKajorDkdFRAsv1y7DhS6HtkcMx49mPkZzTLJYdpsgGrTluY1AEqyD/iAtS
         N+egM2BaWpUQD/eXxvf4zT4FBRbAYE18CEHsDamlO98ZJEB34jk2d/yR9DLvgG1AaTZt
         gCFIxtgblSYJu4FN8v+lItc3UMaHDij8v2XG305pNgOdkLf1MQ6Kz6JPamUf0BlUhN2r
         5OeStmHxmruwnRKMzUjf7pBxIG9TABmueOmK2JCCdnFesv0DLwKqlqNAD0Wb0CfqJbtg
         zesE+z0HP94lwnTz0fctB1cqy/rhZsIQhXbNyAl9o4SJC0RBGmTS1enisjfecwOqcsg8
         kE6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=pVqmtHMR;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a18si48002pjo.1.2019.08.27.18.07.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 18:07:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id v38so1172299qtb.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 18:07:47 -0700 (PDT)
X-Received: by 2002:aed:2fe6:: with SMTP id m93mr1900722qtd.114.1566954467184;
        Tue, 27 Aug 2019 18:07:47 -0700 (PDT)
Received: from qians-mbp.fios-router.home (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id k74sm600020qke.53.2019.08.27.18.07.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 18:07:46 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH] mm: silence -Woverride-init/initializer-overrides
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAKwvOdmEZ6ADQyquRYmr+uNFXyZ0wpBZxNCrQnn8qaRZADzjRw@mail.gmail.com>
Date: Tue, 27 Aug 2019 21:07:45 -0400
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Arnd Bergmann <arnd@arndb.de>
Content-Transfer-Encoding: quoted-printable
Message-Id: <3806CFC8-24DF-4CEC-8AFF-98FAF15CFCF6@lca.pw>
References: <1566920867-27453-1-git-send-email-cai@lca.pw>
 <CAKwvOdmEZ6ADQyquRYmr+uNFXyZ0wpBZxNCrQnn8qaRZADzjRw@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=pVqmtHMR;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Aug 27, 2019, at 7:25 PM, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>=20
> On Tue, Aug 27, 2019 at 8:49 AM Qian Cai <cai@lca.pw> wrote:
>>=20
>> When compiling a kernel with W=3D1, there are several of those warnings
>> due to arm64 override a field by purpose. Just disable those warnings
>> for both GCC and Clang of this file, so it will help dig "gems" hidden
>> in the W=3D1 warnings by reducing some noises.
>>=20
>> mm/init-mm.c:39:2: warning: initializer overrides prior initialization
>> of this subobject [-Winitializer-overrides]
>>        INIT_MM_CONTEXT(init_mm)
>>        ^~~~~~~~~~~~~~~~~~~~~~~~
>> ./arch/arm64/include/asm/mmu.h:133:9: note: expanded from macro
>> 'INIT_MM_CONTEXT'
>>        .pgd =3D init_pg_dir,
>>               ^~~~~~~~~~~
>> mm/init-mm.c:30:10: note: previous initialization is here
>>        .pgd            =3D swapper_pg_dir,
>>                          ^~~~~~~~~~~~~~
>>=20
>> Note: there is a side project trying to support explicitly allowing
>> specific initializer overrides in Clang, but there is no guarantee it
>> will happen or not.
>>=20
>> https://github.com/ClangBuiltLinux/linux/issues/639
>>=20
>> Signed-off-by: Qian Cai <cai@lca.pw>
>> ---
>> mm/Makefile | 3 +++
>> 1 file changed, 3 insertions(+)
>>=20
>> diff --git a/mm/Makefile b/mm/Makefile
>> index d0b295c3b764..5a30b8ecdc55 100644
>> --- a/mm/Makefile
>> +++ b/mm/Makefile
>=20
> Hi Qian, thanks for the patch.
> Rather than disable the warning outright, and bury the disabling in a
> directory specific Makefile, why not move it to W=3D2 in
> scripts/Makefile.extrawarn?

It could still be useful to have -Woverride-init/initializer-overrides in W=
=3D1
for people only running W=3D1 to catch some real developer mistakes. W=3D2
might be too noisy to start with.

>=20
>=20
> I think even better would be to use pragma's to disable the warning in
> mm/init.c.  Looks like __diag support was never ported for clang yet
> from include/linux/compiler-gcc.h to include/linux/compiler-clang.h.
>=20
> Then you could do:
>=20
> 28 struct mm_struct init_mm =3D {
> 29   .mm_rb    =3D RB_ROOT,
> 30   .pgd    =3D swapper_pg_dir,
> 31   .mm_users =3D ATOMIC_INIT(2),
> 32   .mm_count =3D ATOMIC_INIT(1),
> 33   .mmap_sem =3D __RWSEM_INITIALIZER(init_mm.mmap_sem),
> 34   .page_table_lock =3D
> __SPIN_LOCK_UNLOCKED(init_mm.page_table_lock),
> 35   .arg_lock =3D  __SPIN_LOCK_UNLOCKED(init_mm.arg_lock),
> 36   .mmlist   =3D LIST_HEAD_INIT(init_mm.mmlist),
> 37   .user_ns  =3D &init_user_ns,
> 38   .cpu_bitmap =3D { [BITS_TO_LONGS(NR_CPUS)] =3D 0},
> __diag_push();
> __diag_ignore(CLANG, 4, "-Winitializer-overrides")
> 39   INIT_MM_CONTEXT(init_mm)
> __diag_pop();
> 40 };

The pragma might be fine for Clang, although it seems a bit overkill.
Then, it needs to add something for GCC=E2=80=99s "override-init" as well.
If that mm_init.c grows in the future to have more structs, it may become
more desirable to use =E2=80=9Cpragma=E2=80=9D to only disable this particu=
lar struct.

>=20
> I mean, the arm64 case is not a bug, but I worry about turning this
> warning off.  I'd expect it to only warn once during an arm64 build,
> so does the warning really detract from "W=3D1 gem finding?=E2=80=9D

I am running this every day and seeing this every time, so definitely
appreciate disabling it in the kernel itself if not adding too much work
for maintainers. See the end of this file for my current filtering,

https://github.com/cailca/linux-mm/blob/master/compile.sh

>=20
>> @@ -21,6 +21,9 @@ KCOV_INSTRUMENT_memcontrol.o :=3D n
>> KCOV_INSTRUMENT_mmzone.o :=3D n
>> KCOV_INSTRUMENT_vmstat.o :=3D n
>>=20
>> +CFLAGS_init-mm.o +=3D $(call cc-disable-warning, override-init)
>=20
> -Woverride-init isn't mentioned in the commit message, so not sure if
> it's meant to ride along?

Yes, I did also mention GCC will also warn those (from -Woverride-init) but
did not include in the warning output which seems redundant.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3806CFC8-24DF-4CEC-8AFF-98FAF15CFCF6%40lca.pw.
