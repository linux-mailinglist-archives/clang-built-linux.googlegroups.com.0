Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7U7DZQKGQECICXSOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAD4195CFE
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 18:39:20 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id r11sf1626541ioc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 10:39:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585330759; cv=pass;
        d=google.com; s=arc-20160816;
        b=q3VgzXwYNzadFdRovCZJVgUBxrHpoY5YJUTBSR0DPzB1aRpHmeFixkQkSiDpRYAz3H
         K1fJCLDtEci3AI+V4wgTA1TQgkcMOwd7h4Ke5uar1EwVmORhIr+UJvBLFjN9j+RseGhC
         FCJTVPjgfhfRazAAeOvYHib78bOJsCoeVwC3dWQf59+9UwSZgSUYSrdlGp8oEDkBTTrc
         omv3+Y7Roz+jot8RxpYoAPL+jLILro6cwxmezYGsJbveOX72tBlbPHboU4fIckpmnsi9
         If/FfLalTzzUrm4Op6EGnr/+/mvmOkUDkiJMgrAHk0Yw+M/qIwKDXmVVxxRXKx1z2SVE
         ZAsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CeehjumjvZ3iXL4eSuCRn4AO7DW3eHfvvYN+6faDfZ4=;
        b=h20Ua2hDqfWAyUO4JXeRPPW+ovKftV8sLAtX9uKShHtJ9/I/JAAdJbxPl6EHZEbMPr
         aCAsUe5hPDW23NpPOw+2K/mrri4zz4++wKwy7agsd89O9SWRNfqlMx0MlKLS792ZMPhH
         iXq7BNOj40CVLrYDi9BMut/8BqcCP2sPBUNyE/TbMPB3Zpjy8DwzhdLkqjC/c+ov5hVs
         y5U1Jr3RN7H+reZEqFezEZSPc13Lp9/xBvi2d9evXbB/cZv3aEQC2WYg+V7BB3AjYZkD
         QW+qOs3WOesEQDy8cwsexplSNP1PYtBowQAxOS6bsQhPqtmRlB01U2wDIacbRoxC9U2h
         90pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d+LCxILT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeehjumjvZ3iXL4eSuCRn4AO7DW3eHfvvYN+6faDfZ4=;
        b=NvDDOh9uko+Gew8gmN/oEfXoYvUl5zDpJvwMBYagNEwhnzKUB22ZJEzX1Atc3S5CzE
         W7UIZkPHfY4wuPaM8CVU0448DjbBzA8ST/3ITVMvGqRyNS1SDb9eeM81Q29wMxnE7Lb7
         2dwKiQ5xbiLr7+7ThRqrkjYnTw5iFyaF8NGfs44tNxEXLDUrHryfa06gylo7nH4ltonY
         cl4oGDglJYTC3yoNyGW1RpjuPOrl1+lJi3scwwzkfOk06jkYQdwVzU9NWLVbfOaXtFRp
         wZKyRJzxQq/Da8MZwc6wmMvcOUtBxRA9astd17wcm9xUSjmyA7a0nJzKhRY922U4f8vn
         dZgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeehjumjvZ3iXL4eSuCRn4AO7DW3eHfvvYN+6faDfZ4=;
        b=fPgM2TCW1qcQ0w/nxwXrUpp+05yNHoh+cKh9ezdQfLAqUto6JPE0r6WUCwAPN5ru7c
         tju2szTJ8wl0fBH5sXAdFtx8tABu18PT6Y5KXp55tNoVha3FQWEEu2h1dMNmLvoWPVeJ
         EpFHoUMpuIEcqM1lARFEShEFn4AUS7G5L4mhIOwel4RDDZ2+zM0qtvyHoXSizjlMUifb
         o/I9gLSYdYTlNEKUHFFxIGeWd9G0kB1uO26S9McGmFoblSjFbKAgyQIdVB01sOiBy1fI
         6zgyV3wwMjesTlDzH2Z3NEv3/yQHmuYvWEmmFDdMGcVHwSvZ+8JG3JJs7hibaOkmy4Fd
         g9Sg==
X-Gm-Message-State: ANhLgQ0oZiN8wZfX4mdcEBLQ7IUKpjlfeiE9ynidz7VZs4ITr24RB3uy
	B8RybxQQcDCXyKbqGBtMi1Y=
X-Google-Smtp-Source: ADFU+vvemB8NApIEInHNv7+Wd6RY75eFkBC/Wgl2a7o+ZkcWi6z9I+0/9GaW6ug9wOx3PC3iCq4BUg==
X-Received: by 2002:a92:2c05:: with SMTP id t5mr264593ile.132.1585330759673;
        Fri, 27 Mar 2020 10:39:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:229:: with SMTP id f9ls1303802jaq.10.gmail; Fri, 27
 Mar 2020 10:39:19 -0700 (PDT)
