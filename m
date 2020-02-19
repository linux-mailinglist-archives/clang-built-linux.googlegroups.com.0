Return-Path: <clang-built-linux+bncBDYNJBOFRECBBY7AWXZAKGQEIVCWCRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 616D5164BE5
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 18:29:08 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id z3sf269987lfq.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 09:29:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582133348; cv=pass;
        d=google.com; s=arc-20160816;
        b=iklkUgXFoE2bmoWFtVTP90AG2RJEBCMNfowPujLaphlRqmFMmy12o0cXqZBs7C/VK8
         1uHdOi36Rhahwx+BdCnoFMZDPk0SNB65Syl1PNIyfCvWCfFF/NUMnTAq+hXMV1Ukr7AN
         n+fSrNE7JF7fbQnlLUnSuN+bnNY3xMnmHveClgYk1+4C4JShJQAmYIsr2n9W9b8BVdQc
         m+Cc05jGyl4haKOE8GEtc7zcBQrLFuuTq+FMmynGDiWF+RzkcSlUwvYIUatCRloH0iZ2
         TKVOJ3bmcS3T0C4f6k6wb5Udky53Yg0fVDbf5BjaYjp02Abp4Gd5JHxZ3OtiT50YbU2P
         ZBew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KCTPaAYsbjiVOde2B5kHUn/mwRAopCfGin9Jubjxm4E=;
        b=atBmuEA+4WjkuCDr2xyQlUo5j3o5uYv97FzevqY0X86s2gvKg4C1qbZooWGB4lFXCe
         Ke5tCv+RMa9QmEzi26JS5Mf6FH09jtFrouN6J+opNBM6DModSKWpC7rjIXgHImU3uypB
         0H6K5WpNk9gQ86EFEwKKIdFd/rVCtb8SIj63Vm1x3h3PiKrMj5gkXU2SWj3+QoUIltpM
         sFJsN51K2Y0nZTbMYpTgf4mc5N4JtMqCnMlN6DKi3E6KtlCVCJJWzebV099RIk00iusd
         tcbGfZGP82Q0fpC7DxKVgSC6rWeDTWTWAehrbnejJwZZzdnW40m/3Qa3VCQorK/WtIhM
         ybIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="cm/+tOig";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCTPaAYsbjiVOde2B5kHUn/mwRAopCfGin9Jubjxm4E=;
        b=rLhuSobnuQwga0zHEo0G6rdHw2Zh6nPH24O2yAy18U8oqGF1MepqwYPt+4sDtZngUc
         +0oPhYQIW8vNMKCuJV0ki+wKGxk5F1KcFAv8fhePuD1O4t2OZTJMDYWThkht0X7bzGkb
         0tpiU2WpYUm0MzVkL9qY9Sn8AWIoyPaEhGp3Hz3/0qyPwGfST+rqwhtgqTgIM/KqPXJI
         5FlWfIH694rkCcZW2qTLYkj/NpAUyVQTktbhVVtOXriHRer11okBIgbKoskPNOROOnRN
         pcrvwJmBjy7/QwV287DcWoJyv47nC+ZB5QICGvruvv6tDKMbRZeO4ys0mRNYiLaRupr7
         FEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KCTPaAYsbjiVOde2B5kHUn/mwRAopCfGin9Jubjxm4E=;
        b=IlxUbqrCPFNSZZLNlFnrrG4XKxzpS+bVRIhCKhqRXELx8Zx6vzG0yv93J2Y0rAA2Ga
         NzvSgC0/P1D2mxVA1wpvNFQEuGCqEs0OOmNUnk2B8TXpJfleifbffqCEZjKPB0eoXa4D
         9SD6kwh5pBpxXtT0el4BmCPfEC7OJzzPvGU/gShfnMLBjLwEBDCxPyQh6dZbQs5bJ0dz
         17TQ5EHs1dQw4zFjgmS5TJ30NTf//7+ZWScriztLY8SEoKlMY+4QuyCG3/3vY/ehr2PU
         VP/A4gLSkMQKoyAZD47aJO/BtvMXTTkjQustLL1tAmt55gSVmaNbWTUS10fV52sj//fG
         ZgKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVC15hUdRotJSFpNcpCQfD6VaHTi6mkUv/hrdlCMkSJ0MR8B78n
	gHmaWrDpkDnIHbbOpei3y2s=
