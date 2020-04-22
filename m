Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6O4QL2QKGQEQ4EF4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1445D1B4E96
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 22:52:11 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id y8sf4007577ybn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 13:52:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587588730; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEhjKo8nMOF+yn9YUNPamJjeDrycsf2XQcZps0ZqKkuCPhQfBAwzzOcy7WbO7hD5cA
         CZcEY3jnRxr/tOAAfxix0T+RJrijqFxAR1DYS7MHhrq9+xYuMsOsHRAJxynkg3+41Rd6
         3wKKRb5pkBe7QeL9laMygw/wvuEGHdjBNIh0UnTGZbDJWY/yYBTX8XjLwyO3fNyF0mUq
         FnsMHIxxo6faVBQHKRITTVKl90QIcbdjxcWL5YCmurR53pSRciiReLBvRcmfouiSKKHt
         onIdpfU+dy2Aw2t3i0kuAnb/I4wE3MgwC9uBqtbu2pO+Iyme5clN7olnOBVFTKlGhxOd
         7nXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=ltK2YXU2TrIZJArEos2T5Ow3gtVXWVaao3aLh+cMcas=;
        b=hTHsI97M4Z6RgX67LMtGllCpeONJX+cz8WMiMIv36ehTkdZlGkpUnY4wOna1B9IrjM
         X4bEFX9Bb4g8mLluipFNx2AjGIk0OvWRwuuiad78clftvyn8lerteJGbqa6Zf3AdvxKQ
         3SvIaIOfsri+FV/wPjZZUSBoOE0VOXh8WyX+dQD2kTwoqRIceYlQ90a+0j9vkFL8bZOt
         jH5xH0FYhh9glZkcmM7iX0gLUC4rEN9LTslo3x8QeMrWZIE5345jPVIpiHpePetPoCQF
         oBhp8ystJlbotzowDy9/RwI5uU89ToA1wYkNN6AIHcRltsoajutSkXjajULEFIbg9lcg
         3hag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vcDyuPcJ;
       spf=pass (google.com: domain of 3ek6gxgwkafm8yzdvf683zcd19916z.x97@maestro.bounces.google.com designates 2607:f8b0:4864:20::946 as permitted sender) smtp.mailfrom=3eK6gXgwKAFM8yzDvF683zCD19916z.x97@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ltK2YXU2TrIZJArEos2T5Ow3gtVXWVaao3aLh+cMcas=;
        b=OMyDfvCQX/9Ubd9+xzUyzp0RiUzWChPZk2+Y+bxqUZD3KqHzcusMChdkzXwFsZWAp3
         PvLyJs5l8wEFI4ZSOR6l/xLcwZgKDeWY+Wys9lArfTCCNU3wbuRCOL7dB3FXHfibTqGM
         hcQXzo3qLak+N6oUq4Cv4FIEu8LhJMmHfo06S/hdOXzZZBjNqnAW2L7+q5dwwSd0w0bs
         GEPcdl/Vk1RrGeXvSsI/C53QMSsF0P0hMSxdsMKUsMxiYMvPgHtUADAxYQkk9Hr6d9LD
         Jwhq+yDxas+hf+Vl6Gj1cz9pRhiIbM6lZUSCNowlLrvefrz37ayBwbIUPWQvrSj1BeYX
         rD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ltK2YXU2TrIZJArEos2T5Ow3gtVXWVaao3aLh+cMcas=;
        b=diMChz0N7pdAx3bK27Ahl2hO5wmktb3Pj7S6LlZDFn5ulofSYIfHTwFHOIGBFWLJLg
         GOB0pFzpK9MJU3LFzk77TUrtOr6YUocwgmaPskoVVu5WOGso2yzAxAG8LnAGfLuKhRDC
         CtZW82rmqjXH+StSk0NzaRGdZHxBx3grgTuyTWxhWNOGNr+1nAsLTS9q38lDm7m1tJUm
         qO7xnVBNO8YFMbD9vl5PvBeobrZAWTfFWMx/nHGvCZ+id+OSvXL7GkedbviKO3eUPZi5
         ZGh4uBHdho/ZzUkIbvKOQU8Syr1yvpKEu/PprilmjOgRHp8XPEdEmH2Dsfw2WkvN7cEv
         CT9A==
