Return-Path: <clang-built-linux+bncBDY3NC743AGBBMFT3X4QKGQEIJRLDTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6010C245073
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 05:42:41 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id h68sf3003391vka.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 20:42:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597462960; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+n0PGaEmY+Nh2UiY/vQ4AqEt2yDTbO+vVJWGFIIPDmogTc3ntC6VG8+qFSrm5Z0mZ
         OyPfzdzB81d2gLYF7LGg8hknSSZyDAbc2dZKWvNnZGTY6H5JnekBOKy71ol2zMIlVS42
         ot79HfWK7ze7fdo54fkCPEbSOw8YBjcjV76pHp29fQ1fO+n91YJ4tFqr5YJUsLlIduKf
         dD28/qwFMUB803mD/wW0ONvWuyw9Ggzx3Ubps1QeH/qLhAJjOK4AKFZogwpCtAerXSs/
         hcNOk0I70mRik3DxMPJiQ/f9/uyoENoYITuX4dz9Tuc1aVlamsWAO0xobAqFtDuratR6
         TR6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=uFi3lAn6W35Ddj0oYupWCubhkSljkaKYcW4o6CPvnu8=;
        b=olUlYttj36P2df5uyjg/VSOwDNERMUeIIvPf60E0LMAtVCQr67ZtlxluD22zzUwViC
         A9Zbd8SrzU8wNjyxAboodNjO2RVJdifMyPnI53jrzn+c4cc2tivWpVLpQ2hgLFox+d5k
         HR4f+6bUDxS3KEDbQTgUFg6ttm9ZcexHI37YKkq2mzpxkOXV1ZGnZfESO5+LtcIUWFmf
         eosLOxXHYcpd/PUzAB0bYhcBsMDMgv95Ua1t3dpmsDyVwBXqVJRKd12duJ+C4C5AChqC
         Z4ONDSSVdP+oaIoxTqYbcw+ZF41SK91ZrX2oFkZ+bkoaVRIOVQ/ld6JaSAvm658+IT8N
         I0gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uFi3lAn6W35Ddj0oYupWCubhkSljkaKYcW4o6CPvnu8=;
        b=DD+yoQetT42BGhgvJKM9Bng/6PpOPHjp6QppPqkwOM21+BsFT4539CH1im4MUOO8MN
         QeIQGynIGFOpVRgsEVi10NveFeEZAHMVsAXZqZGE5+UzCPpnJczu+byUWVeMp9jwI9K4
         RFLG5jrczWlIkqoxu6z5ONnC50PNgKvEVOptBXaV5OT5rOD5ePxcuP5x7SmZDd0XHmeg
         x72W5oTNIJafJIu24hAZMDWVb94JYxPg+gOWhMChC9QpFjANMgc549fw5kp08/khFSwS
         4RJbevMiCAW9UPvpJzAAkM0k8zmt0fY2BOPbVonkoaLl8U05KCKbiaJhUnBfAmaqeNXZ
         yzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uFi3lAn6W35Ddj0oYupWCubhkSljkaKYcW4o6CPvnu8=;
        b=G/DH+TFHjzDGeIAUIoYPiZIiqlh3u59xM0UjGcJZmoKEwGzGdBoC9A7Tmr0vfSTau6
         AbheLXHAYS6smanB1SO3Rp7RnhJPz4Gmm0bP3HlaqxxvYE7PyMKyfKylyHY1ssvWZs4M
         04e7TMDhysS1r+o7ek5aXfpnM9cX6JuUal+lwephGJseouvfP7dKkU8OMdCH8xEL6P7r
         B4Je1FjPt2J8BTfrPqvvFQwx5EYFzoJjmDVrDUN8tCFodtjKz4A+wFV7ZlkQNfjD982V
         1WI72gptAY2v/7P1HUn34QbVrNr5Yak7/iUPfiiet147wjOCSoki+FtlSq9JOJI2CxJd
         spoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QklYDPwHEfvTvKtEgdKcBrjy6qZduxyRa+Ay7YkAUYEAl5I/l
	qCUgRnVv90nvqZFS6Gvh4pc=
X-Google-Smtp-Source: ABdhPJwi6q2JQfHV3f02Njp7d0xF938pOkA8ZbQfXzBHlJNGeVg9wWQ4DHD+Ed+Csn32xy1z3l5+ng==
X-Received: by 2002:a1f:a845:: with SMTP id r66mr3310052vke.23.1597462960428;
        Fri, 14 Aug 2020 20:42:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls1320920vsd.1.gmail; Fri, 14 Aug
 2020 20:42:40 -0700 (PDT)
