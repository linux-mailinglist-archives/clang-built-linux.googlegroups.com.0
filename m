Return-Path: <clang-built-linux+bncBAABBS7NXDZAKGQEDJKGHVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF17165881
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 08:35:40 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id z24sf1041232vkn.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 23:35:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582184139; cv=pass;
        d=google.com; s=arc-20160816;
        b=hhScAHfeDcLeqUtVDe7DIhzN80bdXrhO//Dj+gbh1VwLUiIQhVRaKheQZUY2o4+d5w
         HZ8Gylm8+pqd8UeC5thl13flxHDznyTFLpNRwagViqC0ibmBxoymHNz+6MIQ5f+vPHZy
         s9Olkt/ak2eAHxnrox0+xxKHAwmSJDVasthkYsfr4N5lsegGBVDz4WmmHlWgEj7skfpe
         0MbXl3g3wETXBKltBOMBuQvrB6GeKIVcF670A9j+gFbku471h3jSXRZwFf4vupMNP41x
         9uo1TjEiI3DfiaT9MLHRJMANebHsGCsKkF0bkMGCP/70qqbtCMslvPRRlxzOBBoZ7vtc
         ziPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=jyX9XW3w/xZ6CxWHk4ZZsV7dXl0U49VzQfYSjC9It1I=;
        b=bPe7fdKF+Vrf8t985NHeMf4HsUcd6aiYXk08e12KzNwoPA/uQOhqHviaC1ikzn6pz5
         V97dgincuGFoZdxGQvTCHio3l0jdmBmqW/HH/rqOyHR9yF7Ess9kwcWLdhIlBaaptLS1
         qARFJlseyZ78SnCp565Cz4Valj0d4b1z5tXuLmWtIAHVV7K/iDtt5AGWf+Hyy0sRRzsJ
         3B1b0NaKJtei7ySo37Apyxr8FyQBAUb4t/0uZSxD0ufX3sSnG3vDHuDB3D+paqzv80tg
         xCSgAsAv4nZv8wI5NCqEnFe8n6X7+U+98YwkaRr0Yckg/AAUErhytt7UdfTJAB9i7mnm
         SD8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MpOBewWN;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jyX9XW3w/xZ6CxWHk4ZZsV7dXl0U49VzQfYSjC9It1I=;
        b=DDBNtsbZtD4hQ8zvSeyIgATFDsXFsoLrPdiwwPejR+8iSoH7lYSYdNeIXnXkR/o8rV
         hwKPJVXasq5Yx1cnk958G90eu1pmQtLQmm7L2l4BoZxcW1U3DNsp2xJ3TMoiA7BoUlTl
         wFZQqzPWsa+4mL4aR/P1u9/mWPjUtL3PfvqzyAt+qkgCfvjCLbdW3ZH8hMrZjM4iwpcq
         4M6K8XomWQWFseA8J+pgq0HextDqxqippB3jfP2umiUgFu0ziBgrzDpZLqbwZolz8NbA
         UCcF1ZgRI79TC66cGdwR8y4Baf0H0KpKrolq3RoaF+vwajbJwAHTOULnv3QC1bHicVxA
         lTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jyX9XW3w/xZ6CxWHk4ZZsV7dXl0U49VzQfYSjC9It1I=;
        b=OQpVM+B+xJglZkhlAxpfwAjR57G/OyKB0DLgKxo8bzuZKGlV6oXFNo665KaIc07ytt
         pEhZ4RPjpy9JMQX5ickcigRE35SJuLmenEX6tKpkwNPQq3xLhDjF+XsQqU+li+hrNYgu
         1FFAKQZ61eJKTLOoWbOL+2czgZTEx4gnD5kgje82J9upzB3SrDJv8L2h6xqsVLjlKmgF
         2str9JInt87QwsYBPMBu8xTzL+GRtC4twLsP8sRkdEH/KFVwstoOKbb7lgMBZIfdfnwY
         e6BGdKSW3tFw2sXW15EljZsa17sQYMWwV2M+Qqe/qfR59i9Zd++cf/1Nb3G6NtRzU2r1
         WSow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWu/hItVxernwJ99PLsFIaZzrFnZ80NlC9i/iVZsUgKRjGqAs1B
	uUNuf9un6dTCqE6vUn1FTXI=
X-Google-Smtp-Source: APXvYqwVIYzDGJXIpPSxsalDWrcN+hM5/6uRy1jc7hVHe2E+vtM0N/9w7i15JoJpz6VMp71XToX2pQ==
X-Received: by 2002:ab0:69c7:: with SMTP id u7mr14852101uaq.111.1582184139270;
        Wed, 19 Feb 2020 23:35:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:42c1:: with SMTP id p184ls285791vsa.10.gmail; Wed, 19
 Feb 2020 23:35:39 -0800 (PST)