X-Google-Smtp-Source: APXvYqzC9bY1M4ny3haspfS1dfS+yShq/+RTUmzEjx4dE3wBye7Xoc0khAFwyfzDhhMS/TI1vMk8Tg==
X-Received: by 2002:a19:4013:: with SMTP id n19mr2614257lfa.2.1582133347756;
        Wed, 19 Feb 2020 09:29:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b2:: with SMTP id v18ls2497985lfp.8.gmail; Wed, 19
 Feb 2020 09:29:07 -0800 (PST)
X-Received: by 2002:a19:f703:: with SMTP id z3mr13797791lfe.16.1582133347008;
        Wed, 19 Feb 2020 09:29:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582133347; cv=none;
        d=google.com; s=arc-20160816;
        b=sImNaANDMEnIUDlCB+77zUgQO0qElgSwJAH4IvFz4weLrDUeAST8YSrrZNlfdPhr9c
         Lfd19lT2AQH9Sx4lKsIrSj2oHN6rVNMNIgYDxZ4qyAcSmK2reu6M+nss6dfItwTGi0mJ
         78kr8lnv36my7b5KSd6H+RtuddyQZcmzwjsvas8HSE7UB43smWtC8Je0oWTsreoh2k+0
         6c6ItTlZpndacdcE/FFsHt9cEakPggl0Xj2pkInAOUh0yel3SfZflLJXUZpomasrmVZ9
         3Ce7fKLOnlv9mqtSoE2Sta0Kp28glNLdpCNmz0iQKY/t7+i85xbeKU20sufTbEeeuCTV
         YHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4aikfYONafK35rUS92e0XEZSVzLNR1PCIkDk6ZHAl64=;
        b=LRizGTPE1ZEHdrSR1Pj3D/K8OXMGx30I4zxpVrmYkAsb8EULt+Jy3+5BmBG6VWg9DP
         czRjB3ACw24WzNiATqg28us+0gCCovg291qAcUJ6fHxvcN6WfTWfvdu5yA4zbR+i1TDb
         UNLPM2if31TnAk7z7pJ3ndMy4Yyujd99iE5v2qxj4cb9wt4zvIHrmwXGw80zSx42QJwx
         Vc6mbl7F1UkfNZteoXc5CLBYgzsGtWHKvK6X81KHETvFVxxJ8RxU8Lue0zQCvPwfoRbr
         C4OXOgblaKYnG0hmrHJ3HCnQkpBGPk7fKeHrlwtkHBGZYLQyg1T5Gg1n0Q5bjHoK2Qyt
         D0xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="cm/+tOig";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x5si18255ljh.5.2020.02.19.09.29.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:29:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id n3so1562037wmk.4
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 09:29:06 -0800 (PST)
X-Received: by 2002:a1c:b603:: with SMTP id g3mr11809129wmf.133.1582133346089;
 Wed, 19 Feb 2020 09:29:06 -0800 (PST)
MIME-Version: 1.0
References: <202002192359.hmBjUEFe%lkp@intel.com> <CAKwvOdkev-XZv=TQ_RjL2_5xwnMO6fFgjgaTyofb=vN6PUb--Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkev-XZv=TQ_RjL2_5xwnMO6fFgjgaTyofb=vN6PUb--Q@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 19 Feb 2020 18:28:55 +0100
Message-ID: <CAKv+Gu_61HFbJdhAUp70yYSXcDOZP4gZSPx3=EiL-fXLMJrZgg@mail.gmail.com>
Subject: Re: [efi:next 41/64] drivers/firmware/efi/libstub/arm-stub.c:271:6:
 warning: variable 'initrd_addr' is used uninitialized whenever 'if' condition
 is false
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="cm/+tOig";       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 19 Feb 2020 at 18:27, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> + Ard, looks legit, can you please take a look?
>

