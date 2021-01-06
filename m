Return-Path: <clang-built-linux+bncBD7MNX4IXUFRBFFB2X7QKGQEUB4YO4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BCA2EB9AB
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 06:54:29 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id 33sf1139137pgv.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 21:54:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609912468; cv=pass;
        d=google.com; s=arc-20160816;
        b=ckg6nD5hV0GoTP82MYw7z44ji7VAVoDvGD3cBkj95q4qpyE0Es2I0p7wgJ56JYhjrp
         2AYATlLKApTvXLhxISxgT1ueoPhCzgJm/kSB/f68aT0Ruj9qiugqGm4bAfQbq55uFeIF
         QDjxgwJlY6RABluCWpebIGCyZkkuyz1xhaWE5nMIHVBpHcIyCqvcPkgs5fk/QjjR2/re
         xgOnEra3HRqoOpLGoGI+WJX6crsb850kCGL+RtoQhKnxJwe3qt4yUgtaNUs9xCO2YQ91
         ivxzpuRlF6LJEpG2CvSOzkPo9WftjxRbzG00DbXK1mhui618EOovFsK6qS4GMoYnq04o
         TuEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QoGNHJJPnP8ran8/TbXI6t77MwLwrAvi9ULxS5PfBOE=;
        b=Mo1v9tPWKT4M9k5OAGtSc/Ng6kvh2k4vWp8eIX3/2SrwnDhsmsLUbWciV3TTladpwh
         WMEdSQW8ac4/ak/T2n1nvY6viwud5kq0Ry40a9sCeGRN7yMIGRHfo74UlKJFuV5SbXx4
         b8m1tYRbGe+0k+zscoJi3djYjYbuPuKOjxCF/Z5CRDOr70FLZm124Pg4TI6zxMIzBBjl
         tPmkWATXOToytm9/nV5HU0irn+5Wj8W7FijSbGOgrVHL0lz3WbgLavjHQfLFus7AnHzI
         1oOxW9kg9hftoGxFZt60sSC3zHEs+YCYvzh4b/Wq5X9BjtQX2KmnOEFqTTKH5v6bXH2s
         qRdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623 header.b=DJw9E7YJ;
       spf=neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) smtp.mailfrom=andrew@donnellan.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoGNHJJPnP8ran8/TbXI6t77MwLwrAvi9ULxS5PfBOE=;
        b=gLS4Fu53Lu1t4YjU1EqiMbGVIoz3J82nffvinC3yb/OSfYhoXRTCaDCzpKftSnh4YH
         CrbvhRT3TPScaJanGkcj6At593HK+0A4Gpvnkhr5kvXrgb12GeJkLf8DqDDjanyWOTi6
         iJYOoJrNb2dfS/IXD5q0vJ9UP+CBzVwAS3Yw43IVnZjBDK6Gv69LMYxgqpfKYdzCFqPV
         wXppG9rKRHrtfmCH52Xbzg+VJfaI7IpTkfdVdztBtR8xNMcI73Kc6nMkPqPEHcDTmYEj
         PtV11Wn7Yg8Y4ZM78SPkkqCMDC/3CAybeobdLpMH4Sjt4dLVDQr5DnzInTz/EBsFlOgB
         BJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoGNHJJPnP8ran8/TbXI6t77MwLwrAvi9ULxS5PfBOE=;
        b=VzvnmeLlo4VEOYIrNkNA2ZzDVgayiYjHkT/JcKE2U2FDTeJZeTdCRMuZYSBycsO/Du
         QNFnyotTpGHHas76lcJzY3CjWiP4YFHVhfoMeyx11Uh6wYei51TEWp3LmFhvHcbXo8Um
         9NfAWC1BQq/uaj6wFPrzT0gvxw45ibueD9lrzz+S2LLmu70/ccthhRjinVzVFttGqbXL
         ojSmRMBXPIvVZXiXadrtjssYgSsbLZDYM4A8mc2rWVZNuxBhbWT6+HpUogXxatbjB4YZ
         fwmYXDt3/ZTK+DBpGY9lJGJ/DkW00/f1fzurc5GsbM7LWospnb9gWEIxht7lUYAJdD9w
         x6vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530I93Cw5g9m0m7Z0BRFLqen2BFo4JlSkZJBtJMZFPEduCtSlv8v
	mDmFh5TYrpV5FSmM2J4bm28=
X-Google-Smtp-Source: ABdhPJz4vvNtzZqXpzt+jdqKlRC7aPhQ6/ElhjUBFou3BtMzdZhwYxFyoHZ9D1Eg0bvlR3QNAEwCtA==
X-Received: by 2002:a17:902:6a87:b029:da:e253:dd6a with SMTP id n7-20020a1709026a87b02900dae253dd6amr2869171plk.81.1609912468341;
        Tue, 05 Jan 2021 21:54:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls991870ply.1.gmail; Tue, 05
 Jan 2021 21:54:27 -0800 (PST)
