Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSXB777QKGQEK4JBOUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5254A2F5B2C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:20:43 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id d7sf3777442qkb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:20:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610608842; cv=pass;
        d=google.com; s=arc-20160816;
        b=XnP8I7HHfRAowPeidep0uVXvaTDeVDxJTXtdVND2vz1D7Pp3aZLUwVybDHCHFOLp5U
         hUrp3366p334jbn1or4BMK5QGh+s2zrkHRcuWJbp4aZGqTvT0rcCmHRs3EudOzKyED5R
         rQgUkDbDs3ukSGPsKqowCxlTXAaI1Cy91LlGJlBbXIYVb7RyRs/VTOvifx6y/ZZY42h/
         NlAjwJaabbjC9omalobMSDTGG29TPpDfCkNp5Bjp+LGMjux6Zm61KcswMuJmJrsnaUNq
         93Y8hGK0FtwXQN40SvI/Y0N2W5DJp8A7TKwYy14oY4Yzax35WMOYoAUBNUNvLusvO4ih
         Pz0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Xa8BvOahW6QLspYhXpw0PSVTdT2b+JByRek87X1HopQ=;
        b=Aw4QLyb8IdpYjFHdCK+SVkrXU0bkvngt7ks3CcSsr33Iuuta9yUfv+x5SLMjMf2f2v
         wr2/ZsOD0CD9ZkpWUBCYvjthYUPAVQ0rZjZhE/9JS2uN2pOfJPnZ6MDa/G7tq3bDsO2r
         /kV146VZoAPQdR+APM2BMA5Q1/D2IYC6PpatrsURLw0J9PdAOJx8pwu4aza/GW41xeWA
         o+Ax5CnpziS6nyuTTpeUomJGqH7F7iZpq3J74exwh/zcG+9/4pjPYCbd+BnqtJWb+NyH
         JnkcBKraqgreZimli8ibI5xlzjuttuSoR/abFpk8kh0X+Oj0GARPG7EHe1nVAMspyE45
         Mb8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eIH3XcvZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xa8BvOahW6QLspYhXpw0PSVTdT2b+JByRek87X1HopQ=;
        b=EXEWHWnIrRLHXSGLoGI50wqD2K1s25Y9/JwRnlgYShtCJx0nMukySnglHecza5hxHS
         KKvK5rArm39xymqxHszYRLrl375FBBoQideBGLlelqh6cNRC0AJhaMv0WMsq9ubu4R0I
         ruOOo5XpLu9uAtPDthgJyWeo2kJ20yMIXJB8liUJtYZeu+8eg/3Uyhl1I594QX9QYOoo
         qEf0Q/l5U0W8/nqd3TRaqBCTunIeGqS5oUO0fgvUfNlGz9AKJI0kz9X20LxFsXyXSdjO
         yLd4KnZaa5LVY0BtZrWmqhFSH5QYyiprplEcHJpp84VXmfEwdzfZjP3ImG2qbZ6InXWx
         xs+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xa8BvOahW6QLspYhXpw0PSVTdT2b+JByRek87X1HopQ=;
        b=ezNqf04mI+Ta2SgwWvqEQYEEDD8NvHyFbTIh3MhUia8bLa5Pv6NPgOrSfOe7rQXV3Y
         4DUpyYz5a7cpo9fRJHN+P4QPvnmKPG3YzwGpt3Ksv1MIoQ5UeM7AS4Bqpxq36p53tick
         4vk+1wC6NXEQNvlcUW9o6Jwts62ih5a+a9Wjx6rfGWHEbY/ETFVzztAEZ4JVBmOOBdta
         ebYvOxxRdQ5NtO+qoO1KWGxN3A3e4OH7rCsHONdGM42sXoXAIrHsStkEIDDFQow7DLDh
         kMgAtfZmx4h2SD82q15hoP5hb2h2axEWjUq0poYZEfQnlIo+MIYBT8gpQauHT60y7Bpb
         EpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xa8BvOahW6QLspYhXpw0PSVTdT2b+JByRek87X1HopQ=;
        b=OA+wTiRcTktf3SmniyQiL4UvWSiBHLkY6DftbvCg4tAhvyl54PkWvbyLOS8JkjrnKT
         EKvV6uEkBWSud5+zC7fn6qY6i2ibpmVCRMAfkvcHFluRfgeFDa2ZOrKn8KQevfN2hlLc
         4YPRWdNpom7HHARlqnVmxusaYRRRmpDIA+Cf2T+uRTSSp54M+SHt2BfzwCMwt7LYFY2s
         w1ftSyUHM06ZxFqgWVhc3ugERKBWJ15e35Vv2ey8T1rLEG2DriRuV0d8J7K6kXOFz4IJ
         QuwSdAavmaAkO54kRto+L998CQQB85juxYM05gmFsR5SZIPZzINcOiX7U/WeVtlEY2ad
         6mqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eho4DQ/028tw+aVsfY++p8ZsKjAN6XbRMpIoKyvm/DxSzUbX5
	OiVIIt8OANs3E5tQ+RPy1pk=
X-Google-Smtp-Source: ABdhPJwDd05D3vnH5LGg2gY/YuZKAWkvnLzKDr01hmYT3QeVqstLSJNF/nZRZNSshtfMe3qE0wrMiQ==
X-Received: by 2002:a37:9d96:: with SMTP id g144mr5569480qke.441.1610608842458;
        Wed, 13 Jan 2021 23:20:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls2347279qkg.7.gmail; Wed, 13 Jan
 2021 23:20:42 -0800 (PST)
