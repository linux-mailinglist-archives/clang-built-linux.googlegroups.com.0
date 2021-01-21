Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYOQUOAAMGQE5IMJH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6020A2FDF68
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 03:35:14 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id gj19sf517580pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:35:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611196513; cv=pass;
        d=google.com; s=arc-20160816;
        b=ccRpDkiJcmAHahHFJl3LpfXujTFfCnFzH5BsM6NZ6uomQ3BzHuYESMxRXfDYws3+v+
         YiHWuqtUn8GVvUiVczSWpIXwyGACyfh5xx26vH20K3ZUn1XRThD5dN3tA2JyPX3TfvAx
         zIm4MhUzAI1S+PkKYsY+NAPrVpcx3FfT8/qTlnV3kvnlEGwoS/6OzBnBSdhD7nYjOiu0
         o/oOqQN1ZrHRkyms/PzknubhfP85t+FiXUh837btcsVTPGugAv3NEjaK0L7Yoxl5N2HG
         vC1By4Qd6v8HSIghhef1NpPVJo4Qvq8tfyl4QHKyrQWe/lc8u2Ggx1TqHtCL/PxY6aaX
         qJUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7pGe33YB73A6/9mmZdI2AWiJDcA/ow6nOQjMqiCBPdU=;
        b=p7xirgqm8iKaT3N/rNIzE71dKsihTLY+H0xVLb/e2eDjq8KCB5LZMSitBYgIe+Nq4c
         YlEfPiJGJnH19dykedSYhMCHOeHMenu2RPeHmPqxIU5CLFLimgPhhn/n2qbphSMfA9sl
         +pxgtgf/OaNQ3q5D++AcXjugvzmCz2aNZF1Umbf1/0tT7cOTg4jyHyyMaZ13r5hK286x
         9DWJB/tl1cxWJJi3+zcfrLVyD9wgOaQmfxTxIcakh8q9RGX4LmAw+dl7fS3Vu1tJ4jeR
         OeN9/jVLp50u4xqNfyyNOJtUq0jkHxk2xo7CPdwBVehcgetxb4cugoHYLcHSj3YVMF+N
         4BlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G9zQ7C/d";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7pGe33YB73A6/9mmZdI2AWiJDcA/ow6nOQjMqiCBPdU=;
        b=c1FnEweuxm19RGIO2NaG4waQbrUjAveDMy0xGHshapg7/v0NMunqMYS6iPlk9VNb6w
         WUk0IRtdEQumNXoTo7POSnqFs9SeFz2Kj+1dEx7AUl6lGC3uDpfxhrWeDAMAUVHr8OHX
         FT5YRpdPrnNUM/zI8QBn0h1wF9+wPf2fEJAiQu+HxXL+6a0vJ41FDKsdw4ezVoAb7wjq
         /sLmnyF8fo1EZXbTKrjzAdjN2sv4OSYR79n1mAuO+qqAPD39TCkLKZjNxQqyzOgCdi8I
         yEIPXA+lUPXo7dcys1BZtSnzta2PB0Gk9bMtvDZInI/dVMpJIyWgBiNylcljq6BKDCuv
         aUIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7pGe33YB73A6/9mmZdI2AWiJDcA/ow6nOQjMqiCBPdU=;
        b=UxZRsKlxTIlEFfnZ6vhqvn2UkKxGFDtg0zLoCzU3InkrckQeME0OF1QGNgHv0t+vHZ
         wTmk8ociK46CwXLjxeRcJ2y0UND7DPdeewx/1o9IZKumasvaE2SsDb51bfvIfX6v+6Rz
         BFiB7kZNOS7Ti2bSs2bgFz5FSgDXj1KPuJ78LlSn+cJCc+oc/irjdqTj25juYlL2fYIQ
         Iy0b2NmW5xoD1G8rtNAUqN4UeKgNNhjLCq/4GjdHsrOQBgLvfKRXe4Im/7mou+8GCW+s
         L548Rh2gl+V2c0P0dEMUzSkahyv7SDNcGh5uS2W085uyjr4X2l+lMj6HlEUc5artMNY6
         kgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7pGe33YB73A6/9mmZdI2AWiJDcA/ow6nOQjMqiCBPdU=;
        b=DFLR0y8RETP1hkvtR/qInIg0hk2P4r5ZY6ANX6teCUua70uyvDUPnl8EFwb/q2KAF0
         V5RNnV9nckkoHfB59i/4MpRvaGHyJqfFD4FZo5yc99dUCPYRcOUwxXW+eldHzL9jj1Km
         QE65kW6bwEzhYGNOCW1t2pY8ZMtCqoVdEkWHJeTlZSEMigA/lQSkhUBgnAMXhzxIjeY+
         LVb9wglNG0+i+VFxnax/KNl3Ci2CQguuyEY6uKRXFabTdGxIptjNeeVsyssdfzpqEOE1
         evREm+OMh7dIvh7YNmTgeGNsFIpHwTnBaqjZ4sNqZlWP2+ShAkTgFEKRj81F1uRZ9vPj
         rfMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Xm3/9+if7HYmGaKAgkFA0Q120pzDQb3feyJ3LX1phJDdL/67E
	rAH+WddM0PUItTfgOk1eLN8=
X-Google-Smtp-Source: ABdhPJwjZc9BuRXezb5JpSxjwybSDHAR4vexljkyoeiiCR/i9WdEzkpCPO6/bpX1Ky5Ghx8A+a5sdg==
X-Received: by 2002:a63:5d7:: with SMTP id 206mr12478404pgf.384.1611196513138;
        Wed, 20 Jan 2021 18:35:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls357428ply.1.gmail; Wed, 20
 Jan 2021 18:35:12 -0800 (PST)
