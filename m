Return-Path: <clang-built-linux+bncBAABB5O6UTXQKGQEIJ66QSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFA51144CC
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 17:25:27 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id d131sf2786864ybb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Dec 2019 08:25:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575563126; cv=pass;
        d=google.com; s=arc-20160816;
        b=abZpJk2nBzBovEK8XZ2/Gvtken3QIOzgBwSik8wOqm66McQmCPbQ1p2jpiaws3Qzmj
         EQ24FnbOtkjFX4h3FaIuw442BqxNRvyJFQM76Nhbme2sdsVckt0p/uzrRIWlbjb+XAbB
         aAA/NSaM4kiYfvbCKRGQG5yh05MBQxL+SV+Muet3zub/arZIlDT7ADsRwje3U+WF1bTp
         XKOXXxtVYsDsBO86hmHvSUjNsJAPDGdywNB1RGHD3h+ebArZbD0uD8BlAepCGE/aX4qj
         4UCxLMIVkaLoUwZiih5oln3RvhveWqjxJUaJrbFnpDPGBhWp4kA8O8yHaHqcUXjF63z9
         le7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=FfKe3dtcg9D5UexUjGe7vedDv/5P+EMxnJMhatVT7TQ=;
        b=xSN07ILRN5f1obpvC2X4iTPm3wk7+x47EXw4E/dKBwlazH0xL6CO9kaTuK1W1mCP/e
         Q0arGOqVb8JkRv+ay1DpIB5Q2hu8cByAlsQHPlrxXQlkDQAX+VgMzQLrErmLi/PxUMyr
         zTDcjOtj2JZk9fTM2Hda1cnCToXIb34MG6ZGIKyd0Z+SwBDF52+uS5iZa7p3GelR5UOO
         syDQpDG5OLwI9EQZr5zrJhL79hVFkWSZKftz0weLtksJzWZtoM4nGCZjKdJvHEx3dLgb
         N7Y0caYiv2DLxiGUSXng4Ud4LdGcmSNIsvI8R061R0I4KinrSNmQKPsvFR26J4GBHvyQ
         I2Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JgbHZ40P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FfKe3dtcg9D5UexUjGe7vedDv/5P+EMxnJMhatVT7TQ=;
        b=EDL/l0h/IDTlJvB/+DJU0jv/ijZ8s4f2eeNSxWMxtFzM6z0l/pUj4d54xw4JHkEES0
         YQ2vsYPHiYLgqrCqX39bEf9vg8/cRLQQUbmPZ8gqpCN8bDAQtx1+Eq8xzvYtsuRhEfR/
         GQTgtjokLts0cRrcN7R3ljwfDmRNEMuUaQ1YjKGsPfoogWWpmGs1uE369DXGF2cI936x
         B57/fyu0valHp83chFguPmb0yhZxGBl05m5468X5D3UCSZfBo0wt3S2Xtqe6uXpwTbOc
         53PhynA9U8Pgg+XAw77BBpIuI+/jsCQtS35oK0FIDlPtd3t9SbWvxQI7cEw+pvecFiuY
         6TeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfKe3dtcg9D5UexUjGe7vedDv/5P+EMxnJMhatVT7TQ=;
        b=dXU+OgH992mIbIfc3WXqDkjZ1YW4fe0pZCPEgLttuYyzlVwIW5JQXgtiM1Vr9Ww+cm
         h4xu5eVP8L10Xhp+JTvNUy7OuIi4Z3EAPq3hYSpqUkMv83or2er0X6gvL/gjO8a0lEl/
         qQl1gB/Wwx+vWaEeRhg7dDjAaMWvkPask8zfS14wMCCWfVJtETRNcjHPjW815+TFqlQm
         woyD7FPk/h0tNmeqXIFQQ+C2KMg8VMDJ4/tR52EpiQ390hWVgCKrQK+FUDLHPDb1xYml
         wdXwU9VivvWL5lBY3ZvsHnkkijHodpAu9383BvSHI76ISZzltxo6dTGw6sOVeMRMxsXH
         zx3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRuPAsLgm4OtrT0lO1y46RCfAKl8YoRtkUGQ8VED/Nq5i1oEqb
	POrGLwo81D6EDgK47cnDymQ=
