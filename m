Return-Path: <clang-built-linux+bncBDFN76WSRIGBBOVOUL4AKGQE4QSJAGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CC74321BAE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 18:28:43 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id g11sf3923395ioc.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 09:28:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594398522; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVtKtb/SuV+x7/lrCpnPoE9pHanpDs0+DsXNtNUho45dpcDvuTNs9zAAYlweS+yFv8
         3IitxzcCW68mlWYhUNbuB7UseSFJI7UB/HYzBgGJBKzwEFowz5B50iIZSNhuYRqPw/8F
         axt5tq9i6+GjxOGMw2x55Q9bTgob4MkrpD04KtZQJC68fmjEIF97UlbtYHZel4AS5596
         5/BveWGPM/2NHP1bg8nu1pEiB2KzSNwLIGkJMMl5N0tBbpd5QUwURozwL+zr2C+Sp91D
         wuHs4PKrF4Yq2rBSRMxK6s/kJALLoxSCI5ED7PcmmHtj2HqoJu9U23C1pDa28go8S1Du
         AP0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Eh1786ajorq51+IZ7zbCEpk/kgn73dJU2zwDRvR+Vu4=;
        b=NOqy7oLVqYhRrBrdGzvXNZceKtR4STKgHYioceTILYXZjzRdCrC2pLYiHGp/5VufEX
         g8gVF0wjjjtSYQKa7DZyhxXhMZscmpcWr7A5lDidgOvNXLVMLMcXVgkyL++JYVO1UlVq
         e1/IM4tloS8KCviAerIB/t1jwapGsPpeINH7792lw8mE7eskxzbzab2cnWb0TzkwbkGf
         ldyYEA3mbcbPWC+3zsdou3lS9K5VAdOWZRcNMkf0Gj2uYcE6hFpr/QYf5uR8IRSRLXRh
         8Pnz2KV19iJcPXKEhP2VM8PpKvBvL/jeC39oUB1JcbAHG+/z7GsQTJhMqLE0Ai0YfxXb
         qtmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwmTb1+s;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh1786ajorq51+IZ7zbCEpk/kgn73dJU2zwDRvR+Vu4=;
        b=n7huNLdhG1TF3cgZW2gRBSNwEs0BJlWyOrpd6wnf61jrmAdfX2f8au4Tr3IBE7JAdI
         nF0CENnxrE+c/NphjmBVCft87npV4UOo0IYZAQh40Ub3PcnXMNV6xMOtk8Yjbz1ggZyF
         hG5p3/GFH2edx7j9xQXxRd6mE175H5oXfZYeTSFnJuCE4Y0NKb3KzdKKhgUeIR2Zn5MR
         Fq11RQCFvhNKFCAj3mN5DpEVUCFn7PUnFbCEbis8ru3QWl/vv/dA5IhdNv+FQg8fMkLL
         qYK55qweNYISoN+fG+MMsr3ol9F+eCvN42OB3G5ckfRH/EUSWtkbOEMBe1zhdxV66wb1
         WKwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh1786ajorq51+IZ7zbCEpk/kgn73dJU2zwDRvR+Vu4=;
        b=bRNRuMk8hOwuyoo5WejpeftxEYEyUJio1QEZ/ro/XkS/yoDLmunjmI70SZH7jSxXWR
         b+NbWxgB4wCV5QtAaVsdXc8LqKwRwzdGq0M1Un98QKErN8gsXCsrzktaICHB/vldBGdk
         JORqIZlG0y3gqjtUoGvd6mMBKhBYbvnxAKoSLr6Lt837IkwCooV/BXGkeRzVWpZcuELW
         MswSuya9i/yEEhzrhCPVySIwFYzLQyiE+U7cIM0cn3UxHKAcfgjoWQhkftAXy20NU4eS
         CQ4aQo1K/vRwY+At4fEqlFeAVkc7n9elKeTuXbSlHRG9ELRVYQtFNAXFX++pcl7EztwX
         lfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh1786ajorq51+IZ7zbCEpk/kgn73dJU2zwDRvR+Vu4=;
        b=aFoTeywlbLwmTucS5D/w5Rezn9ATP+LtTK0Yo1NHj3jLpUpVSOPlXXSn1iePROCcWk
         GK+fLsi7asyFCn7af3fou9uv3h1K4SQzMLcpCAnmbLeIzSfaQS+eDy5h0wZdw9HUFPMg
         fPcSj7WW7RXrXoxL8VmeFChlQmB+O3SRzyEMKUosRrHw7/df8uOWnTQfRP25IR9vF2MF
         tB1MwgJAF7PRKlsJQJ8cxCpAgwrzMByZSxOIdX+yDW+b/lKSvtbMCjYj8aAFjkWeBtkO
         cAYra3Y/W3fjkYGkBM/afK0yTT91/s+xAdYjRYk/xo/AKarwWtCK29YUrKgxij4e7QMw
         MOcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TccX7XuH46fbwphbyOilgr839SDETLNO2yNQiupHT4bu+TQMm
	u8KHyHrTfPtqACBI1LIGZ9g=
