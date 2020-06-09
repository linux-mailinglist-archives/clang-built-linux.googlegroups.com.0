Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGE7773AKGQERFEWBKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B3E1F448C
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 20:06:17 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id u10sf8612364qtb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 11:06:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591725976; cv=pass;
        d=google.com; s=arc-20160816;
        b=nQZZHYFTe98r4pmF5tVGtT/XwUozQteCGnj+TLNdBxjdTX6Ik7iER4vQura4qiJAP3
         JenIPxsPAFPCCZKDf6Si6U27u4RZEiemGqnS+y9k/c4WzLR/6Vbi1lubGQc+NcjES3rV
         PkAfnvJY55UF6lE/jHj3ij8OvSocGSm6kitkCjmzThVQuGGgJDqpoiVAeRM99Vpj1Kvo
         2EPXTT9xJgRKx9mRKpwkqh/9ZfMIoH60MyVzltJS35xeF5nPB60ZIQKa3WCuctwxe/4G
         IyWzSa7d6xHVZIk/llCdg1AyYD+KzuiIaJFyXJjaMbFvR9vgawDLyuCH1nRs8EE2992+
         U6GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WHfE4ZpP7rKVyhyGuV4ly9rs3PepNDvfSp+wOiXFXis=;
        b=zbP5lIxry9Jph9KhnLCKZJEUMezyF4pz7sfJ2pQQJczstvh3zlgLqrNryiD5JKoH6w
         N5OXPStkMc6p99fedpPC8Gj7l6hWGnxLDioRjAMYlwIOBrblbeYDYlkG+7vAUhiB23qe
         nJS5Wy597eOGVw0xxdATwZ3Rs41XbaB6lHd8h/Q4nYSR8rmRj5znKd2qTGpfCyBS45Df
         pOHebDFSEQF4BCsPcdXpnkC1uUKC3sEgAbM8bl5ogS/VIf4LYKKiXpTZrp5mNgg2d5qa
         wJv3GtjEeJjDk5DZgOfhd8GocoGVd/ya4RL2DTCN5Ixcj6b80jSyGt4/OWoxx08GKDkF
         EF1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eGQZ2vk1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHfE4ZpP7rKVyhyGuV4ly9rs3PepNDvfSp+wOiXFXis=;
        b=ouOy4TpAgsrgZJeu5Yx1QlGsXy0Rb+WcXs6dQJiV3dbjH0yWotPYHwocaV90iYhdBZ
         4NQSnrTInypsJC8vWjihWtbFZG4O3giXU1EOlHsY7PvylBx2GVJu0rtMwYW2Ealv4Ku7
         s7qLl1k9SfQcesZgMZGERMsxOC05ak0aCFy30WTW/Nl20K7PIrkvX1BCa1KIShQYM+AQ
         mZk5Dwt0lLJcdU6FlGuV4Fcx9W21bqeLcoL82epLP4QKDQRcEmiuG7kBrmUK9NtnavWd
         3KI6LYXqzvK9e2dl1Z2v9fmGAn5eykAyG4vjLv2cxuWqPKQp1L153nMDIWFt3xVIC3Tz
         vnLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHfE4ZpP7rKVyhyGuV4ly9rs3PepNDvfSp+wOiXFXis=;
        b=FEJhILuBKKw4Uwdr3Miaz8JfzfzHloGwDIypYOVYVqTXlyG/2y30noJ4euT8ikRVsj
         I96h170Ymn+BrXT06P8uGaLfM6laG5SOv1zW0IBW+vZjVMU6+G4DsyjLLOJM6stu+MOy
         2QUxajP/EPH9yYlfBTt5XqmOV3hmc1fmg1B0X2FCm4VHN4GjSJsNjqHAW+0m1wyXCbmu
         OpC6+NLOfuvkBcm0euauC+pmwW8LZOAE6oUOYL29mN/2yvz18aG/cqXggdeed5Q/o6lG
         EWszXHaRkQWcZPH0OHKFvqAMHWf1e6eqmNOGBnq/0/9Yr6qu2ELJ2zbuvoGQhGqYvKTW
         VtZA==
X-Gm-Message-State: AOAM5318RwexlHn9Qmch0HOBagHA3HgR8ZdcwkJATw/Hx3PuVUR4ChFI
	Cf0VSwC/j8GQ9YtfneHsLRE=
X-Google-Smtp-Source: ABdhPJzk39897+pN1ASklPy6/Dh66f4W1v4MzqWfHVnIU07uU/mQrua1EYmVvZajOAjIoYhWIKuxnw==
X-Received: by 2002:a37:7902:: with SMTP id u2mr29148812qkc.53.1591725976734;
        Tue, 09 Jun 2020 11:06:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:78d:: with SMTP id 135ls9826687qkh.8.gmail; Tue, 09 Jun
 2020 11:06:16 -0700 (PDT)
