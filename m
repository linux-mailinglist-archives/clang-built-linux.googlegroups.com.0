Return-Path: <clang-built-linux+bncBCLMHO6ARMORBKP6S7ZQKGQEPSRRKNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7105117DAEF
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 09:32:43 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id h125sf125367pfg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 01:32:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583742761; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8Zx17yYVg46vJa0UN/hhL1iEgAGmeVPcV+11xn5R8GzyPmtKwaMHlip6WoVItftbS
         0rSYbFOwicBd0EHYTCsxv9OhD8aopBLsFd2gpX0Gxque1SZ5q8pPIOem4K6MNY2o83K6
         8kakTzgPg6bPbNaGgPmJ1g3M6RP2Gx31QKd1S9WIZPOHNipWrreWlvJpGZ5MXSZ1RbKf
         xXKcxFyzkMtDngOHxnpgMLjS+2+EsJxmR0B/dB75XhgGqBg4nFzp1WkzvCHcdpvFN5xg
         5bsXM/oB07iABkBTw8vRqaryz/QlblOv/VsHquB61dCXlagDvxEH12KQPKmiC6nW0t2t
         re2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:sender:dkim-signature;
        bh=sYiyZSGg3gjUiSHbgcNUJkLTX+DTGWkXlOwfGqakmUA=;
        b=kIrbk18GU0jkHCj5ZsdlYGy5k+hLyLwwrTzws5XMM0YNOUVMGYeAWuFjfjzQsITqkS
         tM2UAGgOApOGvQDk/C0PsH/Ni3h0WaApfJXAxxXG/W3L7DuLzmix2fnANn4FCb/buR6n
         NBmIp/xPo6I+/u6a31TWr04beqlYSKb1AMdzFlrwUQ1MiwsfFBrcNEtW3Yb1Ggy60QeI
         fgJn7/adm8pViZLxvygHtOVKXGVQNbtjj4MlH/Ks8QO6Sw2qfu+HyNzdLEnEKvuTiDqP
         X6F805ugml4qDSaMmJ723yVaapqWMdkQwNEtIowiRGv84qr3n3FqP20j7J/Bf6OqLY7U
         6wIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sYiyZSGg3gjUiSHbgcNUJkLTX+DTGWkXlOwfGqakmUA=;
        b=Tn5/e6Ln6xKRnz24fEO8zX1X3uSESnuwzJog3RD3E10nBSYfDg1iej6yI5mlcO6UXP
         OcW4L9SIdhilcQ1Qer2ygqLbH9SEcT6bI9VScE1+kwBF/Bvl8QPuLSRkzAyhnH76gQUU
         h0zIRNRBNXdCTi9+2JhygJ01nSZQUuh5HvP6Sc7Pl77ZXqrlAJ1HnJA1h6PfuaeriMb4
         BTxLVzJgikrEXxC9vZrvXy09/fT+3JNpXVGX8NiRdfUo5EGT7lKMKNdLgWXhyfUy3puw
         zYP+NqztwsM0NDZRkP+3pgS22awmw+3wTHQ+cNt3vPZ8INUMBVvacQCrrgn9VuqQr3qq
         YhOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sYiyZSGg3gjUiSHbgcNUJkLTX+DTGWkXlOwfGqakmUA=;
        b=t6HPf9oCPGM/gm73uKdtqkR9wJUgG6y1RPl0CIAcvlx2XY+DIvFyB5R967pWeTF1SH
         ssr1F39FhOvKKyiDhtdRkpZ2zOmZPHYdQkCtRfAJGVc+MWZ1/6TGFbyxO8415E+ngfTj
         YbxDvBxNRThpYN77mEt3JCN9UOoA8cQLyDHiB2kXwUQU4cG/O7QHC1FF0dKPHCKlsD9O
         NEXp1G2RMY8vkGbhOsO/ny/ynL98z1nTkCSODu7+cluVThtrCkgSayUVgGq9akukoKVv
         cG8AJGGPSbjiaRqqcahqm4Gs5TIzP6c6ODmTg+WBG3UwTxYyqDGfPLfRE10LsrYNRFaY
         fdhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1M3yXBYkxUtcmxpga9QzzT7zNjswLdht97+08Lx+Mb8Dkns3e0
	7EJvEom6wVMQhFTG/fPMZRo=
X-Google-Smtp-Source: ADFU+vvR+445xEC+tD1FFfrqv3t98IwEsk+YE75hWm0rfvumiFZ9vSFOBx2NXFpRnpFqcnUkXZTnzA==
X-Received: by 2002:a63:e007:: with SMTP id e7mr16008223pgh.262.1583742761549;
        Mon, 09 Mar 2020 01:32:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:898e:: with SMTP id v14ls4470952pjn.3.gmail; Mon, 09
 Mar 2020 01:32:41 -0700 (PDT)
