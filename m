Return-Path: <clang-built-linux+bncBDSMRTMFUIFRB6MWQXWAKGQENZYOBLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7ADB575C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 23:09:14 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id a13sf7553243ioh.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 14:09:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568754553; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ui6bJt5BVrrp3f2SpP8k1Sih7+ysi/xP3mWtnP7E0BDH2+X3JylHu1Wvztw1AeRkA9
         T3JlhjexZkdS9t+LLeLgEKTEdNBscvMHbVOtVO4jsI8xQgH38oNptwTbeoV1deJPqpH2
         gRkPGiCaPkf6B3Ni3MeC2tI6rO1mARqUfBFmOjqaAi0XQIW6J+OwngtqkH6yOJcOftuI
         XdIptABTdXgzRESx9xC/p7In8sWz9CtNR2g/TpiXruZzcaIhsbiuREOQoild7yGr0ToZ
         W5fpzjz/y1hBYS3ULT77+yhTCy/+Ok2nlnhx+VxKSS2uK8gyKxZWqVNRrKKuMn/9IcGS
         CsFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4Je1TS//iozytP4wUC9RDWF+xHyV7xKuodsZfCvVlOo=;
        b=kI2IV0j4rfv4K1AzgbPTV0mfNsf9ol6VE7N25Z4XM+YhoVDAKGYp/53sSCkHcURKrw
         A1PmnuV2ea4MMi5YI1V3ePzeNXm8wHph2rrxMwPmIA/Dgle69ZHTu8WHQv3v942RAHXn
         tVqF+ZRnXqdUy3BKVCp8dGjnZpnhZFTlnVwjdvPGy1RD19yK1OmdgipjwHwe03d2nhtd
         QfrCIiDWfV2vD8bBWoIbjRPtsviITx7rzSuXkX6gLkctEvuiAWc0cuFLoegRlivu7Ojb
         hfK8s9lzTSg/Fuzpk9OmASfazlBTp0pn/wsCBG7ZQWg+ubRTt9FHeNnpkT2z2POjwWUp
         syrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mdJRDVIT;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Je1TS//iozytP4wUC9RDWF+xHyV7xKuodsZfCvVlOo=;
        b=jClDA9spC+9gfFADwlAHiQ/46tw8elizK9xtjCxrJkkWkkM400MdUh4fJBQZu9rVuM
         iMFdbZBygH/nNc0MaT298A85bXhiqGs5bztlu7B2W0HLlxWl7/4zBcp9t9SQsKf8j6IQ
         WqLjrZZTVct2uBX5TdCM10Pf14HWhfbr/rnuZz3H6zOfLorYR8ev9Bb6UtcGR8gnR5SO
         sq7QH9rvf04jpWpFD67NTmlHsD3biswY0BQCd+drHZRpe5rJl8m2JoYo3RPFXCIzPP16
         72CZmT/2qciLmJscJwbnYhUMbGmuOiivfC1ka3aC0u+xkn4pqyL5hWpA0AmlaV8LWm63
         NLCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Je1TS//iozytP4wUC9RDWF+xHyV7xKuodsZfCvVlOo=;
        b=KDmfpZezp08+nPsWfZE6P9E3NKoG9iT/yZqUalW5e9EIL/NIYahem/o2MD2EpKwGWR
         tHYRkOD1Oei0HwLhQChutpd3Qkgir1I11H8VJh8RSrlLRmX+H3bWu7nNtI5D7/6+XbGh
         MtXsq2Q6a2/PNw5DVGl40VJ/Q+3wx+vs6gWTzqYyXvjZ0GmYSIqkGRQpbwrGFqRigxuu
         NDG/rs3YLxBDlmp8WsA9tNNEbjmZKZlgBCx492KwJqzd92u4V1tHEHQxxKXvGDBVtZgt
         +M9zaSKYQC/b82QV3SwAP0B0WfuSvLQrA4LlpyKM++9RfH9yl5Ga9cKi+cvz851t1lNZ
         /q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Je1TS//iozytP4wUC9RDWF+xHyV7xKuodsZfCvVlOo=;
        b=n1UNuUc2ftajPIu+xshVfj1YOdy1qLOF4xkGb15XEKS0IBfLGTNM6LkuKt2ZJvUX7r
         l3V0opw2XqGc2WOSrj+aGKjwyCet8ScyhpirUS9v9j2NcJwemYjKTNwgQc43RmwYX0PZ
         bB8roimWxSI9ad9LOpLRUdz8RJO0UnyxVKegskVv/sEWCylIhzNPehycNbtREDSejZis
         fOxykPr4d+9TfO4VzqJCgEAZAXz1KQiZC/32U+V+a148sQsIX4QBES+8MnBr1Vxkbh5s
         3FFQDfmVsDwAKp/P9VUD21MghMtvhSLzDA7xI8sWTVxxSMCMxyz2Mq4Gh56c8av5LzuN
         rOHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtdCB2B/SCUZQePVemxjCUn35uAVW/jAc2bbAm1fgzzgTJfadQ
	2c1peOaBexASLmu7dz+iamQ=
