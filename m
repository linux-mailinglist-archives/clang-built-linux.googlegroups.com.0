Return-Path: <clang-built-linux+bncBCQ2TPMHZMNRBEMH76CQMGQED3BVCUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8423A030C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 21:22:58 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id 63-20020a1f14420000b0290219c98718e8sf648345vku.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 12:22:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623180177; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2up4ozEfI2fB2r8QcxLXKYK3Oy4yXKt7Sr31nXNbCzCAGpXI9qVEeujkX2CO8hQxO
         1HXzuV4fI8hTHOpf49533SOO2HNj9GjjgXT1JFMdDA+JQC37U7+I1Pg3y24MqPvFrvey
         wrDWhVQ/+yxKffVH0PZTofHVOIMIzP8vuyzYZWNw/mm2h+Hr+Fdgz4QF+P6WUpm5oizm
         shrYTXENedqPaQc0pqWH7LD5f4XZuUd80tA8JqFxu5xUMn1ETUaC/zqxZh6B9180OGXy
         24MOnxQTiWkL10lJOvkNs9BRWF8IUpYRCEW1CZSJ9aGZDXp+mBZagvC5thRlU/Gm6VUK
         FLYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1UIcGsV8VfFuhRsyAhtKdchf7ivCq8Mqz0DNjdRmI1o=;
        b=K5aG6pf5Ir6X2KVZYhyanzlqlXWTIS2fzdsD3jIVckddbVATjicQHvIdKPo8fU1gAK
         oGS/4KAVyJ1bizqq+VQ83XCzZcQSztfP85LHCzqzJccOV+x/PGSWoOE80XW29BUqUQ+f
         lCVVwD/QNcf97BwJLROlrXKMUVKRyeGtG0X4azDqs2Hv1iiIlgLdk50JvPVSuhbkhMPQ
         blafy5fUrWLNNZkENGQgaHHrD525zQbE6ER8RYcfjmiU2D3ZLNqiW/J1B16cZ0vdKQ8E
         T3VA2q8j7YBy9z/oaPwF5JxheWm5RHEi+NFFyRRDcm2SydWdEzAdYgNLa192jiS8NKcQ
         R/og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AYABuj5q;
       spf=pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UIcGsV8VfFuhRsyAhtKdchf7ivCq8Mqz0DNjdRmI1o=;
        b=EaAUBIVHo2xDJcGXMhC5bdonG+NWTK93lB2hX3vHHq7+nmuPxP3IKeyInCjLh5Hzgu
         KdgNh9A7uOPvgk5zr61Hg9W9hXwVUm6Cvlncm3f6Oow6nZ3LcH/z5sRXAqMJbnKoohJL
         XakkFidtChsGX6OfEZx0KgGdhsrR8p7om7QYeQYHfRD9WnmMqFXfNH5WWOx0j+/yc8mu
         wqrZ2Tq6ZzFQbq/PgdjPqeWz8DAcWken3hFVvhClwkeIaZwfEmWyHqLy+usiIF3+XTmU
         1fwA4xYog1eWWjq9/RAyUfzsMBpoSi7Qk4DsIU/LKFCMdavxmH16N7lLnQAtpCACYmsT
         G3QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UIcGsV8VfFuhRsyAhtKdchf7ivCq8Mqz0DNjdRmI1o=;
        b=JRA2LmoCW35Z+hzZIuyz5NK768oIp7+9UayvBHb3jNW/BdhYF3cqAQWJNZws7CSXsg
         VxipqfQkUScR3w6GXocfLx5mXPEOhUTu2PQCl0JwEtb68BXuGHpVfINdg/ssyW9IGCHU
         VK/aYn6dYcedDjyAaIibFMFyzR+85U4op8mA9Gs0huEsFAAJnRvHaQFpubcfa4EI2Nvf
         O218tHhC4h83a2VPvxhMSv4oya63b01De1p7N0TiPosHhBMsvHnHkqhuIxEcXAmOXx+N
         FbZCq+ksragZhDAxRGIPg8y9FF5UTyqIh5ruOUjGP0EjqhtE2J+EFMPVKbe0Whu3kUKy
         IAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1UIcGsV8VfFuhRsyAhtKdchf7ivCq8Mqz0DNjdRmI1o=;
        b=Y1AvDEAHKkOWUt/m0qS33XQpAzwZY1jzz/KnegsZK1fWgfRhtI9UWihgs1aaREbOD+
         OxLeIcgI0HKk3ptKncM1kUIrBoqLC5cC9lU9zpVfWZiiJjcieUWebn5wiOLAYknSfarf
         DUJGtDs6kXW2MmOI4KmSfOMYfjQuheKy/iHpuqiconu8CZhnfwdRwGn1vzF6chgprLUb
         3UXpowb7iBkDZat8/Z9/j74f/vLlF6qkakcxd631VkfPb41dENg7An6P6jgmea4PUXJA
         ZVdeR/v96bS0eQAuSXiHRTdnttD7x+N8H/kiX4uKZuzrpX/AYGDJpbFKtaNMLcuGwZbF
         6Sxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gx8aoEkbrRYM4aoC59o/1ka/TC9FYDGGTi0aPEK2S6BwTVpbl
	XciaQ+5q7q5C/m5K+6Gbs9w=
