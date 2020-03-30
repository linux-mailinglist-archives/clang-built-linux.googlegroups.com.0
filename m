Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZF5RD2AKGQEZT32TKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DF7198146
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:31:34 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id b3sf19040209ybg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585585893; cv=pass;
        d=google.com; s=arc-20160816;
        b=NvjTRUIYog6y9eLs8xOQhfKp7m1YPX3XetTroKozc6PIdlRbhtO96BFWef0U3w3LBs
         DzpqcfwNcHrEhFSi7Nzbm/c5TKllumAvgkI07JLUkyBHk7AckB5EnwizLCx5fkX804Iy
         COEUrINbW2yj6a9IrFwBXZX6/7gNjE1PfEJU10ks0B1ulf6nyUaHN+dUTdamPbkO82YL
         c+QGX+GWqFlMIMVMuiJRSSstppV3Rt3+GVR33ZjI2Uk0xxjcUr9BfAWb3B+XtLDX5eC9
         KJKiZujrMU3cC9fd4n0xi3RiM8+kt76jjK59opqXaMrqk8AK1JIvtHkTooREratK7DvO
         yyoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rT521RkCb6IpIaHpY25RS/j7TT2qRAExRDONcjg85h4=;
        b=NCofVh4FrPgnOUeHzYbYyUi+TpKX71qYSxn82EEcGdHXrF7cu0hDmXJtUYyaAyzMDT
         z5HN0XPSTtBgvv2oKA7x6Hshgau9b+SM83uRS4n0+K9/x124/vEtoxiOvcuPPzuQnZfd
         G3lgs96xo47sDWlivgdgmN+ghO6XY0ZmwNoMxBf5TMdgRIRSZcT3tsEDG/mrs+Elrx/R
         JaQEGfgJ26iid9GQ/xxSZcwgZAhJxOVq0ohy1/KbjPP68vtpo/Iy7tk/p8JsXq9Q2gzv
         7bGgT7gJkb19+yMj7dfrt+eM+OftMrx42CRX5q4Dd0PXsh6Lrhu+CjX+gTjkY5Q461y5
         uCJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qj+liwYe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rT521RkCb6IpIaHpY25RS/j7TT2qRAExRDONcjg85h4=;
        b=ACl+ahOB1l0Vf/v9bECiyITpU3kgfRANFzaNSiOKE2m4oaZeytkSlztOhyEsQxafRS
         lIvKXHRFyUKyLAS+VHyH/PZr1FE8XuRVKOH4kYKkW3WKqy9PLxPXl2YbANyagPmsx+oV
         G/spBP1ZvA+w82eyqsxw031pg8AV40lIhhnNiukCU7JR2zOGHk16tC1fEWrveT0JeCgQ
         73+/qCx40CCEY01NcYHkGCCAM8l3GT+bE8CjNolj/+v4CHHg12lIFJ+GkTFE5j0e2aM4
         h7gqMupdqoz26vZsUjdPIFQ46G14y/qlIcUNICILAZYVLryhU55Llz6pXNmZkYipXo5i
         KdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rT521RkCb6IpIaHpY25RS/j7TT2qRAExRDONcjg85h4=;
        b=gV4n1hzz7qaylLKicNZi8Y/SvLL2KLyhahWIWtkyFdEjVvYNtV3kYUaGoa0Ids2JrF
         VIT6oX+G7vK7e29Mrrmz+Xkjg004Gslsjh2X3l6u+2ZkUh1TijzH4ONlPho0/hX13Oh2
         71LyWFIYC9JLFYHaiA1dXCGRN6vJy3rz8FI63jNgUg3zvmnsCQFefxGGbBskDycueHxA
         qigN/Wq5hk7Ju20Fdl8iE5O4R47rU+tE4MUjTxPOIbZWslZsnir/EhDORFcawFf9SA8t
         R6VV2/ZTjWWa4WvnLoH5dglK/SY4p7kNhMG4lHIs1XRImowL5767EXxe9kVD192VVxKs
         tl/A==
X-Gm-Message-State: ANhLgQ1a7s+yWidNfYsSd/HMPQxFW/mjPXvpX7qPP8wa19eJ4ipgHOdH
	F/xgTe4+DRG1//oX3Y7M3tk=
