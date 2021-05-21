Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBIGWTWCQMGQE3LTQFSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id BE13E38C177
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 10:11:12 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id h18-20020a1709063992b02903d59b32b039sf5752953eje.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 01:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621584672; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAcOOvweGMEST8d/xx35Zqu7AgSoYEGp5vVjj3r50DNM6G14f02KLctQDlcbS+Ocpl
         iRqdj6GlA5kNNucLUlkHrx5K0MLzrDL6jWKSWsCBavD0fpO0xiJWVaCj5H7TujiNZ6sg
         rOWV0JauHw8DvuD2ox5xvbN5T1wB/DABM1eqIJeD/gn/owdgju0qYMaOzfaQUY0Gd/k7
         CWHtcUMKCfo4uvyBOwBQedFvlK2gZvO3Tnf/fCAiy67GZzkLGXpUcU0NaEmZObUm6lD7
         4sWmF4fbqCa1tCYZqsk+KlajsoP+cczDvm09REKXLrVZ7GA6BsWF6RYDNO5Ai3U0yPHD
         apvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8FObcJ6NWIUbW7AlWRuM0m1fYnOJQ7/AtQfqYvbt5RI=;
        b=qnHaDNJy9wEVFt8TXd0uJoeCR/qRrKddMuaDVslF6diJQ7Tr3QokBUHQ1LbygeLwgA
         /RxocKHnkr0D6LhZTfyea15iEzkmciIia3ZaHTi4WldzFyPNm1jhRrQ4UqtyEgu/0nDy
         H1A2mk2sU/LfruQ/0Igc+gcd7MPW0sJtw0COEvrOUqzHLa5bsfsp0tEhWDDUb67chFvc
         Ng5EPbSUNAp9pdhuCy41Fm4GuXLPMIlll/6AadhRHuXM+GGwY7S+/O4SgtuRpQSzN+Nn
         H4svLy4ydnff454rDrRqAD8Q/b7+iXdzqM1CB6hKcnR2M/N5XM4jN62nhdUTkhmkHO14
         X7BA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FObcJ6NWIUbW7AlWRuM0m1fYnOJQ7/AtQfqYvbt5RI=;
        b=MgMgxmAnVFcMqvs+pupcpOhx1Cug+SzdVSbAWj+x/xnpUYFd/tfRM1avlBdiVZ8xgY
         tu8xGfTUs7i1UmpifB2joWl6eE9gxAqNCqvEqFA1CsGUi5A9eN9ZGr9Fqp6plW/0ctFW
         XRciyAr/9U2I2igqlGHbDO48GfRV7wwM2K8XaqlFpVn9qLErc70uZ3fsn3+jNDBTLF9p
         L3QEq+sNo5T/QdhrEXc+vanFdaCsuDH5wTSJSYyWI79VLMdr0jYQ/Z2Smg08BjGoDeIg
         ps2gDaHq+dkv0QHNaBkblbKIxJ0r2ZMPKr4VIUc2lrznyLZQsBZU8Nc6yWc4KvgHYaJe
         4bsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8FObcJ6NWIUbW7AlWRuM0m1fYnOJQ7/AtQfqYvbt5RI=;
        b=UdW18RtwurhFy+ogtDt12kJp3teVT/bSwAqVqR9Z048ora+kbiVMx4gfcwBjIQlbH9
         Jx42iWEvVLiOMQL8tljDIFDE4vqUjkygGBsKBDc1ygeiTaz9fn2F/Sqg9fEWHAeHC/OA
         SEdF4Z80jd8/3W1IQxTn07sRm0H3Ik2ZfRCg/pEzCQmtwouXOmQFAf26dNOpiK542DaV
         6k7VjQ6lkUtarZsuHQL9rer6Ikb6BwZHbKBlgESsfVTRbmOsO6p/L1OBX9TuZ14ORLUS
         RkjozKrn7rtN2bWNaFPqMC5Fa7oS0LdWoAV0QAq9J1VJEjtJ9Imx+dLHp/geHRHN18XQ
         Pjbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+FXB3dX+wq6DKq4R7XZhLgWS/7JgjYKWMXJOONUMWhbU1azy2
	koQGyWszIvq+/4PHxZVWBsQ=
X-Google-Smtp-Source: ABdhPJwqCvKUHebgChcnfLdYLigQvjn68ZqkWVWOf/CgkGuYwUTotIwu5gWHkClo9RtKdKS66/7Yrg==
X-Received: by 2002:a17:907:6289:: with SMTP id nd9mr8919494ejc.384.1621584672538;
        Fri, 21 May 2021 01:11:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3bc8:: with SMTP id v8ls2631935ejf.8.gmail; Fri, 21
 May 2021 01:11:11 -0700 (PDT)
