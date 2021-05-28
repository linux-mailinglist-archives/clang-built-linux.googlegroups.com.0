Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBK53YWCQMGQE2QOF44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C209C394833
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 23:16:28 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id b3-20020a4ab4830000b029020d5d68e38dsf2975499ooo.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 14:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622236587; cv=pass;
        d=google.com; s=arc-20160816;
        b=vz7Pp3Cto6Tye3jcyTORi5+Ft/VTUgmRjweYN+XBKwaTh99ur/VU39T5AhrawesKO0
         iu6DPDk1lQYFYmrl9EbiIqdnvkw9FQYPjEcJeeaTaqbWUmiN/d7PFevb/JInK7iAhQro
         4KXnY8N3HYD2ID57cKOIethhWi1CUuBxRovS65hp5u8leI19sh+P7UtI7HgT0Rfz12MT
         iASDOBVXc1C224ffI2BHWUvVNr7kVxk/RiHLX5e03TM2aoXjR153CCzez8psZujxv5Il
         eYVRQGWIXF3uZDiuKsQS2co+XZSKkYvYDQbjneacKP0dq87+ixB1TexPXaq41gY2E9BN
         9i7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oXLZCjHWYItJ3jv8dGQmWx6wkZJpIQi58cQX9KRB1dQ=;
        b=HCc4wIUBFcuf6FO3oHTibfgDUGprNryeCFr2n2KN42jd+92UAKBx5OWq7pwwOKwE5R
         VroHt8032IQOfnGvfWZiY9+uxwHSlCTRHu0Ji5OAnWxRemt93IPW7QFoR7kAuA3HLn0E
         kD8jYIDy/ErQyrWF7qFcV2AtzsyTuHnAj4SFkpOlpNZV2yb8uPhhaC/sTrAVKMH96FyR
         DoyB3Cc39gncMJ39lCCAzY1sKP7TjRYB2LlcdwnBj+Q0fFmCNDkP7buUTOIQMhrRSbAS
         7FYWQQEwwunmoVnJpi/lPvyFQSRbkH+MQmxMoMvKQ/VSuKYXYWu0n8+XVtXDZtpgnKwF
         qQ+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4vrhLGB;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXLZCjHWYItJ3jv8dGQmWx6wkZJpIQi58cQX9KRB1dQ=;
        b=sboB8lPW60iAPftoGmA6I+1Vi+oqGJdQMSQJafiLSvmoGjthmFfImx2Q5sXchyhmxn
         eLY/bXb1r1pRUBCg4ty8DpezGUoZxkcfd4Jli83F0uRvmhjzEVd6sAOUlQPM/U1m48UV
         FQiOxnDNKm7SnzJGpDRLj02HX72fERzXHO8ZZ2NZbm/kf5EAL4W41NtyjDoLCSAV7MkD
         alIYHryOgOY8duT6MlU3meKpSvZEywRYrtstuEWELeenJ4zmvJZcPVt7ApFl51drqIvs
         JZdANRfO5x2y46dFOGRazT5D5ywUI6f8j3OGMNZGHrqIFqKKmwTxVoxedjA1MWKHjMdj
         0MQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXLZCjHWYItJ3jv8dGQmWx6wkZJpIQi58cQX9KRB1dQ=;
        b=LQcwfn2U1iK5ouWIvab36GoCRXyoFtnJDBFI+FECrxkjPDgkmbWL/Mt1hptAaiAdbP
         LUVmAhSJnJB25tjpvFHfT/LmT69yT2BdDyeuF3Nn9NNwucVOKAcLDNMOPkqpO/JgAtcj
         fhMgM6koRvqLmH4Sunb8xf6TlqV/t9BzTGa9AmKWSaFQV+asakQPHdSQRPQo6qMCYKwu
         TCqep4Sv74LVWJI6VVMm9ZXx9V88mB/btgNunX1WZ45HS0kZpby33HZPMPyCzlSWUhtQ
         FLThawrkJGzN4V1G2M8CgnnzlgTHk3WHKjLNj3VgRqBtX2GdVi6yRX/OzOv2VqZyKw38
         bVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXLZCjHWYItJ3jv8dGQmWx6wkZJpIQi58cQX9KRB1dQ=;
        b=CwTjmbGxZs4cBbJXVKNKDykE4wNlYOyO8pDNvRXKm+1WKpPUp91Kn7KzEvH4I84tAK
         jdgsYEY7BhkSATngJ1KejdLMstPvkggaNAYDmlIzp6RWpt+i0l6eJRjGJ1efWRl2MuzI
         +ehnSH8SKkKx2xjZtT/Mxsz9jTcnxH1GVJG/PmpKoOonUrTjypK+2liuez+ythPJZGv3
         Ah1iPNoV6/OzfxzGTl0vwRnOHfKtGKaMejovUHlok0vCXeY8PW70SBXQs+1JEOTxfZab
         S4kaedpXBvVLDgkSOg60kffkVbZwky0kvmGURgvkuyPwdqnGPJ9NOrvAwv3NqrKCHcaB
         nstw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cNJOki07L7F5bn/F16w/FZsotC4PajwESTqgQ36TEr6MdMy7t
	V4fIlXgOjuFpOEsTaiMgxiE=
