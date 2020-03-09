Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNWATLZQKGQEHDX4FHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2294317E97A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 20:59:52 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id r8sf2567979ioj.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 12:59:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583783991; cv=pass;
        d=google.com; s=arc-20160816;
        b=CsJkpEbYiGNoJ/BJa9YzRy94bnVmGLVa1JvrkymOL1VYRCwq3VMO9jqTUtORYa4yhA
         QfkrCASarUKUN2T4+51mFerBDDuQWHt9Qpmt42eVqBWH/DgfKTEGoFBr+KcKDBOt8WeM
         x8+7hJC1YG/kRci4yCygkIbtUmaUwYVKmapIC2sfhvGj67JSHQGbmJUI9a1gpqjNvMba
         DP7VfRZBcy2Ej6oBnavSlEE6GR7vhyonVsuRJwjFwoC66SSmJEijdADShhavV2ueZaeq
         Y7ULrfFC9MpnS+eDUvRiBR+vdwwtREl/b9tTLSq7TaRK1+qRbebLmkJcxWOFGg1vp223
         8EQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uGi0cgWQaMYy2FYLRxSg2hJjHol6I3esJJxEKj5GgbI=;
        b=HOWF14PlGQkJZFigrLR44Ng2qAEOfqgQbB+8FopkOZATQALQkBhlGp0eXto+R+Pyu1
         WbsOa/BtX66gXl/Go6sTl0XLoPnzhfCkmpGJxSroXEUNam7pSymPPwfrtOgpNKP54qq8
         FFo+cgDrwGBJVDNiKh8XQi3kuUEOJcLhE2szQdF4Po03oweA2vf1rwKOKvgiUFIpbwox
         7F0AWT+e+V3Ws6V0YKYoxbpqN6C8PErOFA1IYj4FvGh5NjRU7+xC5JWYCaatupHetHb7
         1+NevM9kMvyxUe2I1A84csrxSUFWp6snc+CTok9Cm4TPl7nNJfRmwZOQznud4psHjOj6
         zsTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uj+iurUi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uGi0cgWQaMYy2FYLRxSg2hJjHol6I3esJJxEKj5GgbI=;
        b=oSZBXS6fVPSK74tarGaYBVIwv4SmXBZPz27BMFoOfFwbwc1ZZWL7NNxNooiMVgLBe4
         Jegk8RP/4+jYWptla/OSVq1LPGgWqdM4fAuGZHfsCBUJ1nwalKHC7T7QG/AbBC8ir3Zb
         KU3LmXstHa6XxKOlZ0KUHe4yh3v7Scz1tQmG1XYYwzliVYICeuKQ3845nslI5q6mRvg2
         upPH9kayQWqx4kGaSd8/RL4gDBmVPM3cYClfAtxYgTrdG09u2CEyO7nJ4lllzYT/7/9P
         f/WW8EHNUf+v5WYBnZkdWbLPBMMmeA2Ytksz4A20CrY5xlfhMJYPt48q/iM/x4aNm6zY
         mJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uGi0cgWQaMYy2FYLRxSg2hJjHol6I3esJJxEKj5GgbI=;
        b=HdaRXDvOdj4hNr9Ksjnid20G3hCsSRH8eMTnEJphCCYZtnyGY5dJQjOW8FewnsnBMp
         mB3truHlR21dLhztJsPn8K36WcHCJ5yxKSn22HyESqM4XO0gYmKAA1Sy9h5Sv74e5A9m
         Lf/bTkcgEsiMWRIKXH9R9LYFMb6Bn1faB+pvTQ6TAU4TC1QmZBN38+VPsxQ5emWlt3su
         CxTQSiauzfbnbWTBQHbrA7GUhHnhpOFlp4oQivbmVENzcOyL2F6+BNdUAd0Vq/4nlqTL
         LPTcgjy0pCN+IWcAY+PQ53BGx5+UXaEV4oJ4bmnEHtv4a/X2AQ8ytRk4XVHhNnfaDdTh
         fpWQ==
X-Gm-Message-State: ANhLgQ0aRqeAf/TsiJHgJloaRsQLW7utS4x2RHhoQDdprV4CMHaegs5P
	rx9CUEsjA6Td0z9dGdILmec=
X-Google-Smtp-Source: ADFU+vsWT4Q1eesNAbTr37FiazATzQ/elckhGy790VOWp4JbKRLq5vqdmARoqTKIs/yyLBj+M7r3WA==
X-Received: by 2002:a92:5e44:: with SMTP id s65mr16563248ilb.148.1583783991054;
        Mon, 09 Mar 2020 12:59:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce82:: with SMTP id r2ls2759399ilo.7.gmail; Mon, 09 Mar
 2020 12:59:50 -0700 (PDT)
