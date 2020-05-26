Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBGXFWP3AKGQEGGPUSLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA70B1E1FF8
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:42:34 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id n9sf9613442wru.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 03:42:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590489754; cv=pass;
        d=google.com; s=arc-20160816;
        b=RbYbJdTbaif9bPS+DBymDWPj0+MepVsLCOZpyGf7XIDhuOpf5oV1IMRiA2iQ3P2tdc
         GFd083RAJcvmOysl0zQqfkJvm9SPHG1u9f/orQz4N4QG7DK33UnsGnh97ths0zN0srXs
         tMLB8vU6ttebewZomMFAxbgotUdBsrVmnMWceCWikitKmkpe3U9CyLyEOWi9AmUT9SLj
         PHAROZt/Ad+BIyQdQY+8q7rO/RLpcy5hh8wJtsRuvK20gCR3pslcU9CmYzD9QWJbaOrM
         WCzlvwVGG7HCKd5s7jnCq56wuKq7/qn7gws23WvpHdXAJfDxAo+iFrQEOG14mI0q5cxR
         ppdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uQNGrIwD8+of2eKcM6KqLSqE5gbh3zTo8Z0sYLq+NeM=;
        b=MxwkHL6cbaZzkSASh/dwZKbXs+A3DbwErSbPQI0/gagRfQjbPwEHWqAskSyHes6sK/
         0fV521pkLZYe18I6W0EiOm8285qU7ekk+Rfu2mKIwNDGU/AkD+Ruoq8FWL9DS5iz7aa8
         NTP/yiEQ1FqyxOZNElOfJ8WcuIkbvw7X3CyGXPlUOxfd7sS/ND68nSj8WmhLWAji3yf+
         cDzWTeLI6tKW9jwovRVKhHi9Uy20lWMOW2Afs8tYskSLW8CkVn4lLLyxixEEPiRPVKRB
         kHM6Q782x+0oZaaXo2bT3l4hkPtnSfO3Ns3eYgYYm4pnEk2x4OX7sr3aIg33jhZKUevG
         /Mog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uQNGrIwD8+of2eKcM6KqLSqE5gbh3zTo8Z0sYLq+NeM=;
        b=NiUvUt0coau5b74lgL6ZgtJMNbdaiNPsSfuv2rDcGc8CyRlazCHDeftG7CIcGwYID9
         OSIW+Q9RlqNQSpU78slshk+mH+RIv+t69ghJXlZJ6tDgz8gucmS8rLZhwrQ7kie63EZK
         4sZWtkomBvc0PrnL1dICRjklfQ70R8YpyQTKI7+p0xVk1g+UzJA9+mfuGcraHXac72ZP
         4f4C1gFfktGrma6loD/wx70f1UvQGv7NQwIS7/NZaPoVU/Kq0gZW6hj2MZCqp4M7wu96
         wvmpQIbONF5j1gY442dCuSsmIOjyGNDqBg+v0aVLX60ER0zynuCpFvkqFi2qE6aJXq4j
         SATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uQNGrIwD8+of2eKcM6KqLSqE5gbh3zTo8Z0sYLq+NeM=;
        b=Fpt4a0I88HRCO7IhPT5e7g1Ggrs2+rJN1RZRLnsVBtJ8YsAnOvQVT7+27LpF96Rj37
         St4LH/jvN1Lyba91DqJ32C+BXAQ2PncYNt3RnelAS7gNElUb9ZnsY8DW0q1efFNngAka
         QbyoOD5Fau/xlxUZ3/Hs2ncyLjp5v7MXSARmk/QfeG0plLIxoHNchSdNth1b3xHLkfgB
         G3yZ2zvaV4Kr8RFD4xY7pd4u/xrMUVLr2aeeQq9QlC/tHg+V++zwNoOzjuyOJR7un0Rw
         VyP/EhptY8+trkz8Ujfjnc4nphaq91OBBhydsBYPDTSPU0AzqcqoC8cDpyhFSug2U6W7
         5npQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZeBIu/5Jeb9QU+Zm/uAMEeymUhHnRHnyNxVCGP0Eesy3Kt02X
	asiOjtLPUjpGdpHT9eNM9DE=
