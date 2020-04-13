Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPMO2P2AKGQERXFQZOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id D85821A6CFA
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 22:10:38 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id x16sf9482902pgi.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 13:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586808637; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfMEGFaG8CTewXArY8BiskqjOjpH7fYfrlliwUMDUjEkWhiLARz/JO70RmlvtXKBqJ
         qq8kIxvFXJ2K4r1CzTI1zzLZWEBE6xABUa3tagxl9JCIO6j7PWya1JXudiNzMYMHlblC
         OiXREY7r0AjmTBLkTUUOBTDqKFbFWPlYyRM8ghtOD+KY8Wim10x8Jo1veHK/tsZj3WIj
         +HRbrZD3SbYGdfIyg+RmLite2LoK2FQ1Qz5/gQbMIY+cf4nkS69SjkU/Bg/kakiR+RNM
         l8R7bMnSN1s+UCMsMpd9NZCLYIgWnN1GN5QNJMaH93qHoO1k24XkaL1UmAtT4YovkqOC
         zvlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=9jviCqy/3iIm+kC6loa2wgl5u0B39+5DOtmu/3cemO0=;
        b=IesYLbAt6r1o4gGcw5yaxkdlNgfFJ3BG0hSzPyheMVKNsW96w8qZX4BUrfroheyy0C
         WppPqjmj72RMqKWSJShXKvW8WKnCC6i0tgs4xtcBbOEgf3Apx2e6uYPUtYwLLrksfLKv
         +zbXBnkPYL2mdyMM1mCXPWd48COC/C3p97CETVaG+2Eb1zbLUbyveLAWPTEnCSZOl8ue
         kF8avhPjLL2UrMbIxYh9IH/sxEBHUNgoqVIpUf4g6xLh0jkCs03vk0hP9UlY4/O8+Koq
         ahPOtXUZVzW+9h+aId4cyGJ53FYdXknpq+opiwTXHhSJuxE/coeZkoDxQz45q/FBRRAP
         wRPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sGiHveUF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9jviCqy/3iIm+kC6loa2wgl5u0B39+5DOtmu/3cemO0=;
        b=I3zxtaLRLdwc9QrigPqmDEmRFlhFcR/WiMo5tW6puEpgBz9fjCJpFutkomtU+9DhL/
         sEQoJsqSEPTdRzw+duCuBdu0O3OKmmjeGD6up5n2Zz90DW4a2GfPrKrNQfHFFZTbGEJJ
         iytJYzDCGB4OJYr2ViK51aLtTXOY+eJXYa92bp77S5tAER51i+G6CBASI2736MXiWeNX
         IJZsir4ZAogzIzgNynnMD99I6aZrZeZet5YNF0KBa/Mkr1G4TWf3WItKaetergjLvhwD
         ohVVDX4KRzm25uW1OchlB0sljyogXXhYs/ewRNsjomJf1YhfuWfjFYZtWfuypfZFbh6b
         b52g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jviCqy/3iIm+kC6loa2wgl5u0B39+5DOtmu/3cemO0=;
        b=D/gBet0Jt8q8G6Cg5ZWbLH9cJhrfKr6JF4gBZSKMZJBl2ofB4X85Wrzvje8JV74FEh
         rbMSzuAc3d7F7pQuE/14exVGOEPgEQhTvG2g1ml/geN7ghFNr7+3pyP4mjCeE0V9ojEP
         vhIIqp7Hcv/jYqKnrdnUIVr0qW8YC3C9RXPVZJ9IfcP+nQORKixj0kXI8sdXHL8Shu9n
         UuNod6VASFyEVBEALiiRokFQPgFjeatYYIAERnGFp3cQNu8S+4SVW6KGZPneNujjEKLG
         aovtJyLm8uF8uj61mKhzcWdK4gp6K8Cjgdt2sOhBGHZ1KeCDPkixGwjozlmGZ36VrN2l
         6MQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9jviCqy/3iIm+kC6loa2wgl5u0B39+5DOtmu/3cemO0=;
        b=O0LKWbUVVS1B0fglu2SDnMs0VJ82o3nnOOEmg7kVoM9TdswtbtXDSeuU9HoUKr7V4z
         ROFZvh6/dPr3yUJ09WXeAmXIELp8EVJM2QYiQK98kzlVm0FXI+jJsQu4UJhE4a6MWLxO
         ytCXsOKp+jI7kNFdNVyoTCwBV+kzsdanqB1nFNFR64fZu9kIFJiHfxxuC9i17r7HuFbt
         5vw/DTp3q971ICOeD/qXFICO+97b2blynFHKrg62qqtd/XK/r/5x+EfW/yFESNjLpfAi
         77SHBzvyLUcKpwD8GTzf6dZBa/I1pOMyuq6XzWzA3njSwhDMt1K02xLGP6WrnquuhAf3
         Q8nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZVTRKdhtM4+uQ2zujsm3ypi5x3RsJZMXZy1PtZulGEgANMTah0
	codxwE3b4KWMi2kFr0PmOow=
