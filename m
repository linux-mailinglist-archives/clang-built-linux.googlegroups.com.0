Return-Path: <clang-built-linux+bncBDYJPJO25UGBB253UH2QKGQEOSIEAIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E461BC5A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 18:46:36 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id o6sf3023134pjl.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 09:46:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588092395; cv=pass;
        d=google.com; s=arc-20160816;
        b=0XkPH21NzoM3lB8qCPJ0NnwxIrXwO8qQOpbqYujFs0rL4JXx+C4REgQj7bH29PL+QK
         HauemLcunOAjjf439HL/HSaun3sPKzVjWQ2p4LGj2eh4keyf8emWzSiu38Ryk2bni694
         dhbI9BRjgL1WgschmGXnwVIVy7rCGE7WN1qCMVzezG2J/ksiFNXGvgvzUqOcOirNM81u
         6TvmexLwb4iWXF16Hh04n/8afoXVHGpcFkNcfk+fuaEvTSTsH7SIK4lEzDbGsKpjLX4W
         3U0sxwdg1UnIe9MYuBUFwdFoqilmNbtcldVW+5RqqYfDw3hXl+1IAD2jCgGW6+AJQydz
         eDtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g5Fsxg46jgpn+Xk+HkYfQh19JBH7vHp/O8IT3WVNmkA=;
        b=q5LVlBnyMcO1SQcZys1bxhcYaN1wCWbskv+a0rX6l/xFO7oGpO6JaQgRA2yjNDcuJB
         INc0eNpE1bijVsDpL+ST8f8W19gjgVCJbghCauZw3py2aZz+hQIwITCLSpoIE0/9L9hg
         bvBKniJCLDeCesIPbPHEiyfUhusAt9NNzAfWtsgyI4bKXMgupt7NyHpir00fQBjwIQKO
         gCERL1WFdQB6VXjVZL+H3XCWCRVhvWGHe68X1QrhDI2ZBew6yGJoga3a32bAAXI3nQMw
         eZIJO9zP3VSQwssdef2FL5IPRpf1E7bTqoBar28UeIzNng6/Jhnlg4JcjoSaEFwHlz/1
         pVvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qs+MN+9e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5Fsxg46jgpn+Xk+HkYfQh19JBH7vHp/O8IT3WVNmkA=;
        b=E0fvUkH2RgzuREs11Prn7x9flfIvwd9beheOAOEF7+kZPBVh9/AJMHAtML2hIoqe0A
         KGVvlvvsq0uNhNf8m2MimT3wzXMJAAT+jH3LTTwPrbE9wWXByO4rgK1xP1jduvwPn5zr
         XOJmYuE2gcODR5fD5yBW06zbEwAYttXMRCAUQ42T7ta34Jazi8aDrKVybnf9f0cuQe9+
         1B2ogsEqiJIuClj+qf/0Tje6uuFe5B4CXEZ+XRZ66ogKe/QKCnIEkmBcNZe6QLpajJGI
         TWfSgrcxFyEPoWzBBc8InKkj7qgO9qy1eLmy/1wv5CIpbJJJUC4jhMn5G3oYUdlJytlj
         S6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5Fsxg46jgpn+Xk+HkYfQh19JBH7vHp/O8IT3WVNmkA=;
        b=l1pR8Z14HOltUixwRX/P4oHlCS2kE3nmE8RvXm6CfQsaSJEGUb7TbWSe/PLOOgVVaX
         6onu2zZiBvup+7RtPvg7G/MRruLScKHCAUzfYGM0mXV68/FUc/ZIYlcFRhb7842mf/hA
         JxNoSOmC3LmcyHiw9Y4rSUDut2UYh6cbqLmnyXcZO1HFV3+M8kY/HV0m2Hp10iFwNLu3
         rnkn3LS0amOsCGnoC/msOSkqxFVu1ie6s5j6w2YypWTGiRJPKFNLLsh2fBRPxMlqPcij
         tZaJVAShnhaPYs4/Z7P7qVuWJdLBf49EmryWKugDsP5gZuCntJLT2sZATqMZl3ABtzf1
         bjow==
