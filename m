Return-Path: <clang-built-linux+bncBDYJPJO25UGBB46U6H6QKGQEJRULOSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3AC2C1B2E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 03:05:41 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id o18sf15603976ilg.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:05:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606183540; cv=pass;
        d=google.com; s=arc-20160816;
        b=FTq+DkHb7q+d7iQ1RQQNaZCj1Kv2ouiIX7J5I0TeQHiYeQSUrmcotK+X79HJs56fAx
         Ou3W0kH85nDUhHB8DOlWMwhLnjFrWetfRQ8eqPCkfxXlV34XzuC440K2JVrRrVbFu3zu
         GIKqgL41ZpXNVG+sn2RzqEikVq+HTtctvHgYUoS7Shta6GXrq6DXY7Vq34sqitBc0Myu
         P8AKhOzMKzSIk7IN7ZB5vOdR0sOEEltOlqH/kGXzlIPcrCB6EWjN5J2V3rarO4dOCzn5
         yaTeVgtHkxb8ioryIRgYX6bDDf0JQDC5Vrh2Ekc9H9ob/jFkXtwzDOk9hMwB3FoCbBRu
         5JPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xC5v0PGU/J1CbNRfTpk9ZJQ4wqOOZIAI/MI01Adw8Js=;
        b=GOmllAZ+ZSTVJRwWcgv+RkgV2KLsILE3V8M+lgRsmmPOSVQqSQWuxn8Oud5491Dx1W
         RxEnSS35pDbI7mA3/lW/iaZwyQzsnByNc/NNPmvfI1J8r2ec5FVC33XZNVjT7zA58nqE
         7t/I+xDkT7i8IEPHxjuHaHxnGpJUA7nB0r/KC1TQMY9T+9+TtwxSrDkvKT2fFYD0wymX
         bdExGujEjUel+ha4wjKGFJvUxJ6auljLQCWlgwmNlvkXCzItAp5Q4ImmxGITcuBmUQQj
         lvt8gCKDjuuKzbyarKZTnV3gsfEXaOsvrIXIC06u+3fBUpt49EaNsJSDKf12prDXpzvL
         SYCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ThbGnJcX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xC5v0PGU/J1CbNRfTpk9ZJQ4wqOOZIAI/MI01Adw8Js=;
        b=Iyxf1UqqsTdaz61nBEXTjF9OsPfXvccmsQXfe2fJoiqauywadicU8yAGbAq5MlhO8I
         7SilK+zW3bOgXOupPCezD7yvI/O/dw2ePX5DI2Ixmd0u3Zg4Vh+Ijddd0X3KAXWGMknC
         qosj6xPtUPwJ9m0joheHzlAY1dl0lSo3uofeCThEtqciZlbtHaBHj5ttqWa3u6jd1P3T
         Ivm6M7Zob9r6SC8AIKuIQkE6cYdn5PEhiHsMQP2RrwxLEoK0YoTyAAhsVA7FJmbwCX26
         OGAL2i9H24rly/DQ2NpxdoLvRVvvnyXUVmZib9wZ1WlgGdvvgwBIkvq8z9TVa69VTHjB
         URsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xC5v0PGU/J1CbNRfTpk9ZJQ4wqOOZIAI/MI01Adw8Js=;
        b=H8qvbHCPf8XP9nW3UkEC1EvHoXYW4gaZF/DDmu8KiinozU4I3YfMcfjRaSmndMFvAy
         8dXuwQkjV3rUohTBsLFQplUtZz/AxY1jg4x3hEX31dfjpzBx7pWWmMRppa/5y9Gyr0X6
         H/yxs+YRIZad07BwnZRFqmvDPcjtr/5XIBFtWLRfXAiUp6b4XkRJh2NZLqgx4bb/h0F6
         2PMoUhwzpMQttYyXxEDjg6rmxGMwvi+6rzyA/A/3YWhJUm5jVK3Rb69kaBWnQI88woWD
         w3+U8rL2w+aC9hVN/U7JkeJkwhS/+qvUS0edpEudYVg9QuVYX1/yV+lr6jJP3vikNDIS
         l+bQ==
X-Gm-Message-State: AOAM530yM5Jfy1UmTdXWpDtrH59/6Jdt1dpCjWhRcdvRkMRc/GdtEM+a
	JBA5Eyw/1EcZAk4j4S4yYbc=
X-Google-Smtp-Source: ABdhPJzm2BKnfUP04MADpQ7S+AMNBEqNLeMSaVFq/2nN3LuyFwsA6lwz77NSPP8fb+2cMNBJ8au5MQ==
X-Received: by 2002:a02:cbb5:: with SMTP id v21mr2445481jap.80.1606183540058;
        Mon, 23 Nov 2020 18:05:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls2257829jaj.0.gmail; Mon, 23
 Nov 2020 18:05:39 -0800 (PST)