X-Received: by 2002:a17:906:7e55:: with SMTP id z21mr9277900ejr.225.1621584671692;
        Fri, 21 May 2021 01:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621584671; cv=none;
        d=google.com; s=arc-20160816;
        b=hklbLjhIlnBWEFtO4noE/wILj9aaL1OGvAHXJqI/4t2d5CZdgy0fXtHCzzuXqV1WM3
         +6t4MM91zO51J/Uz9747JAETiGWyctRa/5Sy1XUVgPCujmRY4uT6moJPM42Nn5/Tgt3k
         Lj0AWAaP2OQMgUEb4encuK0UwBan6ckGk/+z2QGCciCFmwLC9sM6nR3PJEYiO43+wHKO
         Zgv2rPVqFFfU0ipa/ewN2STD8559fqqsxIKFLc0MXdZqXNHHwttTArh3nYUCoonLVIe4
         BmzeufzpjskU8wrYN9nQkNTI8v6kp5SH3qCYmnke84vCHBiV0/TyaFVjKsLc4A6lg0fl
         OBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=HcKxsG9uio+aCoVQONdqCJ6jwuHIFMYZi0TQSmc4Eww=;
        b=cobcCBina/H0jjkhBKpfEOQivlDpBjwvxsrZN+cppEgmGVfYPFY26+1KWC4kCTWFTv
         UvBqPwo92dpfaa9imghZUS34189KUbjlYvmPiFuA98ma7YXTWFZvkri98Eei/1nf78NX
         JsSgZxM88VXKUihl3cWXIxTL9aV7YER82QYXTFr9iSXRn7aXFHvH7zVy768X3RNq60sQ
         qJ6NIc+oC+rzzzgvDQzvGlOBre51daMZEjTI2NOzQL9UeXAVaos8y+j9/WClpbYDqKPp
         ossTJwGnfiz9cuzhyWDVbvrH2j+ftcd/kZsZCsXVCPA6YJvjr8D99dknHrZ7bhAOoe/I
         gptA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id m7si241068edq.5.2021.05.21.01.11.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 01:11:11 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-wr1-f52.google.com ([209.85.221.52]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1N33AR-1lKSYM0mTd-013QlK for <clang-built-linux@googlegroups.com>; Fri, 21
 May 2021 10:11:11 +0200
Received: by mail-wr1-f52.google.com with SMTP id q5so20109850wrs.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 01:11:11 -0700 (PDT)
X-Received: by 2002:a5d:6dc4:: with SMTP id d4mr8471815wrz.105.1621584670833;
 Fri, 21 May 2021 01:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <202105200357.eXI65Gfu-lkp@intel.com> <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
 <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com> <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
 <9df0d465-d671-d970-4b45-61af014749c9@intel.com> <20210521005724.GA3353474@pl-dbox>
In-Reply-To: <20210521005724.GA3353474@pl-dbox>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 21 May 2021 10:09:54 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3e4zygAJ6cwWAtZey_G_NL8-+BFwB21GxMA-zT_rtGgw@mail.gmail.com>
Message-ID: <CAK8P3a3e4zygAJ6cwWAtZey_G_NL8-+BFwB21GxMA-zT_rtGgw@mail.gmail.com>
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-5.10.y 3189/5262]
 drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in
 function 'dwc2_hcd_dump_state'
To: Philip Li <philip.li@intel.com>
Cc: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nathan Chancellor <nathan@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:DgGYomFGR0IfcYHyal/WQRjijsUUMX2GRjVQM69c54JG4I+IN3z
 6q/JMR8Pq5HK7zv7T5P1IPj33++a2dyB14/wCAkjmbGqz7xVKaGS7FWBjl7za5L1ROfXGOQ
 zo5zQtMLYfRMRRKIHMzIzfDEPBLhMWcZ8Y/EkDwXIbFxoKYWbYJ3IkpZT3I1ovj1PLi1xRC
 h8kAkZW1BwuOg1klQ60WA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tM9tAtLa0dw=:t2xIcDGrTVk/BpIuh440Ax
 EhfQjoVTYKA7nbYyxJqNTgXgm3v0P8ybD8m3zP/wDwQtQvlBnNbbNFprDhjkS98Erdnh32Sg5
 zpsm96FhTRSZY8+P7/+HvehiN8wOGErGB6r57GiQFJdIVHRW+JlAxlCu8LL2bZC3WK+4jTQJ4
 yb57Fd4x1WwY1eRkb6gB7x3XQ51OAKiyoAQ1pRjR4dEGWipQEO3hLRCADlTFFAwtCWKgSSOtD
 6SQhN+sgTdWGL7iAweSQmpHaypdSRiHHN0vLSLWG5/6+tn5PZc8pmblcwFMPBM442N180jyT6
 363xZIjv9sgqgYKbvyrqeY0MYlqm9soQLxgUqpvVn8nBZPKVl8PaCrMlBLKsa0MzNaCGLmnG5
 0e/HWy9yTuJ+mpBGSeaqizb6F76dITBhGXXCoOKnZM6/Tl4WjYSgWIuiUukjFCCx94fNVjKnA
 KrcmQpCq0SPh0Ah+NIr7A/LGx4FG1uvgnJLvtUVZJYvEOWreiwvp1EBCurJFAadAcywdwyLG7
 vruvXl6bmTLlMhbqGumdiw=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, May 21, 2021 at 3:00 AM Philip Li <philip.li@intel.com> wrote:
> On Thu, May 20, 2021 at 05:56:35PM +0800, Rong Chen wrote:
> > On 5/20/21 5:27 PM, Arnd Bergmann wrote:
> > > On Thu, May 20, 2021 at 11:22 AM Rong Chen <rong.a.chen@intel.com> wrote:
> > > >
> > > > We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
> > > > to avoid reporting such warnings again.
> > > Thanks a lot, that helps.
> > >
> > > Have you considered always enforcing CONFIG_COMPILE_TEST=y for any
> > > randconfig build? That would address this issue along with a number of similar
>
> Hi Arnd, thanks for feedback, we have talked about this internally. We use randconfig
> to cover different combination, some randconfig would have CONFIG_COMPILE_TEST=y, some
> is not. For now, we also want to check the kernel build status when COMPILE_TEST is
> not set (as if this is a valid kconfig combination). Thus we may not always enforcing
> the y here, but keep it as random as possible.

Ok, I see.

(Adding Masahiro Yamada)

I think there was a patch in the past would let Kconfig detect whether
a kernel is built using
'make randconfig', and add further dependencies based on this, to
detect combinations
that we want to avoid testing in such environments. Maybe we should
revisit that and
replace the 'depends on !COMPILE_TEST' checks.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3e4zygAJ6cwWAtZey_G_NL8-%2BBFwB21GxMA-zT_rtGgw%40mail.gmail.com.
