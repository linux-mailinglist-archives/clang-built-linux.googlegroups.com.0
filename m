Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBSNTYWCQMGQE3TWEBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E02AE394818
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:59:54 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 139-20020a6304910000b029021636f6732asf2621603pge.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:59:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622235593; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJOZHCd/cO9+W2dFk0T6NG+LnUqDeJ/Ca516oYlCmwQDCCvxL/Q5+WfX2lArx031Co
         JAe23L2tWU89ewaNc3uHZ/pOWZ0w09xiq+1E3j9KLEYwAzRRpqQ+MnOwmnDqA01fZaZt
         /90qRuzzE11mfGi7BPWoyrRUBqCqKMeqDCGvGwuXa3qFrVXGNbg/lNKcEWlR+b5EN44s
         AJ7pMG+a0hx+OphVER32MDHF+IP5Fr6gbu4R+nVlXFQwhfvNzJnLOBcHgars7mmiDGDV
         hNS08kffJhNr4jrITsCiQHX1efEVRRsXj8hfsytN/SpfzRC/DVVABPpWAv095v24RJRp
         e5Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dSXMn4QsQx6871Q9OvXumycEnIlLXji/lFHN4xfo0MI=;
        b=RB3sfvvbrQKFHM7N+gEvv5PgmbqJOMDUF5LMLT9t5QVO9v8MTCnEvG8MbLZ25F8V6P
         InQo0m/WicyQPqf07VC0+eomFkhIX79wlnigyDHeWi/J2j7JbwuaI18oEYyS422y9Muh
         JQ3T8dl5dxoSnXaYmQQYQolIeBq3hGrM9vNCgZRurQYO1ncqrdJ/CS8St6DOINLn6+8A
         Dt17PBzjTRR2j/pjAwBI7xqMQQeVG2eHzLb6f5yVhJXL2BAy37ZJqp1TaaYhX988y7Uc
         C0bmcNpbbjyYfYhb1GrQ4xWShDyNggRh3daFbAIY2uTarkixep6c1PR/VOPKykBvxfHm
         VtXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTPRquv1;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSXMn4QsQx6871Q9OvXumycEnIlLXji/lFHN4xfo0MI=;
        b=iBjWIwaYDl3QcW6YN2pxbk6ENW+MD3lNaNDruDmh94IbOkcr2oWM60/LHu1PIElJxE
         +z/6Hq1fqCquE6teaFLlQ/wo8RiZiN0GuE2qA2XGmHDZNQ86gn1li3umOUIF3/XR5Snv
         ULOqw4WHy2nS647MSBBKwHgSejF+t47VceUPN4XybXyZkLwgM4egmreA/IoodqNaaaDc
         jQDEJnMdAhuhjE2QWYM7PP4i2qfd8T8YpQMnRLP8wpb34Ezn3odqOS8tnwPEvcxY468g
         rQsZFoHcl5M+mP07TCdOLVZ4k9CCczcYH62yGo2dl1CrpsST+LkRmi7bzULaeK1SuVBh
         qrxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSXMn4QsQx6871Q9OvXumycEnIlLXji/lFHN4xfo0MI=;
        b=AtQM/F05AwuAuh9lYblymZfECdaJGYF+NLZ6rEVSY459/ALV+Veqo+6Zzinqfpk1CR
         csIZ6Rm0hEp8onaWghLJD02mxsZwHO89oy+Im7NxVG8KNJGsTLfYUn+zHb6nTzdRlFOW
         QKff4Cy5A7KYOnHoy3sBPgsFcEEAx5Z+PVLeJuWx9L2XjY82AFHpemZbs+a6nu2v9NnD
         Tfve4DM8RsU1Bj2ELbSe7y0GfQ/3lvgSmlMl8uu7fKvM7xlP+oLM/kXNIDnlP6yzJoV7
         Dc+4h/a+bPqBpgm3TtejnJYJ9mhTspBXrg8zO9vWw7LotPkFpgUKC6R82i1mW2EzXtlf
         OMkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSXMn4QsQx6871Q9OvXumycEnIlLXji/lFHN4xfo0MI=;
        b=YUFFR0jrF+/LvYjaq8gVdu3+sV2MonK7H2XlvTtqsWzNbu3COJGZ92LfHjjJp2qn2U
         ZOjYDl9Y6EKESq2JYsw7x63TI2tsMO7DMrLlCyDg0b3h5odss8QSIyLH0dA9aBN87q8s
         J03Nv8HLXhMy8goOaAJ37ucQYbxaXUp+mhW3UWTUvIVfNjGUshXsnvH7g/bYqSbUYoGx
         nw8MH0wPMsH0BAJoqtpzhaX1WWVVym00NPdv+25LRKa8/4nyo79EYzdzpRLpG3DuMu3r
         sMdRYI1O4gtO/3fuMWL3Av+2dGq9B5HZphLarIoD2cJqaxJ1TaBuTBKPYR+eEINm1Cc+
         9hlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rknq/3C3VAbggECwT+2CSXYlUoBRsnvzOAuKysD80ZPQsZIxt
	lfFMMVKIQ8lP/ZujyDYq4bs=
