Return-Path: <clang-built-linux+bncBCHKDT7IXMKBBVOLWH6QKGQEVKY727Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5636F2AFB5D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 23:29:42 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id t8sf1595207oor.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 14:29:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605133781; cv=pass;
        d=google.com; s=arc-20160816;
        b=UFvHuOzZUGmVW9VOswEo4l5c9IeE113t3e0EnJjNkEIBCN2/EOOWBo1xrBLFPhfKHq
         1k12zXytxs9s9ChpkRd3x1pfml6jMWd3GyBYDIYya8rTU2aI6D8lZ4Z/+LoE2Y08Okph
         khTlWT0H2InzZtGrufitiRpRz7wi5XHun48Rr0tcqY3MU9A5QSkVUEOlg+oIAfG5WRWO
         oiVMppPpClEqno+uZM3oUWINyHfvlxFcp8VSlDY/clwf6STayRJzMONxIZGrpwpNESm2
         FwdfgPSKDm47iH03g3dLj69RTYXh+2ixVsQ+/Ih70uIp9E9va/S6KyDhXTmAELeDX0J9
         lmsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=txXxMIYFg9+6ToMRymW0iHTVUrpuiNdYL0veB3KNO/A=;
        b=BazpL00UvKPzf34JfwEsrtNkZfwxxccWIa2hLpNT6tQjbELIFupcgPkB0MLUkFIzDs
         uKFcIQ8CBE6Edd8YNhV4J3zex85wq9ggqWkpFyh4F9lB4yNUn2vYbGtyMPOYRAwYwRMN
         LwkEFn+vwP2MOAYqck+ApLGatjiwjkNJmkqFrkgpfVqD4dlK62/+Xnd/y3oKcXpUjZw+
         eqXpHOlcHDHgf2HZNOxxS5vAmf3LeDePagu8KpYGPggVDTnj7KXIlixE6R7uRNnDbiT+
         ULy5BocObT00gqsnjIA03+UIPnTdBVRjVB82+aZYvaBh9M1cvSysvMFFiPhlHS+CgfSL
         cFnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GKkXuP/T";
       spf=pass (google.com: domain of itaru.kitayama@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=itaru.kitayama@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txXxMIYFg9+6ToMRymW0iHTVUrpuiNdYL0veB3KNO/A=;
        b=UPnoAUwvwmuWwzpznPp6Fs706xVTAE7Z5VWB6T5f7fdjyZQdR9Qj7RkrZvySCdLETF
         8TXxNvotodIOjQeOaaeO5MCTsbIvVQw8ZNbjIORqIJf0Wfrv7QnndVaHFDedpfCETEtR
         k/5t7xN+AyETCyjLpHDPCoyIHT08aZSKZF00DZcQqo5ljhMMCZPFUstZOWZWTX1VLm65
         Pux15aWwoEVJtuysCYAYOzs6cwHxoHcjbDDbd+km+WUXyIRzR5QhyAqJWKrcJkdXMwjk
         g+GYr1ndY5CumQ/lK2yMql/4pnHezToj8YlQOysBzY5LQq1R+ak/RYvitWLIdK7tYJi9
         tUtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txXxMIYFg9+6ToMRymW0iHTVUrpuiNdYL0veB3KNO/A=;
        b=SyZoawyEIqbN1pxvNccjK8HwpIUmzPrV4kt7LBs6Syhd2aj1YK+3NZ2TxULyRLUAwr
         noKMMDhw/otU4VCM3JFrp5PbMk7XJzRx94gg3OtRtK9WxbEMf3LFZUkqzrK2xNyFe4xB
         8dEDkS9q1POz0OKaUk6sV5/ejHpA4T20utX4ooLBpX30kYAa311TdVSjKyeUghDhSwax
         9m1CJfOcQE2uCW6QqwMC3OcTXkmoKbc58pqiC1z5a6YZm57pn4vTVYskDIg1uTz0R6jn
         vQXKFTLK0ylyT84LlPGumctm/idw0lmxLQKsLEo7Z1TSyJsJOzEeE7Z0wW+YqKWATTp8
         NSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txXxMIYFg9+6ToMRymW0iHTVUrpuiNdYL0veB3KNO/A=;
        b=V6PW31UDE5nYJQ0s3a8qKw1XxeGpF4tYst0hqJXlx4PEiDOWWN7KRjclmWn7gYt0ii
         g9rD2N4qemINFveMaCcav4C73uxIkoI6ItoJo+sHcI2QcFFseapSraqjl6Lg19/kgCh4
         ul7SToOmTVVin6lEMm/AJQDj3fLjOLYroPUqdcXHwxSL+4EcqbCeIlyVJCvBQpH9T02l
         Bt9MZnD89CL6qtuyXThaX+uAjLw5y6xFwgvGDkuKQANBGGZLBzJ96hLE8R+UqhYz4+gv
         666Cjonm9qTGJ7j9gVyF4WNjl4zd8xZmNOWx7seZQxXf0oPwlgGehozzD/jGE7tPQ2Dp
         J1dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WGky1VX07B4Tw5H48nUVhtMtFZ3hOPdxasuv1MGcXR2BUN7FU
	kOQ/b3aE7plqimlS0XuqxK8=
X-Google-Smtp-Source: ABdhPJyB8UFQ3s1h8xiLc66se/KAxiM5Rv0xR8z2byZEBKOtC29JGxxavGdYjnzhDAX0js4IcVm6xw==
X-Received: by 2002:a05:6830:441:: with SMTP id d1mr9438628otc.337.1605133781131;
        Wed, 11 Nov 2020 14:29:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d658:: with SMTP id y24ls49469oos.7.gmail; Wed, 11 Nov
 2020 14:29:40 -0800 (PST)
X-Received: by 2002:a4a:d2dc:: with SMTP id j28mr13032337oos.35.1605133780788;
        Wed, 11 Nov 2020 14:29:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605133780; cv=none;
        d=google.com; s=arc-20160816;
        b=xw99TUWajy4dGz9kFTRhLGlR8P5cCuvTeBCuD6n6SVrYpITPggzIvPUWZ49pdoHdcU
         JwChrrn4an2MDViijy52xllsoOK5mUVQleBZ8PyGt/DhPwKN7TlBkkMvkBHYkAX5l+vT
         NDGFX6a+19zicvqGYmMn5asXKcOLmJPODYOMihPUk/K5HIf6OJQhM+wUiw0f8upHom8h
         EKdIxd5wCLokjrxTuiN6Cq9vG7GjkWHLZ0+MXjgsfi2QcEWN7G2DMh8e9EE4DXK5L8uO
         kpQA/eojLMvFGFAEkZRGfEvFenwKD5gsG65DZVQslSylbQlyy5Vr4IoYk49sYHRKlYOO
         xTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=UDquKc2qY8nYPwCMJCQRZgLk0RD955mdvxlRkA0qAg4=;
        b=zrxllZlceWko3MRVex9stZM562V+oK9XuvX9ASZoJTWT8/S/p6u01XAxq4NuPXZgf1
         C9EC9vZBDL+63dhZFMdsDw2v1RRj39rWjb2MsKPUyVpXR0QZ2rF23NybQS0QT9jGuejT
         Y6v6Sm5CAKyM0uEIMe93C3EAinJhBo708DxByBm+fxpCl1Nnzv7g1w8bdHc+0YGS/iD2
         Qp9Uo4p1KHL0BeC6aCe6zmCsENXNE4EhIi52SO0hLPQF+zSirnWNEZoxJAGZekh6/gSi
         jatYYhQ2BLrzFs7/DeiJ3QemquDwZzSZssRztaW75eceBLEGLi3ODtRIskTSn5N0LtJJ
         aqlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GKkXuP/T";
       spf=pass (google.com: domain of itaru.kitayama@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=itaru.kitayama@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id i23si235156oto.5.2020.11.11.14.29.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 14:29:40 -0800 (PST)
Received-SPF: pass (google.com: domain of itaru.kitayama@gmail.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id w14so2616190pfd.7
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 14:29:40 -0800 (PST)
X-Received: by 2002:a63:da57:: with SMTP id l23mr22766518pgj.390.1605133780074;
 Wed, 11 Nov 2020 14:29:40 -0800 (PST)
MIME-Version: 1.0
References: <abbda77f-633f-4564-93ee-ba33fee8ee47n@googlegroups.com>
 <4a546ec1-cc54-dc06-165e-ca3d495940ac@redhat.com> <CANW9uyt1f3ugUnuDUgALgVsk-+MAfns-C=JwMTyPcHS6bjJ_CQ@mail.gmail.com>
 <566666a1-7417-d27b-16f4-c4710abe5621@redhat.com> <CANW9uysSWEs74sfXhPZ0TMdrd5jQ1y7egcYSnz+gWmDYE=Z6JQ@mail.gmail.com>
 <47b09d1b-2e54-efc3-9604-c5ab8cbd9c36@redhat.com>
In-Reply-To: <47b09d1b-2e54-efc3-9604-c5ab8cbd9c36@redhat.com>
From: Itaru Kitayama <itaru.kitayama@gmail.com>
Date: Thu, 12 Nov 2020 07:29:29 +0900
Message-ID: <CANW9uyuuSnozuU-ZzD2Y_PPs3ZQ2n+FNA962dR94Zh3Qysp-mQ@mail.gmail.com>
Subject: Re: userspace
To: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, tstellar@redhat.com
Content-Type: multipart/alternative; boundary="000000000000c7455605b3dc54c2"
X-Original-Sender: itaru.kitayama@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GKkXuP/T";       spf=pass
 (google.com: domain of itaru.kitayama@gmail.com designates
 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=itaru.kitayama@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c7455605b3dc54c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tom,

Thanks! I think we=E2=80=99d want then rebuild all the rawhide packages wit=
h trunk
Clang; that way
you and Nick can come up with a fox easliy.



On Thu, Nov 12, 2020 at 7:02 Tom Stellard <tstellar@redhat.com> wrote:

> On 11/11/20 4:59 PM, Itaru Kitayama wrote:
> > SRPMs please?
> >
>
> Rebuilding the SRPMs is going to be difficult, because in a lot of cases
> there is no way to override the default compiler of gcc.  I am working
> on improving this in Fedora with changes like this[1] that make it
> easier to override the compiler choice.
>
> -Tom
>
> [1] https://fedoraproject.org/wiki/Changes/UseMakeBuildInstallMacro
>
> > On Thu, Nov 12, 2020 at 5:35 Tom Stellard <tstellar@redhat.com
> > <mailto:tstellar@redhat.com>> wrote:
> >
> >     On 11/11/20 2:58 AM, Itaru Kitayama wrote:
> >      > I'd like to see if RHEL 8.2 packages all can be built with Trunk
> >     Clang.
> >      >
> >
> >     Do you want to rebuild the SRPMs or just the upstream projects?
> >
> >     -Tom
> >
> >      > On Wed, Nov 11, 2020 at 4:33 PM Tom Stellard <tstellar@redhat.co=
m
> >     <mailto:tstellar@redhat.com>> wrote:
> >      >>
> >      >> On 11/10/20 11:13 PM, Itaru Kitayama wrote:
> >      >>> Can someone tell me the selection criteria?
> >      >>>
> >      >>
> >      >> I was thinking of limiting it to projects that are packaged for
> >     distros,
> >      >> but that's pretty broad criteria.  Any other suggestions?
> >      >>
> >      >> -Tom
> >      >>
> >      >>> --
> >      >>> You received this message because you are subscribed to the
> Google
> >      >>> Groups "Clang Built Linux" group.
> >      >>> To unsubscribe from this group and stop receiving emails from
> >     it, send
> >      >>> an email to clang-built-linux+unsubscribe@googlegroups.com
> >     <mailto:clang-built-linux%2Bunsubscribe@googlegroups.com>
> >      >>> <mailto:clang-built-linux+unsubscribe@googlegroups.com
> >     <mailto:clang-built-linux%2Bunsubscribe@googlegroups.com>>.
> >      >>> To view this discussion on the web visit
> >      >>>
> >
> https://groups.google.com/d/msgid/clang-built-linux/abbda77f-633f-4564-93=
ee-ba33fee8ee47n%40googlegroups.com
> >      >>>
> >     <
> https://groups.google.com/d/msgid/clang-built-linux/abbda77f-633f-4564-93=
ee-ba33fee8ee47n%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter
> >.
> >      >>
> >      >
> >
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANW9uyuuSnozuU-ZzD2Y_PPs3ZQ2n%2BFNA962dR94Zh3Qysp-mQ%40m=
ail.gmail.com.

--000000000000c7455605b3dc54c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Tom,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Thanks! I think we=E2=80=99d want then rebuild all the rawhide packages w=
ith trunk Clang; that way</div><div dir=3D"auto">you and Nick can come up w=
ith a fox easliy.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></=
div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Nov 12, 2020 at 7:02 Tom Stellard &lt;<a href=3D"mailto:tstellar=
@redhat.com">tstellar@redhat.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On 11/11/20 4:59 PM, Itaru Kitayama wrote:<br>
&gt; SRPMs please?<br>
&gt; <br>
<br>
Rebuilding the SRPMs is going to be difficult, because in a lot of cases <b=
r>
there is no way to override the default compiler of gcc.=C2=A0 I am working=
<br>
on improving this in Fedora with changes like this[1] that make it <br>
easier to override the compiler choice.<br>
<br>
-Tom<br>
<br>
[1] <a href=3D"https://fedoraproject.org/wiki/Changes/UseMakeBuildInstallMa=
cro" rel=3D"noreferrer" target=3D"_blank">https://fedoraproject.org/wiki/Ch=
anges/UseMakeBuildInstallMacro</a><br>
<br>
&gt; On Thu, Nov 12, 2020 at 5:35 Tom Stellard &lt;<a href=3D"mailto:tstell=
ar@redhat.com" target=3D"_blank">tstellar@redhat.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:tstellar@redhat.com" target=3D"_blank">ts=
tellar@redhat.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 11/11/20 2:58 AM, Itaru Kitayama wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I&#39;d like to see if RHEL 8.2 packages all =
can be built with Trunk<br>
&gt;=C2=A0 =C2=A0 =C2=A0Clang.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Do you want to rebuild the SRPMs or just the upstre=
am projects?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-Tom<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Wed, Nov 11, 2020 at 4:33 PM Tom Stellard =
&lt;<a href=3D"mailto:tstellar@redhat.com" target=3D"_blank">tstellar@redha=
t.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:tstellar@redhat.com" t=
arget=3D"_blank">tstellar@redhat.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; On 11/10/20 11:13 PM, Itaru Kitayama wrot=
e:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Can someone tell me the selection cri=
teria?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; I was thinking of limiting it to projects=
 that are packaged for<br>
&gt;=C2=A0 =C2=A0 =C2=A0distros,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; but that&#39;s pretty broad criteria.=C2=
=A0 Any other suggestions?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; -Tom<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; You received this message because you=
 are subscribed to the Google<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; Groups &quot;Clang Built Linux&quot; =
group.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; To unsubscribe from this group and st=
op receiving emails from<br>
&gt;=C2=A0 =C2=A0 =C2=A0it, send<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; an email to <a href=3D"mailto:clang-b=
uilt-linux%2Bunsubscribe@googlegroups.com" target=3D"_blank">clang-built-li=
nux+unsubscribe@googlegroups.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:clang-built-linux%252B=
unsubscribe@googlegroups.com" target=3D"_blank">clang-built-linux%2Bunsubsc=
ribe@googlegroups.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:clang-bu=
ilt-linux%2Bunsubscribe@googlegroups.com" target=3D"_blank">clang-built-lin=
ux+unsubscribe@googlegroups.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:clang-built-linux%252B=
unsubscribe@googlegroups.com" target=3D"_blank">clang-built-linux%2Bunsubsc=
ribe@googlegroups.com</a>&gt;&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt; To view this discussion on the web vi=
sit<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://groups.google.com/d/msgid/clang-=
built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googlegroups.com" rel=
=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/clang-b=
uilt-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googlegroups.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://groups.google.com/d/msgid/cl=
ang-built-linux/abbda77f-633f-4564-93ee-ba33fee8ee47n%40googlegroups.com?ut=
m_medium=3Demail&amp;utm_source=3Dfooter" rel=3D"noreferrer" target=3D"_bla=
nk">https://groups.google.com/d/msgid/clang-built-linux/abbda77f-633f-4564-=
93ee-ba33fee8ee47n%40googlegroups.com?utm_medium=3Demail&amp;utm_source=3Df=
ooter</a>&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CANW9uyuuSnozuU-ZzD2Y_PPs3ZQ2n%2BFNA962dR94Zh3=
Qysp-mQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CANW9uyuuSnozuU-ZzD2Y_PPs3ZQ2n%2B=
FNA962dR94Zh3Qysp-mQ%40mail.gmail.com</a>.<br />

--000000000000c7455605b3dc54c2--