X-Google-Smtp-Source: ADFU+vsW3ZGcIxGwezh4/O1A+hxdGJqNOaHHRnMivCoWwcCZO2o13yqggWIBQj4meKEJo9g4AOwtXQ==
X-Received: by 2002:a25:e712:: with SMTP id e18mr21689387ybh.37.1585585893038;
        Mon, 30 Mar 2020 09:31:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1d85:: with SMTP id d127ls6023572ybd.0.gmail; Mon, 30
 Mar 2020 09:31:32 -0700 (PDT)
X-Received: by 2002:a25:18c4:: with SMTP id 187mr22447480yby.207.1585585892554;
        Mon, 30 Mar 2020 09:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585585892; cv=none;
        d=google.com; s=arc-20160816;
        b=PqyU85qEn2RBuNEafAZnoj/o1J6m+gtWFcg5Uuh7qA6rOcKOcPtl8IQ0kcOupKReAv
         RQrx1drtkUB37LaE/VxgvdjhiaCrsteZztHaVGJwfnUqVRRceW9o46eit1hFfs7HID5o
         gnfWwC6dYEcQJHjBEnCOHG/A311YenuNNaKh0xsCzePsL8WBP/7r9iLK8Jq+hjs6u2fl
         T96X9RUPlgRSjy6Ku1Iisn104b1A62loxk5iEeesFpu6tRO8KLQjOQ2VmcyRw3Yy7LDN
         hwSUEcUPPdTbCWQvFRxFC2pjG/2/rWfhzJx4oul4FOQoPE0W6lCqQRscsBvWz1B+k8xp
         rnug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ou7XpTdUC4SdzLkY2FuC9IcCxd/mNCJWlSK65gWEshM=;
        b=BeE887RPSYomhVEDzHqfkqM4sqqxk2WpicVjcOBInUCb50vx+BWcyWmuI3Ql/fN216
         1b06QQMqN7oB9wTVEymBpvkJNciibafSXy21K9A8MzqFijsKojRkNFBLBNPu/Q0PHyuC
         A+aW/A7IQn0IbkObwpYF8mMLlbFjg0pnpuRzwgSkxk3riFYXoWnUUgf8vt8cO4afbWTV
         N5U5BoAnGmZaFFELBpAJN1l6xzBvtxMpaufF0ZeyKiES561yOtQlpoYazmAanKfMX4YZ
         JV21/2rg4aQULOYbsf4AFYdAwaJ37wzOrW9an3cRrMPNLYwTt4RvOJ5a0VOiw2e+Bnla
         3nsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qj+liwYe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d72si582693ybh.5.2020.03.30.09.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:31:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id g9so7570835pjp.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:31:32 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr38498pjb.186.1585585891434;
 Mon, 30 Mar 2020 09:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200327223443.6006-3-gwendal@chromium.org> <202003301529.ukpsA1aF%lkp@intel.com>
In-Reply-To: <202003301529.ukpsA1aF%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:31:20 -0700
Message-ID: <CAKwvOdnLGr-6cvMLJ3NMk-fZHhYZcrsaGjT=sfBQmQo+T7CeZA@mail.gmail.com>
Subject: Re: [PATCH v7 02/12] platform: chrome: sensorhub: Add FIFO support
To: Gwendal Grignou <gwendal@chromium.org>, Matthias Kaehlcke <mka@google.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qj+liwYe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Mon, Mar 30, 2020 at 12:20 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Gwendal,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on chrome-platform-linux/for-next]
> [also build test WARNING on linus/master linux/master v5.6]
> [cannot apply to iio/togreg]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Gwendal-Grignou/Cros-EC-sensor-hub-FIFO-support/20200328-063655
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git for-next
> config: x86_64-randconfig-a002-20200329 (attached as .config)

Looks like a randconfig build enabled gcov; maybe we have an issue
with objtool here to resolve?

> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/platform/chrome/cros_ec_sensorhub_ring.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> >> drivers/platform/chrome/cros_ec_sensorhub_ring.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003301529.ukpsA1aF%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnLGr-6cvMLJ3NMk-fZHhYZcrsaGjT%3DsfBQmQo%2BT7CeZA%40mail.gmail.com.
