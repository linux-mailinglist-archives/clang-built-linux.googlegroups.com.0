Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYOO5X3QKGQEZNGVPYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A6A20F95F
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 18:25:07 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id l3sf7563283pjh.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 09:25:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593534306; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fdmtvy2zUC3478h7uW61FUVNcohg6ekoCp3vUkT/1qf2eKOnRktJcS1Rk5fbATVJki
         Wv1n3K055Kqm0TlAARYGHWvZVNkBWPo01RCakGHA5BuRmMa3FZI2HE91qttw89c4a+e6
         xsNX+Yx584MhnhfM8uIWShy3Ww3+IvC+9ChWJr9nDhcdZlOyxJW0L6XvTEZZzH/h5e1u
         S1ID2UWiKoG2fXmUCeIamjXIrx4XQ/ZfS31bXMzzO6brPBoPGFaPPikcqpD6byHh40y5
         5Qdsr/vbF5HbhfhyftGChl1AYXV87GhMaMjfi6lz2nTxJJfN/XZ+WinqVsOeGlEKfU5T
         +Xxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=rCd99CgWR7qgDIR8NYXjpqacksjz8J5GjhmSBEbPNvw=;
        b=E7B3oOQXJLyxXhhi4nQJJioYSTPNRiHdf0R2aRKxTklRc0cym0xShuSPkg7L4gwuMM
         pDJGkdPHvtUtyW3pdV37PVc4NlQi98HZvqmmxsP0qbXXTnhtzGPcLT0pj4aji2FxbbRz
         51vZiqws253iRZEZbX53YnbIZ6IKNmEdlcpaMjVCmcZOagX7ruD9Usu8zyde1f1Az2tp
         jlPmhLm/+sW6xSEtFn8Toae/RRMFfbFKxvQlBYUVWHHKavECvkfr1rlsm6NgCehMNvfY
         S/TPe9Q7atE5gGxN14c3wH9oz4Jd0I2nK8DV3Ffqu46/xopBUrIo9YQyLy02b3Oe6ed4
         yN7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XXPv9vQq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rCd99CgWR7qgDIR8NYXjpqacksjz8J5GjhmSBEbPNvw=;
        b=p9j8BPW0vhvUve2TIBYWHFosCv0+ECAWKWEPTNKAj+UQipIpvj1A28EfP2kiAqs+rb
         NizR88NLFzufPlvK2oTPVf5DcCf0DE1o5nKa4L3U51EzF0nuCX2CnDeEc+loWcunT0Tf
         9e/LD8r5kwR9PMqcW48Dbh3cSlQ79b4dQTMR/V0Pb8ehqoCn8ALFiequvCEQWuP5UuhS
         kc5sDMu5dmbXff8Lg5MOE+QK+FoxmWC153JWsvLDoqNgonXpJmGeqS/rDH6L8vGiuKBz
         LCI7Yg3/yhMytiNp6F2BKQRUA27mZiZ4Jgt8gcu7vOB4OIp9svNsTRTj66xvGZX51bpe
         FGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rCd99CgWR7qgDIR8NYXjpqacksjz8J5GjhmSBEbPNvw=;
        b=EvGkZMrGZQIoI+9UyHqhU3kCyQGjBN1DibG61jCAxElF43KsUQf2r/owyYIyUiAIsu
         VRUYxh9mZ2H3maVrkqLB5cY9q0kun0UNIEU2XCNI3ICHmY8AnlpUo9QDB2Gu2ACYo1m8
         3eKyMoTwz4IBbZaWH9Z4K1vFTWB9/Sx1RupNgZw6JPOCU0aXLYFNGKIp/uqBWl8WYwXj
         6GxBAv3X+MxILtJ1DXZnpUo3KwNRF259o/fHDlqfDqwjG2MZmKl3YzSE/SlFbbLh6Wv9
         wFIGmJXsnWnDJWETkzLiKcDTGt24HH/2GZrSgrDlugXDadzu6135LWGB/TG39p5XrCOb
         hB6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UVJgxAdyMG1T/D5Rw5SiL6g/2MUS1ncLrtfScUIHZ+eNFOOpO
	X8PjcCeClsWTv0+YcuCBlJo=
