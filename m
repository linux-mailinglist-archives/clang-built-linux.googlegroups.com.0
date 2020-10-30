Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBL6R5X6AKGQE5I5MCTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7877E29FA62
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:13:21 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id u4sf3349712pgg.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 18:13:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604020400; cv=pass;
        d=google.com; s=arc-20160816;
        b=uvpqFK8NE8TxL4cm7CfZTlA6TwoS24e4pElcyQHZK8ZO+XQ04cxs9dHy71TuT+wau6
         SaNCjxpFIv2o/rUqnA1ps7XaTJJkuCeKeVIooqY3mVj4pp4YXCZz31Ua6u8SrgdGnbMN
         +eZGQDM5cWoPsigE+SxFP7LHytVlkG+jVly3jMr47p5gmT8dKIIreenEyx9YAEPbzwb7
         7DPBR/kbpInYjszf8s0aOaS9TdZSjoaD5GvUM2VNqcsbKKhB3x1MBxOgG7pkVfgtJ9TV
         hcQEH8+7o7OTKYdhJRNskOuTEGCIenobUWAAH/mdQkASKGAFTuLfmV2r1BvyujbSqK6t
         bwIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F4gwMecTyFc6wcGK0421iplcen8tH32PgH5Eq0Q2iG4=;
        b=x/w5F/2bR82uJDnu2HlL7/8CzEXNmPJR2p4Bv+T86EqDqaFS0xFjf3o3tzOhW+x2zp
         5VRTfwFyEzmiWeqYgtsWr67sLDlipAreG7EXQlJWZTpAe1AxuDosL4zQpxfdNFtNKkDJ
         eRnF7O+1Pw+ChcCCX4jWb8tLpAZxyAJXHOU2VBWTwM8ZYQplJO9IO1DALLBiKqJ3NymP
         aXYNNfJD7Le3T7Yr+dAEayu6OXr7pvr9+pwWfbgP+wQmBVBBf2CcUR9DqT0tYpSk0kro
         20rZZeoE+iCFVDLQrlR5YIdCKHDd5FUDuhmL12atGNgjxHzpoJWh2Y0y68wygC2xrF06
         HyyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uVKosCSK;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F4gwMecTyFc6wcGK0421iplcen8tH32PgH5Eq0Q2iG4=;
        b=l6jpHez7V3h6/f0OSJXAauPWc6dS6mlTZhMYn8ZmlSWNY/BBPnMrmaXrEZZXWISa8S
         tWixaOiJgW4r0O+vmwI84dpoxo+y6236T2VMe13PREeQM2Ne1iNh+/Lhuqt0j9VS+Lkv
         0Lbt21lfi20CbeofiZ6sJDVxsJvgODyYkBVvev5s8z4B46JmQDMQAp3jzLBP1e2bu0uq
         seu8RX2OIvQOzYPDZob055VwRNxmv3/Y7f4wWyD/iI3ApKq83GvmIZNZ7EHHmrQVGS8v
         JCfpBEeN3toGuygjc1cD0FI276DHtZMaoRCfSlC+ztYnVtguHqyl8OwR4VZsICsBfUHU
         tOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F4gwMecTyFc6wcGK0421iplcen8tH32PgH5Eq0Q2iG4=;
        b=HAZyOGC65aQEvHT90FXHCw/R1USbpuuecGd6XsGTuCzZolmvRVDK/hP4DZqlvMjgXW
         8Zgc9FqYSYm6RzgafMdSwpr+FE1i8xjrYqe5E6R6Ap9OPWIUnm3g2yzoXwDIWsM9cK4+
         VaPueiF1NMUNcXFxyUJFfaKptx2f5yZjuWG6yBYNMV/xsN2A7SIAzpvUtsGUAF0GqXro
         FJzXXLL/SS/jhBfpILaF/aejuIQfPkzwazhDy8RhGjPdhj11JDbDiPtMZsnr6ocOiolV
         +xBavqhgBYCidj2etfgws78aYdSDo9MTC+An6qXIsNaJGqGnE9c1FN0zw+K3wtD36hqW
         4FYg==
X-Gm-Message-State: AOAM531DTerlRWDt895UBNnzDqR3TZ+Lo0XziPbgIR2N+1dlfknIjtN9
	7qSOCMvI+eBMzDe5lO/gleo=