X-Google-Smtp-Source: APXvYqz5ZOsa3WCOAvyQ43HR0qg6eXt2hNRvJSx5Xp3kdfUudYkYfGApPiH+BKnbQrwJ7DQuNMXfgg==
X-Received: by 2002:a81:2e09:: with SMTP id u9mr6484568ywu.97.1575563125985;
        Thu, 05 Dec 2019 08:25:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7557:: with SMTP id q84ls458509ywc.0.gmail; Thu, 05 Dec
 2019 08:25:25 -0800 (PST)
X-Received: by 2002:a81:2ed3:: with SMTP id u202mr2661038ywu.506.1575563125619;
        Thu, 05 Dec 2019 08:25:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575563125; cv=none;
        d=google.com; s=arc-20160816;
        b=hhNyxuKcWbgZzK84vY2BpUEXzxc39qmC13wQP3mWgwO6kyH0G9CpHp2RaCpw5sV+ko
         wnHkgxq1mm5dE2I/1/8H5/NIRRlLtfdQYQoulVdE9lNfjIDJknt+ae8sORcDe5+Cf2V5
         2GDzlfdstle9Vlf1wzZH5WiTvwLz9ib4VbZbzRA8gHs7ZmPckbAOouu3SJVGv05T0nSd
         nikRJw8yigGvVuBxut/3l+zADO4nPca7xTpfHVoV18lQhOpyL++RbOQ9HwHPCYiUv1/0
         3dm0dF1G7Ymc2a1u/+b10gLVMMfGc36BQYFW7tAXXyuD1nqfYr+8IL70eWEcYxiCbZvI
         5w3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=AtKXLt1EdrCMfTm6C1GUGOYIWUCQ/4aQMXcPERJUx2g=;
        b=rScSjCHMYKRGgdjF2WfizjSxrXP7Wz9RjKYGgM7NmvjFg8Vew7k6D59oUEr9B9GDkr
         KVnAEQNc0OxwcwFQRCp/NS0jGofuh5TzaD3x/LJrsxOZey5vEDGhFCJ9BCX5JjWpnedZ
         LyZal6URXboGb9zbF4V12p7w1rAZW0hVftkR0gFgTIvX7/MtrJqGtMA7vKUTfBQdb4Cg
         0WJAnzb+N4iK+aIbjXNXGdGx8oVnKtuDqGLhi4frqcUkPhadlSxuvHp8sNh6TPSwjojk
         65w5pzBtzdPeyHStVVtgcbN7n6beKo3075qg3FnGNBY+zcyZIh12If4t4yG7AVIQ7T99
         EBdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JgbHZ40P;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id g9si685174ywe.2.2019.12.05.08.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Dec 2019 08:25:25 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id xB5GOwm4024441
	for <clang-built-linux@googlegroups.com>; Fri, 6 Dec 2019 01:24:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xB5GOwm4024441
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id m5so2801462vsj.3
        for <clang-built-linux@googlegroups.com>; Thu, 05 Dec 2019 08:24:59 -0800 (PST)
X-Received: by 2002:a67:f6c2:: with SMTP id v2mr6088699vso.54.1575563097905;
 Thu, 05 Dec 2019 08:24:57 -0800 (PST)
MIME-Version: 1.0
References: <20191204225446.202981-1-dima@golovin.in> <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
 <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
In-Reply-To: <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Dec 2019 01:24:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg=DuuduEvqaqvBHBXg@mail.gmail.com>
Message-ID: <CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg=DuuduEvqaqvBHBXg@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
To: Dmitry Golovin <dima@golovin.in>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        Ross Philipson <ross.philipson@oracle.com>,
        Ross Burton <ross.burton@intel.com>,
        Chao Fan <fanc.fnst@cn.fujitsu.com>,
        Daniel Kiper <daniel.kiper@oracle.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "tony.luck@intel.com" <tony.luck@intel.com>,
        "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
        "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000c5a0e10598f75eb6"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JgbHZ40P;       spf=softfail
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

