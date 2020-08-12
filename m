Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWPVZT4QKGQEWIMDRTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0738D242377
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 02:42:03 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id b18sf563425ilh.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 17:42:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597192921; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYmm1Bbwg9MWTVnjjy66MdmPJUzVm3gl5tDNZzuLu9vWws5SNkw1ksH3h7YZFdpvl7
         Rqe+/JNUJ+6+OmaOACeyx5vXEl9Sdvlxnrmp7+hOOGemN7+tet8fE3w2y0AbrFLV1ebS
         etpoWgsIXwLsrTSu9p7wlXU6XSUT+hUblQj5+VL+wUOQy79CWCNdhOpxeXgYDAyyFQCK
         eE4jYkHEoimQX9Z2Csih6Q/IwbrwKeu6wk8zmbkOJw34iZbwFGbVx2l85KbxjTuDRbeD
         GHqtWqsnR+m3g393D3uCfoobcpLp+xlzJf4I3T8uQfxJ7CEGj8eLo23zzfMQ9yWtF0Jh
         GyVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=1LoK/ZBhYhuJDcdJhHPAFmj562lhh1//jIyIwcXrZ9w=;
        b=e+LyB7/z7L5SJTdNxYVlmUt0YdQgBEawQFGm+5MevJxp9MSeym04ipSzCza0xl9Ied
         ZHdEzXMZB0zj93O5/gGNsLNAGdSe9T+bkY6Ky0WX0LQoDIwGv2uRLAlc1YxSPldG7Dtj
         raPKleYOhK+aNMH87boFC8nKxqW6uTEeiFVQ6Edhb2fIkjbb+833sBrse1bRiAPoLsXx
         PJfZKq3Y2HuHTVV8OEcZ38K9aH7YC9FFUB6fbLCeYciTnLUMpCnSINrvEIM4Z3dgj8i2
         UKgCaojHSzAeCS2HI3LCakZdmc/ie+pWMD2lPL9njD5PIPJlpDfcJkz8SAUQJUpliNA4
         dz4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eUizsHu8;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1LoK/ZBhYhuJDcdJhHPAFmj562lhh1//jIyIwcXrZ9w=;
        b=V67jw9O1ZLYXcsEvNG8HEOisz16C8DNX25fgEh05RL/lT1nPfH0SC1wr2ekeEfA+mz
         B0jXmLSRqWjjR45usu5Szy6Bk3u00zLG3UyNfyvqB2H69GkKXknqw4IMVAtr1gCoIeNf
         PfeFKPJ9xRtt3n2cHDAWLF1F9ar1xYGXHtwWs2JwXFPnnYa/2+EDRZDDyZkWU8zIcUWe
         sv7jFdvWDfTwPfSPRDVOj4u67PCCRRh5Q2DWqq14E3P5fqu3b1Rh1eISQxCc0/aTH0DH
         Ub1n7X9wAAy0ImLAbbtVwV2OE+Z5pU+jGJE1aQvcGGPqev28qMDOvrT+HnAQuJVXv9g7
         Fxhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1LoK/ZBhYhuJDcdJhHPAFmj562lhh1//jIyIwcXrZ9w=;
        b=YAaaijEvguziPjAkt65UBzL8P8TYKhnxO2nc0G9SZpFdwnbba9pPJ1Vkz92+VFF/B+
         YiFUdcbrGHZJZrlylbzmXHnruIdLvBRqOeat72fCSvNzX6wkn8jdBJwA89tdO6nnaIYl
         JB2HUWb4UVx7mzMvBzNGsm5o0cCrmgO8tDRCELEj9RVex9szn6uIyiLRJlcW/GGJAsJ3
         9vOe89Df7nG46M7Un8HxCVDHjHVzhhwnjycxPb0QjNKkszTDfK9evwKL7vVJyyjA5XxC
         ws1E7i85SZMWYR5ECFLB4dMyhFOyOsKRbY8rPjX40TDUYZ0EFvhNzLjYkstpXErD6BIV
         PQ5Q==
X-Gm-Message-State: AOAM530sgEZMG3z1Hqv9wIRb5rokFtHmTaePQGlnBOxOepczmB/A8O5L
	NIIEnqPPJwS2KrmNmVkgy64=
X-Google-Smtp-Source: ABdhPJwGwBGzzjJbhqQg5YEk4vBSHaNirM0hilJKbLaDIXaY+zjj2VBWS81WUPmlnoz1ubtHuK7HbA==
X-Received: by 2002:a6b:ba89:: with SMTP id k131mr24658758iof.133.1597192921517;
        Tue, 11 Aug 2020 17:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a1d2:: with SMTP id b79ls90026ill.0.gmail; Tue, 11 Aug
 2020 17:42:01 -0700 (PDT)
