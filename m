Return-Path: <clang-built-linux+bncBCP75WXR6YEBBZ4U52RQMGQE6R7MWFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECE6721191
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jun 2023 20:46:01 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id af79cd13be357-75d44483fdesf43190885a.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jun 2023 11:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1685817960; x=1688409960;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=25uMq8qM7KKAk5ZtSeyer/Z14ablb0F0COyybkd3YP0=;
        b=dGbCwNFiEBElBC2Lid0Kcq+rWKvz8Mi7ISE8onpE8iVIs5oBFDoyFjaHcKOy1cIrLA
         LckCTVCcjajgxYTOlz856GQtAiS6+Fzx8z04II2IGdH50dZLGP4mGF0IRWGsrE3R4jVz
         ArbnmWC29EHhi5CPeofAPuOuv8g71fanw7bj1ouk0FtbcdREomYzqegtOxZNRcWUDAC2
         Rz8O1lcD6rGpSQUbkbO4Yco2G69I+HFTmWdBI1Ux8m7MKo3g8mirkopuErkCLdfjwSsy
         QtVc7CpuH2nIoSsqwbyQ3XYtrQFlo+kyYwVnjgug42+7n/P5+1By5LSEB/ADyXHeyOsw
         dFWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685817960; x=1688409960;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-sender:mime-version
         :subject:references:in-reply-to:message-id:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=25uMq8qM7KKAk5ZtSeyer/Z14ablb0F0COyybkd3YP0=;
        b=k3UU0wPFQw82ZyGvhUmuHnGPqMjFRlvhzwbhd/L0iwNlPnOJVlFU7FBXApPJuhZiS8
         Ep0Bc5T3BIrHNmaO85PHr8XS0BcSSz/zENluDBwzoqOqGQ32oVQZ9Sn+q7yql7E9Ss1E
         wtXlz1Gl9aPbQmQ4/cWyatYHy3sgjo2uF2iir6/hUGAk5X8mHCBDIX1hQKVbVkvIJnBV
         uQEEw17e3nOF0ZJ5uzAKzcMl0+6md8bbpvgdh4VfDcHxUTmXDBiYd0QtY33OPs+kDAD2
         qRSPag6Zq+mEppyDy30NDsThDDKi+sTcN7sZ4zL+au0Jlxsy/DmTB70+3bRxdV29YM38
         d3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685817960; x=1688409960;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-sender:mime-version:subject:references:in-reply-to
         :message-id:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=25uMq8qM7KKAk5ZtSeyer/Z14ablb0F0COyybkd3YP0=;
        b=KQdlumkpwvlg+aNjs1vnr6Vf+8D/T5e2BU4Cjw/E15Q5kujsQQnBm2vh13tF4BkzzR
         QgwLwVlHJk6kX3hwpZa0YM4PCUGi3o4itafvxxvl6PtTPcBumfFEBNB+kicng1PpNIN+
         b5ZU6q2IbFfx1hb/w4oy4btJwXPIon8gSt1xjOe2SbjYVVf1wu9R+YgHSPDdjnQL+auy
         yteoCiq9ZfZEbmVas7PPykMEJeUeAyg0D0+mN4fXtVDUFgubpVmRBfCUji8et76FdlRC
         qOe+l6uqgfL5GQsrz6XpArH788ewuNASEY57wfbG/ld1zpX6YLRbwkJ9hPKhxai5VRpl
         RQAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AC+VfDxqoH0+Kt7L2XbQklyYWZwPi3Ab14SAOJT47qKsj6+y9kDww2np
	oEbcd7znhtjVv3PfIBKVObw=
X-Google-Smtp-Source: ACHHUZ4ZV3hm03HSOOFozBAk+XgyM2it6PQlryDrAFSF0dvkC7xKtaPB5x8pSxwT5EZ3iTx9AqtWyw==
X-Received: by 2002:a05:6214:21aa:b0:623:68b1:7918 with SMTP id t10-20020a05621421aa00b0062368b17918mr1998241qvc.36.1685817959169;
        Sat, 03 Jun 2023 11:45:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4904:0:b0:3f8:3f:7349 with SMTP id e4-20020ac84904000000b003f8003f7349ls2171805qtq.1.-pod-prod-08-us;
 Sat, 03 Jun 2023 11:45:58 -0700 (PDT)
