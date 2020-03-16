Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHUEX7ZQKGQEDKPAOQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2C818720F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 19:14:56 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id p8sf784088plr.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:14:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584382495; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiP3VOolf6e4PVlZmRQdytUMaJmt3aUVD9PtorxrD9rIEjUwQ8F/0MzupqKZLFofxx
         F8U5Mj6XJOUHIsz8BZmPk1YJFpppGsgGRdPD93euN2msceocG8q0J/q7/TIR1GJdnj9m
         5sitGWYc8nagmHS8aJgil3FBwgWRm3Bx+OMSZgPcB0cv2yChvRzmQj7wmMeNDAb1+kT9
         /tF01gFx6kaKpyfV30IVNW260Z9JWvnmRDmjbkWHhloo2sMsMcUOYwGODHRjrHgsshW2
         KGBgs+zS5S+DlPvqdV9vfwPAFH4me13oTwR4HqXvgls+RYyenc7pORzL1X21N18dy2bB
         hCPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vN1aYYMnmhqbJ5pQWZUYXGuq1PT+GNAIZjcAVYyJnNg=;
        b=AXH44X80lpD2lId10Vq3+2/cI+5klQY9N3przhD0r/gKR0baTYMR2tGV2N9tq0ifq6
         JVo+57stcYnyw5hN2Xq31Qh0Mkw17E6G5EMtauxgKYlWapCFq/LHDRvTpGf0rmtgnaxh
         kLo+PWk31VvsFrOcY+fO0uXeehWPfRa/0Qw+CuGkdJqJqyDP2PrBQYOqtVpdJKbHho2j
         i7U0mNfvvhQ3jU5iNKM8QM5/aokJF5VKufJ0Bcc+PPbs8eIBOvmvSRGksEaENv7MZMoc
         Hf+p9+piLSkyFTeq6ci3gietgnD1MhjP7qCUyJgXSi9fITqdxpGfKQzqU53T1Py4wS10
         Hetw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IhllkJok;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vN1aYYMnmhqbJ5pQWZUYXGuq1PT+GNAIZjcAVYyJnNg=;
        b=WrbRy8phMmN+kkM/0pKbl1blMknpnhTNBhlzqqnp8IQ5JQ9poD7DZS4jv0xVOISWvR
         jHhw+76xB8F0rAPPftHpbk4EtGjzS3MKIWdSHzhKTAvB6klqdNxxF2fW81woFinZ1Guz
         +qTMokv8qlcBrHaOlXZCme/FlCum5VgDSWNB5oIIRXo7D25zpMbraT5rzzlZjOB6p8zT
         DZu8D0w20ZDOuqLY13kwhOSwm/7drKhJJkK8Lqgu6aHMT8v/d5/lPiHZ5i5KQSjgOg/t
         gE+W2uKN9EJIkJJe2luBPL/+qJy2e6WVFvEvkp8vYyT0Bf+8SY08ZUmO9pdBp2wKrytI
         EvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vN1aYYMnmhqbJ5pQWZUYXGuq1PT+GNAIZjcAVYyJnNg=;
        b=sJ3o1qoYY6n6o0KnmAJopm78FYuQwprIUZPYgah+CDX3swUSaUdngk1b0aNeJB6ua+
         x+wOHHUmNcuKeCWtj9MvpNkNRTpct9hpWS8TbSYVPuEXtJTd2Z4WfCeStbj4oDA0YvKP
         fjQFolAY+1DyXJVMH8BIQxEgX+X2JIXBrTqMC8t0aj+mYMIYsqjycoPCT3DMOD6KAN3G
         VH36xE7gREdH31zNyXHPPPpX2CLD5OXX0VA0WcDWbLxiVtcwUH/XIGWP+x+oKARMga+W
         4jYgE/cWj71ceA0KId0980IspaMjkFrvRH1y03u6SlGhDFSJlOYbN0BaZUQOjWas48tm
         KCaQ==
X-Gm-Message-State: ANhLgQ2xMlkYUiy/w0LT7i5BK7wx5kuGlnk1pfHlkSwJY+f9x0beXTiL
	vBVTW1SNSRVyQArDHY7AtvY=
X-Google-Smtp-Source: ADFU+vvvWHyqxmCZW0+OwaZbeKMg0TliiR/MNaElOubU3vzWfrLCu+ftTnWTjgTLmNgxyMvbAllm8A==
X-Received: by 2002:aa7:9588:: with SMTP id z8mr857665pfj.240.1584382495035;
        Mon, 16 Mar 2020 11:14:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab86:: with SMTP id f6ls10002821plr.10.gmail; Mon,
 16 Mar 2020 11:14:54 -0700 (PDT)