X-Received: by 2002:a67:7d17:: with SMTP id y23mr16555384vsc.162.1582184138999;
        Wed, 19 Feb 2020 23:35:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582184138; cv=none;
        d=google.com; s=arc-20160816;
        b=B2TRU5RuKy01OWtvQj7rm/QBtafFwYwUW8tLa5c3dv8XycpJTxNAxYIrm279voDUqw
         YQYSxfGri0X58TVS/JvlTFwsdkPBHG2gET8ILSGaboWrPmEYGiX539VnDeU7LJcaZ+Jj
         27IIBo7LinntRfNQxuVPLf5HftNU/1cQIqKhcPM63CMpPWsI93B0T+aL3b1FYAHk0wcI
         cvol7t/Lz4hYjoGzk/Sbtj2vUtTKZUsk2GcG+O2XWkHg30C8wBdqVM4i2cdRIfEbKGM1
         XCq8xVFQ4e+2jEzeVazlaRUQKukHiiD/a93gTOpS8/6WqqpOs9x2rrV0jOKselJ/I7LZ
         zBUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tdfjiyh7O25hfyABcsp2evtj+O+7NFfrjvTTk3Uobvw=;
        b=rXQlOBKFTWaQX+Qn1/uCSRc9b7rbsdRQz2UlaVBWN6DmER7sQHy3oiAH3z/HgiyNq+
         14E9DcKijqFao3wQ+qROeZm2BLVlhs4OjpP9LSSzvcybCgo4MjWL5rpwz/lbYx6nKLGL
         gMJYmY+vpaHM6Twd4ZNDv8F87vPR/hIBCy7J4bDjHAcyFJMa+dqDVupQd4Mofw+FVtJp
         Cpt/2QcwnH12h5JbNE3FSyfZZoNBcBT5WeIfiKOrVoASuUHZZw3Qxw4t6Kp2wJXXk7xB
         1XACVoMwbMDH8ozEsrpPfiy7qHRG8WhEKv9j3ityWghCuNXAeuZZDeXLPNq6n8qMOpuO
         uvOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MpOBewWN;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si102795vse.2.2020.02.19.23.35.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 23:35:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 74C742467A
	for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 07:35:37 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id s10so858799wmh.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 23:35:37 -0800 (PST)
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr2674003wmf.40.1582184135711;
 Wed, 19 Feb 2020 23:35:35 -0800 (PST)
MIME-Version: 1.0
References: <202002192125.QSSsNaaF%lkp@intel.com> <20200220044738.GA24047@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200220044738.GA24047@ubuntu-m2-xlarge-x86>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 20 Feb 2020 08:35:24 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-=1_Zjp69Ycxw+nNupxvP7dJGU8_KB=FLT9frpSjPFGQ@mail.gmail.com>
Message-ID: <CAKv+Gu-=1_Zjp69Ycxw+nNupxvP7dJGU8_KB=FLT9frpSjPFGQ@mail.gmail.com>
Subject: Re: [efi:next 40/64] drivers/firmware/efi/libstub/efi-stub-helper.c:318:3:
 warning: suggest braces around initialization of subobject
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@lists.01.org, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MpOBewWN;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 20 Feb 2020 at 05:47, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> + Ard.
>
> On Wed, Feb 19, 2020 at 09:53:35PM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > CC: linux-efi@vger.kernel.org
> > TO: Ard Biesheuvel <ardb@kernel.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> > head:   99cf8bd2dfc23547cf823e19dfbe229ed26d6f9f
> > commit: bb3cad853b4c79f782d5e015bca7da621950c820 [40/64] efi/libstub: Add support for loading the initrd from a device path
> > config: arm64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout bb3cad853b4c79f782d5e015bca7da621950c820
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/firmware/efi/libstub/efi-stub-helper.c:318:3: warning: suggest braces around initialization of subobject [-Wmissing-braces]
> >                    EFI_DEV_MEDIA,
> >                    ^~~~~~~~~~~~~~
> >                    {
> >    include/linux/efi.h:846:25: note: expanded from macro 'EFI_DEV_MEDIA'
> >    #define EFI_DEV_MEDIA                   0x04
> >                                            ^
> >    1 warning generated.
> >
> > vim +318 drivers/firmware/efi/libstub/efi-stub-helper.c
> >
> >    302
> >    303        /*
> >    304         * The LINUX_EFI_INITRD_MEDIA_GUID vendor media device path below provides a way
> >    305         * for the firmware or bootloader to expose the initrd data directly to the stub
> >    306         * via the trivial LoadFile2 protocol, which is defined in the UEFI spec, and is
> >    307         * very easy to implement. It is a simple Linux initrd specific conduit between
> >    308         * kernel and firmware, allowing us to put the EFI stub (being part of the
> >    309         * kernel) in charge of where and when to load the initrd, while leaving it up
> >    310         * to the firmware to decide whether it needs to expose its filesystem hierarchy
> >    311         * via EFI protocols.
> >    312         */
> >    313        static const struct {
> >    314                struct efi_vendor_dev_path      vendor;
> >    315                struct efi_generic_dev_path     end;
> >    316        } __packed initrd_dev_path = {
> >    317                {
> >  > 318                        EFI_DEV_MEDIA,
> >    319                        EFI_DEV_MEDIA_VENDOR,
> >    320                        sizeof(struct efi_vendor_dev_path),
> >    321                        LINUX_EFI_INITRD_MEDIA_GUID
> >    322                }, {
> >    323                        EFI_DEV_END_PATH,
> >    324                        EFI_DEV_END_ENTIRE,
> >    325                        sizeof(struct efi_generic_dev_path)
> >    326                }
> >    327        };
> >    328
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
>
> Should it be this?
>
> diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> index 618c189dd..df189bad2 100644
> --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> @@ -322,9 +322,11 @@ static const struct {
>         struct efi_generic_dev_path     end;
>  } __packed initrd_dev_path = {
>         {
> -               EFI_DEV_MEDIA,
> -               EFI_DEV_MEDIA_VENDOR,
> -               sizeof(struct efi_vendor_dev_path),
> +               {
> +                       EFI_DEV_MEDIA,
> +                       EFI_DEV_MEDIA_VENDOR,
> +                       sizeof(struct efi_vendor_dev_path)
> +               },
>                 LINUX_EFI_INITRD_MEDIA_GUID
>         }, {
>                 EFI_DEV_END_PATH,

Indeed. The type in question changed definition over the course of
development, and GCC never complained :-)

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu-%3D1_Zjp69Ycxw%2BnNupxvP7dJGU8_KB%3DFLT9frpSjPFGQ%40mail.gmail.com.