X-Google-Smtp-Source: ABdhPJxjwI1/8/6/SR0QqHm5J2u5HiwWNcgEBkuKwARzFjPb+IvmXzl59WQulP0rjhFxsK1CmvPOUA==
X-Received: by 2002:a17:902:7896:: with SMTP id q22mr18772432pll.237.1593534305945;
        Tue, 30 Jun 2020 09:25:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8446:: with SMTP id k67ls1980059pfd.5.gmail; Tue, 30 Jun
 2020 09:25:05 -0700 (PDT)
X-Received: by 2002:a63:7707:: with SMTP id s7mr15310541pgc.295.1593534305468;
        Tue, 30 Jun 2020 09:25:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593534305; cv=none;
        d=google.com; s=arc-20160816;
        b=rkCm1bsjL/+dtkg/leV18FhmmAwvlEVkU2y+LPtyPNkmCC97BQaWhXFW7zKIKz5y2m
         4EdcqsAWJf2bvRq+I4HkFgwlcqwN5RMBpMP+iI+BuzBVhmUs67IKuyz3IveXndx4FTx9
         Im3Et9GrYLylMxsf4Y0YGeiAhGVdDA1k9EPEyDzlNCZLTEJHgGxvAljlsyhFdSTvt3cv
         SE8cCYSNveyWZUQJ49W+PserZKn2MaMB+uuI9DKLJuZn+lFJ/F3DoAEufpjJJkO5eJ8S
         0uDAbfpfP3Mya1tEl0yYpeAl69GGESQQKchDTwqp0ckfQD25C6orWC5VtcQEWHFQ7VJq
         Z1TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=c+cwIU+8oEzxj68ZnGZslrDy3urCnpH1lM48REJOvoU=;
        b=Ze00o1MUJiFW1hleRJvXmZ5sKkfNrCi5Je3CBXld7vzhpcoGVzvxmWxOKVrLn6YbAN
         1/Bcyb6NmXptlc6dAuynKEZQCkv3A8qlf2Em8W5DZOS/ptPy93pOMd0eQBzoU1TRpmbB
         ifs0vhp0xjQBT0dB/cqmDtngyruSo1uNysFQc/roc3uCMNdzICpVVz0Lb+DOqPnhYQR9
         g6f5Bo8ZPXM3wv239s7eZwSteQDncty0qYS6mRn4tylGhTi3eOAuGkEYjR6mO6pBipmO
         Vl2TtNkaXWMUVGDL88vjCpSqVHkklAxuk52mqVpmMLZdrur5mFzQVM7Q1n1+4NUc30wQ
         2MBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XXPv9vQq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id t23si121652plr.4.2020.06.30.09.25.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 09:25:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 05UGOU9B001454
	for <clang-built-linux@googlegroups.com>; Wed, 1 Jul 2020 01:24:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 05UGOU9B001454
X-Nifty-SrcIP: [209.85.217.53]
Received: by mail-vs1-f53.google.com with SMTP id r5so11513533vso.11
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 09:24:31 -0700 (PDT)
X-Received: by 2002:a67:694d:: with SMTP id e74mr16230065vsc.155.1593534270033;
 Tue, 30 Jun 2020 09:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200629085911.1676554-1-masahiroy@kernel.org> <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com>
In-Reply-To: <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 1 Jul 2020 01:23:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com>
Message-ID: <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: make Clang build userprogs for target architecture
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XXPv9vQq;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jun 30, 2020 at 2:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 29, 2020 at 1:59 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Programs added 'userprogs' should be compiled for the target
> > architecture i.e. the same architecture as the kernel.
> >
> > GCC does this correctly since the target architecture is implied
> > by the toolchain prefix.
> >
> > Clang builds standalone programs always for the host architecture
> > because the target triple is currently missing.
> >
> > Fix this.
> >
> > Fixes: 7f3a59db274c ("kbuild: add infrastructure to build userspace programs")
>
> This is a neat feature I didn't know about; looks relatively new.
> What's the test case command line invocation to test this with Clang?



Test command:

$ make -j24 ARCH=arm  LLVM=1 CROSS_COMPILE=arm-linux-gnueabi-
allyesconfig  samples/
  [ snip ]
  CC [U]  samples/watch_queue/watch_test
  CC [U]  samples/timers/hpet_example
  CC [U]  samples/vfs/test-fsmount
  CC [U]  samples/binderfs/binderfs_example
  CC [U]  samples/auxdisplay/cfag12864b-example
  CC [U]  samples/hidraw/hid-example
  CC [U]  samples/uhid/uhid-example
  CC [U]  samples/connector/ucon
  CC [U]  samples/watchdog/watchdog-simple
  CC [U]  samples/vfs/test-statx


Then, check if the sample programs
were correctly built for ARM.



Before this commit:

$ file samples/vfs/test-statx
samples/vfs/test-statx: ELF 64-bit LSB executable, x86-64, version 1
(SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
for GNU/Linux 3.2.0, not stripped



After this commit:

$ file samples/vfs/test-statx
samples/vfs/test-statx: ELF 32-bit LSB executable, ARM, EABI5 version
1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.3, for
GNU/Linux 3.2.0, not stripped



To test this, having LLVM is not enough
because building userspace programs
requires target-specific libraries.

As for GCC, libc is usually bundled together
with toolchains, but as for LLVM we need
to provide target-specific libc.

This introduces a different kind of complexity
than building the kernel.

I read this article:
https://clang.llvm.org/docs/CrossCompilation.html


I use tc-build to compile llvm from source code,
but I also needed to install ARM libc.

"apt install gcc-arm-linux-gnueabi"
especially
"apt install libc6-dev-armel-cross".





If I build sample code for ARCH=arm64,
I see the following warnings.


$ make -j24 ARCH=arm64  LLVM=1 CROSS_COMPILE=aarch64-linux-gnu-
allyesconfig  samples/
  [ snip ]
  CC [U]  samples/uhid/uhid-example
samples/uhid/uhid-example.c:169:4: warning: format specifies type
'ssize_t' (aka 'long') but the argument has type 'ssize_t' (aka 'int')
[-Wformat]
                        ret, sizeof(ev));
                        ^~~
samples/uhid/uhid-example.c:240:4: warning: format specifies type
'ssize_t' (aka 'long') but the argument has type 'ssize_t' (aka 'int')
[-Wformat]
                        ret, sizeof(ev));
                        ^~~
2 warnings generated.
  CC [U]  samples/vfs/test-fsmount
  CC [U]  samples/vfs/test-statx
  CC [U]  samples/watch_queue/watch_test
samples/watch_queue/watch_test.c:86:50: warning: format specifies type
'ssize_t' (aka 'long') but the argument has type 'ssize_t' (aka 'int')
[-Wformat]
                        fprintf(stderr, "Read buffer overrun: %zd\n", buf_len);
                                                              ~~~     ^~~~~~~
                                                              %d
samples/watch_queue/watch_test.c:90:28: warning: format specifies type
'ssize_t' (aka 'long') but the argument has type 'ssize_t' (aka 'int')
[-Wformat]
                printf("read() = %zd\n", buf_len);
                                 ~~~     ^~~~~~~
                                 %d
2 warnings generated.
  CC [U]  samples/watchdog/watchdog-simple
  AR      samples/built-in.a





I do not know how to solve this issue.


I can reproduce this in the following
simple test code:


----------------->8----------------
#include <stdio.h>

int main(void)
{
        ssize_t x = 1;

        printf("%zd", x);

        return 0;
}
--------------->8-------------------

$ clang --target=aarch64-linux-gnu test.c
test.c:7:16: warning: format specifies type 'ssize_t' (aka 'long') but
the argument has type 'ssize_t' (aka 'int') [-Wformat]
        printf("%zd", x);
                ~~~   ^
                %zd
1 warning generated.


ssize_t is defined in /usr/include/stdio.h
but perhaps this is not suitable
for cross-compilation for aarch64.



Is there any solution?






> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 73948798ce3f..cac29cc2ec25 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -970,8 +970,8 @@ LDFLAGS_vmlinux     += --pack-dyn-relocs=relr
> >  endif
> >
> >  # Align the bit size of userspace programs with the kernel
> > -KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> > -KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> > +KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
> > +KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
>
> That should be fine.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> https://www.gnu.org/software/make/manual/html_node/Text-Functions.html
>
> >
> >  # make the checker run with the right architecture
> >  CHECKFLAGS += --arch=$(ARCH)
> > --
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq%2BcqO65QX1ozg%40mail.gmail.com.
