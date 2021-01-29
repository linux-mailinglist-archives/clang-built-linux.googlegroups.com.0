Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLMQ2KAAMGQEQOSZB5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD90308FD0
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:11:58 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id y9sf4957482oos.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:11:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611958317; cv=pass;
        d=google.com; s=arc-20160816;
        b=zqc3vLDY4QN2/VUZWLghGQkgnOGCTlVU5V3096IFenT2WoW+5ih4vKbb7jXrpLl8Nd
         VNY3eRgRDb+6So+MmCdCa0F3LKIwH3rIkY0Wmiy+OzN82+zZUHlpZ2cNYAR+RSMhU6ti
         GYPgSwajsa6GnGhKSAE0FpxsH+ZgYWUu3zkuDdgGh2vGnpXDAGmqiJzGyQGNnrbPamzH
         zMQ8oddTwgigtH3VicT2RB471dJL2BkxNhfoGwh7ahbLoYEB/ifMD4/iPnkOUHu5mXRY
         G9GKNz54aeg5Gf8XxMzVjOy7UxS1ac946mgOzMriwF6ImnN/RNLPrAxtIg3kHmHsoYOc
         WxDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AVPKYQmslWEjsImKCOvOdN7hAecIThjPVjMAw1zYQR0=;
        b=U/Fzjni2kW0mdnDmCJB0SGaM5hqUVcyVX3BhBZO8S+UDjTdLOG4awfGf/VNGf6Elok
         0NJTRYxGG3BbYywuNUzrTaOOn5l0rMO4Ja29mmk1+InEgtHhVdjt3D0M8Jv7CRdHLk+P
         kDGrWxK1sG+aZb4/ghIIXsi/YqZEUWTzh2qy+MU8TGIrB3xwTyln1icgQFeoGqMsT30N
         lvtrT6znltWGT2vpoT+l7zBlg435fd2kEXMCHWkOn9c/mvBWB9MT0xPmC6zCe1EaEWmN
         of9pPXHvzq3VOFslfmHA/NCa7gcQ59d2CldXLyvPC28/RhXfXgqxxKSWyJ1zBmtXFB2c
         dGVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mByCb7Vg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AVPKYQmslWEjsImKCOvOdN7hAecIThjPVjMAw1zYQR0=;
        b=J0r1Kubyk62TIKc1vnXLVGx1Zpy5jyfiNvyIbIeN7faOQvSZjXcNIcoPYsk/JmLEUt
         bQrzJi+kaU1l+HlYwrFts5fDK3vTYHSUfzHCYM+6QscBZTdFmYMIx2k8BMLKXZXPDUc9
         SGVqtDmRN6R6Aq6jNL5CZd+qYj6bS3U/MRL38EavBubC0VNCNSxSdva6j7p2WFpUDbkW
         Sys1UDcxIQXVtuyjOBMgrwmZ3xAM81BUAKbR5w18+30bUSXm+BwcQiUTWB+c+CAP8qhZ
         XwsvRhWxNHpwgq8eDuzmFhlpTzYG3af3lGHym+TcQed3nRKR4salCkRzJm2QtmaDmaMp
         9TGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVPKYQmslWEjsImKCOvOdN7hAecIThjPVjMAw1zYQR0=;
        b=JsLd3TZFUZmKp3lC9z9bEn90aPevky05z/fv49URwoo2YYym6TSqgUc0e8UIUN5kFC
         JqJnDMRkcLiQpjozctoFbb/Ea+fg0uDgqnxYv1bzcVPeFBnYy8/9owLxSb1ScIRFRv5L
         cQIDSjnOKp9uMwzGz3/TeCJPawOiMRWph4xVRnA3+xcxoqa1+oU1LEUFa0qIqOu9hUJZ
         PrBWmmRbZFJkWn65DTC3l9PcMNJISiFMYOvaoo+0RgaWXWjuHBlR903L1RZ8Ynb/MvMH
         ypke823eS+Ug25+va7t8ggIP2g1MWgXWD++BUKqHdTY7WTazoU4GCK6+ZJS0nGpYyX6Q
         erEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AVPKYQmslWEjsImKCOvOdN7hAecIThjPVjMAw1zYQR0=;
        b=c3n58gaL7mULYhNGeFSGvd82icX8Gy45N8Ze2xHGsgtmZTMU3V67Py2RmDSH8TlrWl
         hPo08w+Sxe0RWYykd8foRT84qy4xcDl38aACxmp0T350OW2tW3NwPHCInxYw03xdKnBE
         Rs9o5cUXr+Pl6sWyxo2KMgGCLokwaJD5fNhdr6b3pGGlSp2jz/YqN3T3f/81ZniN4fH0
         /rZEERhTsM/nq9VGEqvvTcJYy6mMa2d+nArwtQK9naU9kIf9ILN+/YaU0NGbHsgofQFE
         cOfLpUmeR8Jz/DJ+bujd/4W4Soy/wfgwGPv6+nkJnGrN9zluf9oz9rGGq+1I3YAbGEOn
         EBlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uxkazYg6jpt01ftqSpu9q2NnCZx8WlJrDsnI8hQsuS6Co8qs4
	PH5csxV/fAXqoi7Z5yTzwgA=
