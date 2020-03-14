Return-Path: <clang-built-linux+bncBAABBY7IWDZQKGQE6PBK6QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 182461853DE
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Mar 2020 02:33:25 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id a1sf2281388qvt.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 18:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584149604; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqlkzA+gB7x02L48ojEE8cxd0eoUubo+oWH4JafJE8FQctqG43XhbbAlUXF3ufsoop
         fxZMQLTtGKJwXUMTaq93/OzAf0WYo/PNrVliiB4wWxPlS8NjDC9WA5BRXHjY86xibgW2
         DmNm9+I5+ajwjOgJb9S9xTsU8UEQqHtDWOQ0kMdD5Bs5F+OwQNjvfdcnFM8dmDKvfchP
         jA4yA+vu5FArNmwUIZiqakkqDX78QN5LSYw/fu0EN8p6/dGvW3Q+EUCMyB9PzZ18Jjis
         jS6sye5h6dwzxZxkitEM1oc5YZLdM+kbiS1fj8SIcPvmLmzBrT4pUixoQmtjSy70x0wR
         oWHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=9SDDY3To2Gu3JLr96yj/CckfOnk3Dd4X40Wzq3m4Lyc=;
        b=Rx3Y+F9t/dEX6ARb9vEZu+A1wQgQYTv+KbicdHNdEjTEeeSP/feZh/QPzDJj6XjKcP
         Og+1KmUNH6KNiXRmIblzX52B0KBl8FgIQCAOxTvJ/Z++jzYh5hzR87PdfwaxWQREOK5N
         G2NDhiIQr4s82gvP3X1m7XNOcgttv5Lv3kG2gPSAE4P8/14xkwGXWXdJ43CuTH+NbVK1
         Dsh0gU3VJ9Z00O7F3uja138972UwX9AQV6CKyM1wc1YUNsGBWpEpsRRuFnhfyel0ZnZs
         ms2Qpu5By/9iMvyyNQozzODBGv+apxL3V1dyIw3ckYabFjKDoY1YhojkczRZJ79VrmQ0
         nvFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e8UJRae1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9SDDY3To2Gu3JLr96yj/CckfOnk3Dd4X40Wzq3m4Lyc=;
        b=ldkaIF58RobLRCieHLMk6scDwLE3baSJat7UOmMj/zoZtJXbTuzmNJoBcgBoNvfpxF
         QVdVLFOmAA1Whzq/BSeG6EOr5Hm0xdK22dUkfjSpIe6U7Swf6hbf9W46Yv6die5SzGL2
         Cy/0jtV8MReBlb3dJ8sYL5Bq/rz1nctqstRy3fIPmXibmEhlI6f5jwRRcmS+NDXp9yN9
         65NKZtfd/nr/oIDH4NLr0APF/ZktN33mFTejgdG1wm9cnWVMdREfBg7VljoM2dcPQtRr
         f3YljQwq/3wF7CEn4VoIw+IYmsLZxEkXo1OMLRm2fXelJ69ZS8EpHqyi91pO102qs4Jb
         ZbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9SDDY3To2Gu3JLr96yj/CckfOnk3Dd4X40Wzq3m4Lyc=;
        b=MoqA0w2Ifw3fjeKk8yoORqRLYud34/hHl7+Tmk9zhTjJ3jSVF3uu4OHzCxLHpb7uZm
         t2Zu8aC0gI3Nv3K9apvP/PdtOsV0L7k31zBIyETil0i83lRAfyeb8ZkeBHKR4Cpi0dhb
         GkXvwbTdfMhBV2DZbf9OkWhxJIyujBV4P9TQUlpT9PJEOTI6V6zXizchYlEjThaeg70O
         n1vToNeqterxCxffyKoYPuetkOrZCbOnhbDFPRfRyhSgIPbePweFo27QUWAO9vJQ+578
         uAV1aAxp1ToK4hoJvPCp+/sBsyLd+IZVBSVRB1GIqg/eL5u9VSKHFG0QsulCyWLpJ+l8
         IOVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3vRaUe6QJkmyZeHVwdCHwVBzOmTwtN0rO7Kw5sVWvIKvLMUk7w
	wkiKvFmcCxFkLqbCfUhUKtA=
X-Google-Smtp-Source: ADFU+vsclZlJH+iTlu2ChLmT2g2AGHhR4SendsJ2U1vY8381LQLJ6knnfGHqJtGlk6jh5C6UAErUwA==
X-Received: by 2002:ac8:3feb:: with SMTP id v40mr15382276qtk.147.1584149604013;
        Fri, 13 Mar 2020 18:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7208:: with SMTP id a8ls4502588qtp.10.gmail; Fri, 13 Mar
 2020 18:33:23 -0700 (PDT)