X-Received: by 2002:a92:640e:: with SMTP id y14mr15288072ilb.228.1583783990674;
        Mon, 09 Mar 2020 12:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583783990; cv=none;
        d=google.com; s=arc-20160816;
        b=qnQ5SoG7uTM05KrdL6kE75v6AmxGVI5XfBDQip9NhsLDqxymCJqEesRgqmAj1g+uph
         CN9kiiBezpL9KwN2Lsfof/I9shgIGyyBuZcQdUvzzsL3FC2yGK7tOCJT0fuDWft2ccH/
         4I+RcTT9xtEVDJjZz6VjEgDo94nEC2pYFfz0xYWJUDywQ8Y7eH/vU5/7j/M9LvOVDDdo
         47lDub7b0t8fibVIAWuv37SpRuQwpyx7WP70XsGw6ded0EoZYeULBwEKR7IAdl88KeCK
         vzKHo5jw6PCD2HiJvgShX4y3MAM5xgsZdmTZUPTBhyYHfdiFENjEk7HS9ra2aGOAO4iK
         Dsdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ApMKbaT9NZPQVt7nAnTk1K0Wu/E7soJBK3O0vo/SsBI=;
        b=j+HaFvIazy3zPyTfVOz6QkmCZX/kBD7nRKRFyCLjP31eXXM4Xgg0MemK/iQs/GmP7W
         GQgLgp95mxb2CMTKu66tKvY/SRaiGOT5/bAjYwWIMdvscqKogFFyF7KIdioVIDJfSjKp
         UxEIXDdpKwKoRR/PwTJ6BxaogQ0Jw8tdbrzfHgMSLyVUhTFW1r8JDP2N4hvSwcucWU31
         XBGn9WOXX9j9BNJuiGy/4yDZzGeGXvSdLgxUlRhoZWFeSz8ZIpLMAGmigipFbpT74b6y
         Dse5zfpNlGqdrTIqwVqPOXmFIdt5AQxbIqB2Ww4T/pPOiQtD/Njz05y6pQ0DXiOK7GVJ
         NB6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uj+iurUi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id d26si579961ioo.1.2020.03.09.12.59.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id ca13so369865pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 12:59:50 -0700 (PDT)
X-Received: by 2002:a17:90a:1f8d:: with SMTP id x13mr999711pja.27.1583783989605;
 Mon, 09 Mar 2020 12:59:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200309023910.25370-1-masahiroy@kernel.org> <202003091801.6KQQKZ1Y%lkp@intel.com>
In-Reply-To: <202003091801.6KQQKZ1Y%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Mar 2020 12:59:37 -0700
Message-ID: <CAKwvOdksxVa=NGtyT3hsuHg6SJG4CbNWAepf+dxwVDC1+36zyw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: link lib-y objects to vmlinux forcibly when CONFIG_MODULES=y
To: "David S. Miller" <davem@davemloft.net>, Masahiro Yamada <masahiroy@kernel.org>
Cc: kbuild-all@lists.01.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Al Viro <viro@zeniv.linux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	=?UTF-8?B?Ru+/ve+/ve+/vW5nLXJ177+977+977+9IFPvv73vv73vv71uZw==?= <maskray@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uj+iurUi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Mon, Mar 9, 2020 at 3:55 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Masahiro,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on kbuild/for-next]
> [also build test ERROR on linux/master linus/master v5.6-rc5 next-20200306]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/kbuild-link-lib-y-objects-to-vmlinux-forcibly-when-CONFIG_MODULES-y/20200309-115312
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
> config: sparc-defconfig (attached as .config)
> compiler: sparc-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=sparc
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    arch/sparc/lib/strlen.o: In function `strlen':
> >> (.text+0x0): multiple definition of `strlen'
>    lib/string.o:string.c:(.text+0x2b0): first defined here

So this looks like a bug in 32b Sparc, that we should fix first.

arch/sparc/lib/strlen.S provides a definition of strlen, but it does
not define the preprocessor token __HAVE_ARCH_STRLEN to avoid multiple
definitions from producing a link error.

Or rather, __HAVE_ARCH_STRLEN is provided in include/asm/string_64.h,
but not for 32b sparc.  arch/sparc/strlen.o is unconditionally
required in lib-y in arch/sparc/lib/Makefile.

Either:
1. arch/sparc/lib/strlen.S supports 32b sparc, then __HAVE_ARCH_STRLEN
and a forward declaration of strlen should be provided in
arch/sparc/include/asm/string.h rather than
arch/sparc/include/asm/string_64.h, or...
2. arch/sparc/lib/strlen.S does not support 32b sparc, then the
inclusion of strlen.o in arch/sparc/lib/Makefile should be predicated
on CONFIG_SPARC64.

+ Dave who maybe can provide guidance on how to proceed?  The use of
the BRANCH32 macro in arch/sparc/lib/strlen.S seems to have different
definitions based on CONFIG_SPARC64 vs CONFIG_SPARC32, which makes me
thing it's case 1 above, but I'm not familiar with Sparc assembly to
be confident.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdksxVa%3DNGtyT3hsuHg6SJG4CbNWAepf%2BdxwVDC1%2B36zyw%40mail.gmail.com.