X-Google-Smtp-Source: ABdhPJzjGL9E7Cm23WZYxeRpbHU5Ox5GKtcfSi43Cn671Nb5R5/EFR3xuKpXWQQRt/9fg+qQfC95eg==
X-Received: by 2002:a17:90b:3113:: with SMTP id gc19mr1111354pjb.91.1604020399868;
        Thu, 29 Oct 2020 18:13:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7b05:: with SMTP id w5ls1667039pfc.11.gmail; Thu, 29 Oct
 2020 18:13:19 -0700 (PDT)
X-Received: by 2002:a62:f94d:0:b029:15c:f1a3:cd47 with SMTP id g13-20020a62f94d0000b029015cf1a3cd47mr6745795pfm.81.1604020399219;
        Thu, 29 Oct 2020 18:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604020399; cv=none;
        d=google.com; s=arc-20160816;
        b=UZJSPo/VDw7GBsQ9XAzlpBspywm9pv4Tnqy44TKt7t96QaLiJgdTWFUtkOz6TS4Mr8
         u8w19UVH2P2ZWYhQ+h8DfQvXQsD/8LlwOEA8pZdxAOjD1XOUN9JYlbn9DBoHpnTp/D0P
         GHScldorbk1wmWgoP0UpfxZwFMOIF1ONfK6v/h7N8d9N1hQoaVIAVkT1hhQ+YVf+5nAd
         2gltQJWA1x9VNI7aCdX2uqeNZlhyecRhU7eTxTPQ1bjSb41bDiqKfLbu+zuM7HG6hM+T
         7ZP+7JppnhBRHqhH+awLV61sigxGMlUquick23vFi3Jp/1CzYZeXJuVyebLtCaYgl8Lm
         +tIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=udzcO9VtBGQSzOGSNG9kLpO5CJU68gIfZdi5HwAnaNw=;
        b=g8Djeg4SVzdl9g6J/NyoghllY+m05HvFQIxmeIfHkgYk+nmrL1YvkYnrgAqG7pEKdI
         ECs0f7QGmhkGUpNMnJ/cgD0B6Y7BphsRNqPN2gASBFQicH+ZBrsCM3GJRwNbcXBSZxz0
         mAGSIanJ0tauYFdUx/g37t2F0MJzVav8EartWMl9g7GmVHUsvnJU3sXLWAYOPlNhwq4D
         LUWpz2vP8zeR2yYOX8Q0+o2oOON5yAu418G+fBvK6z7nS6MjRk1RKOhJpH4yBhe9YPzW
         BAS8FRCWrvpYStgDiuOQypVZ5L/1x/YPH3/i07mfw14FEnqZYsyznb7Tod5CCS/jissG
         SiJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uVKosCSK;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id l7si257515plt.3.2020.10.29.18.13.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 18:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id w65so3863536pfd.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 18:13:19 -0700 (PDT)
X-Received: by 2002:a63:7c56:: with SMTP id l22mr4783pgn.19.1604020398672;
 Thu, 29 Oct 2020 18:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com> <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm> <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
 <20201030004124.GG87646@sasha-vm>
In-Reply-To: <20201030004124.GG87646@sasha-vm>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 18:13:07 -0700
Message-ID: <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Sasha Levin <sashal@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="0000000000001410e105b2d91a3e"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uVKosCSK;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::431
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

--0000000000001410e105b2d91a3e
Content-Type: text/plain; charset="UTF-8"

