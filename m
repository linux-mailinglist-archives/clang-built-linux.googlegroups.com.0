Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZO7WXZAKGQELW4KXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F398164BE0
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 18:27:02 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id k27sf621912qtu.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 09:27:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582133221; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sf8+b6T96TaYqqZegMHJf0TSPRHucreacmRbM+6tuPLStuP5K+pQLEguj9oFE7oxWJ
         knDUjvDld9eEG5QUY6Qo7uud8foCW/aun/rvZspZOzVT0sWa4MCKDdss9nNR5W6edT3N
         QFhPHoqb1oKjhFVJWdmJ2SVb9B2WhbOm3CxuEk8gJnEojYDYZDz4Q9R53nv80kTGGpty
         AccYKJDEVPToQ1i7sbGnSSQJxOrOzE18gYD+D/6cswzFudXzN1AxNSsUEiFH8H+MCe5H
         HpPu9GS/J4dyV/IZ0Oxg4A3Kou4SjlbiLeaTwxRzHd0/TKkEjfJDy9zwjhc3kM9lCTtv
         XJ+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LGQ3okB0DkQYpfPDF7xpiDeDHfGbZl9fIrMQoROpoq4=;
        b=fdYgFxPzSHMSJIfk5a3QyKwc5u0zRBf85LA2J2GyMk4l5m3e4ZVgWxpWAx1LlQpcXO
         af9OkZ3owKp/yG3kLuH+B9pYbKqFPgYXRBjKHscBw/KIs6t1hAQpwmuhh8JS7qXpTUrw
         lOOphrP6hqL5ld49VG3b+Csq1vRGI/2jmZ3HKA2nDSNmq8dUGgtynBKg9Dz0LKHJ8HjJ
         N7xSGGJKwqzGfYWrbORdZE2XOuIbgwri7x4OfqNzdMOsgXmQS/gJLr0MY/2c+NGEfZ+Z
         5H6ZqM20Az5Kp72ZoK+YyBFjXf9OoKjTgWr+NAdTLecfc07PSmeQLKypkM0j05bOBbxx
         GBPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYSZS7UJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGQ3okB0DkQYpfPDF7xpiDeDHfGbZl9fIrMQoROpoq4=;
        b=qSipNESiWB/xlmOZYJYAhWhIoKVE/zxi1o/0OT5UiEY0NXENjzTHbIMX0E3tESYfBX
         Mx4a0GbKnWMulIkD3w88UdlgkrBZbLLt5+Oo88SLIWyXZT45ND9hovTMLpb6mls76c5u
         DDM5u49IJdQmWtGZ5tmVAd6JQQWqN1+/ZsXAlJUy49PHPD0KlLgEGjRDSbmYkE0l7lHo
         6/7bVPhSzbOtjXZn0/UY3pqYWXzHJSNoNJJsCet+bcpsYa1rKGm0LFC2nx9dXKN3WbxR
         P/Qf+ZOd6CZX8G4HF7t5uYiIDNP3gD55m8idjMujm1zEk2esj0mC7QQA4K8blrxqTObs
         CdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGQ3okB0DkQYpfPDF7xpiDeDHfGbZl9fIrMQoROpoq4=;
        b=sPCEPCnpcKuQqqWcvZFGv5fc2a5vYUh0hDKjUostJuzXTllFb7Tin0MGOsC/pIwLsW
         1N44N13ArvJ7wzuPOGy8nXuQaIkNZtBzjdwjMxdMcdpgtabTOlpLsPOdTq4+GdAvE7VX
         Y0/1s3Z1SQrBqm4AuNZQb5R/Uc83y/zBzTscVaFkEcqMZM+LC63Oy2eXC0QW03bn5lO9
         t3L+hHrVL/PM2KG1d4/TMdppkIQPoNGxxY2kURpp5fSTN+ncvV7gUMrSQFP7KNiE7L0a
         2Twn8v6TxpNMMJyNmdwUgVO4+hT5BXbXjVrCGQzSiMD35DGAUnIvVSNatomVmJJzazaY
         35ng==
X-Gm-Message-State: APjAAAXYiaJgL+F3X/Q8x6PYObl9Yt0q4VficIhBOMgkSgOz6/EZHf8q
	4MllHUeI5vMCo1Tty5i31bI=
X-Google-Smtp-Source: APXvYqzEOFFp3RCiR7FkRPhEHZc538wLIdYqsaEofJ/jJty4N+3FVXn//L5K1CgwRLH6B8P19VLQfA==
X-Received: by 2002:ac8:4050:: with SMTP id j16mr22515277qtl.171.1582133221528;
        Wed, 19 Feb 2020 09:27:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls92094qkb.8.gmail; Wed, 19 Feb
 2020 09:27:01 -0800 (PST)