X-Received: by 2002:a37:a342:: with SMTP id m63mr5976668qke.120.1610608842118;
        Wed, 13 Jan 2021 23:20:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610608842; cv=none;
        d=google.com; s=arc-20160816;
        b=nxhWubzG/P/lznIm3ai1nSvJcEZbLPptaV6ThWy3C9BZx8fh2ArG3+ctxQnkT74e4l
         rThrbxQLFgJxolHKDrINA6/a5EEXLtk24bSSg36YrISuzgWaCV/6RwbNuYlTWqVgBcJU
         T8fuNW3wzSnJXIAJFLJbsFfsJ+c5RAyO+arVbQwUp0xSbkuy157AtxYXb81MqFCsqiFx
         JBv7I3JEmJLo9d8Y6vkVGOGRpzZnS/bgf00IukooOthdzdds9NwUPq9YP62sN6Pv4qBx
         oqm96f2Wy0Bf1usIzUZLd5+OjfXmjOcNfIlHX4252EXcKPNkJQgl3dTIxApI5GopLlEQ
         X+og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mxmch7rl4egTEBXYfPlF0zYnqi6xJdFXG+QKIy1/Y8I=;
        b=pGbAyKhrFGXECqe6x2whNuLPWAnSJMmTpQ/gMVo+E5BtMziCG81qQDCNt4lx8HMYTv
         v7aADq4tXnHnXNsSLgEQBKrZD9WZbvlaPqLUSMGMD7wMYVSGz8GKVKNBw80U1WxMQmFb
         9hwcRphpi2TjwgIXDlqnzzpXDVxydZtA9zJGlvHM4iULCWRyVN4Sh12I/4x7BsVYu8/C
         oIRcKR2ta4qQ8BdGWDQE4Eodi8pK59qLn+nFIZOCsVfzJcY1t7UJeDOHPTNBC++foKuq
         KkgB61Y1ou3z6HhcZiAjTf1a62BGfwmwB7xpYdBiUfO9CAYYa0SEYkxEMROULgKp9t/s
         iKRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eIH3XcvZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id z25si362723qth.3.2021.01.13.23.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 23:20:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id e22so9326792iom.5
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 23:20:42 -0800 (PST)
X-Received: by 2002:a02:9f19:: with SMTP id z25mr5442115jal.30.1610608841857;
 Wed, 13 Jan 2021 23:20:41 -0800 (PST)
MIME-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com>
 <20210113003235.716547-3-ndesaulniers@google.com> <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
 <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com>
In-Reply-To: <CAKwvOdm40Z3YutxwWyV922XdchN7Dz+v9kJNjF13vKxNUXrJnQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 08:20:30 +0100
Message-ID: <CA+icZUWySPfGGswqEBZkCQ+OjogmMqzBvik3ddLHPWJ2w8EC3A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eIH3XcvZ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
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

On Thu, Jan 14, 2021 at 12:27 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Sedat,
> Thanks for testing, and congrats on https://lwn.net/Articles/839772/.
> I always appreciate you taking the time to help test my work, and
> other Clang+Linux kernel patches!
>

Hi Nick,

cool, again in the top 15 :-).

I should ask Mr. Corbet for a LWN subscription.

> On Wed, Jan 13, 2021 at 1:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Jan 13, 2021 at 1:32 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -826,12 +826,16 @@ else
> > >  DEBUG_CFLAGS   += -g
> > >  endif
> > >
> > > -ifneq ($(LLVM_IAS),1)
> > > -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>
> ^ DEBUG_CFLAGS are set for everyone (all toolchains) if
> CONFIG_DEBUG_INFO is defined.
>
> > > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
>
> ^ "If not using dwarf 2 and LLVM_IAS=1", ie. CONFIG_DEBUG_INFO_DWARF5
> && CONFIG_CC_IS_GCC
>

OK, I know DWARF v2 and LLVM_IAS=1 is broken.

Looks like DWARF v5 with GCC v10.2.1 and binutils v2.35.1 is currently
(here) no good choice.

> > > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > > +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > > +ifdef CONFIG_CC_IS_CLANG
>
> ^ "if clang"
>
> > > +DEBUG_CFLAGS   += $(dwarf-aflag)
> > >  endif
> >
> > Why is that "ifdef CONFIG_CC_IS_CLANG"?
>
> That's what Arvind requested on v2, IIUC:
> https://lore.kernel.org/lkml/X8psgMuL4jMjP%2FOy@rani.riverdale.lan/
>
> > When I use GCC v10.2.1 DEBUG_CFLAGS are not set.
>
> You should have -gdwarf-4 (and not -Wa,-gwarf-4) set for DEBUG_CFLAGS
> when compiling with GCC and enabling CONFIG_DEBUG_INFO_DWARF4. Can you
> please confirm? (Perhaps you may have accidentally disabled
> CONFIG_DEBUG_INFO by rerunning `make defconfig`?)
>

$ egrep 'CC_IS_|LD_IS|BTF|DWARF'
config-5.11.0-rc3-5-amd64-gcc10-llvm11 | grep ^CONFIG
CONFIG_CC_IS_GCC=y
CONFIG_LD_IS_LLD=y
CONFIG_DEBUG_INFO_DWARF4=y
CONFIG_DEBUG_INFO_BTF=y
CONFIG_DEBUG_INFO_BTF_MODULES=y

$ grep '\-Wa,-gdwarf-4' build-log_5.11.0-rc3-5-amd64-gcc10-llvm11.txt
| wc -l
156

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWySPfGGswqEBZkCQ%2BOjogmMqzBvik3ddLHPWJ2w8EC3A%40mail.gmail.com.