X-Google-Smtp-Source: APXvYqz9IQ4khFN3K5CddZmZlDG/i+V6dkERPyprloli8by8cU8uTdYSeTFoR0UyJaP+m2qOD0krJg==
X-Received: by 2002:a5d:8b12:: with SMTP id k18mr998606ion.93.1568754553522;
        Tue, 17 Sep 2019 14:09:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3115:: with SMTP id j21ls1260528ioa.0.gmail; Tue, 17 Sep
 2019 14:09:13 -0700 (PDT)
X-Received: by 2002:a6b:9109:: with SMTP id t9mr1091651iod.16.1568754553244;
        Tue, 17 Sep 2019 14:09:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568754553; cv=none;
        d=google.com; s=arc-20160816;
        b=M5qPal2b3YnB611XmuXunSjeFNGP/sutEOxkLpZPDji72oZB5kIqpMRpnoHOXlBOUd
         rUMqEVgkQZlItrEEdCJIf81gP1RmhssSUnrfC4WwgGWqR965eXpxQKIAEbHwRz93Pzn6
         1MMhEJ9xy8qyploR0XgVL+qZj/4rTnCdvqoKRlQJr8YhU6fv8aXSaK4doclh5uEnRBkO
         HX05PPbGUZV4ZRuVIUQKjn7pKU8Ere9UPEo0/WmD3KdqzMy40oYpD4yoPfKjbQPCyHbO
         r0Tn5XjM0LyhLvKvDeEkWjxzvg467GKTDbV6iNBiny5rXGyerND/PEg65EgKkzW3ZfV9
         W0nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QdU9BDYRKLYCRbAsHPJh2Gv4jbezARTTYcilC4RNwq0=;
        b=ewKUhKlwKWz6IAcYAqfV9ntlJPBmbRghdUyWrH+CosvEK1wjRJzAfoMk5NufghK1hY
         v6W3dSewxGB+bOM2jJNIJNY+aFw2bUQIZ8HBDA5tC7x5loPX1F2wgVYJm0AGUKLvmFjf
         gcLRsMSGXWkxCKHUWIwT7Wc+/hHe4f1TtXwME3npTm7UReh5po+24cAIHZtY/vQ40owU
         wQ9lh08LyaR0s/O6GgEOZ15ijLRjj7htqhtkcEYvdMe03sFrDf5vVcZwjoCiAl/aiz8N
         xuvVOCjPUrvFBMaeQ55FgxRGCzbwjbzkm+gcYD9BjoaM1bX6u9YWIkTk9/Pl+Vwbx4v3
         d7IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mdJRDVIT;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id n201si429768iod.3.2019.09.17.14.09.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 14:09:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 21so4355955otj.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 14:09:13 -0700 (PDT)
X-Received: by 2002:a9d:6f08:: with SMTP id n8mr766360otq.128.1568754552905;
 Tue, 17 Sep 2019 14:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190917073444.GA14505@archlinux-threadripper> <fc341ec3-65c7-ee49-eb03-9b069a8170b2@oracle.com>
In-Reply-To: <fc341ec3-65c7-ee49-eb03-9b069a8170b2@oracle.com>
From: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Date: Tue, 17 Sep 2019 23:09:01 +0200
Message-ID: <CAOrgDVOqKD3dedVKFXo+JwKAAWaX3f2c3yUyEpm=sRr5Pu2N8g@mail.gmail.com>
Subject: Re: -Wsizeof-array-div in mm/hugetlb.c
To: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Davidlohr Bueso <dave@stgolabs.net>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000dda51e0592c62109"
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mdJRDVIT;       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
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

--000000000000dda51e0592c62109
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can use extra parens.

size(arr) / (size(int))

ut 17. 9. 2019 o 23:06 Mike Kravetz <mike.kravetz@oracle.com> nap=C3=ADsal(=
a):