X-Google-Smtp-Source: ABdhPJwymmY4f3PosionawXzN3+IMAzA4G8qsgMBuWKUHndmrM5xE+eSqeg3p3k5S3ecraQdLBNI+A==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr3467060wru.358.1590489754659;
        Tue, 26 May 2020 03:42:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c770:: with SMTP id x16ls5990286wmk.3.gmail; Tue, 26 May
 2020 03:42:34 -0700 (PDT)
X-Received: by 2002:a1c:544d:: with SMTP id p13mr861903wmi.25.1590489754196;
        Tue, 26 May 2020 03:42:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590489754; cv=none;
        d=google.com; s=arc-20160816;
        b=UdjLPorvYz4lDskuL8W31qBstib6ITEHbQIGTt4JtoqQJ3MRDrOdfEvkZSRswO4JzS
         VcTpiypsnwOmg7C5QOC1TekwN2emppttJFdu0uRrPOf4zp0sNg6TkustzUClJeBPnM9x
         2ifcpir32Mka0Kx3WO9i07HVUGEr3du4kwmPi59lNwZpWNbzaHo2z1Anfz+UWblEs0HE
         ugAPMfBaaYXWe3IV7mwagA2VB9v1ripQ0r6g/Ex7fL2JloV351p+lYtiDfcOhdsN5K8/
         dq6PBCYy/ctkJaWlRQ6A+YxPi2nyMTAIgJAGLPNdWIFmKP+1NJa2r+xsRgF//yRURTJI
         PT5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ACimDYYDlr70cMGpImzoHikpOl3de3cJ1aRwknZ8uQA=;
        b=mAsirLWXlXTFveq2qlTun2WizsFtqt29dZjU+tbQd1gIZc4bISre9sISKPyKfmAfa5
         I78IrkS0oHiibqvhqsLi57zrVqs0q0cphb/ptvXNJlnmX+FQtDtShv0629CxxtWWsToq
         Z2C+y3LBOhxJ+J+qNOGpbJvmVZd7JtCc3FpSsVODdr2R01ConDEgf709kIUpCjKlSEwe
         UFbTy+XBFFvOdvdmxZVz7Vf7+0RjVAn44E3P9H6O1XeALvGMD70SiumOLd7Ob29lQFeF
         AZyi223fhq66M3yL8kqUwRFlCQICB9BaWh7Ql9W8N7UerYVVVQCwFJot4ow4izyvYRH8
         2X+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id q70si1339744wme.0.2020.05.26.03.42.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 03:42:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M8k65-1jiBrs2YRF-004h4B; Tue, 26 May 2020 12:42:33 +0200
Received: by mail-qk1-f179.google.com with SMTP id q8so3543377qkm.12;
        Tue, 26 May 2020 03:42:33 -0700 (PDT)
X-Received: by 2002:ae9:ed95:: with SMTP id c143mr562891qkg.394.1590489752379;
 Tue, 26 May 2020 03:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
In-Reply-To: <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 26 May 2020 12:42:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
Message-ID: <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:OxEVQS4+TE4T7bOI/5L5MKganQabzJLB3MVu9KJE+p2FDrRCTbv
 998MDSpZo8xML6lkK1csfjGCAZSczlui28q5G5TD+DnBUJs3XfHfgJOIKasi4n8rbKHWZxV
 KyfoecEHlrNtsIEClrFH4NGpiPbHGwH+k3qmpRmvoIjzOU3+Vq3VhCoNNbdr1mSOuXMx+BX
 a20lyrR2CDBni+LDpIkaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9KXtNJxLy1s=:2PFHv3W0TxPZud+Zpp3+dY
 HrME02ZdGWgIF6nW/wVLjfL/kiftoRDpRUd7MaI+57BVR77Z/SF4rd/vL1wAV2KmTIgCgIjQg
 HRIj7sVFFq7Yiwpcg3FicbQpQ1988SxyQGaKNeHe5D06Fc4KxA6tlIVa2u2qH914e05nlwFnP
 Xsvvlyl0H41C1d6wjyl53hLIPbhgsceMfdoH/IGfaA/BFS4JRJvFD0YER5LQZ2zMQ9gdmI/E/
 Rs/xOmib1vSRaoxYBLPeccgtxav96zQz0t+8hM0kspkaegG0+XFyxzGCOgIYfypwAe6TsUxuk
 p8ZfAj+ODqGNRfqQqs6QJNXXYnnoZtptjcIG+pfX+Bq4wLFhJOpMdqz6V1zlvovaZAkz0Tblz
 lM2So4N7O0S5pFgGWh0btvCJfBu6QNF1UjtLzkZSTmsGC+iIvvU1NlKdXOb1G8SYsfVjlx8jp
 OVwzRGiQ8YgIKmoyBFK1JSoqzggN8MXu449uF4KLGAf1mwZbvS9uUe+VWnAr/kDbPJSuYB8GI
 KslTA5AGaqrkvDMG5XO7XK9Amla3FpvGjt7yJsHM5sZ0/bggD46Ai5v8y/Tb/N2l4sJ6Ac/VC
 jgeIW8RetywCXzYtu2MYg9L8GUQbKgAoykofuBgANJbUeJlEoI5UbeBqILHaLHoT1eT8AyTKg
 GAUrszmULhNREu9XFJm67IjX+8BAATb73PZJzthCXl/72JT/+/aNK6x281xdXv6pF4nFK3r0h
 JwMFipJXQUB9asznLVLbdsLWnYUTL4ohHdG5d7JTyTPQkVYB6gD0+KYfOROVjCY3pebQ9UERQ
 MG1zUf4THAt0O0uoaXhkbGF+ZGNvz2Qgrpo6AHtLrRAQxpxpIA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, May 21, 2020 at 10:21 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, May 21, 2020 at 7:22 AM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > It appears that compilers have trouble with nested statement
