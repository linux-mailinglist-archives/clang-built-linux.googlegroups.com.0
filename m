Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOHPZ3YAKGQE6BO6XNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10175131BAC
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:42:02 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id d24sf19720559plr.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578350520; cv=pass;
        d=google.com; s=arc-20160816;
        b=ed34vEkXcYJ3g6cpZu7TxQmFKEHbe5tiJnOlANaZ/hUIct1xsgZBSwyUY0H9oQucfT
         ALQJQMv0Lk+qwb2788T72Lhv92el+bD2lh9zDr0FSXc9yGPRPTaRck+UyVGXsomDQTuY
         F4+Coh5T8uHS4nAULiadMO4VHzfpyRocFqjTdbgSnQTzlF5yI1G7WZxO/fDw5zlyNoDh
         MZ9dY72N4WVgcDTcN3Ld9TKCCtosUxQe0T/MiI36cpDdxpt+i8unUq6ZjOZTyqcXF4aH
         pf2rCmlcTXASd3oLixanRjtB4gsYZhoqLP9Cm+SR99hvwOn+NsHxmubhKa95HeELuTXA
         BFJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0tBGKieBEx7X6XH3HG+DVzYPfVUpB+KCIc1Ysycz7nM=;
        b=FG3h9oyGbsntnSR49LflY2QwZxxbbvQITfVOAaEzmwRqA86XVHd+BHFTW/aVnD3X/c
         cXgu60OMQC6rcBcJcfJd7o2xz2KQ+7Pw/9O94pdwZG9XkSm6WWwIe0SCteWjlnGiDGOL
         UwrtHpg6XY8XmowDYmKMHUOs9TLhes3TAe0E/P03ec9Qxa+GH7kOAjzoZiO521Dl5bp6
         9sdn55DyBbae7OiNNKXlh6DI7uVkxZlqYrB3GIznQpx2vQxAq3raR1T+Lcxoz8TWQhTp
         WlcATLtyDZoa0Z12rMz180RDhAqDsoA+Jg+EzFLwpQjAc5dcssx95UCASSwvwYT3t+Wc
         T4fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ut7SbO5M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0tBGKieBEx7X6XH3HG+DVzYPfVUpB+KCIc1Ysycz7nM=;
        b=UiwCUS0Kay9q8dMJmqlhtqaav7JDJcduz1EilVq7B8P6Fk4tAPSLQqOEmat0TOWwjb
         yFFObXjpRM6Q+xUn3JvU9Z/P5mgjpVrPl8y5ZNk8BHZrHTwK3vVjLPvP8uKKkWjFyVQO
         99EPZdi1yFSghQ3EBSByNOT9ha9ILszszJB6M0y9niyVOoQ6lgKuz0MlEGNGw0iRc46T
         FspWiOSuwZ49aYG1HqCmAKtkhAe9VJ0yg/+gTzdKHhZmJIGhJ4smw0armeZVMos6ixkZ
         tgf19Ihu0nKmSLLV/k2YbM5s8eDgsuBjKggKHE9lFIXTIVmJA6njf0HvUb2xQHRbeFc+
         jVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0tBGKieBEx7X6XH3HG+DVzYPfVUpB+KCIc1Ysycz7nM=;
        b=MDizOh4D5Ri49SIOKvVKqpZe2iY8mG1wc1zXYapcSYiu2z+ylNnE6CeSBNER7ZA1DO
         hJM9Jzx9JgJZZrHnc5fovXTcj0GcNCgkSQr9p2jtraY+W+zlk6rz80gDG2+nM7hL8Tgc
         jiiSOh/zTC/Pq+gSdznuz3ZS/Kz0CJmtaCqFaUNVJ4c48joZaP7LKNDedk0ku6N4W5vz
         ibULacB403ya3uB5lfQwzH7mBIuTrwvOjY1Iz/uPeCgoaTRI9PIJvbCjAPzuo7YlVwRo
         CoU4beDSF7994Tyc65EOUlDDWuNbVpmTJcihJ91Cvwh57Vj0zyq/LH3vWyyI9z8pOkES
         rOng==
X-Gm-Message-State: APjAAAW0I7oVwHvELUW7OhqagPXNkblT/JT9ViIIuikAHfPFSC14V5Os
	le/7Z4WcrICPq5VimvXFwBc=