X-Google-Smtp-Source: ABdhPJwxMgAWXus7YaMYwBAMwnpoI4c5t0WQ5rJ+Cox/I6E/3zOwL5PxVLY9zsFV2GzKzX55U2D0wQ==
X-Received: by 2002:a4a:925c:: with SMTP id g28mr8584460ooh.65.1622236587316;
        Fri, 28 May 2021 14:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e78e:: with SMTP id x14ls589033oov.5.gmail; Fri, 28 May
 2021 14:16:27 -0700 (PDT)
X-Received: by 2002:a05:6820:398:: with SMTP id r24mr8530198ooj.34.1622236586921;
        Fri, 28 May 2021 14:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622236586; cv=none;
        d=google.com; s=arc-20160816;
        b=ufuqO4p/V3SoDxPiuEyrsFqJG96UtQbfIX1gBBDOetcUPM66TammhMMvGCkgX1n4Qe
         t9W98wrvMUGDReT9oJjDngK52xsEHliBerMBf07yIEP/5CnCBxOKXBBqbf7uUEXNnzx6
         8sQ2fTegDvL3ecM3GC1FO3T6RFI+TCdj9YI/UJcvD8UYYq9wvlrK1f5L3IawnYH/Qd3R
         ikfPT1IB7DOpn4OPY2uXNcz1zwfoICRwo2M4gDIqyJEXnL6ZjaRKUG2XN33oEwAJMF6n
         U4qRahaMAdW6UC6IizgXsWfFRi3I2VGQ6GcRhCbVEflJZ+D2uMmpDJHAUzVrM8DVx4i+
         JXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=XEMhjC4QqpEHpMZG+wZMZKggHmvVvfQMHQc7hTBBNds=;
        b=r7D6CEn7uwra0+tJL4aQtWHBcVqfklnPQsTVEYHGl1+CKzOKiv8JWBZpe52lOXdTik
         DzE44YrcqJe4qGaxKGIMLdOK3lDA1lzVMlJpA6wBdUqxeunVj3eT+jfkDWd/OozF67YF
         WMipMZf3fXv1yxsYczPd+QLn8/p+1NGW/h0cdBcD+UHQglPkLIO49Hhbchdhf3+LXYY+
         B8Fofc2b+wR8eCle+vqRlG5vVrfU29oO4yGS9OFWfgoYZJJNJOzasnKDSW93j8nw71Hf
         A35m/MxM3BccYz0Mj6rRC/BKkLl/7iNOI86pD6PNHhadMdrzhcFLHYPUZbaRty7wt5w3
         f5Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4vrhLGB;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id a10si542963oiw.5.2021.05.28.14.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 14:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id e22so3442210pgv.10
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 14:16:26 -0700 (PDT)
X-Received: by 2002:a62:bd07:0:b029:2df:2c0a:d5e9 with SMTP id
 a7-20020a62bd070000b02902df2c0ad5e9mr5685235pff.7.1622236586563; Fri, 28 May
 2021 14:16:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:c002:0:0:0:0 with HTTP; Fri, 28 May 2021 14:16:25
 -0700 (PDT)
