Return-Path: <clang-built-linux+bncBDY3NC743AGBBRXVTXVAKGQEUJ5ZY4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED6980FCE
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 02:39:35 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id h3sf20728657vsr.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 17:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564965574; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6C2xTyC7oH9z3imwgaVyrWK8sTtNipm1J2SfF5SWgZ6y+puNuKiuRGoslpz2HYkT8
         kVSEITIIoKLoX3Zcr737iWj19ygCdjv9Q9z34J4Yln9IQg76TVRkrnhXqScqil6L33KO
         cgrwZTATXdSB+BK5fICR+zAOKx7Absw0fMWkOJ7W+AWDeDKmbkur10zGq7OnRk7oD/Kn
         o1sTI6EqCrfu4ubgX89HzuDb+Vk00fcoaeaL9cxx15/wAdzatUmLVA7gcFcqDX4LFAKl
         rjn7o7euRcvXUBvPUyQLKtXsbE6n5nq/8L+H3lLloPLHd03rzu+e6w2FpN/VEG2SjX1x
         D/Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=bCHygCK7jigIx1wXJBTYAKs9BbK1zMYj1qP7QJqPtgk=;
        b=YEm/AbQglwLm1JLyKTNG3hgY54xgLlKGMoG9yU02GYkgvIiVfu+t5KujbI4o6O+pY+
         gV5mjVsdqUhtCE8rThymVbpf73vekIq/tfeJ3Ft2WL4gMUQJFYlwDK55SceRhaZm8pDn
         91XZbizcYH/LiI5wTKVOrKkpXxjB+IMhtRVLSnTE/1T9ztFt9Upg4hlVt9cwymlvazuu
         o9kmU9/csJxuqezg6GEPHBn2ITjX/srvA/SONDJCTVVRM7qyjqN2f/jRmQJ/IPSRwhFJ
         IvzD+iC8MUAFzUtWUvl9RDqX+XQaxpFkkDZf0LPX8q5yKkBbybuZg5U8xO1j6Glqey6n
         USEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bCHygCK7jigIx1wXJBTYAKs9BbK1zMYj1qP7QJqPtgk=;
        b=O4+FGi0349MbnsoVH2qNPaWaLJy4CaFX5hB/d9UTZ3HxhR35MX691FQagFtGLtq/9/
         risEUyRBmHSt3/P3Bqq+jHuCXt02T6ZYeIukzctTSkJAMCkYKpUYzusTQOBU3VPF/DUw
         z6HZNCWijzGkJfSZaRj77dtUSHxheanueYhIamUBsJWUHLkuYasr+ch8kR+yMtg7Khc+
         Y4S/D865ktDo/yMsfVI12B8DXfZzbMi4BOzxapjlBZUEZzG3Y7URcsDR0G7SdCViNNvW
         t7HOV2JPv+kDUdpRJOA0uo0A9DcVx5fcMa01/63K66Q+qjTIF5Za+FQRVxyB90KHcnq2
         NKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bCHygCK7jigIx1wXJBTYAKs9BbK1zMYj1qP7QJqPtgk=;
        b=P9H3VxPCIW95mZhaifzy5/IJTAmD0Ig30CjdysE2OIgWyAH3rw22ObchOsfNVnRa3w
         bcoQ1XCfcn8I5E1tEZGdYsvbZ3SZtF9b3hd00sSzuRqM/wqmrnPzgzRLr0+GEYTWqJAe
         BdK4VV7TBVnW1Z2uymCazOw2xMBCj17l8fAI485B3wbyc93P85t0qTyj2FJ9KGC7HqWr
         y0wk+KN3Kquf80cKzDrnYL5kW83DpBNjPzWQ3wm6lt0pAo4RRXkzkw53KYcxtqrJF/Gb
         IjYjglHbMVHPpzIg/2vA32YBzAedbOU/69IFoLnjvx+1am1wnpMwV7zkyTdN1MDWT2pU
         i3XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfkZbdSk7scFX0mgCCWoOy7nDmVfXNPr0gKlYjhl6Fw26zSZJ/
	nMsWq+/uTWsAbaxQF8+rPsQ=