X-Received: by 2002:a92:8550:: with SMTP id f77mr22753530ilh.129.1597192921070;
        Tue, 11 Aug 2020 17:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597192921; cv=none;
        d=google.com; s=arc-20160816;
        b=aqR9PQCCKpqGOUR51djsJDgKdMDRH5IrL4Zw0KaA6UbPiOXuuXiXUzDNBcvlRG8Xct
         Q6+82K4ibEBB7DAQm3Ans1JSg1D+xAic6wv6gtSA1O4xGM6Uj2QTS6nIe5MeVtFAH6IH
         TygkTFJAmMohm71/LftOrC0vNvyYUfNGSoGJEwfHpNuXh7xC2hAON3MGukQD4Si3Rknd
         sOrMViPLd3yK82cpxaS6o8iNBqBYJFzC3dMZY+RTu5IeF7ZXrfbgascr9R5giqBgKxI9
         6N1gN0XC9aFfl8SKqpyPZ7T13Dpa6XJpDo7FdeSTky51CZ07shHuQp6RSp+CiLIjbIeC
         sWIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=xKVZMt/dePQM4MuKFNd6Ajk9D8rVSs9BrWtvNC9qc9Q=;
        b=Mk5GPLY36jfw9I16C/jnd/3GGG6q2GqdyTD8+7KYQ3Hblk826cawhK2vjZMODsETsu
         mOEnIlMkm6mtPc78a80XuDW+Gt2Ry3UAKXO5jOhtgsS32gqvEdKclIHaRba0w/wEGnGc
         nnHF7//9LWywpOfogfLOt+XBBU3jSEWSiMsw8BirPu0qt4+zDVBsoHpdquaSSLjTTmk6
         VENSh9oCD/7pnhdSMLSRV1SRawQwMUu7bodYd7FHSszmCJ/Kdb1WCfDRCZR4hiv26dEM
         Z+D1WfbTArpYMev2vkoPsrSrIQuPOdAtUt9VCyUYkVgzcrXvLeiPvc+b9WUzpDq0y08N
         p+xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eUizsHu8;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id s189si63387ios.3.2020.08.11.17.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 17:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id l13so285956qvt.10
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 17:42:01 -0700 (PDT)
X-Received: by 2002:ad4:4089:: with SMTP id l9mr4196623qvp.175.1597192920425;
        Tue, 11 Aug 2020 17:42:00 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id w58sm544891qth.95.2020.08.11.17.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2020 17:41:59 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 20:41:58 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
Message-ID: <20200812004158.GA1447296@rani.riverdale.lan>
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu>
 <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
 <20200811224436.GA1302731@rani.riverdale.lan>
 <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
 <20200811234340.GA1318440@rani.riverdale.lan>
 <CAKwvOdn5gCjcAVHZ3jHU+q=mD5rmFAHpEyHyLf7ixtdaQ3Z-PQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn5gCjcAVHZ3jHU+q=mD5rmFAHpEyHyLf7ixtdaQ3Z-PQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eUizsHu8;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 11, 2020 at 04:51:23PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 11, 2020 at 4:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Aug 11, 2020 at 04:04:40PM -0700, Nick Desaulniers wrote:
> > > On Tue, Aug 11, 2020 at 3:44 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > > > > > Cc: stable@vger.kernel.org # 4.19.x
> > > > >
> > > > > Thanks Arvind, good write up.  Just curious about this stable tag, how
> > > > > come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> > > > > back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> > > > > help submit backports should they fail to apply cleanly.
> > > > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> > > > >
> > > >
> > > > 4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
> > > > needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
> > > > submit backports separately. For 4.19 onwards, it should apply without
> > > > changes I think.
> > >
> > > Cool, sounds good.  I'll keep an eye out for when stable goes to pick this up.
> > >
> > > tglx, Ingo, BP, can we pretty please get this in tip/urgent for
> > > inclusion into 5.9?
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
> > Another alternative is to just do this unconditionally instead of even
> > checking for the -pie flag. None of the GOTPCRELs are in the
> > decompressor, so they shouldn't be performance-sensitive at all.
> >
> > It still wouldn't apply cleanly to all the stable versions, but
> > backporting would be even simpler.
> >
> > What do you think?
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 3962f592633d..10c2ba59d192 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -43,6 +43,7 @@ KBUILD_CFLAGS += -Wno-pointer-sign
> >  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> >  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> >  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> > +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
> 
> We'd still want it for KBUILD_AFLAGS, too, just to be safe. Maybe a

KBUILD_CFLAGS gets included into KBUILD_AFLAGS, so this already does
that.

> one line comment to the effect of `# remove me once we can link as
> -pie` would help us rip off this band-aid in the future?  It's more
> obvious that the added hunk can be reverted once -pie linkage is
> achieved with the current patch; either are fine by me.  Thanks!
> 
> >
> >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  GCOV_PROFILE := n
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812004158.GA1447296%40rani.riverdale.lan.
