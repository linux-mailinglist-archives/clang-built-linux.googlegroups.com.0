Return-Path: <clang-built-linux+bncBAABBDN3TD2AKGQERCQFREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 937DC19C7BA
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:14:54 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id 189sf5114725ybw.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:14:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585847693; cv=pass;
        d=google.com; s=arc-20160816;
        b=ADKUyfyL+nbgmrrInpxc1W7FtWjK+8cieRHPDuzcXF6vShmGyONRNigMxtRofiPTtj
         kMD6WwvG4YC+cZWJgTTGb8S7WyMsF4cN570JZ1lVJJ1iB7bKmAt1VDm514VZIBBxwJyi
         aAP/zxDRtVxA5JiTgn2EPWAwXNoAqwmqm35yJCxx2Apsd4DcvDuyDzVKMi2SkdIUkI55
         OzhkfR87z3cQlyOco2+ItXLSrhrU0cMiTtUbHozQ0QxwHfifMURRtPE+sFKqYbWHMUEK
         he2UerQp2fAG7clO/ClTFZqh6p0a6mOUhK8BLLTaYOA/OYdnMkihnVkKBXipHBM/09a9
         KhJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WiBulMu2wlF6f/jQD52xzrqOtMabV1AV4mMF+A49mFA=;
        b=tcqb0ZZFF9ckGwBrfI9RlIk/RjNM2lr8NtDyFflxrYV1ex3O/ww4feL2lzh8OXfgEV
         rdjZt16Zgr21ifdjn2/YNBpVePKR6ZBXyd5ZMjsckfGWqM5+8dum6WOey0otLRxj0Aak
         IWycSrHGM2G2XjPDK+DmbfOUAP7JduG0nC37n4PseLUaJyrxKBLRmOrS7qoHF9U5kw2K
         xDUAZWmWmeJEy79lEH/eiJ4r+ajvqgd4l2DNp2oYhnZDpHJeS4WI0JXPEcwCxA+Md3vo
         /mG5i/r/cJaKUguUo2PisoytrZQYWArdpex8UV3d+p69wYmzibZ13AM2o4bSxQADuwhY
         0aww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qlZuXzUg;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WiBulMu2wlF6f/jQD52xzrqOtMabV1AV4mMF+A49mFA=;
        b=Tx2buqiVCB8CNGkfMJZJke1HOaRAz5+Pf03nEVI3TSA8zEZI4bcT8GUoI9LPK9ABIL
         8j4MiiwpzB2GMbnOj3J/gwexYpp/SJewOJOSZr8ow15BERXtljGBqQWmMH75uHH0cwdU
         UtdnyCMkkNgfzhoAnLC1QE2Av4G4ZvXcL9pfZAJNkicWRi5eTYo4Y0eApfEnsNvk1RaE
         4XySDC36+vYjGcljttD7K1705lFudN0TG9OgzdsGNIjmuO6XykKsO4y3rYLMd6Z/yULx
         lW5PjSiXq7B3nGbclbKIg8bGEUomDELw8/C5/KCvwdcmW6pYun5Npug0a0lWK3Bt2gta
         NRQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WiBulMu2wlF6f/jQD52xzrqOtMabV1AV4mMF+A49mFA=;
        b=S/tzbnosS8p1gonOyuXccvRhHb1zrbCVbEUp+Vg7xLxOHJyrUEE1SvdNhGeAK8yZMy
         jbxKM9ctIahr7l0eZC4qF0D8i+0DRuCisNGKbvYlUUa2jFpaqVXlv3gQgik6kxfQnyac
         3DPSdf5WBCXDG3gW35iBzn4L1K5+aHw1N+oxlRegAr60DByT2MmU7tZECyl0gUC6eNWG
         I/3pMMx+y4wHMYA330R0RHASw5jL6MWB3BtUsvfJ9zwf3UxwzRK7eaLHdGs59m9MVJtB
         PfLt7gEOwvVIA9mvqiA5fdmwHaNSE0Peh7YFMUJFW2+F3xOs7VW931KR+bbNISADGIpW
         oKWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaRoCs8jPue3gvIVYVW5829BUHgEyFTiDgY3+COjd6cNyMu4Ffr
	vt0l++9bPWomeGMCjy6ghYo=
X-Google-Smtp-Source: APiQypKDS3twoyQBddEuUQuyRHR2JubqAZN8c0gRxIPi0FxX6zul5FcnyWL7N3vjn9GpvhJR3X+oyA==
X-Received: by 2002:a25:9344:: with SMTP id g4mr7142872ybo.415.1585847693219;
        Thu, 02 Apr 2020 10:14:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6c8:: with SMTP id n191ls1480299ybg.4.gmail; Thu, 02
 Apr 2020 10:14:52 -0700 (PDT)
