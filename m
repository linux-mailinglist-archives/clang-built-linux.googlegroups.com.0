Return-Path: <clang-built-linux+bncBD63HSEZTUIBBLUQR77QKGQEH7PSV2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE69D2E2282
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 23:43:59 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id m8sf423967qvk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 14:43:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608763438; cv=pass;
        d=google.com; s=arc-20160816;
        b=nd9TYVeuhzHsVtSrTVBKGHvidbNxgoiRMxeAFYvD/3DmvBeyeQ+v8jOrDGbk8K/uHd
         Hnb6Ke+xFnz0MmAXGrw3LIXR6CPUgsjig0bGLjd5Ohqc2E4CGNgLODQrkbndQVntkT3W
         tCg27cEn2CtdnyqY7QHPh5g5eqdR9rg/9wzfdCL08hKTEuLk5/k4KrAVzsrdj1Wgiwbx
         39nxjCTI3xHG//6u5kXiS7Gu5gdTMpvl9ag43Ec2VLrPBFQNnqzbU+ebqfTNyB9ZjHAl
         8wgGgg78eZ5o9oIQGmt/MpZBHfT2hH2L1LIFA9mxWE/E51BTU8CrzZXa/uB5FyyxV3/1
         ZBbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hQtmOoCY1ggM1GQTfGPHUrCLD4r7CJ1ppHuqPUd+pZ0=;
        b=H0KJ6429qiVmJFdNJVEo18RHkLqGWN/xZJPyAtiLdeopYo0exJlPkCkoEoIvV1GqOk
         UR9ltvgqEkSYT3SW4mOmsURAPCK3CUfW5tYyWfqYAxQFbH/jmMCniFgFuQyEtBcaIgkV
         Eil2VFQ57PUa8L4Lzt4OqlGvoplUOBg2tZuRcv272wLuWjxDqNTwcznew3S+9ZW6H3i8
         fqhqzGcjgQoD6msDAGdlRYzjlkUzYI+AY9DFgVHkfDnhwXdOAhcXG5ljI/04nEwgIG+M
         lu3feSnDos77Vlh7WIfxPdXmU0ziDQxUFwnqjsVIoHF+dCvnZSyOuLG940EdFCqDXFye
         XV3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FdM9M0mI;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hQtmOoCY1ggM1GQTfGPHUrCLD4r7CJ1ppHuqPUd+pZ0=;
        b=pBWuMHKZUZ9J+pF6ZFPkMG6eUHwYkOw8Fh1IMC4GLApe70rqKTICjzcLidW+fn9yDH
         ItMjZu2LY6sx/d8EebW/piuPPq1i9jZvefLHUFxuQQWDkQgyeK3fWKUHIcKMYva01JKo
         2co2p6EFluxcEN9wDDL8Xu6MXY/wofojfHP2tx+qXqI3FoXl6oOMAdFKFIM07rwXT+3h
         Ehz7w+3WuNTnVzUiU/NmP0CvClVhas2/zWl7mIjddtvaFXbRKBkMwfIHqpcLMfUWNC3O
         K1khnhZfUOgu4JcOjXjfFwJV/m64DWNHzSjwvd3JXVMiIq7JGXwLxSZBCnO8tGrgk9e9
         lwig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hQtmOoCY1ggM1GQTfGPHUrCLD4r7CJ1ppHuqPUd+pZ0=;
        b=AwXJysaDR5NHFmEs/t7mU6AfwOgtuaG3AvrP30WGV02Lw0+AgZ6qsf8cQNuUTDpiqF
         ao4ASPzIzsFLXLJb3HuINW07t+s59JeL+kslqQxQnEr+qwwAlBu1blL1VXJPNHW/PL+7
         lZrd808QDs3EC//Z39RDrUDMxgDv8Bcm/H8Tazw5gkdO82pAmGWV2y/cjoFbmDquZZgB
         pW0qDYn6iIxAWdAHSghF4oRgPTxo5FwKdStWRLNqGy7nI0IVbByYDH5/3v+4NJXQ7jWE
         f6OmnHKKAUg29mm5YDv9yzEmmxe5w58DV5AKkpuVp3GLwFZKBbeTyNOQCPtvtf7BwSne
         77hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kiCUuEeaJUPBS/V2cLZQiPWjfPjuq4Hgh8Q0KuEWDMZeaJPPo
	nyKjke2q+99283O2BxSQiAk=
X-Google-Smtp-Source: ABdhPJxBHIFfflHVOhp4oJm6tujwDplk8tWOYNyj8HX0YVP8p+4cQ4Hb23BnnQXhO8GGy3HUHPvc8Q==
X-Received: by 2002:ad4:4426:: with SMTP id e6mr29620818qvt.51.1608763438684;
        Wed, 23 Dec 2020 14:43:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls17870814qtp.7.gmail; Wed, 23
 Dec 2020 14:43:58 -0800 (PST)
