Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIGZT35AKGQETKUVLXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB148254565
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 14:52:49 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id x2sf4202510pfd.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 05:52:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598532768; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTm6Nw88X122X/cxzk/+xVCb8OZ+CzIiB1R+xCAUJfX/8gFxA4Gk/Ynt4GimLQTSc6
         ddLADWUAuieSeVyhRIKrwX3YF0dn+jy2/c4Z3euNPwIK2M8j6ULWt0Pot8Hz2pTbOTVY
         LV4AIJuMHcOL4zNNHuy+LR3AdNoDXNQtboKanb9PbFb/0SHsvblD9FlQsHQkIzSc8OOg
         udExI2dhOBrRJhpG0fz8J3rn8Ss3V8M2LieK5xtihaDX/8LJN0tVIYuZR/nTBPTKo1yj
         /RnEKN1r8ZZL5+anLLIIX6IGCoFFyP6uEt9qLoM9PBEpHqo/Oql4d/E32IxzS7XVcAdm
         7usw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sX0kkffBgRb7wzwgI5NQqM2B9I4xiOO7HlOxlTOU15o=;
        b=dlWtFPin01vIPLgy4uR+PMOsNE4bORgDzWCSKFtSAiHOzGTlvGgYcnM80vizodid7u
         Q1IPBJSF5z8Y3mdRJcNlsmsq/PqRNOR+IIe7jXU4y17s9tmzI0+w2xURVCmNgrhMXOOU
         YZq0mVBXDNSqDXPBhg3Sl77PKH6N5K8KGex/yGb6Pp2fomJrF9LwEN6O+b715flTY+Xn
         jkt22wvNFyBY/zpjchv4iHTlKKogRLxLHWm7sZT3606uWIUUuWgk5dpKQfR+YTEI0YEW
         v7WsLDM+bL5ZDvr+LMhgC0lpAmWcXSS6CRevQsvcDCnWdZsT988SZMr5F1ASdfmmNnsY
         FE0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=snbHIjcc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sX0kkffBgRb7wzwgI5NQqM2B9I4xiOO7HlOxlTOU15o=;
        b=TbdtDVoqQw4t90cSpnEbB2F7ks/zvXYKJhvxPgBl6Cp5Vczx8MDxchNrVHKZa3Ad0Q
         eD4A6UZPRh58MH2m0HIwpq8VkLleNSwdlXnsnenvAlgtyZsHxSR9sZ05Tr0TApJJReGt
         pfb4eSIkqkUQ5dni229FBLJqLJVuX8b/J6xYKXvaJ9Y+UBB4fQUGbAC3Qo2bMe0oipGm
         r0EKq+8XuXrf/SZcWCXRL49XyDIdRdPtrP/klfAOfaWsJymH00OzZqvk6ZruyvNwaLu4
         KKI8i3DzkFiWghvIKFIo7CYXReDlpeGDglHTzYTj3+hu36+VzF6JfcmXRm+vTox1Tyok
         0rhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sX0kkffBgRb7wzwgI5NQqM2B9I4xiOO7HlOxlTOU15o=;
        b=Cy+cP5oyL6gPwgEKTQB33EgloTJCvKPsxI1JgbBVstd8dwGjxdSi5Y/gzBI+OKMkzL
         ig+AGfhxKAjx1Vp6VonaufdADnovz1eHaphhs9S/3g2aVPIamCHjNEoVjo8GT6jNgNiY
         dwn+/si6qcz5fSZSLTcCaoJXgyb1UEQXFAoyQ1Wv4gEeqf86qUPj92IR93Ta/oNkpQvS
         3liuGPbEKXmsBJPqVHS+10/4N/Ax4XQ23OoWIA/9qW71cvBNof96DfwdNz+cQVFAgKxG
         ZHR/n2q3mewfLOQy/zwbJTlvDLUJzQZlQ2+YCu0ahCsh6TCCPG364RF33npc6Agvw+WO
         fm4g==
X-Gm-Message-State: AOAM5312OxUjg+i0r6p1wbbnSuk0ZxRdV4ZhcPY5RBs+CzDjxNmjdKXl
	yXP3QIoOg0631l9vS+679ow=
