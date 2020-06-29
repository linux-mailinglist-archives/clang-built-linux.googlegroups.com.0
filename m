Return-Path: <clang-built-linux+bncBCIO53XE7YHBBW7M5D3QKGQER2CILDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4820320D198
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 20:43:40 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id x4sf127688oon.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 11:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593456219; cv=pass;
        d=google.com; s=arc-20160816;
        b=JoVc+W776Bwans9zGqoifQXFgRHQPsUUTa/NHb2QssxzLEGJ4Dr2fylqIuNulDMW3m
         /RddM4gGjkulW0K2sIzx9boU0TBr03LZNxp5q0B6S1y0uUOTCtmgp6RhZC0XxGjFjPnT
         JWNZ94gngl5Un4masLkPaWH5DJLShlKJ9w+zXjzcjBD0MZfbTun805ZwtIY9rouQGXj0
         ADHlkKyGILtslkA2u7aCzMDS3149fylfAz14NTXj3fSZJvNPOmSywic3MFBjZddUrRKE
         xrIlwwl7UQf01YgJxXb0Lf2TE/otNTkFLSIr7ZyWAjPxiKyE5TMp7UPfsRRai4BhP5mr
         wC+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=omR++vpFpJrTe2j25gjlfRAJRXVRJPLq4UbLdKp7814=;
        b=doS8ZJuRshqvnxwVGnxfZvTHoqNqbsVLIw9YHrnq9wxjG5xekvs2G4xi9JfeyfGtLQ
         48ABbreSvUeS7KR3bf2dShSNCkG2yFi5OxK6dsR2Xse5IAqk9LhflmaeQEzI7PNnpu6p
         gIGVJckTsf16w7tF6VuJPgvq1j6n5wkSsXzM0lrZQbQQZKp7iFPs/x5O0w72GgzlzQbF
         offmNVAo0R1Eyr6nNQRrafdFdovDFTH6nKvb7TL4tqBaHCdZdM5G8HDkQ1cNk+Dln2DQ
         BDJ7mMuWy1BRQHWIo7txut2vURjg05aXTFl9yyg9yAI4EF7pT/7oewJS2bX5DZvkxcoF
         AHAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDLsjzTs;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=omR++vpFpJrTe2j25gjlfRAJRXVRJPLq4UbLdKp7814=;
        b=qBDyK5eEIfqCW6im3MvJwror2l35SXAPp4GFiHs8jWCY4xvC5Vy5TKy6R+DextwvN0
         RCe18V4LlrVIw3gQwcpsCvwsnc2RA8x8R+5WQJKlIX6cAuyBNsGKVIFXZ2Kjfmew+Dyu
         Pf8nsWj48RFdMpvvKpCjJqgTpiHCOTabLPxO7JrkKC+sWCWismURO4r+zymfzcn3LhIS
         LfTodD05jrVVBBDZm441UsUjrsxk0sUh58kAbwwx5VYVWGePnu98YBwttOGaWU8mf7ik
         sBe/Zk9LejWf1/8uwm5kaZFwzBy97haexRLIGrBvQ7dccN/wHtjDnoD/iO/Vrx1Gl9J8
         CeHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=omR++vpFpJrTe2j25gjlfRAJRXVRJPLq4UbLdKp7814=;
        b=U6A0FVrxszhfnGiCeE/Eo9tLIpSrIUb4ZhHN+75nzxtLPJM9e5vIhHxibbMm3I0AhW
         IeAQM3hN8fn3vIr/COwZabutITvPFd8yQpAk8m1e7PeF06MqXBcPXJogeEeXh7LshOvw
         UhW1aiklgBbi3eZ+UqSwm9ZhlD0LmuoOYcimL68kZyondaAhFkB4U/0j02joY/1lFqu2
         q/XSG/I8PYxFluLvKFhRRfmo5AeVAe8hpHdVloLn21UnW6LElmHKu3yStHqog3a49Y0Y
         L6gKE4jkr2VvPFlwwi59hvRiu8Cd/CIxLrBWWGY1Ssx9qRMlU7+t0ag42LcCOHZZXpke
         CgRA==
