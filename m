Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKWG67YQKGQEFGOHLVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A74315611F
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 23:22:36 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id b21sf514099otq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 14:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581114155; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tyt4Cydf5nJl9uxi1w7GXIODT2F8ev19a3MwEG3fWbE0k4m3WCd24Pv/UyZDbNQUbq
         IeKUKqOgLt/QvC5SE/FiXTWrmuf4Wf8r+z/ThLjOuVTjb9RMFJwUerUzS9Rn1UxhOaak
         0Hdb5t5PPagFDvMLF6JQj1WoQY4fiBV4HbeWc6VBBuMMmQcS8n3xlv9jNTF+XnIX+tZX
         uR6wZejF2q0SfrNFYeHA4WGtDToaykvIxCbOYrYwezTCiFiiGvku3dLq+wyNhvW9Xw/j
         2GDK5eiAGFDzYf862rlcdXGXkUqVQD4elo46fS6v9ccOnUl/8tIIcQcEP7Q+LtwTGKrk
         k8gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ya9zbbwSz8stldLg6QZKkktUexwIBEeosCj64X98uyQ=;
        b=BJvp9Qm6ky9LU9OHnLk90GmJTZxPHzxo/lkerRjImj9x+eXk1gzOFR8v7ZNLV07E0b
         PJbMJsf9MW9/K5meqGFPLzdxFdGZ9HOOItq2GsDlXb88v36nMV/7lC11nP6V+jNFzvWn
         dHYoqhJ95CYXtpaXUti7ytuPs5TFJEd+03Cy+HIz6x/mKKuuXUChfpI4CGv/aV2eslHl
         PZ9VX9+JXIq5B/gmSX6Ph3OYcnPFTojxL4LmwvsIhvWMqhn/M9bgp9JkOWcoTite0hSd
         2SOVsw55ib2YPaKKLqGO91oK1opRz81cV9xnj4o4cnhE670zpjI5mcGfuGBQVRVxU8DU
         fl5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nPbPLewK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ya9zbbwSz8stldLg6QZKkktUexwIBEeosCj64X98uyQ=;
        b=KxC0dI+X5rogHQnPsu8JPHxPCqbY12wrYchN0KhNjn95gE1V5JCbG0F8FZpe3dT315
         3n9l4a24KVcMd+i+nQa4lZfYTEJcx1CLfmIo/PgA/f/DYXR78DRqjH9fjZAgUQ9hGTD/
         s0q4NAb+fOUEapzV/pQboJhinxH41ozqYkWl5t6GxMRD0SgBqGiOg8RsR9N3mwgeIXXO
         OjNSQssZYel9xAB0nlrHw93OxcJj2m3yo35vKBpYQUXfvLpaC9DlajMf3UVHmwGLUhaf
         TjQlpnnU8Fsur2ND7jATVFNvfatrbUqyFhrpQtMCV4HLPPlOcZcGXa5Lxvu129dSivCH
         r4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ya9zbbwSz8stldLg6QZKkktUexwIBEeosCj64X98uyQ=;
        b=hieBWtRzKE8tApv43ep78AkgnZBwttZqV2Ko2vYv3iEJLjwo0Vu36CYWrkl3G16iYj
         f7bCWYijdNmUeboWae1rtMSbmU26k0uKDDxQiWQGetZuGPzZfdQL2jC9cH2+GyPrp0K5
         YEsdFxcHhR0n/dcz033OXLFtq/IsciOuJJnjikS5xlHhuT9Abtud+5vr16BHBBTmT7HU
         TfQME2UZKlt/2D/45IysgTLFKVw61Y88mAXGmgT6ChKMxgrLiBm8QVRrgQ1kzEgEec4T
         iFFJnKFrn16ZJyvJf6bUXxGwr5MwyBUNWQcuYnlQXAj25Oj8t5St+K6Aix1fpZg+7eki
         U9Rw==
X-Gm-Message-State: APjAAAUVKDT1kJS82/q6nJQtAi/ImZhAfMLfj3D6Ev6wHgw7Qz5la37V
	rzM1gZ6CPLAB8Sq0awtQcCc=