X-Google-Smtp-Source: ABdhPJzWE8gbPeypHVE/+c7puec1EHgNLZGrATLYkqHub6V5I5TbnAY1jBtXkQmdgio99EjTWq8L8A==
X-Received: by 2002:a62:ddd1:: with SMTP id w200mr15065699pff.13.1598532768297;
        Thu, 27 Aug 2020 05:52:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls912240pfb.8.gmail; Thu, 27 Aug
 2020 05:52:47 -0700 (PDT)
X-Received: by 2002:a62:1d10:: with SMTP id d16mr16540873pfd.271.1598532767874;
        Thu, 27 Aug 2020 05:52:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598532767; cv=none;
        d=google.com; s=arc-20160816;
        b=VHTA5uOuFHr+WOx4Jj0WFCi6SgCEvg6xGhli9grbeOpnyNh8fXdHiig7HaI8k/cM8s
         +HaBJm1QoOdcDMZooeqM8rD1H8u0f4103rgxiU+Fs74216AhpEFELXy9UBoif4Z9t8rX
         KxM2Hih+rwhZoME+1M/tOLgRmokEK9H421AZ+xqYmqzVOJLXMnZf7+S0mZ4mTI2x8cu+
         vQA3c6JBgwrjMSE/MfYWfYYsVjc4NXDmer6+22UJwZqkM4njYLQaDanJJiJSNXDeiJns
         QDBW1YcVhyu3q1ErHqMUbQl5UasTMk+nrGM5WKWAo4I2s50cCE20NylznKAkP4I9aYaJ
         l4Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vS1yq2yMHnzIFtWR3tZGqH80SRtX+9taVrXvlZqbpwQ=;
        b=kgBhcwAZzBm3j6+31N2XRcZ32YAnPC/7jchfchrUETEKB3DesX4k4+F0+iIDY2eZPp
         MaOK+r6kZTl2qsD2ju3uJUpSy2WCLVBOv3hMaFmDvljP+ZXyfX91XeQljvjGLvwcPVZ7
         i0X/nJZVObaIZb0OIAsHK7ds/QSXiC0TGh9WFZe3I8dtO0MMJDq8uR93ZmxRyslco3oQ
         VSlCrc9qaI3QL2BHt10nc6XicHQwNWMe4FHpC8ATa05duC3IIvX2WRwDA/KtamMOUHVI
         VvcYknljNnJa+WNEdoYWqhX9p+vFuOJw4CeibDeUHuO/NZgscQ2UlkUXB1OkryvAS7Cb
         dfhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=snbHIjcc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id j4si163146pjd.0.2020.08.27.05.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 05:52:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id t185so3409473pfd.13
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 05:52:47 -0700 (PDT)
X-Received: by 2002:a62:1514:: with SMTP id 20mr3595911pfv.62.1598532767314;
 Thu, 27 Aug 2020 05:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <202008270909.Z8PiAoi5%lkp@intel.com> <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
In-Reply-To: <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Aug 2020 05:52:36 -0700
Message-ID: <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=snbHIjcc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Wed, Aug 26, 2020 at 11:05 PM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
>
>
> Le 27/08/2020 =C3=A0 03:39, kernel test robot a =C3=A9crit :
> > tree:   https://github.com/linuxppc/linux next-test
> > head:   f46b75a9ae95df302fcb070678773574f6812216
> > commit: 6dcaaad9830c73908a23200ccc5da12583e04f1a [70/80] powerpc/vdso: =
Switch VDSO to generic C implementation.
> > config: powerpc64-randconfig-r005-20200826 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7c=
fcecece0e0430937cf529ce74d3a071a4dedc6)
> > reproduce (this is a W=3D1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install powerpc64 cross compiling tool for clang build
> >          # apt-get install binutils-powerpc64-linux-gnu
> >          git checkout 6dcaaad9830c73908a23200ccc5da12583e04f1a
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Dpowerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic section =
.rela.opd
> >
>
> We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
>
> What is going on here with clang ?

Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
hit I get in the codebase of `opd` (at least for tests, still looking
to see if ".opd" gets appended somewhere.

Christophe, it might be interesting to find which object file contains
that section pre-linking, then what symbols are in that section.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw%40mai=
l.gmail.com.