X-Google-Smtp-Source: ABdhPJyqVWMIfRmAOx4CzDdqyIsQPBy/g+uYe0+TKuowVK3yQP+Kvgg3FTWDa1Wr3kcgwtchkgchIw==
X-Received: by 2002:a62:7fc5:0:b029:2de:5813:8890 with SMTP id a188-20020a627fc50000b02902de58138890mr5681534pfd.60.1622235593384;
        Fri, 28 May 2021 13:59:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31d7:: with SMTP id v23ls2034466ple.9.gmail; Fri, 28
 May 2021 13:59:52 -0700 (PDT)
X-Received: by 2002:a17:90a:1c02:: with SMTP id s2mr6363707pjs.172.1622235592682;
        Fri, 28 May 2021 13:59:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622235592; cv=none;
        d=google.com; s=arc-20160816;
        b=sDBh8SUtPvBpxXFcQdWdkw3wuhv09Ua+GKZzPUkPzg5a6XSiqABdqAS/GFis+pcVB3
         wRGwIo4GSE97nALSZ8AL07o38uN7r3D1PK9bc3PtadXMx52vWTnLFBohH+sncl8EGRne
         4VFq0SBsMDRPVi1waN0D9ziYGuKRAxXp6JXGPOHuGbVf94kJyLedTtAMMvx+Zm+OTkeE
         XjlFaGcnF3M7SZYEQSUPxnlLSl658gOz8Q5hSKjcw/1g6P/A3AfmdzGrYVKA2S2MKYV5
         CV4u46J18ZQ/YU4NgIhdQMKtOC+L7d82VibKb1fBvexoPwufQ7i3MSnbzWH1KCYHQJPk
         dcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=6qvv2oQYT91e1amYp+o1mu2V/X3rorvTOJW4xfpUOHY=;
        b=naPzilfTWf3t78OGoXvVANYhHSVSmqfRj9yWeAVkvwgifUDMqKndAu4cQYEF72dQ9k
         ZC+/1zlGkuB4Xz21FPLxo6ApkrdlPpH5ZdGq2+nU/YhBuntIjbupHl10/cVLUmmuPNIk
         a5nJtASop9DJnX067FmvCjE8l8feGCLinsyWOaRy5cCW2oGAu9SgMWk5KwmF/86AXeUi
         Ly1gZz+wLpCfDrDTAfCayoqo8yDTPfi4WL+IJOiBhfZ6QGqix69l5+3QZiuku6+nkGjr
         upQfbGQxg6M97+p/nGWZRdvso/J2R73k9t+q+A1M4tMrx3y9l3NtxKkOAbEGY9eegyoD
         qOUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oTPRquv1;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id j17si575205pfc.5.2021.05.28.13.59.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 13:59:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso7841565pjx.1
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 13:59:52 -0700 (PDT)
X-Received: by 2002:a17:90a:af8b:: with SMTP id w11mr6445458pjq.228.1622235592187;
 Fri, 28 May 2021 13:59:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:c002:0:0:0:0 with HTTP; Fri, 28 May 2021 13:59:51
 -0700 (PDT)
In-Reply-To: <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
References: <20210514135927.2926482-1-arnd@kernel.org> <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
 <20210516103628.2cf899a0@jic23-huawei> <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 28 May 2021 23:59:51 +0300
Message-ID: <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
To: Joe Perches <joe@perches.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	=?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?= <maxime.roussinbelanger@gmail.com>, 
	Jean-Francois Dagenais <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Lars-Peter Clausen <lars@metafoo.de>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000038d29c05c36a28e7"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oTPRquv1;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

--00000000000038d29c05c36a28e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thursday, May 27, 2021, Joe Perches <joe@perches.com> wrote:

> On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:
> > On Fri, 14 May 2021 10:45:02 -0700
> > Nathan Chancellor <nathan@kernel.org> wrote:
> > > On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > >
> > > > clang complains about multiple instances of printing an integer
> > > > using the %hhx format string:
> > > >
> > > > drivers/iio/light/si1133.c:982:4: error: format specifies type
> 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wforma=
t]
> > > >                   part_id, rev_id, mfr_id);
> > > >                   ^~~~~~~
> > > >
> > > > Print them as a normal integer instead, leaving the "#02"
> > > > length modifier.
> []
> > > > diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/si1133.=
c
> []
> > > > @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct iio_dev
> *iio_dev)
> > > >                   return err;
> > > >
> > > >
> > > >           dev_info(&iio_dev->dev,
> > > > -          "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> > > > +          "Device ID part %#02x rev %#02x mfr %#02x\n",
> > > >                    part_id, rev_id, mfr_id);
> > > >           if (part_id !=3D SI1133_PART_ID) {
> > > >                   dev_err(&iio_dev->dev,
> > > > -                 "Part ID mismatch got %#02hhx, expected %#02x\n",
> > > > +                 "Part ID mismatch got %#02x, expected %#02x\n",
>
> which is almost certainly wrong.
> the length specification includes the # which is already 2 bytes.
>
> Likely these should be 0x%02x



What=E2=80=99s the difference (except printing 0)?



>
> > > >                           part_id, SI1133_PART_ID);
>
>
>

--=20
With Best Regards,
Andy Shevchenko

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAHp75Vc72vMbj311P3xnxh6ExxzD1%3DenoETj6wY8dHn%2BxBJ4%2Bw=
%40mail.gmail.com.

--00000000000038d29c05c36a28e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, May 27, 2021, Joe Perches &lt;<a href=3D"mailto:joe@pe=
rches.com">joe@perches.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:<br>
&gt; On Fri, 14 May 2021 10:45:02 -0700<br>
&gt; Nathan Chancellor &lt;<a href=3D"mailto:nathan@kernel.org">nathan@kern=
el.org</a>&gt; wrote:<br>
&gt; &gt; On 5/14/2021 6:59 AM, Arnd Bergmann wrote:<br>
&gt; &gt; &gt; From: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de">arn=
d@arndb.de</a>&gt;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; clang complains about multiple instances of printing an inte=
ger<br>
&gt; &gt; &gt; using the %hhx format string:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; drivers/iio/light/si1133.c:<wbr>982:4: error: format specifi=
es type &#39;unsigned char&#39; but the argument has type &#39;unsigned int=
&#39; [-Werror,-Wformat]<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, rev_id, mfr_id);<b=
r>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Print them as a normal integer instead, leaving the &quot;#0=
2&quot;<br>
&gt; &gt; &gt; length modifier.<br>
[]<br>
&gt; &gt; &gt; diff --git a/drivers/iio/light/si1133.c b/drivers/iio/light/=
si1133.c<br>
[]<br>
&gt; &gt; &gt; @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct =
iio_dev *iio_dev)<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 return err;<br>
&gt; &gt; &gt; =C2=A0=C2=A0<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_info(&amp;iio_de=
v-&gt;dev,<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Device ID part %#0=
2hhx rev %#02hhx mfr %#02hhx\n&quot;,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Device ID part %#0=
2x rev %#02x mfr %#02x\n&quot;,<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0part_id, rev_id, mfr_id);<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (part_id !=3D SI1=
133_PART_ID) {<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 dev_err(&amp;iio_dev-&gt;dev,<br>
&gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;Part ID mismatch got %#02hhx, expected %#02x\n&quot;,<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;Part ID mismatch got %#02x, expected %#02x\n&quot;,<br>
<br>
which is almost certainly wrong.<br>
the length specification includes the # which is already 2 bytes.<br>
<br>
Likely these should be 0x%02x</blockquote><div><br></div><div><br></div><di=
v>What=E2=80=99s the difference (except printing 0)?</div><div><br></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; &gt; &gt; =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 part_id, SI1133_PART_ID);<br>
<br>
<br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHp75Vc72vMbj311P3xnxh6ExxzD1%3DenoETj6wY8dHn=
%2BxBJ4%2Bw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAHp75Vc72vMbj311P3xnxh6ExxzD=
1%3DenoETj6wY8dHn%2BxBJ4%2Bw%40mail.gmail.com</a>.<br />

--00000000000038d29c05c36a28e7--
