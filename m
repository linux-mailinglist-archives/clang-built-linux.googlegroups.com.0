Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBL534D4QKGQEIPOUFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id F121924519F
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 19:38:55 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id i6sf2699134lfd.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 10:38:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597513135; cv=pass;
        d=google.com; s=arc-20160816;
        b=TIJ7cOWXMwW/IEQ1lsiZNut+PNUC8ygfomAb15VAujW/8AkrgM0JyzacRbFMCMVxz+
         dLwWSPM5aK7o85+BO0hOTyBZVZBCN3ndkYT4JIPxgIBBteS4QNAnkMWPBNX1bizfdioe
         mMlxmBlvgoP8KtIQwZoAyoxd9MK4yGKd2qvMCACRfdFq/RL6K8KbU1xgctyzTYgMDt4f
         gRV8Iy6SugbG31JdFr4gnIjZc9ys6JG/pm9PhJexF7lrk1nwodkOD7E1khl5GuFahVxF
         FDpHVzjvvoHCcmL6noo6+DXsolY9knvDftTe6ag9MgdYUZJTasLViFyAhrcUZJKCYBGt
         RD0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature:dkim-signature;
        bh=ELaTD6qmun3XyGdGfe4ecygEYPElCIvvSGV3S/rlzJo=;
        b=YyNuZtbFjdJxIjycRE3MdPRPqxxZfL/VMIdXo/fDZ/xpjEkGsDa2xwjGjk0iopiXIQ
         zEnj5wqKJfK0f9o/JgeCfG1JyTuXWvVAGoszmMD/ISQ2fVsHwe1LD9aLXSTYF/JVsnGD
         mlB1PBERqB2s6NFNGKH9M/nt7KoWQqHI9nC0mHSilHRc8dVjb/xZMcuVJZI/ky5VFV3h
         EyfuIEGeL7Y5FqiiXCAx5Vxq7pnFm5+OUbH+7JSnIo9DYnJ4Bmw/bjCNnRf0fKn0mPYb
         j73ENd+7mZUPQb62im581/LUpo2RwnR5nbGyJ671d9TAi6Ci5OZH82wvWccCzOmzlpcv
         7/YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKX2g9Ly;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ELaTD6qmun3XyGdGfe4ecygEYPElCIvvSGV3S/rlzJo=;
        b=QI4Y4bJkJzyLkidUHa1wAGYFtvJXENnQt25ZDwu4d1rKt6wScCKNyG33NcAPpniJ3G
         RhC+2ER+5/NHcyL5StHyRD3vveHuNKdlVKgJPIqow1JQqvQSF5sxhuTV4RzLkJ6NIcNm
         L7gg8Ffvfs6cQNZANIP850OvUmqi87bNzLaoX2XKgEWsSwl6nhzJgJoqIhWqWBwlmZDd
         gmZKCK9teoM8senIZv4WWFkrJlUojMcl+0MsrGd0R1MWAACOdStgy9kB0eDTszOuid/U
         AzJp/MVLrJ5Azxq5+NWhB2v/MxamQUMzUmZz6im4/82wR31eAAtB2DX5pwxv1FBINono
         p+ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ELaTD6qmun3XyGdGfe4ecygEYPElCIvvSGV3S/rlzJo=;
        b=p1bh3Whljcn+KbyuwZGp1cvNaaPYlYfKv5Uno2/qqSqo/B5noqZwWRYWY+uIcPFsuS
         7EGQIkNjx6LUAW87HtGCJw282L9d8EEDsF8X2Y8crILoMh4E3Bgz6nQr/kXpOMiyPaQ6
         dAuzvaiG19FAaCjQzMHZ+pNbz4wQTpVBe/8c4nxQLy3i8XJdiWkqT6YwZvQaiZO4N5QI
         ED2pMeq+GPJAHfVkDX9pUHJxr/EH6vDRgb2oAyqK2+SGly+4bJsTXhPON92VqEPgmh81
         qJojlBq6fJ5c3EOjhZn+Q5bTIc0tHbn1UA2SIcdnPkrvvfWgFxe7aO+n8OUVpOtDa/Ms
         t6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ELaTD6qmun3XyGdGfe4ecygEYPElCIvvSGV3S/rlzJo=;
        b=b40/QYj1ewWXaulc5uyYTdDWBKJUm/BTXtFt7ZopQ86NuoTtZ9y0mMAVSASydCJiWI
         pclug9rVPgQYUWy9YQf2jlzNEC7JzG0LbPo7Fu5YMkBww7C/ZtRRrAfqdEH9Xg3Ri131
         xdTxmdgT90fdAsy0Bh9yyhqh+3SnPa100ZYVayDvulOUr0ytSFWeDFiEUTNTWJNsBami
         k7pMTVYQmJz/efxTzGCCHSwZUvLNbZ9B8Lt3s7bLw1Ma02VB+j1ky305LK+Uz6CY85bq
         F+SM4w5zCNUnoRmOP+csW02t2LvLpTYQ1T0euUVkVf6yDaP51h5gNee3mp3P44NPDQ+6
         coYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YZQQaAqVUyh7kYjXhFCZM5wmd50W3jHxYgnpZMhwMymVl+NVI
	MMVKHdW6Oedfj91cH9HRjXw=
X-Google-Smtp-Source: ABdhPJwdrSlbNZbxp7JTY+el6vQm2LYChe+h9pPWqebOi+to2QauJmsW9R0lAM+emaaN3s34I77PPA==
X-Received: by 2002:a2e:a555:: with SMTP id e21mr3976514ljn.304.1597513135401;
        Sat, 15 Aug 2020 10:38:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c03:: with SMTP id x3ls545936ljc.5.gmail; Sat, 15 Aug
 2020 10:38:54 -0700 (PDT)
