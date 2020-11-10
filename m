Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBLWJU76QKGQEB325NRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 341172AC9E2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 01:54:08 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id w79sf7979746pfc.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 16:54:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604969646; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8IOOHyFiMfbzW3mgAgcftt1lXyx6SN7ztFqB3LBxhjrl9Lt54zrQQXV20ecN8j+Vy
         dX4RLqW21e3rBNUw3NrT8XQd/ta1JBEHVBre/rzAi56AEry3XKDd9v8Xb7B14G2QZWzd
         bIgH5hfhMWxbk9yZ1sJ8cWNvB4ZXTpH0eRuZnzdDuU6kMPmAbwQ3r0LhC3/E5xYFsGWx
         9xbaYjbFvra3P5gUCbsIC0t3w55ZlfTg9NEl7Ji1sJHzPGfDM51q/ueG8sZAOgQCMG20
         qSzR5CLSn5DFhpOzByDXKuGQ6eAjPw1LszVS6RFuWgCNlGKnKkYB/bUtfZ2qEJ+OhHOp
         hRPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yeAVdMkDy9XS6FoE7gky7RXKIlsJUjr1TjOAoHYtrt4=;
        b=B93yDLiBN6ep0huZJt6iyMVsXel7et31ZHPA9WyykKDlAhEyhgOivbq7zDEMPiPqLq
         GcSzKTfDJ4iNERd68xBL37Hj/nRJ+S4WbJdug8MAzbznmjppNz/qTFKMLu216soPBEt0
         FA6QEQRsbZ5ezJi29JQ7CNhkQlqttLitYqmYzcaLR/CR0Jm8/ptd4jRSibeeSK6C2WbB
         ItYpxMmyWbTIVRhWM3ARdwc6tfe4O9aY1PfEe5VP7J9jPr0srBVhz4LnEV2XyE0lrrjT
         hYeZeb7Ah3tD/3x0ZzoP40lTB+hFiNWa/SaQpoobarQUuMm5jbjDpqxSed48ZVowA3fM
         6a8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=boNa5wvJ;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yeAVdMkDy9XS6FoE7gky7RXKIlsJUjr1TjOAoHYtrt4=;
        b=WSJAidgCz2eTN+zPpwW0iy/YlJr6JLNtcKRDAeQnAeYUV4c+L8gnXDRAzrjr71HPhr
         b7ueaNEKIM+OacllBY2PkEhPbH0iWuGaSM7AA2ETENo5XzOh0DgR4vvNWKXbBvrdX/6B
         /V3mZHFuM3Zz7bM3nNffgbh7zZO/4Wlp6nnlV1ddZSnaTsZ4rZzntQiSLqyQvmK0/MbF
         4OrYZvuhyQm+LCM0pAeBlw8rbMswk/lVv2/3Hv5MwDsSs19mrVmc6agehnsb1ec6stMa
         89GEb8SjSZhl6HnQasVCKOuYWCh7aOpGpY9Mlxt2T3eSNds3SYxPqbcJq1kPH1osAObW
         TyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yeAVdMkDy9XS6FoE7gky7RXKIlsJUjr1TjOAoHYtrt4=;
        b=qZmmkF/thjljHdNDwim807E1Zn1hKNi8doAkBdaEmNlGkdRJNeiz01BTniim/BWSF3
         SKkIMpXPzoOVhS082R80lHNiGXYibLYwOAzlWAEIxfvJT8b5IY6jKaL+Fc5nb3mChM9g
         CBiux7vC5HRb/17pEqftCF7oQ+8mcAGKLNZiZvCL1u8tWLpO+gmboQd+hJLv0+YmUl0W
         47WZWVQqII97UnsLX7g7xV6q13yNBT7Kd4LRdkCvn2jFX7Gh9u31oYB0yoRasvrSBtfI
         3wR3Qe73u37SHPrzyp7DmcxT/RRfvYbEcacKyGObpXmwZjCw29aZHhk4gBpdurag01lf
         iUMw==
X-Gm-Message-State: AOAM532bic7TH0sePtVFkJ+0Ctuk9caMaK8Jlqv261yhrwUg3CCbY2ZY
	0ykLLAE18m2TkvEpIMNmWeY=
X-Google-Smtp-Source: ABdhPJzFs3pWuitj613WZHfD4XGN0BA4Nyscu+oTfGob/8/xYzM3TWwOHSpTL5bNZoNmMHwTE3zMfg==
X-Received: by 2002:a17:90a:a58e:: with SMTP id b14mr1902863pjq.203.1604969646444;
        Mon, 09 Nov 2020 16:54:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d98:: with SMTP id v24ls4442372plo.4.gmail; Mon, 09
 Nov 2020 16:54:06 -0800 (PST)
