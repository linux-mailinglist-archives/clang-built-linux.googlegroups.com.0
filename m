Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGNEQ74QKGQEEGO2WJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E67BD232590
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 21:46:34 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id q5sf14948074plr.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 12:46:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596051993; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUgkaDNZQVnhYUAyith5B9msKryAv7e6DWMt/JJ6dOaeVhtJFFK80GkzLSaYaccKIx
         oWNtzxfxKtxwyQlhOLGwaoEZtW1p3a1RHWRH+Ic67yfaBXuTjsFsd5S4EaM50x7Zo+fZ
         g099d0yhSTUOBAMQWFUKjGu5HiZW6PUy981VErFDvAtNSkdsj+3U3tGcYCK9dqKK7hQL
         9XWvI/yhUGZNL0FA7K18chbcwR5owBa0ZjDNvQ6a2gTfsSmd9Ne2+X/q0TKSRVvZFoPJ
         ku4ViEvI+fFNfllqKkc6YHfCbL7w+Sbbe7r7oJ2lmPmz9RDjbZNnNgPkwgu0r8TPpnjk
         82qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=oTCOwFhUe97iPQoeR/Tc7tAsfJa6f9NjE2yeY5HpWa4=;
        b=IiI6By6P7jlpVPZ5lZ7lo6Y5W9DCArUhj5yZV8qYZYgYRdHO+6YLhQ4P9njuqSZNS9
         yx1sWS3NYO2IQGpXWD2ipNYcG6qI67hLNtXESs7mvQ2vo4Qdxc7a+ANAiFkRn+9VY/bc
         K4iREH9HbP2ocAwI1h/qgQgaPQwjCpgnCjONyHiTiGtxbXAWMSbyCeBuXEufX17xtiS/
         Mtw4M0hFnin3jLS1OJHTYEU0zpFXWpMIhpetz0pNv6ACnTGPVf72oaDiSbMF1S5iTVzH
         4f9qJoiPqBDrvQif8ZmGSS8m7oaYzz7imWVAnPKOVzW1ICxrpVQkbYUTK0iXK0KZ9swK
         wqQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YGbs8HPx;
       spf=pass (google.com: domain of 3f9ihxwwkaeirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::c45 as permitted sender) smtp.mailfrom=3F9IhXwwKAEIrhiweyprmivwksskpi.gsq@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oTCOwFhUe97iPQoeR/Tc7tAsfJa6f9NjE2yeY5HpWa4=;
        b=FzaU04t5zEP5wemgqYBldVyJhq/GKPkX6SOhKHMwenzFpMd9GSpSWQdgb2kxjWUC/T
         OhZ8ZkcDOPkzdQF+4JnRNY4Bb8c4vo9PJZU3yEoaa8TRRmCi4T5ldcHUVxg5fzPqlyUl
         ZukaYnAf5OqwV2sdcp0yl8IiuxdRPUN1OTvSB//UlhSsjw/vTchLJ8szHMlgHTnj1bwZ
         oyaGRCqkWlo2DCcqLcqzeIR1maplYfyhpw6TeebBMocd/1WbQYqVCxlmwuk4vKFlF10C
         c49z68zeqH7mYYNGLy9NfRT2f+5MtHBDBMCt1uWB5BdHpB4H4OTYE5UhFdZqskMPov+1
         UJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oTCOwFhUe97iPQoeR/Tc7tAsfJa6f9NjE2yeY5HpWa4=;
        b=Jj3eABiii1IBM01qIFDyw+MqVasc9cISh3xGXGiT4E76CBVnZhu/kEPmVPfGQv35b/
         +VZ1Xq1IcUYUvZerIG0CszXoBwrht3CXzlDF6X4Z9wi+wvPubPnz05V8zt698kvWS+G7
         fE7jzszz6JAgPEFfW51zdBkMlkCJH6x29JHXVQu8EP68Is3MqffbStOpcvveEOkx0tlq
         fv8NJbR030G0fiylvkCP+cFaxXqeRi1JThXxyhg0dNiUONcHuWTquANC5FPQ6jK1wTVB
         XOxf9TG84Ww6QlXSR5P5q83HtEsPl0leWe65EFL/i+6QXfE4aiiyq15Xa+dnqrgJJHr3
         kCaw==
X-Gm-Message-State: AOAM531Xg4UW5sM71EupGbL5yM5O93lB7IsCe0vtyx6sykh4QGwOLJP2
	wB6jT1ArRbog3Zennkp/G+w=
X-Google-Smtp-Source: ABdhPJwynf++xiE1kEertJ7mjIPrFC46L6L2EPl7xXP0Nm4eOPh3SFjJxgBKAl9Jy7BDDyhB7VJLhg==
X-Received: by 2002:aa7:9567:: with SMTP id x7mr7906469pfq.235.1596051993238;
        Wed, 29 Jul 2020 12:46:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls1337205plt.8.gmail; Wed, 29
 Jul 2020 12:46:32 -0700 (PDT)