X-Received: by 2002:a37:a89:: with SMTP id 131mr28376655qkk.92.1591725976361;
        Tue, 09 Jun 2020 11:06:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591725976; cv=none;
        d=google.com; s=arc-20160816;
        b=p4i8CzciKKWKsNubuvIBJoyU8s1s2R9/lUUraEQEIi2D3jvF/6mt4YalRTNYCDd49P
         kDTMu8/4T4RZaL1KEu0MR4FJ/3T+Hh2pTl+9/7I6+VmQasdqeoHeASbf4xzCQ4flbTqX
         VS/7NmCAY0+1zDhXo1PBIf3FprxAuBeGiJr7dj548or0W/Ucp5Gs9JYLzttViknmbbZR
         c6SU4bbM93mvc46cJsDoDuS6yAd1X7+iWeSDWaxTug/3plYkavnpx5QeJoL/UXuprqhh
         Bl3kOMu8uOIN6Tg4kuoaQZQQzpesjs2silLeuyzExJqqNMO97JCG4+f37yRPctpv8HoJ
         MQXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=41RtF39XWIdzfOjt+/0uYFoWjSVE0VLEoc1sB5Kk9so=;
        b=tZnIF73ngNsiUbrTJaIzm5G7N/85Bo5GceTqcP4oQ03G8hTFfLbcxvrzCqAX1fXYUZ
         09Ui3vIty5nv20YxcfSxlzroIQW7HawnsZjcwYD3OIojoubaCnuoLG8gRm/PBh0MqQFz
         eepzswKlRqsIgBKYLpegHrP7o+uA6p4qUVk3NbDRYcuVJcNQ3+P+oKmRk8ufr/FwZ3LM
         VmBk+NufsCWBBOJPfCgBsSYy9keU0v01mmw4AerIacaSWdNGQxsDSFD3SNi3vArjyV6k
         AgOi/2smzg3ZK/myy9mS01SVgcA80wkZgLsO3TxvYcs4vAI391kgSXtUUz2ootMa2YTm
         52kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eGQZ2vk1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id w123si751604qka.1.2020.06.09.11.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 11:06:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id n9so8354053plk.1
        for <clang-built-linux@googlegroups.com>; Tue, 09 Jun 2020 11:06:16 -0700 (PDT)
X-Received: by 2002:a17:90a:1e:: with SMTP id 30mr5720662pja.25.1591725975244;
 Tue, 09 Jun 2020 11:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <202006081422.xo0czB0Q%lkp@intel.com> <20200608082428.GA1085@ninjato>
 <06988020-878b-54da-2b00-afe746f94c76@intel.com> <20200609144437.GA19950@intel.com>
In-Reply-To: <20200609144437.GA19950@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Jun 2020 11:06:04 -0700
Message-ID: <CAKwvOd=uFZVG2Ga1rAw+=kXJzy0k3jvXZyPqSgH5-k+V0sipnw@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [wsa:i2c/for-next 15/29] Inconsistent kallsyms data
To: Philip Li <philip.li@intel.com>
Cc: Li Zhijian <zhijianx.li@intel.com>, Wolfram Sang <wsa-dev@sang-engineering.com>, 
	kernel test robot <lkp@intel.com>, Rong Chen <rong.a.chen@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eGQZ2vk1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Tue, Jun 9, 2020 at 7:45 AM Philip Li <philip.li@intel.com> wrote:
>
> On Tue, Jun 09, 2020 at 06:12:14PM +0800, Li Zhijian wrote:
> >
> >
> > On 6/8/20 4:24 PM, Wolfram Sang wrote:
> > > On Mon, Jun 08, 2020 at 02:53:24PM +0800, kernel test robot wrote:
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/for-next
> > > > head:   726b03203e45ded63f4479f0b2de7c89d91cf3be
> > > > commit: 786d2af7a5d8b46bc66c20fc886f178c34b936ab [15/29] Merge branch 'i2c/for-5.8' into i2c/for-next
> > > > config: arm-randconfig-r001-20200607 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> > > > reproduce (this is a W=1 build):
> > > >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >          chmod +x ~/bin/make.cross
> > > >          # install arm cross compiling tool for clang build
> > > >          # apt-get install binutils-arm-linux-gnueabi
> > > >          git checkout 786d2af7a5d8b46bc66c20fc886f178c34b936ab
> > > >          # save the attached .config to linux build tree
> > > >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > > >
> > > > > > Inconsistent kallsyms data
> > > > Try make KALLSYMS_EXTRA_PASS=1 as a workaround
> > > I have problems parsing this report.
> > >
> > > This is a merge commit. Can't it be bisected any further?
> > +Rong,
> >
> >  could you help to answer this question
> >
> > > I couldn't
> > > find anything wrong by visually checking, but I may be missing
> > > something.
> > >
> > > Also, does it matter that clang is the compiler here? Does it mean it
> > > does not show up with GCC?
> > i checked the gcc result, its' good.
> Cc clang list, to help share some hints for this.

Thanks for the report. Can you please provide a link to the original
report for more context?

>
> >
> > Please note that generally 0Day/LKP will build a lots of combinations of
> > different compilers(gcc-7, gcc-8, gcc-9, clang etc) and different kconfigs
> > Each combination will generate a individual report if something wrong are
> > detected.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DuFZVG2Ga1rAw%2B%3DkXJzy0k3jvXZyPqSgH5-k%2BV0sipnw%40mail.gmail.com.