X-Google-Smtp-Source: ABdhPJxsQbMaeu4hPX/gJgv9qbdrzDKmhCtFE/hySzfd9q5MC3SNjbN/hVrcElGhiA2CNfi0LK7cUw==
X-Received: by 2002:a67:7fc7:: with SMTP id a190mr2103597vsd.6.1623180177194;
        Tue, 08 Jun 2021 12:22:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:68c6:: with SMTP id d189ls3961490vsc.4.gmail; Tue, 08
 Jun 2021 12:22:56 -0700 (PDT)
X-Received: by 2002:a67:7cc4:: with SMTP id x187mr2405457vsc.17.1623180176652;
        Tue, 08 Jun 2021 12:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623180176; cv=none;
        d=google.com; s=arc-20160816;
        b=obc7+H01z/6qkiF5aRnlA7HU2CgiBsBeJJ/Sf5rApgckJaReSzPrUEXzNeluuc1D5u
         buIyV5pT9kFDgsrVoCzymYLcO78n8q3HC01lcDFgFI8j6qy64NKF9hTn1Je7e+kERuYx
         PJTTr6NaWTemcNL4d0wx9e5/QUN2/sB5eCfRVZ7BeWEjx0RuGVurLKHKys3Uifq4mbt8
         uVuQaWTnJAoGFIgzjJ+vmOFP6RghUnMVVrafxDWm7kGHfNFwtVdGqK4F08sx7mwgoLsT
         tjBdRVsgbrGWKVDxyYFyorS/MDTe6IrcFwOnSIGnQCIQwyWJeYyyB8cet77tbTeM6nbT
         DmFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/VTADTLZwykgtPLtO8AI6yXJR4vgKnpJhImaYYO9PW0=;
        b=E3P4YCTsxUKMeaVTjtVn2ll8ZolagvOYA++enkgtw63tOpcPNYt2Ndk6CgqzYj8TPp
         R3yUzQPofeYHTEyhbzYuEJqcviLjUNnpEFU9DtCjka4WlAvWWJZJzY09YFYhVUomdC+a
         AgKxOxKIrHN5iRvuYQ16khhWrh2bVxZ89uDkGF+vjVwat7I9lsrkhHcTBmGe+yPsu5ZU
         I9e55QciGltJM7EpxMfcLQJKZqEcb0kW9vEv0yWELz/EMvF6FnlYaVF83fJbO0ql87O+
         2/n6okcIX04rXQkjfX3uOCT1RbYGqMrGuFL8cbDFWIdurJM8GFF80axCSBHl6QFQmpyv
         cRWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AYABuj5q;
       spf=pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id d18si219237vsf.0.2021.06.08.12.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 12:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id t6so13713700iln.8
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 12:22:56 -0700 (PDT)
X-Received: by 2002:a92:de09:: with SMTP id x9mr10797165ilm.145.1623180175889;
 Tue, 08 Jun 2021 12:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A@mail.gmail.com>
 <CAKwvOd=7o=XHLehgFMk4Eu3q4uvRHnq-CqnZT5W91cmtQxvcNg@mail.gmail.com>
