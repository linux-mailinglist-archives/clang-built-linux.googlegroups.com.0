Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEOEQT5QKGQEMDAFLGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E54026AE9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:20:35 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id m4sf3190581iov.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:20:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600201234; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRI5HCj/oGWx+UR26/qE4TlEjnhMMygSGLsdmT52+m2zNSifViLCpo8zVky/l/YndE
         rEdcrn6iLUPLVz/c0vKLsV6xFRC4DvMWCopCOFZKbKjc9YFLN9Eey0VUTXf+4uOdjx2M
         WKAHkjWv+2c7sC7NQm95f/ve4VsgdHQJy3OTKK3j8bpe1inrhGn6riAiITvfqw86d/vo
         V2GuujpRDCReaqRLIFQWZurENc1yapSkFPdFL2MIQzqzPWrV8JoN4qOlHRHYiiw0Vk4W
         gv1rZI58lphdCsUwJL731m+8fpvzn4Oz1PntuA1kMlfnHteo6zGhzEAAfMoufQTRLzh/
         An/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+wKnPogKKYONPvPaDUGNG/F7bmgJd6C5jIcvw584yCk=;
        b=le8eqExQp36UQEmJf3LpyEegS6Li0k76Cnbd4iZehI39+1vHrhQYEvHhKD4/Z/RHZB
         NxSN/MR8C/lwPTlIooSNLcT3rN3R4Jq56IKRIcKIBtygmyTuxBq10jQzpQobO8+6r7/e
         udwFOhfzpueUzgm6Rd0UglV+J/EB4mp7wACYwZgb854MHMtJpoSvMECvolyz+xRJPRUO
         cV1/LUUzuZsdcdLAfAsluaNY/cHoi2zUN+AHuCMA2SNd3jlJm8kgvk7GGOXHFScpARII
         8NIZMcnv5LcqUywASG6B7LO0xQV32GUo4MKaAQH2mmu9Mlgi1Enq5cRG/dotcTttGimw
         ej9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wz+BieWs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wKnPogKKYONPvPaDUGNG/F7bmgJd6C5jIcvw584yCk=;
        b=qhQF+77KJdxu4SNOjB07yysyirtlOL36Z9/WyF6UKUJ1wNqO/UqZaj264Ovpyiy3Dw
         WNlUHogtW1FyOLCgP5Ck1dbH/3+ibr/Vni6QCG7G3EX8xcPgXatMMFCws/OambvHXn58
         XsIRQFGDi5MPMoAqKJsLiWzeeZtUzXHsUsvKstAsQYkEa4+t4jVwtfMuRlWDgCr8x8JQ
         6MsDlZXLYcHLQhKBszV53spnSTP3g8F/zSyTZKHWyq9399p3IGxMTGejU/lKLwBFsa4S
         RuzLHQkDN+xsLvQrcwtNb23vqDLVAMl7uwSG4IbYt4zzUAt7W9ZwnYHIsbkblT7Nw+ui
         6kjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+wKnPogKKYONPvPaDUGNG/F7bmgJd6C5jIcvw584yCk=;
        b=PuZhRQ7tYeykpiJ280tnNvajBXjy0fXh4EOuaqrmZ9OFcEriv4EDUu+SrATAzHFB9d
         yf8Y6Do0Afka9u37F04ax9HJefXia/j0erHWODeEKXNHNZcjkGZrBcOYb/av7N7bmJgh
         XrziqnUQlsq7caUDs1AcSY3HgtoAPCzVdnGtwvpOLeDTqRNeg2T2JVnvXSvUkZghymDQ
         1xXKq9LrUm54lKbjBrqqingfdeDjgHAnpSyp1ylUQtOlSMDA2L0Hjt51AHCF00SDVxQU
         E9iDnfTgon4S4DHYVKhoFD30enpqOI7jNjVtAYI5S9sDi+7bggiI5ajRilAtVRrzRtxc
         3Fxw==
X-Gm-Message-State: AOAM5308p6t8Qkg8BN05uM0q/5YtWkhwWVJbukx640V/pKpUXymdZiE4
	6Uu0o8Ual2j7NM3rymMFoTo=
X-Google-Smtp-Source: ABdhPJxNnYrQJM/QjzyItrvpYLzKLJ6I8uaZvejWrAsgPZhWEuUm5hnMTVjBt41OPCML+deDVW7Tcw==
X-Received: by 2002:a92:c6c8:: with SMTP id v8mr17737449ilm.145.1600201233923;
        Tue, 15 Sep 2020 13:20:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9142:: with SMTP id t63ls22046ild.10.gmail; Tue, 15 Sep
 2020 13:20:33 -0700 (PDT)