X-Received: by 2002:a17:90a:bd0c:: with SMTP id y12mr829095pjr.82.1584382494585;
        Mon, 16 Mar 2020 11:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584382494; cv=none;
        d=google.com; s=arc-20160816;
        b=wa/BtQuH5dNA2XCd8y2BO19DyxIQU2frM+w79iF+Qlz8HlLr5XjhvrxHBeJreZGiec
         B47auPREqta4ISZzZ3zudYBD+c5HnvRJrZkuRsDBaMr8OjbgU5vRYSgLJDEenDgoE/EJ
         qLEYC4elkPEah+NhHR3Emz0uYJMn7m0/YsOS7rOLoprRZos0RNgP4KBcvKKkjbIf4lNZ
         BKmh8TnKuOGFGNizCIZ4RaEizImbuUGp2yd0Vpa16xNbIwj+bBPuEqxbK1tIgauGQxUe
         cP3fW4qOy2anQqIGSUMzuZFASFLzQlqCSTQTL46YjgWFYZxzg1XVE/R+bNrvzXQC/Z1v
         tysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UT/VhBcIfPdvMnxKkWPR0JR64CyPyYECMfqKnoW8WkE=;
        b=Q04vyWyzDdgJmChBeWd9KM7k7z//3x/A0oD6l9gKm2nMhjuFgQSisQxWt8hPMpba5I
         ubxjPIbRtdnSRliHrb5Weu2k/0chHSesEA13M4xJnvNl5srM+LL6IufY4ZO0BE5M12yA
         1huc3Zg3JHMjsogjg12cssAmkl7vARA5ccpzAye7qoNKcw19ib+8JEQxHeJjn61LxDY/
         F0onIlck/yhReEpHC8gbGdEbFEUpudXwBFCILtPfJjjaKuJYNggYi6cJ8NBQAvB9O9tf
         6XFods5dXLGmb/ChxwGu1Fygeu/5ZIBFGgvWJsvnj/lCz8Rkx7/J02qTWgtMUdjGUegw
         Vaew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IhllkJok;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id x12si64125plv.3.2020.03.16.11.14.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 11:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id b1so10183059pgm.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 11:14:54 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr1040315pgb.263.1584382493973;
 Mon, 16 Mar 2020 11:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <e841a11a-ba40-e999-e840-4b5352262729@intel.com>
In-Reply-To: <e841a11a-ba40-e999-e840-4b5352262729@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 11:14:42 -0700
Message-ID: <CAKwvOd=g_Soj_xnrz-ptUoEgek87sbeikcRpdrvEJGa_F72fiA@mail.gmail.com>
Subject: Re: Should 0day-CI support more architectures with clang?
To: Rong Chen <rong.a.chen@intel.com>, Philip Li <philip.li@intel.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IhllkJok;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

On Sun, Mar 15, 2020 at 7:28 PM Rong Chen <rong.a.chen@intel.com> wrote:
>
> Hi Nick,

First off, thank you guys so much for enabling Clang in 0day bot.  It
is an incredible system that helps prevent so much breakage from going
into the kernel, and I am so happy with it.  If there's something I
can write up that you can show to your boss as praise, I would love
to, just let me know what I can do.

>
> We have already supported to compiler to
> x86_64/arm/arm64/powerpc/powerpc64 with clang,

https://travis-ci.com/github/ClangBuiltLinux/continuous-integration is
our dashboard of our minimal CI.  Comparing it to the list above, it
looks like we're additionally testing:

1. mips (malta_defconfig)
2. s390 (defconfig)

We're very close to adding riscv support, and I can keep you both in
the loop when we do.  If you use github, I'd love to send you an
invite to our github organization, which makes it easier for me to cc
you on issues/pull requests within the org, and for you to get emails
and notifications.  Please send me a link to your github accounts if
you're interested.

> is there any other architecture you wish us to support?

Those 2 or 3 would be good.  We're currently running into some issues
at boot with s390 and riscv, but I'd like to at least get build
coverage for now. 0day bot it not doing boot tests, right?

The next thing I'd like to do is more than just substitute Clang, but
all of binutils with the llvm equivalents.  For example, GNU binutils
has `readelf`, llvm has `llvm-readelf`, and you can use the llvm
version during a kernel build with `make READELF=llvm-readelf`.  In
particular, testing llvm's linker LLD is critical to us (and is a good
first step).  It gets unwieldy to specify all of these at the command
line, so I'm working on simplifying that, you can see a preview/RFC
patch here: https://groups.google.com/g/clang-built-linux/c/1j6_AfP0CMQ/m/WEEHsL6pGwAJ
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dg_Soj_xnrz-ptUoEgek87sbeikcRpdrvEJGa_F72fiA%40mail.gmail.com.