X-Received: by 2002:a17:90b:e0d:: with SMTP id ge13mr2620440pjb.111.1609912467610;
        Tue, 05 Jan 2021 21:54:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609912467; cv=none;
        d=google.com; s=arc-20160816;
        b=JUJ6rXtzAI4SmLpmN4HpqSn8Reh4obdSg6StosvwIO1kIXPYeFZXliVMS5PLxOslh3
         PpeHfn9+ULrVDa1Ek5EXZW46fAMHSMNJTqWG6iXDrDEEmgpI2eS4xnrEumZT+YNDZdtr
         2eshOCdWaWXZ+BbvVTX4cy6fwslLAcCaxePpHqdBa1Q4FIHeq/MrwmoJMsor/X7cQzEO
         Sr234MKXV4dGCDDz5XuhuW0Kp7wNT4YiBurLuYPOMIzJW9AyqUXhCoBCh8DpmdzKnokK
         LKVD89Jw7PEoahuna4L6wwsl9ATBQVwj1qwaazMOB6CRAIbxJ4NzJTaEkfMLlDzxPe4S
         2Rww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jqu9uqoY3w4KfdABbGwJGyPvvIg/m2vLmhOKMDuPm5k=;
        b=EmcSYPmmDkjy9e+zbDmN6zFGGrns2ESSb0ibVpVcs6Q9dcPZuZYHqxnJb34ZF+GAqy
         /v1z6q6RSC4bXl7Uy1AQZs7gRSNFBxx0e+5IuDe4P24hkW31sQY+MGRQobAUDpOIZ+hM
         o59RiVN4qRzgoMZPHrUCluAjKHXzUM7m1jZamhGRq209k0ejcAy2OxxJF99b99q3q/x5
         lPw+uZx42vzOA+6eedVrFrVXd7uTLW4gYkuHQDIFHIcqtI0YiCgxY2Ct+bgxOglDvSbN
         yxCdzPIz9diCUQL+ZRszmfR741F5f1A0Y2bB/vrFE04o5F/Zu6b0uuJ288QVsKdf02pE
         0cIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623 header.b=DJw9E7YJ;
       spf=neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) smtp.mailfrom=andrew@donnellan.id.au
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id j22si128382pgn.5.2021.01.05.21.54.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 21:54:27 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::32a is neither permitted nor denied by best guess record for domain of andrew@donnellan.id.au) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id d8so2068261otq.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 21:54:27 -0800 (PST)
X-Received: by 2002:a05:6830:1610:: with SMTP id g16mr2145822otr.345.1609912466621;
 Tue, 05 Jan 2021 21:54:26 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ+1PENrn1fSaUCLSSA@mail.gmail.com>
 <CALn+=JrshHxPBdJbiBcwmMBGKr4v9G4_K+f1ccyz6UcWSK6MsQ@mail.gmail.com> <CAKwvOdmfK_tVb9wEwYBrirJktF64Wqe8ZH6qNGSh6Y5bF_=4dg@mail.gmail.com>