X-Google-Smtp-Source: APXvYqzA4oNVXUmwmexeomh5JREUcZLedQqY1zmNyc+PIy2nbdOd550ufq+s0TDHQZUGOdRTAlZJ3Q==
X-Received: by 2002:ab0:e19:: with SMTP id g25mr13149700uak.71.1564965574410;
        Sun, 04 Aug 2019 17:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d712:: with SMTP id p18ls10486591vsj.14.gmail; Sun, 04
 Aug 2019 17:39:34 -0700 (PDT)
X-Received: by 2002:a67:eecb:: with SMTP id o11mr6727853vsp.149.1564965574151;
        Sun, 04 Aug 2019 17:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564965574; cv=none;
        d=google.com; s=arc-20160816;
        b=DtZlSoCkuqw+21SnP+0TnVGselNQdh1Mo0JRpHk50mEJAg7p86M5PYGnaycsx4jmIU
         iILyJpM7XhwuHugqbjp/Z3/Jj2kXRPSCDX/BEWnx/7X0QcXDBTcBKOZM1dKgqcnrwCks
         JBgWw6EN4iY4qeZ1ITplooHKIqfEs7wIsGDzz+p/uB2lOz80m0vk1EmHa4uu2PQGtWPm
         QJCIAp3SZsHtT5VZW4bWhEYk4LbRwqB5/02cfoBmTrn2IHRiiRXLFjJjiIHfaQahihje
         D7YEv18D9ZFyups28EsIFdFF0oiGZAnPe8qJQ1Y7TBrOrVo+5f7UOrB4XxmwgJbuMaUB
         lP1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=D2IxL2O1tI0+1R5Dx8BpqtGsrpn5lba0USSxJr9qul0=;
        b=WcrOQkFFA5OuSCXWuEwqANA3uSa9EvguXrGFyaWsZf5E/SozDNWRwbGQXEN8i+zeoo
         AbAdMpAvVigHnsGVG3ofMExlwIEj9/PuLS5Ofpu1qCn7paI/exgxg6UC2XJnmYEnh2Xb
         BGSZvqjZp2sQs4TcPuyFPw0xxXOIRSxn3kWVukLiVJHLT7KIAzaOC2s8XA+4d+9BmXSD
         OyeJ3c39IC4tWVLPme46UTiRqxmqz63F/bLmA0/fY9hJrNTKtyuNuty26xmJenVupZqH
         x2BQtuvBHqqi/OIx2LQRrZ6iJ0eBs72EOld+aWxQKTJ7s8K7WwqYs6TvRcaHCU0zjrkc
         ivZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0048.hostedemail.com. [216.40.44.48])
        by gmr-mx.google.com with ESMTPS id 63si4279994vkn.0.2019.08.04.17.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 17:39:34 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.48;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 766B38368EF9;
	Mon,  5 Aug 2019 00:39:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:2:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1513:1515:1516:1518:1521:1535:1593:1594:1605:1606:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2525:2553:2559:2563:2682:2685:2691:2693:2828:2859:2894:2897:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4118:4250:4321:5007:6117:6119:6120:6742:6743:7903:7904:8660:8957:8985:9025:10004:10848:11026:11232:11473:11657:11658:11854:11914:12043:12050:12114:12257:12297:12438:12555:12663:12679:12740:12895:12986:13148:13161:13229:13230:13255:13439:14096:14097:14659:21080:21433:21451:21611:21627:21740:30012:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SP
