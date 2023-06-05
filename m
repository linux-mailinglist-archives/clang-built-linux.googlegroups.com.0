Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB4Z7CRQMGQEXKP5XBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C86722C6F
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jun 2023 18:25:44 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id d75a77b69052e-3f9ac54933asf117821cf.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jun 2023 09:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1685982343; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYIlM1hMqcx1BpJN7XyneFfX3bNz+TEmXslPff99fogWbvCNPKf2YdqVYrBmtvsqxv
         s3lRRixS2ExHM7277FzphxwoEC4LW5sRA8cyr2WVZ6ONhoikEAzXHQWFHUGUF0DlnEFi
         +nLxPnVpGipUldajt+3c5bc8IBM1UCBDm+/d3J843xW1CGsOynoifsCNQ5De0s5AqugY
         2RRy9QjAe33g0Eip4BN2SFTGWLRB1qecDHjCW9RtXoaehg1vU3A00FbLjDoeYtReCSK5
         sY5sVOntMhyy3PBrvGbeSCqegDRqaraf15VCusWr8Shtpa3/0TE0O3/g85bqqP+WwO0F
         tjbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xnPjOIrnpN9oKB3OCrgX6yWWJ7JQroFtLgeNPS6x8S4=;
        b=mSCw4s9p0nPgkfpdgbkJlgVzgTuVGOpxV0aG9l4FEZys1FnZZuiMVn2889uip3N85P
         QI/2pFM58sdM96NbmgfJYtFbgTf7kD+gYmn1VCG2Nm35h04723M9fWAYgk9NWy3n5OxI
         uDGyVHOESt1KSLhjw1p+uw3t46hvwkVzKQ0tkMcEHo/cnuMU6eORWknUR1C/6Np+1AR1
         VSc1yUKLxpeXCI4egzIJOfXUNGF9SJerUbPbL3uyAvkx+pqFEXHRYzfF1g0wJ6muIjKD
         hehkhbmINok6TwRdhNlY/vdITG6ptrTMVzW7jkquSPC8ZjZMIn42GCvliGhX+UjD6ykn
         M5wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=Dj0zAChv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1685982343; x=1688574343;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xnPjOIrnpN9oKB3OCrgX6yWWJ7JQroFtLgeNPS6x8S4=;
        b=RRPtJNeGv6b5CaqZkTW2w8tsnwrbrQ4qNHJWMJmxUEIeIWOFXWD9lHie5vgM4q+9rw
         ghM8MkhYevL0v372CwPn4ylnUzBQBpK7wVVzltqMiCx7aJs1B0NSc679E1++GdXfWdii
         qBUiQorVo1XUsgZ8XKSyImwjz/ra4V5LHYP0svIHmC6D2KYUJV4oFJI1BiicpOG1rpvc
         p+VflJ3OsGTWhPa79C93aydFZ6JWFJE8M7fF/c2BJNaUV0J0fMOG3MLQaAOj/wbxglTd
         pWiLbO//yT4v4d7XMLP1p5WSlg39lHwe7v+NqmrzSPg7YKCLar3nTiGEipSj9fdJj/AN
         D12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685982343; x=1688574343;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xnPjOIrnpN9oKB3OCrgX6yWWJ7JQroFtLgeNPS6x8S4=;
        b=W9giBnho0NuTYQUESQAGrKfjPYxVJtSW/3KBZlViCYrX5P9SPS/RC7gfnM3M0GK7Fj
         z0W1xOWQ0QBcvCo/Pg68aHM0pnTOpxDPStEhaprJaBBXB9qX+R3/h5jcVIUArwj1GFdS
         zSgm28vYF/lKdHeuV5i9PnhrKucTcVWg88C3Wu+jPrn+TAUJ1OaMFDcAf/YjIlX5B8zA
         /Kz+uw36SurzmYlE2POMu9l3aLzXVBxRzOJ87jpNaFBm7MPWaHrVbZHF2FLXLpxdraZd
         IHGUFZbyWcgups7/0BFjtRIOZXRTUw6oea6uLBqOqVQf+tjbLzReIW9wLYlCXkOaS60Y
         QSRQ==
