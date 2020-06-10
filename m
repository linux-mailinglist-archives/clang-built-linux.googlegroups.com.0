Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHWCQX3QKGQEBE7J5TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8371F5E66
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 00:39:27 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id f130sf4171406yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 15:39:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591828766; cv=pass;
        d=google.com; s=arc-20160816;
        b=irQjjDhVK6cop4bhQpqp/2fMlVJz7w+43aleQLLyt3lyq86O9wxdpfiu6P9DS/MhaO
         Zv5kB1gYSTX7RokeFfK5zO/RMabRF/szOMrogaC5taF1Q10xYmaiRlXI6WrNY5jlZOdp
         5RfAupv+zpVZ9EWzudqGgXGaOGt3kTlcPgFPPD3wry1ldfq76903L3YcpR/kjK6OAfYd
         sa9yQKmJUR0CfPYiwE6CP2/e6Ua2n7gAq4lj56RmEW28KB7kZjmyQPkUUJYT+nP+nQm/
         emh/5tOyZhGVL18Vyl4Sk7WZKo2IsWJl+1AzwFCRotWPXLwcKG52qviwjvBA0TSEhV1E
         yxtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zlRs2T8eF88KmhxGH9/iG9+/KxfsfFrQBMQQU2C2h9s=;
        b=yhit+nfmR8VOcZLnn0WA+7hT9zk0hR58mlk9gUQMdgERhpYrXXkGuitnh55fJMV20L
         fnwPKqpyHiBQifLAf3bwNglATQUqvKjeEB1OiT1cUH2l4QYkhib3YJuvSTHv0hLO5b1b
         9p+5A8qGkAlmrBsKgvRHlf9E15/1QrkO/RKYJOAnVy44m1nWHj3jX+KB7nYdh0c53aKh
         uDbbKbdLrU2o6mM8kF1eW2wohdGEVof9zqa7ONaMJM2xq+NH9igzNPF4MHYK07WNqmH6
         X5iTbug0qDwPGTcw82S5QMVtfgMCI8GBBV5/qxl8u+N0TMEyl+XuOZmS8BkednBQdi/G
         yVpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gWJaEWCs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlRs2T8eF88KmhxGH9/iG9+/KxfsfFrQBMQQU2C2h9s=;
        b=TKmp/9cxxTyldfgdt0zGNVLeCAY/pCIGtG3piDuFFSNlLKWKwWuUIty2/vlUSI8Pol
         H9/tb6aRSFhCHAiDC5z3k43mn+9Wks8ATnZsr78QXmNmDkfeYX0f88zY7qSNYNwWiBAv
         bC9mx1FTzaoAju2Ymj+5GqVpCPJeYSVqBjcoa5lWs+9q7MDKAxrvKbtayfPOS4daJYOn
         HakmiNrRHQd5NT74sKaBVixLavFcchtm4dr3C2rZqODZnOEy0FpgmmOHXhZuANxnCJTx
         mPvRlKahS3IVwAaIfELzsiZ/cDadaRag49MhqyEWMWExKoDXO0PZq6/CG8p/Cqu4ua9w
         7orQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlRs2T8eF88KmhxGH9/iG9+/KxfsfFrQBMQQU2C2h9s=;
        b=OvBqWtCuPRXLqq3V4ZtMhQLzRvqz9Qr6AE8JWWq0zIX0CIM22e/My7V068DOvnVooz
         WJfnekJqgRGIBQ/kZbZ/VqlQ0MmjRKTQhy+GaV9bhPYqSlLFjFKfkufbHuMwGImDkh/Y
         AL9U6yNa+bA+vDa2aoWiEadFEye0rKa6yW2O1TYtRys6eax7MzlqF4g/zkFTCt24aU9k
         JxtqOmhq0mgG5JNMKAqRNvLLcrG8pOAmxo81PL/ov0PfIxhy9NM4qgethWm7UB8wBqQt
         LYQjBXlrNkM/IG2ogKpWn/kJRqBKZ0z+ZWpo3GyClAc5TB2N+oJkc5O+/jQugJQH579N
         aLLA==
X-Gm-Message-State: AOAM532gg1ghbIbg3eK3KLfajE/N2Vjf2Cmo8diJk9AwlHkYZ3OH0glK
	nghXXXQ7Y6zWsA2szQPqZgE=