X-Received: by 2002:a2e:9956:: with SMTP id r22mr3885295ljj.390.1597513134699;
        Sat, 15 Aug 2020 10:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597513134; cv=none;
        d=google.com; s=arc-20160816;
        b=XqyfAbqch3EeplYghc3Gu0DwKSX30q9sTKXzb78qu2HrGtilXkbZB5NnEgPYxKIufr
         tX/n1q7YCW59FPLlbf9UJgQ9g8cv7JrcTLFCwd7gDx5duQco95xqJjsklAy8iiBOXjVJ
         iz/YQHc3kWu3XYDgcy6DB9yV2nj90PWXBIHweqFlrBim6CTYA3n7JkyElRngMaPyXcHC
         Zh6h4oT/Im7X7yuJkY0DtyPiBVlkC/Rp1wLAmhNDk/Ch2FeQcVtOYJdfxIuaKLsvQzvj
         UVOUYz/ICns0PubNtR3d2r0FNWFtDDN0ZHOHZLcOYetAGgNixQsiktjdfogpPo6gBTsl
         EqUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=LTlBc86WBxHYhS5cpIEYsiz5cslHCacREpSctlHSwVw=;
        b=dFfMezSysMQAnz14cgYc96xknV2KHRb7A/Ips7SyB0xTH/Ud5/jM1cPOffUuR7qINo
         +mfuX5dnho7ROm+KeodbYCQkDoFedQ1FwqI7mZlM1+LRTVqul21AiyAntlczoKP8sa/+
         rauRp81u2usB+XXyNHt9LufhWDD5rc5cxpxHCInGxHy9/qyr8LgPfITE+hXjlFXAnz/3
         d6WzPrgn6UR+KUXVspY9Ul5yefv8pFG9G7+0RdNEpvRNDRQ6DNv396MU5ZA2I/cvUkpV
         kfVquldlzRMowcUe1drOLi4rASdO21+trtT4HLbf1g8vhKKuvAqzJ1SN3YL0pYGv8k8d
         bEfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKX2g9Ly;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id z26si545696lfe.5.2020.08.15.10.38.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 10:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 3so10516009wmi.1
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 10:38:54 -0700 (PDT)
X-Received: by 2002:a7b:c40b:: with SMTP id k11mr7526072wmi.107.1597513134116;
        Sat, 15 Aug 2020 10:38:54 -0700 (PDT)
Received: from [100.64.193.196] ([147.229.117.43])
        by smtp.gmail.com with ESMTPSA id 68sm23075592wra.39.2020.08.15.10.38.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 10:38:53 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: =?utf-8?Q?D=C3=A1vid_Bolvansk=C3=BD?= <david.bolvansky@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Date: Sat, 15 Aug 2020 19:38:52 +0200
Message-Id: <672236FE-769D-48F0-AAAD-FB9630BB2FA9@gmail.com>
References: <202008150921.B70721A359@keescook>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Eli Friedman <efriedma@quicinc.com>, stable@vger.kernel.org,
 Arvind Sankar <nivedita@alum.mit.edu>, Joe Perches <joe@perches.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Vishal Verma <vishal.l.verma@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Joel Fernandes (Google)" <joel@joelfernandes.org>,
 Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
 Yury Norov <yury.norov@gmail.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
In-Reply-To: <202008150921.B70721A359@keescook>
To: Kees Cook <keescook@chromium.org>
X-Mailer: iPhone Mail (17F75)
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UKX2g9Ly;       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Yeah, sprintf calls should be replaced with something safer.

> D=C5=88a 15. 8. 2020 o 18:34 u=C5=BE=C3=ADvate=C4=BE Kees Cook <keescook@=
chromium.org> nap=C3=ADsal:
>=20
> =EF=BB=BFOn Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote=
:
>> LLVM implemented a recent "libcall optimization" that lowers calls to
>> `sprintf(dest, "%s", str)` where the return value is used to
>> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
>> in parsing format strings.  Calling `sprintf` with overlapping arguments
>> was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
>>=20
>> `stpcpy` is just like `strcpy` except it returns the pointer to the new
>> tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
>> one statement.
>=20
> O_O What?
>=20
> No; this is a _terrible_ API: there is no bounds checking, there are no
> buffer sizes. Anything using the example sprintf() pattern is _already_
> wrong and must be removed from the kernel. (Yes, I realize that the
> kernel is *filled* with this bad assumption that "I'll never write more
> than PAGE_SIZE bytes to this buffer", but that's both theoretically
> wrong ("640k is enough for anybody") and has been known to be wrong in
> practice too (e.g. when suddenly your writing routine is reachable by
> splice(2) and you may not have a PAGE_SIZE buffer).
>=20
> But we cannot _add_ another dangerous string API. We're already in a
> terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. Thi=
s
> needs to be addressed up by removing the unbounded sprintf() uses. (And
> to do so without introducing bugs related to using snprintf() when
> scnprintf() is expected[4].)
>=20
> -Kees
>=20
> [1] https://github.com/KSPP/linux/issues/88
> [2] https://github.com/KSPP/linux/issues/89
> [3] https://github.com/KSPP/linux/issues/90
> [4] https://lore.kernel.org/lkml/20200810092100.GA42813@2f5448a72a42/
>=20
> --=20
> Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/672236FE-769D-48F0-AAAD-FB9630BB2FA9%40gmail.com.