Thanks @Nick Desaulniers <ndesaulniers@google.com>  and @Sasha Levin
<sashal@kernel.org> for the tips. For this particular change, it seems we
do not need to backport all the dependencies (if they have not been merged
into 5.4 stable). @Greg KH <gregkh@linuxfoundation.org>, please find the
custom backport as below. It has passed all the tests on ChromeOS (
http://crrev.com/c/2504570).

Thanks,
Jian


From 60891062750a39d8bba9710d500e381a26c11f75 Mon Sep 17 00:00:00 2001
From: Jian Cai <jiancai@google.com>
Date: Thu, 29 Oct 2020 17:49:39 -0700
Subject: [PATCH] crypto: x86/crc32c - fix building with clang ias

commit 44623b2818f4a442726639572f44fd9b6d0ef68c upstream

The clang integrated assembler complains about movzxw:

arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction
mnemonic 'movzxw'

It seems that movzwq is the mnemonic that it expects instead,
and this is what objdump prints when disassembling the file.

NOTE: this is a custom backport as the surrounding code has been
changed upstream.

Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with
PCLMULQDQ instruction")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
index d9b734d0c8cc..3c6e01520a97 100644
--- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
+++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
@@ -170,7 +170,7 @@ continue_block:

  ## branch into array
  lea jump_table(%rip), bufp
- movzxw  (bufp, %rax, 2), len
+ movzwq  (bufp, %rax, 2), len
  lea crc_array(%rip), bufp
  lea     (bufp, len, 1), bufp
  JMP_NOSPEC bufp
-- 
2.29.1.341.ge80a0c044ae-goog


On Thu, Oct 29, 2020 at 5:41 PM Sasha Levin <sashal@kernel.org> wrote:

> On Thu, Oct 29, 2020 at 04:45:52PM -0700, Nick Desaulniers wrote:
> >On Thu, Oct 29, 2020 at 4:36 PM Sasha Levin <sashal@kernel.org> wrote:
> >>
> >> On Thu, Oct 29, 2020 at 11:05:01AM -0700, Nick Desaulniers wrote:
> >> >Hi Jian,
> >> >Thanks for proactively identifying and requesting a backport of
> >> >44623b2818.  We'll need it for Android as well soon.
> >> >
> >> >One thing I do when requesting backports from stable is I checkout the
> >> >branch of the stable tree and see if the patch cherry picks cleanly.
> >>
> >> btw, an easy way to get an idea of possible dependencies is to look at
> >> the dependency repo :) For this commit on 5.4:
> >>
> >>
> https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c
> >
> >Why you guys never tell me this before? :P Very cool, how is the
> >dependency chain built? Is it built for every commit?
>
> git bisect run for each commit on each branch we have. I have a little
> stable-deps tool that looks something like this to make it easy:
>
> ver=$(make SUBLEVEL= kernelversion)
> cmt=$(git rev-parse $1)
>
> for i in $(curl -s
> https://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v$ver/$cmt
> | awk {'print $1'}); do
>          stable commit-in-tree $i
>          if [ $? -eq 1 ]; then
>                  continue
>          fi
>          git ol $i
> done
>
> --
> Thanks,
> Sasha
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3%3Dr5jrfA%40mail.gmail.com.