X-HE-Tag: month02_52fa7dd9df92b
X-Filterd-Recvd-Size: 7568
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Mon,  5 Aug 2019 00:39:30 +0000 (UTC)
Message-ID: <49b659d8f88f67c736881224203418f59a5d29ac.camel@perches.com>
Subject: Re: [RFC PATCH] compiler_attributes.h: Add 'fallthrough' pseudo
 keyword for switch/case use
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook
 <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Borislav
 Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Pavel Machek
 <pavel@ucw.cz>,  "Gustavo A . R . Silva" <gustavo@embeddedor.com>, Arnaldo
 Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>,  Shawn Landden
 <shawn@git.icu>, the arch/x86 maintainers <x86@kernel.org>, Linux List
 Kernel Mailing <linux-kernel@vger.kernel.org>, Neil Horman
 <nhorman@tuxdriver.com>, David Miller <davem@davemloft.net>, Nick
 Desaulniers <ndesaulniers@google.com>,  clang-built-linux@googlegroups.com
Date: Sun, 04 Aug 2019 17:39:28 -0700
In-Reply-To: <CAHk-=wg1PAJR6ChVXE7O_H2wEG=1mWxi2uc0fH5bthOC_81uTA@mail.gmail.com>
References: <e0dd3af448e38e342c1ac6e7c0c802696eb77fd6.1564549413.git.joe@perches.com>
	 <1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com>
	 <c0669a7130645a20e99915385b7e712360c31ed9.camel@perches.com>
	 <CAHk-=wg1PAJR6ChVXE7O_H2wEG=1mWxi2uc0fH5bthOC_81uTA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.48 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2019-08-04 at 11:09 -0700, Linus Torvalds wrote:
> On Sun, Aug 4, 2019 at 11:01 AM Joe Perches <joe@perches.com> wrote:
> > Linus?  Do you have an opinion about this RFC/patch?
>=20
> So my only real concern is that the comment approach has always been
> the really traditional one, going back all the way to 'lint' days.
>=20
> And you obviously cannot use a #define to create a comment, so this
> whole keyword model will never be able to do that.
>=20
> At the same time, all the modern tools we care about do seem to be
> happy with it, either through the gcc attribute, the clang
> [[clang:fallthrough]] or the (eventual) standard C [[fallthrough]]
> model.