X-Received: by 2002:a25:9344:: with SMTP id g4mr7142821ybo.415.1585847692777;
        Thu, 02 Apr 2020 10:14:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585847692; cv=none;
        d=google.com; s=arc-20160816;
        b=I5uwvnYT8auTE8Qjzpph1UGmCfRRqu2/p/tb2BgOKyTDGRtlofqk7iOIc/5OG+GjNi
         4eMvjcTU7mT/WjBMJiE+T/mdJQNZqxt+JWWleJ/TZx77Ve/TG/JZ3cpKdaBu+ABbbM76
         Mg5PR1o21GrTd8eCJIswSNRUUTlMfo1tRFJz9Obqu6vA3BeH3O8MLUFonvXdOb0//wKh
         d2IqsmNnPk9DncZi4bxzYbKr1lwfbaMVkYlpqvjU2+A8RfHC6yhKFIMxBCi98ffv3lPH
         tKmf7wAzowqJ8t1PAJKPTkwDJvRxIm+bSaUfmy9LXeW8SZ8Q7CFncQ+/+kZo9kmLK8/G
         mWlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=VV9RCquaBUqKTgTNvl6x45RtGx68PHxnzewnWe363KQ=;
        b=ZNmvard6Lp7U41NWSzxzyn0OFyOBvigONA1E5rSLXZLap6p02fKLOWTMq9apnppSKF
         wE5lOF1x/u13A0Fin8k4M+zUZPD20+KDxdozsJRfbXupyL2UCqif9I3W1xa+i4TELSab
         6dAd6NjdkGZRw8ao8Eqv9xTg4S+g5mD3C45BnfOyU5FQd7EH1RmD0FA3IhDi5ux6X720
         aFFrE9GEyQZrhd+CuUb8htwbc3idN5Uc+zKyohTxa94pzAJRpRdLeUL0mtQPwPBDKVWo
         3tZGeCpI0EO5nZXfjjeoE8D4yPQLR91HDQgp6jhQO0t2c2YvE1dDd4rOMZUluViYLQt8
         0VoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qlZuXzUg;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id f195si434917ybg.4.2020.04.02.10.14.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:14:52 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 032HENi6030745
	for <clang-built-linux@googlegroups.com>; Fri, 3 Apr 2020 02:14:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 032HENi6030745
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id x206so2894285vsx.5
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:14:24 -0700 (PDT)
X-Received: by 2002:a67:33cb:: with SMTP id z194mr3230237vsz.155.1585847663196;
 Thu, 02 Apr 2020 10:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-1-masahiroy@kernel.org> <20200311223725.27662-2-masahiroy@kernel.org>
In-Reply-To: <20200311223725.27662-2-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 3 Apr 2020 02:13:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT3SR3rc5F1BYA0=Wxp3PRbd+ueDZ-h_UzCj=9m8CLWLQ@mail.gmail.com>
Message-ID: <CAK7LNAT3SR3rc5F1BYA0=Wxp3PRbd+ueDZ-h_UzCj=9m8CLWLQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: sparclinux <sparclinux@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qlZuXzUg;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 12, 2020 at 7:38 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Kbuild supports not only obj-y but also lib-y to list objects linked to
> vmlinux.
>
> The difference between them is that all the objects from obj-y are
> forcibly linked to vmlinux by using --whole-archive, whereas the objects
> from lib-y are linked as needed; if there is no user of a lib-y object,
> it is not linked.
>
> lib-y is intended to list utility functions that may be called from all
> over the place (and may be unused at all), but it is a problem for
> EXPORT_SYMBOL(). Even if there is no call-site in the vmlinux, we need
> to keep exported symbols for the use from loadable modules.
>
> Commit 7f2084fa55e6 ("[kbuild] handle exports in lib-y objects reliably")
> worked around it by linking a dummy object, lib-ksyms.o, which contains
> references to all the symbols exported from lib.a in that directory.
> It uses the linker script command, EXTERN. Unfortunately, the meaning of
> EXTERN of ld.lld is different from that of ld.bfd. Therefore, this does
> not work with LD=ld.lld (CBL issue #515).
>
> Anyway, the build rule of lib-ksyms.o is somewhat tricky. So, I want to
> get rid of it.
>
> At first, I was thinking of accumulating lib-y objects into obj-y
> (or even replacing lib-y with obj-y entirely), but the lib-y syntax
> is used beyond the ordinary use in lib/ and arch/*/lib/.
>
> Examples:
>
>  - drivers/firmware/efi/libstub/Makefile builds lib.a, which is linked
>    into vmlinux in the own way (arm64), or linked to the decompressor
>    (arm, x86).
>
>  - arch/alpha/lib/Makefile builds lib.a which is linked not only to
>    vmlinux, but also to bootloaders in arch/alpha/boot/Makefile.
>
>  - arch/xtensa/boot/lib/Makefile builds lib.a for use from
>    arch/xtensa/boot/boot-redboot/Makefile.
>
> One more thing, adding everything to obj-y would increase the vmlinux
> size of allnoconfig (or tinyconfig).
>
> For less impact, I tweaked the destination of lib.a at the top Makefile;
> when CONFIG_MODULES=y, lib.a goes to KBUILD_VMLINUX_OBJS, which is
> forcibly linked to vmlinux, otherwise lib.a goes to KBUILD_VMLINUX_LIBS
> as before.
>
> The size impact for normal usecases is quite small since at lease one
> symbol in every lib-y object is eventually called by someone. In case
> you are intrested, here are the figures.
>
> x86_64_defconfig:
>
>    text    data     bss     dec     hex filename
> 19566602 5422072 1589328 26578002 1958c52 vmlinux.before
> 19566932 5422104 1589328 26578364 1958dbc vmlinux.after
>
> The case with the biggest impact is allnoconfig + CONFIG_MODULES=y.
>
> ARCH=x86 allnoconfig + CONFIG_MODULES=y:
>
>    text    data     bss     dec     hex filename
> 1175162  254740 1220608 2650510  28718e vmlinux.before
> 1177974  254836 1220608 2653418  287cea vmlinux.after
>
> Hopefully this is still not a big deal. The per-file trimming with the
> static library is not so effective after all.
>
> If fine-grained optimization is desired, some architectures support
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION, which trims dead code per-symbol
> basis. When LTO is supported in mainline, even better optimization will
> be possible.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/515
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reported-by: kbuild test robot <lkp@intel.com>
> ---

Applied to linux-kbuild.

I will rebase my branch during this MW,
so the commit ID will be unstable.
Please do not record it until it lands in Linus' tree.





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT3SR3rc5F1BYA0%3DWxp3PRbd%2BueDZ-h_UzCj%3D9m8CLWLQ%40mail.gmail.com.