--0000000000001410e105b2d91a3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks=C2=A0<a class=3D"gmail_plusreply" id=3D"plusRe=
plyChip-1" href=3D"mailto:ndesaulniers@google.com" tabindex=3D"-1">@Nick De=
saulniers</a>=C2=A0 and=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyCh=
ip-2" href=3D"mailto:sashal@kernel.org" tabindex=3D"-1">@Sasha Levin</a>=C2=
=A0for the tips. For this particular=C2=A0change, it seems we do not need t=
o backport all the dependencies (if they have not been merged into 5.4 stab=
le).=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-0" href=3D"mailt=
o:gregkh@linuxfoundation.org" tabindex=3D"-1">@Greg KH</a>, please find the=
 custom backport as below. It has passed all the tests on ChromeOS (<a href=
=3D"http://crrev.com/c/2504570">http://crrev.com/c/2504570</a>).</div><div>=
<br></div><div>Thanks,</div><div>Jian</div><div><br></div><div><br></div>Fr=
om 60891062750a39d8bba9710d500e381a26c11f75 Mon Sep 17 00:00:00 2001<br>Fro=
m: Jian Cai &lt;<a href=3D"mailto:jiancai@google.com">jiancai@google.com</a=
>&gt;<br>Date: Thu, 29 Oct 2020 17:49:39 -0700<br>Subject: [PATCH] crypto: =
x86/crc32c - fix building with clang ias<br><br>commit 44623b2818f4a4427266=
39572f44fd9b6d0ef68c upstream<br><br>The clang integrated assembler complai=
ns about movzxw:<br><br>arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: er=
ror: invalid instruction mnemonic &#39;movzxw&#39;<br><br>It seems that mov=
zwq is the mnemonic that it expects instead,<br>and this is what objdump pr=
ints when disassembling the file.<br><br>NOTE: this is a custom backport as=
 the surrounding code has been<br>changed upstream.<br><br>Fixes: 6a8ce1ef3=
940 (&quot;crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ inst=
ruction&quot;)<br>Signed-off-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@a=
rndb.de">arnd@arndb.de</a>&gt;<br>Reviewed-by: Nathan Chancellor &lt;<a hre=
f=3D"mailto:natechancellor@gmail.com">natechancellor@gmail.com</a>&gt;<br>S=
igned-off-by: Herbert Xu &lt;<a href=3D"mailto:herbert@gondor.apana.org.au"=
>herbert@gondor.apana.org.au</a>&gt;<br>Signed-off-by: Jian Cai &lt;<a href=
=3D"mailto:caij2003@gmail.com">caij2003@gmail.com</a>&gt;<br>---<br>=C2=A0a=
rch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-<br>=C2=A01 file changed, 1 =
insertion(+), 1 deletion(-)<br><br>diff --git a/arch/x86/crypto/crc32c-pcl-=
intel-asm_64.S b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>index d9b734d=
0c8cc..3c6e01520a97 100644<br>--- a/arch/x86/crypto/crc32c-pcl-intel-asm_64=
.S<br>+++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S<br>@@ -170,7 +170,7 @=
@ continue_block:<br>=C2=A0<br>=C2=A0	## branch into array<br>=C2=A0	lea	ju=
mp_table(%rip), bufp<br>-	movzxw =C2=A0(bufp, %rax, 2), len<br>+	movzwq =C2=
=A0(bufp, %rax, 2), len<br>=C2=A0	lea	crc_array(%rip), bufp<br>=C2=A0	lea =
=C2=A0 =C2=A0 (bufp, len, 1), bufp<br>=C2=A0	JMP_NOSPEC bufp<br>-- <br>2.29=
.1.341.ge80a0c044ae-goog<br><br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 29, 2020 at 5:41 PM Sasha Levin=
 &lt;<a href=3D"mailto:sashal@kernel.org">sashal@kernel.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, Oct 29, =
2020 at 04:45:52PM -0700, Nick Desaulniers wrote:<br>
&gt;On Thu, Oct 29, 2020 at 4:36 PM Sasha Levin &lt;<a href=3D"mailto:sasha=
l@kernel.org" target=3D"_blank">sashal@kernel.org</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Oct 29, 2020 at 11:05:01AM -0700, Nick Desaulniers wrote:<=
br>
&gt;&gt; &gt;Hi Jian,<br>
&gt;&gt; &gt;Thanks for proactively identifying and requesting a backport o=
f<br>
&gt;&gt; &gt;44623b2818.=C2=A0 We&#39;ll need it for Android as well soon.<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;One thing I do when requesting backports from stable is I chec=
kout the<br>
&gt;&gt; &gt;branch of the stable tree and see if the patch cherry picks cl=
eanly.<br>
&gt;&gt;<br>
&gt;&gt; btw, an easy way to get an idea of possible dependencies is to loo=
k at<br>
&gt;&gt; the dependency repo :) For this commit on 5.4:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/sashal/=
deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c" rel=3D"norefe=
rrer" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/sas=
hal/deps.git/plain/v5.4/44623b2818f4a442726639572f44fd9b6d0ef68c</a><br>
&gt;<br>
&gt;Why you guys never tell me this before? :P Very cool, how is the<br>
&gt;dependency chain built? Is it built for every commit?<br>
<br>
git bisect run for each commit on each branch we have. I have a little<br>
stable-deps tool that looks something like this to make it easy:<br>
<br>
ver=3D$(make SUBLEVEL=3D kernelversion)<br>
cmt=3D$(git rev-parse $1)<br>
<br>
for i in $(curl -s <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/g=
it/sashal/deps.git/plain/v$ver/$cmt" rel=3D"noreferrer" target=3D"_blank">h=
ttps://git.kernel.org/pub/scm/linux/kernel/git/sashal/deps.git/plain/v$ver/=
$cmt</a> | awk {&#39;print $1&#39;}); do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stable commit-in-tree $i<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ $? -eq 1 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git ol $i<br>
done<br>
<br>
-- <br>
Thanks,<br>
Sasha<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=
%3Dr5jrfA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJqVjy9QRssE9AZ1nQBwZB5=
mAcanpVTVOd4kO3%3Dr5jrfA%40mail.gmail.com</a>.<br />

--0000000000001410e105b2d91a3e--