X-Google-Smtp-Source: APiQypL8S/QShB3gQus1DRsxPDbcfo6jImNZqlL6Le5c197t8At9Qo9Uz4VUXMAjl2c05dm1Jz4jcQ==
X-Received: by 2002:a63:5c1c:: with SMTP id q28mr18586753pgb.125.1586808637564;
        Mon, 13 Apr 2020 13:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d34a:: with SMTP id u10ls1454353pgi.8.gmail; Mon, 13 Apr
 2020 13:10:37 -0700 (PDT)
X-Received: by 2002:aa7:96f5:: with SMTP id i21mr20007989pfq.248.1586808637136;
        Mon, 13 Apr 2020 13:10:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586808637; cv=none;
        d=google.com; s=arc-20160816;
        b=h+ziPQzlGVgcXbLUEJPbWtFRv82B9Q8bC5kRBgMtA3fIgt9HjOXwxcYDis3+aZgGTo
         q/RPy0QFEe5Mwuujdn1Ku35SRWqnwlib4q+axoJpDK8tQBw2kWCcU4PaU/MBznxGHZz5
         ZVhU+Qiw3xyKemePBcBsR9WbRS4+hcKrrPo8Sza0sd6v4J+PgdsDeD+vElWNt0qqkM6V
         Fc35p0BXkAcpQMOTM2iLlLXKCddIn25UInPHmzGYZUO5h5CXn3Nb6aoSRoikFu3Xqfov
         E9Z9UnBXJ2ZO5zIYLXc5MgezriP+tGWahJ2j4vWGzJD8aJ88QObk5BbYyRazt/gEPH95
         X42w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=Jo1CFsY5zk8abkk0OMLxJjiIsujxmtrwxbQ2I4Rzdjs=;
        b=C14fucNR1g/FfB13CvIqfMBDK1xsxDG6yMjDzCGDJ2qNSNWazbJgicG8aG6T0a9WF+
         0Z72UA1yIoowAwA9AeYOQo3wrXeDhWBq3vAXKJETEZTg9/rJCFzJPPGMjClathzweDcZ
         +L8Qj02H9sZ8N9lsolFo2gZsf4RqHy20RTU2GLW7x0HlGfxpFvjJFp+jjBQTFcBesHEf
         ZX8XY0AQ9tC+o/vSqaDcl8wCdEGZHWy9dOdPTGy4JYbQ2kPEZ+7tERBjRWTQry1fy6Qa
         pQoEkwkeF0MlkEmnVl3eypVaOK6K8T/YrWMOaBHBZuHg3B0R7yZA8IVBGF7W9masLHV7
         pIeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sGiHveUF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id br20si256638pjb.0.2020.04.13.13.10.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 13:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id o25so8438929oic.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 13:10:37 -0700 (PDT)
X-Received: by 2002:aca:5358:: with SMTP id h85mr2522889oib.42.1586808636411;
        Mon, 13 Apr 2020 13:10:36 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id u205sm5060954oia.37.2020.04.13.13.10.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Apr 2020 13:10:35 -0700 (PDT)
Date: Mon, 13 Apr 2020 13:10:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: -Wincompatible-pointer-types in
 arch/powerpc/platforms/embedded6xx/mvme5100.c
