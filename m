Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLUTYKCAMGQE2DNGLCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C557E3723A4
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 01:39:26 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id u5-20020adf9e050000b029010df603f280sf1892566wre.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 16:39:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620085166; cv=pass;
        d=google.com; s=arc-20160816;
        b=clDxYwrFIi+fwXI3aEV6Q4SD/PheH6bMYnECJfJ0EPrwMhN+M1eLhc5J8lOtyJcH+S
         XzeLOaeX/BXZABFlzg38z97tKPX5Je73ibkc0AVrXZIXXzvsldE1jp9csqeSxXxBhzOD
         Ctb2T6XUhfHixSXJhvMpTMh0HDPRmS7CRRgMqOKB6KItdaUBLjUC0DwoF8Cs8iC/OpPs
         i7rNY2xJeZ6Q1P15Qv5tc7AWKZxkV50Cymcb+xMdncUzHXBfJRDPKTL6DIWPg19V1sjM
         ZlDG5Zc8M+t3SQ6E08yQVGnVqlkrrtR0z+sca2Bp+1YPAEETFLTNo6PrDVzlRakzzXOK
         upyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=B4lryIOok7kxX7r3hdI7Cc+/Ofj+A3SIEHwRcK+wt7k=;
        b=sOXqMF9usw0MTTKEw0yYydA1nFbOF+sUDMwUUflfKhhCSIxzSfoRodOhRX9IVIZPC5
         rknSHOIBs0KpIAountbdtZ74etNVekDqOcfqZ1kh98Qgkaji6/+Zem/J3DXHVw7Z6WTS
         l424wSJD5AOb4bKTEqCLTcNkrO4kxbTny1NEUtM8TC5snQPSJq/KX99nBwre6RYhavcC
         QzyLAPHI2xgBuhQFHozo8Cqko3hP6s9wwBMOLn5dBVda3T0e7pXM77mdT9x1gVCUgmtJ
         VCGwjG2if/4fkgsBTfQAzDXBUfC/qrmB22ezlhmIJ3qwV7msw8k1WgAXpQE6SU/8u1V1
         YevA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wt9n90oY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B4lryIOok7kxX7r3hdI7Cc+/Ofj+A3SIEHwRcK+wt7k=;
        b=jknyqz4/DZ0oq5bsmR7drbJmFD96jvRkQSKNL5vX3rKFSuDKwLzrqnbJuvGqzk8gZW
         /yd5JPeqfH9NNVfo6q2puvH/AYzvDtZpkEjihokT+8Kv3tZZ6NMjP1Ym3utVPVfeQgDC
         EZznMv0InRwVPxHFxK+eCC/Z5gZLFRtlgscu8iBfqV2VoEgWO4gNFLqk8yfBkEbKTvwo
         VgdBNkadl8FBjNN0JfEuamvDwMwaeMUM7f2kD0re37QlOwD7JbdkgrTwghny8ZMexUPn
         knSmIA5uNZI6l6+T984BalPzBo352K0eiUvDKtCEUN+4pjYEH/+shkIEGZKV9gXKgb78
         ll1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B4lryIOok7kxX7r3hdI7Cc+/Ofj+A3SIEHwRcK+wt7k=;
        b=hlkxztIFMJ0aeU7qJtPK+qEfNOi2tUzWsNuNivvqc4y28YBT+X11arNOLlx6njyt/y
         DVG3IRAwSSGoybEfPK2V4+s4xp5vffAyOOd7T7nI/NmvYr5yLjLiqV11Dub2MRJu3GzS
         M8wmVenHAw2DNF7N0v3Btp4WJhxEayGJVOVpYMPq83iAO0xGpK2MZ3MX0Jy42pDnD2NY
         b2YVRCv904tE9A8HrlLOSV+xYOPpDZyjaQnG5er/fqc8gEmGzbdCGg4zZQyVxjCkOC3D
         fPZ6HA8YahSWNw0TDVftRiofX3DMzXK5VCSEtgUUox6oGV0qqNTJLSVzgkljZh4QO3lO
         mbGg==
X-Gm-Message-State: AOAM531aD/u9QNuC19PftKmb0Zbj/fBx0yJ4NG1PlCW9hVOzgUzs7jmz
	ffOYQ4KVQytb0ahIjjovTbk=
X-Google-Smtp-Source: ABdhPJwOO9AeZsoQyH0PFuGO+NNQordeBpcmjf7dBhxirDMZFtxzsHHRx2qYguBidhyZ/y3OOpn6Gg==
X-Received: by 2002:a5d:4acc:: with SMTP id y12mr27691021wrs.233.1620085166503;
        Mon, 03 May 2021 16:39:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:410e:: with SMTP id j14ls6979424wmi.1.gmail; Mon,
 03 May 2021 16:39:25 -0700 (PDT)
