Return-Path: <clang-built-linux+bncBD26TVH6RINBBSGH2TVAKGQE3T7UBWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3088B8E7FE
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:20:10 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y66sf1200306pfb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 02:20:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565860808; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5ZIfgec8gx0vQPPZpUj24+RaK1ZsF3qk2lkMJTiteywEodelVSqROYbCEw2c53XUH
         qE2XrLoo8N9LSKy/A0vJwwtNCgfSjaZHLCE+WvgnkRIfkbLw++QJ/Nx5IyU7wORihawr
         EzEtAFni6ojSWwSDsI/h04IcOwNTSL4GC3qxmSS3jDSBakm014Qhtu6w4QmlO6bpJfad
         3O9zb6nYrEBH3vFyauQPgbsjFzSeUpScSh2nWfMN/SU7Qg6ta9GVhmBbo890x/xcdzxF
         jOzS+nCKvQ/k8Gdz5DFnZd17YJJYvFbHA52lahfO+7+KF9dWiEE1EKSO+kpmNPvwCflS
         cupw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wHeui5oTKGw+bRzprwXtZvhi28YhbIxiatFlsf+3pPc=;
        b=paFgyQCVjZc3UpQ0mPdvCu5QGcbM4A7lc43wwFk4Bxhtr9oUQ2Xks+7RfqLZX7C2Em
         SuiiV3H3+g5crT92SSW9+M+ncl1ade+WJaOYwZpnIhGTiPJDEY5CoxQRXWS7pvMXspO+
         8r65u0oev8qJ9PkomLFx2E18V85qUqd4UbZy/tlALxUjr2PPKauK4jQZmtKxr+cwi7bB
         0HE3+0UWz8yr2nponx4iJvxt+F5ontLv/YZqvG8XS4K9gx4UGB/ailuePUaXAmUNKTy7
         ZNZxixp1y8LhpZ4HDTuJAinFtXNFLG2jL0sfWpbPBHs9u+W8sWXn3yn3Ug1K8ZO6s8lC
         QLWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wHeui5oTKGw+bRzprwXtZvhi28YhbIxiatFlsf+3pPc=;
        b=KvuC38K0f1hL/GyrmHYS846VCZZZ9HoA6Mb6g5lf/iJeik4d2bTYEWe4Mfab152pL8
         8iiffO+lyijM6rKlvPSRp9saLcw8udAcTfJcwTEXVvf6nBwI5q1EjKSYZ1l4LLotv8Cc
         StBhjfwWcO2GsUENQFcpyXKqDu3HeKHkby1+ws0oVqvA1nZjoEYopzWD6qzm7jORZFsz
         ZEh/qyXmlJrBIxhCKPG2ATRbwO/ZL+/F3n58gg0cvDIl9vUg9bA9mtKHmmvzRL8R+m+s
         6lFuEcPps7wdIAf06gcrjm+F2XJbb6HX3r7/uqQMwO92LEhx7VDST5fGIlDizx9+QqYS
         JhJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wHeui5oTKGw+bRzprwXtZvhi28YhbIxiatFlsf+3pPc=;
        b=DpNhMvnm5jgp//yP0MP8Oy99E4m1/IKGGIYH6u4Hvu9L6zXTe3c0mqFlHl7fJnqEwD
         2xj2UjWM87eZUYOoEHhStAJ+phP/SFvK0Eul0qeQZS86WGvGdnwMGPuL1T+8xMCkHvAI
         gd6leFvzNmrkRGrJYZ9vb5wWPiLx2tBVdUjLLDobXYmF4VavBuQbpd9ayT+ANKnOOzuC
         8L0V17cw72csxG7viWEYjKz6ZRwFeSxftfRw0Z3m/AReJIxu00hp2IOjvUsAkfmXk703
         xB8YUbCwgSmtn0LWTP32NywK9ul2LvCfwhC5HkhT6lrd0/OPBQISJPs8KXhwIoVmf8oo
         A+Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWw7oN92p/H+DaMhDYWW1w4u56bNlYy7C/9c/WdU2yTB9qMkvz4
	6dSwHz/VV8w8wkVQF8XiEPI=
X-Google-Smtp-Source: APXvYqxqI8bBl4uUf8wS8u0Lh+Dh22lZopsz02McuURNOsiZC1muV9Lk3b2a7zNskfmNWij03UGPQQ==
X-Received: by 2002:a17:90a:bc0c:: with SMTP id w12mr1274975pjr.111.1565860808364;
        Thu, 15 Aug 2019 02:20:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b81:: with SMTP id p1ls1142727plk.6.gmail; Thu, 15
 Aug 2019 02:20:08 -0700 (PDT)
