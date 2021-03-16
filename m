Return-Path: <clang-built-linux+bncBDYJPJO25UGBB75WYOBAMGQE4CMWXXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C06233D928
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 17:23:28 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id h20sf13639903lji.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 09:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615911808; cv=pass;
        d=google.com; s=arc-20160816;
        b=k4fV5TbRvLFXgH/oJDVCoT+YYcPo2lMGARr07w6nvBJnB4Ltm2T7jMArmgQl3tGVB9
         5dLJBQszT7dxC3PRBjAIYFl9hpqNKokVSVnfBGkDS/R9nckhrK6/VPDQM41JAhy7ASRY
         7LyytObd5Kya4xWw2FE0nud5cnasu5l2tJsTvkli0whrm1FNWf45Zct68OosPFljvoz3
         0VjsAatsFDVpnhTWO4OiSHrcppCPHiXSeFSvUEcAxaQHuDB7cUlT2n/Rh0pPRkcBmGtM
         /UXeM4vBR16CE6KhBD4KO3BK+Aa/jc2QuECmD6j/FD0ZnpXhPEOInrvzHY9TRXebB18l
         Vr0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CRS5CVUSa6QwLuyfBm12dG+Em59CpMYmnq5quUEF4Sw=;
        b=d+Y0eEAwfOPMMbaJW4M7hirRbp1+LpqBrJ/Xf8g9o1/OViDPDjTXdg6ygmBsG70KDL
         W1rNnrDdeVIKnLQCtUdAv34MdvZkflu950JCCofdvKOtuCCM8sfWGe5z1IOHhCYL4uNN
         p15t0Ij2Y0mxMSN+dEwDoCaJNS4MCaeKKJGwjmyPdkzezZlX1a/04YPSINeVpHWaf3H4
         E3mo5d74w6T/gzyCOdvXzYO4d7zKt8L3BUbGDAQU3Sf9NM0eQajo3n+f2pv43esldrYX
         3edpfuArHzKq20ni2dLHe65jpIW4acVkKL8QwboLfs+PJ5nA7/VNGR2Lf3qaofeeBzlT
         D8OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIzhrCUP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRS5CVUSa6QwLuyfBm12dG+Em59CpMYmnq5quUEF4Sw=;
        b=nJv0S4tu8jcxy0SnxVOYNOl5cgVb+Tp2tGc+4WPV9nD7is8DqxGvH4RkhjlwyG7gjY
         1HnYrZf3DNj+iyXR8uMKxA7CJXtC8HAeeuKTZ/bubc149IyIs/Az1BDD4nnImFxyAEsg
         qK9AhvA9yE/tYJXlSddLJLOyLL1YZWWmliuohC3WLKo6N2mqBbe8doRlgYA1TY1pmTAa
         ytdXtsSVMkIlGqIBMdwOWUi8Z+8I4C1ijf7Mmel92N9KoR5thTzgII2IacWvLZaOG7JT
         5oL3NCUoWqSZtjNbH+SJq6X/NAR7VJpzqb388A4kJixpquouT+wr/uOkgrBt9++zQz2F
         5+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CRS5CVUSa6QwLuyfBm12dG+Em59CpMYmnq5quUEF4Sw=;
        b=L4VCP6HWuqf8fyjY3LYysha8UO1cjvoQHpCrH5RWyfGZTEFt7WSDQMGEe4Utt3Kwvr
         dcGW54LFsRlVJV6hD29rVW6lpupUeDkHO9fsaVnk0dxe0w4UxRyfzOUF52Fh52IYvbfJ
         TY6JkK2jU3ylG75X4AV18eEZaKBfu2XyyK1YlGix1NJcsA0jRCkwoLACcLeTF5+2XWXp
         dKZ705hSFMo7JU8WE6iA9yDlQenwl64GMbsD5qVS7/3sFCoC4mME35VjCMPap4/f2Dm7
         qW8yBI54WUN0PksbPWNCJaM/mB3gOl2/dGcOvr9pV45EdJAT8p8D1dM252YQTlgFeiXO
         ED8g==
X-Gm-Message-State: AOAM530Pnhh1FA0fk0f+mhhajSsTi91eGOXfNzkxer5wzdEq6/ebFNJ5
	W1kCnI5s+zx6tcXcO0pvVPo=
X-Google-Smtp-Source: ABdhPJwi+6js2Z9uBRQkpsputyN1y4Nsjo+aQyy6Ee/kbrA9j7xiZ8ZvdaxjvPmQwbLrDf2Z/G7+jg==
X-Received: by 2002:a05:6512:304f:: with SMTP id b15mr11629180lfb.406.1615911807988;
        Tue, 16 Mar 2021 09:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:589:: with SMTP id 131ls4293010ljf.9.gmail; Tue, 16 Mar
 2021 09:23:22 -0700 (PDT)