X-Gm-Message-State: AGi0PubC7pWd+eTjBX5GQ6boD1ao5MiCBBbO+JrWzY9+w0k51iBISVj4
	GSf4SO7EeUCOWPO2efT+USs=
X-Google-Smtp-Source: APiQypKCziJiDv5xtORB3/XPl7cC2AOEW+whYMxNEyCqcdaSdF11GZfdH/bWVpCwc9AeW8iGNqESOw==
X-Received: by 2002:a25:4409:: with SMTP id r9mr1197431yba.469.1587588729809;
        Wed, 22 Apr 2020 13:52:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:71d5:: with SMTP id m204ls1023171ybc.0.gmail; Wed, 22
 Apr 2020 13:52:09 -0700 (PDT)
X-Received: by 2002:a25:6991:: with SMTP id e139mr1358904ybc.385.1587588729413;
        Wed, 22 Apr 2020 13:52:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587588729; cv=none;
        d=google.com; s=arc-20160816;
        b=p7fIFKRcWzxSK2uen0yYgyOTVU665AkgcV2LUReUHdPUK8K30mpzTG+qLFbrjw8ujw
         yFaFufpplIqa1th4K4brJfaXeJE8EBcBZabuvscbrdkydlnUi89VEqiAaWgXwQBSH6fo
         WsDcaSx60Mtsmnco3/EIteT13T0bF4ye2ZYHnwITaDl7NBeju9o+vp87z0PXtlkcTLnr
         aEUred2gYm9KUCf1bKtZylWz0RU0RGy6+Yd/rCg8K0fjg41UlOMkXwocevl5vY61XWyJ
         gXwDY0XtQ7EB3alQUOOdBYmkUXB2WcDTCZgZhBkUyu/cXaAHwLHkCdEHqCQd09cIQjjp
         2I9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=p2RK/khnVx0777d+Voy5JxyHLmNj/DqYdl2voxHt72Y=;
        b=A10AycI6sYP5FijJQwNiC4ZFV4iAnOU5dsHp/HlOrt7zlZYNMFNhwfNeem4tYWquwV
         EQfyDYLaPvZUkcSRd5cPJPkQlZL/pbl7acqrFD9tpn16wLmI76CyAgH7ezj0QwlxuNmo
         uCMSh9vcEXjIe5Hx69gXAw9iTbzLZBNOiENlnk7/1N3b/JsVtU6qVtiLTTZMyfw587wu
         tXLIKP5XaN8E5nQyFy5QJw7DsvwQeuJCt/Mg5CYJEbhEmoST5vYb6Z9QiYt8s1OdWrca
         tGgcGNx69FVeU7IiURWyUebJcZdFM1z76Ejktr7Zx49Jqtghqxp5OBuRImB/FKT7HK0H
         Xm+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vcDyuPcJ;
       spf=pass (google.com: domain of 3ek6gxgwkafm8yzdvf683zcd19916z.x97@maestro.bounces.google.com designates 2607:f8b0:4864:20::946 as permitted sender) smtp.mailfrom=3eK6gXgwKAFM8yzDvF683zCD19916z.x97@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x946.google.com (mail-ua1-x946.google.com. [2607:f8b0:4864:20::946])
        by gmr-mx.google.com with ESMTPS id s10si61846ybk.0.2020.04.22.13.52.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 13:52:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ek6gxgwkafm8yzdvf683zcd19916z.x97@maestro.bounces.google.com designates 2607:f8b0:4864:20::946 as permitted sender) client-ip=2607:f8b0:4864:20::946;
Received: by mail-ua1-x946.google.com with SMTP id j2so1848225uak.3
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 13:52:09 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a1f:2ac4:: with SMTP id q187mr959971vkq.6.1587588728799;
 Wed, 22 Apr 2020 13:52:08 -0700 (PDT)
Message-ID: <0000000000003b3e9705a3e74e22@google.com>
Date: Wed, 22 Apr 2020 20:52:08 +0000
Subject: Clang-Built Linux Meeting Notes - April 22, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000003b3e8605a3e74e1f"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vcDyuPcJ;       spf=pass
 (google.com: domain of 3ek6gxgwkafm8yzdvf683zcd19916z.x97@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::946 as permitted sender) smtp.mailfrom=3eK6gXgwKAFM8yzDvF683zCD19916z.x97@maestro.bounces.google.com;
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