X-Received: by 2002:a17:90a:f:: with SMTP id 15mr1340432pja.93.1565860808028;
        Thu, 15 Aug 2019 02:20:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565860808; cv=none;
        d=google.com; s=arc-20160816;
        b=tFuTScSNpueaCpTCf7fuZEIAjyuxYtmIp6pBN4Ymy1xQaxMjIxpqfABpLbjrtQcv5v
         xdhAKuXysoxoOOq0xoyb3cgA00YwqKc3ZMOs4IcbKLgir6rdqYox0PVKNi9fl6avjeyn
         OpirTflcEDyRW88Pdn0sHXTQDUj0wspG5zR37kyBFSrf+oxEObP6quChWDCdbBHEYTcP
         GJ94UC7mfuZzzTudCCvWytH+nWtNBp12jaECO4HwpYQj+8oGOAvPHNKA1VBAf860nR5e
         xXwbIqkFXWUdHLDt04v+QGRm+JVkzFHO7FUq0PjJRvkdV67PWxZAoRqVg7KXpFuqNZnq
         ynnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=OZdzQORgCYENhOK4zbJlJ55ju9lY/5SgdEqa7xCHjV0=;
        b=tkta2yqT4M0UIu3WUd4b/2RClTK9/zit1Fm3S8+UHk+kHdOh4VsJioy1Oez2+krp1y
         8336+95jGlaxP8ptDjH1M2P80Z2Pdtz4r58OPNhBH91Epz6QV3h9zTSbSM7H1PxqCZYp
         z5rR9PwvXkZzt9r0u80NJichonIz+Bs/PMkwdB+UqjbV6G5KWv+ksTYik19IUMmHxzlr
         N0eq8c4aX0aJxOFHW9PeAkoxLRzumTt/sHUdp6japqhAhbelFQ/dn06YLnG0HqxlCsvs
         t9joCuubtEkiPLsHOMRWHn/Nr8xPDbjixqliAlMjUVh63L6eiOrLBjp3yQNkUh0zXDlQ
         rEuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r202si194082pfc.0.2019.08.15.02.20.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 02:20:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 02:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; 
   d="scan'208";a="377027245"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
  by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2019 02:20:03 -0700
Subject: Re: [stable:linux-4.14.y 8386/9999]
 drivers/gpu/drm/i915/gvt/opregion.o: warning: objtool:
 intel_vgpu_emulate_opregion_request()+0xbe: can't find jump dest instruction
 at .text+0x6dd
To: Greg KH <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, kbuild@01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>, "# 3.4.x" <stable@vger.kernel.org>,
 kbuild test robot <lkp@intel.com>
References: <201908120108.9KdVOsTD%lkp@intel.com>
 <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
 <20190812175828.GA13040@kroah.com>
 <CAKwvOd=ORE==PVaXdyUc44CsNp7bShapjaQ00Ej-UA7_r4CWSQ@mail.gmail.com>
 <20190812180958.GA14905@kroah.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <7bb8dc1e-54c2-574d-f8b6-02a3b3e288f4@intel.com>
Date: Thu, 15 Aug 2019 17:20:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190812180958.GA14905@kroah.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 8/13/19 2:09 AM, Greg KH wrote:
> On Mon, Aug 12, 2019 at 11:00:38AM -0700, Nick Desaulniers wrote:
>> On Mon, Aug 12, 2019 at 10:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>> On Mon, Aug 12, 2019 at 10:49:47AM -0700, Nick Desaulniers wrote:
>>>> On Sun, Aug 11, 2019 at 10:08 AM kbuild test robot <lkp@intel.com> wrote:
>>>>> CC: kbuild-all@01.org
>>>>> TO: Daniel Borkmann <daniel@iogearbox.net>
>>>>> CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
>>>>> CC: Thomas Gleixner <tglx@linutronix.de>
>>>>>
>>>>> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.14.y
>>>>> head:   3ffe1e79c174b2093f7ee3df589a7705572c9620
>>>>> commit: e28951100515c9fd8f8d4b06ed96576e3527ad82 [8386/9999] x86/retpolines: Disable switch jump tables when retpolines are enabled
>>>>> config: x86_64-rhel-7.6 (attached as .config)
>>>>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>>>>> reproduce:
>>>>>          git checkout e28951100515c9fd8f8d4b06ed96576e3527ad82
>>>>>          # save the attached .config to linux build tree
>>>>>          make ARCH=x86_64
>>>>>
>>>>> If you fix the issue, kindly add following tag
>>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>>
>>>>> All warnings (new ones prefixed by >>):
>>>>>
>>>>>     In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
>>>>>     In file included from drivers/gpu/drm/i915/i915_drv.h:61:
>>>>>     In file included from drivers/gpu/drm/i915/intel_uc.h:31:
>>>>>     In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>>>>>     drivers/gpu/drm/i915/i915_gem_object.h:290:1: warning: attribute declaration must precede definition [-Wignored-attributes]
>>>>>     __deprecated
>>>>>     ^
>>>> Was there another patch that fixes this that should have been
>>>> backported to stable (4.14) along with this?
>>> If this is an issue on the latest 4.14.y tree, please let me know.  Look
>>> at how far back this commit is before getting worried :)
>> patch 8386/9999 ???!!!  Were there exactly 9999 patches backported, or
>> does git stop reporting after 4 digits? "4 digits ought to be enough
>> for anyone!" (except GKH, it would seem ;) ).
> I blame kbuild, every once in a while when it adds something new to its
> system it goes off and does crazy things like this...
>
Hi,

Sorry for causing the misunderstanding, kbuild bot sets bisect range to 
0..9999 in some special cases.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7bb8dc1e-54c2-574d-f8b6-02a3b3e288f4%40intel.com.