--000000000000c5a0e10598f75eb6
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 5, 2019 at 9:41 AM Dmitry Golovin <dima@golovin.in> wrote:

> 05.12.2019, 01:18, "'Nick Desaulniers' via Clang Built Linux" <
> clang-built-linux@googlegroups.com>:
> >
> > Grepping the kernel sources for `READELF`, it looks like
> > arch/ia64/Makefile makes the same mistake. Would you mind fixing both
> > cases in the same patch (v2)? I'm also curious about it's use in
> > arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
> > maintainers and list.
> >
> > I think if you simply remove the assignment on line 17 of
> > arch/ia64/Makefile you should be fine.
>
> Perhaps something should be done to NM on line 16 of this file as well.
> Also
> found similar invocation of `objcopy` in arch/riscv/kernel/vdso/Makefile.
> I think IA64 and RISC-V changes should be made as separate commits.
>
> -- Dmitry
>


I am fine with either way.
I can take this patch, and also a one for IA64.



You can send a patch for arch/riscv/kernel/vdso/Makefile
to the riscv maintainer since it has no patch dependency.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg%3DDuuduEvqaqvBHBXg%40mail.gmail.com.

--000000000000c5a0e10598f75eb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace"><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 5, 2019 at 9:41 AM Dmit=
ry Golovin &lt;<a href=3D"mailto:dima@golovin.in">dima@golovin.in</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">05.12.2019=
, 01:18, &quot;&#39;Nick Desaulniers&#39; via Clang Built Linux&quot; &lt;<=
a href=3D"mailto:clang-built-linux@googlegroups.com" target=3D"_blank">clan=
g-built-linux@googlegroups.com</a>&gt;:<br>
&gt;<br>
&gt; Grepping the kernel sources for `READELF`, it looks like<br>
&gt; arch/ia64/Makefile makes the same mistake. Would you mind fixing both<=
br>
&gt; cases in the same patch (v2)? I&#39;m also curious about it&#39;s use =
in<br>
&gt; arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64<br>
&gt; maintainers and list.<br>
&gt;<br>
&gt; I think if you simply remove the assignment on line 17 of<br>
&gt; arch/ia64/Makefile you should be fine.<br>
<br>
Perhaps something should be done to NM on line 16 of this file as well. Als=
o<br>
found similar invocation of `objcopy` in <span class=3D"gmail_default" styl=
e=3D"font-family:monospace,monospace"></span>arch/riscv/kernel/vdso/Makefil=
e.<br>
I think IA64 and RISC-V changes should be made as separate commits.<br>
<br>
-- Dmitry<br>
</blockquote></div><br clear=3D"all"><div><br></div><div><div class=3D"gmai=
l_default" style=3D"font-family:monospace,monospace">I am fine with either =
way.</div><div class=3D"gmail_default" style=3D"font-family:monospace,monos=
pace">I can take this patch, and also a one for IA64.</div><div class=3D"gm=
ail_default" style=3D"font-family:monospace,monospace"><br></div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:monospace,monospace">Yo=
u can send a patch for=C2=A0<span style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:small">arch/riscv/kernel/vdso/Makefil</span><span style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:small">e</span></div><div=
 class=3D"gmail_default" style=3D"font-family:monospace,monospace"><span st=
yle=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">to the riscv=
 maintainer since it has no patch dependency.</span><span style=3D"font-siz=
e:small"></span></div></div><div><br></div><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature">Best Regards<br>Masahiro Yamada</div></d=
iv>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6Dg%3DDuuduEvqa=
qvBHBXg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAK7LNASQ_QGgm1Ec7R4yy6_qPj440V6D=
g%3DDuuduEvqaqvBHBXg%40mail.gmail.com</a>.<br />

--000000000000c5a0e10598f75eb6--
