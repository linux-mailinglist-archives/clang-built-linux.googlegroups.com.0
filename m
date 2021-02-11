Return-Path: <clang-built-linux+bncBCCI5LFKZYOBBFHLSSAQMGQEKDHR7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EB7318C5D
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 14:48:06 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id x25sf1778104ooq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 05:48:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613051284; cv=pass;
        d=google.com; s=arc-20160816;
        b=HET3yDTTDgfbaU6W+awF/qCrcoqlkxJCBhhvg0BIuNFl8BJzv7IJqu8+marjgYW1hx
         6qni3sLM+nZwEduAzih53L6e2Zfk2hHMdrTiAf2nd5OGR33kxqz9VAPSd+5skrTS/7Sq
         QCtYrtF18MFuSYHFuQEBRkffNQ3XfmxgRQDv11Wx5ny/6cXOBZfYT9D1llUSGPal/FSe
         Yz837dOTXu3JxUYJmnZWQ0o8RVyBectB4NVrOOuAcole4M2x74BBmkaE/0IKKWqhGaOo
         /0xBNRMTkocKUg/8iMUdh0r7uURoOX0QWrnVD4ZWyJ0EZBS7qSMXHorkEtEZk3jD3WG+
         EJXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=witjS12XRDBfDJPjuH/uPyhc7IZAvOcP9T1KCcEHh1g=;
        b=aJzKvEP6pbJFopemXtG9qdYrjlixL1bcZQjCGS+cEv7cioL3y30FaZ59+NJGMg6XqU
         GteOiLSfCBelupNvaxkOGfrCz6LToWuBaAGIT1AR12XfEZr7+rGapiAPn2HtMhZyBFbD
         rgyXollabG6mHh5UPWbJ46WlFsRc5Zb/xWqF/asby1Hew0tsc8BkRn9Vec7oTlprFF6O
         Xz8pCgtopo/Z0HM9CaLzZctMlIPPgKZKEw8B2eVrt5yHuE9vSY+hKeyUQtBcuX4Olj3S
         Nt4hiaq8mFfvuqeDT7RQVHiUGNux5FKY9jNn4RGojIPzvmkNFbh+E51Rai7dro3oAvMi
         SIlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RWt+9Qck;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=witjS12XRDBfDJPjuH/uPyhc7IZAvOcP9T1KCcEHh1g=;
        b=eauEtyAy+VPRkBc4C2RuflpzYluBHAW7pfdaTFhLWmJo/Q3bujVDqPIclDWao/OCrk
         mX00DpbN5FFzS9hMzs/BYU12JKPOC5ZhbGq1ZHX1bryI+7SsBdnOWO5Do3q+xlppwDTP
         YufYDISR6CPE2Sjkul0v+h0En32PQ5R8ISVozP/0N0MDmMaeC25MQAUeGEAWvPxVPyN6
         L9ylyJMVU/o6aHEu8KXBNSFAXGRcO7sAQV0wnBSOzSR0TFpal4ubNQ6s9K23wRDw5rdK
         YhcNVzy8A1ziQAUWkeYZmP5S8drVCo8fuCpppbk5oxTuumb8GLgZohqNf6j4UdrhmW6x
         OWYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=witjS12XRDBfDJPjuH/uPyhc7IZAvOcP9T1KCcEHh1g=;
        b=fR+JYUXbuvs2Eh36THK7GnVmi2Iyfx6HPIJMN9QTpD7BeE/4PSnlKWkMb0b55G2R2U
         PKLoKx7PkbykDFASrdmwR9xonMm0uqfpZMrZbVwwnmH/tpFmxgB8/kN5ad1riJV4EGzB
         LyK1fl6Ap0JBHJU3LP1nOjtrF58jvSz0LIH/xVU4XY2mtlYLPL35yVFa5psLtrzx5YO5
         g/YiMYzxw696HvsKd6COsGFon9f1AlixvHda1MhWLylOIYsgdibo7alm1JfEdHrEW0Hk
         WVwz/+BT5vaoHTSXbUXt7eEnnnll/e/4VazPrnyoFsb7XszUhO8Ir+AY8MWma6j6XAKJ
         JNDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=witjS12XRDBfDJPjuH/uPyhc7IZAvOcP9T1KCcEHh1g=;
        b=qs1sno/+/M4AY09llmkcUNsLAyJ4sGCguZGJy610MI8nKlAO5JHQwdesz2hLWi7a2R
         gRQI4ilKTmiVLVFtBNxWphSJ9a0qhiFmfY+6kaCsSDBZXyhLDUbryZAH02RX/lKTybtl
         9hUv3h3im1R3XmKiaqMgEulxZ9Q9/VY3sH/nx5AJL46dGe5t3TpfcJwH5QWXXrpMmH8X
         RVe5BQDZ3VfecGevwAQu7il7+jKrJ5Dm4Kga+tOHgtyaU1QTmkkSxM1CsrOJ93VQIQpf
         xQrSh5zOfrwhGTjwMBJJFHkHlW69G/M2L+b+9+/VREPAGnSPwCWjxxNLCM7bRcbNxLV6
         Q0Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g3P6YUiAKMsvWY8BPo4K4uxb5Hu0oXwN9Hlk425UBI9g8/5zN
	14wkND0Nwr110qtNSmVPuBg=
