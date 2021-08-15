Return-Path: <clang-built-linux+bncBCS7XUWOUULBBE4P4KEAMGQEEXTOIZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3157A3EC6D4
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 05:18:44 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id p123-20020a378d810000b02903ad5730c883sf10744460qkd.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 20:18:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628997523; cv=pass;
        d=google.com; s=arc-20160816;
        b=YLV2o9szdwUAkLsKHKyh51JqhFDiNbg4JmSxWjLhAxJObUaJ3M+hb7lO7CnC7s55E3
         m1gj+GEGX2uaBhiciFO7suEWe5f/fRlJwV1jIYOrZQIHp8L+FL8m+Lld3IIBZC8kA1fT
         SDXpEszJIvDddvlavBKwPG5MLgKOef8KrNCVk2529q0Xpcm4vCc8cg88UTNul3XZIq3g
         oOe81aSWW9gJfocYQ7FeYWmw2coB5+BRV1G3wvCErNO3Sex/+lO0LefQPuXLCUp8Of+X
         OCSluOHpJnjaWlbQzDbsXEe4u4QuDNWcuSDj4shccbgFLymlRdy6uZ3WWQbaKwvc8A2c
         xSHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uJAypQu/d1e5J5JmLpFxckbWU90v+Snqf2MmMYXhCUg=;
        b=B0p2ECnUfw8aUzloifsWCVhNi0jmBVE8CnXiY2pwjL3oh86UQdxTBdZ76NUYjrpPh/
         mnyapsKhRltsvZfZEHQVVAV2E/PRIA6XLfXu4eTOoPAaCtUnjoYHpBD7OiHQfe9KQOK0
         6oYavuzkfb9ebYOkGT7NIPz3nN2db/RLySAjlOEiddEpwYbhO/Fokgo7O8YV2fvezSSw
         RayB2qbHZxeQpu/USY3Y2SPXylhX+p0fubElRgH+ewefcUoLwKb3j6Xpw4Y0rgW7XaxT
         q0V2WsmMKzHS/QBknPIYdNMyBgCFMtleM3a3QQI/+x3kC3x9yxNaqGOW3DrSScS1eOZq
         QL1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9HCpAzI;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uJAypQu/d1e5J5JmLpFxckbWU90v+Snqf2MmMYXhCUg=;
        b=bHf9sb0beXLoRpMH8EZqyrPVbqOGqZ7DJuicFzXaNRCwv5IffCAkLQ6plTIR1FB0V+
         wxHh94F7yytcV7b8hY1GUu54+MwDyFRL3jwFl6+uT65x8KhY7v0lTCRVio27stAEXcdB
         qTDOor4KUMfM3BGomuge0jdfYd3X3SiMJLQXghZFVcsZ0iZLLjxpa2jt5jqSYV4rvm99
         0xPrV7NNsCneQltL/lvHFMGwsQNydnfBrbSPjbG0WVpj6hyD0ZliORidsi918jlC9dig
         JOyqe4uVFBI7xziWyWaA5lJ7Mzq3JAGXpe+iIxPmY7m4vxW6aqqe+AS+7VaocUzU5n8m
         x/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uJAypQu/d1e5J5JmLpFxckbWU90v+Snqf2MmMYXhCUg=;
        b=RSTsXsBpQXHNX3lLbyPhmkjqaBLcAEPSOYeKQcjCVH95l45OtNaKV4aiWpll/yx2gh
         uu/BeAEjLZfZKocEJi/9GLtW2M0wWG4cnaZxJ2m56v7PdUjmSv+53O8l0bbQ7wkq5J3E
         UXYME4HdHUsXbOQNzYz3HAuK8gjA35NXu0y9NWdSbkQ/Z/HSQs6LXviSwAcpm62Qat7G
         2hRDpZdZPv1TeLAg+jhJfN9aXk/WbQOBuSrzjoiilmc2Yb23GRYWm12wbAjf4GjtqthC
         LMkwnz2MCj6eFyY8luZz774hmaQliJJh7RV2TKEG62NXaCxdH1yHIEvaHhQDBP5LiT4A
         GxDA==
X-Gm-Message-State: AOAM530TLDzF3c/oRPY7v5wi2QC39XPn+prTvkmJjuWgclkKN6EOUiMg
	YZow4Pqbk+TMsIB9ufVSm40=
X-Google-Smtp-Source: ABdhPJxrk+RsnwxbZFr2QGWHWY5WLj0CVrPI2xK12DXYzjcWgxj+303pQ9xtnrfeODE2vDgxF8+aRw==
X-Received: by 2002:a0c:d402:: with SMTP id t2mr10136958qvh.9.1628997523220;
        Sat, 14 Aug 2021 20:18:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:190b:: with SMTP id bj11ls1392291qkb.7.gmail; Sat,
 14 Aug 2021 20:18:42 -0700 (PDT)