X-Received: by 2002:a02:856a:: with SMTP id g97mr13329929jai.97.1585330759342;
        Fri, 27 Mar 2020 10:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585330759; cv=none;
        d=google.com; s=arc-20160816;
        b=Nt7YjeCpguEFBiCVN/Y/xM/du8ieLoF+copZFEzeZM5bBGmfC74bvvnu19/ZoKDiCP
         XHips5x+r81Nzl/tgsFnl3tDcCP3wK82pG+ERB+Fjp2dKhKsW9kDbpSA25n9KUkUs7AD
         5ZDd7YWOol3XLWkpiV6mN2Nvc4WjkyD9qGD4Rzwqht7mao0Fy1/Z8tDJCEZAZ32zD8f3
         Ha3jSMIz1FHCx9yIm/QTn0eDMwgC5jjjvsDHyLRQ+FaGVB+hOwh9t1kuDlxt/1tgvI/x
         y15xY6Fjq8j4+LDGytopP6oi9tbOCu7iefi+dsrE0KNaAWl4z9a0JZQZmmRIKgjMawFK
         fb0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6DGJ1BwFMTndTZtSD8Vq2s8Gh9YDAFozyeKg9UXwRQk=;
        b=cg1jOciI8LYVMDJAjaO4gK24koWj6gYqS0mIJ6rf/4qHtmO+0YVToeeepQGFose6aG
         ImjdfPuRRcfc/Ejr9NcNvN84cqqcZuAvKdV7H+wXXgcMbTOqCep4gjrjTcZtT4Q6h5WT
         CYceaIwESxWgC4LNRLP2SkocS7zNpYAf8og/+QDPJlmHs1VPPZ54z8aSt41HbqJt2DkC
         L+APa/tli79jUEBqdEg59E6y29SRWIlmGEY62EnoTjo/qb/WPuE8vhqbfPNvYr1Yi3a2
         xioFiLv28Gi9uSRMFZEC76sANe9RlDH/cdKXq7wOMSQEteeGI6AdbVUM/c2E8aMALi6/
         GBEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d+LCxILT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id j25si376137ili.4.2020.03.27.10.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 10:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id b22so4898864pgb.6
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 10:39:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr322755pfk.108.1585330758422;
 Fri, 27 Mar 2020 10:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com> <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
 <20200326204843.GA24981@sirena.org.uk> <202003262045.892E199B0C@keescook>
In-Reply-To: <202003262045.892E199B0C@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 10:39:07 -0700
Message-ID: <CAKwvOdnX6_O0Hi1cpj==uoLGNjnbCNvaCujowKEy6CbzDu=CzQ@mail.gmail.com>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: Kees Cook <keescook@chromium.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, kernelci@groups.io, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, "kernelci.org bot" <bot@kernelci.org>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d+LCxILT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

On Thu, Mar 26, 2020 at 8:47 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Mar 26, 2020 at 08:48:43PM +0000, Mark Brown wrote:
> > [-- Begin signature information --]
> > *BAD* signature from: Mark Brown <broonie@sirena.org.uk>
> >                  aka: Mark Brown <broonie@debian.org>
> >                  aka: Mark Brown <broonie@kernel.org>
> >                  aka: Mark Brown <broonie@tardis.ed.ac.uk>
> >                  aka: Mark Brown <broonie@linaro.org>
> >                  aka: Mark Brown <Mark.Brown@linaro.org>
> > [-- End signature information --]
> >
> > [-- The following data is signed --]
> >
> > On Thu, Mar 26, 2020 at 11:49:21AM -0700, Nick Desaulniers via Groups.Io wrote:
> > [...]
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326204843.GA24981%40sirena.org.uk.
> > [-- End of signed data --]
>
> Say, Nick, can we turn off the automatic footer appending on the list?
> It's breaking GPG signatures. :)

I agree they're a PITA and I usually manually delete them on my
replies.  I looked into it, and Google Groups has the option under
Group Settings > Email Options > Email footer > Include the standard
Groups footer

...and it's a checkbox that's both grayed out, and selected. ... who
builds this !$#%?  I've filed feedback; hopefully we can get some
clarification on that.  Assuming the web UI files a bug for the
feedback, I'll cc you on it when it gets created.

If it becomes too problematic, I'll consider switching us off google groups.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnX6_O0Hi1cpj%3D%3DuoLGNjnbCNvaCujowKEy6CbzDu%3DCzQ%40mail.gmail.com.
