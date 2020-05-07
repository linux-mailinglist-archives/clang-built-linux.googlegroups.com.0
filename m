Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAUK2L2QKGQEY2KQGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C121C9E1B
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 00:00:35 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id s206sf2876077vke.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 15:00:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588888835; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOCosH2Jw708zftCZDRpw6eRbaKs3BbJaVgcHQRyugYFZBaUEQecDjDYbLMDZuk1i0
         EARJHOMSVgORckJuCGsUZCZ3+t3TCbVtkg89EA93i6+aw91Kv2Xa6LKdzgYeNpLeoyBN
         sxiZ1AnG0VkGql9T6sUpJNxVeic6Z+438tKuQPGGgw59KvQ2mLX/W4MZ54PlBP2z3LQk
         luhM76s+Z7eWB7OfkBm0OtKqM0UBRZzzf0FN55T/1thd15NclQHScW39IvcAGuHMf9YT
         G/wa5Pso2F01U4THDM+BPNiFRbs4dF+35MqNDPYhehkxeBEReP6aFUgsYmAwWK1HK6iu
         8vpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cAEa5xuLw0/ECPnAbIwgj/XwafZmH+t3VxMQeftxw6E=;
        b=PVJ2pyYpODCu2T1Zm1PKuTcJMyMRQFQL9eGfsqc3WUQe0A8TI0Z+k/kRV2LE5SsF7k
         8jiN837zpfm5gb2KuvwE1QYPinEF/VQYLqxgz3Y5VV5KOXYfYiB/QUAyerzA0HcGKVvx
         YP1QpSDDjO3VuseNqWNSaiXJE/WAxXdG/yopBdhPh9iQb7hg4J2UnCorWW46IRvsVupl
         j/V0FKGjL3kowSS6m9u4FwIlM6xX4f5kFG6HBrt5OiB7RhQzGxqcvI7H57YEkaS8sPRM
         L5bVGXA9uxrVt7yies7cBwVFMNMXgCtUMqefECIOEl5j3MzkXzGKwZHdkPkMLWVoKMnl
         zGeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vI/53XPm";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAEa5xuLw0/ECPnAbIwgj/XwafZmH+t3VxMQeftxw6E=;
        b=bdQwb4jwZcfhfg4zgk1joDEMos0Yq0sISfYK82T4vsTKTeUuZQJc300ae84zRApyu5
         0suwa0jbBb6QLR8jBZ1SCPon6Q+Hx95s4faRsThzs9VAfm4j88Rgwxt2MlZ6eexDi+zB
         +etXXCOFJ2iNNGN1eSD4CzRst8PlMnoCuND91IA2H/89rlPx6U4WEmfLqAjPFutMqVS8
         N71yvrMI9eLjgUknju05J/hLVyXzSjgw0mfWWdIZNgdtvNbuKyVmJThrq4797eeVxITZ
         L7liSE2Vs/+7EsymwHLrGPmIzgHx0tsHPxgVNctXNYlE95BdDmt8ZP89PCz6AffNqDOp
         X60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAEa5xuLw0/ECPnAbIwgj/XwafZmH+t3VxMQeftxw6E=;
        b=fJWXdkz3u78P9d3U/SI3wlXrImQzCEYb2IaVjxZXYPZxkn8o9yUOI5soH400chz3ET
         PT8UCaKnbbmx5bxR+VEMJpEkplbQsuhyRSA7hlBwF0wPuwkpFXPvJz1ep/RqIZF7EwQK
         xKg12pdK7OLo6PFOP8LAERyLCo5G9Uik859107lPGyB0RRv+RjQ+5ZPvxXhogTEy7HWS
         Lw7DooDEfq4bMdK3JGkQ0iWsAD1pr+Sr2JYqYzl/LjGziCPJEIgSz/zJMs3oJb2fGBQJ
         3YYIZOvPITpIuwiLReaoF3t7YYb54hC+69GpmCePiCQaGFnjEtx+5ix7azl2laMDQ2jE
         CSEg==
X-Gm-Message-State: AGi0PuaEcPQxvw/pzthN8Y1vQUSQlltDvRepC4RNDqwtVYPPgTGbE9jc
	SMgSDJv7wyCRcLWBpw1vx1k=
X-Google-Smtp-Source: APiQypKHz3xGGGt7ztOxQXA6pmfGhRXd5pDLKiin4dudWOIP0ZbPnbMvuLbBd8VODpkTJwxLWWG0Yg==
X-Received: by 2002:ab0:238f:: with SMTP id b15mr14047814uan.32.1588888834763;
        Thu, 07 May 2020 15:00:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f86:: with SMTP id a128ls896798vsd.8.gmail; Thu, 07 May
 2020 15:00:34 -0700 (PDT)