X-Gm-Message-State: AC+VfDxQnWHyFm14ryhLwsXDqDp/DjExbcXFYD7Myl5c5VVvGnobyavb
	BMrtzAyYThgyG7fLCbWq0oE=
X-Google-Smtp-Source: ACHHUZ48sGyruJKFrO8BN5141dnWPz/zXd8lzeIgG2wkpsWU0LehXepwBDRewTIeh20qsFnmkaD4OQ==
X-Received: by 2002:ac8:7f03:0:b0:3f4:f841:df89 with SMTP id f3-20020ac87f03000000b003f4f841df89mr720802qtk.1.1685982343508;
        Mon, 05 Jun 2023 09:25:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5907:0:b0:626:103c:e385 with SMTP id ez7-20020ad45907000000b00626103ce385ls149837qvb.0.-pod-prod-06-us;
 Mon, 05 Jun 2023 09:25:42 -0700 (PDT)
X-Received: by 2002:a67:fe47:0:b0:43b:411e:e40c with SMTP id m7-20020a67fe47000000b0043b411ee40cmr321268vsr.18.1685982342786;
        Mon, 05 Jun 2023 09:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1685982342; cv=none;
        d=google.com; s=arc-20160816;
        b=cjCaHrcN0DCCy4sf7umRnoSVOJI0tbBxgjKXbSYTkxTW4AXCRAeKm2n4GWxcBqKW42
         LWsvdbW+WDnRw5BBQPnh0urVw5jQhZpq95zbvwm+lvCRQSbY9cl4JgG0rmIGB6jUB/N8
         iizlFnCEHjRatOKu0bkUT1IW/04NFXWw79b3pbGR8jZbADzZ+0HgYgXHD5EAJt3L+f6q
         djC8yjkbtjcxhx4+MSIX3X0h1symAVj0gm0gjlcLzi6Vutfc1+6rXK8qM6q/xa3TgdDF
         7S3psrtuGEsl5X7VvSnqIoUTagLUidDPiQeWi38P73HUHKfLhN9x77mmr4rcJjxtrmr7
         Lm6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B8UiJGIcw/CDjqWRs7tlOsEENFOZ6IS6OzF4UKdvXwk=;
        b=yOnIkfT8Xr61hSiniDVKM/jJZEsYuN0yNMBZOejh/+qaPasch4TQMxewMfctN8FKwU
         yJBBfpaoXX7hbB2iQG9SstciGmCq1cA1HYV0nucREdCr9mwYuW77ACTzbTGM8wTTQqvK
         o5JBzYzyrcHxqCQHSd7L6bvKzNwH50LmkOvTt7Ds/J8JO8rMWrFZDbCBFqwCcib30+5A
         ByXpEucQkvuMaLk9QSA2Tq2v8UJ/sgqm7yv18WgH0LAQmmZshdRc/rLnn5yxvvWyX1qA
         roencdXeutRwIIz9FY8bUBaIc+l/ahmFFq8xTSAiox3JqHzeHZbwaPNJpVwk8RL05jmj
         4lEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=Dj0zAChv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com. [2607:f8b0:4864:20::f2c])
        by gmr-mx.google.com with ESMTPS id s20-20020a056130021400b00786dc05ab38si851917uac.1.2023.06.05.09.25.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 09:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::f2c as permitted sender) client-ip=2607:f8b0:4864:20::f2c;
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-6261890b4d7so44770396d6.1
        for <clang-built-linux@googlegroups.com>; Mon, 05 Jun 2023 09:25:42 -0700 (PDT)
X-Received: by 2002:a05:6214:2487:b0:621:83d:3a47 with SMTP id
 gi7-20020a056214248700b00621083d3a47mr9528433qvb.39.1685982342273; Mon, 05
 Jun 2023 09:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200721041940.4029552-1-maskray@google.com> <6576b5c0-ff42-4d12-be68-bc66dce268a5n@googlegroups.com>