X-Received: by 2002:a17:902:343:: with SMTP id 61mr15158241pld.332.1583742761115;
        Mon, 09 Mar 2020 01:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583742761; cv=none;
        d=google.com; s=arc-20160816;
        b=auPr8EV4o+JQW9em6xlMpMVek3Vzt2Dk2BqM4Z13jL0WL8PeBPxNmis3ODwWZ74yhx
         tiWuQYQtvPAm1Kzyq4vux3GLuVMsPxryuVHjG3YLWgTtgDZb5tbuxuT3BDolo1eWaLWw
         O3L83gknoXODW2y/TN06Fy7vASD/AESW7cJbd/WtKOx2vBi/p9dPXY6EnhzTobXNHrUk
         fi0Qt9m7dgQd2fICPA8/LqKmRmVzR+Qn3CIwdYSddZre/PDYhKU53WY8KGZR7OGX3Xpd
         /3teBlsbPPe64XL7DRNhlM9uINmfejFheRq2YcqkiCdUy3LrPNHHs769+8vNDcCFRZD3
         /ptA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from;
        bh=SkMxHN/PQRMLhNoon797ZEsfBSLU8MWe7Ck+hbpZBLk=;
        b=rXfWPv709HlnMbkpTDhYjXtw2zuwwdE+THyS4fL7XMVd3NLbek6ThhQOk4whlZYyo4
         9z1W1YhpoAq9KO6KnniFN5WZm8Su7J9FbipaqZVKWcwHEHOX5bVbQoUOW/9hnFKI6qlV
         xQjFHsH9rYpI6FI++T0M3rhO3K8FHGBFBSdLyg9AJiZsaQ9QmL0k98NOREs6obboE5nH
         ziFCfMbwoLXnkMscifu9QPPqOXW7FA/SS1NDDEUO2ZWESwCFiucb8kvBG6sTGwGwn4JE
         jMa87bJcKYd4jfqeyKGKUUt10K3GUBfWWqO04OUK8vcrF3W/zhatto1B2CaG1w88ZwWd
         ppHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 59si502463ple.2.2020.03.09.01.32.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 01:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 01:32:25 -0700
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; 
   d="scan'208";a="230852764"
Received: from memara-mobl.ger.corp.intel.com (HELO localhost) ([10.249.39.218])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 01:32:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [jani:device-info-inheritance-v3 3/19] drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element is not a compile-time constant
In-Reply-To: <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <202003060916.RI5pROBS%lkp@intel.com> <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
Date: Mon, 09 Mar 2020 10:32:35 +0200
Message-ID: <87k13ulyho.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
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