X-Received: by 2002:a02:7797:: with SMTP id g145mr2304633jac.103.1606183539603;
        Mon, 23 Nov 2020 18:05:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606183539; cv=none;
        d=google.com; s=arc-20160816;
        b=QDjDRpl9sZK04ps36sM6pzDTUpYTwI98r6DPCC7cuc8UfURTIu1N+zeXpcxBu9H7jj
         UiAoDlR7FFvcMpGbcbV4qk88TzC8fMDvON4G6S7EGvGHQLzwVv6QLUE3GKaASsxWbC56
         9Jh5A9aBkM9gXdYusAGcVcz3bx+dd1nsVBDWEtbxqhHdzZNuiagwbiRpdZZmHy5PPUbo
         BRZLis3Ly7wprATfc9reJBbalPqSXqwVZmDbi7rntW7h8ipbef+uRmtYw62ku6PRKGte
         1IgtoFBmWziSdlF2hvxoVsEr3d5BkP5yrVGkaOArS37ztAYp0OaYvpBnw/bfMflJtwti
         GwAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x6NEu6980jVUtNvY4YVWqE8UApu9wDXZDnURcmo0u1I=;
        b=pm5O9pYNDMWAnfd9ODUOqPkLdnrWwEYgG15D4HaUZXXIKXByhvdu9zbNkqnWNJshnu
         x+3vu48xRunVDDTDUzq7R3KkTl2XmnSx/X223hwDN2NC5UcZuUe/b8gO0MR2Cio7PuVu
         fkSSQJL0Q1gCIcYrFhwHoYn4IhwaJ/QOaifNU9dYdWuPgztFLWnONCOpAZ9El/qRLqYa
         cfwm6ph6q9z1MWD8eJAaWtbInRQWprHLM/eGfi8CPBPHKwng9+NhPdKEuQuLSPFWevCC
         fcmLCdQ+N6Kup0zebzijewAduAmr+wIlffguVtUSk7Wqz3KG5flR2pdjj8fIKwBkYE+a
         R5Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ThbGnJcX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a2si540447ild.4.2020.11.23.18.05.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 18:05:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id s63so6168362pgc.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 18:05:39 -0800 (PST)
X-Received: by 2002:a62:7905:0:b029:197:f300:5a2a with SMTP id
 u5-20020a6279050000b0290197f3005a2amr2134161pfc.30.1606183539051; Mon, 23 Nov
 2020 18:05:39 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
 <20201123174648.6a22575b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201123174648.6a22575b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Nov 2020 18:05:27 -0800
Message-ID: <CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6sQ2iS=m=rRGL_TkJQUFZw@mail.gmail.com>
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-acpi@vger.kernel.org, Joe Perches <joe@perches.com>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, fthain@telegraphics.com.au, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000004aa36205b4d0bf71"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ThbGnJcX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--0000000000004aa36205b4d0bf71
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

(minus all of these lists, except LKML, CBL, and ACPI)

On Mon, Nov 23, 2020 at 5:46 PM Jakub Kicinski <kuba@kernel.org> wrote:

> On Mon, 23 Nov 2020 17:32:51 -0800 Nick Desaulniers wrote:
> > On Sun, Nov 22, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote=
:
> > > On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> > > > If none of the 140 patches here fix a real bug, and there is no
> change
> > > > to machine code then it sounds to me like a W=3D2 kind of a warning=
.
> > >
> > > FWIW, this series has found at least one bug so far:
> > >
> https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5kvFFFrxzhPSM6qKAO8g=
xSp=3DKr_CQ@mail.gmail.com/
>
> >
> > So looks like the bulk of these are:
> > switch (x) {
> >   case 0:
> >     ++x;
> >   default:
> >     break;
> > }
> >
> > I have a patch that fixes those up for clang:
> > https://reviews.llvm.org/D91895
>
> =F0=9F=98=8D
>

And here's what the diffstat looks like cleaning up the rest after that
clang patch (for ARCH=3Darm,arm64,x86_64 defconfigs):
 arch/x86/events/core.c                   | 2 +-
 drivers/input/serio/libps2.c             | 2 +-
 drivers/mtd/chips/cfi_cmdset_0002.c      | 1 +
 drivers/usb/gadget/function/f_loopback.c | 2 +-
 fs/ext2/inode.c                          | 2 +-
 mm/vmscan.c                              | 2 +-
 6 files changed, 6 insertions(+), 5 deletions(-)

Maybe more palatable than the 140 patch series?  (Sorry Gustavo, but maybe
you can start another branch and cherry pick over just these? I didn't look
at your list to verify you had patches for the above).