Message-ID: <20200413201034.GA18373@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sGiHveUF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

0day reported a build error in arch/powerpc/platforms/embedded6xx/mvme5100.c
when building with clang [1]. This is not a clang specific issue since
it also happens with gcc:

$ curl -LSs https://lore.kernel.org/lkml/202004131704.6MH1jcq3%25lkp@intel.com/2-a.bin | gzip -d > .config
$ make -j$(nproc) -s ARCH=powerpc CROSS_COMPILE=powerpc-linux- olddefconfig arch/powerpc/platforms/embedded6xx/mvme5100.o
arch/powerpc/platforms/embedded6xx/mvme5100.c: In function 'mvme5100_add_bridge':
arch/powerpc/platforms/embedded6xx/mvme5100.c:135:58: error: passing argument 5 of 'early_read_config_dword' from incompatible pointer type [-Werror=incompatible-pointer-types]
  135 |  early_read_config_dword(hose, 0, 0, PCI_BASE_ADDRESS_1, &pci_membase);
      |                                                          ^~~~~~~~~~~~
      |                                                          |
      |                                                          phys_addr_t * {aka long long unsigned int *}
In file included from arch/powerpc/platforms/embedded6xx/mvme5100.c:18:
./arch/powerpc/include/asm/pci-bridge.h:139:32: note: expected 'u32 *' {aka 'unsigned int *'} but argument is of type 'phys_addr_t *' {aka 'long long unsigned int *'}
  139 |    int dev_fn, int where, u32 *val);
      |                           ~~~~~^~~
In file included from ./include/linux/printk.h:7,
                 from ./include/linux/kernel.h:15,
                 from ./include/linux/list.h:9,
                 from ./include/linux/rculist.h:10,
                 from ./include/linux/pid.h:5,
                 from ./include/linux/sched.h:14,
                 from ./include/linux/ratelimit.h:6,
                 from ./include/linux/dev_printk.h:16,
                 from ./include/linux/device.h:15,
                 from ./include/linux/of_platform.h:9,
                 from arch/powerpc/platforms/embedded6xx/mvme5100.c:15:
./include/linux/kern_levels.h:5:18: error: format '%x' expects argument of type 'unsigned int', but argument 2 has type 'phys_addr_t' {aka 'long long unsigned int'} [-Werror=format=]
    5 | #define KERN_SOH "\001"  /* ASCII Start Of Header */
      |                  ^~~~~~
./include/linux/kern_levels.h:14:19: note: in expansion of macro 'KERN_SOH'
   14 | #define KERN_INFO KERN_SOH "6" /* informational */
      |                   ^~~~~~~~
./include/linux/printk.h:305:9: note: in expansion of macro 'KERN_INFO'
  305 |  printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
      |         ^~~~~~~~~
arch/powerpc/platforms/embedded6xx/mvme5100.c:142:2: note: in expansion of macro 'pr_info'
  142 |  pr_info("mvme5100_pic_init: pci_membase: %x\n", pci_membase);
      |  ^~~~~~~
arch/powerpc/platforms/embedded6xx/mvme5100.c:142:44: note: format string is defined here
  142 |  pr_info("mvme5100_pic_init: pci_membase: %x\n", pci_membase);
      |                                           ~^
      |                                            |
      |                                            unsigned int
      |                                           %llx
cc1: all warnings being treated as errors
make[4]: *** [scripts/Makefile.build:267: arch/powerpc/platforms/embedded6xx/mvme5100.o] Error 1
make[3]: *** [scripts/Makefile.build:488: arch/powerpc/platforms/embedded6xx] Error 2
make[2]: *** [scripts/Makefile.build:488: arch/powerpc/platforms] Error 2
make[1]: *** [Makefile:1722: arch/powerpc] Error 2
make: *** [Makefile:328: __build_one_by_one] Error 2

I am not sure how exactly this should be fixed. Should this driver just
not be selectable when CONFIG_PHYS_ADDR_T_64BIT is selected or is there
something else that I am missing?

[1]: https://lore.kernel.org/lkml/202004131704.6MH1jcq3%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413201034.GA18373%40ubuntu-s3-xlarge-x86.