In-Reply-To: <CAKwvOd=7o=XHLehgFMk4Eu3q4uvRHnq-CqnZT5W91cmtQxvcNg@mail.gmail.com>
From: A G <akshith.573@gmail.com>
Date: Tue, 8 Jun 2021 12:22:44 -0700
Message-ID: <CAP8La3xV_buBV-7SYR+nqQ+O-fFBvd+vO20J0+uXDvndSWW06A@mail.gmail.com>
Subject: Re: building kernel with `clang -fbasic-block-sections=labels`
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000ca5a7d05c4461552"
X-Original-Sender: akshith.573@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AYABuj5q;       spf=pass
 (google.com: domain of akshith.573@gmail.com designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=akshith.573@gmail.com;       dmarc=pass
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

--000000000000ca5a7d05c4461552
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

I don't apply any patch on top of 5.10.0
For compilation I use:
make LLVM=1 KCFLAGS="-fbasic-block-sections=labels"

In terms of configuration I use tinyconfig + 64bit + few other
configuration options to run an ELF.

So what I'm trying to accomplish is, get a basic block level
profile/trace by running this kernel + application inside
QEMU and use this profile to modify/specialize the kernel binary.

The goal is to remove/mask kernel regions not used by the app.
And create a specialized kernel for the application.
I know I wont be able to get this working completely right away but
at least find what interesting issues come up in the process.

Hope this helps. Feel free to shoot more questions :)

Best
G

On Tue, Jun 8, 2021 at 11:50 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Fri, Jun 4, 2021 at 4:07 AM A G <akshith.573@gmail.com> wrote:
> >
> > Hi All,
> >
> > I'm trying to do a basic block level analysis on the Linux kernel.
> > I've found the clang option "-fbasic-block-sections=labels" to be fit
> for my analysis.
>
> We've never tried it, so I'm not surprised it doesn't work.  Can you
> share your patch you're testing with? (Or how exactly you're adding
> -fbasic-block-sections=labels to the build)  Also, I'm curious what
> you're up to with this flag?
>
> >
> > But when I compile with this option enabled, I run into this error:
> > ```
> > /tmp/main-81886d.s: Assembler messages:
> > /tmp/main-81886d.s: Error: .size expression for .BB.set_reset_devices
> does not evaluate to a constant
> > /tmp/main-81886d.s: Error: .size expression for .BB.debug_kernel does
> not evaluate to a constant
> > /tmp/main-81886d.s: Error: .size expression for .BB.quiet_kernel does
> not evaluate to a constant
> > /tmp/main-81886d.s: Error: .size expression for .BB.loglevel does not
> evaluate to a constant
> > ```
> >
> > Setup:
> > ```
> > clang --version
> > clang version 11.1.0 (git@github.com:llvm/llvm-project.git
> 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)
> > Target: x86_64-unknown-linux-gnu
> >
> > make kernelversion
> > 5.10.0
> > ```
> >
> > Can you help me understand these errors / figure a way around this?
> > Happy to provide more information.
> >
> > Best
> > G
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A%40mail.gmail.com
> .
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP8La3xV_buBV-7SYR%2BnqQ%2BO-fFBvd%2BvO20J0%2BuXDvndSWW06A%40mail.gmail.com.

