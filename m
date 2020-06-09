Return-Path: <clang-built-linux+bncBDAJPEFYZEFRBRVX733AKGQECPOUF2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 853071F3E0A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 16:25:12 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a20sf16171723pfa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 07:25:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591712711; cv=pass;
        d=google.com; s=arc-20160816;
        b=FMVKoiCGipuDpQtoo3bhwE5ItyE7zPjTDhr6ifkRvoUGZy8Wrv21KFfDycaH8x+hjQ
         oKP+GVVohqLyv/5zm/2sMcs0A2wfl/NbA1wk9/zQwwxuqx+vUiJe8ojcbuISjEMeI+zD
         aZimnp948752X+nq92mkp7uv9JhihI/54voor36HnDJz3NbmNiMkufdOs/6zuvzXyo/S
         FpfJ0KREtMCagqEw7ilRWhjtLL4WR+aOwJ/0o7u351M8LzfvhjDLo3KWYOHVqPTpdkNO
         1V9+nzi9cg6tZcdUH2t10ZkjOtNOUlLTOx8myOxwmoOhALBEQ/eKQtNDffFVae7Ie9P0
         ptOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=M/E0m0TucpnZj4rVsCGv/93922xHYdOlq+ckiEvVuYw=;
        b=vtD3m1H+S/OwUrLcakS5y/3T/ri8ivQmgOtvC2wJ7/9+Vgf4s5yMqnNnxzD4E6UyWb
         4WzE7cvOmjLKVhdro1sI5zTkJNpq7OiaX/V2dzKC1McI/jRwDkQ76vEiX1s5r6YYpLBU
         kd1ICTZ4cpXJjb2X+ZEWC6tQ0CDlDFUctRCl7GjKpyANJs/uIiAob34Ie+GFfvDthU0t
         kOSoSNBCqfev8PRcPv+0I92Vf9l+c5boxwF8ffVWQcShdE0hqGCOZPyU7J7e+LjjR/ea
         lBY7ZUV0Yz9Q8x5xQi1BK4TRFGF3b4EfRMjs8CWkeYRQwc+zfBfuVQNwGcAYoDajQQvN
         +4Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b="CE7oj/JJ";
       spf=pass (google.com: domain of vincent.chen@sifive.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=vincent.chen@sifive.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M/E0m0TucpnZj4rVsCGv/93922xHYdOlq+ckiEvVuYw=;
        b=W2whSzYwB5Mglq4zHWleWwzKHJDQiG2RuOVbR0jb3PvolUU+GHMJGaAVUVQ8DWFs88
         6B9IupvkAnm8XKzwUx6lOxvCdaR3lEoQYZ4tKnBaUts/2Nm+I5GXIib8RhN9chOhZ0qz
         Nfl1arPh3AhycT8C+nb36/fWtV6yQ3O6HzhB+v7cPMbKb2ql7e/4unjb8xPe6a2lF3v+
         3h6dTb4jJyujkzZK8A8JXXJBhiew8hyCi3N6mz5Ac+9eZrm1yVga6K+Vqb+84TRWCsbt
         +Rn+hi4xSAjo4WfDRAicxrzlWKrglfQ7n4XnEWEMLDIJGQ9FH/JcHr1q4JvZJuaQVFEA
         2pmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M/E0m0TucpnZj4rVsCGv/93922xHYdOlq+ckiEvVuYw=;
        b=eoxyiKU3ANY6Md84Xmn1Yu2xWkk2VnlCO6L92Z7b19APtn4G3KhRJ2x+gd8ikTW2GG
         FyrlrCaba3l6r0Q+kwOiLiurbkzQcAJ8f+BluEiMJYFx4tjBCNo2kWN/hyxtLdfh07JC
         PLAjG3R4Rjrv9PVRL0p2TV+X6Pm4NFzPS5CPp4/5h3MhcSXgiE6VPsE+fEdQKnP5f5Fy
         ctkPbyNcp5r+d8vfDzb+lQZ0ocPP0dStrPWzsna9t9mSVq9MTK1cAJomFg2dzngIk6Qt
         smXfBOIl2oZiWSH3LDeX4y+i3Wg/bcQeSIWmcUq+cT94pSzWYf2RoCQhElEXXnKC8BL0
         juDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t2ErFZZLteqTNqEtfERarDDjwo3sTnna9+ir7qMxh9o4CDas3
	h9IOkRKrDHrkqwBrAoSO/o0=
X-Google-Smtp-Source: ABdhPJxsstJxcOkfBHdccEwqlmIe2Fyi6cwUNlKqM1NcslhdRaOCsJB5O1vKncgFIK//EGAL5QFe9Q==
X-Received: by 2002:a17:902:ff06:: with SMTP id f6mr3483829plj.22.1591712711013;
        Tue, 09 Jun 2020 07:25:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d8b:: with SMTP id i11ls4516446pfr.0.gmail; Tue, 09 Jun
 2020 07:25:10 -0700 (PDT)
X-Received: by 2002:a63:1114:: with SMTP id g20mr24603231pgl.3.1591712710592;
        Tue, 09 Jun 2020 07:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591712710; cv=none;
        d=google.com; s=arc-20160816;
        b=J/u/O+qjFmsUAOh/lz1/CkT7a+vSaTjE67+rGY/W9hwDKctkAJPNeG46zbcwWxa2HA
         6Cjh8WhMIyYDQKSAGkMp5//Be10SldHNQhM879P1L9i14pNyX1RwbJLFL2ZjwUVyAvfx
         3pEaTLtIbAND+hhpwHT7waxOvU0xEIjtQPvvya+2peF1mrTAz0NEptCvjTHReNEkqaSS
         eG5UUB41PzbyfJSRHAVr/qpDycojxyhG2ryIDZMJCh6NjMw5R+MCyzMRxXHQGkqMv0wn
         tNREEZdjGDOWsg5GH6JVKjKDJgk59fv1SkYLccWW2gkrKtG/GGNBmWXwxCGnyWHlqVP9
         Aogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DHhex3BacGlmb9p6xUKC39A6lSKZSbopkvhfbgj7648=;
        b=EtT2Jq13qxGMZboFJvXHctuq0+6pretGQhmUeQl7rUQHm0wvoHg0c81HFAObJRdPVK
         /39Heg8yBYKWT/LrWe4udzxaJ7P0OpdEgTR7LdZzB68UcVcrOy2GlByLJaDH+VFTMgYK
         umnpo9lhMf1PzUCTRT82z33SIgCODyPHS/Hb1upr4Mpn4mN75lz4GVlNSN1bbWM4CzGS
         vHfnJmkBlV2BXTxcxpOg/LVIxnW2djZKqXZnSPjFpZBa8K42akcwplQ+gLr6Qq62Wd9b
         szR3hSlcHUS45ZJfG+to+yIpSwlWOK6OLraHKEPET354yKF6zQ7Dy3TeVf6VVehCb9Fk
         eXSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b="CE7oj/JJ";
       spf=pass (google.com: domain of vincent.chen@sifive.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=vincent.chen@sifive.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id mt8si174375pjb.2.2020.06.09.07.25.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 07:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincent.chen@sifive.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id y1so17688113qtv.12
        for <clang-built-linux@googlegroups.com>; Tue, 09 Jun 2020 07:25:10 -0700 (PDT)
X-Received: by 2002:ac8:7ca:: with SMTP id m10mr28635040qth.86.1591712709586;
 Tue, 09 Jun 2020 07:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <202006091951.tNN5OaFX%lkp@intel.com>
In-Reply-To: <202006091951.tNN5OaFX%lkp@intel.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Tue, 9 Jun 2020 22:24:58 +0800
Message-ID: <CABvJ_xigo0-6gFV5mG2=v_FBDUo+oj+Gm6r994vJmne=Hqd+_w@mail.gmail.com>
Subject: Re: [riscv:for-next 2/11] arch/riscv/kernel/vdso/vgettimeofday.c:12:5:
 warning: no previous prototype for function '__vdso_clock_gettime'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Palmer Dabbelt <palmerdabbelt@google.com>, Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vincent.chen@sifive.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sifive.com header.s=google header.b="CE7oj/JJ";       spf=pass
 (google.com: domain of vincent.chen@sifive.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=vincent.chen@sifive.com
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

On Tue, Jun 9, 2020 at 7:39 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git for-next
> head:   5cc38fa6fc7448d40ff214d5c087f508355e8446
> commit: 6e3cfcf6ea031fe2a0068fa7c380c4cf7bcd8936 [2/11] riscv: use vDSO common flow to reduce the latency of the time-related functions
> config: riscv-randconfig-r022-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         git checkout 6e3cfcf6ea031fe2a0068fa7c380c4cf7bcd8936
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> arch/riscv/kernel/vdso/vgettimeofday.c:12:5: warning: no previous prototype for function '__vdso_clock_gettime' [-Wmissing-prototypes]
> int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
> ^
> arch/riscv/kernel/vdso/vgettimeofday.c:12:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
> ^
> static
> >> arch/riscv/kernel/vdso/vgettimeofday.c:17:5: warning: no previous prototype for function '__vdso_gettimeofday' [-Wmissing-prototypes]
> int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
> ^
> arch/riscv/kernel/vdso/vgettimeofday.c:17:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
> ^
> static
> >> arch/riscv/kernel/vdso/vgettimeofday.c:22:5: warning: no previous prototype for function '__vdso_clock_getres' [-Wmissing-prototypes]
> int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
> ^
> arch/riscv/kernel/vdso/vgettimeofday.c:22:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
> ^
> static
> 3 warnings generated.
>
> vim +/__vdso_clock_gettime +12 arch/riscv/kernel/vdso/vgettimeofday.c
>
>     11
>   > 12  int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
>     13  {
>     14          return __cvdso_clock_gettime(clock, ts);
>     15  }
>     16
>   > 17  int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
>     18  {
>     19          return __cvdso_gettimeofday(tv, tz);
>     20  }
>     21
>   > 22  int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

I refer to the implementation of X86 to resolve the warning message by
declaring the external symbols of these symbols, and I just sent the
modifications in the v4 patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABvJ_xigo0-6gFV5mG2%3Dv_FBDUo%2Boj%2BGm6r994vJmne%3DHqd%2B_w%40mail.gmail.com.
