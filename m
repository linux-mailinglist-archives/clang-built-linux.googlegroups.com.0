Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26HYD2AKGQEDAVWYEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DC41A431E
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 09:44:45 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id q11sf1168905pfq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 00:44:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586504684; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dm1GrpvCN08GwLimq8lRuSIc0bYuGudnMQh2eEh1LNlnAKhF5xwGmu2oZNVHqgeatQ
         6us8KgJglVCWDWk81s2aLo1+RE5eb5j/g5H3olfnJ2ew3UfqpgCfMtaF6A5yfOUkpn9j
         E+TCyhnHpxKDjVJWhBrBJTwlu9QMkNJi8XhcMbVFGK7UsFCmdUfg+Z4itb27CIEVnunr
         WZ6j73Qg3sYtWsA9YvhgZN9jziAwXYKQii2vqGrmNBLBEjI+C/thgCgVvKJBfduC6RrI
         gEH1zmS8ENYZA0qmTjTeCduOShdgeYAbpuEZdbR0/AmbiE7UYJ/sB5pUEAF/bgh/tkQS
         jL1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=FOF+L8f/ZVYMU5bDM5I+hUFsheAOwmEN3hm2VCOfGuY=;
        b=JcFzxpzQCTw4HS6JX9XKCri0e2zioTZjosfTAQwsv3u5obUkOzhMReiU5OsKOU0zEy
         tDnhhnw3v2PnyarHnSWPLkAYnm7o6iAjO+kthCwZqj9PQRM3rsuIuXLG8p2BGcttglON
         TnF2JO/oLD9wgrCj5TjTP5fzxc2qprG+XYG2CC7ypc11TrhZNlOs+9ZvaARTIKbMYGwO
         LwxlMf9GOfADQbddFrTy5rUkEOyoRC1ygqMxbpxFhOXhl9nZaBHWuTChHm/xcagylt9R
         elPKtcFZMzFHyYvwtzOwjHaYYZm6mUWUE5MdCKfQLYvMD7/YQriGDv2tKwW4O0nFCYFx
         1Y5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E2AWKS56;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOF+L8f/ZVYMU5bDM5I+hUFsheAOwmEN3hm2VCOfGuY=;
        b=YHHRkKgf+SXGlzGdSy1KSSl9shtgu/AYA8fGkvxbO2xLbpzw0BL5VECSiVX97rcMKi
         uujTgvLIGj/o7AoEsGv8nD56MkRNROJ7gM6pCCXR0q6E13nsjgk92sAFqHzj3vHjyzts
         Lm0vzKiCpJIqOzAKuRdyKTKEv5k8RmsN6z4kscNEMiIvX+XST0yEucLBTdC281ND9wXS
         W5WfxR8L4ulteXykTCkfvIGr+WlE+KsFxZ2JIl6MowNGycJMrtsIeyyug6NUSb9IwsY7
         bmDA4w6vkIfgicsHW5+FQn835dDw3vKkC/s70pxb/5hGki+Rak4Fqc+VCuBrWjt+i6qo
         8neA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOF+L8f/ZVYMU5bDM5I+hUFsheAOwmEN3hm2VCOfGuY=;
        b=TGmVRtuderoOIpd++AFFzdeVmiWq4t87c5fVUsI9ngEZn7j5rNxVP9EDDOo5jffhWL
         Q1irz69Rw+V9sNW6Bt0DHxF+Yi+DGZpc1XQZB1VePZQB63Oe1T6ugHt3YxYybfHNQWg3
         BQtB43vXdNwQ3NsqoOKZCLq3TDR99WD5Uw5Gx6XjnAY/0HsuhSr27u3xmVCJ37gfIDSh
         drFsdTmCUtpzbyHuTIX2MxSojZ2ueg80l3QeInsOpYIN+7NfP2LQZtPEnXdsFK6HpaOR
         rwZWJKgIs2t94CZIjqIjATH3W28EhTMBiXp0IIlM7ahBzS2v1fv7GfTNt1JgaNYqrN2T
         uONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOF+L8f/ZVYMU5bDM5I+hUFsheAOwmEN3hm2VCOfGuY=;
        b=jqgTOJsD44Tzl4mAr3soFnpi5Dw6lC++Hy+bdya1cj/NP5fZ7XV9uu8HfhMBFlS6xy
         2eny2+aJRS46KeKEOXQQJTiizdBekLhsVprubb8045ziqxa1g9iD2KuVwmpl4KOaUAwi
         RifB77wt2B0iLddMUawPq2JFuBI4xw/Lgmq3pSPPGgNNsnrnvuuDO+SYpg16EKB5+6pq
         XSiaBLaoumYP4oZtnAaWK1rZDEeEhos4Oo6TbwM0XkUnfNyVpClYeTvhi7fuBMHVi9J2
         Tngw/uRsyHFuNOnjfRqcMkVDOd/zDYDWp+rJDDOk4Y+3lsN9VqMmxF/v4FMNw0BU7Ew3
         et+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaTzz97MkxjUJ9y891F+PCqpyKS3OOZnJnKPBdS8r86feUfhT/e
	mEqnQkUBerWmrDvF5afFqBw=