In-Reply-To: <CAKwvOdmfK_tVb9wEwYBrirJktF64Wqe8ZH6qNGSh6Y5bF_=4dg@mail.gmail.com>
From: Andrew Donnellan <andrew@donnellan.id.au>
Date: Wed, 6 Jan 2021 16:54:15 +1100
Message-ID: <CALn+=JowWQ=P_oqsTHjdv3yx3_2Yd2MFzDUSRHuHG0when+PDA@mail.gmail.com>
Subject: Re: LinuxConfAU Kernel MiniConf - LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000b15c9905b834f4f3"
X-Original-Sender: andrew@donnellan.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@donnellan-id-au.20150623.gappssmtp.com header.s=20150623
 header.b=DJw9E7YJ;       spf=neutral (google.com: 2607:f8b0:4864:20::32a is
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

--000000000000b15c9905b834f4f3
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Jan 2021, 09:17 Nick Desaulniers, <ndesaulniers@google.com> wrote:

> On Wed, Dec 23, 2020 at 8:03 PM Andrew Donnellan <andrew@donnellan.id.au>
> wrote:
> >
> > On Thu, 24 Dec 2020, 06:55 Nick Desaulniers, <ndesaulniers@google.com>
> wrote:
> >>
> >> Hi Andrew,
> >> I saw from https://linux.conf.au/schedule/presentation/4/ that you're
> >> running the kernel mini conf.  I'm the kernel maintainer for LLVM
> >> support, and was wondering if it's too late to submit a talk proposal
> >> for your miniconf?  Joel Stanley gave a talk last year
> >> (https://www.youtube.com/watch?v=6d6NGrSHyRE), and I'd like to provide
> >> a similar "status update/how to get started/hackers wanted" style
> >> talk.
> >>
> >> From https://linux.conf.au/programme/proposals/ it looks like I missed
> >> the CFP, but was still curious whether the miniconfs still had
> >> room/flexibility.  If not, I'd love to fly out for my first
> >> LinuxConfAU some time, maybe 2022.
> >
> >
> >
> > Not at all too late - I'm actually trying to reopen the CFP right now,
> just waiting on the organising committee to update the site and reopen
> submissions. Perhaps email me your proposal?
>
> https://linux.conf.au/proposals/179/
> ```
> "ClangBuiltLinux: What's Next?"
>
> 2020 saw further adoption of LLVM for building Linux kernels by Linux
> distros, kernel developers, and CI systems. But what tradeoffs exist,
> and what should be the focus of 2021? Come join us for a quick
> retrospective of 2020, help us review outstanding work to be done, and
> learn how to get involved and participate in kernel AND toolchain
> development.
> ```
>
> Sorry for the late response, totally unplugged for a much needed
> reboot over the holidays.
>

Thanks I'll contact you with further info shortly.


Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALn%2B%3DJowWQ%3DP_oqsTHjdv3yx3_2Yd2MFzDUSRHuHG0when%2BPDA%40mail.gmail.com.

--000000000000b15c9905b834f4f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 6 Jan 2021, 09:17 N=
ick Desaulniers, &lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_=
blank">ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On Wed, Dec 23, 2020 at 8:03 PM Andrew Donnel=
lan &lt;<a href=3D"mailto:andrew@donnellan.id.au" rel=3D"noreferrer" target=
=3D"_blank">andrew@donnellan.id.au</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, 24 Dec 2020, 06:55 Nick Desaulniers, &lt;<a href=3D"mailto:nde=
saulniers@google.com" rel=3D"noreferrer" target=3D"_blank">ndesaulniers@goo=
gle.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Andrew,<br>
&gt;&gt; I saw from <a href=3D"https://linux.conf.au/schedule/presentation/=
4/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://linux.conf.au/s=
chedule/presentation/4/</a> that you&#39;re<br>
&gt;&gt; running the kernel mini conf.=C2=A0 I&#39;m the kernel maintainer =
for LLVM<br>
&gt;&gt; support, and was wondering if it&#39;s too late to submit a talk p=
roposal<br>
&gt;&gt; for your miniconf?=C2=A0 Joel Stanley gave a talk last year<br>
&gt;&gt; (<a href=3D"https://www.youtube.com/watch?v=3D6d6NGrSHyRE" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3D=
6d6NGrSHyRE</a>), and I&#39;d like to provide<br>
&gt;&gt; a similar &quot;status update/how to get started/hackers wanted&qu=
ot; style<br>
&gt;&gt; talk.<br>
&gt;&gt;<br>
&gt;&gt; From <a href=3D"https://linux.conf.au/programme/proposals/" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://linux.conf.au/programme/p=
roposals/</a> it looks like I missed<br>
&gt;&gt; the CFP, but was still curious whether the miniconfs still had<br>
&gt;&gt; room/flexibility.=C2=A0 If not, I&#39;d love to fly out for my fir=
st<br>
&gt;&gt; LinuxConfAU some time, maybe 2022.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Not at all too late - I&#39;m actually trying to reopen the CFP right =
now, just waiting on the organising committee to update the site and reopen=
 submissions. Perhaps email me your proposal?<br>
<br>
<a href=3D"https://linux.conf.au/proposals/179/" rel=3D"noreferrer noreferr=
er" target=3D"_blank">https://linux.conf.au/proposals/179/</a><br>
```<br>
&quot;ClangBuiltLinux: What&#39;s Next?&quot;<br>
<br>
2020 saw further adoption of LLVM for building Linux kernels by Linux<br>
distros, kernel developers, and CI systems. But what tradeoffs exist,<br>
and what should be the focus of 2021? Come join us for a quick<br>
retrospective of 2020, help us review outstanding work to be done, and<br>
learn how to get involved and participate in kernel AND toolchain<br>
development.<br>
```<br>
<br>
Sorry for the late response, totally unplugged for a much needed<br>
reboot over the holidays.<br></blockquote><div><br></div>Thanks I&#39;ll co=
ntact you with further info shortly.<div><br></div><div><br></div><div>Andr=
ew=C2=A0<br></div></div></div>
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CALn%2B%3DJowWQ%3DP_oqsTHjdv3yx3_2Yd2MFzDUSRHu=
HG0when%2BPDA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CALn%2B%3DJowWQ%3DP_oqsTHjd=
v3yx3_2Yd2MFzDUSRHuHG0when%2BPDA%40mail.gmail.com</a>.<br />

--000000000000b15c9905b834f4f3--
