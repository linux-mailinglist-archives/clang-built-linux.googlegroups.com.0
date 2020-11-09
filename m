Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBI4HU76QKGQE5RMQ4EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA572AC8A5
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 23:33:08 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id x28sf1213347oog.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 14:33:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604961187; cv=pass;
        d=google.com; s=arc-20160816;
        b=rop9vZktaPkg5tOeQTtSLbasubAr1N9OMTHoilUw44aH10wdZZpESULXULEk5YsI6w
         Gl6njAIXapmaogC7luSgLIsDlbsgoaLEuc7Re/xJ/d6zs7hPo/0sHvm9h5XwY6OTUIM1
         YKcdT9/OQ25Qn+PFYEI81dcWOiNu+3NcP7BUpE6OwnCULYb/M0qacQb79SzTycpuiaUk
         yzLEPuoPuvBvscvFct68WMUx8ABNVunsrx3qBokq/40WkHcQ/BbJJe/JDJYrj1+f/alo
         pYo70ye9L1lqq/YMvMJDsHWUm3lIwdu4qi5U/U+UtXsxsWfttwc1IId+H6OxjGFTy2wQ
         nkcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zAgri47mK+TMEB/gT4z+BRk570kk76qYm9u5g8mukpg=;
        b=CIRtez6YZUUtqD5aGDOJ9dzO0Chw+QQPrbKMRl2hIEABNQ9QTxrN7Z6PnpotFjBdQa
         kSLLzGh9eevVQ25h35Q9Enwu0S8VvmN2c3Cr3qJc5yeHXkW+A6AY4rA2L2/rIatBt0IN
         qcxAF19QMXhsmLxiVgsrCc9J+ydHijpGhUQw1PNzt9mnSJBmqeXbH8DRDuDNP8Mc9QKa
         CcIFy26+wrO1ZO1me2uUGTy3Gk963FKtp+2NbZjAPcGRLRdrwTCvL5m/8QERons84JhP
         vviXGMe4QcAYDNlwFymjNIFDls/Yc11LBu30yKR82ze/pcp8xEZPkhU7snZ6hDJ7sFu8
         F+7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qoYNAzOx;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zAgri47mK+TMEB/gT4z+BRk570kk76qYm9u5g8mukpg=;
        b=VgB/VQUjbuf6e878+1H0f9Knh84wIHlTsOmXOy1lPPHMRUJ/QBptaD+2HoFTcKVmdP
         hxIETEAwUg/QSSdY1tlvB//VG1502lRLD960r0vbE+38zQF2k3sBdVYOIP50Fb5795/g
         TDVhWEXEaQp2XhnHMoslnTMdFO+2YzBas/JuWqqzDs4fWJunEZiwgd155Yp5gPUMjPuL
         GRmc5QrYhI1tPAe1ulficmqNwHuh9tEWAa2fB/Y6ykTmNVOhgKb2nJAlZh2uzLkodqqL
         wa4nUSGPTw0uXv5KA4FicbIxp+Z/FXa8+FYsYiBfY6VXTWvmdTV/qPdcnxgQfq3vZcpO
         g3OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zAgri47mK+TMEB/gT4z+BRk570kk76qYm9u5g8mukpg=;
        b=rTOQl0p7489cJ3LzGcamHTrhMHAmNVb8MdEvx+gxcpGFLNzCZaMqWED0zujRJ+WHui
         WSMpscPiLaQnQubZNiTCLOihoNv28Yw9pT0HVGQJy3N4KvJMp2F9zFrKNWo+d6HUpiXJ
         M052dWL9KE7F0MMhdIun6+MZFwk+BKD8OnxUXDZozboyR+mXU0qumWHC2Oy7h4iUJ3Nv
         wsOA3pgaLsoLDE8kKkxa7l/g0FSvnehmsiRDN8Tox6rg1ud5yyFY/FdRCLWra845jN6l
         og3JRH24f1iQhS3HoyAVJ+Pm17m6+cDmGMp9OmZZqmkf+F4NpUFpQgPMWBLTtKJShVjC
         jkKA==
X-Gm-Message-State: AOAM530ABf0EC4Juuzs5mifS/QJM+q7dOc6jFDSa4c7WPMYijVhcWa2D
	vMMgRphFjx2EIQx62Qa2u+k=
X-Google-Smtp-Source: ABdhPJyT9AyaVFWz9a/7xgigBx8vxaL6NR5mDfH4qLk5Rn2fnndGU1A2txgEKxWnCD5SK/8a+YYPDw==
X-Received: by 2002:a9d:682:: with SMTP id 2mr12509198otx.317.1604961187595;
        Mon, 09 Nov 2020 14:33:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6b0f:: with SMTP id g15ls2539980otp.0.gmail; Mon, 09 Nov
 2020 14:33:07 -0800 (PST)