X-Received: by 2002:a67:e914:: with SMTP id c20mr3082467vso.144.1597462960101;
        Fri, 14 Aug 2020 20:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597462960; cv=none;
        d=google.com; s=arc-20160816;
        b=DmdsBBHAZClAMcOaZifCnadJM0fr5q/jOAbDqV4YyFMPiTwcL8xwwRXslu/XA0H5T1
         3E6bmaKj7mqTqzSbV3lTuTM+b22cf04dNTc91kOLOXu41BS9TFtiMGuX4kZOs9ze11VI
         5RBhAwulxXQYfLLGuQ8U0oH5ar9i7KuomOibBuydgqUNirfGDaibUz7yS59BI/huuW/T
         TC9M3bej5a5UF9prOB4ChusySl5rjkmT4X8M1zFxgLw7jmSYJ/TQmz7svp9nQY3lCQCf
         6sXxXCR4aVdOeyp3kNyv2wHGXrUPU9ktqtu4Z0jLIjPka2gl+SZ+g8s2ej4042Ay9xeQ
         5i+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=C2bVMBUkL5265T+UV8/4730aaHGwoYUrnE5Luj92Myc=;
        b=cn0WZwLfu5B9L4THCMTFCTrXrQ8ukW5i67lWRW6/1Hb2c7CiGoHam63OrKE90UIAUC
         ogMuzaXFbojtjgC18zQV41DEdKHDUHB6FTI0F8ldvqGt50q6nCZTiv6yuK/l62dY+RP1
         YniDZDrBfgTZqiN4ZiiYA4tjag703AJhaOpyMPlkX2HMXcpE1IZEyPv6lgz223y965PE
         5HIhG7GsO4JhM+T2cELRhyQERsYBbb9fbHCoR5BB5rF0U4BUNgneBrlJYmcvTtLEExuP
         5Ov7sVgCKu0mhZqzN5CW2YaO0iQb01McBgR8MJw/EQMPEkU7NDvVpbuhJzVoYMvKs8er
         1bjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0135.hostedemail.com. [216.40.44.135])
        by gmr-mx.google.com with ESMTPS id t72si643273vkd.5.2020.08.14.20.42.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2020 20:42:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.135 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.135;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 4721B100E7B6F;
	Sat, 15 Aug 2020 03:42:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:6117:6742:7875:7903:10004:10400:10848:11026:11232:11473:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14093:14097:14659:21080:21451:21524:21627:21809:21939:21990:30051:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: cry93_3b1331b27002
X-Filterd-Recvd-Size: 2703
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sat, 15 Aug 2020 03:42:36 +0000 (UTC)
Message-ID: <af38bf7d8e2615c2f065a2f208d67209246f7a74.camel@perches.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton
	 <akpm@linux-foundation.org>
Cc: =?ISO-8859-1?Q?D=E1vid_Bolvansk=FD?= <david.bolvansky@gmail.com>, Eli
 Friedman <efriedma@quicinc.com>, stable@vger.kernel.org, Arvind Sankar
 <nivedita@alum.mit.edu>,  Sami Tolvanen <samitolvanen@google.com>, Vishal
 Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,  "Joel Fernandes
 (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Kees
 Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Yury Norov
 <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>,
  linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Fri, 14 Aug 2020 20:42:35 -0700
In-Reply-To: <20200815020946.1538085-1-ndesaulniers@google.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
	 <20200815020946.1538085-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.135 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-08-14 at 19:09 -0700, Nick Desaulniers wrote:
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.  Calling `sprintf` with overlapping arguments
> was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> 
> `stpcpy` is just like `strcpy` except it returns the pointer to the new
> tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> one statement.
[]
> diff --git a/include/linux/string.h b/include/linux/string.h
[]
> @@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
>  #ifndef __HAVE_ARCH_STRSCPY
>  ssize_t strscpy(char *, const char *, size_t);
>  #endif
> +#ifndef __HAVE_ARCH_STPCPY
> +extern char *stpcpy(char *__restrict__, const char *__restrict__);

If __restrict__ is used, perhaps it should follow the
kernel style used by attributes like __iomem and __user

extern char *stpcpy(char __restrict *dest, const char __restrict *src);

(though I would lose the extern too)

char *stpcpy(char __restrict *dest, const char __restrict *src);


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/af38bf7d8e2615c2f065a2f208d67209246f7a74.camel%40perches.com.
