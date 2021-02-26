Return-Path: <clang-built-linux+bncBCS7XUWOUULBBAX74WAQMGQERIXX3RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E72326A56
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 00:08:51 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id a19sf3619332uak.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 15:08:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614380930; cv=pass;
        d=google.com; s=arc-20160816;
        b=UMCdEROZPrn2lY/33b1BxxPynyA1euII2CfzrGUfGZ6voxZ0WQiSlCDY9Z/Q5e2IaU
         lcbNA+wGYZjCGSXxJFkRqAyF0bjuOpJo742xJrfDyw4W0JzLiWP/ouAFwd+M4WgZ8e0e
         Z50T1s/RbmumGKYQ6bXI9+6pZIVhytkUWMnPuRYGy7t8gQMlbRT+fXFZee4w/nCVy66+
         YislgJc3dWRKtEbttXyD0tYwBt8L7U+gIj2ZTJ/CjWJVUpaFBvIKni1v/uiQFUlXCQME
         rOHIISgt85X4P6kt4HEha5k8t+VD/398GRaZgVulVSAiBEnFfXOsEAGw7S9885M8fIx7
         4JqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cpYs19UQJweknivO7uEozo06Ge+j66T4EnuAMnDtBVw=;
        b=NcbIgEJVceU6woGP+YIIECWBP2SjEAquQ7kFeb3nWUN4RryxuAld87I18LjAyrHXfY
         OcpNcPfzKkUv4dUDcrG2DB+aJeAIbYGFffdqdQ1UmJNbu8k5ZCYpJlhNJdh7VtE9Z/6H
         SX/CvSzTykqTCmwDu7AqdMl+Y44U9uL+BRsiJEqbgp8yw07Ai8VSOrz4yCMVZ0hCMM43
         8OKo7MS6UN69j85EqryCo6lNlScb2xpTxuEkxfRvMYiosvYvVW+g9M3zuQAGUToW8/e4
         nUM3WKCycmuuv27CgVXXQttEHxHQYRyqepDEXatjS+bewrEROAAHGGTWre/g0Jla52kN
         9aQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRwACVMu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cpYs19UQJweknivO7uEozo06Ge+j66T4EnuAMnDtBVw=;
        b=H2OU8LZJS2r3dO1smS7vMvunHZphBequRNCltOWJl2JhEsuZgTrFk6gXhrJnItyjP8
         ZKKwRevnt2MrUflLzuDwPMvmzd1HYFPXEpUI5iwU8BaBSO1wmaviUu1a0Qj3mplnHNoh
         lK6FqBnBEYY2o3KYCa4Ss5anshCAfG79abPHaMXvGS1AqAjkV1yCNZyPjrB3UqR1t1b+
         tcexyfgG6zmUIcmV7JIJoXyngDZ+p1JWbUSYoQWJC2FshSwKAsV5+KHBtRT6CeoePDHd
         J7uDHi7E9yLjXJaCZuGGaJgHinFcrZFEZ1Xni7/nxnNJpLmz/fEv2c2YKFWgFFMWlUvm
         QACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cpYs19UQJweknivO7uEozo06Ge+j66T4EnuAMnDtBVw=;
        b=JG86A7YNXnGst53DX/+jb2iMCQ5TFW1inkVRh4TJ1NWTKnBp8qEEzrk/5IIOVPq9bB
         eeNFXoyn24cRCMNWl8TFypK+avKbjZkkZzjaFzn3N2qxFegz1FC4ARLMPCB2y1XQ7wAT
         bIVmEmVVMuj8D+55idGfktsB1DOkTwGn+jMukqa/RooLtNPVuDm6dLoxJRXYmHgNf8XX
         xgFM8rKE4KaOlLxhJ4pzYovhKoScNjxjYDXr6rYXxvdp5U1Ei4xNI7XCZsX1YILHHZ8z
         rONufVwJQKlfoQ8H7ebZLsDLNG/Atx0wYzpoKCzfCYQ5PxJMXGpS6z3e/ipvFIcfYlib
         mO9w==
X-Gm-Message-State: AOAM5322ZiDDJEogH82jqVJTRji6omuvC1XUCICUyexzjA+qvrOlxqVr
	n21F3emJ3DNuGXjAlwThGFE=
