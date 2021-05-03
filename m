Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBN67X6CAMGQECU2NFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 40955371556
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 14:42:32 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id s8-20020a1977080000b02901ae88fbe012sf2845192lfc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 05:42:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620045751; cv=pass;
        d=google.com; s=arc-20160816;
        b=sF8xP+042lv4tPlyqOSw3+TfGl2+6C0/Vhp71CTJS5ORZOFF6IcBzcC0xUM5cvMY5S
         M35feuwLwwM5qrngK/fESmp/RiLN7RgNQKhnN9LX1qirSPPxN+IXha5gNoeuki3IZ6RD
         jGzQSt0tFVHLcAmzRZlhYFaU7ziO+ax41jEO7tW6arqGprJ13EgB/CeM6UgaWzX4T6HQ
         Owriv/OkWE99loslBnHjB50UQFOU586MxCqFMu0A7aI1dI3gwimDIOqJM2lhuOsgFRy+
         CkKLeBv2yQ6ES+PB4szTD/vp7LQVyBW0GKENll6ECI1Ix47ZPeneW36zjmBatQ5k51RS
         jt3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=a6C3j/5XCap4I79Wur3oJHJAAeRvqgHbLLzz3yb9Wbg=;
        b=HQvDN1ceAWLpIDNnAv9vnIIH+DC5eQtbQMrgl+BbBdYxQEuJ7Djb+PwH17PXE65DjM
         ounTqYhFMpOjI668LrKYScunk9o1Ex0voqCgL5Dq4bjAg3MFuECbx714uieIm99oewV8
         ELqkQzEYyfaRmfsiRvgjID6MnUREy7NHAhmWr39NyI95ef4z/KSipET+Aj/Ig45s4h1X
         GOHDYDbKmHkpaiMxbdY6Qes1wQZnCAyT8Jvv6IrTgy6cbnlT6HWZYUQmDphlqv+j4m8O
         JLbkOyYnXMXjrsowAanPrploeUWH3U2QavO+e2E3zxy/IDQ8ZQan9CSPpUboM13eqTTa
         acJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a6C3j/5XCap4I79Wur3oJHJAAeRvqgHbLLzz3yb9Wbg=;
        b=SAXJjspNIhro9V9QKfsomvFNTZDWy3ocYkWkna17p7R6imUCOem10DEdRWtdoKZ42w
         cm4NKdo23yaTYnhPW0gY8oZpgtvWFAGikTPtPYgMztt5jh9mSXuwxPHFKjRdFjYUxYa8
         KBKlfu24EkJhBjx9lKEWX552aIpXZLAiqk6NgTeyMBCmv1RtsqwU29brMazbo/Tt5S8F
         TzeQNCMN69KxE47vmuT9D3YFJ4zWJRgReLs9AeB1xsKN9gGzAAmLGBMV2y2RAlwKhQvH
         XQFrwPYXIPjZBnmmuAuIDbnuERSq61jfZCaOVnSeq5g+MIj7JkqaKXXuOqTydu0EMNVV
         7K3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a6C3j/5XCap4I79Wur3oJHJAAeRvqgHbLLzz3yb9Wbg=;
        b=roPKHm41jx8iTWeuM2ZOb/ddSh1axN6UTkuBYH0eJMgnD0UCUk717gyZU6KMyLvmsA
         se2mydRu22vkSK/D8fafpGg5VI6wnwRccdOZ/56z/s88w5w0QybAq8bu8lwuqmFWz2mw
         Z3yyeyT4phSklDh6rbc0Di/e5AnVTvyy/2WeG9qhivoDjTW0crO7gYSeQhjIFTf8E2Ra
         aXGiFNqaZ6rhypcK/RSNm98Ul09whI+SuFJUCLklgoi/ijMuvDJtC5ssEhodl1Pr9kDK
         47LHJtZH5P9n89/VjuwwnsJQzh3YrjGDV0QBC3MyGtQty/AtXz0TY3hwmzSg7PnZwpqI
         JSeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yytxLugxSQUSZjuNPJLDxcY5fpWpAXCY8JIzdPgCcZfIn5FiH
	wVScCVYSof0VfFNtjN/kJxA=
X-Google-Smtp-Source: ABdhPJzzjs/x7VHn3slV9iCNR5Mkg+5U9fT1BlnIitA97QhVf9EeXPGRFD5FxkPOzJCt8Dsnwk67Yg==
X-Received: by 2002:ac2:5330:: with SMTP id f16mr2713976lfh.592.1620045751770;
        Mon, 03 May 2021 05:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls191769lfg.0.gmail; Mon, 03 May
 2021 05:42:30 -0700 (PDT)