X-Received: by 2002:a17:90b:3907:: with SMTP id ob7mr9159205pjb.18.1611196512427;
        Wed, 20 Jan 2021 18:35:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611196512; cv=none;
        d=google.com; s=arc-20160816;
        b=0ahfhWXTLULNGasyMIeaTVWF9OrG6DUX0MBNJ44FY7fyW5yAooyXQjSt96gmg540GA
         hshfs7gr6PD76/w9R0FLv7FrCrFoh7v7avfyCDkav20y6niSYF4nGDL/85+O4ht9pN+t
         Om60+WcMaxTX/EUrNzqY6h3s06rlxFyQ6rtHAtZfj7Q6y/kGZIiS+S7RMkLZZrNjpKib
         ZA46YZCpsmlV4LdRYZbATBLk/ojBcU/yyFChST7FiXcqVwAkEO+DSsli822MTGBMOSSU
         9+JbGdlpgR2CFEFmfsO26rl76oEi0s5Mp6eTwz3LAEP3nBCEahF8b/CsHlB055do3jLJ
         D8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9Y9DUxx2myNtOWxI8K8XFn16xIEClBVha4uIv+X/2uY=;
        b=VsZPvWYND6Bmj9hno8RzB1WIpSji/12r5bk+iF2UcbbG3SmhyaA+gDwVv6apGpgp3t
         6ShxkoDKKQfxWsXYlXkwDcwRde2wZHlrlGADPzv4N6QyZAVW2Z9Iila1NUoj/0kycWny
         LjQwbr6Gs23dUKi4IEFQ3YevjZ+mvzshG3YzN3r7X6xNEfgCvCAZzxCFWTsttc6yhzZF
         BC5nR5YwgmGB4h3PpjbBK4ymjrKuIRLN6uxcvlQKJPP/4ZQ8bKOqWRcr/DUY9w35p98a
         YLWEhTTAH+yE7EQd8feGkCyxVPaixRQpfOdbY9We/NDLUiiPHEvWWNxtpUbsLVs4qhrf
         cuOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G9zQ7C/d";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id b18si251567pls.1.2021.01.20.18.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 18:35:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id p72so1077545iod.12
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 18:35:12 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr8996301iow.110.1611196511863;
 Wed, 20 Jan 2021 18:35:11 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-3-ndesaulniers@google.com> <20210120204025.GA548985@ubuntu-m3-large-x86>
In-Reply-To: <20210120204025.GA548985@ubuntu-m3-large-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 03:35:00 +0100
Message-ID: <CA+icZUXycvAE4uVDcaVQfeiSCaHCxP8ZBUMccHxXES1E7RNjRw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] Kbuild: make DWARF version a choice
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="G9zQ7C/d";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 20, 2021 at 9:40 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jan 15, 2021 at 01:06:15PM -0800, Nick Desaulniers wrote:
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > way that's forward compatible with existing configs, and makes adding
> > future versions more straightforward.
> >
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile          | 13 ++++++-------
> >  lib/Kconfig.debug | 21 ++++++++++++++++-----
> >  2 files changed, 22 insertions(+), 12 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index d49c3f39ceb4..4eb3bf7ee974 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,13 +826,12 @@ else
> >  DEBUG_CFLAGS += -g
> >  endif
> >
> > -ifneq ($(LLVM_IAS),1)
> > -KBUILD_AFLAGS        += -Wa,-gdwarf-2
> > -endif
>
> Aren't you regressing this with this patch? Why is the hunk from 3/3
> that adds
>
> ifdef CONFIG_CC_IS_CLANG
> ifneq ($(LLVM_IAS),1)
>
> not in this patch?
>

Nice catch Nathan.

Just FYI:

The patch...

"kbuild: Remove $(cc-option,-gdwarf-4) dependency from DEBUG_INFO_DWARF4"

... has now entered kbuild-next.
( This patch is included in this patch-series. )

So should we point to this one and add a comment?
Thinking of a next version of this DWARF5 support patch-series.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44

> > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > -DEBUG_CFLAGS += -gdwarf-4
> > -endif
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > +DEBUG_CFLAGS += -gdwarf-$(dwarf-version-y)
> > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > +dwarf-aflag  := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > +KBUILD_AFLAGS        += $(dwarf-aflag)
> >
> >  ifdef CONFIG_DEBUG_INFO_REDUCED
> >  DEBUG_CFLAGS += $(call cc-option, -femit-struct-debug-baseonly) \
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index dd7d8d35b2a5..e80770fac4f0 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
> >         to know about the .dwo files and include them.
> >         Incompatible with older versions of ccache.
> >
> > +choice
> > +     prompt "DWARF version"
> > +     help
> > +       Which version of DWARF debug info to emit.
> > +
> > +config DEBUG_INFO_DWARF2
> > +     bool "Generate DWARF Version 2 debuginfo"
> > +     help
> > +       Generate DWARF v2 debug info.
> > +
> >  config DEBUG_INFO_DWARF4
> > -     bool "Generate dwarf4 debuginfo"
> > +     bool "Generate DWARF Version 4 debuginfo"
> >       help
> > -       Generate dwarf4 debug info. This requires recent versions
> > -       of gcc and gdb. It makes the debug information larger.
> > -       But it significantly improves the success of resolving
> > -       variables in gdb on optimized code.
> > +       Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> > +       It makes the debug information larger, but it significantly
> > +       improves the success of resolving variables in gdb on optimized code.
> > +
> > +endchoice # "DWARF version"
> >
> >  config DEBUG_INFO_BTF
> >       bool "Generate BTF typeinfo"
> > --
> > 2.30.0.284.gd98b1dd5eaa7-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXycvAE4uVDcaVQfeiSCaHCxP8ZBUMccHxXES1E7RNjRw%40mail.gmail.com.
