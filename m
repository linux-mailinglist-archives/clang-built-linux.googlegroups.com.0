Return-Path: <clang-built-linux+bncBDSZZEMNR4LRB75CTWCQMGQEE2TGWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0937938BF31
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 08:21:53 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id i14-20020a4ad08e0000b029021ea73c87besf1593375oor.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 23:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YkILolOY5r7M/eFUQ88IAh0ch0/oJweNpj/8ukyBA3Q=;
        b=pFhoRgDg0xdRx1ziifd4Y9XnCVYR3pAl5TvFW2Ma73YMRKVCoKRljc4hDwKc0Cwh/i
         WU5rwRXVG94yGH44v53KlIwJPqF277OgolAkSBqGO0GwVVa4+HhPd4xPNkdDlZLP53em
         bUVzO4ikkqhhVqbv/Aa4cJMuMFIT9qDxTghcpS+H8Xu4EVBS1dqGBw3xlivurByee70J
         w7bE7LntmkfO6sfKsu79ExeBHx21C8JHM6bQuScBIe8ucpcOP2T3gqXI8zOWWMZgeCsa
         /TVkVEL5Zd9K4a/vBMMlt9OGQFOgk/tKsCHZw74X6+FmLmLZXBB8610DOiM6OEtPNd1n
         xqSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YkILolOY5r7M/eFUQ88IAh0ch0/oJweNpj/8ukyBA3Q=;
        b=oaydJ++KQcbcQQuKV/QZja2DO+Tn+D/iQbrKy2w+LJuOOdWlQd1+fgjT0Fh6UzdYKB
         yKjVA4h0sj3ch4TL/tnY+1qAg/CztFQPvBj+pkHycPhKZoP02MjmFIvnAZsiuFDDWQxd
         i/l9IGGnIB9uV+DGRTVO2xzYYwEhZns+8uVsodxbXf8M254jHipHxED4flezL2gIodhP
         +DV2tedPbEPKy6yz9MsZQ4Gvlt9hHTclyM8gUBRCkKRCHbRPcdbDiTs9BJ5kZ/UdRat2
         BbRdQaNjJDN5rbiR1e671rN7/H9hBboTN7VmMXuGvQW9x+R2skQbkf8E8E21Ngo4RQZk
         UXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YkILolOY5r7M/eFUQ88IAh0ch0/oJweNpj/8ukyBA3Q=;
        b=ljAR6dJyMgsX7olG2Wdqm5Wnp8GHq5c4iKrj1nmInYav5/a5ZAud7ed+fgmhjxjjyp
         gQmFwMeXCMMOiHVOUgWein+GNWQk/Wp5cutYom1O3TgT6u3DfyW3BgmtiOfZkdtGxgx7
         qHkLFGTHbgJ9G0CG3nIx8hFZnHnj//ea0fgcCLA3UehTN50w5YeVL1F1G2tqvUwwZPWe
         0TVCJm/jMWuV9B/dxudWioZMDmIGv27FzYsavpPAST44n8bdXPqpfu/ABgKQHznx8baL
         j407AFU7zvIA5OV7POFMwL7HJrs6UHs8hBu4kfYxiIna5qx9kZpw711jDnTi9H7a2uWq
         w0nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53283cJPe7z5nBFMXFnhd1WwbDC76Ytc4ahp/5oja0PvbAJeg9C9
	+4SRoAaUuX4IB0ZjADFDWxc=
X-Google-Smtp-Source: ABdhPJzPL1/z3dg5XM4cSNhSpwY2mVx4WgaJ/B1z1eA1QaaBHoxZ7HoUNkJ4JHZLL1s8Dmx96mh+8w==
X-Received: by 2002:a9d:1ec6:: with SMTP id n64mr7015864otn.3.1621578111602;
        Thu, 20 May 2021 23:21:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c508:: with SMTP id i8ls427054ooq.6.gmail; Thu, 20 May
 2021 23:21:51 -0700 (PDT)