X-Received: by 2002:a05:600c:ac2:: with SMTP id c2mr24958719wmr.23.1620085165657;
        Mon, 03 May 2021 16:39:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620085165; cv=none;
        d=google.com; s=arc-20160816;
        b=wtDIYwQ9o8SBwi0voB6ex1DsDWFpekiLdP04yzkrumHeDhyUH0ro6R6vvDLInDGF3W
         gl1+uI2XER+WoXA4pE+F9dDJ9YT9G7p/Yy5Gx97Xk23b8dtM8006sqcgremLVoJbVLK5
         rbkOGOjq7oVqZ/rAY84ZkvzjOH3Z6oDeHYTC84D+fGIco0qxurDWf61Ile50W/J1vn+B
         VuSvfqyV0gaYJm45zoxV3SKLe/TGoGg3H2Sz73LjdHttIQCQPdPIFnKA2S3D6qq8pRUT
         pmWadYC/rbJF7hHij0MyF/YDosEraLQny6MfiR8RADKRXwF5Zo8R4J5bqtpnt1yFRYyE
         4BZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kDlO7ibgMo5jEq/lW7jtotFKHZ7j7yAL2L7qDy7Fdbo=;
        b=dBxCu3FOcqWhOwzNgm2Apzkq1/xfreal9boU6GhnosqRmPmBRkP1US4LTg9rYsjhVV
         mdjGlxU9tptALHEs7vI6nX8OnJuW0lzeVQ8CA6zH3fDi2uKDO5DxDfa6JfaatIs6c2Ub
         xtMCaGbNSaPaZ74IrnerMqrOMJX6s8ncJ5hZqgr2sFC9epaPFmTwdxYvb1Aw6ZhKiPVc
         LwjoGgXWfbYaAzNVfisyHsVR7P6ipAiWQWHzpTPrh7aYW0QSrY2lX82OSFDgfHjjuGVP
         JE//CcFvFJCm93+2el6Nb2q3uo2Y+e+tymcZY+p/FLvTpf6GHIEPF7TlsvJRlLWbNUeY
         Pq4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wt9n90oY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id t1si13529wrn.4.2021.05.03.16.39.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 16:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id w4so250485ljw.9
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 16:39:25 -0700 (PDT)
X-Received: by 2002:a2e:8e3a:: with SMTP id r26mr7161879ljk.244.1620085165144;
 Mon, 03 May 2021 16:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <202105030653.cyQpw8yD-lkp@intel.com> <CAHp75Vd9kXo7=g35x_AosWBHJH0KBVeX4qgkpbTz31m3w3s3gA@mail.gmail.com>
 <CAKwvOdmg80badHYBv1T4PKgEpgWSBtU0YewfLLS1X3QWCA_FyA@mail.gmail.com>
In-Reply-To: <CAKwvOdmg80badHYBv1T4PKgEpgWSBtU0YewfLLS1X3QWCA_FyA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 May 2021 16:39:13 -0700
Message-ID: <CAKwvOd=2vLrjzDnqeqA39BX-Wd+dn+UKPhRvzCjYR0js44y6BQ@mail.gmail.com>
Subject: Re: drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of
 2064 bytes in function 'dwapb_gpio_probe'
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Luo Jiaxing <luojiaxing@huawei.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wt9n90oY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Mon, May 3, 2021 at 1:49 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, May 3, 2021 at 1:40 AM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> >
> > On Mon, May 3, 2021 at 1:54 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   27787ba3fa4904422b3928b898d1bd3d74d98bea
> > > commit: 60593df667e087b009ee0fc20d92e9c4c096a9b5 gpio: dwapb: fix NULL pointer dereference at dwapb_gpio_suspend()
> > > date:   5 months ago
> > > config: powerpc64-randconfig-r026-20210430 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc64 cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=60593df667e087b009ee0fc20d92e9c4c096a9b5
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 60593df667e087b009ee0fc20d92e9c4c096a9b5
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/gpio/gpio-dwapb.c:678:12: warning: stack frame size of 2064 bytes in function 'dwapb_gpio_probe' [-Wframe-larger-than=]
> > >    static int dwapb_gpio_probe(struct platform_device *pdev)
> > >               ^
> > >    1 warning generated.
> >
> > Another Clang bug?
>
> We have a KI with ASAN's requirements on additional stack usage for
> shadow stacks not being considered when making decisions whether or
> not to inline. Looks like KASAN isn't enabled by this randconfig;
> UBSAN is.  I don't know if UBSAN has similar additional stack usage to
> KASAN.
>
> I can reproduce this warning on mainline with:
> $ wget https://groups.google.com/group/clang-built-linux/attach/983d2ad77c1d/.config.gz\?part\=0.1
> -O - | gunzip > .config
> $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j72
> drivers/gpio/gpio-dwapb.o
>
> If I enable CONFIG_DEBUG_INFO, then rebuild, I have a utility for
> helping track these down from parsing the DWARF debug info.
> Unfortunately, it depends on pyelftools which doesn't know any ppc64
> relocations; let me see if I can implement that real quick, which
> should help debug this further.

https://github.com/eliben/pyelftools/pull/360
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D2vLrjzDnqeqA39BX-Wd%2Bdn%2BUKPhRvzCjYR0js44y6BQ%40mail.gmail.com.
