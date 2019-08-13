Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWVJZPVAKGQEWMSLLWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E77A28BCE1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 17:18:50 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id h13sf4415157lfm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 08:18:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709530; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9m3XW71yWSl1UDGNEJxMVWPbxNZ3yflSlW6fm6FHteWqSXZ8iX//EHpDZbwA3uG1T
         8UBML9NjBCVxL97vedpZKFbizWUBs3lS2/g+CVAMztjlCzReK/c6senb8FEkG9D3eV2C
         5mNK3SZ9qLA3vfsH34Aiihcf8sm8mW7gSZ7tmr2TU1pljdkrVL0ESxriJ83V6ocTLNk0
         QFhiu6lNSg7VN60jnUhTtyP4JWuVPX6EoyqnPKo+U7nGALCSWeJWrHyX2xoDPo3a+D0n
         UZ/+QXKUVpdX+95YFKQiwaNGna+55HYunI/I9hnp/c8Zf2LiO/y8sCayXmOrKa014KCq
         W7Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RAAKrtU1ab23Kvm8RdwsVDSHjdrqDw/g2cm0ESLois0=;
        b=ApTzI2ldt3MJSyxEOkUKV78JY/EC3Ln+XlqbviNp1XAkkGV0Qq8UeqIuXLP/q6b9AG
         w//+33y3rmuv4+in2bWE4uNsu1TJKd1p+PaRtGrV8J7QiABmjpyHP2/VU57ZGC9azCQI
         GnguIarALChTC8poAIUyPWkyAYYjdOgA8lvp3OETvMywEgvbANBgBnZPjhXvFpUte+Rf
         lFl+VmtPRYWamB22bj1cHrf1S5A1umHHIfeU8XCgrvkQX7cI2/rPIGFXpI76RdPUDOjV
         ApnrIADcE/gmeMWZYkUAvnVFBXFAKo19TkAUwYNfJWD+1srXzuTidCKYsdF61kmJH2Ex
         s5Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7YXGAcv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RAAKrtU1ab23Kvm8RdwsVDSHjdrqDw/g2cm0ESLois0=;
        b=osoK7UC54yYcuptUq/cp21/3cUwqvl+kMvfOaitdyqt+o/Gpzfan6ZkxByrdKlhbiq
         pLQTqUllQX4XUuUWP3NayatNDSRMnK7SGENkFGmsxJ7x99ibrarUijET3iNcHayPOiQi
         QgU+rs3rTO9JInxHB8Wwb3rnZMaUgkf4Z1iPPZPVRi5vkJq3XprRdAw15iNvbFb0NGtI
         +HfzdV5xKI4ee3lgv/Jd/xC7XySH3LqcALlR/3VyLCiB6zc8tnGA1kt8yifto1ODsQFT
         7+N4qKtFQ2VwsbgVvQIjmaCnUQEoP0JqlHaYNaWFUuJQgGeaTmo9g06IiIawuJuETput
         EShA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RAAKrtU1ab23Kvm8RdwsVDSHjdrqDw/g2cm0ESLois0=;
        b=gJFwDEYxuECSPDjI2wB2SRvw2ytBHrDmhwNtVD2vxUboYgtYitz+Bad1SRTLwMUTiS
         ngNocCSGErF1/D698H3sEIdgSCZpwEL0RGw1W6u+dafroRHzB41mnPRCXsowG2RTJOqX
         HBYZMYHVFZ0aZm1u9/+rvS+fzDirGFs5yJMJigict4839/q2uL7t+aGGQ1q2XS4Oe9s/
         t8oGjQJ2QdYvwB86S80/ojjfkNtIr7T3PVQJl3awGaCWyZGjfkxr4iBZsiW17PE98NOb
         Zv0OZ6zEjLkYiGNTJa3xZrqjMmVSaDWR5aIXNtZOWAUnFs+04ffsHJanwG0oeS7oy5uj
         H8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RAAKrtU1ab23Kvm8RdwsVDSHjdrqDw/g2cm0ESLois0=;
        b=IiG+i1JvX4I826aXb2ncYwpA4IHCjmGo5WDKtBQGI75TcGGGXAs5s1NlllUhUKyvjA
         9jywSQ4QJYKYyqeB7BzsNI37gOdR7KAIehANvqTDHhpGvw9CnMhL3Yljeewz8T5sn+yI
         mElBMp/qSoZnPYklsZ9dYPCxhHpIKvR3UDvbynDFFEl8GuMt9749gJORlhv889v47TFw
         feBRJqIpTWP0PoElFjUBHl08zkwOihpicy94JOS/rzE+TOt5F6LSiX6GHzvzjeEsw2ry
         v5whEZfZIEmBALoyOQk4BAR7bCwaAgOaRcC5l1dYuD/SoA8w+DqrJ/THEd1YzSPHrhIc
         qiKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfCU+Nf6TLCp3FwoO7EfIBe3nZI5i/bfHyDScY9C1kgyghNRND
	2++hYSGJ0SzpH+kmMvnrI2k=
X-Google-Smtp-Source: APXvYqzd+dYlo50D5SA+em+KozVEshKPZ18Agy6IgCvPeDUJMYac49ITTZRQPnzuv9q/Ntnligwqlw==
X-Received: by 2002:a05:651c:112a:: with SMTP id e10mr7262196ljo.113.1565709530473;
        Tue, 13 Aug 2019 08:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:65da:: with SMTP id e87ls12210545ljf.1.gmail; Tue, 13
 Aug 2019 08:18:49 -0700 (PDT)