X-Received: by 2002:a4a:b301:: with SMTP id m1mr5174591ooo.7.1621578111080;
        Thu, 20 May 2021 23:21:51 -0700 (PDT)
Date: Thu, 20 May 2021 23:21:50 -0700 (PDT)
From: Jesse Chan <cjx.private@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <63bef5fc-e60e-480b-a79d-599e2c60d642n@googlegroups.com>
In-Reply-To: <1291339880.1758.1621522387730@office.mailbox.org>
References: <212218590.13874.1621431781547@office.mailbox.org>
 <CAKwvOd=Z1ia4ZufDbRsEUkumwkz15TtSb2V1aBT7SN8w86RKYw@mail.gmail.com>
 <1291339880.1758.1621522387730@office.mailbox.org>
Subject: Re: [PATCH] fs/ntfs3: make ntfs3 compile with clang-12
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_404_1351059052.1621578110444"
X-Original-Sender: cjx.private@gmail.com
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

------=_Part_404_1351059052.1621578110444
Content-Type: multipart/alternative; 
	boundary="----=_Part_405_559255661.1621578110444"

------=_Part_405_559255661.1621578110444
Content-Type: text/plain; charset="UTF-8"

NTFS3 has not been merged yet. 

You may want to reply to https://lkml.org/lkml/2021/4/2/476 to request 
changes from the author instead. 

Thanks,
Jesse.

On Thursday, May 20, 2021 tor...@mailbox.org wrote:

>
> > Nick Desaulniers <ndesau...@google.com> hat am 20.05.2021 01:06 
> geschrieben: 
> > 
> > 
> > On Wed, May 19, 2021 at 6:43 AM <tor...@mailbox.org> wrote: 
> > > 
> > > Some of the ccflags in the fs/ntfs3 Makefile are for gcc only. 
> > > Replace them with clang alternatives if necessary. 
> > > 
> > > Signed-off-by: Tor Vic <tor...@mailbox.org> 
> > 
> > Thanks for the patch. +clang-built-linux; please make sure to cc the 
> > lists from ./scripts/get_maintainer.pl <patch file>. It should 
> > recommend our mailing list of the words clang or llvm appear anywhere 
> > in the patch file. This helps spread around the review burden. 
> > 
>
> Cool, I didn't know about that script, thanks! 
>
> > > --- 
> > > fs/ntfs3/Makefile | 4 +++- 
> > > 1 file changed, 3 insertions(+), 1 deletions(-) 
> > > 
> > > diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile 
> > > index b06a06cc0..dae144033 100644 
> > > --- a/fs/ntfs3/Makefile 
> > > +++ b/fs/ntfs3/Makefile 
> > > @@ -4,7 +4,9 @@ 
> > > # 
> > > 
> > > # to check robot warnings 
> > > -ccflags-y += -Wunused-but-set-variable -Wold-style-declaration 
> -Wint-to-pointer-cast 
> > > +ccflags-y += -Wint-to-pointer-cast \ 
> > > + $(call cc-option,-Wunused-but-set-variable,-Wunused-const-variable) 
> \ 
> > > + $(call cc-option,-Wold-style-declaration,-Wout-of-line-declaration) 
> > 
> > I think it would be better to leave off the second parameter of both 
> > of these, which is the fallback. 
>
> OK, I will do that. 
> Thanks for your feedback! 
>
> > 
> > > 
> > > obj-$(CONFIG_NTFS3_FS) += ntfs3.o 
> > > 
> > > -- 
> > > 2.31.1 
> > 
> > -- 
> > Thanks, 
> > ~Nick Desaulniers 
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/63bef5fc-e60e-480b-a79d-599e2c60d642n%40googlegroups.com.

------=_Part_405_559255661.1621578110444
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

NTFS3 has not been merged yet.&nbsp;<div><br></div><div>You may want to rep=
ly to&nbsp;https://lkml.org/lkml/2021/4/2/476 to request changes from the a=
uthor instead.&nbsp;</div><div><br></div><div>Thanks,</div><div>Jesse.<br><=
br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thu=
rsday, May 20, 2021 tor...@mailbox.org wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(204,=
 204, 204); padding-left: 1ex;">