--0000000000003b3e8605a3e74e1f
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


April 22, 2020
--------------

Move meeting up one hour? Sounds like this might benefit at least one =20
attendee.
Armv5 boot issue default page alignment
https://bugs.llvm.org/show_bug.cgi?id=3D45632
X86 stack protector
https://lore.kernel.org/lkml/20200422192113.GG26846@zn.tnic/T/#t
Asm goto w/ outputs
https://reviews.llvm.org/D78341
https://reviews.llvm.org/D77849
https://reviews.llvm.org/D78166
https://reviews.llvm.org/D78234
https://reviews.llvm.org/D78520
Kernel size regression debug info
Clang-10 ppc and riscv regressions
One outstanding pull Hal has approved for Tom to merge.
Iwmmxt missing support in LLVM, should implement those instructions.
Memcpy fortify
Previous regression fixed
Clang fortify may never have worked for the kernel, Kees and George looking
Zero init cfe-dev thread started by Kees
I spoke with Arnd Bergmann about s390 rootfs images.  He suggested debian =
=20
deboot strap.  I think we might also be able to cross compile a simple init=
 =20
binary with zig, though I don=E2=80=99t know if s390 support has been well =
testing =20
in zig.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000003b3e9705a3e74e22%40google.com.

--0000000000003b3e8605a3e74e1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>April 22, 2020<br /></h1><ul><li>Move meeting up=
 one hour? Sounds like this might benefit at least one attendee.</li><li>Ar=
mv5 boot issue default page alignment</li><ul><li><a href=3D'https://bugs.l=
lvm.org/show_bug.cgi?id=3D45632'><span style=3D'text-decoration: underline'=
>https://bugs.llvm.org/show_bug.cgi?id=3D45632</span></a></li></ul><li>X86 =
stack protector</li><ul><li><a href=3D'https://lore.kernel.org/lkml/2020042=
2192113.GG26846@zn.tnic/T/#t'><span style=3D'text-decoration: underline'>ht=
tps://lore.kernel.org/lkml/20200422192113.GG26846@zn.tnic/T/#t</span></a> <=
/li></ul><li>Asm goto w/ outputs</li><ul><li><a href=3D'https://reviews.llv=
m.org/D78341'><span style=3D'text-decoration: underline'>https://reviews.ll=
vm.org/D78341</span></a></li><li><a href=3D'https://reviews.llvm.org/D77849=
'><span style=3D'text-decoration: underline'>https://reviews.llvm.org/D7784=
9</span></a></li><li><a href=3D'https://reviews.llvm.org/D78166'><span styl=
e=3D'text-decoration: underline'>https://reviews.llvm.org/D78166</span></a>=
</li><li><a href=3D'https://reviews.llvm.org/D78234'><span style=3D'text-de=
coration: underline'>https://reviews.llvm.org/D78234</span></a></li><li><a =
href=3D'https://reviews.llvm.org/D78520'><span style=3D'text-decoration: un=
derline'>https://reviews.llvm.org/D78520</span></a></li></ul><li>Kernel siz=
e regression debug info</li><li>Clang-10 ppc and riscv regressions</li><ul>=
<li>One outstanding pull Hal has approved for Tom to merge.</li></ul><li>Iw=
mmxt missing support in LLVM, should implement those instructions.</li><li>=
Memcpy fortify</li><ul><li>Previous regression fixed</li><li>Clang fortify =
may never have worked for the kernel, Kees and George looking</li></ul><li>=
Zero init cfe-dev thread started by Kees</li><li>I spoke with Arnd Bergmann=
 about s390 rootfs images.  He suggested debian deboot strap.  I think we m=
ight also be able to cross compile a simple init binary with zig, though I =
don=E2=80=99t know if s390 support has been well testing in zig.</li></ul><=
br /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000003b3e9705a3e74e22%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000003b3e9705a3e74e22%40google.com</a>.<br />

--0000000000003b3e8605a3e74e1f--