X-Google-Smtp-Source: APXvYqxFd/mEdTqhCocF1KrL1L45wtVYPRtF5v1ep/ESSgJaOhCvyHxHmn6JgdmG2diJChHItLN5rA==
X-Received: by 2002:a17:90a:5d95:: with SMTP id t21mr46517891pji.31.1578350520530;
        Mon, 06 Jan 2020 14:42:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:28f:: with SMTP id az15ls204922pjb.3.gmail; Mon, 06
 Jan 2020 14:42:00 -0800 (PST)
X-Received: by 2002:a17:902:9a45:: with SMTP id x5mr109753650plv.310.1578350520031;
        Mon, 06 Jan 2020 14:42:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578350520; cv=none;
        d=google.com; s=arc-20160816;
        b=pnpIBtqp69+jyCVXiELs6H4f2h1yORDmz/LtngKALNzq63XU2oToQVhOFirkkVaKHp
         CUlXzH55FtaNeW5dduTdOpK9jTn5asx9DGptg7KamEwXYy9Yi7OguCWAASdzQ1jjRpp2
         2umy0I+dR/PAKV0yMzIW0FTHithr0sgDl691TqUThc13YbhPHVP1Ydl5Ai9q+DBnuJrm
         /9hnZvW9G5a0+ao73V30+EvQrAePay0hlCFIJ2LKrFFIseFLP5tygW9ZPcrz6S4P39gp
         mgx2dVbksb90YHRjxtGsmP1NDalwUoRgyUddeBsHL4VyiKGixZBz4usvqgfROoT1bDh9
         3NYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/0p/JdjDHNKm7sLFuq4GdnlPZmPyB+7y2vR5GbR9nrE=;
        b=MyWpakY1axY008NdYtUi6a4oP34yCmQT4GUELI4rUHkJAYuUPH/9LfSkeg11KBoefO
         hsTkGkBhrPkd3oKljiEZZubeXXHr4PuL+gybHNn9d92cN1IpbXoNLu/W5EZ/PgyA1jCR
         SDmWQst13ZjfMEUwZOx+Ke7qTGDImizzGjQacmwCZ/3NVDr97iTYaO94+As5u7ShoNsm
         03T6GWE9MxBcmdX3dtWdgoM/goueY50/Ja+1/gDM3KBWRlJmS2fCy8McOGNZjB3JqjOG
         2QpwIgAxHqrV528xsOTJ7ctxYDJZi1m3wdRnEcwtnXgDkOR5JjdoXQwKM+oCbSeLlPN2
         3ygg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ut7SbO5M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w2si2225399pgt.2.2020.01.06.14.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:42:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x185so27604361pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:42:00 -0800 (PST)
X-Received: by 2002:a62:18f:: with SMTP id 137mr110334684pfb.84.1578350519485;
 Mon, 06 Jan 2020 14:41:59 -0800 (PST)
MIME-Version: 1.0
References: <201912262041.GKiwGCuz%lkp@intel.com>
In-Reply-To: <201912262041.GKiwGCuz%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 14:41:48 -0800
Message-ID: <CAKwvOd=CinWKWVZbCP+5Sq6tR7QUacPBpVuOiTV00UBXH2HYhQ@mail.gmail.com>
Subject: Re: [PATCH RFC v4 31/42] kmsan: hooks for copy_to_user() and friends
To: kbuild test robot <lkp@intel.com>, Alexander Potapenko <glider@google.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ut7SbO5M;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

+ glider