--000000000000ca5a7d05c4461552
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Nick,<div><br></div><div>I don&#39;t a=
pply any patch on top of 5.10.0</div><div>For compilation I use:</div><div>=
make LLVM=3D1=C2=A0KCFLAGS=3D&quot;-fbasic-block-sections=3Dlabels&quot;</d=
iv><div><br></div><div>In terms of configuration=C2=A0I use tinyconfig=C2=
=A0+ 64bit=C2=A0+ few other</div><div>configuration options to run an ELF.<=
/div><div><br></div><div>So what I&#39;m trying to accomplish=C2=A0is, get =
a basic block level</div><div>profile/trace by running this kernel + applic=
ation inside</div><div>QEMU and use this profile to modify/specialize the k=
ernel binary.</div><div><br></div><div>The goal is to remove/mask kernel re=
gions not used by the app.</div><div>And create a specialized=C2=A0kernel f=
or the application.</div><div>I know I wont be able to get this working com=
pletely right away but</div><div>at least find what=C2=A0interesting issues=
 come up in the process.</div><div><br></div><div>Hope=C2=A0this helps. Fee=
l free to shoot more questions :)</div><div><br></div><div>Best</div><div>G=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jun 8, 2021 at 11:50 AM Nick Desaulniers &lt;<a href=3D=
"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,=
204);padding-left:1ex">On Fri, Jun 4, 2021 at 4:07 AM A G &lt;<a href=3D"ma=
ilto:akshith.573@gmail.com" target=3D"_blank">akshith.573@gmail.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I&#39;m trying to do a basic block level analysis on the Linux kernel.=
<br>
&gt; I&#39;ve found the clang option &quot;-fbasic-block-sections=3Dlabels&=
quot; to be fit for my analysis.<br>
<br>
We&#39;ve never tried it, so I&#39;m not surprised it doesn&#39;t work.=C2=
=A0 Can you<br>
share your patch you&#39;re testing with? (Or how exactly you&#39;re adding=
<br>
-fbasic-block-sections=3Dlabels to the build)=C2=A0 Also, I&#39;m curious w=
hat<br>
you&#39;re up to with this flag?<br>
<br>
&gt;<br>
&gt; But when I compile with this option enabled, I run into this error:<br=
>
&gt; ```<br>
&gt; /tmp/main-81886d.s: Assembler messages:<br>
&gt; /tmp/main-81886d.s: Error: .size expression for .BB.set_reset_devices =
does not evaluate to a constant<br>
&gt; /tmp/main-81886d.s: Error: .size expression for .BB.debug_kernel does =
not evaluate to a constant<br>
&gt; /tmp/main-81886d.s: Error: .size expression for .BB.quiet_kernel does =
not evaluate to a constant<br>
&gt; /tmp/main-81886d.s: Error: .size expression for .BB.loglevel does not =
evaluate to a constant<br>
&gt; ```<br>
&gt;<br>
&gt; Setup:<br>
&gt; ```<br>
&gt; clang --version<br>
&gt; clang version 11.1.0 (git@github.com:llvm/llvm-project.git 1fdec59bffc=
11ae37eb51a1b9869f0696bfd5312)<br>
&gt; Target: x86_64-unknown-linux-gnu<br>
&gt;<br>
&gt; make kernelversion<br>
&gt; 5.10.0<br>
&gt; ```<br>
&gt;<br>
&gt; Can you help me understand these errors / figure a way around this?<br=
>
&gt; Happy to provide more information.<br>
&gt;<br>
&gt; Best<br>
&gt; G<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.=
<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw=
1PY_vGD21A%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://g=
roups.google.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDa=
iKfScQKPw1PY_vGD21A%40mail.gmail.com</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP8La3xV_buBV-7SYR%2BnqQ%2BO-fFBvd%2BvO20J0%2=
BuXDvndSWW06A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CAP8La3xV_buBV-7SYR%2BnqQ%2=
BO-fFBvd%2BvO20J0%2BuXDvndSWW06A%40mail.gmail.com</a>.<br />

--000000000000ca5a7d05c4461552--