X-Received: by 2002:a05:620a:c96:: with SMTP id q22mr10096250qki.445.1628997522763;
        Sat, 14 Aug 2021 20:18:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628997522; cv=none;
        d=google.com; s=arc-20160816;
        b=XZLRpFDtqCiblqhgZsWxkgBlbDWKMcsmOPrgOCtn9rd2HGa8zek1ZeWZVLB/PTW3O/
         5uIg1DYdZSwxnpeYdNXD8VmlT2aUdqcV1zwJc6kqZ1h8LUmed2t7hs/c8yi1CilDB7Vv
         nkfIoGvBmoN0LFDZawzP9BUXdzDX/CL5W1RLizeAadeTOpsR/GDiClxEaWDozrKr8fpn
         wJnSztk8jlPK5QLQWZy3wW8cXaF+bt7K51usygXU8hMW+br0SvG+IXFfQlueYrKFGwTy
         N6pw3/Z795HTXfGpPW0eoyYvbPTul3JE2Q5Wu91OfXrNwH7nmUgrphpVh4ImGR1TecNE
         Jssg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=M3h39XrOI3FJ6un0byHMUduS6niGgV73IZr3z/auRus=;
        b=E16lZUOJTQwd+wVvC1L+dPJTGiWkfJKAJdygahngjYLYOBfX75tkwC46vAJhmUyDcV
         PSP85NYJmTVe6UWtAHwclsdZa/2RcfVUYwArR8ac1Udpf7/VgyHGI8mdEG2BhSHFDvxm
         ifrNM3xZKk8XBVJddhPwgWmmRosN+jQLoY04LFHG3/zQO6PzUM6Jro+gQo0Dltb1Gmik
         1L+VG1Nen72SSfYxgUqhzgRpJS8KAcwAo2EiEO7rDk0ONiCkuSfUkUJNFyxu4J+7mSK0
         QwKHk7a/yZf7e5FqJ4TdFzmE0xnFqr2pSFeU3IeJDarbOaygMfRWehWFi+OSIOAxJ5XL
         SZpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9HCpAzI;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id i4si390429qkg.7.2021.08.14.20.18.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 20:18:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id z128so26311024ybc.10
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 20:18:42 -0700 (PDT)
X-Received: by 2002:a25:19d7:: with SMTP id 206mr11657033ybz.240.1628997522341;
 Sat, 14 Aug 2021 20:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210814234102.2315551-1-masahiroy@kernel.org> <3afe5054-8129-fe42-b5a4-00bd091b1a0c@kernel.org>
In-Reply-To: <3afe5054-8129-fe42-b5a4-00bd091b1a0c@kernel.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sat, 14 Aug 2021 20:18:31 -0700
Message-ID: <CAFP8O3JtOpb368h4PBbYnR4fsqRYkX_TKuCKrS-Csu=dMMNiKA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Fix 'no symbols' warning when CONFIG_TRIM_UNUSD_KSYMS=y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	linux-kernel@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nicolas Pitre <nico@fluxnic.net>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I9HCpAzI;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36
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

On Sat, Aug 14, 2021 at 6:15 PM Nathan Chancellor <nathan@kernel.org> wrote=
:
>
> On 8/14/2021 4:41 PM, Masahiro Yamada wrote:
> > When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this=
:
> >
> >    nm: arch/x86/entry/vdso/vdso32/note.o: no symbols
> >
> > $NM (both GNU nm and llvm-nm) warns when no symbol is found in the
> > object. Suppress the stderr.
> >
> > Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG=
_TRIM_UNUSED_KSYMS")
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

LGTM.

FWIW binutils>=3D2.37 `nm -q` can be used to suppress "no symbols"
https://sourceware.org/bugzilla/show_bug.cgi?id=3D27408

llvm-nm>=3D13.0.0 supports -q as well.

> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> >
> >   scripts/gen_ksymdeps.sh | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
> > index 1324986e1362..5493124e8ee6 100755
> > --- a/scripts/gen_ksymdeps.sh
> > +++ b/scripts/gen_ksymdeps.sh
> > @@ -4,7 +4,10 @@
> >   set -e
> >
> >   # List of exported symbols
> > -ksyms=3D$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z=
)
> > +#
> > +# If the object has no symbol, $NM warns 'no symbols'.
> > +# Suppress the stdout.
> > +ksyms=3D$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' =
| tr A-Z a-z)
> >
> >   if [ -z "$ksyms" ]; then
> >       exit 0
> >
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/3afe5054-8129-fe42-b5a4-00bd091b1a0c%40kernel.org.



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JtOpb368h4PBbYnR4fsqRYkX_TKuCKrS-Csu%3DdMMNiKA%40m=
ail.gmail.com.