X-Google-Smtp-Source: ABdhPJwKTAkB4pq0Amv26vyk4Et4URuBvlmhsfIS7g6o6aazAG+wdMn5XB36gQNATI4OcyufD0Lhig==
X-Received: by 2002:a92:c8c5:: with SMTP id c5mr53005294ilq.47.1594398522730;
        Fri, 10 Jul 2020 09:28:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:87d1:: with SMTP id q17ls1746308ios.1.gmail; Fri, 10 Jul
 2020 09:28:42 -0700 (PDT)
X-Received: by 2002:a5e:c311:: with SMTP id a17mr18913829iok.12.1594398522347;
        Fri, 10 Jul 2020 09:28:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594398522; cv=none;
        d=google.com; s=arc-20160816;
        b=0cROlfuA8XM/t3PF88EY9OXOTuVF4UXHOA8vGU3h2CSaC6W0XGUpoS3SZxjgfTkNmh
         KoPZK2hOZLTvCuOYdM4QExarQOgLIXb4NEMTQhOAFg8KC4ouRU2V9uT1EQT6ygE0v0JO
         S6uEODxZEifIJk1h2XIkfDLItd7QSqm5mWGMcqploUSY6AMOsjGgDo0DP94RPERFsnNl
         kVPtqzacGrUcho9OupH93+AYvKb4b9zsUXA4Nx/6PHt5VOK/pBdw/PX3pyKBMhI9qkGb
         PVTqI8TowCp+Qp8AfQ6etx0gGPh6u55RBJyHpwDrQHycqN2YZ4TDk0alUDvhq+P/5FUQ
         cTPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nKaOX+NRBrBq3XevXwuk7E5e3fIHOyY+CTvFL+ebfA0=;
        b=VhWWOZoWr9Q33ysjOErKIXSNDlbP4HdmeE2XeTYpwbO9eNVOljsW0wnDPMgt7/FeNN
         ma62pngzIZIR8Cx7eUGPu2Vmtwtj/fhjxh7bCL2gk+Yzir7fLUzBPeBXUIk2HAm58HHH
         cOXVPyfkF1PAajwhuHO5isnCn15Cw5fNbe/c9tVtmAZc7LvVWYJ112mH6xrXatL//YD4
         CVnN4rJ5/5JDX6PHf9zui8wgyI5KHUfC7u8WqxCUrTnbXL36qV5OCw4wnj8xKGBohMg0
         rGaa9nnm1Mi4T6fTEQoJqtn4IdlWc35QwTZF/8Szaa7oW8A2wsM3y4LDSwYdHXlFckEO
         KEow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwmTb1+s;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id d3si75008iow.4.2020.07.10.09.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 09:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id gc9so2836923pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 09:28:42 -0700 (PDT)
X-Received: by 2002:a17:902:bd97:: with SMTP id q23mr55568673pls.251.1594398521801;
 Fri, 10 Jul 2020 09:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com> <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <202007100905.94A79A7A76@keescook>
In-Reply-To: <202007100905.94A79A7A76@keescook>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Fri, 10 Jul 2020 12:28:30 -0400
Message-ID: <CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3xsy_eRKwFSpDD-5sQ@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Kees Cook <keescook@chromium.org>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Geoffrey Thomas <geofft@ldpreload.com>, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000085c1f805aa18d50e"
X-Original-Sender: alex.gaynor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WwmTb1+s;       spf=pass
 (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;       dmarc=pass
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

--00000000000085c1f805aa18d50e
Content-Type: text/plain; charset="UTF-8"

:wave:,

Hey Kees, that's Geoffrey Thomas and I, we're both on this thread :-)

Alex

On Fri, Jul 10, 2020 at 12:10 PM Kees Cook <keescook@chromium.org> wrote:

> On Fri, Jul 10, 2020 at 02:50:22PM +0200, Christian Brauner wrote:
> > On Fri, Jul 10, 2020 at 08:28:03AM +0200, Greg KH wrote:
> > > On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
> > > > Hello folks,
> > > > I'm working on putting together an LLVM "Micro Conference" for the
> > > > upcoming Linux Plumbers Conf
> > > > (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's
> not
> > > > solidified yet, but I would really like to run a session on support
> > > > for Rust "in tree."  I suspect we could cover technical aspects of
> > > > what that might look like (I have a prototype of that, was trivial to
> > > > wire up KBuild support), but also a larger question of "should we do
> > > > this?" or "how might we place limits on where this can be used?"
> > > >
> > > > Question to folks explicitly in To:, are you planning on attending
> plumbers?
> > > >
> > > > If so, would this be an interesting topic that you'd participate in?
> > >
> > > Yes, I'll be there.
> >
> > We actually had this dicussion a while back and there were some more
> > people interested in this. I'd be interested to attend this and I've
> > spoken with Kees and a few others about this topic at last Plumbers (I
> > think Greg might have been around for this informal discussion as well.
> > But I might be imagining things.).
>
> I'm quite interested in this topic still, yes. :) (And will be attending
> Plumbers.)
>
> We had interesting discussions with the LSS 2019 "Rust in the kernel"[1]
> speakers, and I know Nick has reviewed their work[2] too. Perhaps we should
> reach out to them as well?
>
> -Kees
>
> [1] https://ldpreload.com/p/kernel-modules-in-rust-lssna2019.pdf
> [2] https://github.com/fishinabarrel/linux-kernel-module-rust
>
> --
> Kees Cook
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3xsy_eRKwFSpDD-5sQ%40mail.gmail.com.

--00000000000085c1f805aa18d50e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">:wave:,<div><br></div><div>Hey Kees, that&#39;s Geoffrey T=
homas and I, we&#39;re both on this thread :-)</div><div><br></div><div>Ale=
x</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Jul 10, 2020 at 12:10 PM Kees Cook &lt;<a href=3D"mailto:kee=
scook@chromium.org">keescook@chromium.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On Fri, Jul 10, 2020 at 02:50:22PM=
 +0200, Christian Brauner wrote:<br>
&gt; On Fri, Jul 10, 2020 at 08:28:03AM +0200, Greg KH wrote:<br>
&gt; &gt; On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:=
<br>
&gt; &gt; &gt; Hello folks,<br>
&gt; &gt; &gt; I&#39;m working on putting together an LLVM &quot;Micro Conf=
erence&quot; for the<br>
&gt; &gt; &gt; upcoming Linux Plumbers Conf<br>
&gt; &gt; &gt; (<a href=3D"https://www.linuxplumbersconf.org/event/7/page/4=
7-attend" rel=3D"noreferrer" target=3D"_blank">https://www.linuxplumberscon=
f.org/event/7/page/47-attend</a>).=C2=A0 It&#39;s not<br>
&gt; &gt; &gt; solidified yet, but I would really like to run a session on =
support<br>
&gt; &gt; &gt; for Rust &quot;in tree.&quot;=C2=A0 I suspect we could cover=
 technical aspects of<br>
&gt; &gt; &gt; what that might look like (I have a prototype of that, was t=
rivial to<br>
&gt; &gt; &gt; wire up KBuild support), but also a larger question of &quot=
;should we do<br>
&gt; &gt; &gt; this?&quot; or &quot;how might we place limits on where this=
 can be used?&quot;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Question to folks explicitly in To:, are you planning on att=
ending plumbers?<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; If so, would this be an interesting topic that you&#39;d par=
ticipate in?<br>
&gt; &gt; <br>
&gt; &gt; Yes, I&#39;ll be there.<br>
&gt; <br>
&gt; We actually had this dicussion a while back and there were some more<b=
r>
&gt; people interested in this. I&#39;d be interested to attend this and I&=
#39;ve<br>
&gt; spoken with Kees and a few others about this topic at last Plumbers (I=
<br>
&gt; think Greg might have been around for this informal discussion as well=
.<br>
&gt; But I might be imagining things.).<br>
<br>
I&#39;m quite interested in this topic still, yes. :) (And will be attendin=
g<br>
Plumbers.)<br>
<br>
We had interesting discussions with the LSS 2019 &quot;Rust in the kernel&q=
uot;[1]<br>
speakers, and I know Nick has reviewed their work[2] too. Perhaps we should=
<br>
reach out to them as well?<br>
<br>
-Kees<br>
<br>
[1] <a href=3D"https://ldpreload.com/p/kernel-modules-in-rust-lssna2019.pdf=
" rel=3D"noreferrer" target=3D"_blank">https://ldpreload.com/p/kernel-modul=
es-in-rust-lssna2019.pdf</a><br>
[2] <a href=3D"https://github.com/fishinabarrel/linux-kernel-module-rust" r=
el=3D"noreferrer" target=3D"_blank">https://github.com/fishinabarrel/linux-=
kernel-module-rust</a><br>
<br>
-- <br>
Kees Cook<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">All that =
is necessary for evil to succeed is for good people to do nothing.<br></div=
></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3xsy_eRKwFSpD=
D-5sQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAFRnB2WNo45J8h3-ncopLKENvcO0rf7J3x=
sy_eRKwFSpDD-5sQ%40mail.gmail.com</a>.<br />

--00000000000085c1f805aa18d50e--