X-Received: by 2002:ac8:1e8e:: with SMTP id c14mr14570058qtm.330.1584149603625;
        Fri, 13 Mar 2020 18:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584149603; cv=none;
        d=google.com; s=arc-20160816;
        b=ZkhiNuX+oI2z6Nmuzc/DhSXLWXfNBru7g3zk2svrcYv5LTBOBtaF1zzOsZokipx8Wc
         ndoLMZss/KsEg3+FRUejMYrDPVbErftb8/A3AJVSDKoDPbxVWF17zVFNSTQEr/w2njwu
         S5jAUKaFSRrKOHpKif70gx+GXtTt755FBe6oHP9z2z7NEXik8inPxf5fVK8InQGJqQ7N
         R5h3YWbqFGUlxEF3PPlHVHmmPHBIejLEhAi3l9v2pOV/RMaSMUsZlgpMZ6La6WuWQBzX
         153Va7d+SmQk2OGLDKff64kv8WfwIwqv5vgeO6PQ2udDzkwiAhYyE1I8eizvMt9i6cQp
         A4jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=aecj5qoz+QO3oCVXQl613LJGjLAsLDhInCVgRky/Qn4=;
        b=P5R/uV6sEdQMvT29B3fkhxCZaERY43nXurawQucppmdGNuX/Etfw2ZoQjJMvf6h3LH
         PZd5rEjwLWVMurB2IpxMsvhqDbmuv4+h8qJJv+X6d9SJIFk2QgILaC1f8GgCqh+PBB6P
         FQ7Ntmqdy2b1SvVPhaQu5ss20UnbZKDAAjcxrA2ITPMNNAS0+hPKrqSYZINld5saYzTZ
         xEAp2yIlKdyeQIbsp4JkaFFOa/Vi5Q8DHuRhv40pkDkC0DeaSLj4batzEtX7R2d9evCy
         Pal7c9WKXsjTHWeWXGrMjfG/EHqAGhpsObWkbUrt/WKtRveH9ye2qYk7XKqKkuwt+99q
         a6kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e8UJRae1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id 198si586867qkh.7.2020.03.13.18.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 18:33:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 02E1Wsve003159
	for <clang-built-linux@googlegroups.com>; Sat, 14 Mar 2020 10:32:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 02E1Wsve003159
X-Nifty-SrcIP: [209.85.222.44]
Received: by mail-ua1-f44.google.com with SMTP id i7so4057210uap.0
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 18:32:54 -0700 (PDT)
X-Received: by 2002:ab0:25c8:: with SMTP id y8mr10653606uan.95.1584149573443;
 Fri, 13 Mar 2020 18:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200308073400.23398-1-natechancellor@gmail.com> <20200311194121.38047-1-natechancellor@gmail.com>
In-Reply-To: <20200311194121.38047-1-natechancellor@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 14 Mar 2020 10:32:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNASdzfR6iewpZY8z4Ln8tN8GxNxgnzk2tPsOBn2v4ZJvwg@mail.gmail.com>
Message-ID: <CAK7LNASdzfR6iewpZY8z4Ln8tN8GxNxgnzk2tPsOBn2v4ZJvwg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Disable -Wpointer-to-enum-cast
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=e8UJRae1;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Mar 12, 2020 at 4:41 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang's -Wpointer-to-int-cast deviates from GCC in that it warns when
> casting to enums. The kernel does this in certain places, such as device
> tree matches to set the version of the device being used, which allows
> the kernel to avoid using a gigantic union.
>
> https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L428
> https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L402
> https://elixir.bootlin.com/linux/v5.5.8/source/include/linux/mod_devicetable.h#L264
>
> To avoid a ton of false positive warnings, disable this particular part
> of the warning, which has been split off into a separate diagnostic so
> that the entire warning does not need to be turned off for clang. It
> will be visible under W=1 in case people want to go about fixing these
> easily and enabling the warning treewide.
>
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/887
> Link: https://github.com/llvm/llvm-project/commit/2a41b31fcdfcb67ab7038fc2ffb606fd50b83a84
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---


Applied to linux-kbuild.
Thanks.


>
> v1 -> v2:
>
> * Move under scripts/Makefile.extrawarn, as requested by Masahiro
>
>  scripts/Makefile.extrawarn | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index ecddf83ac142..ca08f2fe7c34 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -48,6 +48,7 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
> +KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
>  endif
>
>  endif
> --
> 2.26.0.rc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200311194121.38047-1-natechancellor%40gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASdzfR6iewpZY8z4Ln8tN8GxNxgnzk2tPsOBn2v4ZJvwg%40mail.gmail.com.