Indeed. Thanks for the report.


> On Wed, Feb 19, 2020 at 7:56 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > CC: linux-efi@vger.kernel.org
> > TO: Ard Biesheuvel <ardb@kernel.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> > head:   99cf8bd2dfc23547cf823e19dfbe229ed26d6f9f
> > commit: c11b5bb03ac3a11291c9c0efed16902a0618466d [41/64] efi/libstub: Take noinitrd cmdline argument into account for devpath initrd
> > config: arm64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout c11b5bb03ac3a11291c9c0efed16902a0618466d
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/firmware/efi/libstub/arm-stub.c:271:6: warning: variable 'initrd_addr' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            if (!noinitrd()) {
> >                ^~~~~~~~~~~
> >    drivers/firmware/efi/libstub/arm-stub.c:325:7: note: uninitialized use occurs here
> >                                                    initrd_addr, initrd_size,
> >                                                    ^~~~~~~~~~~
> >    drivers/firmware/efi/libstub/arm-stub.c:271:2: note: remove the 'if' if its condition is always true
> >            if (!noinitrd()) {
> >            ^~~~~~~~~~~~~~~~~
> >    drivers/firmware/efi/libstub/arm-stub.c:156:27: note: initialize the variable 'initrd_addr' to silence this warning
> >            unsigned long initrd_addr;
> >                                     ^
> >                                      = 0
> >    1 warning generated.
> >
> > vim +271 drivers/firmware/efi/libstub/arm-stub.c
> >
> >    124
> >    125  /*
> >    126   * This function handles the architcture specific differences between arm and
> >    127   * arm64 regarding where the kernel image must be loaded and any memory that
> >    128   * must be reserved. On failure it is required to free all
> >    129   * all allocations it has made.
> >    130   */
> >    131  efi_status_t handle_kernel_image(unsigned long *image_addr,
> >    132                                   unsigned long *image_size,
> >    133                                   unsigned long *reserve_addr,
> >    134                                   unsigned long *reserve_size,
> >    135                                   unsigned long dram_base,
> >    136                                   efi_loaded_image_t *image);
> >    137
> >    138  asmlinkage void __noreturn efi_enter_kernel(unsigned long entrypoint,
> >    139                                              unsigned long fdt_addr,
> >    140                                              unsigned long fdt_size);
> >    141
> >    142  /*
> >    143   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
> >    144   * that is described in the PE/COFF header.  Most of the code is the same
> >    145   * for both archictectures, with the arch-specific code provided in the
> >    146   * handle_kernel_image() function.
> >    147   */
> >    148  efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
> >    149  {
> >    150          efi_loaded_image_t *image;
> >    151          efi_status_t status;
> >    152          unsigned long image_addr;
> >    153          unsigned long image_size = 0;
> >    154          unsigned long dram_base;
> >    155          /* addr/point and size pairs for memory management*/
> >    156          unsigned long initrd_addr;
> >    157          unsigned long initrd_size = 0;
> >    158          unsigned long fdt_addr = 0;  /* Original DTB */
> >    159          unsigned long fdt_size = 0;
> >    160          char *cmdline_ptr = NULL;
> >    161          int cmdline_size = 0;
> >    162          efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
> >    163          unsigned long reserve_addr = 0;
> >    164          unsigned long reserve_size = 0;
> >    165          enum efi_secureboot_mode secure_boot;
> >    166          struct screen_info *si;
> >    167          efi_properties_table_t *prop_tbl;
> >    168          unsigned long max_addr;
> >    169
> >    170          sys_table = sys_table_arg;
> >    171
> >    172          /* Check if we were booted by the EFI firmware */
> >    173          if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
> >    174                  status = EFI_INVALID_PARAMETER;
> >    175                  goto fail;
> >    176          }
> >    177
> >    178          status = check_platform_features();
> >    179          if (status != EFI_SUCCESS)
> >    180                  goto fail;
> >    181
> >    182          /*
> >    183           * Get a handle to the loaded image protocol.  This is used to get
> >    184           * information about the running image, such as size and the command
> >    185           * line.
> >    186           */
> >    187          status = sys_table->boottime->handle_protocol(handle,
> >    188                                          &loaded_image_proto, (void *)&image);
> >    189          if (status != EFI_SUCCESS) {
> >    190                  pr_efi_err("Failed to get loaded image protocol\n");
> >    191                  goto fail;
> >    192          }
> >    193
> >    194          dram_base = get_dram_base();
> >    195          if (dram_base == EFI_ERROR) {
> >    196                  pr_efi_err("Failed to find DRAM base\n");
> >    197                  status = EFI_LOAD_ERROR;
> >    198                  goto fail;
> >    199          }
> >    200
> >    201          /*
> >    202           * Get the command line from EFI, using the LOADED_IMAGE
> >    203           * protocol. We are going to copy the command line into the
> >    204           * device tree, so this can be allocated anywhere.
> >    205           */
> >    206          cmdline_ptr = efi_convert_cmdline(image, &cmdline_size, ULONG_MAX);
> >    207          if (!cmdline_ptr) {
> >    208                  pr_efi_err("getting command line via LOADED_IMAGE_PROTOCOL\n");
> >    209                  status = EFI_OUT_OF_RESOURCES;
> >    210                  goto fail;
> >    211          }
> >    212
> >    213          if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
> >    214              IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
> >    215              cmdline_size == 0)
> >    216                  efi_parse_options(CONFIG_CMDLINE);
> >    217
> >    218          if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
> >    219                  efi_parse_options(cmdline_ptr);
> >    220
> >    221          pr_efi("Booting Linux Kernel...\n");
> >    222
> >    223          si = setup_graphics();
> >    224
> >    225          status = handle_kernel_image(&image_addr, &image_size,
> >    226                                       &reserve_addr,
> >    227                                       &reserve_size,
> >    228                                       dram_base, image);
> >    229          if (status != EFI_SUCCESS) {
> >    230                  pr_efi_err("Failed to relocate kernel\n");
> >    231                  goto fail_free_cmdline;
> >    232          }
> >    233
> >    234          efi_retrieve_tpm2_eventlog();
> >    235
> >    236          /* Ask the firmware to clear memory on unclean shutdown */
> >    237          efi_enable_reset_attack_mitigation();
> >    238
> >    239          secure_boot = efi_get_secureboot();
> >    240
> >    241          /*
> >    242           * Unauthenticated device tree data is a security hazard, so ignore
> >    243           * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
> >    244           * boot is enabled if we can't determine its state.
> >    245           */
> >    246          if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
> >    247               secure_boot != efi_secureboot_mode_disabled) {
> >    248                  if (strstr(cmdline_ptr, "dtb="))
> >    249                          pr_efi("Ignoring DTB from command line.\n");
> >    250          } else {
> >    251                  status = efi_load_dtb(image, &fdt_addr, &fdt_size);
> >    252
> >    253                  if (status != EFI_SUCCESS) {
> >    254                          pr_efi_err("Failed to load device tree!\n");
> >    255                          goto fail_free_image;
> >    256                  }
> >    257          }
> >    258
> >    259          if (fdt_addr) {
> >    260                  pr_efi("Using DTB from command line\n");
> >    261          } else {
> >    262                  /* Look for a device tree configuration table entry. */
> >    263                  fdt_addr = (uintptr_t)get_fdt(&fdt_size);
> >    264                  if (fdt_addr)
> >    265                          pr_efi("Using DTB from configuration table\n");
> >    266          }
> >    267
> >    268          if (!fdt_addr)
> >    269                  pr_efi("Generating empty DTB\n");
> >    270
> >  > 271          if (!noinitrd()) {
> >    272                  max_addr = efi_get_max_initrd_addr(dram_base, image_addr);
> >    273                  status = efi_load_initrd_dev_path(&initrd_addr, &initrd_size,
> >    274                                                    max_addr);
> >    275                  if (status == EFI_SUCCESS) {
> >    276                          pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> >    277                  } else if (status == EFI_NOT_FOUND) {
> >    278                          status = efi_load_initrd(image, &initrd_addr, &initrd_size,
> >    279                                                   ULONG_MAX, max_addr);
> >    280                          if (status == EFI_SUCCESS)
> >    281                                  pr_efi("Loaded initrd from command line option\n");
> >    282                  }
> >    283                  if (status != EFI_SUCCESS)
> >    284                          pr_efi_err("Failed to load initrd!\n");
> >    285          }
> >    286
> >    287          efi_random_get_seed();
> >    288
> >    289          /*
> >    290           * If the NX PE data feature is enabled in the properties table, we
> >    291           * should take care not to create a virtual mapping that changes the
> >    292           * relative placement of runtime services code and data regions, as
> >    293           * they may belong to the same PE/COFF executable image in memory.
> >    294           * The easiest way to achieve that is to simply use a 1:1 mapping.
> >    295           */
> >    296          prop_tbl = get_efi_config_table(EFI_PROPERTIES_TABLE_GUID);
> >    297          flat_va_mapping = prop_tbl &&
> >    298                            (prop_tbl->memory_protection_attribute &
> >    299                             EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
> >    300
> >    301          /* hibernation expects the runtime regions to stay in the same place */
> >    302          if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && !flat_va_mapping) {
> >    303                  /*
> >    304                   * Randomize the base of the UEFI runtime services region.
> >    305                   * Preserve the 2 MB alignment of the region by taking a
> >    306                   * shift of 21 bit positions into account when scaling
> >    307                   * the headroom value using a 32-bit random value.
> >    308                   */
> >    309                  static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
> >    310                                              EFI_RT_VIRTUAL_BASE -
> >    311                                              EFI_RT_VIRTUAL_SIZE;
> >    312                  u32 rnd;
> >    313
> >    314                  status = efi_get_random_bytes(sizeof(rnd), (u8 *)&rnd);
> >    315                  if (status == EFI_SUCCESS) {
> >    316                          virtmap_base = EFI_RT_VIRTUAL_BASE +
> >    317                                         (((headroom >> 21) * rnd) >> (32 - 21));
> >    318                  }
> >    319          }
> >    320
> >    321          install_memreserve_table();
> >    322
> >    323          status = allocate_new_fdt_and_exit_boot(handle, &fdt_addr,
> >    324                                                  efi_get_max_fdt_addr(dram_base),
> >    325                                                  initrd_addr, initrd_size,
> >    326                                                  cmdline_ptr, fdt_addr, fdt_size);
> >    327          if (status != EFI_SUCCESS)
> >    328                  goto fail_free_initrd;
> >    329
> >    330          efi_enter_kernel(image_addr, fdt_addr, fdt_totalsize((void *)fdt_addr));
> >    331          /* not reached */
> >    332
> >    333  fail_free_initrd:
> >    334          pr_efi_err("Failed to update FDT and exit boot services\n");
> >    335
> >    336          efi_free(initrd_size, initrd_addr);
> >    337          efi_free(fdt_size, fdt_addr);
> >    338
> >    339  fail_free_image:
> >    340          efi_free(image_size, image_addr);
> >    341          efi_free(reserve_size, reserve_addr);
> >    342  fail_free_cmdline:
> >    343          free_screen_info(si);
> >    344          efi_free(cmdline_size, (unsigned long)cmdline_ptr);
> >    345  fail:
> >    346          return status;
> >    347  }
> >    348
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu_61HFbJdhAUp70yYSXcDOZP4gZSPx3%3DEiL-fXLMJrZgg%40mail.gmail.com.