X-Received: by 2002:a2e:b0cf:: with SMTP id g15mr5952708ljl.237.1565709529873;
        Tue, 13 Aug 2019 08:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565709529; cv=none;
        d=google.com; s=arc-20160816;
        b=IsxDwa0YbNd+7jMh9RtfHn4DDQnqEjFLWemiJ7pOxjqH0rYuKuxeqvSuNBjFLlv/ZB
         dRI8NCngbykO+C7IUAqz4FjJjLHW/8h+0+OgCoXXcVBNKgfd9BEE5H/F97FI0bCGwMtS
         8S5sKchpe3vE6JOByiV12mzq9P/mOVcZc9tkHMtNH3d9TslcNF9yW8QosOJ/udsm0CEt
         s41neKuPR7qn8yfcsuvdf2X6jc+2/hUP4i8g9RvEZ0QV80Ttix/ma7pdkhOf9M6TBu6H
         3JpHYbgDw8YpxbNuF1Ba6R91vBrhxodczo39cfnS9a3SYKQOsb6D6CUrdJsbMtknFMAF
         IfZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y7uD4GWSHMu9SpYo3ZNBp9JDObURdbxj0TRSrw5qYSo=;
        b=qdykFhdS58SE6mWIzOrBnXQEKr58DZV/IqT8DKAAplu6orCdb9sXp4TLP/gskagMRK
         CYFkQJjdpos6pZxHXXWYNvKfNNrPmSDCpmO3l4BZ57jFcczxDkAjN6dxZmOcCy718kmY
         3/LR4z+d8vhDBKNdCJr2vhB4XfabJuEpCFXNstjrqOMh82QU4sULTjzp+FoLXVcbem01
         pK/N7B8QpwgcMR7oDW+bf4nNrnF8lnJDrZhojtIQosiKrAspwxYGBMH6zz9ZKhoNv3Vf
         qHhgX2VBdzL9jOs+SuN+BmhLni6OTK7UvHw7ZRIeAg3jeJlaVUDTfOonfjnrdfXKvGh8
         TEbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e7YXGAcv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h11si2618587lja.0.2019.08.13.08.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 08:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id r1so9028209wrl.7
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 08:18:49 -0700 (PDT)
X-Received: by 2002:adf:f54a:: with SMTP id j10mr29084979wrp.220.1565709529322;
 Tue, 13 Aug 2019 08:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-17-ndesaulniers@google.com> <CANiq72kbFDPO0V12AQkvNJn4eX3j2TH4RiNwuB=a520aSmvfKQ@mail.gmail.com>
In-Reply-To: <CANiq72kbFDPO0V12AQkvNJn4eX3j2TH4RiNwuB=a520aSmvfKQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 13 Aug 2019 17:18:35 +0200
Message-ID: <CA+icZUVnqP=xqgMrbhqnOyNV=NVK32jo26fEauEiprRziqo1gg@mail.gmail.com>
Subject: Re: [PATCH 00/16] treewide: prefer __section from compiler_attributes.h
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, yhs@fb.com, clang-built-linux@googlegroups.com, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000005119ed05900128ee"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=e7YXGAcv;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

--0000000000005119ed05900128ee
Content-Type: text/plain; charset="UTF-8"

Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> schrieb am Di., 13. Aug.
2019 14:18:

> On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > GCC unescapes escaped string section names while Clang does not. Because
> > __section uses the `#` stringification operator for the section name, it
> > doesn't need to be escaped.
>
> Thanks a lot Nick, this takes a weight off my mind. One __attribute__
> less to go.
>
> I guess I can take the series myself, since the changes are not that
> big to other parts of the kernel as long as I get Acks; and anyway I
> plan to do other attributes over time.
>
> Cheers,
> Miguel
>

Through your tree is even a better choice.

Sedat

>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVnqP%3DxqgMrbhqnOyNV%3DNVK32jo26fEauEiprRziqo1gg%40mail.gmail.com.

--0000000000005119ed05900128ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Miguel Ojeda &lt;<a href=3D"mailto:miguel.ojeda.sandon=
is@gmail.com">miguel.ojeda.sandonis@gmail.com</a>&gt; schrieb am Di., 13. A=
ug. 2019 14:18:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, Aug 12, 201=
9 at 11:53 PM Nick Desaulniers<br>
&lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_blank" rel=3D"nor=
eferrer">ndesaulniers@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; GCC unescapes escaped string section names while Clang does not. Becau=
se<br>
&gt; __section uses the `#` stringification operator for the section name, =
it<br>
&gt; doesn&#39;t need to be escaped.<br>
<br>
Thanks a lot Nick, this takes a weight off my mind. One __attribute__<br>
less to go.<br>
<br>
I guess I can take the series myself, since the changes are not that<br>
big to other parts of the kernel as long as I get Acks; and anyway I<br>
plan to do other attributes over time.<br>
<br>
Cheers,<br>
Miguel<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Through your tree is even a better choice.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Sedat</div><div dir=3D"auto"><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUVnqP%3DxqgMrbhqnOyNV%3DNVK32jo26fEauE=
iprRziqo1gg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVnqP%3DxqgMrbhqnOyNV=
%3DNVK32jo26fEauEiprRziqo1gg%40mail.gmail.com</a>.<br />

--0000000000005119ed05900128ee--
