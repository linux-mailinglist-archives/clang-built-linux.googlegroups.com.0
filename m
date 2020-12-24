Return-Path: <clang-built-linux+bncBD7MNX4IXUFRBHFGSD7QKGQE4YTHG5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A885D2E2421
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 05:03:41 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id c9sf1846826ybs.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 20:03:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608782620; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrVaXy44Gd7tetOUrwjSirMCjC2DwR8YJpJ7SleaH+SBmHWD1vDwXmb2AVuK8XLO+/
         A5oa6lwthSEEkTruDizOthcY4cfkyzy9/UOgarSjDAE73SCHIFIcURJuo8QicKTuGZsU
         4oXsf2pqZGYmV9ipFlrpRoMIYLhWimXwEzGhaWKKyVniVfhtkf3gqLWRMFe+/g9LZQaR
         Nv3IReZxEu+urBQWqdk7K3M1HfVNY1ajtMxRaKP1xmbkXrjNRXPGOr3INzRJafIc9X66
         riwWKW0Wp/FtZ2wXNP+oDv9SVeGvp/zS0fQ0uQGGV2PUZA+ixHnKg6KJlmnwKasdI/2t
         mQ0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gZSbhCAlyWioaTCw+5q4ZcEf+CHq9VHSLSMkTKACep4=;
        b=HCIH1IdK3DtCiSl7ai+0ylXqNbkqZxqFFQtKS2EKsUUja799wqDzfM6PUiftEy1dgI
         rGewT8RfiAIr7+uFDZl+zM6f9X3BiSsrGPAvsWoTOrA+HLkZvScY7EAO/9GN76wJcCbB
         hTDvzZraz7SyLIBidLa/9CrfzECjKs3rg1hLEhgnomPo+MTdrITLvWTkS+ZJLVpPJEGe
         klCiElraMmvDJDJdnuo8nd7PyNaJ7+897PA0Q3eGHsLFNty7ontSdYEfhxvXSmA3y21a
         U+T/3031ktKA+AN/ZLjD+v52eyz9p1ElX3GOaFE3WEuSW1ZjQWBoP9/Vuc8z3/0ol2N/
         llmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623 header.b=GaODn0Oo;
       spf=neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) smtp.mailfrom=andrew@donnellan.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZSbhCAlyWioaTCw+5q4ZcEf+CHq9VHSLSMkTKACep4=;
        b=dM8ZYhyoCmuAFmpfrEbtwP2fCfPcEY1+0dFDGSMXaXlpNeFVKUVcmBi4p18oSzCDg6
         e/DDlC4Fi1c3M9typ1qRi8UmS5yKnNvDIoPu1TpQitTn9rFiiulE/hEzblq4BAxwEY1w
         /F1fa8S5U/hrRIQDArqBho9AjcmQON9OFSQG7Wwi7OAfzsW6puaBkHTHIcUdqRs5eufv
         rFwLkHGMs2ErGUzhKsfsVISOCpOsUX7NsOkNKEnrlLIE18YEZb8EHtTdrjnDY+xzt4wD
         ekYCBvCdALjqb4bK65jz5Sw2vkeWpfP1UniwxR11y2wKwgjW/HfagiGjoqTDHiwuRs/J
         fFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZSbhCAlyWioaTCw+5q4ZcEf+CHq9VHSLSMkTKACep4=;
        b=JgU2ZwY/KWLiq51GlIkd+I1M2X87BPq7VhJGaxAfAmrbMncQtx8OI3rLnTRf4a2kha
         twM+R+HzaMZr1gIlKP5pxF3UW+ZU6BCOEWbKlaGcnIjGqJnJD7ZQHw+v/cWG42kAbNw8
         l3/AjuI8+MXNRvNgiSVeZgXeg3xMN6BQjR+43k/nfPJFpFehaO3cIycnJ4bSJZMWbGH0
         h4uCz2XPwuiznE95YUCaVCEVfsbFeVfbmRtr+Lr7C/8di0QigqQLCtGlWAuyrpg9oVeh
         Tqi77ShUW+VsHO7cvmkgbB2aidKmA6amAxzX1XXNZEOpkgB4VWeTffqVp/KTw+ahwIFy
         JjTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AzciQAXwuyO/vNWPHULy9ztQ99ZReO19am19es2GQZFFHCGKZ
	u1w46j+GFa0Z36EBtQsQnwk=
X-Google-Smtp-Source: ABdhPJxWfDNLG3Phs67MJtpERGR45EDaL8u+OZ9bpf0XfbwdorEXYf74fDvzYV7YJrpLqAIx0u6RmQ==
X-Received: by 2002:a25:ca85:: with SMTP id a127mr40052795ybg.432.1608782620729;
        Wed, 23 Dec 2020 20:03:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls23565033yba.10.gmail; Wed, 23
 Dec 2020 20:03:40 -0800 (PST)
