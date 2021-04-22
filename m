Return-Path: <clang-built-linux+bncBCQJP74GSUDRBQODQSCAMGQESH57HFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 014AF367AAC
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:12:03 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id d1-20020a67ed810000b02901a9fcd861fasf6405638vsp.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619075522; cv=pass;
        d=google.com; s=arc-20160816;
        b=IV/B/s60zXUXj9/96s70VHz9EMVvCLbK8f/xtdPk97wMCQzDPTKOEJhIHjb7F6rhME
         MQNo8ivGP6BJsOYn/eIZZR+UN48AwIpog6OWD5zSG/0SCNwojSIYK4lDXj0gD/nNquRx
         V6v367IES8Qhlz3VGUnAeuUVHriYYdyx7+TV6T7O2kSIJLCDd3lgr5hMuujWVcbaq+JA
         6JhBbII11TuN9zGaIzwgYujoftisTnQWxTRtRNIdwRC0aID0SbdkwLXSkfXJAs8E6ny4
         /MKbEnfYGaYbEm3X83Ds9dHD1LUknZE5hpbQ8r5him/I0yt19j1GnOO/UzP6QVTWOmhM
         PA4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WOF9R8sedcaWLki6nG5U1RP11k4t6HsyfhD5Y9VrxQA=;
        b=C4Eopa+HvIvvW7s2Tr6O5BTGE4B7IczUznaYD7uZ8d9uinWbwRWjlV8p4HsAmCut9H
         JlLsJqu5VOzT8Mfa7UZEMWmgfRMgwIkdRFazjlDSZXe8nkv8+YRAB5+bheNcO8JTbXZN
         /xSShGds6om6jrZ2DaWFefB6ScSY2i1luMOoH9+O/lxacEWBKQR9sA8jq/icJEZrKhjZ
         hJevxetNT0VQGUjoB5irboEB8uEof8kvcnmgyydJrvtM+VQ+2X+yo1YZfYh7CuTttuqQ
         BOCgqbSbLlKcZ4VATMbLHPMImZKG6wQsAMl2daeYNq0GCwcy8Nx1BHee6bh0bgSSQ129
         TguQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.47 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WOF9R8sedcaWLki6nG5U1RP11k4t6HsyfhD5Y9VrxQA=;
        b=Nt3aIrw+9JUrea3jRBwcQCnCeBd7X92apvKu2ddqWfmLbjuTQItTrTBEQdkLhSn+JT
         q2zHsjzVEkDd/LGCJeI9SkhortuKvWdiZuJP43yKI8rDxd/Uzq1NFLLtrduqECNzxvEu
         /K2gw+0GH6JQsmkW6g4nm2PPSfoHxoal9Vfp/Y4uXl+LUrJM2Zdgx295WbM8LUhJoWzp
         LQQxBm74N/nTVn8eVEITXp0a5XQRywXd3kWRv2eDUg1hLUmadorx1CIT5HKIDesBU3Kr
         v85ka4L6c0W8uEhvg2CCSLKxVAxNwac0UJn++9f7bSp9nEZKgDOVmkIqOcaBUwrZSX4G
         3x7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WOF9R8sedcaWLki6nG5U1RP11k4t6HsyfhD5Y9VrxQA=;
        b=CNOTMBkcEjHojqaqqs3m8rHZ5zl7SAxPYVQRmp4xnsDF/CEyNNHG2rxlUGoq+QzpHK
         kCQEoDrTaSApUi2obN5uNunn5mmZsHsbAVxp0CVM7YtUv+lTHfdD/br4PCXvYAjfxTVq
         3s8Snd2g0NWQkuZSW0MONoZ2PK9Y6mr+34QmNjgZfpxg2EpSskCox5pJ7hsPed6QWjM4
         jJU/yWbngKYxrWBZSXsymwkB2wB/UVaCIjTEbqk94W4xJfXcdgr6WpJIhSv7+ZGgsA7X
         GkUjQEMwRFw3WvVRjU1/f56+qcOuI7ip/l6ja8KOjGxF4m7D2iDyzp/Hk2UsOMPmKO7a
         p34A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TiCwHKizi0pLql95I3736nI/Qj8pdymUUpDnxbJ8vp1//uMd8
	S4Slk+OPbjFJATlmiHX0dU4=
X-Google-Smtp-Source: ABdhPJy35l8mmFzV81vlBRo0A5P3QSoUWg6kxG5wboLZfJrH/qWcmPdWrCng0uttaV8XVWl2puMb0g==
X-Received: by 2002:ab0:7317:: with SMTP id v23mr1156163uao.9.1619075522067;
        Thu, 22 Apr 2021 00:12:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:555a:: with SMTP id u26ls449945uaa.1.gmail; Thu, 22 Apr
 2021 00:12:01 -0700 (PDT)