(adding Nick Desaulniers and clang-built-linux to cc's)

As far as I can tell, clang 10 (and it took hours to compile
and link the most current version here) does not support
	-Wimplicit-fallthrough=3D3
and using just -Wimplicit-fallthrough with clang 10 does not emit
a fallthrough warning even with -Wextra and -Wimplicit-fallthrough
using switch / case code blocks like:
---
 lib/test_module.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/lib/test_module.c b/lib/test_module.c
index debd19e35198..30c835178c7c 100644
--- a/lib/test_module.c
+++ b/lib/test_module.c
@@ -14,6 +14,21 @@
 #include <linux/module.h>
 #include <linux/printk.h>
=20
+static int switch_case(int val)
+{
+	int i =3D 0;
+
+	switch (val) {
+	case 1:
+		i |=3D 1;
+	case 2:
+		i |=3D 2;
+		break;
+	}
+
+	return i;
+}
+
 static int __init test_module_init(void)
 {
 	pr_warn("Hello, world\n");
---

Given:

$ clang -v
clang version 10.0.0 (git://github.com/llvm/llvm-project.git 305b961f64b75e=
73110e309341535f6d5a48ed72)

and the compilation command line:
$ clang -Wp,-MD,lib/.test_module.o.d  -nostdinc -isystem /usr/local/lib/cla=
ng/10.0.0/include -I./arch/x86/include -I./arch/x86/include/generated  -I./=
include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./i=
nclude/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -=
include ./include/linux/compiler_types.h -D__KERNEL__ -Qunused-arguments -W=
all -Wundef -Werror=3Dstrict-prototypes -Wno-trigraphs -fno-strict-aliasing=
 -fno-common -fshort-wchar -fno-PIE -Werror=3Dimplicit-function-declaration=
 -Werror=3Dimplicit-int -Wno-format-security -std=3Dgnu89 -no-integrated-as=
 -Werror=3Dunknown-warning-option -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -m=
no-avx -m64 -mno-80387 -mstack-alignment=3D8 -mtune=3Dgeneric -mno-red-zone=
 -mcmodel=3Dkernel -DCONFIG_X86_X32_ABI -DCONFIG_AS_CFI=3D1 -DCONFIG_AS_CFI=
_SIGNAL_FRAME=3D1 -DCONFIG_AS_CFI_SECTIONS=3D1 -DCONFIG_AS_SSSE3=3D1 -DCONF=
IG_AS_AVX=3D1 -DCONFIG_AS_AVX2=3D1 -DCONFIG_AS_AVX512=3D1 -DCONFIG_AS_SHA1_=
NI=3D1 -DCONFIG_AS_SHA256_NI=3D1 -Wno-sign-compare -fno-asynchronous-unwind=
-tables -mretpoline-external-thunk -fno-delete-null-pointer-checks -Wno-add=
ress-of-packed-member -O2 -Wframe-larger-than=3D2048 -fstack-protector-stro=
ng -Wno-format-invalid-specifier -Wno-gnu -Wno-tautological-compare -mno-gl=
obal-merge -Wno-unused-const-variable -DCC_USING_FENTRY -Wdeclaration-after=
-statement -Wvla -Wno-pointer-sign -fno-strict-overflow -fno-merge-all-cons=
tants -fno-stack-check -Werror=3Ddate-time -Werror=3Dincompatible-pointer-t=
ypes -fcf-protection=3Dnone -Wno-initializer-overrides -Wno-format -Wno-sig=
n-compare -Wno-format-zero-length     -fsanitize=3Dkernel-address -mllvm -a=
san-mapping-offset=3D0xdffffc0000000000  -mllvm -asan-globals=3D1  -mllvm -=
asan-instrumentation-with-call-threshold=3D0  -mllvm -asan-stack=3D0   --pa=
ram asan-instrument-allocas=3D1   -fsanitize-coverage=3Dtrace-pc -fsanitize=
-coverage=3Dtrace-cmp  -DMODULE  -DKBUILD_BASENAME=3D'"test_module"' -DKBUI=
LD_MODNAME=3D'"test_module"' -Wextra -Wimplicit-fallthrough -c -o lib/test_=
module.o lib/test_module.c

> So I'm ok with just saying "the comment model may be traditional, but
> it's not very good".
>=20
> I didn't look at all the patches, but the one I *did* see had a few issue=
s:
>=20
>  - it didn't seem to handle clang

The __has_attribute use is at least clang compatible.
https://releases.llvm.org/3.7.0/tools/clang/docs/LanguageExtensions.html
even if it doesn't (seem to?) work.

>  - we'd need to make -Wimplicit-fallthrough be dependent on the
> compiler actually supporting the attribute, not just on supporting the
> flag.

I believe that also needs work if ever clang works,

Makefile:KBUILD_CFLAGS +=3D $(call cc-option,-Wimplicit-fallthrough=3D3,)

this will have to be changed for clang as the =3D<val> isn't (yet?) support=
ed.

> without those changes, nobody can actually start doing any
> conversions. But I assume such patches exist somewhere, and I've just
> missed them.

I haven't sent any patches for any comment conversions.
nor would I until the RFC is acceptable.

Just this RFC and the necessary conversion of the one use
of fallthrough as a label (which David Miller did not apply)

Some people reasonably feel that Coverity should recognize
fallthrough; style annotations before changing the existing
/* fallthrough */ comment uses.  I think lint doesn't matter
much.

I do have a script that does a reasonable job of converting
most of the /* fallthrough */ style comments to fallthrough;
while realigning to the last indentation.

That script still needs more work before I will post it.

Lastly:

I think using the pseudo-keyword
	fallthrough;
reads better than
	__fallthrough;
to end case blocks.

Do you have an opinion here?


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/49b659d8f88f67c736881224203418f59a5d29ac.camel%40perches.=
com.