X-Google-Smtp-Source: APiQypJyMCFxYRDaL7kL+2qhtAnEDNFT+uw2bh5skqrk/9v9CE9+4l4e2uUHd+yI4mkRNOOGAOuMBQ==
X-Received: by 2002:a63:ae04:: with SMTP id q4mr3248363pgf.373.1586504683836;
        Fri, 10 Apr 2020 00:44:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d34a:: with SMTP id u10ls1326504pgi.8.gmail; Fri, 10 Apr
 2020 00:44:43 -0700 (PDT)
X-Received: by 2002:aa7:9503:: with SMTP id b3mr3956298pfp.310.1586504683376;
        Fri, 10 Apr 2020 00:44:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586504683; cv=none;
        d=google.com; s=arc-20160816;
        b=0xlJ0lcen/Kp1AqJXOAq8xhJdwTdU+PohN5TvG0QjTfNNERV4SWjH+TjVE0fVdfDiL
         8cU9ml1NOumy6KmLFVMDO4BjdE0TZ6We/pG48r5kW3AHFTUIgKHw9zLfyziOdXH1x+Zo
         3T1RXTpMuUtBIuzhqfo8sqEZWRWAn+3XQqb/MRTklS6TrWYlV0YTKCJf6cAs5ocLlRFT
         OIDKy8Ivy4gRsu8RcCLXfpvK7EfwtOE7rwimaYNB7xNPyxL6Gf5daqxvR4j4rtn96WAJ
         VToPy7boATwqEX3QscDjmOb9rnj7+oFMCdxyK+4HpPbk4QNyJyHrRN73fmtNNFrFnKY6
         9MtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kWTF/iK3b5Sk5JeUHvp98Y6uzIRDCjSO+zOeV+snwFg=;
        b=Bc2tHTe0jwjfq7673bLpgVi9thM4XlXTW2hnaj4W5HTQad+hyGxIZ3z6aFt6h0QQu8
         MO+55l7Tc47DJERykKIzZXLARarh9ePHc8cgazqxrCqE3nhIury+Gb/ns67xIStuEuDh
         LoZv0tZbStLd8c0hr+H7DPUfc5sG5zkh+yAScBNuBbPKADXPbPJ1P3nsxsIH1yZUMUCD
         TPqZUwFO6hOQgcMGc8k1QjWTq2GUtbq3iDjL3hqvXrAo/VPsqGICm9k6oK6AdV6rQ2JC
         nB53WOSbApp8jJx5ZMdtEV4OQ6db2I3qCDbeQRN9LMhzlVtd971ol59IFNbrw9V6OPgc
         o1Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E2AWKS56;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 188si80508pfb.1.2020.04.10.00.44.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 00:44:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k9so792651oia.8
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 00:44:43 -0700 (PDT)
X-Received: by 2002:aca:8ce:: with SMTP id 197mr2401139oii.35.1586504682521;
        Fri, 10 Apr 2020 00:44:42 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id w23sm825835otk.20.2020.04.10.00.44.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 Apr 2020 00:44:41 -0700 (PDT)
