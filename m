Return-Path: <clang-built-linux+bncBCDLBG5YXUKBBXOTYD7AKGQESWYIMQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DDB2D384C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 02:35:26 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id r10sf101196oom.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 17:35:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607477725; cv=pass;
        d=google.com; s=arc-20160816;
        b=BklD/KanCp8PA75MaqaeyAUdsZVPQZWmld3XZ4pBenGMf2EXETMNCFicwKcUPkfs5w
         6T+R6ZvWYYUR40Y3wRQr/+A61QU469WgEb1TOBmJ+grFgrJTBg7rrX3hwGiuPf0DEeX6
         rbQ2MliuR1wI7StGRaXP3kB43eRhdWg26LXt2E4cYNp37uEGKkAIQxu4S3KJbTW56yA0
         ZM/h6+cOQV+zMqP4M8SWcae0kGtUcruedG9fiK7lToiUXesBW9C0Dvd9x9HoQciDbQ/d
         g0laHrkrjsYn6vOw/71MjZrzkR3NZcDsT2cj5ffZcoFzCgp/oIUX897fvaGW/jp9RreZ
         B2Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Oo50dA9Kv5MJG/7HRk1JiCdzh1d7302SBNtCl8fVmJ8=;
        b=WHq1bX3TKsia3+6ALLZdzv9AWNfsuT7ywdkobQKtmtKTvzHPgS5zwpalnw1fkqux0c
         bZbbnG/BOpgt5DXHl/wT6+TAI3R3Puvd5y4alhe6ebd6T5NLu/ChJthYxEPEq7BlsFjT
         FJ5Mgy2ujZG/6NcCq0QeD1Hri7zf5FvVQnDppSvMdEqioDWdppnMaxNG8T6HWRT2kH2H
         itGR8EdOpRJeKJF5UHATMebrmn5hZYlWxa2k84cakPNlZY28gHAujLceZ24NARLaJNSM
         cTpRLTE3vWXS/o0hoiPfZK6RF4V1BpwBKsgdVZCDOmxOmO8Ed4JLJd8M8+zaS6uSJSJj
         KgXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b=c+FIQKRz;
       spf=pass (google.com: domain of zong.li@sifive.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=zong.li@sifive.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oo50dA9Kv5MJG/7HRk1JiCdzh1d7302SBNtCl8fVmJ8=;
        b=RS+RgVawLqeHPD4+b1qiLSnaDRwaS67KN2XC6pnIYxsv5CJZAbOSwJu7+r+S8YL9Z/
         bgT24pLnYJ4BUAFbCbmKjAUSMcUuHqnGdFDl2k0wARt2/2g5m4oewxrHOg4VyrmkbDV2
         kHh6HADvqY3m78WxPEo2/GnfyRy0kuLbQGTZDIy1Scsqlo/h2L8kMSpd+WF5ug/xHiEx
         fhRzsYgzhXmdUwdUIc0SZ1Fvn8nVf7uxvQHZrOxhs+LP2halq2QjlVM5nvqby+tVO39Q
         /U/5e/3s/rKc3BMPca4MfhRWe2uVzjENs04x6C7hJy2PMCBX73fEz212D1rfl8S16UdC
         ZVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oo50dA9Kv5MJG/7HRk1JiCdzh1d7302SBNtCl8fVmJ8=;
        b=LQWa8EcNLOF9e+6MIq07kcm4Oy/OPa3ZZfK9OpChoTmBjLDBuNInkjaApGdz8cu5ls
         y4XU1HnL7RbM2qpwlCHKggLNN86BzDh/WWtGsEqGYpu3YsJhsug6tacyJCwD5TZx0RKy
         uLZBygrbcVTA1Uf5dkRA5COc1Dty2ShgyfDY9XpTUMgLTYVtpMtOXjwWgPWqSExIb9Ce
         R4pdvzGDydnd7Zxj0ki4Bi2IsFfCcx+w2FKgBL4uaauMNmPDXNUZW8Bnx6WDmxxl4Hks
         lL3t4suk9bwemcfH12pWPPWCsPx5a52X0e9FlvwKgz/jPZFA/mAZqWfsOVBSX4uR0Ny8
         MfjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yTKU3AOejniA+Tb+gQPsjfcLN67QTZAlbdqzhZCd4SIQHebi0
	gProW1dXGVLvAODxDN2HVDc=
X-Google-Smtp-Source: ABdhPJw71EILANPpbLtRigzE0dEMJuvpQsxPaSd/kv0v22wAkxsnlVdhcpidpjSYF9cnjXB71zz1Qw==
X-Received: by 2002:a05:6830:1286:: with SMTP id z6mr781246otp.334.1607477725726;
        Tue, 08 Dec 2020 17:35:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls71556oib.9.gmail; Tue, 08 Dec
 2020 17:35:25 -0800 (PST)
X-Received: by 2002:aca:1713:: with SMTP id j19mr169070oii.165.1607477725251;
        Tue, 08 Dec 2020 17:35:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607477725; cv=none;
        d=google.com; s=arc-20160816;
        b=cJlnSNlLAY2SqFFIiM6Q3OnaSaAxiwiUHQMyRIbxgBc97i1Tk94NH4JkoOZC0o4wkH
         Ja09arfCXWWA6HA97Lz/6eDfR0FSDd7eYIQQqPocr8zjTO8yvOAHsNItNAYbIpzbKBbh
         KGdpDgWjvyA86jfpICbkHHTNHfhbtoK5Z3z3eFHxXVaQVDbzhasfcvl0UW+ObDnRPOYz
         1nczTflIkjJeF0M28Kc56UpvnVM6k+WwJdgFjFCBi6sYbxDrP39XQFsw1ECWsSOAUOza
         l/ZU6DfSkC1FhGnUGeu7zJH/blU+HQ9u/yHCV9KlODgBbVF9Xhv77bIrbDqgmOFWY28T
         WkcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N9+OxDZjSo4wCo8oLDWS807OvNQxIgRZodAcG7UCd+I=;
        b=qS2bIIWTemndYiM5PabdMc51EjW5z9EYl5zu8q32tyYUQyobS09T/czoDS/vQgdDtz
         ++vGtKTzG1kAixWHEgzwSOHeokeX/xbHNWn4AHwxJhhp9H5WAJJ01a4m+sZb6+iT6X+f
         IK9Lb4OPi5N4WYkj7KOrKSaOjP8g8fykhdAZdzFXjFXl0+CqSnfGfvc/rC/BDnzgEDMY
         kz1vcHEM+Z8SasRn0umGrwfnuft9wAGk5RwDwVPIRWFtMexGG9QT43baWW69+H5VN3wO
         0f3GCmpPwPoCLi/OlLE436eBG+1s/vjULS3HokG8TjPmIFYjLYXilFZHuL4gElg/8v0M
         ecKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b=c+FIQKRz;
       spf=pass (google.com: domain of zong.li@sifive.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=zong.li@sifive.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t20si6250oth.4.2020.12.08.17.35.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 17:35:25 -0800 (PST)
Received-SPF: pass (google.com: domain of zong.li@sifive.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 11so675022oty.9
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 17:35:25 -0800 (PST)
X-Received: by 2002:a9d:646:: with SMTP id 64mr827164otn.18.1607477724926;
 Tue, 08 Dec 2020 17:35:24 -0800 (PST)
MIME-Version: 1.0
References: <20201208071432.55583-2-zong.li@sifive.com> <202012090131.cj4wycAZ-lkp@intel.com>
In-Reply-To: <202012090131.cj4wycAZ-lkp@intel.com>
From: Zong Li <zong.li@sifive.com>
Date: Wed, 9 Dec 2020 09:35:13 +0800
Message-ID: <CANXhq0pGhyvevg7-D83V3+i_KRPWW1=RfzM8pBooPAeOQp00Wg@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] clk: sifive: Extract prci core to common base
To: kernel test robot <lkp@intel.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Stephen Boyd <sboyd@kernel.org>, Andreas Schwab <schwab@linux-m68k.org>, 
	Pragnesh Patel <pragnesh.patel@openfive.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Michael Turquette <mturquette@baylibre.com>, Yash Shah <yash.shah@sifive.com>, 
	"linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>, linux-clk@vger.kernel.org, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zong.li@sifive.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sifive.com header.s=google header.b=c+FIQKRz;       spf=pass
 (google.com: domain of zong.li@sifive.com designates 2607:f8b0:4864:20::342
 as permitted sender) smtp.mailfrom=zong.li@sifive.com
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

On Wed, Dec 9, 2020 at 1:08 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Zong,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on clk/clk-next]
> [also build test ERROR on robh/for-next linux/master linus/master v5.10-rc7 next-20201208]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Zong-Li/clk-add-driver-for-the-SiFive-FU740/20201208-151711
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
> config: x86_64-randconfig-a016-20201208 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/5bfdddc125b80d4541a5a925918efec9b6fe0282
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Zong-Li/clk-add-driver-for-the-SiFive-FU740/20201208-151711
>         git checkout 5bfdddc125b80d4541a5a925918efec9b6fe0282
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ld.lld: error: undefined symbol: wrpll_configure_for_rate
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(sifive_prci_wrpll_round_rate) in archive drivers/built-in.a
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(sifive_prci_wrpll_set_rate) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: wrpll_calc_output_rate
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(sifive_prci_wrpll_round_rate) in archive drivers/built-in.a
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(sifive_prci_wrpll_recalc_rate) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: wrpll_calc_max_lock_us
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(sifive_prci_wrpll_set_rate) in archive drivers/built-in.a
> --
> >> ld.lld: error: undefined symbol: __prci_init_clocks_fu540
>    >>> referenced by sifive-prci.c
>    >>> clk/sifive/sifive-prci.o:(prci_clk_fu540) in archive drivers/built-in.a
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

This issue should be fixed in the v5 version, it seems to be a mess in
our v6 internal branch, I would rebase the codebase and send the v7
patches.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANXhq0pGhyvevg7-D83V3%2Bi_KRPWW1%3DRfzM8pBooPAeOQp00Wg%40mail.gmail.com.