X-Google-Smtp-Source: APXvYqxAyp8loXl9xkiFCeFEAy5GL8Z1I9zNcPIbyj+v6N69d+guI5i3Y55xDq7zyz+H8FYXp2AMXw==
X-Received: by 2002:aca:dd05:: with SMTP id u5mr3594510oig.91.1581114155043;
        Fri, 07 Feb 2020 14:22:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7282:: with SMTP id p124ls3067961oic.4.gmail; Fri, 07
 Feb 2020 14:22:34 -0800 (PST)
X-Received: by 2002:a05:6808:181:: with SMTP id w1mr3679320oic.176.1581114154660;
        Fri, 07 Feb 2020 14:22:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581114154; cv=none;
        d=google.com; s=arc-20160816;
        b=EoYbUvxRARknPgLuXrKyoeedHXeJaFw8VSgPBcWASIeASpKJbwJvlrzNbApYH3YNLP
         auDvTyTj2r+jjA1PoTSAyQFcR2upHUiYQbOm7GUohWawCkU8pK72VQGRQLP7TWgT59jt
         zFicxTCplri/g9qczuXCTt97/vX9DvmgIktyRA+F5flW2u4+MBVGPVcUJNrMn44ruhFv
         Jq0+YzS2emLTYTYZ9nzPGd+5RIqfWxsjT4+KKOWTYvExx0KFFnsNZYov6biMVqRmYqek
         coqetigUqpIijboe7mPrXkLmxl5NIrHqNnRK/OVF0uRjWMJ3hMugQsQGjTiDhfvS4ITe
         z/5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jqk00OJqa8F2AUt1H0UzIQieHE2KRnVBizFJ0ZgkScg=;
        b=MRlQBRDiBoKzrTkbXSL0WQOCTZ7n1toUKJEh6CEXiJKtgIBiY9rbOsNoVLW2ZIGThg
         dI/q/N1uQhL+GnCCaPNw6F5nr0PboW9PAlysidrIW2MUB8jS3za0eoqgE2nfnpixdSSj
         Ct7FYuRKt6ELUAT7q3aZJbIVN0VQ1HlcZxsDKkuXtOUdFPWNISkHQfNdH4ol4TWqb7nN
         sT3JQcQe8nBhF9XigCf0oFzOs4Udd0hHnJWvn27LZtqb+FIYFkNk9j6bQK6iHPW8O5qB
         30XiH88J/CNMOzOh6IHn6DdXJJPwK2r9I2y6nDRVIZPKwokaqEGISPSnu/a1AxIk2qV5
         /rpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nPbPLewK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id j15si405153oii.3.2020.02.07.14.22.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 14:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id s1so469412pfh.10
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 14:22:34 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr1389310pgb.10.1581114153686;
 Fri, 07 Feb 2020 14:22:33 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 7 Feb 2020 22:22:20 +0000
Message-ID: <CAKwvOdm+1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm2hM9F5w@mail.gmail.com>
Subject: Re: LKML: Vasily Gorbik: [GIT PULL] s390 patches for the 5.6 merge window
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="0000000000007b519e059e03d35b"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nPbPLewK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

--0000000000007b519e059e03d35b
Content-Type: text/plain; charset="UTF-8"

+ Vasily for real

On Fri, Feb 7, 2020, 11:02 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> https://lkml.org/lkml/2020/1/28/1141
>
> Yo, what's up with clang 10 support?
>
> Can I boot this in qemu?
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2B1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm2hM9F5w%40mail.gmail.com.

--0000000000007b519e059e03d35b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">+ Vasily for real</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 7, 2020, 11:02 PM Nick Desau=
lniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"=
><a href=3D"https://lkml.org/lkml/2020/1/28/1141" target=3D"_blank" rel=3D"=
noreferrer">https://lkml.org/lkml/2020/1/28/1141</a>=C2=A0<div dir=3D"auto"=
><br></div><div dir=3D"auto">Yo, what&#39;s up with clang 10 support?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Can I boot this in qemu?</div=
></div>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdm%2B1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm=
2hM9F5w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2B1bMq-uZxe96HViKLzT7jRy=
xdS68KLyOXhMm2hM9F5w%40mail.gmail.com</a>.<br />

--0000000000007b519e059e03d35b--
