Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNM4Z3XAKGQE4VU4EIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4432B101979
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 07:39:50 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id b6sf14141249qvo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 22:39:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574145589; cv=pass;
        d=google.com; s=arc-20160816;
        b=heYy2GR92Lt1jA97FkDuSkbDQR0yMwNNOr13ekqZG3UOi6kvlbKi8V88S47I2z56Cp
         iza57xno2hJwRN1Y9SsZhBMbu1NNdrWFYC25j/unzp+ZKEVo/jjSBUHO4YdO//iOz9bc
         cg2yaAZkh4FUvMNGNAxuGABFB5vG+cRLwRxOfHtybMvPUPH8SGo3yruPz1bnko8zB+tu
         FfOCEOPCNyeiGcI3f5cBc+z3SOn+wocWjP0Nwgxfrc7uD+SXf3Vz2pIdvY94WhmJA0Jq
         51A1F8etjtrxy/AfCZGvbC4jkR/YPbUYhf9wiutgY/QH/PHVlsdfE1hGXfJ/k+ZiqJsn
         92og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SCOTblbChsu6zOqD4MaZnVE3akH/Xfk+a5nqlqctfGg=;
        b=N3yCKUuHUT0773cIFStHi5kdveAB4Z+q3HTBLWwH2+2xs8A2EI67lvCy9u5xxfEdpZ
         dBKZjeM2HXGYh8Kvh3PrSj+L7D8QFq3EXXQS0GIrhc0c34tkt3Yl0I1DP45mlRP/I7Br
         UFZfruNjqffj/s9nYH7Ty6dEZ6PqgVHxbrxdTJqCvxXXdy6mmp/1sJVdcBgUI9N3jc59
         tZYFl7k19HyH0w9j1maJWazv7SIWZ8Vdq6xEGrGJ977Na0GqnnmxKMUkZrj9ns2nQVSZ
         XTvmbzug4V8hbl9+Z2SHJmx7dowefAXJ3ZPcxWR8bRRL/RAmPu5MddT1PmmA9IJzNO8M
         xldg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFYvTUd6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SCOTblbChsu6zOqD4MaZnVE3akH/Xfk+a5nqlqctfGg=;
        b=pB9x7IU43fUG9nC9ZqbuOJ9yyD76LiN+Dmks3rs0Q4DzuKOgWlpsqByZ8rHzDY4cON
         rJKAKZUFMMjhSwhLosMEm9K0W1U39BUq/BYmzP/HnjcCrRCYcu/RQXsBkQhv2KFPSoZk
         5CSRAwHZpzDcEUs95Hmso8q7Dq3UDHGb+ipJ2WCywiitkcvvAnc4q9DH7xT7z5D9Mqws
         91cG/ob1eLTGBbZVDD2a80/6i658xs8aAZEIHS+dRz2uuAx7H+A3aNQjskSk7wFHhoX7
         6nle2M3gOk2052tP02fuZtiR9n+Oncg5uQ4kldsqqbSw6MgzxdEQmOcf/x/1jWcH2vYR
         2L+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SCOTblbChsu6zOqD4MaZnVE3akH/Xfk+a5nqlqctfGg=;
        b=MCbKDDw8jwWulxTYBq3Z0FSOzDGu7w1lCYeBgNePNwKo4FTIJK2A5OYXxsfedeV717
         F/JD0WiygFfKjb3TEhdUXmf/U7yv/dkZL9zJflbWzNo5CUz1gzgBuLci4ix7X1ynAjQB
         RhhpN53hbYEELNVbE/eqeI2vSrZgOwg3GgORtceLodDIcBtZ0WObzNT2M3GOH/VqCqK5
         pKJimvgqUPs9YsDH++dOmjDVUG3HiGPWszw+eRGBEEFLOiR5CP3EeBcxX+t2JpQ6eGvN
         jQ8WLazoW6pP2scLTfzxQSaNwxasHfYBrwbxPWjbO8MFMD8dMv5x9NoRrithSAsjFD0N
         wxmw==
X-Gm-Message-State: APjAAAURY/7AxigASFiWAGasXdAqa9HDWqvOJmp1KIjfmWiV5tMULCzf
	Bmx10KidYZVtAO6SRTp2+8A=