X-Received: by 2002:a25:b883:: with SMTP id w3mr41904681ybj.457.1608782620321;
        Wed, 23 Dec 2020 20:03:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608782620; cv=none;
        d=google.com; s=arc-20160816;
        b=NRvmn+/jK0U4/DD3sw2vEbTxWYRThc3NSsqFPwwxOyYzOAeLF63coHaz0ukllblH3W
         rxF38uxQ9HeybaiYmEWpEBArYoJkiE6YONd1+B0PW/HFTRD8neEmDRMoi4Liua2Xpn8k
         UCggmKEPaqzbnwbdWYPTpRpXQg+NR8mEX/rRA5kCwAKVMEboU636C80pvuyIC94XbIz2
         Gmie3+bDYiUiW0IXRrkZJqJcfez/YVKkpHwu33DOJhAUQs0mgA5HDjRt95ATTEJPR032
         Xr+wviKbLPz7auYJL5+KLVV4S7faleW/eqy6SziwaU2es/cWMioDvrNiunB6t42Ah0pV
         griw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PeNacHq4ODS9iGD6CURcgkgPo78exOEHvBazFrqn9Yk=;
        b=DPg8BMJh1yWdTQTXSlhaFMRkpndIJjfv3C6K+06z6+MAOMrSsL20XL/UgP7sFMR2KA
         BXvjOqX3JwZ+Y66eaNkGl/zT5iHzhBX9g3C397MbhL3qWe67xd8Eu+ru5wGt5K7xoW3e
         gbzwF2poy0xGbJqwf+81wcHisjR02Nej7Eh97LxOzfgraOrKY6GdVuXK4mqluMsiQpOL
         UU4upiW5E7XfDIc1Lt0NJ3j8sxxZoLRBc5zS62QLhZeVh2T3wu1ru95lsgDLewJYewfY
         M+5xzuOtQPmIrWtxb8udf8BCC0witAhRztDtPfzWmYyAzBmthJNA5pWGro5CMEEJjpPZ
         thig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623 header.b=GaODn0Oo;
       spf=neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) smtp.mailfrom=andrew@donnellan.id.au
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id e10si2356039ybp.4.2020.12.23.20.03.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 20:03:40 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id 11so906284oty.9
        for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 20:03:40 -0800 (PST)
X-Received: by 2002:a05:6830:1308:: with SMTP id p8mr21037979otq.330.1608782619730;
 Wed, 23 Dec 2020 20:03:39 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ+1PENrn1fSaUCLSSA@mail.gmail.com>
In-Reply-To: <CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ+1PENrn1fSaUCLSSA@mail.gmail.com>
From: Andrew Donnellan <andrew@donnellan.id.au>
Date: Thu, 24 Dec 2020 15:03:27 +1100
Message-ID: <CALn+=JrshHxPBdJbiBcwmMBGKr4v9G4_K+f1ccyz6UcWSK6MsQ@mail.gmail.com>
Subject: Re: LinuxConfAU Kernel MiniConf - LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000091f91c05b72de433"
X-Original-Sender: andrew@donnellan.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623
 header.b=GaODn0Oo;       spf=neutral (google.com: 2607:f8b0:4864:20::32a is
 neither permitted nor denied by best guess record for domain of
 andrew@donnellan.id.au) smtp.mailfrom=andrew@donnellan.id.au
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

--00000000000091f91c05b72de433
Content-Type: text/plain; charset="UTF-8"

On Thu, 24 Dec 2020, 06:55 Nick Desaulniers, <ndesaulniers@google.com>
wrote:

> Hi Andrew,
> I saw from https://linux.conf.au/schedule/presentation/4/ that you're
> running the kernel mini conf.  I'm the kernel maintainer for LLVM
> support, and was wondering if it's too late to submit a talk proposal
> for your miniconf?  Joel Stanley gave a talk last year
> (https://www.youtube.com/watch?v=6d6NGrSHyRE), and I'd like to provide
> a similar "status update/how to get started/hackers wanted" style
> talk.
>
> From https://linux.conf.au/programme/proposals/ it looks like I missed
> the CFP, but was still curious whether the miniconfs still had
> room/flexibility.  If not, I'd love to fly out for my first
> LinuxConfAU some time, maybe 2022.
>


Not at all too late - I'm actually trying to reopen the CFP right now, just
waiting on the organising committee to update the site and reopen
submissions. Perhaps email me your proposal?


Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALn%2B%3DJrshHxPBdJbiBcwmMBGKr4v9G4_K%2Bf1ccyz6UcWSK6MsQ%40mail.gmail.com.

--00000000000091f91c05b72de433
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, 24 Dec 2020, 06:55 Nick Desaulniers, &lt;<a href=3D"ma=
ilto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">Hi Andrew,<br>
I saw from <a href=3D"https://linux.conf.au/schedule/presentation/4/" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://linux.conf.au/schedule=
/presentation/4/</a> that you&#39;re<br>
running the kernel mini conf.=C2=A0 I&#39;m the kernel maintainer for LLVM<=
br>
support, and was wondering if it&#39;s too late to submit a talk proposal<b=
r>
for your miniconf?=C2=A0 Joel Stanley gave a talk last year<br>
(<a href=3D"https://www.youtube.com/watch?v=3D6d6NGrSHyRE" rel=3D"noreferre=
r noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3D6d6NGrSHy=
RE</a>), and I&#39;d like to provide<br>
a similar &quot;status update/how to get started/hackers wanted&quot; style=
<br>
talk.<br>
<br>
From <a href=3D"https://linux.conf.au/programme/proposals/" rel=3D"noreferr=
er noreferrer" target=3D"_blank">https://linux.conf.au/programme/proposals/=
</a> it looks like I missed<br>
the CFP, but was still curious whether the miniconfs still had<br>
room/flexibility.=C2=A0 If not, I&#39;d love to fly out for my first<br>
LinuxConfAU some time, maybe 2022.<br></blockquote></div></div><div dir=3D"=
auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Not at all to=
o late - I&#39;m actually trying to reopen the CFP right now, just waiting =
on the organising committee to update the site and reopen submissions. Perh=
aps email me your proposal?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Andrew</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CALn%2B%3DJrshHxPBdJbiBcwmMBGKr4v9G4_K%2Bf1ccy=
z6UcWSK6MsQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CALn%2B%3DJrshHxPBdJbiBcwmMBG=
Kr4v9G4_K%2Bf1ccyz6UcWSK6MsQ%40mail.gmail.com</a>.<br />

--00000000000091f91c05b72de433--