X-Received: by 2002:a67:fe09:: with SMTP id l9mr13575339vsr.176.1588888834296;
        Thu, 07 May 2020 15:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588888834; cv=none;
        d=google.com; s=arc-20160816;
        b=PZusw18mn7zMabA8fbOrcIjIiJN1vfE0QbIVRM+Zd30sSsVm8f6FWFofS45PpVxZXT
         ejOLDWXUJd/Y6an2gTDaqGX/Odbhggx6ydBpYiflGrwDx/j3n5RiXNt6qJr/tX8voGck
         wBmXDkvUDi/jIRxNSoIVkhoi9tYD/hQi1SvV3R9ncdjDVyN5dNr0A90W4FILPjCtLtg6
         ry2Ad7sKGs684C0Dz1cbTdrRIY7LzcBQN7Ch7WK6IpW9gCMYnQwLA59Iwb+i6E/ZJZDt
         j+M59cXZKNKjr4HSrO4bhZNI3b2oHbYBuEyuV3Xd3i+dh21qFdRHQJ/cjXQRZbgvsAe+
         HvpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6fT4k86WplkenZajSARoycgD+uv5LCdkOQsyfX/+mVQ=;
        b=tTOsTgJd9xndLl0ziIbAwyoVmQ4vw/W63NeQnn3Y4V4WuYSePN8FRvzNvFsSVqYHRH
         sxz+fruz4rjs8k6LWm1U1ThNyHsXXsrtja1EoYDrUHFTODSaPJIUo5C2acmCwcIVMCeA
         VgZ+nEzrc98+i9r6c8IScF1PLEL87DZVe3WswDaVrWwyI+JaPgO0RSBU1VTGIXww8hHV
         isc0KkMWB246XgfqhbFzHT99jcgA10Migq9cXXhPUyKHOF7vOpQxjB+TPF1NY5t1XO+c
         mU+8QFeBLoVPZqyPG0ERAblgMLmD20517oxR8RdYJ0RqZK7NTTft2RUMi8pd2VGuZ1ZY
         cPjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="vI/53XPm";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e22si451934vkn.4.2020.05.07.15.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 15:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t7so2641355plr.0
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 15:00:34 -0700 (PDT)
X-Received: by 2002:a17:902:ac87:: with SMTP id h7mr14650635plr.119.1588888832973;
 Thu, 07 May 2020 15:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200507042835.9135-3-bvanassche@acm.org> <202005080353.y49Uwj18%lkp@intel.com>
In-Reply-To: <202005080353.y49Uwj18%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 15:00:21 -0700
Message-ID: <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com>
Subject: Re: [PATCH v5 02/11] qla2xxx: Suppress two recently introduced
 compiler warnings
To: kbuild test robot <lkp@intel.com>
Cc: Bart Van Assche <bvanassche@acm.org>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <jejb@linux.vnet.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-scsi@vger.kernel.org, 
	Daniel Wagner <dwagner@suse.de>, Himanshu Madhani <himanshu.madhani@oracle.com>, 
	Hannes Reinecke <hare@suse.de>, Rajan Shanmugavelu <rajan.shanmugavelu@oracle.com>, 
	Joe Jin <joe.jin@oracle.com>, Nilesh Javali <njavali@marvell.com>, 
	Quinn Tran <qutran@marvell.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="vI/53XPm";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, May 7, 2020 at 12:18 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Bart,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on scsi/for-next]
> [also build test ERROR on mkp-scsi/for-next tip/perf/core v5.7-rc4 next-20200507]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Bart-Van-Assche/Fix-qla2xxx-endianness-annotations/20200507-135245
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 54b35c066417d4856e9d53313f7e98b354274584)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^

Hi Bart,
These compiler specific pragma's are not toolchain portable.  You'll
need to wrap them in:
#ifndef __clang__
preprocessor macros, or I think we have a pragma helper in tree that
helps with compiler specific pragmas.  IIRC it uses _Pragma to define
pragmas in macros.

>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:95:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:155:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:222:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:402:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:453:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:533:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:727:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:792:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:103:
>    In file included from include/trace/perf.h:90:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>    In file included from include/trace/events/qla.h:44:
>    In file included from include/trace/define_trace.h:104:
>    In file included from include/trace/bpf_probe.h:114:
> >> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>                                   ^
>    11 errors generated.
>
> vim +13 include/trace/events/qla.h
>
>     11
>     12  #pragma GCC diagnostic push
>   > 13  #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>     14
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005080353.y49Uwj18%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq%2BHzfAw%40mail.gmail.com.