X-Google-Smtp-Source: ABdhPJwbTs9Ln6Z6wwzy/6QQIDrNwsd7Qr3+JyXL15KF7fho0RAYJ73N+xOmGQj5gVA5EkRvU3iHaA==
X-Received: by 2002:a9d:69cf:: with SMTP id v15mr4517358oto.122.1611958317240;
        Fri, 29 Jan 2021 14:11:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd8e:: with SMTP id d136ls2330802oig.6.gmail; Fri, 29
 Jan 2021 14:11:56 -0800 (PST)
X-Received: by 2002:aca:be0b:: with SMTP id o11mr3855167oif.42.1611958316861;
        Fri, 29 Jan 2021 14:11:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611958316; cv=none;
        d=google.com; s=arc-20160816;
        b=ctUOow2Ee7GZu3CSuY4IxaBeHEh8eD5n+osSHGXG3RA6VgYUeyWMUNbEZbFgjkuQh9
         9sHMQXr+384aINYaaFuNV7sy+4Yh7rCKpmj2vGSuipkBP8fBa+q8/ykPfJSeqfQx56Ue
         2b/AsiJKWW6B3+YQqGgas+Nlmw/TvVaOKGAk9XAn63Z9DYGW7YZl+BjJo7svp0aI5LuU
         JKRBGVe6sgPDTW1yRFGDaLFEfiSVrjd65cKMR4PI9nW5aV34zhE8FreRzm1eA85N7AZu
         vhVIe/JFlzu3mZUhaTrcQV+M7xKFBKGcpmcysKcE7gFnKRahaYvObT8cPGY99173rrt4
         gKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+8OZzNek+pmYC0wT8G3ozIZ31/2ufP4f1prU8RslqD4=;
        b=XZIEuS06FjdPAFnntt99JVp7CWpIuDkYXVneBsVi+XmqcaXlgoHX/mBw5q1sea6LOC
         Ugmh0ZwgGJ7qStPrMUWy4I4Xqr2F1CvS5C70CyfFJqzYDrkJSR6CEUdVwqV96oE4BAgK
         ljof5y/9LVQIsPv3BTuUgL0cwUVmizJtpPOmCDF+Ion5V6q8/vh74NKxhO+kteWsmvSa
         2gZjbzX6t5y/vYh6gOGBXdF/2zbWYa4VKBUUwGr7j9oXAE4RfAHRUuqrI7+ipUennonH
         HUpCVI1orbvyE4ZTVeSn8i0hWnJaVi0owGL8kAf+YE3JBNbqWy4jKLvfAiZEGGe3LwuX
         KhYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mByCb7Vg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id m7si647746otq.5.2021.01.29.14.11.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:11:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id u17so10979199iow.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:11:56 -0800 (PST)
X-Received: by 2002:a02:b78e:: with SMTP id f14mr5654308jam.97.1611958316390;
 Fri, 29 Jan 2021 14:11:56 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
 <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com> <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 23:11:44 +0100
Message-ID: <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mByCb7Vg;       spf=pass
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

On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > >
> > > > > > > > diff --git a/Makefile b/Makefile
> > > > > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > > > > --- a/Makefile
> > > > > > > > +++ b/Makefile
> > > > > > > > @@ -832,8 +832,20 @@ endif
> > > > > > > >
> > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > > > > >
> > > > > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > > > > +ifneq ($(LLVM_IAS),1)
> > > > > > > > +ifeq ($(dwarf-version-y),5)
> > > > > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > > > > >
> > > > > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > > > > that's why I looked again into the top-level Makefile.
> > > > > >
> > > > > > That's...unexpected.  I don't see where that could be coming from.
> > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > make and which source file you observed this on so that I can
> > > > > > reproduce?
> > > > > >
> > > > >
> > > > > That's everywhere...
> > > > >
> > > > > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > > > > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > > > > | wc -l
> > > > > 29529
> > > >
> > > > I'm not able to reproduce.
> > > >
> > > > $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> > > > ...
> > > > clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> > > > ...
> > > >
> > > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> > > > ...
> > > > clang ... -g -gdwarf-5 ...
> > > > ...
> > > >
> > >
> > > Hmm...
> > >
> > > I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.
> > >
> > > $ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
> > > [ empty ]
> > >
> >
> > That's the diff v5 -> v6...
> >
> > There is no more a dwarf-aflag / KBUILD_AFLAGS += $(dwarf-aflag) used.
>
> Yep; not sure that's relevant though to duplicate flags?
>
> > > > Can you tell me please what is the precise command line invocation of
> > > > make and which source file you observed this on so that I can
> > > > reproduce?
>
> If you don't send me your invocation of `make`, I cannot help you.
>

/usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
-lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
KBUILD_BUILD_USER=sedat.dilek@gmail.com
KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWsncyKvxPZ5g%3Da3ssWy%3DcYahsU6hprM3n%3DjFUmnjPC6w%40mail.gmail.com.