X-Gm-Message-State: AGi0PuZYKBI9Ks9xy0oneB4uMoiSBptIyoLG/pxP0a8vZEW1ZfOVBsyN
	4BgUj6zyaNXw6HGJZg3cL6w=
X-Google-Smtp-Source: APiQypIWk3lFWXRhnqXX+JMi+F0t3fpryxBzfUFllIjYYRfohpMN/Fz7OaHM4Z1HQtSpGGO99kfGpQ==
X-Received: by 2002:a17:90b:34c:: with SMTP id fh12mr6234459pjb.134.1588092395074;
        Tue, 28 Apr 2020 09:46:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f1a:: with SMTP id e26ls17840588pgl.10.gmail; Tue, 28
 Apr 2020 09:46:34 -0700 (PDT)
X-Received: by 2002:a63:741a:: with SMTP id p26mr30518411pgc.40.1588092394710;
        Tue, 28 Apr 2020 09:46:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588092394; cv=none;
        d=google.com; s=arc-20160816;
        b=LLwIwgYRhwYNCKJpJ5n92/Pbow/hlUBj/vrxh44MIhAGIJD9z1dOlNIbPjLb+l3pJ9
         oA5U/yiImYPGqwe40r+u9jIdEt1pysrvxaBZVqHMcVke5SdbkXMsbcfZHewpwVoN+cA2
         QEqv5mvxTC03o8B/orAl4KQ8J9c6JquBUtI/A8jQLl9uhNBAzBMhRBcOG3MRFd05QCxN
         KUQYyIQhQzIcB9/Aw8wYeOT0OwK6HJxmIddNcTjGCd3jXXKIBQIyXc9brsO/43o6FKp5
         xe+dRDQTYnZLwNKl2QrvKcxrxnH87O8pNmpZpZVBsNLIdYVG5IzVZfaV4BM6mZxS4q1W
         jOIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pk9HwsEtEBPtqReLCDZ75JjVA7AckwrQyN+vAP+Nrrc=;
        b=QKatmB61RL1efjyFDBw+Jv8WdQZjKhTxhOEjAzcWmAeWHMneEojEyNOO7XHTtH3Xyp
         0gHJmYBgdxEza8VnMChhZGnBAD1XfrJC6VrRsYkNykF6qDZWQRvQc83NJZ0dBKYT96yM
         5/CQUNRAYDQdCps06Wqt4TjpOjhJphjIURT59U7x2KUv6VoHl68eQuUpbBG7jLGHQzgz
         ADjEjRNzlF7qKUhfLSB7cRlthmLuJsSjYq+R7TSJqQQuBMTWCqj4gmGN+h0bQfOZR4uL
         T3tO/cUdO/yW6ALWCbrGu0UkX6rDxdV2m9d/9P6PipgYiPX0A2zcRz5S/7aqkhk5T4pX
         E8XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qs+MN+9e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id mm20si220430pjb.3.2020.04.28.09.46.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 09:46:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id t7so2680974plr.0
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 09:46:34 -0700 (PDT)
X-Received: by 2002:a17:90a:266c:: with SMTP id l99mr5710846pje.186.1588092394094;
 Tue, 28 Apr 2020 09:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <202004281818.1ptgznrP%lkp@intel.com> <CAKwvOd=-XNzdoe_GhC6guj63Y_nfKG1FFUZ=izNGCk=qX6iTVQ@mail.gmail.com>
 <CAHRSSEz0Zfko+yBj5JKYOj5wYS_8vfC7QfqBnWfNY1opaG2N3w@mail.gmail.com>