X-Received: by 2002:ab0:1d81:: with SMTP id l1mr1109750uak.79.1619075521560;
        Thu, 22 Apr 2021 00:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619075521; cv=none;
        d=google.com; s=arc-20160816;
        b=xHQAzGVLIbCegGEWP01P+8HnrnsUV4AFMpnKus6/hcUmbp1Rhr08E+iv5CH1V9Hwyj
         PNTpyrXoVYPjOggaHdR2/apOn6HhPd6VfmFmpvRspCU1uJg85lPSe4IP1d6n62rPa1n8
         K+fsJ8ZDfV6vmF0doEPUfGTUnyEGqKrvYyvwU1oiVJDv4YKWeGZseMecrjJ8Cvoxoj8+
         LTq+egIo+DAr/4pV/CV5IpDu5GSCvPGfpOZuVy6bUVntzHYnCWIeZ3rjHQl12iZbpXx6
         nWXNGjhLTNNfWUJjbj+3HNc2/KN2bDGi2JlUGZdTkktlsUWe2mR6ydjRVQcVyXcgWH3G
         GiiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=MnlsbYYFiDldp+3bllzRvToouY6x7yofcE/PI7JdOxM=;
        b=ox9UgIT0Bp6j1h6DiQsKaZ23BhvtDu0syGZuvOC8G9O+kAuh8dc4kQ9b+/MX+ftyom
         X8k3odSyLaGp53vwKfuaXfaSXuxLNhYhxTbJJkB56U90aKLvft1zEZxIp0ikvM69Js1j
         GXKNPMiHGQOhVBFjvltt8CRK6cU765JGc/3JKsmLpP9xNJ8IvTwkTPDKs/U6a0SPwi+Z
         Ujvi37UXLrcd9ftey1n84CHYGfKMf84o5Ueqj9xrUhji9cYXgr/ciBuXv3w31wXcxc1M
         jeAvVZ2f1A/nFWbA6XAKMx1uwCo1jmrZWCfm8r4XHMX4ontYxJhEuROr7FKxP3Sn1SGJ
         l1YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.47 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by gmr-mx.google.com with ESMTPS id x1si325440vsj.2.2021.04.22.00.12.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.47 as permitted sender) client-ip=209.85.222.47;
Received: by mail-ua1-f47.google.com with SMTP id 33so13868600uaa.7
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 00:12:01 -0700 (PDT)
X-Received: by 2002:ab0:6306:: with SMTP id a6mr1141667uap.2.1619075521369;
 Thu, 22 Apr 2021 00:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210421143115.22797-1-johan@kernel.org> <202104220355.v8nwWx2T-lkp@intel.com>
In-Reply-To: <202104220355.v8nwWx2T-lkp@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Apr 2021 09:11:50 +0200
Message-ID: <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com>
Subject: Re: [PATCH] serial: extend compile-test coverage
To: kernel test robot <lkp@intel.com>
Cc: Johan Hovold <johan@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jiri Slaby <jirislaby@kernel.org>, 
	"open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.47
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

On Thu, Apr 22, 2021 at 3:20 AM kernel test robot <lkp@intel.com> wrote:
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on tty/tty-testing]
> [also build test WARNING on usb/usb-testing v5.12-rc8 next-20210421]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Johan-Hovold/serial-extend-compile-test-coverage/20210421-234950
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git tty-testing
> config: x86_64-randconfig-a014-20210421 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d87b9b81ccb95217181ce75515c6c68bbb408ca4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/c010530fa587261662c6abdb59ade994645dcfa8
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Johan-Hovold/serial-extend-compile-test-coverage/20210421-234950
>         git checkout c010530fa587261662c6abdb59ade994645dcfa8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/tty/serial/serial_txx9.c:987:12: warning: no previous prototype for function 'early_serial_txx9_setup' [-Wmissing-prototypes]
>    int __init early_serial_txx9_setup(struct uart_port *port)
>               ^
>    drivers/tty/serial/serial_txx9.c:987:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __init early_serial_txx9_setup(struct uart_port *port)
>    ^
>    static
>    1 warning generated.

This function is called from arch/mips/txx9/generic/setup.c, and does
have a forward declaration in arch/mips/include/asm/txx9/generic.h.
Unfortunately the latter cannot be included from the driver, unless
the || COMPILE_TEST is dropped again.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXKWDB89Hm-LQcpfTq%3D0yjm_xvQsQiD4QuEtW%3DyVymuRw%40mail.gmail.com.