Date: Fri, 10 Apr 2020 00:44:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jian Cai <caij2003@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com,
	Peter.Smith@arm.com, stefan@agner.ch, samitolvanen@google.com,
	ilie.halip@gmail.com, jiancai@google.com,
	Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Doug Anderson <armlinux@m.disordat.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	David Howells <dhowells@redhat.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410074440.GA35316@ubuntu-s3-xlarge-x86>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+icZUWJLGfp-UVhXDaCR=Xnce7phE1ffPHC4RzM8mXPhBaV9g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E2AWKS56;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Apr 10, 2020 at 08:38:05AM +0200, Sedat Dilek wrote:
> On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support=
.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build AR=
M
> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > ---
> >  arch/arm/Kconfig | 2 +-
> >  init/Kconfig     | 6 ++++++
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..39de8fc64a73 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> >
> >  config IWMMXT
> >         bool "Enable iWMMXt support"
> > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || C=
PU_PJ4B
> > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC=
3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
> >         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4=
B
> >         help
> >           Enable support for iWMMXt context switching at run time if
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 1c12059e0f7e..b0ab3271e900 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -19,6 +19,12 @@ config GCC_VERSION
> >  config CC_IS_CLANG
> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> >
> > +config AS_IS_CLANG
> > +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
> > +
> > +config LD_IS_LLD
> > +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> > +
> >  config CLANG_VERSION
> >         int
> >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> > --
> > 2.26.0.110.g2183baf09c-goog
>=20
> Yesterday, when looking trough commits in Linus tree, I saw:
>=20
> "init/kconfig: Add LD_VERSION Kconfig"
>=20
> Nick had a patchset to distinguish LINKER via Kconfig (I cannot find
> it right now).

Probably referring to this?

https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6=
c6637bfa46

> So we should do all this the way CC_IS_XXX CC_VERSION handling is done.
>=20
> I just want to point to [2] where we can rework (simplify) this
> handling for CC and LD handling in a further step.
> In one of Peter Z. tree someone started to do so (I was inspired by that)=
.
>=20
> Unfortunately, the hunk from [1] is IMHO a bit mis-placed and CC and
> LD handling should stay together:
>=20
> CC_IS_XXX where XXX is GCC or CLANG
> CC_VERSION where CC is GCC or CLANG

Are you suggesting unifying GCC_VERSION and CLANG_VERSION or am I
misunderstanding what you wrote here? Do you mean XXX_VERSION where XXX
is GCC or CLANG?

> LD_IS_XXX where XXX is BFD or GOLD or LLD
> LD_VERSION

ld.gold is no longer allowed to link the kernel so there is no point in
accounting for it in Kconfig. That leaves only ld.bfd and ld.lld to
account for. I do not think there is a point in adding LD_IS_BFD;
!LD_IS_LLD covers that since there is not another linker (at least that
I am aware of) that links the kernel.

Compiler is different because it technically has three options if icc
even still works to build the kernel.

LD_VERISON is explicitly an ld.bfd thing due to the way ld-version.sh
is written:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scr=
ipts/ld-version.sh

There is not much of a reason to try and make LLD work with that given
we do not need it now. I am of the mindset that proactively changing
something only makes life more difficult down the road and makes things
harder to maintain.

We could suggest renaming that config to GNU_LD_VERSION and gnu-ld-version.=
sh
to be slightly more accurate but I am not sure that is necessary since
again, CONFIG_LD_IS_LLD will handle any incompatibilities that we
encounter with LD_VERSION, just like we do with CLANG_VERSION/GCC_VERSION.
See my commit for the __gnu_mcount_nc thing in ARM for an example of
that (CONFIG_CC_IS_GCC still needs to be specified).

https://git.kernel.org/linus/b0fe66cf095016e0b238374c10ae366e1f087d11

> Just my =E2=82=AC0,02.
>=20
> Regards,
> - Sedat -
>=20
> [1] https://git.kernel.org/linus/9553d16fa671b9621c5e2847d08bd90d3be3349c
> [2] https://github.com/ClangBuiltLinux/linux/issues/941
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200410074440.GA35316%40ubuntu-s3-xlarge-x86.