In-Reply-To: <CAHRSSEz0Zfko+yBj5JKYOj5wYS_8vfC7QfqBnWfNY1opaG2N3w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Apr 2020 09:46:23 -0700
Message-ID: <CAKwvOdnJCP8YYCGS5z4_NSf9poSzHAwztvbhvVczV4Couu4H9w@mail.gmail.com>
Subject: Re: [android-common:android-5.4 16/36] include/vdso/clocksource.h:9:10:
 fatal error: 'asm/vdso/clocksource.h' file not found
To: Todd Kjos <tkjos@google.com>, Mark Salyzyn <salyzyn@google.com>, 
	Mark Salyzyn <salyzyn@android.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: cros-kernel-buildreports@googlegroups.com, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qs+MN+9e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

so MIPS randconfig is not interesting? ;) haha
Anyways the patch in question is the compat vdso stuff.  Mark might
want to keep a look out for this report on other
architectures/configs. Randconfig may have found a config that's
actually broken.

Though it may be the case that patch 16/32 does have a bug that's
fixed later in the series, and bisection converged/stopped early on
that patch.  If that's the case, something else may actually be broken
for that config in that tree.

On Tue, Apr 28, 2020 at 9:34 AM Todd Kjos <tkjos@google.com> wrote:
>
> Nick- I'm on that list and watch for 0-day reports for relevant to
> arm, arm64, x86, x86_64 builds of android kernels. I ignore all other
> kernels and architectures.
>
> On Tue, Apr 28, 2020 at 9:31 AM 'Nick Desaulniers' via
> cros-kernel-buildreports <cros-kernel-buildreports@googlegroups.com>
> wrote:
> >
> > What's cros-kernel-buildreports?  Is Android's kernel team on that
> > mailing list? (This looks like a MIPS build of an Android tree,
> > emailed to a list that mentions CrOS).
> >
> > On Tue, Apr 28, 2020 at 3:04 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://android.googlesource.com/kernel/common android-5.4
> > > head:   7f84f8f1841844015ce11c0606d4e57b75533604
> > > commit: 2b3f7bf08d3db5471d541868f201e2209cb26079 [16/36] BACKPORT: linux/clocksource.h: Extract common header for vDSO
> > > config: mips-randconfig-a001-20200428 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f30416fdde922eaa655934e050026930fefbd260)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install mips cross compiling tool for clang build
> > >         # apt-get install binutils-mips-linux-gnu
> > >         git checkout 2b3f7bf08d3db5471d541868f201e2209cb26079
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    In file included from fs/proc/stat.c:15:
> > >    In file included from include/linux/tick.h:8:
> > >    In file included from include/linux/clockchips.h:14:
> > >    In file included from include/linux/clocksource.h:30:
> > > >> include/vdso/clocksource.h:9:10: fatal error: 'asm/vdso/clocksource.h' file not found
> > >    #include <asm/vdso/clocksource.h>
> > >             ^~~~~~~~~~~~~~~~~~~~~~~~
> > >    1 error generated.
> > >
> > > vim +9 include/vdso/clocksource.h
> > >
> > >      6
> > >      7  #if defined(CONFIG_ARCH_CLOCKSOURCE_DATA) || \
> > >      8          defined(CONFIG_GENERIC_GETTIMEOFDAY)
> > >    > 9  #include <asm/vdso/clocksource.h>
> > >     10  #endif /* CONFIG_ARCH_CLOCKSOURCE_DATA || CONFIG_GENERIC_GETTIMEOFDAY */
> > >     11
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004281818.1ptgznrP%25lkp%40intel.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "cros-kernel-buildreports" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to cros-kernel-buildreports+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/cros-kernel-buildreports/CAKwvOd%3D-XNzdoe_GhC6guj63Y_nfKG1FFUZ%3DizNGCk%3DqX6iTVQ%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJCP8YYCGS5z4_NSf9poSzHAwztvbhvVczV4Couu4H9w%40mail.gmail.com.