On Thu, Dec 26, 2019 at 5:01 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191220184955.223741-32-glider@google.com>
> References: <20191220184955.223741-32-glider@google.com>
> TO: glider@google.com
>
> Hi,
>
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on linus/master]
> [cannot apply to tip/x86/core tip/x86/mm efi/next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/glider-google-com/Add-KernelMemorySanitizer-infrastructure/20191224-024330
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 46cf053efec6a3a5f343fead837777efe8252a46
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project e5a743c4f6e3639ba3bee778c894a996ef96391a)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from drivers//dma/qcom/bam_dma.c:39:
>    In file included from include/linux/of_dma.h:14:
>    In file included from include/linux/dmaengine.h:10:
>    In file included from include/linux/uio.h:10:
>    In file included from include/crypto/hash.h:11:
>    In file included from include/linux/crypto.h:21:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    1 warning generated.
> --
>    In file included from drivers//gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:9:
>    In file included from include/drm/drm_crtc.h:28:
>    In file included from include/linux/i2c.h:13:
>    In file included from include/linux/acpi.h:35:
>    In file included from include/acpi/acpi_io.h:7:
>    In file included from arch/arm64/include/asm/acpi.h:12:
>    In file included from include/linux/efi.h:20:
>    In file included from include/linux/rtc.h:52:
>    In file included from include/linux/poll.h:12:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    drivers//gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:124:3: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>             mdp4_crtc_set_config(encoder->crtc,
>             ^
>    drivers//gpu/drm/msm/disp/mdp4/mdp4_dsi_encoder.c:121:2: note: previous statement is here
>            if (mdp4_dsi_encoder->enabled)
>            ^
>    2 warnings generated.
> --
>    In file included from drivers//nvme/host/core.c:7:
>    In file included from include/linux/blkdev.h:16:
>    In file included from include/linux/pagemap.h:11:
>    In file included from include/linux/highmem.h:10:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    In file included from drivers//nvme/host/core.c:29:
>    In file included from drivers//nvme/host/trace.h:175:
>    include/trace/define_trace.h:95:10: fatal error: './trace.h' file not found
>    #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INCLUDE'
>    # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
>                                   ^~~~~~~~~~~~~~~~~~~~~~~
>    include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_INCLUDE'
>    # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h)
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
>    #define __stringify(x...)       __stringify_1(x)
>                                    ^~~~~~~~~~~~~~~~
>    include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1'
>    #define __stringify_1(x...)     #x
>                                    ^~
>    <scratch space>:3:1: note: expanded from here
>    "./trace.h"
>    ^~~~~~~~~~~
>    1 warning and 1 error generated.
> --
>    In file included from drivers//scsi/scsi_sysfs.c:13:
>    In file included from include/linux/blkdev.h:16:
>    In file included from include/linux/pagemap.h:11:
>    In file included from include/linux/highmem.h:10:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    drivers//scsi/scsi_sysfs.c:1027:10: fatal error: 'scsi_devinfo_tbl.c' file not found
>    #include "scsi_devinfo_tbl.c"
>             ^~~~~~~~~~~~~~~~~~~~
>    1 warning and 1 error generated.
> --
>    In file included from drivers//video/fbdev/core/fbmem.c:16:
>    In file included from include/linux/compat.h:15:
>    In file included from include/linux/socket.h:8:
>    In file included from include/linux/uio.h:10:
>    In file included from include/crypto/hash.h:11:
>    In file included from include/linux/crypto.h:21:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    drivers//video/fbdev/core/fbmem.c:665:3: warning: misleading indentation; statement is not part of the previous 'else' [-Wmisleading-indentation]
>            if (fb_logo.depth > 4 && depth > 4) {
>            ^
>    drivers//video/fbdev/core/fbmem.c:661:2: note: previous statement is here
>            else
>            ^
>    drivers//video/fbdev/core/fbmem.c:1075:3: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>            return ret;
>            ^
>    drivers//video/fbdev/core/fbmem.c:1072:2: note: previous statement is here
>            if (!ret)
>            ^
>    3 warnings generated.
> --
>    In file included from drivers//video/fbdev/core/fbcon.c:70:
>    In file included from include/linux/fb.h:5:
>    In file included from include/linux/kgdb.h:20:
>    In file included from arch/arm64/include/asm/kgdb.h:14:
>    In file included from include/linux/ptrace.h:7:
>    In file included from include/linux/sched/signal.h:9:
>    In file included from include/linux/sched/task.h:11:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    drivers//video/fbdev/core/fbcon.c:915:3: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>            return err;
>            ^
>    drivers//video/fbdev/core/fbcon.c:912:2: note: previous statement is here
>            if (!search_fb_in_map(info_idx))
>            ^
>    2 warnings generated.
> --
>    In file included from drivers//usb/host/xhci-trace.c:12:
>    In file included from drivers//usb/host/xhci-trace.h:26:
>    In file included from drivers//usb/host/xhci-dbgcap.h:12:
>    In file included from include/linux/tty.h:7:
>    In file included from include/uapi/linux/termios.h:6:
>    In file included from ./arch/arm64/include/generated/uapi/asm/termios.h:1:
>    In file included from include/asm-generic/termios.h:6:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    In file included from drivers//usb/host/xhci-trace.c:12:
>    In file included from drivers//usb/host/xhci-trace.h:642:
>    include/trace/define_trace.h:95:10: fatal error: './xhci-trace.h' file not found
>    #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INCLUDE'
>    # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
>                                   ^~~~~~~~~~~~~~~~~~~~~~~
>    include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_INCLUDE'
>    # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h)
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
>    #define __stringify(x...)       __stringify_1(x)
>                                    ^~~~~~~~~~~~~~~~
>    include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1'
>    #define __stringify_1(x...)     #x
>                                    ^~
>    <scratch space>:25:1: note: expanded from here
>    "./xhci-trace.h"
>    ^~~~~~~~~~~~~~~~
>    1 warning and 1 error generated.
> --
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:8:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:35:
>    In file included from include/acpi/acpi_io.h:7:
>    In file included from arch/arm64/include/asm/acpi.h:12:
>    In file included from include/linux/efi.h:20:
>    In file included from include/linux/rtc.h:52:
>    In file included from include/linux/poll.h:12:
> >> include/linux/uaccess.h:150:6: warning: variable 'res' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (access_ok(to, n)) {
>                ^~~~~~~~~~~~~~~~
>    arch/arm64/include/asm/uaccess.h:95:31: note: expanded from macro 'access_ok'
>    #define access_ok(addr, size)   __range_ok(addr, size)
>                                    ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:155:9: note: uninitialized use occurs here
>            return res;
>                   ^~~
>    include/linux/uaccess.h:150:2: note: remove the 'if' if its condition is always true
>            if (access_ok(to, n)) {
>            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/uaccess.h:147:19: note: initialize the variable 'res' to silence this warning
>            unsigned long res;
>                             ^
>                              = 0
>    1 warning generated.
>    14 real  4 user  6 sys  78.05% cpu   make prepare
>
> vim +150 include/linux/uaccess.h
>
> d597580d373774 Al Viro           2017-03-20  142
> d597580d373774 Al Viro           2017-03-20  143  #ifdef INLINE_COPY_TO_USER
> 9dd819a15162f8 Kees Cook         2019-09-25  144  static inline __must_check unsigned long
> d597580d373774 Al Viro           2017-03-20  145  _copy_to_user(void __user *to, const void *from, unsigned long n)
> d597580d373774 Al Viro           2017-03-20  146  {
> d0db0a6134ffc5 glider@google.com 2019-12-20  147        unsigned long res;
> d0db0a6134ffc5 glider@google.com 2019-12-20  148
> 9c5f6908de03a4 Al Viro           2017-06-29  149        might_fault();
> 96d4f267e40f95 Linus Torvalds    2019-01-03 @150        if (access_ok(to, n)) {
> 9c5f6908de03a4 Al Viro           2017-06-29  151                kasan_check_read(from, n);
> d0db0a6134ffc5 glider@google.com 2019-12-20  152                res = raw_copy_to_user(to, from, n);
> d0db0a6134ffc5 glider@google.com 2019-12-20  153                kmsan_copy_to_user(to, from, n, res);
> 9c5f6908de03a4 Al Viro           2017-06-29  154        }
> d0db0a6134ffc5 glider@google.com 2019-12-20  155        return res;
> d597580d373774 Al Viro           2017-03-20  156  }
> d597580d373774 Al Viro           2017-03-20  157  #else
> 9dd819a15162f8 Kees Cook         2019-09-25  158  extern __must_check unsigned long
> d597580d373774 Al Viro           2017-03-20  159  _copy_to_user(void __user *, const void *, unsigned long);
> d597580d373774 Al Viro           2017-03-20  160  #endif
> d597580d373774 Al Viro           2017-03-20  161
>
> :::::: The code at line 150 was first introduced by commit
> :::::: 96d4f267e40f9509e8a66e2b39e8b95655617693 Remove 'type' argument from access_ok() function
>
> :::::: TO: Linus Torvalds <torvalds@linux-foundation.org>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DCinWKWVZbCP%2B5Sq6tR7QUacPBpVuOiTV00UBXH2HYhQ%40mail.gmail.com.