X-Received: by 2002:a17:90a:b797:: with SMTP id m23mr2067408pjr.153.1604969645910;
        Mon, 09 Nov 2020 16:54:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604969645; cv=none;
        d=google.com; s=arc-20160816;
        b=OpMBxohiGR2Jpa3GsHm3GafTL3roY5DF2izuZ9tTx9K2xnhjDIQv+2rGQoOrqlPHrx
         nDS+72THcRwkpLl8m6r2Fu/VPhLsNd995T1Ugx3C/Yygj+jx2AAH0pTy+vZmUpqQtDyu
         3aVYXjlYA0eH2IOR4z0iM2vEs+UqqSpfbAghyUooKNXk6nQorRco+98kukk/fuZMxzkk
         5Si9nxlIT+JBSrcw68gtx1xtGEZEHg/13QqioIj3ngAZ7SKU51CWG63KkqpOC38CiQi6
         HJiTRQFRiz4exn/9eD0lgzJL2IM8wpR2+r1N+5SJzSzfwlq41hVQzNF5RrduIgstnzUv
         9MzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=f8PgJeeabMVH6CaXhsCE7RrivwpA+Rv7/xFt+MdEXT4=;
        b=ufFPqFJ9CUK9cXsnBYBs069WkYaklADujkxLCqOPwEX8G4ttphA9lxr5XjZmzhu1JP
         oAC30CFMWioBZjPpsVHhyH3+2/xN2OMMP11UuXmG8RiOgITU0vQnOdAhqWaahlyDC341
         LNBmqpABOgp6L5BTFchvRBvfwuxQ3zn1mCmRQYvMkVgjdicjpNjlasxSqmdJp23glrJd
         at9boep5az6joQJhvr7rUtzHRm7JfzJHyHwdQ8YbMhXWvz/1sqM2dBjswzO3X4wxrngm
         DDOfr+EIH2yEOM/KWlBGni4ReLDQqQHyipahRk8lOtu4w9Ki/e9wozoViPvx+5ndpSYS
         Di6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=boNa5wvJ;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id mu3si96322pjb.3.2020.11.09.16.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 16:54:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id 62so8617900pgg.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 16:54:05 -0800 (PST)
X-Received: by 2002:a62:8749:0:b029:18a:e2c8:a089 with SMTP id
 i70-20020a6287490000b029018ae2c8a089mr15810275pfe.13.1604969645366; Mon, 09
 Nov 2020 16:54:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdndZRv+_FaNFUBtT=zEPG3mh2cb9vfRFCsU5Dus4zzcEw@mail.gmail.com>
In-Reply-To: <CAKwvOdndZRv+_FaNFUBtT=zEPG3mh2cb9vfRFCsU5Dus4zzcEw@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 16:53:54 -0800
Message-ID: <CA+SOCLKnOZtXk5oqVR-L6qf9XkjjYwT6Mp9AsT6d2Vav93K0fw@mail.gmail.com>
Subject: Re: LLVM=1 LLVM_IAS=1 ARCH=arm (32b) state of the union
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Luis Lozano <llozano@google.com>, Stephen Hines <srhines@google.com>, 
	Alistair Delva <adelva@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>, Peter Smith <Peter.Smith@arm.com>, 
	Doug Anderson <dianders@google.com>, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Mark Brown <broonie@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/alternative; boundary="00000000000096dfd005b3b61d45"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=boNa5wvJ;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::52f
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

--00000000000096dfd005b3b61d45
Content-Type: text/plain; charset="UTF-8"

Thanks for the update Nick! I will pay attention to the list of issues and
take a look at those that don't have a fix yet.

Cheers,
Jian

On Mon, Nov 9, 2020 at 4:02 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Hey Jian,
> I was able to get 32b ARM allyesconfig kernel to assemble with Clang's
> integrated assembler (IAS).  Here's the list of bugs I hit:
>
> 1. LLD doesn't support BE. Patch exists, not immediately related to
> LLVM_IAS=1 but hurts testing `LLVM=1 LLVM_IAS=1`, patch sent:
> https://github.com/ClangBuiltLinux/linux/issues/965,
>
> https://lore.kernel.org/lkml/20201109224713.16308-1-ndesaulniers@google.com/T/#u
> .
>
> 2. LLVM_IAS doesn't support IWMMXT, patch sent (needs BE testing/revision):
> https://github.com/ClangBuiltLinux/linux/issues/975,
> https://lore.kernel.org/lkml/20201107001056.225807-1-jiancai@google.com/
>
> 3. STB_GLOBAL/STB_WEAK rebinding failure. patch sent:
>
> https://lore.kernel.org/linux-arm-kernel/20201105181542.854788-1-maskray@google.com/
> ,
> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9022/1
>
> 4. -z relro, again like #1 LLD specific, hinted at:
>
> https://lore.kernel.org/linux-arm-kernel/20201030013228.GA2519055@ubuntu-m3-large-x86/
>
> 5. one last adrl in arch/arm/boot/compressed/head.S. Doesn't exist in
> today's linux-next, should appear tomorrow as per:
>
> https://lore.kernel.org/linux-arm-kernel/CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com/T/#t
>
> 6. .march/-Wa,-march= cases which can be fixed in kernel sources,
> https://github.com/ClangBuiltLinux/linux/issues/1195,
> https://github.com/ClangBuiltLinux/linux/issues/957
>
> 7. IAS not accepting multiple strings in .ascii directive.  This one
> looks like an IAS bug to me.
> https://github.com/ClangBuiltLinux/linux/issues/1196 probably going to
> need to fix this as KGDB selects KPROBES, so Doug won't be able to use
> KGDB without this being fixed.
>
> Note I'm testing moving Android over to use LLVM_IAS=1 in
> https://android-review.googlesource.com/c/kernel/common/+/1493456, so
> the above are blockers for Android.
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKnOZtXk5oqVR-L6qf9XkjjYwT6Mp9AsT6d2Vav93K0fw%40mail.gmail.com.