In-Reply-To: <6576b5c0-ff42-4d12-be68-bc66dce268a5n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 5 Jun 2023 09:25:31 -0700
Message-ID: <CAKwvOd=QDy02=USKKYQAr16M2YWVFwcZutEWmFWpJcS7sZemxg@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Thomas-topway-it <thomas.topway.it@gmail.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=Dj0zAChv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::f2c
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

On Sat, Jun 3, 2023 at 11:46=E2=80=AFAM Thomas-topway-it
<thomas.topway.it@gmail.com> wrote:
>
> hello,  I'm trying to compile a c++ library on Android Studio,
> on Ubuntu 22.10, Clang 15.0.7, with CFlag '-no-integrated-as'.
> I think I experience the issue here described
> /usr/bin/as: unrecognized option '-EL'
> (this also setting manually the path of
> aarch64-linux-android-as)
> I've tried to downgrade to Clang 11 but no luck with
> this also. (it compiles x86 and x86_64, but not
> armeabi and arm64 for the same cause)
> Is there a way to set the prefix at Android Studio
> level instead than manually in the mk of
> all the libraries? Or is there a solution
> for the latest version of Ubuntu ?
> I'm not sure if this is the right place to
> ask this question, but perhaps you are able to
> give some suggestions.

Hi Thomas,
This mailing list was used for discussion building the linux kernel with cl=
ang.
https://clangbuiltlinux.github.io/
We now use llvm@lists.linux.dev instead and this ML is inactive.

I've never used Android Studio, so I can't help you with UI questions,
but I know that the (host) assembler (probably x86_64) is complaining
that it doesn't recognize the command line flag (`-EL`; endianness
little) because x86_64 is not bi-endian (it's always LE) and that
assembler flag was probably meant for the target assembler (aarch64?
arm?).  That's a familiar failure when clang is not given a target
triple on the command line, like `--target=3Daarch64-linux-gnu`, during
cross compilation. I'm guessing you'd want a triple with `android`
somewhere in the string.

Hope this helps!

> Thanks a lot
>
>
> On Tuesday, 21 July 2020 at 08:20:05 UTC+4 Fangrui Song wrote:
>>
>> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
>> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
>> GCC_TOOLCHAIN_DIR will be set to /usr/bin/. --prefix=3D will be set to
>> /usr/bin/ and Clang as of 11 will search for both
>> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>>
>> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
>> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
>> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>>
>> To better model how GCC's -B/--prefix takes in effect in practice, newer
>> Clang (since
>> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293c=
af6ac76ffd90)
>> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
>> instead of /usr/bin/aarch64-linux-gnu-as.
>>
>> Set --prefix=3D to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
>> appropriate cross compiling GNU as (when -no-integrated-as is in
>> effect).
>>
>> Reported-by: Nathan Chancellor <natecha...@gmail.com>
>> Signed-off-by: Fangrui Song <mas...@google.com>
>> Reviewed-by: Nathan Chancellor <natecha...@gmail.com>
>> Tested-by: Nathan Chancellor <natecha...@gmail.com>
>> Tested-by: Nick Desaulniers <ndesau...@google.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
>> ---
>> Changes in v2:
>> * Updated description to add tags and the llvm-project commit link.
>> * Fixed a typo.
>> ---
>> Makefile | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 0b5f8538bde5..3ac83e375b61 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | gr=
ep clang),)
>> ifneq ($(CROSS_COMPILE),)
>> CLANG_FLAGS +=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
>> GCC_TOOLCHAIN_DIR :=3D $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> -CLANG_FLAGS +=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)
>> +CLANG_FLAGS +=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> GCC_TOOLCHAIN :=3D $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>> endif
>> ifneq ($(GCC_TOOLCHAIN),)
>> --
>> 2.28.0.rc0.105.gf9edc3c819-goog
>>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/6576b5c0-ff42-4d12-be68-bc66dce268a5n%40googlegroups.co=
m.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DQDy02%3DUSKKYQAr16M2YWVFwcZutEWmFWpJcS7sZemxg%4=
0mail.gmail.com.