X-Google-Smtp-Source: ABdhPJwEm2juESMQzFGiG/GCaGDoarhMKlRErLoc4hm3U7znWQWQGH3f3mosKQtFhfOSLL49EbJjLQ==
X-Received: by 2002:a25:b8b:: with SMTP id 133mr9334847ybl.373.1591828766369;
        Wed, 10 Jun 2020 15:39:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3412:: with SMTP id b18ls116302yba.8.gmail; Wed, 10 Jun
 2020 15:39:26 -0700 (PDT)
X-Received: by 2002:a25:d4b:: with SMTP id 72mr9903442ybn.22.1591828766013;
        Wed, 10 Jun 2020 15:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591828766; cv=none;
        d=google.com; s=arc-20160816;
        b=o94UD8DTNMuF4bNwK2SdpD0SxaZ7Xjs+/aSb1CmFLTQlcTj9kj39vIW7CvgWpuidnd
         noYXvsjEcSVzgZFANDtVPQJHifJ1xatwK+sXPcpNlFO23w68ihJmWz8TL3+MKcC0mf2W
         QEzGr2p+IeE/BM8EdUXeMuvEQPvQ04bvWwkqFQEvz8N3gISPWtTMBgoyqOp6LatZ2tjn
         h0h5/WzloFFTe0uuSpJdy6N0kQyZMjVH3XoFrsfK4w6p5fWQL3Gi+GD6qz+y2ZqeHLZ4
         jNUXXsdx+CN0GxN703z/wPjfmK77GBjJQd8ZcqNBPDisLxshxYPCixJnj0uHpkbnnLVl
         EH9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5KodgT9zeDmXd3APuTSa8NvRwgHzkjF8T9iF79wBn/0=;
        b=Q1RUp/+0Dat+rGHvkVRAF9YcKcYSf+zzhoSKytsYPGvM7zGCcSVKzmBJL8Nbokm5OU
         Vo+SYvb6USKEcvbqvyzDlAoNdPRMAYbdQUfdUuBAlQiV4+7DZS+r97MSBUexvFRFMdCZ
         Sbv/mS2TicWhCVymoqmnFxD1HLQaZjiDsnbFkGpKveN5ejwkLTknRpbyHQMAeMln4bx9
         JLnE5jR76OA0m0p+wjNF13LVk2qTq4f1Pr6dNl46TDUod2V4v2z1G/rSnRNc8SWQD28H
         3ylqF4Y4BOA0oXbkyRY5Rb7AdvQPxwbnVg8oiEhok7uFO4Y6FnQInluB0Xrl7AAEzMxD
         Sd/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gWJaEWCs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id v16si118004ybe.2.2020.06.10.15.39.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 15:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id h95so1516504pje.4
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 15:39:25 -0700 (PDT)
X-Received: by 2002:a17:902:7201:: with SMTP id ba1mr4714704plb.223.1591828764916;
 Wed, 10 Jun 2020 15:39:24 -0700 (PDT)
MIME-Version: 1.0
References: <202006110336.RmmT7Cye%lkp@intel.com>
In-Reply-To: <202006110336.RmmT7Cye%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Jun 2020 15:39:12 -0700
Message-ID: <CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw+H9Z2rR9f9nFg@mail.gmail.com>
Subject: Re: [linux-review:UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
 1/1] ld.lld: error: unknown argument '-fPIC'
To: Fangrui Song <maskray@google.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gWJaEWCs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

On Wed, Jun 10, 2020 at 12:43 PM kernel test robot <lkp@intel.com> wrote:
>
> TO: Nathan Chancellor <natechancellor@gmail.com>
> CC: 0day robot <lkp@intel.com>
>
> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200603-033008/Nathan-Chancellor/s390-vdso-Use-LD-instead-of-CC-to-link-vDSO/20200528-140859
> head:   b19361026b76f9167c9206f654b12f53023550d1
> commit: b19361026b76f9167c9206f654b12f53023550d1 [1/1] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
> config: s390-randconfig-r021-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390-linux-gnu
>         git checkout b19361026b76f9167c9206f654b12f53023550d1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> ld.lld: error: unknown argument '-fPIC'
> ld.lld: error: unknown emulation: elf64_s390

^ is this another inconsistency we have with emulation modes, or is
this completely unsupported in LLD?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkn4S_BtizLrur_5S-QT4LWrNn4mOfvw%2BH9Z2rR9f9nFg%40mail.gmail.com.