X-Google-Smtp-Source: APXvYqygEd7pjAzhJvHhlQcnKUYNnbQSmRXgWdpNio6rcfXRftSIivt30M0dgaF4BBCJSDlT/5Hacw==
X-Received: by 2002:ac8:38cf:: with SMTP id g15mr30880961qtc.254.1574145589183;
        Mon, 18 Nov 2019 22:39:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e0e:: with SMTP id h14ls5714860qke.7.gmail; Mon, 18 Nov
 2019 22:39:48 -0800 (PST)
X-Received: by 2002:a37:624f:: with SMTP id w76mr17598873qkb.50.1574145588710;
        Mon, 18 Nov 2019 22:39:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574145588; cv=none;
        d=google.com; s=arc-20160816;
        b=tEHtaAYfIDLjI7NimveSk44qFjHc97VBMxR8maqhlqfs364+86AvKUoIh5kbvTouOC
         aT4jPc0VbAY2WWI7fIzljK/HfWqsfzgt3diDzL3VGDw7WzLU0xsiRFvhWYoFWfQY2gsm
         Menzfv0/l1/NWFc4vD6DXxq66uiBUq69eKO0tDzmpOX47JGnfciA33I0WV3RGm4Tfwqj
         mLsgAOfq1M/EvKvaeM0X02U9oi+jVpVfTlUZBeEC4GwhDNaWHu6UTI2Nbw8pbkW0fD8t
         yWmWnB50NBFCynaJhXs/GPDE/aHiU09zrY3pChUqfR/ISuDHe4yYBSnkPyMteX1qUxKU
         s26A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iONTPilQZ8wD6XTz+cqKAU7UFOUgjkGrvoIm5EnzRTI=;
        b=maoOkWNtPUSWTAzmyt/y4jEf3qb1MaoUWVmo5N8HFCQ72Zf7/esDPOvh8fBe6NsAbb
         XgpS8hs2NFMovLjNodwE2bhBbTh/A/x8uz7XdMEfEfoBP1BRBKCTmTDVZ0uwz5CjfO6x
         IVtsG+kt+CDc8Z8wfb4sS7LAkPzVQJ1i5tLiKCcVlO0G19Gqg5p9OiZfDIhNrttFbLVk
         NOKeZqz+zj41I9QacQ18BlnIZwVSWMgYVdEiHlxua4HsVqMrqktQDg5s1UyHS3E1M4A+
         mprER7zgbZ3FvIMjoFARdbdackn6dILEBvdPzsjfBcMk42woHEElUkHX9Z5jnG+J4NbS
         AeUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VFYvTUd6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id y199si1007782qka.3.2019.11.18.22.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 22:39:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id d29so11210261plj.8
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 22:39:48 -0800 (PST)
X-Received: by 2002:a17:902:8216:: with SMTP id x22mr32746517pln.179.1574145586804;
 Mon, 18 Nov 2019 22:39:46 -0800 (PST)
MIME-Version: 1.0
References: <201911191421.oOPAr13c%lkp@intel.com>
In-Reply-To: <201911191421.oOPAr13c%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Nov 2019 22:39:34 -0800
Message-ID: <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
Subject: Re: [atishp04:efi_stub 1/1] drivers/firmware/efi/libstub/arm-stub.c:203:7:
 warning: variable 'secure_boot' is uninitialized when used here
To: Atish Patra <atish.patra@wdc.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VFYvTUd6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
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

Atish, below is a report from 0day bot from a build with Clang. The
warning looks legit, can you please take a look?