X-Received: by 2002:a05:620a:914:: with SMTP id v20mr25043824qkv.434.1582133221126;
        Wed, 19 Feb 2020 09:27:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582133221; cv=none;
        d=google.com; s=arc-20160816;
        b=RKiBjV+GOcDPyJkkFYdj2ypcE4PEqyDdI7faMOmhV4jKmMPfYEpIEhFQd/35X1vKST
         z2Dr63NdiwpA30ToWdZnNjTwspA8Um63ZX4sSixihidUxhtszHT8vdWvBgOBEUIorRsl
         qgisWmEsHXKCDdfORhLHBYrAPgu0uwYxdNe5wMy+O6AVptmUQYwg5kPsDzmrH2YRTYsR
         oQeCpWZj2qogozVcg1R9Bff+zENBejHP928FZ7jkpND5KlxEbuy4ZPdfb0hGJBZ5DS5U
         HRaLJq3tVDPAbhIwpcAy87AnT1jL39P7RFtPDEufDAAePywBTUg/NExWPWLqX+PJHfxM
         tk6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OrVt8njfj377mV7HBf1RVWiuMb9wm0N8oKg9982Rc6g=;
        b=D8QRzO0hFmyG/q4RptEGjrXw6PIg/+Wz9fGyNOdyHlebtC1EMuaO0Lg/Eogm0af3Mn
         j4opr1NE1CL4vVrKfcKYKet/WEsFsErsPxQRQE8LhL6w+sNQjzDPhPoe3bfY/X8f4KXX
         P6+a2cvWeUudq73julpvsa/EqgRGEstgkYDVpDjtruzwki054RfgSfkwwTGZAqBmJKOM
         WUGycomfuvdF3FE3RW45Yu1GAxF9jzijPqJ8RbkkqaBMD/BZsYJg7Yb0eyp+wlH1aBRh
         KuaiEqXP301VFBSUfSmFDP57xBoEAbdICrJTV/C8GVP2ahx7++HyRs2DEmou/8Honr+t
         pwPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYSZS7UJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id p23si54160qkm.7.2020.02.19.09.27.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:27:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y1so335848plp.7
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 09:27:01 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr25593635pll.119.1582133219885;
 Wed, 19 Feb 2020 09:26:59 -0800 (PST)
MIME-Version: 1.0
References: <202002192359.hmBjUEFe%lkp@intel.com>
In-Reply-To: <202002192359.hmBjUEFe%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 09:26:48 -0800
Message-ID: <CAKwvOdkev-XZv=TQ_RjL2_5xwnMO6fFgjgaTyofb=vN6PUb--Q@mail.gmail.com>
Subject: Re: [efi:next 41/64] drivers/firmware/efi/libstub/arm-stub.c:271:6:
 warning: variable 'initrd_addr' is used uninitialized whenever 'if' condition
 is false
To: kbuild test robot <lkp@intel.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qYSZS7UJ;       spf=pass
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

+ Ard, looks legit, can you please take a look?