X-Received: by 2002:a17:90b:4c46:: with SMTP id np6mr6106623pjb.114.1596051992818;
        Wed, 29 Jul 2020 12:46:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596051992; cv=none;
        d=google.com; s=arc-20160816;
        b=g57d25lwenSXorZUABNxYJ0il8Us3AiRX4goinTgOe8vMww+FOX/ETVPRgLYA3E0+X
         SNUCTSqkjYKh9iL8vpKMrtA8BTHQXbEcoY/adBh2/wIo+pjySDU0Nip6uIvL6z5t9LB6
         kKtdovjtESp8QCIwkX6TglfZxZYt3ffglT5Mr5W+lTX9yAS0o+vnhkJ/PYTVHcjeoayL
         ocyiVsED4qTke+p1wejjBFSYAPbF7wbCeBvMFFUTgYbWyju+gFt17Qx2yzXuofnc4YEc
         w5/BJngEmJn5cc8qjXK3PlZViEZ0EjOzYCgg+Ko87DOEOdr1NZcmNa3HNK8h4xTf5cIv
         2wbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=5aOS7jzPWoJqNweAJ3uwpgQM1w45d7CHVHs/ocAea+s=;
        b=jHA5KohRVN6yP6TZA/SzT7rMf8JptWpTwr5KUVDc6g2XQgj8PhSD/QmOM5VIS8vj3C
         QWWlDdbMkgwb2zxf1hcTg7WM4iL1M+4sGann/bEgMBhCUVQmElgDHzMBE7KICjkY9q2g
         uweDR+HzBVeAt298I7F0Eu0e7Ev/aULf/0uibzanqf0e8kxTr102NhV+ATzUYZPmP0zq
         Zg05XWWo3rJYzsP15P85w2lQx8LaU8oTLVCLAPsMjdjd7g1QkXm8NwT4eIqsC/n1kCnZ
         9CSrMbYMipjrBUQwFGEkhKQP+BinWyC/18uPbu17+7ORS4iiWiF5eVDh1Ih34p4nzwW6
         aiew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YGbs8HPx;
       spf=pass (google.com: domain of 3f9ihxwwkaeirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::c45 as permitted sender) smtp.mailfrom=3F9IhXwwKAEIrhiweyprmivwksskpi.gsq@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com. [2607:f8b0:4864:20::c45])
        by gmr-mx.google.com with ESMTPS id ml3si220629pjb.3.2020.07.29.12.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 12:46:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3f9ihxwwkaeirhiweyprmivwksskpi.gsq@maestro.bounces.google.com designates 2607:f8b0:4864:20::c45 as permitted sender) client-ip=2607:f8b0:4864:20::c45;
Received: by mail-oo1-xc45.google.com with SMTP id v37so7150219ooi.4
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 12:46:32 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6830:15c3:: with SMTP id j3mr27814735otr.353.1596051991952;
 Wed, 29 Jul 2020 12:46:31 -0700 (PDT)
Message-ID: <0000000000000671fe05ab99d0c0@google.com>
Date: Wed, 29 Jul 2020 19:46:31 +0000
Subject: Clang-Built Linux Meeting Notes - July 29. 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000000671ee05ab99d0bd"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YGbs8HPx;       spf=pass
 (google.com: domain of 3f9ihxwwkaeirhiweyprmivwksskpi.gsq@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::c45 as permitted sender) smtp.mailfrom=3F9IhXwwKAEIrhiweyprmivwksskpi.gsq@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--0000000000000671ee05ab99d0bd
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


July 29. 2020
-------------

I386 patches in -next
Need folks to chime in/test lld patches
https://www.google.com/url?q=3Dhttps://lore.kernel.org/lkml/20200717201801.=
3661843-2-nivedita@alum.mit.edu/T/%23u&sa=3DD&usg=3DAFQjCNHkUMej_U5gXbJRktN=
eaN-UOutzjw
Plumbers arch talk (may be of interest to discuss which backends need llvm =
=20
support)
LTO fix for networking
https://lore.kernel.org/lkml/20200708230402.1644819-1-ndesaulniers@google.c=
om/
Tracepoint strings fix for /tracing/printk_formats
https://lore.kernel.org/lkml/20200723205341.1099742-2-ndesaulniers@google.c=
om/T/#t
Save_stack fixes accepted
Another bug in UNWINDER_FRAME_POINTER
https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=3D8992/1
clang-tidy / clang-analyzer v7 GTG
Hint clang-tidy finds a couple bugs in arm arm64 (testers, bugfixers wanted=
)
https://lore.kernel.org/lkml/20200728004736.3590053-1-nhuck@google.com/
Plumbers accepted but not published
Riscv boot failure due to stack protector
https://github.com/ClangBuiltLinux/linux/issues/1092
Clang-11 released
Need to get ci coverage
Known issues with PAC + old binutils
At least 2 new fixes for asm goto backported to clang-11
https://reviews.llvm.org/rG1da9834557cd4302a5183b8228ce063e69f82602
https://reviews.llvm.org/D83708
(tcmalloc developers are making use of asm goto w/ outputs)
LTO merging compoundliterals for kernel modules reverted
Boot failures reported by an Android OEM, haven=E2=80=99t had time to debug=
.
Replacing compound literals with named global static structs fixes the =20
boot, so there *is* a problem merging them via linker script
https://android-review.googlesource.com/c/kernel/common/+/1361089
Structures with holes and information data leaks from the kernel? (Arnd)
(Kees) See: lib/test_stack_init.c
Orphan section warn
Needs rebasing with asserts for zero size

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000000671fe05ab99d0c0%40google.com.