> > expressions. Therefore remove one level of statement expression nesting
> > from the data_race() macro. This will help us avoid potential problems
> > in future as its usage increases.
> >
> > Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
> > Acked-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Marco Elver <elver@google.com>
>
> Thanks Marco, I can confirm this series fixes the significant build
> time regressions.
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> More measurements in: https://github.com/ClangBuiltLinux/linux/issues/1032
>
> Might want:
> Reported-by: Borislav Petkov <bp@suse.de>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> too.

I find this patch only solves half the problem: it's much faster than
without the
patch, but still much slower than the current mainline version. As far as I'm
concerned, I think the build speed regression compared to mainline is not yet
acceptable, and we should try harder.

I have not looked too deeply at it yet, but this is what I found from looking
at a file in a randconfig build:

Configuration: see https://pastebin.com/raw/R9erCwNj

== Current linux-next ==
with "data_race: Avoid nested statement expression"
and "compiler.h: Remove data_race() and unnecessary checks from
{READ,WRITE}_ONCE()"

$ touch fs/ocfs2/journal.c ; cp
../arch/x86/configs/0xFFA843AA_defconfig obj-x86/.config ; perf stat
make olddefconfig O=obj-x86/ CC=clang-11 fs/ocfs2/journal.i ARCH=x86
-skj30 ; wc obj-x86/fs/ocfs2/journal.i
  48741  552950 9010050 obj-x86/fs/ocfs2/journal.i
real 0m12.514s
user 0m10.270s
sys 0m2.668s

== Same tree, without those two ==

$ touch fs/ocfs2/journal.c cp ../arch/x86/configs/0xFFA843AA_defconfig
obj-x86/.config ; time make olddefconfig O=obj-x86/ CC=clang-11
fs/ocfs2/journal.i ARCH=x86 -skj30 ; wc obj-x86/fs/ocfs2/journal.i
real 1m35.968s
user 1m33.579s
sys 0m3.523s
   48741  1926607 36542560 obj-x86/fs/ocfs2/journal.i

== Mainline Linux ==

$ touch fs/ocfs2/journal.c ; cp
../arch/x86/configs/0xFFA843AA_defconfig obj-x86/.config ; time make
olddefconfig O=obj-x86/ CC=clang-11 fs/ocfs2/journal.i ARCH=x86 -skj30
; wc obj-x86/fs/ocfs2/journal.i

real 0m6.529s
user 0m4.389s
sys 0m2.561s
  47377  377887 4178633 obj-x86/fs/ocfs2/journal.i

So both the size of the preprocessed file and the time to preprocess it are
still twice as bad for linux-next compared to mainline. Actually compiling the
preprocessed filed is very quick, as I guess only the preprocessing seems to
use all the time.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0RJtbVi1JMsfik%3DjkHCNFv%2BDJn_FeDg-YLW%2BueQW3tNg%40mail.gmail.com.