> On 9/17/19 12:34 AM, Nathan Chancellor wrote:
> > Hi all,
> >
> > Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> > that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> > number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> > commit for more details:
> >
> >
> https://github.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4=
d9b67589427
> >
> > There is a warning in mm/hugetlb.c in hugetlb_fault_mutex_hash:
> >
> > mm/hugetlb.c:4055:40: warning: expression does not compute the number o=
f
> > elements in this array; element type is 'unsigned long', not 'u32' (aka
> > 'unsigned int') [-Wsizeof-array-div]
> >         hash =3D jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
> >                                           ~~~ ^
> > mm/hugetlb.c:4049:16: note: array 'key' declared here
> >         unsigned long key[2];
> >                       ^
> > 1 warning generated.
> >
> > Should this warning be silenced? What is the reasoning behind having ke=
y
> > be an array of unsigned longs but representing it as an array of u32s?
>
> Well, the second argument to jhash2 is "the number of u32's in the key".
> This is the reason for the sizeof(key)/sizeof(u32) calculation.  It
> certainly
> is not trying to calculate the number of elements in the array as
> suggested by
> the warning.
>
> > Would it be better to avoid the cast and have it just be an array of
> > u32s directly?
>
> I did not write this code, but it is much easier to do the assignments
> (below)
> to build the key if the array is unsigned long as opposed to u32.
>
> struct address_space *mapping;
> pgoff_t idx;
> unsigned long key[2];
>
>         key[0] =3D (unsigned long) mapping;
>         key[1] =3D idx;
>
> > u32s directly? I am not familiar with this code so I may be naive for
> > asking such questions but we'd like to get these warnings cleaned up so
> > that this warning can be useful down the road.
>
> I suppose it would be possible to change 'key' to be something else besid=
es
> an array (such as struct or union) to eliminate the warning.  But, I woul=
d
> prefer to have some type of directive to indicate the code is ok as is.  =
It
> is not trying to calculate the number of elements in the array as suspect=
ed
> by the clang diagnostic.
>
> --
> Mike Kravetz
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOrgDVOqKD3dedVKFXo%2BJwKAAWaX3f2c3yUyEpm%3DsRr5Pu2N8g%4=
0mail.gmail.com.

--000000000000dda51e0592c62109
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can use extra parens.<div><br></div><div>size(arr) / (=
size(int))</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">ut 17. 9. 2019 o=C2=A023:06 Mike Kravetz &lt;<a href=3D"mai=
lto:mike.kravetz@oracle.com">mike.kravetz@oracle.com</a>&gt; nap=C3=ADsal(a=
):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 9/17/19 12=
:34 AM, Nathan Chancellor wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,<=
br>
&gt; that tries to warn when sizeof(X) / sizeof(Y) does not compute the<br>
&gt; number of elements in an array X (i.e., sizeof(Y) is wrong). See that<=
br>
&gt; commit for more details:<br>
&gt; <br>
&gt; <a href=3D"https://github.com/llvm/llvm-project/commit/3240ad4ced0d322=
3149b72a4fc2a4d9b67589427" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4d9b67589427</=
a><br>
&gt; <br>
&gt; There is a warning in mm/hugetlb.c in hugetlb_fault_mutex_hash:<br>
&gt; <br>
&gt; mm/hugetlb.c:4055:40: warning: expression does not compute the number =
of<br>
&gt; elements in this array; element type is &#39;unsigned long&#39;, not &=
#39;u32&#39; (aka<br>
&gt; &#39;unsigned int&#39;) [-Wsizeof-array-div]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hash =3D jhash2((u32 *)&amp;key, size=
of(key)/sizeof(u32), 0);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0~~~ ^<br>
&gt; mm/hugetlb.c:4049:16: note: array &#39;key&#39; declared here<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long key[2];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0^<br>
&gt; 1 warning generated.<br>
&gt; <br>
&gt; Should this warning be silenced? What is the reasoning behind having k=
ey<br>
&gt; be an array of unsigned longs but representing it as an array of u32s?=
<br>
<br>
Well, the second argument to jhash2 is &quot;the number of u32&#39;s in the=
 key&quot;.<br>
This is the reason for the sizeof(key)/sizeof(u32) calculation.=C2=A0 It ce=
rtainly<br>
is not trying to calculate the number of elements in the array as suggested=
 by<br>
the warning.<br>
<br>
&gt; Would it be better to avoid the cast and have it just be an array of<b=
r>
&gt; u32s directly?<br>
<br>
I did not write this code, but it is much easier to do the assignments (bel=
ow)<br>
to build the key if the array is unsigned long as opposed to u32.<br>
<br>
struct address_space *mapping;<br>
pgoff_t idx;<br>
unsigned long key[2];<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 key[0] =3D (unsigned long) mapping;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 key[1] =3D idx;<br>
<br>
&gt; u32s directly? I am not familiar with this code so I may be naive for<=
br>
&gt; asking such questions but we&#39;d like to get these warnings cleaned =
up so<br>
&gt; that this warning can be useful down the road.<br>
<br>
I suppose it would be possible to change &#39;key&#39; to be something else=
 besides<br>
an array (such as struct or union) to eliminate the warning.=C2=A0 But, I w=
ould<br>
prefer to have some type of directive to indicate the code is ok as is.=C2=
=A0 It<br>
is not trying to calculate the number of elements in the array as suspected=
<br>
by the clang diagnostic.<br>
<br>
-- <br>
Mike Kravetz<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOrgDVOqKD3dedVKFXo%2BJwKAAWaX3f2c3yUyEpm%3Ds=
Rr5Pu2N8g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAOrgDVOqKD3dedVKFXo%2BJwKAAWaX=
3f2c3yUyEpm%3DsRr5Pu2N8g%40mail.gmail.com</a>.<br />

--000000000000dda51e0592c62109--