--00000000000096dfd005b3b61d45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the update Nick! I will pay attention to t=
he list of issues and take a look at those that don&#39;t have a fix yet.<b=
r></div><div><br></div><div>Cheers,</div><div>Jian</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020=
 at 4:02 PM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com"=
>ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hey Jian,<br>
I was able to get 32b ARM allyesconfig kernel to assemble with Clang&#39;s<=
br>
integrated assembler (IAS).=C2=A0 Here&#39;s the list of bugs I hit:<br>
<br>
1. LLD doesn&#39;t support BE. Patch exists, not immediately related to<br>
LLVM_IAS=3D1 but hurts testing `LLVM=3D1 LLVM_IAS=3D1`, patch sent:<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/965" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/issues/9=
65</a>,<br>
<a href=3D"https://lore.kernel.org/lkml/20201109224713.16308-1-ndesaulniers=
@google.com/T/#u" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.=
org/lkml/20201109224713.16308-1-ndesaulniers@google.com/T/#u</a>.<br>
<br>
2. LLVM_IAS doesn&#39;t support IWMMXT, patch sent (needs BE testing/revisi=
on):<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/975" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/issues/9=
75</a>,<br>
<a href=3D"https://lore.kernel.org/lkml/20201107001056.225807-1-jiancai@goo=
gle.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/lkml=
/20201107001056.225807-1-jiancai@google.com/</a><br>
<br>
3. STB_GLOBAL/STB_WEAK rebinding failure. patch sent:<br>
<a href=3D"https://lore.kernel.org/linux-arm-kernel/20201105181542.854788-1=
-maskray@google.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.ker=
nel.org/linux-arm-kernel/20201105181542.854788-1-maskray@google.com/</a>,<b=
r>
<a href=3D"https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=
=3D9022/1" rel=3D"noreferrer" target=3D"_blank">https://www.armlinux.org.uk=
/developer/patches/viewpatch.php?id=3D9022/1</a><br>
<br>
4. -z relro, again like #1 LLD specific, hinted at:<br>
<a href=3D"https://lore.kernel.org/linux-arm-kernel/20201030013228.GA251905=
5@ubuntu-m3-large-x86/" rel=3D"noreferrer" target=3D"_blank">https://lore.k=
ernel.org/linux-arm-kernel/20201030013228.GA2519055@ubuntu-m3-large-x86/</a=
><br>
<br>
5. one last adrl in arch/arm/boot/compressed/head.S. Doesn&#39;t exist in<b=
r>
today&#39;s linux-next, should appear tomorrow as per:<br>
<a href=3D"https://lore.kernel.org/linux-arm-kernel/CAMj1kXEC6TvkYScMPk0++6=
atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com/T/#t" rel=3D"noreferrer" target=
=3D"_blank">https://lore.kernel.org/linux-arm-kernel/CAMj1kXEC6TvkYScMPk0++=
6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com/T/#t</a><br>
<br>
6. .march/-Wa,-march=3D cases which can be fixed in kernel sources,<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1195" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/issues/=
1195</a>,<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/957" rel=3D"nore=
ferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/issues/9=
57</a><br>
<br>
7. IAS not accepting multiple strings in .ascii directive.=C2=A0 This one<b=
r>
looks like an IAS bug to me.<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1196" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/linux/issues/=
1196</a> probably going to<br>
need to fix this as KGDB selects KPROBES, so Doug won&#39;t be able to use<=
br>
KGDB without this being fixed.<br>
<br>
Note I&#39;m testing moving Android over to use LLVM_IAS=3D1 in<br>
<a href=3D"https://android-review.googlesource.com/c/kernel/common/+/149345=
6" rel=3D"noreferrer" target=3D"_blank">https://android-review.googlesource=
.com/c/kernel/common/+/1493456</a>, so<br>
the above are blockers for Android.<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLKnOZtXk5oqVR-L6qf9XkjjYwT6Mp9AsT6d2Va=
v93K0fw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKnOZtXk5oqVR-L6qf9XkjjYw=
T6Mp9AsT6d2Vav93K0fw%40mail.gmail.com</a>.<br />

--00000000000096dfd005b3b61d45--