X-Gm-Message-State: AOAM532wBYJX/XkZl9CC/FsPFKE8Nxed59Dr8SE0ESJm7xlLtzCz+fq3
	Pr1Y6vfSx6mFCyhGEH7I+7U=
X-Google-Smtp-Source: ABdhPJxuHsMQSGVwuSh9AbzEJq+G/MGxIVSjvqT2E0+zPDBlUp6cN+EbdQ1IiTM02/tYiibNNJAzHw==
X-Received: by 2002:aca:af55:: with SMTP id y82mr3305246oie.64.1593456219194;
        Mon, 29 Jun 2020 11:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls322309otp.8.gmail; Mon, 29
 Jun 2020 11:43:38 -0700 (PDT)
X-Received: by 2002:a05:6830:3149:: with SMTP id c9mr14476866ots.302.1593456218834;
        Mon, 29 Jun 2020 11:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593456218; cv=none;
        d=google.com; s=arc-20160816;
        b=bbX5fh59iH1cO9dKfTcJ2ATNHMgtLz1sCYe47eGdMu3e1t1zc5tMmREJ1Xaks3WqVQ
         auGdIoSVMjHckwy8ETOQXKE7RTXftxDc5oFtYn9FOMLwEGS5rfTUJoRd0R779PFZKpGT
         Uul/T/e3pCf26UAyqExJ8xR1PW+UaLStKf2+hG2mqWyCRc8NB2dJqMccO1D5mgFbLTbT
         +ROECNqtZVdlmK+qKpJ0H0mDrpS96J9UjQY4MjIS2dam9dZOp4RH2zt1x9rVYEOZA6hi
         yUbVZn12N76TNcNODx6cfsBOCIGrrhPyYJRTIIVo6PgC5qNbLF3+xUNQRJOFhwNh+MC6
         OtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=20l025BZSmljDHaRdAwUJU/sS1IgTLaKPGtOtjxywLI=;
        b=B1iI4NMtrCmDzt6vwdSe0ZOQSssLhbSqMdgUtWA2jkqswj+YQecnAykoPVYT2ox0Dy
         +uyeaCB9TF8FESv5SE+OeZyJxeo+a1SgWmiNtTMHDd7iqORLX78EpSJYtIe1Gafm01xt
         SKzTXWvJtM76oJ/Bi9bKF6LNpAdwn2cUuIkoCHm1/NyO6GuIpxC5U5LW6mZVYXLdl+Tw
         K6quJKiQ9hcs/U//GR6TGF614Czh6raFviwhdfvpICkjOIrT8V6Fczyc5/cnJm9DDUvL
         /2b0B+Kr0n1CIBxTv3poGwCMsceLm7sV/h4cC5YuWmeXu8yqNUWRCcTl51MOkZjo2FZk
         0jVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDLsjzTs;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id l131si50297oif.4.2020.06.29.11.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 11:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id a14so8136266qvq.6
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 11:43:38 -0700 (PDT)
X-Received: by 2002:a0c:8e04:: with SMTP id v4mr16625133qvb.213.1593456218301;
        Mon, 29 Jun 2020 11:43:38 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id u27sm578425qkm.121.2020.06.29.11.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 11:43:37 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 14:43:35 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200629184335.GA1102734@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006290919.93C759C62@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EDLsjzTs;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
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

On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Should these be marked (INFO) as well?
> > >
> > 
> > Given that sections marked as (INFO) will still be emitted into the
> > ELF image, it does not really make a difference to do this for zero
> > sized sections.
> 
> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
> you said was not allocated. So, disk space used for the .got.plt case,
> but not memory space used. Sorry for the confusion!
> 
> -Kees
> 

To confuse the issue a bit more, there are subtleties around "disk space
used" :) The section will be present in the ELF format file, but at
least on x86, that file is then converted into binary format via
objcopy. At this point a non-allocated section at the end of the file
will be stripped off. So on 32-bit x86, moving .got.plt to the end and
marking it INFO will shave 16 bytes off the bzImage kernel.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629184335.GA1102734%40rani.riverdale.lan.