X-Received: by 2002:a05:651c:1134:: with SMTP id e20mr3159857ljo.385.1615911802511;
        Tue, 16 Mar 2021 09:23:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615911802; cv=none;
        d=google.com; s=arc-20160816;
        b=uWDUFJLkr+nFuAPKQ1fZlb8t6ozsYxGNwhPZ309A3PuFY326t4h0dGL1thqgx+qHzL
         dLjwTchIH/pOlPrSWjw34nh6iq/APjZp0N/AHLnNKPSwBC8YWshMnQTXHAjUyB8up/f1
         sNKSKhnv5hjbILShzm31hyFotabmGYaIfb50Zfiz7fd2Uh3TZBvZi7Nprg69EVdwOc1U
         78CxF7oPKB6QTArCxNpeIKltfqiE0jV2/6xlX52o/PxehJQ6HKvQU6EgHw5IUtGrbkhe
         KEUOoxctD0S7WMxDUIDGMSj/y6embO1TRNO8j14GmBUE/wMSCMos6QyCgxVPpzlrqlsm
         gQCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B9/mKkjqDmqgztA1c+9tojdTY3QmdTa/Mj2dq9ukTTI=;
        b=PZzqcXb/kP/WfxhR+pSwlLZo3FZdn17jCRNtpc+I6bowVinM//AiSs2ipFHzHdsbBj
         bpQbJTx/xoTN9WH8t75k5RruaQryOGdeTfPMn9GSRMA03fzW01nBSPZyqgencQQG11GU
         e/H8wlWmuiUQ28z6SWQHLzRsDjHSpbnLmkxk5g1r7jZXd79uwHTIB+b1aeS7uA2Xor2V
         MHdU82qkfcC9ZmM38Py1yQYTDlwFKJRDAfWaUp9xGyOfd2/47Pnu9PVPE/k/G0u0hC5b
         Gt3H+vSZaXWN4m2o8nirbRAVtI4szx8wc7SJ+q1o8jw3ntamA2JCZ/Xfx+05ES2Qnuk2
         L18A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIzhrCUP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z2si652478ljm.0.2021.03.16.09.23.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 09:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id u4so63397278lfs.0
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 09:23:22 -0700 (PDT)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr11895567lfd.547.1615911802020;
 Tue, 16 Mar 2021 09:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <202103160133.UzhgY0wt-lkp@intel.com> <YFBYWjtWJrnGyiVp@linux.ibm.com>
In-Reply-To: <YFBYWjtWJrnGyiVp@linux.ibm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Mar 2021 09:23:09 -0700
Message-ID: <CAKwvOdmMvvOYBJRZh9w8uQH1ZXZ97Gq+Rs0S4Xi0ZnWufYoxAA@mail.gmail.com>
Subject: Re: WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in
 reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
To: Mike Rapoport <rppt@linux.ibm.com>
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	David Hildenbrand <david@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oIzhrCUP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Tue, Mar 16, 2021 at 12:04 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Tue, Mar 16, 2021 at 01:23:08AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   1e28eed17697bcf343c6743f0028cc3b5dd88bf0
> > commit: 34dc2efb39a231280fd6696a59bbe712bf3c5c4a memblock: fix section mismatch warning
> > date:   2 days ago
> > config: arm64-randconfig-r013-20210315 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a28facba1ccdc957f386b7753f4958307f1bfde8)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=34dc2efb39a231280fd6696a59bbe712bf3c5c4a
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 34dc2efb39a231280fd6696a59bbe712bf3c5c4a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> WARNING: modpost: vmlinux.o(.text+0x74fea4): Section mismatch in reference from the function memblock_find_in_range_node() to the function .init.text:memblock_bottom_up()
> > The function memblock_find_in_range_node() references
> > the function __init memblock_bottom_up().
> > This is often because memblock_find_in_range_node lacks a __init
> > annotation or the annotation of memblock_bottom_up is wrong.
>
> I don't have clang-13 setup handy so I could not check, but I think this
> should be the fix:

Thanks for taking another look:
https://lore.kernel.org/lkml/20210225205908.GM1447004@kernel.org/
Do we want to switch the above to the below?

>
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index d13e3cd938b4..5984fff3f175 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -460,7 +460,7 @@ static inline void memblock_free_late(phys_addr_t base, phys_addr_t size)
>  /*
>   * Set the allocation direction to bottom-up or top-down.
>   */
> -static inline __init void memblock_set_bottom_up(bool enable)
> +static inline __init_memblock void memblock_set_bottom_up(bool enable)
>  {
>         memblock.bottom_up = enable;
>  }
> @@ -470,7 +470,7 @@ static inline __init void memblock_set_bottom_up(bool enable)
>   * if this is true, that said, memblock will allocate memory
>   * in bottom-up direction.
>   */
> -static inline __init bool memblock_bottom_up(void)
> +static inline __init_memblock bool memblock_bottom_up(void)
>  {
>         return memblock.bottom_up;
>  }
>
>
> --
> Sincerely yours,
> Mike.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFBYWjtWJrnGyiVp%40linux.ibm.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmMvvOYBJRZh9w8uQH1ZXZ97Gq%2BRs0S4Xi0ZnWufYoxAA%40mail.gmail.com.