X-Received: by 2002:ac8:7fd5:0:b0:3f6:a725:25ad with SMTP id b21-20020ac87fd5000000b003f6a72525admr690492qtk.5.1685817958439;
        Sat, 03 Jun 2023 11:45:58 -0700 (PDT)
Date: Sat, 3 Jun 2023 11:45:57 -0700 (PDT)
From: Thomas-topway-it <thomas.topway.it@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <6576b5c0-ff42-4d12-be68-bc66dce268a5n@googlegroups.com>
In-Reply-To: <20200721041940.4029552-1-maskray@google.com>
References: <20200721041940.4029552-1-maskray@google.com>
Subject: Re: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
 cross compilation
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3806_353939331.1685817957638"
X-Original-Sender: thomas.topway.it@gmail.com
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

------=_Part_3806_353939331.1685817957638
Content-Type: multipart/alternative; 
	boundary="----=_Part_3807_578740421.1685817957638"

------=_Part_3807_578740421.1685817957638
Content-Type: text/plain; charset="UTF-8"

hello,  I'm trying to compile a c++ library on Android Studio,
on Ubuntu 22.10, Clang 15.0.7, with CFlag '-no-integrated-as'.
I think I experience the issue here described
/usr/bin/as: unrecognized option '-EL'
(this also setting manually the path of 
aarch64-linux-android-as)
I've tried to downgrade to Clang 11 but no luck with
this also. (it compiles x86 and x86_64, but not
armeabi and arm64 for the same cause)
Is there a way to set the prefix at Android Studio
level instead than manually in the mk of
all the libraries? Or is there a solution
for the latest version of Ubuntu ?
I'm not sure if this is the right place to
ask this question, but perhaps you are able to
give some suggestions.
Thanks a lot


On Tuesday, 21 July 2020 at 08:20:05 UTC+4 Fangrui Song wrote:

> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/. --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang (since
>
> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90
> )
> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> instead of /usr/bin/aarch64-linux-gnu-as.
>
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
>
> Reported-by: Nathan Chancellor <natecha...@gmail.com>
> Signed-off-by: Fangrui Song <mas...@google.com>
> Reviewed-by: Nathan Chancellor <natecha...@gmail.com>
> Tested-by: Nathan Chancellor <natecha...@gmail.com>
> Tested-by: Nick Desaulniers <ndesau...@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> ---
> Changes in v2:
> * Updated description to add tags and the llvm-project commit link.
> * Fixed a typo.
> ---
> Makefile | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..3ac83e375b61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep 
> clang),)
> ifneq ($(CROSS_COMPILE),)
> CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)
> +CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> GCC_TOOLCHAIN := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> endif
> ifneq ($(GCC_TOOLCHAIN),)
> -- 
> 2.28.0.rc0.105.gf9edc3c819-goog
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6576b5c0-ff42-4d12-be68-bc66dce268a5n%40googlegroups.com.

------=_Part_3807_578740421.1685817957638
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hello,=C2=A0 I'm trying to compile a c++ library on Android Studio,<div>on =
Ubuntu 22.10, Clang 15.0.7, with CFlag=C2=A0'-no-integrated-as'.</div><div>=
I think I experience the issue here described</div><div>/usr/bin/as: unreco=
gnized option '-EL'<br /></div><div>(this also setting manually the path of=
=C2=A0</div><div>aarch64-linux-android-as)</div><div>I've tried to downgrad=
e to Clang 11 but no luck with</div><div>this also. (it compiles x86 and x8=
6_64, but not</div><div>armeabi and arm64 for the same cause)<br />Is there=
 a way to set the prefix at Android Studio</div><div>level instead than man=
ually in the mk of</div><div>all the libraries? Or is there a solution</div=
><div>for the latest version of Ubuntu ?</div><div>I'm not sure if this is =
the right place to</div><div>ask this question, but perhaps you are able to=
</div><div>give some suggestions.</div><div>Thanks a lot</div><div><br /></=
div><div><div><br /></div></div><div class=3D"gmail_quote"><div dir=3D"auto=
" class=3D"gmail_attr">On Tuesday, 21 July 2020 at 08:20:05 UTC+4 Fangrui S=
ong wrote:<br/></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0=
 0 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">Wh=
en CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
<br>$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
<br>GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix=3D will be set to
<br>/usr/bin/ and Clang as of 11 will search for both
<br>$(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
<br>
<br>GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
<br>$(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
<br>$(prefix)aarch64-linux-gnu/$needle rarely contains executables.
<br>
<br>To better model how GCC&#39;s -B/--prefix takes in effect in practice, =
newer
<br>Clang (since
<br><a href=3D"https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166=
f479706b293caf6ac76ffd90" target=3D"_blank" rel=3D"nofollow" data-saferedir=
ecturl=3D"https://www.google.com/url?hl=3Den-GB&amp;q=3Dhttps://github.com/=
llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90&amp;sourc=
e=3Dgmail&amp;ust=3D1685903748585000&amp;usg=3DAOvVaw0zJi9lRUK8Uy5q9jvL_7j-=
">https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293ca=
f6ac76ffd90</a>)
<br>only searches for $(prefix)$needle. Currently it will find /usr/bin/as
<br>instead of /usr/bin/aarch64-linux-gnu-as.
<br>
<br>Set --prefix=3D to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
<br>(/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
<br>appropriate cross compiling GNU as (when -no-integrated-as is in
<br>effect).
<br>
<br>Reported-by: Nathan Chancellor &lt;<a href data-email-masked rel=3D"nof=
ollow">natecha...@gmail.com</a>&gt;
<br>Signed-off-by: Fangrui Song &lt;<a href data-email-masked rel=3D"nofoll=
ow">mas...@google.com</a>&gt;
<br>Reviewed-by: Nathan Chancellor &lt;<a href data-email-masked rel=3D"nof=
ollow">natecha...@gmail.com</a>&gt;
<br>Tested-by: Nathan Chancellor &lt;<a href data-email-masked rel=3D"nofol=
low">natecha...@gmail.com</a>&gt;
<br>Tested-by: Nick Desaulniers &lt;<a href data-email-masked rel=3D"nofoll=
ow">ndesau...@google.com</a>&gt;
<br>Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1099" =
target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.goog=
le.com/url?hl=3Den-GB&amp;q=3Dhttps://github.com/ClangBuiltLinux/linux/issu=
es/1099&amp;source=3Dgmail&amp;ust=3D1685903748585000&amp;usg=3DAOvVaw2TbOr=
IIWm33gTTVPA6nDDk">https://github.com/ClangBuiltLinux/linux/issues/1099</a>
<br>---
<br>Changes in v2:
<br>* Updated description to add tags and the llvm-project commit link.
<br>* Fixed a typo.
<br>---
<br> Makefile | 2 +-
<br> 1 file changed, 1 insertion(+), 1 deletion(-)
<br>
<br>diff --git a/Makefile b/Makefile
<br>index 0b5f8538bde5..3ac83e375b61 100644
<br>--- a/Makefile
<br>+++ b/Makefile
<br>@@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2&gt;&amp;1 | head -=
n 1 | grep clang),)
<br> ifneq ($(CROSS_COMPILE),)
<br> CLANG_FLAGS	+=3D --target=3D$(notdir $(CROSS_COMPILE:%-=3D%))
<br> GCC_TOOLCHAIN_DIR :=3D $(dir $(shell which $(CROSS_COMPILE)elfedit))
<br>-CLANG_FLAGS	+=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)
<br>+CLANG_FLAGS	+=3D --prefix=3D$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
<br> GCC_TOOLCHAIN	:=3D $(realpath $(GCC_TOOLCHAIN_DIR)/..)
<br> endif
<br> ifneq ($(GCC_TOOLCHAIN),)
<br>--=20
<br>2.28.0.rc0.105.gf9edc3c819-goog
<br>
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/6576b5c0-ff42-4d12-be68-bc66dce268a5n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/6576b5c0-ff42-4d12-be68-bc66dce268a5n%40googleg=
roups.com</a>.<br />

------=_Part_3807_578740421.1685817957638--

------=_Part_3806_353939331.1685817957638--
