Return-Path: <clang-built-linux+bncBDXZPHUMZQCBBOOKX7ZAKGQE7FUGFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC87167FD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 15:12:09 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id y125sf1901168wmg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 06:12:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582294329; cv=pass;
        d=google.com; s=arc-20160816;
        b=bLL0bLM8KQmoDRVDxenryt9rbm1XWwhsXySOakYQLvnlIgDofrTZOyc1UEDnK7yFuG
         eH2sbiHilbLml+suSW4vctlm0klbzW8tqWSVqJf5pa/VRfRM4hsjky0FM+E5cCNIoAMo
         HWuuO7YpVMWi5L7d72/CItOKej9Nq++bLFYdoc2tyWzidHtw00NZ/9RF/nPEs3Zodk1G
         xfaGKsm0wkxRnZP8TA87fCO5bRNhT2VzYBUk7JoveWn1GqS+PkCYPsy9vsN7RsACpFdE
         3dEzzeLvW6cypimCcP2rM5hw3siQDj4CLipYC5eqIMxL4agQ9YmWVpBWKYRmke3bLrlR
         HmqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9WXCR4u126JsKsa6TBQUK9vdUNNJa7utKs8zMfse6Zw=;
        b=M57Fn3LBJyh+ju8TqKY3np52Ulpn1lsy9//z9jXRNEBEqvGbk7cmK78p6qwm+zesa/
         yQfYE2CesLk5f+5ZZg+B2Mm34hcO0rJ8PrxZK3dmA//5bpYezglzPXMF0nvl0PGC+0+Q
         H5UwCtrkSMllslCytR52uChKlyXc29IBY4NWLZ9/xyrUan7Y1GcSRzTRNne9WTL+eQ1f
         VIJTLGKA11kTbuy5GiiBwIBpEEHwBp8usXTcScj3vyPoPvmBVPMa9vMGHJ+SmTry8uFE
         v107mD1vUwkPwryMx9d8JFSHYWpZ6iWRSBSI6eALXKY+dXDaD++MtO/dK5xagUcuuSyH
         B2rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J1fTJoFj;
       spf=pass (google.com: domain of tpgxyz@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=tpgxyz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WXCR4u126JsKsa6TBQUK9vdUNNJa7utKs8zMfse6Zw=;
        b=WJpaYvbr2UtqaXfsSYpkuNuhA/iLqpCeUbYsKk23lAsmp1Ag2jUslFKmTkLi/QAvyO
         v71v9AB0/QKzQzwefqbmjKWryRqdJEc91+0Safj4Uf1ulqZqrMlqxILkOLMPUF8ZZzDx
         /6ZiZd6zV8pJSEQ9s7VWfKNJRqnd9fz57sh7UItp37rpqO0dpOzdARsa5YCi1HK0tWth
         FbYNQgCbTtRUEBUqIYDz4mUJH4QDU7H7qo3oRRJWuV1Z1xE1Y4zyonSlZ51I+4zvbjTG
         o9RGh+rz5+qd7v2vAhQuNTKBXA5KnxOKuaejqt1b/p7+heDNrUxJOe5ea8ZEFk4ssQOW
         z4IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WXCR4u126JsKsa6TBQUK9vdUNNJa7utKs8zMfse6Zw=;
        b=ojny3yTuw0YwK5qW4T8NtjRg/1t3jo3VWwKZ0eR6441NuZPg+fLps7+cAehtejHSxc
         Qi9NwllOZQmHW9rjJYotVk6fcwSNRPlt0gBRgsM/5CLcgJA9+mnqxWYn6SDlO2qm7q1c
         fBSmQXn9vyXl+2p/aw+m4cXoBTr9One3uRJ6VdG4azplwIv89O+jJne0QuKCO6A20ZJq
         HBF201DKV9oYTLVD4AZ3TTZeFCfM18JWLGGhhsk0k9js9UhJzEtocI9HEcoZf1eDsBR3
         FrNhxxZiVUf/ipacTUJkKjcTA3r1A5ESEUn++ZCdfS2qjlVDuge61iRclVI6kN8sqvZU
         Dz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9WXCR4u126JsKsa6TBQUK9vdUNNJa7utKs8zMfse6Zw=;
        b=TUEtMswU8H4es65ToLacgBf92MtwsoG6mdT5Q5QxiizwFFzgJu42QxopEHfw7rs1aX
         3JdM6TtfVn3//cCdrJVlIle50E+104uPfwNW3bzG1Q6lAlet6F6RLXW5wduN4/vIbWh2
         ini7MYYKhYGiGFBql+468BrYoEc865igVAHbw1Mik/OHyg80MEOnKcwiqiO9agBRUaqs
         rvns/S2FOeFMxMhnp5s6Jb5eQ3e+Y4xf+kSVU9o3DefZ+nd3GCKvKKGSSdsSCupbyBfy
         +22FY6rBNf9M95SNK81EVi2gkJiN0IxMcOq/wRsc1Tlmo2zFJNajTUBHnxbA0TORN6nn
         wvFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtvLl5Ccnpbl9+etk6Zdwr97KGub97U0TShTcKYNOXucEwB+sa
	aHHCOIrJeGY6Q6hETiyt0hk=
X-Google-Smtp-Source: APXvYqzHy92RFkaVr9YwZnw3vbrD0+alTjaCcBkzoC/tcAintru1Xhl62jBMqaEwL8XC2z9762g+Rw==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr23152731wrt.275.1582294329224;
        Fri, 21 Feb 2020 06:12:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac2:: with SMTP id a2ls794369wrs.4.gmail; Fri, 21 Feb
 2020 06:12:08 -0800 (PST)
X-Received: by 2002:adf:f406:: with SMTP id g6mr49685853wro.189.1582294328731;
        Fri, 21 Feb 2020 06:12:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582294328; cv=none;
        d=google.com; s=arc-20160816;
        b=rqUFSXGyILVjFmgjz9Uu4ikhc5ioP0z1w+mLGa+03aAgzRyJyz0tD2NBnH/XC9BZo4
         d36pd9uwUUqu3Nou7nVyb1NJkyd/jvPXBG4gkFxfqmejSqZitAujGshfdU2MxppbHVJ0
         f8ChvZLvSvwA6uyGhLBr9DBGrafXi2edOfLKB6878zXgkP0QxpGvDyjBWiquRNa+J4i+
         F0Lvi1oaNfrHxxLrl9IEjvMD2SSSMp+umjqPuREPvXpk/9c7ILXjGX3VU8sZ8m7rEtyW
         rKIXeM5mKwiq4Swc032nRniFahUbN+D2dqVdQbBAjUoOAI/NLp7G3EF3rJttRbc750Ip
         98GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ky68QxVHoEO7O8m6vSlHUz4VOSFWmUPZ3RdSjDmn5fM=;
        b=eQ16gBKf5VF8K+IvuGtmpHUP9FaltCaAuYJ319Yhpn2ZEuqI0W03nI353yTcI1VfYu
         +P5oTPe5gY3dhciFgc6LrADQdaKMwNq055c5uFP8tD9tBILEVZd0efn2xVkOf9XJVIlt
         HN+0NnGQI3Z8zgdhW00Uk2b8ME9btaCvymjLvK3ffFy7toXK4a3bktyZjLDT8c98sFpw
         bfATZTSTVGq2Ylyfw4Er1vO7WEZOYFFGIbAfO4QZfx889BPvl/0u/enI4eh3jeqxC+Xn
         keIPvN6G8DhWCF7vd20WpuFZiiCpLKOe1ytL4vx6JoToN22rbro375DnMr21uDLWmIEz
         zQjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J1fTJoFj;
       spf=pass (google.com: domain of tpgxyz@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=tpgxyz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id u9si166545wri.3.2020.02.21.06.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 06:12:08 -0800 (PST)
Received-SPF: pass (google.com: domain of tpgxyz@gmail.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id l18so1614708lfc.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 06:12:08 -0800 (PST)
X-Received: by 2002:ac2:5dc8:: with SMTP id x8mr19391114lfq.217.1582294328075;
 Fri, 21 Feb 2020 06:12:08 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmB1uBx7BUOth=yXy4XNsmCvcSWjBLGtN8=UzeRQxJ8KQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmB1uBx7BUOth=yXy4XNsmCvcSWjBLGtN8=UzeRQxJ8KQ@mail.gmail.com>
From: Tomasz Gajc <tpgxyz@gmail.com>
Date: Fri, 21 Feb 2020 15:11:56 +0100
Message-ID: <CAEkne-oCuAeOb9MZ-UeydcM+0p=0xT98o0OU6cw9_k5cYHhZGQ@mail.gmail.com>
Subject: Re: OpenMandriva distributing clang built kernels
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bernhard Rosenkraenzer <bero@lindev.ch>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000005aeb7a059f169b08"
X-Original-Sender: tpgxyz@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J1fTJoFj;       spf=pass
 (google.com: domain of tpgxyz@gmail.com designates 2a00:1450:4864:20::129 as
 permitted sender) smtp.mailfrom=tpgxyz@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000005aeb7a059f169b08
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Nick.
I must admit it would never happen without help of ClangBuiltLinux
community, and i;m still under impression of how much of knowledge and
effort you did put to get things working.

If i may ask for credits that you could spread around others familiar with
LLVM/clang i'd be glad.

OpenMandriva as a community made a decision in 2014 to switch from gcc to
LLVM/clang as default compiler.
Over the past years we struggled with that task and finally achieved it by
making almost everything to be compiled with LLVM/clang (except glibc,
elfutils and couple of packages that are not clang friendly). We do support
i686, x86_64, znver1, armv7hnl, aarch64 and riscv64 architectures. For all
of these architectures we provide corss compiled toolchain so you can build
with LLVM/clang software for i.e. aarch64 on x86_64 host.
We also provide an automatic build farm, called ABF (
https://abf.openmandriva.org) where you can build RPM packages and ISO
images based on our (or yours) sources available on
https://github.com/OpenMandrivaAssociation. Our ABF provides CLI tool
called abf-console-client so you can work directly on our packges, send
builds etc. Our ABF platform runs builds on distributed machines that runs
our docker builder containers (docker pull openmandriva/builder). You may
want to pull it and connect to ABF so you can help us with donating CPU
cycles or make it only private build node only for you. If you want to try
in you my want to download our Live ISO(
https://sourceforge.net/projects/openmandriva/files/release/) or try our
docker by running docker pull openmandriva/cooker which runs our latest
software.

Thanks again.


pt., 21 lut 2020 o 00:28 Nick Desaulniers <ndesaulniers@google.com>
napisa=C5=82(a):

> > =E2=80=94 OpenMandriva clang compiled kernel, named kernel-release-clan=
g. User
> can install same version of kernel-release and kernel-release-clang for
> comparison
>
> 4.1 alpha (Nov 10 2019):
>
> https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-alpha-av=
ailable-for-testing
> 4.1 beta (Jan 10 2020):
>
> https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-beta-ava=
ilable-for-testing
> 4.1-rc
> <https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-beta-av=
ailable-for-testing4.1-rc>
> (Jan 28 2020):
> https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-rc-is-ou=
t
> 4.1 release (Feb 1 2020):
>
> https://www.openmandriva.org/en/news/article/and-openmandriva-did-better-=
omlx-4-1-final-release-is-out-now
>
> Congrats OpenMandriva team!
> --
> Thanks,
> ~Nick Desaulniers
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEkne-oCuAeOb9MZ-UeydcM%2B0p%3D0xT98o0OU6cw9_k5cYHhZGQ%4=
0mail.gmail.com.

--0000000000005aeb7a059f169b08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Nick.</div><div>I must admit it would never ha=
ppen without help of ClangBuiltLinux community, and i;m still under impress=
ion of how much of knowledge and effort you did put to get things working.<=
/div><div><br></div><div>If i may ask for credits that you could spread aro=
und others familiar with LLVM/clang i&#39;d be glad.</div><div><br></div><d=
iv>OpenMandriva as a community made a decision in 2014 to switch from gcc t=
o LLVM/clang as default compiler.</div><div>Over the past years we struggle=
d with that task and finally achieved it by making almost everything to be =
compiled with LLVM/clang (except glibc, elfutils and couple of packages tha=
t are not clang friendly). We do support i686, x86_64, znver1, armv7hnl, aa=
rch64 and riscv64 architectures. For all of these architectures we provide =
corss compiled toolchain so you can build with LLVM/clang software for i.e.=
 aarch64 on x86_64 host.</div><div>We also provide an automatic build farm,=
 called ABF (<a href=3D"https://abf.openmandriva.org">https://abf.openmandr=
iva.org</a>) where you can build RPM packages and ISO images based on our (=
or yours) sources available on <a href=3D"https://github.com/OpenMandrivaAs=
sociation">https://github.com/OpenMandrivaAssociation</a>. Our ABF provides=
 CLI tool called abf-console-client so you can work directly on our packges=
, send builds etc. Our ABF platform runs builds on distributed machines tha=
t runs our docker builder containers (docker pull openmandriva/builder). Yo=
u may want to pull it and connect to ABF so you can help us with donating C=
PU cycles or make it only private build node only for you. If you want to t=
ry in you my want to download our Live ISO(<a href=3D"https://sourceforge.n=
et/projects/openmandriva/files/release/">https://sourceforge.net/projects/o=
penmandriva/files/release/</a>) or try our docker by running docker pull op=
enmandriva/cooker which runs our latest software. <br></div><div><br></div>=
<div>Thanks again.<br></div><div><br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">pt., 21 lut 2020 o 00:28=C2=A0Nick Des=
aulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google=
.com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">&gt; =E2=80=94 OpenMandriva clang compiled kernel, named kern=
el-release-clang. User can install same version of kernel-release and kerne=
l-release-clang for comparison<br>
<br>
4.1 alpha (Nov 10 2019):<br>
<a href=3D"https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1=
-alpha-available-for-testing" rel=3D"noreferrer" target=3D"_blank">https://=
www.openmandriva.org/en/news/article/openmandriva-lx-4-1-alpha-available-fo=
r-testing</a><br>
4.1 beta (Jan 10 2020):<br>
<a href=3D"https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1=
-beta-available-for-testing4.1-rc" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-beta-availabl=
e-for-testing<br>
4.1-rc</a> (Jan 28 2020):<br>
<a href=3D"https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1=
-rc-is-out" rel=3D"noreferrer" target=3D"_blank">https://www.openmandriva.o=
rg/en/news/article/openmandriva-lx-4-1-rc-is-out</a><br>
4.1 release (Feb 1 2020):<br>
<a href=3D"https://www.openmandriva.org/en/news/article/and-openmandriva-di=
d-better-omlx-4-1-final-release-is-out-now" rel=3D"noreferrer" target=3D"_b=
lank">https://www.openmandriva.org/en/news/article/and-openmandriva-did-bet=
ter-omlx-4-1-final-release-is-out-now</a><br>
<br>
Congrats OpenMandriva team!<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAEkne-oCuAeOb9MZ-UeydcM%2B0p%3D0xT98o0OU6cw9_=
k5cYHhZGQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAEkne-oCuAeOb9MZ-UeydcM%2B0p%3=
D0xT98o0OU6cw9_k5cYHhZGQ%40mail.gmail.com</a>.<br />

--0000000000005aeb7a059f169b08--