In-Reply-To: <fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
References: <20210514135927.2926482-1-arnd@kernel.org> <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
 <20210516103628.2cf899a0@jic23-huawei> <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
 <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com> <fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 29 May 2021 00:16:25 +0300
Message-ID: <CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn=Z4WBPkhOa4xK+ig@mail.gmail.com>
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
Content-Type: multipart/alternative; boundary="0000000000007bdb0b05c36a6346"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N4vrhLGB;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

--0000000000007bdb0b05c36a6346
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Saturday, May 29, 2021, Joe Perches <joe@perches.com> wrote:

> On Fri, 2021-05-28 at 23:59 +0300, Andy Shevchenko wrote:
> > On Thursday, May 27, 2021, Joe Perches <joe@perches.com> wrote:
> > > On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:
> > > > On Fri, 14 May 2021 10:45:02 -0700
> > > > Nathan Chancellor <nathan@kernel.org> wrote:
> > > > > On 5/14/2021 6:59 AM, Arnd Bergmann wrote:
> > > > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > > >
> > > > > > clang complains about multiple instances of printing an integer
> > > > > > using the %hhx format string:
> > > > > >
> > > > > > drivers/iio/light/si1133.c:982:4: error: format specifies type
> > > 'unsigned char' but the argument has type 'unsigned int'
> [-Werror,-Wformat]
> > > > > >                   part_id, rev_id, mfr_id);
> > > > > >                   ^~~~~~~
> > > > > >
> > > > > > Print them as a normal integer instead, leaving the "#02"
> > > > > > length modifier.
> > > []
> > > > > > diff --git a/drivers/iio/light/si1133.c
> b/drivers/iio/light/si1133.c
> > > []
> > > > > > @@ -978,11 +978,11 @@ static int si1133_validate_ids(struct
> iio_dev
> > > *iio_dev)
> > > > > >                   return err;
> > > > > >
> > > > > >
> > > > > >           dev_info(&iio_dev->dev,
> > > > > > -          "Device ID part %#02hhx rev %#02hhx mfr %#02hhx\n",
> > > > > > +          "Device ID part %#02x rev %#02x mfr %#02x\n",
> > > > > >                    part_id, rev_id, mfr_id);
> > > > > >           if (part_id !=3D SI1133_PART_ID) {
> > > > > >                   dev_err(&iio_dev->dev,
> > > > > > -                 "Part ID mismatch got %#02hhx, expected
> %#02x\n",
> > > > > > +                 "Part ID mismatch got %#02x, expected %#02x\n=
",
> > >
> > > which is almost certainly wrong.
> > > the length specification includes the # which is already 2 bytes.
> > >
> > > Likely these should be 0x%02x
> >
> > What=E2=80=99s the difference (except printing 0)?
>
> (assuming the argument is unsigned char/u8)
>
> %#02x will always emit more than the specified length (3 or 4 chars)
> values < 16 are 0x<hexdigit>, values >=3D 16 are 0x<hexdigit><hexdigit>


0 will be 0, btw.


>
> 0x%02x will always emit 4 chars


*Minimum* or at least 4 characters. There is an upper limit of sizeof(int)
* 2 + 2.


>
> It's very likely the writer didn't know the difference and assumed
> that the # did not count in the specified width.
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
clang-built-linux/CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn%3DZ4WBPkhOa4xK%2Big%4=
0mail.gmail.com.

--0000000000007bdb0b05c36a6346
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, May 29, 2021, Joe Perches &lt;<a href=3D"mailto:joe@pe=
rches.com">joe@perches.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On Fri, 2021-05-28 at 23:59 +0300, Andy Shevchenko wrote:<br>
&gt; On Thursday, May 27, 2021, Joe Perches &lt;<a href=3D"mailto:joe@perch=
es.com">joe@perches.com</a>&gt; wrote:<br>
&gt; &gt; On Sun, 2021-05-16 at 10:36 +0100, Jonathan Cameron wrote:<br>
&gt; &gt; &gt; On Fri, 14 May 2021 10:45:02 -0700<br>
&gt; &gt; &gt; Nathan Chancellor &lt;<a href=3D"mailto:nathan@kernel.org">n=
athan@kernel.org</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; On 5/14/2021 6:59 AM, Arnd Bergmann wrote:<br>
&gt; &gt; &gt; &gt; &gt; From: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arn=
db.de">arnd@arndb.de</a>&gt;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; clang complains about multiple instances of printi=
ng an integer<br>
&gt; &gt; &gt; &gt; &gt; using the %hhx format string:<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; drivers/iio/light/si1133.c:<wbr>982:4: error: form=
at specifies type<br>
&gt; &gt; &#39;unsigned char&#39; but the argument has type &#39;unsigned i=
nt&#39; [-Werror,-Wformat]<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, rev_id=
, mfr_id);<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Print them as a normal integer instead, leaving th=
e &quot;#02&quot;<br>
&gt; &gt; &gt; &gt; &gt; length modifier.<br>
&gt; &gt; []<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/drivers/iio/light/si1133.c b/drivers/=
iio/light/si1133.c<br>
&gt; &gt; []<br>
&gt; &gt; &gt; &gt; &gt; @@ -978,11 +978,11 @@ static int si1133_validate_i=
ds(struct iio_dev<br>
&gt; &gt; *iio_dev)<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0dev_info(&amp;iio_dev-&gt;<wbr>dev,<br>
&gt; &gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Device I=
D part %#02hhx rev %#02hhx mfr %#02hhx\n&quot;,<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Device I=
D part %#02x rev %#02x mfr %#02x\n&quot;,<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0part_id, =
rev_id, mfr_id);<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0if (part_id !=3D SI1133_PART_ID) {<br>
&gt; &gt; &gt; &gt; &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&amp;<w=
br>iio_dev-&gt;dev,<br>
&gt; &gt; &gt; &gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;Part ID mismatch got %#02hhx, expected %#02x\n&quot;,<br=
>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;Part ID mismatch got %#02x, expected %#02x\n&quot;,<br>
&gt; &gt; <br>
&gt; &gt; which is almost certainly wrong.<br>
&gt; &gt; the length specification includes the # which is already 2 bytes.=
<br>
&gt; &gt; <br>
&gt; &gt; Likely these should be 0x%02x<br>
&gt; <br>
&gt; What=E2=80=99s the difference (except printing 0)?<br>
<br>
(assuming the argument is unsigned char/u8)<br>
<br>
%#02x will always emit more than the specified length (3 or 4 chars)<br>
values &lt; 16 are 0x&lt;hexdigit&gt;, values &gt;=3D 16 are 0x&lt;hexdigit=
&gt;&lt;hexdigit&gt;</blockquote><div><br></div><div>0 will be 0, btw.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
0x%02x will always emit 4 chars</blockquote><div><br></div><div>*Minimum* o=
r at least 4 characters. There is an upper limit of sizeof(int) * 2 + 2.</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
It&#39;s very likely the writer didn&#39;t know the difference and assumed<=
br>
that the # did not count in the specified width.<br>
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
om/d/msgid/clang-built-linux/CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn%3DZ4WBPkhO=
a4xK%2Big%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAHp75VeQdFoJrPhXU2fYdrhLUwvM4N=
EoPn%3DZ4WBPkhOa4xK%2Big%40mail.gmail.com</a>.<br />

--0000000000007bdb0b05c36a6346--