On Mon, Nov 18, 2019 at 10:17 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Atish Patra <atish.patra@wdc.com>
>
> tree:   https://github.com/atishp04/linux efi_stub
> head:   7dbf2060ab3115d2edcfba8f0f677a321a1611f1
> commit: 7dbf2060ab3115d2edcfba8f0f677a321a1611f1 [1/1] Add efi stub
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 7dbf2060ab3115d2edcfba8f0f677a321a1611f1
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: unused variable 'si' [-Wunused-variable]
>            struct screen_info *si;
>                                ^
> >> drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable 'secure_boot' is uninitialized when used here [-Wuninitialized]
>                 secure_boot != efi_secureboot_mode_disabled) {
>                 ^~~~~~~~~~~
>    drivers/firmware/efi/libstub/arm-stub.c:131:2: note: variable 'secure_boot' is declared here
>            enum efi_secureboot_mode secure_boot;
>            ^
>    2 warnings generated.
>
> vim +/secure_boot +203 drivers/firmware/efi/libstub/arm-stub.c
>
> b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   92
> b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   93
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   94  /*
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   95   * This function handles the architcture specific differences between arm and
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   96   * arm64 regarding where the kernel image must be loaded and any memory that
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   97   * must be reserved. On failure it is required to free all
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   98   * all allocations it has made.
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   99   */
> bd669475d14e32 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-07-02  100  efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  101                                   unsigned long *image_addr,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  102                                   unsigned long *image_size,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  103                                   unsigned long *reserve_addr,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  104                                   unsigned long *reserve_size,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  105                                   unsigned long dram_base,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  106                                   efi_loaded_image_t *image);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  107  /*
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  108   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  109   * that is described in the PE/COFF header.  Most of the code is the same
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  110   * for both archictectures, with the arch-specific code provided in the
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  111   * handle_kernel_image() function.
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  112   */
> ddeeefe2dfbe1f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-01-12  113  unsigned long efi_entry(void *handle, efi_system_table_t *sys_table,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  114                                 unsigned long *image_addr)
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  115  {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  116          efi_loaded_image_t *image;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  117          efi_status_t status;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  118          unsigned long image_size = 0;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  119          unsigned long dram_base;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  120          /* addr/point and size pairs for memory management*/
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  121          unsigned long initrd_addr;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  122          u64 initrd_size = 0;
> 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  123          unsigned long fdt_addr = 0;  /* Original DTB */
> a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  124          unsigned long fdt_size = 0;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  125          char *cmdline_ptr = NULL;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  126          int cmdline_size = 0;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  127          unsigned long new_fdt_addr;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  128          efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  129          unsigned long reserve_addr = 0;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  130          unsigned long reserve_size = 0;
> de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  131          enum efi_secureboot_mode secure_boot;
> f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25 @132          struct screen_info *si;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  133
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  134          /* Check if we were booted by the EFI firmware */
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  135          if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE)
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  136                  goto fail;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  137
> b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  138          status = check_platform_features(sys_table);
> b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  139          if (status != EFI_SUCCESS)
> b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  140                  goto fail;
> b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  141
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  142          /*
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  143           * Get a handle to the loaded image protocol.  This is used to get
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  144           * information about the running image, such as size and the command
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  145           * line.
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  146           */
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  147          status = sys_table->boottime->handle_protocol(handle,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  148                                          &loaded_image_proto, (void *)&image);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  149          if (status != EFI_SUCCESS) {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  150                  pr_efi_err(sys_table, "Failed to get loaded image protocol\n");
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  151                  goto fail;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  152          }
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  153
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  154          dram_base = get_dram_base(sys_table);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  155          if (dram_base == EFI_ERROR) {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  156                  pr_efi_err(sys_table, "Failed to find DRAM base\n");
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  157                  goto fail;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  158          }
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  159
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  160          /*
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  161           * Get the command line from EFI, using the LOADED_IMAGE
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  162           * protocol. We are going to copy the command line into the
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  163           * device tree, so this can be allocated anywhere.
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  164           */
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  165          cmdline_ptr = efi_convert_cmdline(sys_table, image, &cmdline_size);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  166          if (!cmdline_ptr) {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  167                  pr_efi_err(sys_table, "getting command line via LOADED_IMAGE_PROTOCOL\n");
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  168                  goto fail;
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  169          }
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  170
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  171          if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  172              IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  173              cmdline_size == 0)
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  174                  efi_parse_options(CONFIG_CMDLINE);
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  175
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  176          if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  177                  efi_parse_options(cmdline_ptr);
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  178
> eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  179          pr_efi(sys_table, "Booting Linux Kernel...\n");
> 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  180  #if 0
> f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  181          si = setup_graphics(sys_table);
> 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  182  #endif
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  183          status = handle_kernel_image(sys_table, image_addr, &image_size,
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  184                                       &reserve_addr,
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  185                                       &reserve_size,
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  186                                       dram_base, image);
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  187          if (status != EFI_SUCCESS) {
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  188                  pr_efi_err(sys_table, "Failed to relocate kernel\n");
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  189                  goto fail_free_cmdline;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  190          }
> 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  191  #if 0
> ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  192          /* Ask the firmware to clear memory on unclean shutdown */
> ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  193          efi_enable_reset_attack_mitigation(sys_table);
> ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  194
> 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  195          secure_boot = efi_get_secureboot(sys_table);
> 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  196  #endif
> 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  197          /*
> de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  198           * Unauthenticated device tree data is a security hazard, so ignore
> de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  199           * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
> de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  200           * boot is enabled if we can't determine its state.
> 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  201           */
> 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  202          if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
> 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11 @203               secure_boot != efi_secureboot_mode_disabled) {
> 3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  204                  if (strstr(cmdline_ptr, "dtb="))
> 73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  205                          pr_efi(sys_table, "Ignoring DTB from command line.\n");
> 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  206          } else {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  207                  status = handle_cmdline_files(sys_table, image, cmdline_ptr,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  208                                                "dtb=",
> a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  209                                                ~0UL, &fdt_addr, &fdt_size);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  210
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  211                  if (status != EFI_SUCCESS) {
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  212                          pr_efi_err(sys_table, "Failed to load device tree!\n");
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  213                          goto fail_free_image;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  214                  }
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  215          }
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  216
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  217          if (fdt_addr) {
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  218                  pr_efi(sys_table, "Using DTB from command line\n");
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  219          } else {
> 345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  220                  /* Look for a device tree configuration table entry. */
> a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  221                  fdt_addr = (uintptr_t)get_fdt(sys_table, &fdt_size);
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  222                  if (fdt_addr)
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  223                          pr_efi(sys_table, "Using DTB from configuration table\n");
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  224          }
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  225
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  226          if (!fdt_addr)
> 0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  227                  pr_efi(sys_table, "Generating empty DTB\n");
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  228
> 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  229          status = handle_cmdline_files(sys_table, image, cmdline_ptr, "initrd=",
> 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  230                                        efi_get_max_initrd_addr(dram_base,
> 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  231                                                                *image_addr),
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  232                                        (unsigned long *)&initrd_addr,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  233                                        (unsigned long *)&initrd_size);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  234          if (status != EFI_SUCCESS)
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  235                  pr_efi_err(sys_table, "Failed initrd from command line!\n");
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  236
> 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  237          efi_random_get_seed(sys_table);
> 568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  238
> 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  239          /* hibernation expects the runtime regions to stay in the same place */
> 38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  240          if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  241                  /*
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  242                   * Randomize the base of the UEFI runtime services region.
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  243                   * Preserve the 2 MB alignment of the region by taking a
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  244                   * shift of 21 bit positions into account when scaling
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  245                   * the headroom value using a 32-bit random value.
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  246                   */
> 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  247                  static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
> 197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  248                                              EFI_RT_VIRTUAL_BASE -
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  249                                              EFI_RT_VIRTUAL_SIZE;
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  250                  u32 rnd;
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  251
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  252                  status = efi_get_random_bytes(sys_table, sizeof(rnd),
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  253                                                (u8 *)&rnd);
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  254                  if (status == EFI_SUCCESS) {
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  255                          virtmap_base = EFI_RT_VIRTUAL_BASE +
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  256                                         (((headroom >> 21) * rnd) >> (32 - 21));
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  257                  }
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  258          }
> e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  259
> b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  260          install_memreserve_table(sys_table);
> b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  261
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  262          new_fdt_addr = fdt_addr;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  263          status = allocate_new_fdt_and_exit_boot(sys_table, handle,
> 138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  264                                  &new_fdt_addr, efi_get_max_fdt_addr(dram_base),
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  265                                  initrd_addr, initrd_size, cmdline_ptr,
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  266                                  fdt_addr, fdt_size);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  267
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  268          /*
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  269           * If all went well, we need to return the FDT address to the
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  270           * calling function so it can be passed to kernel as part of
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  271           * the kernel boot protocol.
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  272           */
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  273          if (status == EFI_SUCCESS)
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  274                  return new_fdt_addr;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  275
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  276          pr_efi_err(sys_table, "Failed to update FDT and exit boot services\n");
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  277
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  278          efi_free(sys_table, initrd_size, initrd_addr);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  279          efi_free(sys_table, fdt_size, fdt_addr);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  280
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  281  fail_free_image:
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  282          efi_free(sys_table, image_size, *image_addr);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  283          efi_free(sys_table, reserve_size, reserve_addr);
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  284  fail_free_cmdline:
> 7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  285          //free_screen_info(sys_table, si);
> 2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  286          efi_free(sys_table, cmdline_size, (unsigned long)cmdline_ptr);
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  287  fail:
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  288          return EFI_ERROR;
> 3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  289  }
> f3cdfd239da56a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2014-10-20  290
>
> :::::: The code at line 203 was first introduced by commit
> :::::: 3d7ee348aa4127a7893c11261da9b76371a970e6 efi/libstub/arm: Add opt-in Kconfig option for the DTB loader
>
> :::::: TO: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> :::::: CC: Ingo Molnar <mingo@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj%2BAYQ%40mail.gmail.com.