I've already sent fixes upstream for drivers/acpi/acpica/ which have been
merged:
https://github.com/acpica/acpica/commit/4b9135f5774caa796ddf826448811e8e7f0=
8ef2f

Clang still has some stupid bug where it's warning in a couple cases
without providing the actual line info (for ARCH=3Darm,arm64); I suspect it
has something funny to do with headers, but I need to follow up on that;
it's a distinct bug it looks like.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6sQ2iS%3Dm%3DrRGL_TkJQUFZw%4=
0mail.gmail.com.

--0000000000004aa36205b4d0bf71
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(minus all of these lists, except LKML, CBL, and ACPI=
)</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">On Mon, Nov 23, 2020 at =
5:46 PM Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org">kuba@kernel.o=
rg</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Mon, 23 Nov 2020 17:32:51 -0800 Nick Desaul=
niers wrote:<br>
&gt; On Sun, Nov 22, 2020 at 8:17 AM Kees Cook &lt;<a href=3D"mailto:keesco=
ok@chromium.org" target=3D"_blank">keescook@chromium.org</a>&gt; wrote:<br>
&gt; &gt; On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:=
=C2=A0 <br>
&gt; &gt; &gt; If none of the 140 patches here fix a real bug, and there is=
 no change<br>
&gt; &gt; &gt; to machine code then it sounds to me like a W=3D2 kind of a =
warning.=C2=A0 <br>
&gt; &gt;<br>
&gt; &gt; FWIW, this series has found at least one bug so far:<br>
&gt; &gt; <a href=3D"https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5=
kvFFFrxzhPSM6qKAO8gxSp=3DKr_CQ@mail.gmail.com/" rel=3D"noreferrer" target=
=3D"_blank">https://lore.kernel.org/lkml/CAFCwf11izHF=3Dg1mGry1fE5kvFFFrxzh=
PSM6qKAO8gxSp=3DKr_CQ@mail.gmail.com/</a>=C2=A0 <br>
&gt; <br>
&gt; So looks like the bulk of these are:<br>
&gt; switch (x) {<br>
&gt;=C2=A0 =C2=A0case 0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0++x;<br>
&gt;=C2=A0 =C2=A0default:<br>
&gt;=C2=A0 =C2=A0 =C2=A0break;<br>
&gt; }<br>
&gt; <br>
&gt; I have a patch that fixes those up for clang:<br>
&gt; <a href=3D"https://reviews.llvm.org/D91895" rel=3D"noreferrer" target=
=3D"_blank">https://reviews.llvm.org/D91895</a><br>
<br>
=F0=9F=98=8D<br>
</blockquote></div><br clear=3D"all"><div>And here&#39;s what the diffstat =
looks like cleaning up the rest after that clang patch (for ARCH=3Darm,arm6=
4,x86_64 defconfigs):</div><div>=C2=A0arch/x86/events/core.c =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>=C2=A0drivers/in=
put/serio/libps2.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>=C2=
=A0drivers/mtd/chips/cfi_cmdset_0002.c =C2=A0 =C2=A0 =C2=A0| 1 +<br>=C2=A0d=
rivers/usb/gadget/function/f_loopback.c | 2 +-<br>=C2=A0fs/ext2/inode.c =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 2 +-<br>=C2=A0mm/vmscan.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +=
-<br>=C2=A06 files changed, 6 insertions(+), 5 deletions(-)<br></div><div><=
br></div><div>Maybe more palatable than the 140 patch series?=C2=A0 (Sorry =
Gustavo, but maybe you can start another branch and cherry pick over just t=
hese? I didn&#39;t look at your list to verify you had patches for the abov=
e).</div><div><br></div><div>I&#39;ve already sent fixes upstream for=C2=A0=
drivers/acpi/acpica/ which have been merged:</div><div><a href=3D"https://g=
ithub.com/acpica/acpica/commit/4b9135f5774caa796ddf826448811e8e7f08ef2f">ht=
tps://github.com/acpica/acpica/commit/4b9135f5774caa796ddf826448811e8e7f08e=
f2f</a><br></div><div><br></div><div>Clang still has some stupid bug where =
it&#39;s warning in a couple cases without providing the actual line info (=
for ARCH=3Darm,arm64); I suspect it has something funny to do with headers,=
 but I need to follow up on that; it&#39;s a distinct bug it looks like.</d=
iv>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Thank=
s,<div>~Nick Desaulniers</div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6sQ2iS%3Dm%3DrRGL=
_TkJQUFZw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAKwvOdkxY4pXN4wbYM_B1cLjr8uX6s=
Q2iS%3Dm%3DrRGL_TkJQUFZw%40mail.gmail.com</a>.<br />

--0000000000004aa36205b4d0bf71--