--0000000000000671ee05ab99d0bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>July 29. 2020<br /></h1><ul><li>I386 patches in =
-next</li><ul><li>Need folks to chime in/test lld patches</li><ul><li><a hr=
ef=3D'https://www.google.com/url?q=3Dhttps://lore.kernel.org/lkml/202007172=
01801.3661843-2-nivedita@alum.mit.edu/T/%23u&sa=3DD&usg=3DAFQjCNHkUMej_U5gX=
bJRktNeaN-UOutzjw'><span style=3D'text-decoration: underline'>https://www.g=
oogle.com/url?q=3Dhttps://lore.kernel.org/lkml/20200717201801.3661843-2-niv=
edita@alum.mit.edu/T/%23u&sa=3DD&usg=3DAFQjCNHkUMej_U5gXbJRktNeaN-UOutzjw</=
span></a> </li></ul><li>Plumbers arch talk (may be of interest to discuss w=
hich backends need llvm support)</li></ul><li>LTO fix for networking</li><u=
l><li><a href=3D'https://lore.kernel.org/lkml/20200708230402.1644819-1-ndes=
aulniers@google.com/'><span style=3D'text-decoration: underline'>https://lo=
re.kernel.org/lkml/20200708230402.1644819-1-ndesaulniers@google.com/</span>=
</a> </li></ul><li>Tracepoint strings fix for /tracing/printk_formats</li><=
ul><li><a href=3D'https://lore.kernel.org/lkml/20200723205341.1099742-2-nde=
saulniers@google.com/T/#t'><span style=3D'text-decoration: underline'>https=
://lore.kernel.org/lkml/20200723205341.1099742-2-ndesaulniers@google.com/T/=
#t</span></a> </li></ul><li>Save_stack fixes accepted</li><ul><li>Another b=
ug in UNWINDER_FRAME_POINTER</li><li><a href=3D'https://www.arm.linux.org.u=
k/developer/patches/viewpatch.php?id=3D8992/1'><span style=3D'text-decorati=
on: underline'>https://www.arm.linux.org.uk/developer/patches/viewpatch.php=
?id=3D8992/1</span></a> </li></ul><li>clang-tidy / clang-analyzer v7 GTG</l=
i><ul><li>Hint clang-tidy finds a couple bugs in arm arm64 (testers, bugfix=
ers wanted)</li><li><a href=3D'https://lore.kernel.org/lkml/20200728004736.=
3590053-1-nhuck@google.com/'><span style=3D'text-decoration: underline'>htt=
ps://lore.kernel.org/lkml/20200728004736.3590053-1-nhuck@google.com/</span>=
</a> </li></ul><li>Plumbers accepted but not published</li><li>Riscv boot f=
ailure due to stack protector</li><ul><li><a href=3D'https://github.com/Cla=
ngBuiltLinux/linux/issues/1092'><span style=3D'text-decoration: underline'>=
https://github.com/ClangBuiltLinux/linux/issues/1092</span></a></li></ul><l=
i>Clang-11 released</li><ul><li>Need to get ci coverage</li><li>Known issue=
s with PAC + old binutils</li></ul><li>At least 2 new fixes for asm goto ba=
ckported to clang-11</li><ul><li><a href=3D'https://reviews.llvm.org/rG1da9=
834557cd4302a5183b8228ce063e69f82602'><span style=3D'text-decoration: under=
line'>https://reviews.llvm.org/rG1da9834557cd4302a5183b8228ce063e69f82602</=
span></a></li><li><a href=3D'https://reviews.llvm.org/D83708'><span style=
=3D'text-decoration: underline'>https://reviews.llvm.org/D83708</span></a><=
/li><li>(tcmalloc developers are making use of asm goto w/ outputs)</li></u=
l><li>LTO merging compoundliterals for kernel modules reverted</li><ul><li>=
Boot failures reported by an Android OEM, haven=E2=80=99t had time to debug=
.</li><li>Replacing compound literals with named global static structs fixe=
s the boot, so there *is* a problem merging them via linker script</li><li>=
<a href=3D'https://android-review.googlesource.com/c/kernel/common/+/136108=
9'><span style=3D'text-decoration: underline'>https://android-review.google=
source.com/c/kernel/common/+/1361089</span></a></li></ul><li>Structures wit=
h holes and information data leaks from the kernel? (Arnd)</li><ul><li>(Kee=
s) See: lib/test_stack_init.c</li></ul><li>Orphan section warn</li><ul><li>=
Needs rebasing with asserts for zero size</li></ul></ul><br /><hr /><br />S=
ent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000000671fe05ab99d0c0%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000000671fe05ab99d0c0%40google.com</a>.<br />

--0000000000000671ee05ab99d0bd--