On Wed, Feb 19, 2020 at 7:56 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> CC: linux-efi@vger.kernel.org
> TO: Ard Biesheuvel <ardb@kernel.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> head:   99cf8bd2dfc23547cf823e19dfbe229ed26d6f9f
> commit: c11b5bb03ac3a11291c9c0efed16902a0618466d [41/64] efi/libstub: Take noinitrd cmdline argument into account for devpath initrd
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout c11b5bb03ac3a11291c9c0efed16902a0618466d
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/firmware/efi/libstub/arm-stub.c:271:6: warning: variable 'initrd_addr' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (!noinitrd()) {
>                ^~~~~~~~~~~
>    drivers/firmware/efi/libstub/arm-stub.c:325:7: note: uninitialized use occurs here
>                                                    initrd_addr, initrd_size,
>                                                    ^~~~~~~~~~~
>    drivers/firmware/efi/libstub/arm-stub.c:271:2: note: remove the 'if' if its condition is always true
>            if (!noinitrd()) {
>            ^~~~~~~~~~~~~~~~~
>    drivers/firmware/efi/libstub/arm-stub.c:156:27: note: initialize the variable 'initrd_addr' to silence this warning
>            unsigned long initrd_addr;
>                                     ^
>                                      = 0
>    1 warning generated.
>
> vim +271 drivers/firmware/efi/libstub/arm-stub.c
>
>    124
>    125  /*
>    126   * This function handles the architcture specific differences between arm and
>    127   * arm64 regarding where the kernel image must be loaded and any memory that
>    128   * must be reserved. On failure it is required to free all
>    129   * all allocations it has made.
>    130   */
>    131  efi_status_t handle_kernel_image(unsigned long *image_addr,
>    132                                   unsigned long *image_size,
>    133                                   unsigned long *reserve_addr,
>    134                                   unsigned long *reserve_size,
>    135                                   unsigned long dram_base,
>    136                                   efi_loaded_image_t *image);
>    137
>    138  asmlinkage void __noreturn efi_enter_kernel(unsigned long entrypoint,
>    139                                              unsigned long fdt_addr,
>    140                                              unsigned long fdt_size);
>    141
>    142  /*
>    143   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
>    144   * that is described in the PE/COFF header.  Most of the code is the same
>    145   * for both archictectures, with the arch-specific code provided in the
>    146   * handle_kernel_image() function.
>    147   */
>    148  efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
>    149  {
>    150          efi_loaded_image_t *image;
>    151          efi_status_t status;
>    152          unsigned long image_addr;
>    153          unsigned long image_size = 0;
>    154          unsigned long dram_base;
>    155          /* addr/point and size pairs for memory management*/
>    156          unsigned long initrd_addr;
>    157          unsigned long initrd_size = 0;
>    158          unsigned long fdt_addr = 0;  /* Original DTB */
>    159          unsigned long fdt_size = 0;
>    160          char *cmdline_ptr = NULL;
>    161          int cmdline_size = 0;
>    162          efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
>    163          unsigned long reserve_addr = 0;
>    164          unsigned long reserve_size = 0;
>    165          enum efi_secureboot_mode secure_boot;
>    166          struct screen_info *si;
>    167          efi_properties_table_t *prop_tbl;
>    168          unsigned long max_addr;
>    169
>    170          sys_table = sys_table_arg;
>    171
>    172          /* Check if we were booted by the EFI firmware */
>    173          if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
>    174                  status = EFI_INVALID_PARAMETER;
>    175                  goto fail;
>    176          }
>    177
>    178          status = check_platform_features();
>    179          if (status != EFI_SUCCESS)
>    180                  goto fail;
>    181
>    182          /*
>    183           * Get a handle to the loaded image protocol.  This is used to get
>    184           * information about the running image, such as size and the command
>    185           * line.
>    186           */
>    187          status = sys_table->boottime->handle_protocol(handle,
>    188                                          &loaded_image_proto, (void *)&image);
>    189          if (status != EFI_SUCCESS) {
>    190                  pr_efi_err("Failed to get loaded image protocol\n");
>    191                  goto fail;
>    192          }
>    193
>    194          dram_base = get_dram_base();
>    195          if (dram_base == EFI_ERROR) {
>    196                  pr_efi_err("Failed to find DRAM base\n");
>    197                  status = EFI_LOAD_ERROR;
>    198                  goto fail;
>    199          }
>    200
>    201          /*
>    202           * Get the command line from EFI, using the LOADED_IMAGE
>    203           * protocol. We are going to copy the command line into the
>    204           * device tree, so this can be allocated anywhere.
>    205           */
>    206          cmdline_ptr = efi_convert_cmdline(image, &cmdline_size, ULONG_MAX);
>    207          if (!cmdline_ptr) {
>    208                  pr_efi_err("getting command line via LOADED_IMAGE_PROTOCOL\n");
>    209                  status = EFI_OUT_OF_RESOURCES;
>    210                  goto fail;
>    211          }
>    212
>    213          if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
>    214              IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
>    215              cmdline_size == 0)
>    216                  efi_parse_options(CONFIG_CMDLINE);
>    217
>    218          if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
>    219                  efi_parse_options(cmdline_ptr);
>    220
>    221          pr_efi("Booting Linux Kernel...\n");
>    222
>    223          si = setup_graphics();
>    224
>    225          status = handle_kernel_image(&image_addr, &image_size,
>    226                                       &reserve_addr,
>    227                                       &reserve_size,
>    228                                       dram_base, image);
>    229          if (status != EFI_SUCCESS) {
>    230                  pr_efi_err("Failed to relocate kernel\n");
>    231                  goto fail_free_cmdline;
>    232          }
>    233
>    234          efi_retrieve_tpm2_eventlog();
>    235
>    236          /* Ask the firmware to clear memory on unclean shutdown */
>    237          efi_enable_reset_attack_mitigation();
>    238
>    239          secure_boot = efi_get_secureboot();
>    240
>    241          /*
>    242           * Unauthenticated device tree data is a security hazard, so ignore
>    243           * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
>    244           * boot is enabled if we can't determine its state.
>    245           */
>    246          if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
>    247               secure_boot != efi_secureboot_mode_disabled) {
>    248                  if (strstr(cmdline_ptr, "dtb="))
>    249                          pr_efi("Ignoring DTB from command line.\n");
>    250          } else {
>    251                  status = efi_load_dtb(image, &fdt_addr, &fdt_size);
>    252
>    253                  if (status != EFI_SUCCESS) {
>    254                          pr_efi_err("Failed to load device tree!\n");
>    255                          goto fail_free_image;
>    256                  }
>    257          }
>    258
>    259          if (fdt_addr) {
>    260                  pr_efi("Using DTB from command line\n");
>    261          } else {
>    262                  /* Look for a device tree configuration table entry. */
>    263                  fdt_addr = (uintptr_t)get_fdt(&fdt_size);
>    264                  if (fdt_addr)
>    265                          pr_efi("Using DTB from configuration table\n");
>    266          }
>    267
>    268          if (!fdt_addr)
>    269                  pr_efi("Generating empty DTB\n");
>    270
>  > 271          if (!noinitrd()) {
>    272                  max_addr = efi_get_max_initrd_addr(dram_base, image_addr);
>    273                  status = efi_load_initrd_dev_path(&initrd_addr, &initrd_size,
>    274                                                    max_addr);
>    275                  if (status == EFI_SUCCESS) {
>    276                          pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
>    277                  } else if (status == EFI_NOT_FOUND) {
>    278                          status = efi_load_initrd(image, &initrd_addr, &initrd_size,
>    279                                                   ULONG_MAX, max_addr);
>    280                          if (status == EFI_SUCCESS)
>    281                                  pr_efi("Loaded initrd from command line option\n");
>    282                  }
>    283                  if (status != EFI_SUCCESS)
>    284                          pr_efi_err("Failed to load initrd!\n");
>    285          }
>    286
>    287          efi_random_get_seed();
>    288
>    289          /*
>    290           * If the NX PE data feature is enabled in the properties table, we
>    291           * should take care not to create a virtual mapping that changes the
>    292           * relative placement of runtime services code and data regions, as
>    293           * they may belong to the same PE/COFF executable image in memory.
>    294           * The easiest way to achieve that is to simply use a 1:1 mapping.
>    295           */
>    296          prop_tbl = get_efi_config_table(EFI_PROPERTIES_TABLE_GUID);
>    297          flat_va_mapping = prop_tbl &&
>    298                            (prop_tbl->memory_protection_attribute &
>    299                             EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
>    300
>    301          /* hibernation expects the runtime regions to stay in the same place */
>    302          if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && !flat_va_mapping) {
>    303                  /*
>    304                   * Randomize the base of the UEFI runtime services region.
>    305                   * Preserve the 2 MB alignment of the region by taking a
>    306                   * shift of 21 bit positions into account when scaling
>    307                   * the headroom value using a 32-bit random value.
>    308                   */
>    309                  static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
>    310                                              EFI_RT_VIRTUAL_BASE -
>    311                                              EFI_RT_VIRTUAL_SIZE;
>    312                  u32 rnd;
>    313
>    314                  status = efi_get_random_bytes(sizeof(rnd), (u8 *)&rnd);
>    315                  if (status == EFI_SUCCESS) {
>    316                          virtmap_base = EFI_RT_VIRTUAL_BASE +
>    317                                         (((headroom >> 21) * rnd) >> (32 - 21));
>    318                  }
>    319          }
>    320
>    321          install_memreserve_table();
>    322
>    323          status = allocate_new_fdt_and_exit_boot(handle, &fdt_addr,
>    324                                                  efi_get_max_fdt_addr(dram_base),
>    325                                                  initrd_addr, initrd_size,
>    326                                                  cmdline_ptr, fdt_addr, fdt_size);
>    327          if (status != EFI_SUCCESS)
>    328                  goto fail_free_initrd;
>    329
>    330          efi_enter_kernel(image_addr, fdt_addr, fdt_totalsize((void *)fdt_addr));
>    331          /* not reached */
>    332
>    333  fail_free_initrd:
>    334          pr_efi_err("Failed to update FDT and exit boot services\n");
>    335
>    336          efi_free(initrd_size, initrd_addr);
>    337          efi_free(fdt_size, fdt_addr);
>    338
>    339  fail_free_image:
>    340          efi_free(image_size, image_addr);
>    341          efi_free(reserve_size, reserve_addr);
>    342  fail_free_cmdline:
>    343          free_screen_info(si);
>    344          efi_free(cmdline_size, (unsigned long)cmdline_ptr);
>    345  fail:
>    346          return status;
>    347  }
>    348
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkev-XZv%3DTQ_RjL2_5xwnMO6fFgjgaTyofb%3DvN6PUb--Q%40mail.gmail.com.