On Fri, 06 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> Based on the tree, I think this report was meant to go to Jani (cc'ed)?

It baffles me that the build bot burns resources on building random
branches in my personal repositories.

That said, this builds on GCC 8 just fine. Is clang not able to do this?
Sad trombone. Pretty much blocks what I thought was a nice cleanup from
illegible macros to plain C code.


BR,
Jani.


>
> On Thu, Mar 5, 2020 at 5:31 PM kbuild test robot <lkp@intel.com> wrote:
>>
>> tree:   git://people.freedesktop.org/~jani/drm device-info-inheritance-v=
3
>> head:   6e8df0961b60ee4c69a95e9304bcb14e85ba4803
>> commit: c8b57de4e93bccfcabe9e32bb4fe8219d3633049 [3/19] drm/i915: store =
color info in const structs instead of macros
>> config: x86_64-allyesconfig (attached as .config)
>> compiler: clang version 11.0.0 (git://gitmirror/llvm_project f70e7dc17d7=
8a83265a89158ee549f1147d7d500)
>> reproduce:
>>         # FIXME the reproduce steps for clang is not ready yet
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>> >> drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element is =
not a compile-time constant
>>            I830_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro 'I8=
30_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:217:2: error: initializer element is =
not a compile-time constant
>>            I845_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro 'I8=
45_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:222:2: error: initializer element is =
not a compile-time constant
>>            I830_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:189:11: note: expanded from macro 'I8=
30_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:228:2: error: initializer element is =
not a compile-time constant
>>            I845_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:207:11: note: expanded from macro 'I8=
45_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:247:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:258:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:271:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:282:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:296:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:303:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:310:2: error: initializer element is =
not a compile-time constant
>>            GEN3_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:242:11: note: expanded from macro 'GE=
N3_FEATURES'
>>            .color =3D i9xx_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:333:2: error: initializer element is =
not a compile-time constant
>>            GEN4_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GE=
N4_FEATURES'
>>            .color =3D i965_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:341:2: error: initializer element is =
not a compile-time constant
>>            GEN4_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GE=
N4_FEATURES'
>>            .color =3D i965_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:352:2: error: initializer element is =
not a compile-time constant
>>            GEN4_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GE=
N4_FEATURES'
>>            .color =3D i965_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:359:2: error: initializer element is =
not a compile-time constant
>>            GEN4_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:328:11: note: expanded from macro 'GE=
N4_FEATURES'
>>            .color =3D i965_colors, \
>>                     ^~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:384:2: error: initializer element is =
not a compile-time constant
>>            GEN5_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro 'GE=
N5_FEATURES'
>>            .color =3D ilk_colors, \
>>                     ^~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:389:2: error: initializer element is =
not a compile-time constant
>>            GEN5_FEATURES,
>>            ^~~~~~~~~~~~~
>>    drivers/gpu/drm/i915/i915_pci.c:379:11: note: expanded from macro 'GE=
N5_FEATURES'
>>            .color =3D ilk_colors, \
>>
>> vim +212 drivers/gpu/drm/i915/i915_pci.c
>>
>> da1184cd41d4c6b Matthew Auld          2019-10-18  172
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  173  #define=
 I830_FEATURES \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  174   GEN(2)=
, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  175   .is_mo=
bile =3D 1, \
>> 8d8b00318593e28 Jani Nikula           2019-09-11  176   .pipe_mask =3D B=
IT(PIPE_A) | BIT(PIPE_B), \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  177   .displ=
ay.has_overlay =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  178   .displ=
ay.cursor_needs_physical =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  179   .displ=
ay.overlay_needs_physical =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  180   .displ=
ay.has_gmch =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  181   .gpu_r=
eset_clobbers_display =3D true, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  182   .hws_n=
eeds_physical =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  183   .unfen=
ced_needs_alignment =3D 1, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  184   .engin=
e_mask =3D BIT(RCS0), \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  185   .has_s=
noop =3D true, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  186   .has_c=
oherent_ggtt =3D false, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  187   I9XX_P=
IPE_OFFSETS, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  188   I9XX_C=
URSOR_OFFSETS, \
>> c8b57de4e93bccf Jani Nikula           2020-03-05  189   .color =3D i9xx_=
colors, \
>> 2411ccdddd53007 Jani Nikula           2020-03-05  190   .page_sizes =3D =
GEN_DEFAULT_PAGE_SIZES, \
>> 980a85a19e6db48 Jani Nikula           2020-03-05  191   .memory_regions =
=3D GEN_DEFAULT_REGIONS
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  192
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  193  #define=
 I845_FEATURES \
>> bc76298e68e791f Chris Wilson          2018-02-15  194   GEN(2), \
>> 8d8b00318593e28 Jani Nikula           2019-09-11  195   .pipe_mask =3D B=
IT(PIPE_A), \
>> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  196   .display.ha=
s_overlay =3D 1, \
>> d53db442db36fdb Jos=C3=A9 Roberto de Souza 2018-11-30  197   .display.ov=
erlay_needs_physical =3D 1, \
>> b2ae318acdcaf1c Rodrigo Vivi          2019-02-04  198   .display.has_gmc=
h =3D 1, \
>> 55277e1f3107c0b Chris Wilson          2019-01-03  199   .gpu_reset_clobb=
ers_display =3D true, \
>> 3177659a41cc436 Carlos Santa          2016-08-17  200   .hws_needs_physi=
cal =3D 1, \
>> f4ce766f28cd0ef Chris Wilson          2017-03-25  201   .unfenced_needs_=
alignment =3D 1, \
>> 8a68d464366efb5 Chris Wilson          2019-03-05  202   .engine_mask =3D=
 BIT(RCS0), \
>> 5d95c24867aea8a Chris Wilson          2017-09-06  203   .has_snoop =3D t=
rue, \
>> 900ccf30f9e112b Chris Wilson          2018-07-20  204   .has_coherent_gg=
tt =3D false, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  205   I845_P=
IPE_OFFSETS, \
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05  206   I845_C=
URSOR_OFFSETS, \
>> c8b57de4e93bccf Jani Nikula           2020-03-05  207   .color =3D i9xx_=
colors, \
>> 2411ccdddd53007 Jani Nikula           2020-03-05  208   .page_sizes =3D =
GEN_DEFAULT_PAGE_SIZES, \
>> 980a85a19e6db48 Jani Nikula           2020-03-05  209   .memory_regions =
=3D GEN_DEFAULT_REGIONS
>> 0eec8dc7f628a8d Carlos Santa          2016-08-17  210
>> 31409fff1a392fa Lucas De Marchi       2019-12-24  211  static const stru=
ct intel_device_info i830_info =3D {
>> 37fbbd49054b624 Ville Syrj=C3=A4l=C3=A4         2019-03-05 @212   I830_F=
EATURES,
>> c5cb21c17a169ee Chris Wilson          2018-02-15  213   PLATFORM(INTEL_I=
830),
>> 42f5551d276921d Chris Wilson          2016-06-24  214  };
>> 42f5551d276921d Chris Wilson          2016-06-24  215
>>
>> :::::: The code at line 212 was first introduced by commit
>> :::::: 37fbbd49054b624400a65cf1a39f152a7f3f4749 drm/i915: Populate pipe_=
offsets[] & co. accurately
>>
>> :::::: TO: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> :::::: CC: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/202003060916.RI5pROBS%25lkp%40intel.com.

--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87k13ulyho.fsf%40intel.com.