<br>&gt; Nick Desaulniers &lt;<a href=3D"" data-email-masked=3D"" rel=3D"no=
follow">ndesau...@google.com</a>&gt; hat am 20.05.2021 01:06 geschrieben:
<br>&gt;=20
<br>&gt; =20
<br>&gt; On Wed, May 19, 2021 at 6:43 AM &lt;<a href=3D"" data-email-masked=
=3D"" rel=3D"nofollow">tor...@mailbox.org</a>&gt; wrote:
<br>&gt; &gt;
<br>&gt; &gt; Some of the ccflags in the fs/ntfs3 Makefile are for gcc only=
.
<br>&gt; &gt; Replace them with clang alternatives if necessary.
<br>&gt; &gt;
<br>&gt; &gt; Signed-off-by: Tor Vic &lt;<a href=3D"" data-email-masked=3D"=
" rel=3D"nofollow">tor...@mailbox.org</a>&gt;
<br>&gt;=20
<br>&gt; Thanks for the patch. +clang-built-linux; please make sure to cc t=
he
<br>&gt; lists from ./scripts/<a href=3D"http://get_maintainer.pl" target=
=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com=
/url?hl=3Den&amp;q=3Dhttp://get_maintainer.pl&amp;source=3Dgmail&amp;ust=3D=
1621664372576000&amp;usg=3DAFQjCNEBAwDtyiYTCNSz8L_6jBOPSM_sDA">get_maintain=
er.pl</a> &lt;patch file&gt;.  It should
<br>&gt; recommend our mailing list of the words clang or llvm appear anywh=
ere
<br>&gt; in the patch file. This helps spread around the review burden.
<br>&gt;=20
<br>
<br>Cool, I didn't know about that script, thanks!
<br>
<br>&gt; &gt; ---
<br>&gt; &gt;  fs/ntfs3/Makefile | 4 +++-
<br>&gt; &gt;  1 file changed, 3 insertions(+), 1 deletions(-)
<br>&gt; &gt;
<br>&gt; &gt; diff --git a/fs/ntfs3/Makefile b/fs/ntfs3/Makefile
<br>&gt; &gt; index b06a06cc0..dae144033 100644
<br>&gt; &gt; --- a/fs/ntfs3/Makefile
<br>&gt; &gt; +++ b/fs/ntfs3/Makefile
<br>&gt; &gt; @@ -4,7 +4,9 @@
<br>&gt; &gt;  #
<br>&gt; &gt;
<br>&gt; &gt;  # to check robot warnings
<br>&gt; &gt; -ccflags-y +=3D -Wunused-but-set-variable -Wold-style-declara=
tion -Wint-to-pointer-cast
<br>&gt; &gt; +ccflags-y +=3D -Wint-to-pointer-cast \
<br>&gt; &gt; +       $(call cc-option,-Wunused-but-set-variable,-Wunused-c=
onst-variable) \
<br>&gt; &gt; +       $(call cc-option,-Wold-style-declaration,-Wout-of-lin=
e-declaration)
<br>&gt;=20
<br>&gt; I think it would be better to leave off the second parameter of bo=
th
<br>&gt; of these, which is the fallback.
<br>
<br>OK, I will do that.
<br>Thanks for your feedback!
<br>
<br>&gt;=20
<br>&gt; &gt;
<br>&gt; &gt;  obj-$(CONFIG_NTFS3_FS) +=3D ntfs3.o
<br>&gt; &gt;
<br>&gt; &gt; --
<br>&gt; &gt; 2.31.1
<br>&gt;=20
<br>&gt; --=20
<br>&gt; Thanks,
<br>&gt; ~Nick Desaulniers
<br></blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/63bef5fc-e60e-480b-a79d-599e2c60d642n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/63bef5fc-e60e-480b-a79d-599e2c60d642n%40googleg=
roups.com</a>.<br />

------=_Part_405_559255661.1621578110444--

------=_Part_404_1351059052.1621578110444--