X-Google-Smtp-Source: ABdhPJww1+HKnpdY3Jmq0+RuyTdXAh9GfGHyzrUmiHTzxBXAri+x93apb88o4shv4qAzXuOW1H6S1Q==
X-Received: by 2002:a54:4697:: with SMTP id k23mr2754099oic.17.1613051284753;
        Thu, 11 Feb 2021 05:48:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2048:: with SMTP id f8ls1269918otp.2.gmail; Thu, 11
 Feb 2021 05:48:04 -0800 (PST)
X-Received: by 2002:a9d:64cc:: with SMTP id n12mr5768543otl.175.1613051284392;
        Thu, 11 Feb 2021 05:48:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613051284; cv=none;
        d=google.com; s=arc-20160816;
        b=uKPurhUcJslw5Tff1w+phRqMYNuSFo5XN2fIsFlQ/iphj/NbL/Gb/gDEpSPsL+jcNm
         RUxwn/fDhWDIHYUI+O5HOm9cGdH8eNx+lT1fsxLaydlNu9DPddj50ij8U0X90qJwpj82
         tnCx++rJbY9AtlL1Z0Tv8MwV6PStQ5mtb+Csg83NyrdAh2C2JyyDe42X+N57rdII1Wfy
         kjgDSyaUSfbo706POo/hYSp+f9PJ98TNaNJjSJIFDsk6Z+BSd4mN5CNZJjN+ODJrBHMY
         rxPNZK8JgMnD9mGIAsrNf3KFaNOScBb87t+gb0WY5hBzy4mTbJ3/cou4FTj0zWKgIHR3
         6/mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EJvV/IO/wKXJfwZmf/emEhZ30GLM6e1NBmfhZuY+thY=;
        b=upGY2FQx+Rxp5CFZ2GMTcjxsnO3djU+p0GDuUKTXjzv57+qCH8AuhXTLUP79YUA+2k
         iWKg0rpAxlyEpZqcPQr3IIElpVUZSl5R8eN49iyFjpHEJKQTt8vTP0uuS5ddsaJRjoMF
         jFJ+jb+OJPAUzVFNj9O92t8VaU+Jh+WhvTWd3R/Yw6mvZ+fq+BIEa4GAxxT5wUpx7jfK
         67hfKpvveboRiEQRjST9IaR5YCY/fzn11YjpH9JNM1BHIe/uj39OzacuS0m3VhHTRAJA
         eaM5FCCykDMMxj9adC8jH699Fa4nWUEsc+FQvAdZqb4q9JG6mLrjd532+x4+7NtLCXCe
         IvBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RWt+9Qck;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id g62si425287oif.2.2021.02.11.05.48.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 05:48:04 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id k4so5619675ybp.6
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 05:48:04 -0800 (PST)
X-Received: by 2002:a25:9a04:: with SMTP id x4mr12162281ybn.184.1613051284203;
 Thu, 11 Feb 2021 05:48:04 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86>
In-Reply-To: <20210210182400.GA3502674@ubuntu-m3-large-x86>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Thu, 11 Feb 2021 21:47:53 +0800
Message-ID: <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, natechancellor@gmail.com, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	Tom Roeder <tmroeder@google.com>, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: stephenzhangzsd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RWt+9Qck;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
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

Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8811=E6=
=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8A=E5=8D=882:24=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed, Feb 10, 2021 at 08:15:27PM +0800, Stephen Zhang wrote:
> > Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=881=
0=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=883:27=E5=86=99=E9=81=93=EF=BC=
=9A
> >
> > > Just as an FYI, your email was HTML, which means it won't hit LKML.
> >
> >
> > Thanks for pointing that out. The existence of a GFW makes it difficult=
 for
> > me to connect
> > to the mail server.  so I use git client to send patches only and reply=
 to
> > emails with
> > gmail  web client.
>
> You can configure your Gmail web client to send text responses by
> default by clicking on the three dot menu in the compose window then
> chose the "plain text mode" option.
>

Thanks, this has always been a problem for me.

> The build directory needs to be involved because that is where the .cmd
> files will be but the source directory needs to be known because the
> source files in the .cmd files are relative to the source directory, not
> the build directory. This happens to work in most situations like I
> point out above but not always.
>
> I think that my patch is most likely the way to go unless others feel
> differently. It would be nice if you could give it a go.
>
> Cheers,
> Nathan

Do you mean  my patch's failure  in some cases  is because the build
directoty isn't involved after using "-d" to specify the source directory?

Actually, the build directory has already been involved by the "path"
argument. See:

def main():
    for path in paths:
         ....
        if os.path.isdir(path):
            cmdfiles =3D cmdfiles_in_dir(path)
        .....

where the value of paths  is passed by  the "path" argument. Do I miss
something?

Cheers,
Stephen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3DeSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew%40m=
ail.gmail.com.