X-Received: by 2002:a05:6830:11:: with SMTP id c17mr12204420otp.304.1604961187182;
        Mon, 09 Nov 2020 14:33:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604961187; cv=none;
        d=google.com; s=arc-20160816;
        b=AUVMeQzVtHv/U/zRfXt0E3978R0Fhc1TVSlqxBxgonLv6WKu6MeZQjUcQfWxSfovIP
         F6pw2TA+hSY1/hqnl7DZNB0O1Q4Fq/W08zOo99raZSDy0LDSwDWqvtv1iRIsiavktZ5d
         myU2v3FWYMfywn+g4zXW+hZ+bNNUBtCzWBU9Id6nhfEhekiYEkIxgPR3kzD6NZCJPE+S
         N/LbiWPuAUMjbov30R2BK9g6wxFD+mF4W66eHe3jrhwUYNpZTnVoPE5DvJ9Kt9Nl048E
         P6rb+M2uwwvT4W6ssifByTevnpCeCV3ZsRDI3BqkrZsaocaMfF1FZwFbdpBxtmMFKFNF
         tDOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M0fakRpM+IsDGVvXAi3ku9gHrHB+HaxxzB+qqFS4sfQ=;
        b=FQy+vBsayxC8YLQCgCsS7/Z8L/RyTPFjST4kgY9fL7O1NVQfcIGq+Qde5ZVnn0RBDY
         w0c7bFbz+aBvOgyh/jEbXDuR2Kkpc8XSfg3x7OeL6wHkQckt+cWlAKsmHvGir51fyllL
         Px9OWg6N0M0EgR1YyiPiO7zWXwk0YFwfLSPfZBvD2kgSY7qxxfNzpEHrDxd9C7O3aOa/
         pmyFeYAQP7lZcA4BVUcLinbXeUgw12/h38JZWYUiklry3yOtfTsXCM2+A09iJsR1fede
         YH5LHuQDmydOXAlYoGdyXf8ZUkEZ7pgJXGOkshcXIKJ/Ib/R4s3AyWhUoVYLqIX8OgLZ
         Oebg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qoYNAzOx;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e22si1029578oti.2.2020.11.09.14.33.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 14:33:07 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id x15so4623600pll.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 14:33:07 -0800 (PST)
X-Received: by 2002:a17:902:59cf:b029:d7:e216:9260 with SMTP id
 d15-20020a17090259cfb02900d7e2169260mr5572428plj.74.1604961186143; Mon, 09
 Nov 2020 14:33:06 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com>
In-Reply-To: <20201109183528.1391885-1-ndesaulniers@google.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 14:32:55 -0800
Message-ID: <CA+SOCLKc6avnZnLA9uQT=JZ6AOe-37AEKeYfb7VA7xvuXNhv_Q@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000615cc205b3b4253b"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qoYNAzOx;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000615cc205b3b4253b
Content-Type: text/plain; charset="UTF-8"

Thanks for the patch! Compile-tested on mainline (with defconfig) and
ChromeOS kernel 5.4 (with olddefconfig) and both worked.

On Mon, Nov 9, 2020 at 10:35 AM 'Nick Desaulniers' via Clang Built Linux <
clang-built-linux@googlegroups.com> wrote:

> Clang's integrated assembler produces the warning for assembly files:
>
> warning: DWARF2 only supports one section per compilation unit
>
> If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
> assembly sources (it is still emitted for C sources).  This will be
> re-enabled for newer DWARF versions in a follow up patch.
>
> Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
>
> Cc: <stable@vger.kernel.org>
> Link: https://github.com/ClangBuiltLinux/linux/issues/716
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index f353886dbf44..7e899d356902 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,7 +826,9 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> +ifneq ($(LLVM_IAS),1)
>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> +endif
>
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS   += -gdwarf-4
> --
> 2.29.2.222.g5d2a92d10f8-goog
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google.com
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKc6avnZnLA9uQT%3DJZ6AOe-37AEKeYfb7VA7xvuXNhv_Q%40mail.gmail.com.

--000000000000615cc205b3b4253b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the patch! Compile-tested on mainline (with def=
config) and ChromeOS kernel 5.4 (with olddefconfig) and both worked.=C2=A0<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Nov 9, 2020 at 10:35 AM &#39;Nick Desaulniers&#39; via Clang Built L=
inux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com">clang-built-=
linux@googlegroups.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Clang&#39;s integrated assembler produces the warning=
 for assembly files:<br>
<br>
warning: DWARF2 only supports one section per compilation unit<br>
<br>
If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for<br>
assembly sources (it is still emitted for C sources).=C2=A0 This will be<br=
>
re-enabled for newer DWARF versions in a follow up patch.<br>
<br>
Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with<br>
LLVM=3D1 LLVM_IAS=3D1 for x86_64 and arm64.<br>
<br>
Cc: &lt;<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">stable@=
vger.kernel.org</a>&gt;<br>
Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/716" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/=
issues/716</a><br>
Reported-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" target=
=3D"_blank">dima@golovin.in</a>&gt;<br>
Reported-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Suggested-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" target=
=3D"_blank">dima@golovin.in</a>&gt;<br>
Suggested-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.=
com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Suggested-by: Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" targ=
et=3D"_blank">sedat.dilek@gmail.com</a>&gt;<br>
Reviewed-by: Fangrui Song &lt;<a href=3D"mailto:maskray@google.com" target=
=3D"_blank">maskray@google.com</a>&gt;<br>
Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.c=
om" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
---<br>
=C2=A0Makefile | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/Makefile b/Makefile<br>
index f353886dbf44..7e899d356902 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -826,7 +826,9 @@ else<br>
=C2=A0DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -g<br>
=C2=A0endif<br>
<br>
+ifneq ($(LLVM_IAS),1)<br>
=C2=A0KBUILD_AFLAGS=C2=A0 +=3D -Wa,-gdwarf-2<br>
+endif<br>
<br>
=C2=A0ifdef CONFIG_DEBUG_INFO_DWARF4<br>
=C2=A0DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -gdwarf-4<br>
-- <br>
2.29.2.222.g5d2a92d10f8-goog<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google=
.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgi=
d/clang-built-linux/20201109183528.1391885-1-ndesaulniers%40google.com</a>.=
<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLKc6avnZnLA9uQT%3DJZ6AOe-37AEKeYfb7VA7=
xvuXNhv_Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKc6avnZnLA9uQT%3DJZ6AO=
e-37AEKeYfb7VA7xvuXNhv_Q%40mail.gmail.com</a>.<br />

--000000000000615cc205b3b4253b--