X-Received: by 2002:a05:6e02:1023:: with SMTP id o3mr18532656ilj.141.1600201233529;
        Tue, 15 Sep 2020 13:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600201233; cv=none;
        d=google.com; s=arc-20160816;
        b=wORn3xa4OVmFxH3DG/8KPED8p3HpQ59ZaNCzskTu1wcFrZmeY82ft+ZIjeYe2rSWsd
         SoZTcm1to9dCNfCCrJzrXv471CwKdyzRoLujrYM7y/ClKWOtSwc7pu2Oxmgp8lIKqROI
         xl+S7lyIfW4XC4cxXSgYMtMMMCS6k11vdOn0RJKtX6RmuBwTbblTL64yu/10qp5YvtoE
         LA1lSgAKG5c1kYetu+Vp/y/00sSPvZeJ9dFucufRTEnhLMe5ExQI6CJypDtR7owytclD
         V9Jt1ElcE5SrrB4BBRTdTNVf3C8xWASJ40S4C5/hseqcgrUWxm+QduHwraflGtvY6b6V
         XMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KKOXRLJhkGhiu92khwe8SCHm7fBcYmv/ys0l/XPzjKs=;
        b=CX+dBXodirWHU7KcPQSBVRpJP7mJKzuWiMmzcuyBLHr0Iq0gy4d3Nqi9F4d9ZvRGOi
         kiLtzSO/FQQ4gY3ICV9cefh3XQgHx1csLBe67zzlJXso/z/afRfMdwCQbslNn7Lyi3rO
         7U2G/g7GoFV8xHxfHNo1ZaTUNAbBfCoZQ+BR1tDjvxogEReaec+3/XlgfqV+3V6E41Cq
         gJFme6lFbgAVpGtCGsHm1WXYqQWMCqIPkrnUleGKYYVbB7iDnAyO+YEVkFQAiHWOElMv
         /8DZgrUQ8A+zO1NLeRFt/XXPNSnbJovbZug8VcBzzUuR28YcM+8DSgOk3zd6Ouxeg71w
         9KFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wz+BieWs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z85si820618ilk.1.2020.09.15.13.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id v196so2634382pfc.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 13:20:33 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr16442770pgx.263.1600201232776;
 Tue, 15 Sep 2020 13:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
 <202009131413.8dt8QEc8%lkp@intel.com> <1600016571.7833.9.camel@HansenPartnership.com>
 <20200915091140.GC3612@linux.intel.com>
In-Reply-To: <20200915091140.GC3612@linux.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 13:20:20 -0700
Message-ID: <CAKwvOdnDJKPJ__sVKX2HmLUWyNPo=b0ccLvyBLyWoFfC0EFkiA@mail.gmail.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mimi Zohar <zohar@linux.ibm.com>, 
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org, 
	David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wz+BieWs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Sep 15, 2020 at 2:11 AM Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Sun, Sep 13, 2020 at 10:02:51AM -0700, James Bottomley wrote:
> > On Sun, 2020-09-13 at 14:26 +0800, kernel test robot wrote:
> > > Hi James,
> > >
> > > I love your patch! Yet something to improve:
> > >
> > > [auto build test ERROR on integrity/next-integrity]
> > > [also build test ERROR on linus/master v5.9-rc4 next-20200911]
> > > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > > [If your patch is applied to the wrong git tree, kindly drop us a
> > > note.
> > > And when submitting patch, we suggest to use '--base' as documented
> > > in
> > > https://git-scm.com/docs/git-format-patch]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-
> > > 2-0-trusted-key-rework/20200913-013201
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-i
> > > ntegrity.git next-integrity
> > > config: arm-randconfig-r013-20200913 (attached as .config)

arm-randconfig ^  You'll need to download and gunzip then use the config file.

> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > > 3170d54842655d6d936aae32b7d0bc92fce7f22e)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master
> > > /sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > > ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > > > security/keys/trusted-keys/trusted_tpm2.c:19:10: fatal error:
> > > > > 'tpm2key.asn1.h' file not found
> > >
> > >    #include "tpm2key.asn1.h"
> > >             ^~~~~~~~~~~~~~~~
> > >    1 error generated.
> >
> > Do you have the actual build log for this?  On x86 the build process
> > builds any precursors first, which is the tpm2key.asn1.o, which
> > generates that header file, so we see:
> >
> >   ASN.1   security/keys/trusted-keys/tpm2key.asn1.[ch]
> >   CC [M]  security/keys/trusted-keys/trusted_tpm2.o
> >   CC [M]  security/keys/trusted-keys/tpm2-policy.o
> >   CC [M]  security/keys/trusted-keys/tpm2key.asn1.o
> >   LD [M]  security/keys/trusted-keys/trusted.o
> >
> > Is ARM doing a lazier version of that?  In which case the fix might be
> > to move trusted_tpm2.o to after tpm2key.asn1.o in the Makefile, this
> > line:
> >
> > trusted-y += trusted_tpm2.o tpm2key.asn1.o
> >
> > James
>
> You can try to reproduce the arm build with BuildRoot. That's what I
> usually do when bumping something like this with arm.

You shouldn't need buildroot for build failures (we use buildroot, for
boot testing).

For an arm build, you should be able to cross compile with:
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang -j

(You can try without CC=clang first, may not be clang specific)
(You should install arm-linux-gnueabihf-gcc and the same for binutils.
Some distros have separate target triples without `hf` in them; either
should be fine for the kernel as long as your invocation of make
matches what you have installed).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDJKPJ__sVKX2HmLUWyNPo%3Db0ccLvyBLyWoFfC0EFkiA%40mail.gmail.com.