X-Received: by 2002:a05:6512:2294:: with SMTP id f20mr13412338lfu.85.1620045750784;
        Mon, 03 May 2021 05:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620045750; cv=none;
        d=google.com; s=arc-20160816;
        b=aXwz/1RikF8Y6Fepfm3sLftwBdWazsE+XFJ1sMzgpfvoHx3edC+Wp16UWrkrJt/5Cv
         /PjfwyfTBtlutTv14sFjtMlRyh4QJXdn4SGKA0ZaKNNvpLREwvtXrPQArUI9jE1RbVMv
         62+diNvRZlbMUF2s905Zt9in9/SR2Feg/3gFrd1vHDNGWDVkwxQYhRuvsYR7tL0Ron4w
         50hqRJkcj8+Aek9jYa/iI70szbGW+iYWrMoMcK81T0muzSEWuiBoeZ5OP4xo7nP+VhcD
         v+eoOa/EL4Ad6bdkt1tkheiXNfey7kRB+bZOpsNACeN44UEEqFqKhkcTvY5I6nK6fXp7
         tVCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=36quXIEpsVUBoqifV7ACgdKYoHqQGbPYF+cbB8wEWbY=;
        b=JgHmEHiuKcB7d0vh8NJKR1Z7ifaO18dfiYzqkGFt5+aQafTq9EhBYds3mClm1LLXwO
         N3IUzoQvSDqkSqXQTziuGzjtfz8sE1lcDHgzxW+hsxGih6OxbJun7ZNYqS00iVf6aDEC
         pq4yX8nGGeQu9ayb+1gHaua3ggcvCmeMycmx3fEbdO/RaKif/DRENnAk31ioNhR1ZNdU
         k3aL1SXyrzSMH7BbnN6nh2lFQCu2ogWBvtrScqGT2layAFVoYFDzS2ZRgskXe5jtvJUZ
         MwjDwuwrzExPSWvSJPMipGWxtl2vcOtZbsVBnZjJtwbKTDkga4n6va49tCj4xAXhm3DC
         lQUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id z8si315611lji.4.2021.05.03.05.42.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 05:42:30 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from mail-wr1-f43.google.com ([209.85.221.43]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mgvev-1l52Ql00uD-00hRFR for <clang-built-linux@googlegroups.com>; Mon, 03
 May 2021 14:42:30 +0200
Received: by mail-wr1-f43.google.com with SMTP id a4so5397400wrr.2
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 05:42:29 -0700 (PDT)
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr6961702wrw.361.1620045749718;
 Mon, 03 May 2021 05:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <202105030311.xWwkyV9z-lkp@intel.com>
In-Reply-To: <202105030311.xWwkyV9z-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 May 2021 14:41:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
Message-ID: <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Sasha Levin <sashal@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:CXvooNCb9RjF/LJTctZ4Sh9aai72wF5JABwQ6fy6/wi0KM/BJBE
 DtjSp2uUpr0oMWBh1L2fqKKgFxZVqjqisFn/87IebZC+4isEzPSG1JU7mYPP9W44aobzM04
 jwKhZi0AF8+KtJz+mZyAZNqG5xGzGDVDcE3ZqNwfEqQEsDjuMVITiYFthTLuWiUmFcXXRa2
 05X2rqVWVXFIGoTXPI5bw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8J1amj7zOh8=:p6/ymdX4Fu2sDiA1bny29/
 q4Oe0j3/tkfJb81YklLVOKJweshoXkNZlC/sBX8nU4WAYxVYbuNJ5mzPVswOOg/jmg+ejQERq
 W8WFx2qyNGFJZpZvUj7LUWOBn5jg1j8k6jiLmPMj23nbEB9FEB2Gr0KlVNR5p+Wn1HlzgMZa3
 1Om7CLzj7vrf6BXGxU+JNPilcf1znDhQ43RokhtTpIKwAhsrk8/Pk4K5WViejw2MPMfIzuEHO
 NSqqDgePDkKOMMXwgH6LH1xYg0nsEK0pTYyCOEYOK2fAjrTKcoYUySREpYGSzaRXCQhDNswS6
 /WV+dJz8C4Wvi2GqtZJvUfJUzkdUXmupTovpfRDSM/RGCuFEH8LqAPiYMg1Qr0ufAMIL5imTo
 PCkPJxLnMvd3E3vLyDgMm4a/tTJtkgZmO3OI0xImNXirb8lPcF0huV8dSvoX9FvXvVO9OQpUG
 72CwaibsVIA1bIsQ4cfW4vpQ89wLA8guxtqHBgOgUzSIOMCjBhDBU52I2m4q/WI3tbaAHVVuz
 BpXs3HF89g8FH/ivheQYLJY0KOFIICXqD7DmUn3grVhFge/6tnS0ccz2o3VVJOmBKdaEXr8+s
 h0kk/m8Qo++cfOfPD/gtlE2YMLTxQ+wEEy0D6scZOa+CMq7BmuR1H2fikWIYuFy9wO/dTj3XF
 DwgI=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

On Sun, May 2, 2021 at 9:28 PM kernel test robot <lkp@intel.com> wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-5.4.y
> head:   370636ffbb8695e6af549011ad91a048c8cab267
> commit: 99f1960cae4f417d513be5ea55136383c2a58798 [5541/6083] stop_machine: mark helpers __always_inline
> config: x86_64-randconfig-a002-20210502 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/commit/?id=99f1960cae4f417d513be5ea55136383c2a58798
>         git remote add stable https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
>         git fetch --no-tags stable linux-5.4.y
>         git checkout 99f1960cae4f417d513be5ea55136383c2a58798
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!

I'm fairly sure this is unrelated to my patch, but I don't see what
happened here.
The function is defined in lib/memcat_p.c, which was added in v4.20, commit
93048c094415 ("lib: Fix ia64 bootloader linkage"), so it shouldn't fail in v5.4.
The same release also introduced the only user in commit a23bbec205b9
("stm class: Use memcat_p()"), and this is the one that causes the failure.

I also see that drivers/hwtracing/stm/policy.c is the only file that actually
calls memcat_p() (which is an inline function calling __memcat_p), so it's
possible that the $(lib-y) object gets dropped by the linker because there
are no other references to it from the kernel.

However, in this case I would expect to see the same problem on mainline
kernels, but I don't.

Adding Alexander Shishkin to Cc, maybe he has seen this before.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0ZdZY94KVwF-C_t%2B7rx%3DiHC60ty52AQAmc1VDZwsn9Rw%40mail.gmail.com.