X-Google-Smtp-Source: ABdhPJxkpUPOWvNjtXogxFziVABCV1+RzsTRZPx5OdfERKQ44Agcsw5wif4FN+GqioWD28gszWvqFg==
X-Received: by 2002:ac5:cce8:: with SMTP id k8mr3294885vkn.5.1614380930479;
        Fri, 26 Feb 2021 15:08:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:12d5:: with SMTP id 204ls54298vks.9.gmail; Fri, 26 Feb
 2021 15:08:50 -0800 (PST)
X-Received: by 2002:ac5:c5ae:: with SMTP id f14mr3435464vkl.4.1614380929950;
        Fri, 26 Feb 2021 15:08:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614380929; cv=none;
        d=google.com; s=arc-20160816;
        b=QCwo4tnBmcVAErdNypVbtxQLxFc/79uH8E7wyAoLHwKB13arXpehfGQfJcWHJEnP+g
         p17XAgKvrSbzVD1CCtnw9oafff0zkKfcqz/ZIo9UjPcNhlfPiwkZ95ww8xCbjhbl9uOg
         IBjiZrynvRkts3XujXzUxTPesPrmRsJgYhiC47KcEG3eXlW0M6VfISfd/v1XhxCuMON5
         0JxUkeQ6lKmjk022L/bBNEJmy6zN6Uknfhh4kyhE8ap0AzHr31nBAHCba7M+gvGtTPzn
         BYOJM8+kQ9AXAFvw5oLlCApkoXPe/KVOXshOGA1nzl4SUDMPuBy/QC3wsUvJ+DN28wUb
         J5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6g2zHSXrab4u7igQLGPzk9506QvbB6qKuCI4g25FdK0=;
        b=OtamxgYbDW9CrdKPe6dGURqlgaZRkbWX1pB5TMnBEGMO5wHgQoOr8CLuP9ant8QjaX
         o7dTkhu1UYYHN4Rq5V2Ctdici8tqQayeco8IoV/KJ5ymwUW+V+II72WvsXriqfgThcnD
         LSF22ygCSH7LQe8+JK57YEcQnAM//VjZZrDeL9XlfuoD4j5yWW7c9clXPek1lxkzhTkP
         IEd0qPbAk09X4AedmU1VSehICkHcJNcBaZEonoZwWpNArFBfM+ulIC4B6vU5qox9T0I5
         +1mGrvcqDWbcl+f0/x9aCOg4MxJmOlBT6C1bmqjNSNwoUbew4cY7jdHDsXV/rSeqMnPY
         j8Rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CRwACVMu;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id u21si383038vkn.2.2021.02.26.15.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 15:08:49 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id b21so7116352pgk.7
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 15:08:49 -0800 (PST)
X-Received: by 2002:a62:7647:0:b029:1ee:55b7:8b59 with SMTP id
 r68-20020a6276470000b02901ee55b78b59mr642637pfc.61.1614380928969; Fri, 26 Feb
 2021 15:08:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
 <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com>
 <20210226211154.GA21392@MSI.localdomain> <CAKwvOd=YikDtyz5Be6x5zyi+52zgqtG4+MZaLEpsH8qCnmJGRw@mail.gmail.com>
 <202102261326.D9B7A0B5@keescook>
In-Reply-To: <202102261326.D9B7A0B5@keescook>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 26 Feb 2021 15:08:37 -0800
Message-ID: <CAFP8O3KYnzjEbS4swN0PQ9tc3EEtpfy_UJzuJ6ycp7WEF2tQFQ@mail.gmail.com>
Subject: Re: Congrats, Nathan!
To: Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000ce120f05bc45595b"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CRwACVMu;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

--000000000000ce120f05bc45595b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 26, 2021 at 1:36 PM Kees Cook <keescook@chromium.org> wrote:

> On Fri, Feb 26, 2021 at 01:18:52PM -0800, Nick Desaulniers wrote:
> > On Fri, Feb 26, 2021 at 1:12 PM Nathan Chancellor <nathan@kernel.org>
> wrote:
> > >
> > > On Fri, Feb 26, 2021 at 10:12:19AM +0100, Sedat Dilek wrote:
> > > > On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn <
> lukas.bulwahn@gmail.com> wrote:
> > > > >
> > > > > My news ticker just pointed me to some random news repetition of:
> > > > >
> > > > >
> https://www.linuxfoundation.org/en/press-release/google-funds-linux-kerne=
l-developers-to-focus-exclusively-on-security/
> >
> > What a lot of the coverage missed was that the effort is in large part
> > to avoid another heartbleed like scenario in which people realize that
> > heavily used F/LOSS infra isn't getting the attention needed which can
> > lead to various security flaws.  For us, keeping the kernel building
> > with clang enables us to ship mitigation technologies built on LLVM.
> > And Nathan has kicked more ass than anyone at keeping the lights on.
> >
> > > > >
> > > > > Great to see to have such a great supporter for Clang-Built Linux
> > > > > long-term on board now and some media coverage on it :)
> > > > >
> > > > > ...and of course to Nick pulling the required strings, and to
> Google
> > > > > having those strings :)
> >
> > It was all Kees.  I'm just the assistant to the regional puppet master.
>
> Heh. It was a team effort, but, just to keep up appearances: "Muhahaha!"[=
1]
>
> -Kees
>
> [1] https://www.youtube.com/watch?v=3DMPImhprnUsE&t=3D11s
>
>
This is really good news to hear! Thanks to both of you!  (And others who
haven't showed up in this "conspiracy" yet:) )

And, congratulations to Nathan!


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KYnzjEbS4swN0PQ9tc3EEtpfy_UJzuJ6ycp7WEF2tQFQ%40mai=
l.gmail.com.

--000000000000ce120f05bc45595b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 26, 2021 at 1:36 PM Kees Cook=
 &lt;<a href=3D"mailto:keescook@chromium.org">keescook@chromium.org</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Fri, Feb 26, 2021 at 01:18:52PM -0800, Nick Desaulnie=
rs wrote:<br>
&gt; On Fri, Feb 26, 2021 at 1:12 PM Nathan Chancellor &lt;<a href=3D"mailt=
o:nathan@kernel.org" target=3D"_blank">nathan@kernel.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Fri, Feb 26, 2021 at 10:12:19AM +0100, Sedat Dilek wrote:<br>
&gt; &gt; &gt; On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn &lt;<a href=3D=
"mailto:lukas.bulwahn@gmail.com" target=3D"_blank">lukas.bulwahn@gmail.com<=
/a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; My news ticker just pointed me to some random news repe=
tition of:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; <a href=3D"https://www.linuxfoundation.org/en/press-rel=
ease/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/=
" rel=3D"noreferrer" target=3D"_blank">https://www.linuxfoundation.org/en/p=
ress-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-s=
ecurity/</a><br>
&gt; <br>
&gt; What a lot of the coverage missed was that the effort is in large part=
<br>
&gt; to avoid another heartbleed like scenario in which people realize that=
<br>
&gt; heavily used F/LOSS infra isn&#39;t getting the attention needed which=
 can<br>
&gt; lead to various security flaws.=C2=A0 For us, keeping the kernel build=
ing<br>
&gt; with clang enables us to ship mitigation technologies built on LLVM.<b=
r>
&gt; And Nathan has kicked more ass than anyone at keeping the lights on.<b=
r>
&gt; <br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Great to see to have such a great supporter for Clang-B=
uilt Linux<br>
&gt; &gt; &gt; &gt; long-term on board now and some media coverage on it :)=
<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; ...and of course to Nick pulling the required strings, =
and to Google<br>
&gt; &gt; &gt; &gt; having those strings :)<br>
&gt; <br>
&gt; It was all Kees.=C2=A0 I&#39;m just the assistant to the regional pupp=
et master.<br>
<br>
Heh. It was a team effort, but, just to keep up appearances: &quot;Muhahaha=
!&quot;[1]<br>
<br>
-Kees<br>
<br>
[1] <a href=3D"https://www.youtube.com/watch?v=3DMPImhprnUsE&amp;t=3D11s" r=
el=3D"noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3DMPImh=
prnUsE&amp;t=3D11s</a><br><br></blockquote><div><br></div><div>This is real=
ly good news to hear! Thanks to both of you!=C2=A0 (And others who haven&#3=
9;t showed=C2=A0up in this &quot;conspiracy&quot; yet:) ) </div></div><div>=
<br></div><div>And, congratulations to Nathan!</div><br clear=3D"all"><div>=
<br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr=
">=E5=AE=8B=E6=96=B9=E7=9D=BF</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFP8O3KYnzjEbS4swN0PQ9tc3EEtpfy_UJzuJ6ycp7WEF=
2tQFQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAFP8O3KYnzjEbS4swN0PQ9tc3EEtpfy_UJ=
zuJ6ycp7WEF2tQFQ%40mail.gmail.com</a>.<br />

--000000000000ce120f05bc45595b--