X-Received: by 2002:ac8:6d0a:: with SMTP id o10mr27107109qtt.113.1608763438309;
        Wed, 23 Dec 2020 14:43:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608763438; cv=none;
        d=google.com; s=arc-20160816;
        b=cxCCeo6mJq5huI630MznNV3d3qhdKx26LKgYnkgrn5cnnDrpsLi2XU4PB+s65m54v3
         Nv6+CWAmW9SBI5/diNejxZ7DfvGlyw4vDTmC1DO6Fo3qpBEUBFuwD6ygBTn+ya7EQafI
         mJiS5H9Mm6dXxunmomXjnvmi1kp8Uf8kUkNHMqXJdqDHfQzPjTF19aLdlB5oMUvH1kA8
         9cDFvKXzLn0CQUpY2pM6gbw0xk4S1fC7xPl5puOKZk66peJQ9/T0EKHLxyYPwjOnvb5c
         VNedd5h+4fJlJ86rpq/v1Giz6TqNpCCU36ujLyXdo0n2lzHnQkNcFmqa97Q1ciDmPW07
         /58w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g/1bIOaP5ytwIy5s85PBrU2M78ZUE+K+U6czHaQ5dZw=;
        b=arJd7SLbqAULLig3PHDJu2Nj1S41hKit/J0ga1ZFKTLakWA6xi8VkhlERTznnhZDmG
         37y/p6SOW2qMZ3+NwyEoAveDSG5jNstq7ipkol30/pdlqiMrQLrQu02cXyuHrnnLyjfv
         sbJhEqjnzW3rQKF0Nr/EVeEbJwaZG2bDWxdnWhpFDc2lwS7S7GAJEKPOBFb/Di6T4JzR
         NmDeAD/dSArpElcAg2luWzwPPPSfsgeq4ThR6kmIsd/OrvoCtWiNddtDLKziPVvsUvxI
         xPkKwjRkpxdtxdMQ2bJqSnEY7llSeC+ywi9CjRIIy5Y7zNeW00GpRMB0yRKoE09EWo/I
         zN0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=FdM9M0mI;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w10si1452516qka.6.2020.12.23.14.43.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Dec 2020 14:43:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2340D22288
	for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 22:43:57 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id x13so689480oic.5
        for <clang-built-linux@googlegroups.com>; Wed, 23 Dec 2020 14:43:57 -0800 (PST)
X-Received: by 2002:aca:210f:: with SMTP id 15mr1292225oiz.174.1608763436546;
 Wed, 23 Dec 2020 14:43:56 -0800 (PST)
MIME-Version: 1.0
References: <202012180909.WhlTpWrS-lkp@intel.com> <20201223183606.GB29011@zn.tnic>
 <CAKwvOdkA+7AYGhPk_=FA6OPxeb9Wy7FA0_5-0KCJGr-wtn_nxw@mail.gmail.com> <20201223210405.GB28724@zn.tnic>
In-Reply-To: <20201223210405.GB28724@zn.tnic>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 23 Dec 2020 23:43:45 +0100
X-Gmail-Original-Message-ID: <CAMj1kXG58+DdfA9RDE9gnELf8ZT0dTX+g8D+3W0pVM8RUSF_OQ@mail.gmail.com>
Message-ID: <CAMj1kXG58+DdfA9RDE9gnELf8ZT0dTX+g8D+3W0pVM8RUSF_OQ@mail.gmail.com>
Subject: Re: [tip:efi/core 3/7] /tmp/slab-258052.s:9870: Error: unrecognized
 opcode `zext.b a2,a2'
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernel test robot <lkp@intel.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=FdM9M0mI;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hello Boris,

On Wed, 23 Dec 2020 at 22:04, Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Dec 23, 2020 at 12:02:33PM -0800, Nick Desaulniers wrote:
> > On Wed, Dec 23, 2020 at 10:36 AM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Fri, Dec 18, 2020 at 09:03:14AM +0800, kernel test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git efi/core
> > > > head:   b283477d394ac41ca59ee20eb9293ae9002eb1d7
> > > > commit: 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a [3/7] efi/libstub: EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER should not default to yes
> > > > config: riscv-randconfig-r022-20201217 (attached as .config)
> > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install riscv cross compiling tool for clang build
> > > >         # apt-get install binutils-riscv64-linux-gnu
> > > >         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> > > >         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
> > > >         git fetch --no-tags tip efi/core
> > > >         git checkout 6edcf9dc2e1aff3aa1f5a69ee420fb30dd0e968a
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>

I hope this report is not holding up the PR for efi/core?

> ...
>
> > Thanks for taking the time to try to repro, and the report.  Just
> > curious, which clang are you using?  Is it from your distro?  If you
> > have `llc` installed, can you send me the output of `llc --version`?
> >
> > The reason I ask is; unlike GCC, Clang ships with all non-experimental
> > backends on by default, and relies on `--target=<triple>` when cross
> > compiling.
>
> I just did the steps outlined above, in the mail. Look for "reproduce
> (this is a W=1 build):" above. I guess that make.cross script needs to
> be fixed to do the --target thing, I haven't looked.
>
> clang is downloaded by the script, just do the steps and you'll see:
>
> > > cd: received redirection to `https://download.01.org/0day-ci/cross-package/'
> > > lftpget -c https://download.01.org/0day-ci/cross-package/./clang-latest/clang.tar.xz
>
> Thx.
>
> > Happy holidays+new year.
>
> Ditto!
>
> :-)
>

Likewise!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG58%2BDdfA9RDE9gnELf8ZT0dTX%2Bg8D%2B3W0pVM8RUSF_OQ%40mail.gmail.com.
