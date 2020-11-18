Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6MO2L6QKGQEKNV6UYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A71F92B742D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 03:31:23 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id f5sf259737pfa.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 18:31:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605666682; cv=pass;
        d=google.com; s=arc-20160816;
        b=pWdhPWg3QHkOJrvoxKgdR9ebuWQuPADTAyGWzEfitzDwHYD6E26WvnVRMxY+9R19ML
         5q2YKZlvLJu3vznOkMH0unoYnxrfu5GQFddqAfbTvLWz65ImUd/BYw9fS93l5Lkizy4z
         hGcE9+tsw62hADbdjban9vQ0vo/TNqTo8GVim5SEjYmmUrwK3KHJweDp0r+7Ti/8J2J9
         sDjSkTZ0O1z/AjeyIv6swqooQi6rAzoiAKbmHk5Ejs7cPjyqBADEjG/4R+1qAQni9M8i
         VNd09vsBTOCglbGK3/V9MWd85DLgi+AkxHToQVpSKGmZW17NVHJsULS7GHpQ4lBESQpj
         0d4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ria/aFMFNc7KPSi3rJa4nLj1WPJ8mVohaCaGOgvEu44=;
        b=ZM1E1C8BNL7RVIPP40yTt0ntXkCO+D0FmCQrKzlCFRfCaZSfEmBKkdmcPkkY2hnXWG
         /vjWMiCVsDp+HhZNzo9GU4SlNj7AIhM2pJ4p0panK40lWdHJATXuphE24NWE17qIEfln
         /gfg28bHLYyNQfA5XjWvFIvKZ6fPERoK33Vo6rwCLEb6IbAnTy0s+RYq0hYj4k6eF4Ho
         DwVuGo11PaMCgem7vaUwpqIkdMl6ENnZm5mDY2jD2tCkUbSGBUPp9GKhVpkMrsj6cttC
         alsCXu0Uae4Arpcy9ToDEnx5kpKM7u+qmX6OmHdPtGQOFkGrlVT95HE/rkpAORUBu+EV
         h9YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FbG1ylC+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ria/aFMFNc7KPSi3rJa4nLj1WPJ8mVohaCaGOgvEu44=;
        b=oWNwhrr5k18t/qmc2doKRqJfO9QDdBRpCYBMtHYyFC5FhO793Bp3url8iu226AwRv5
         mCu6rDmYPKkhzeTZw3j3HZs8Wwwcjp/SDY2GxTvVHQZcth4sq+qmmVBsarpLAOjijZkL
         nLjj2pXrPG79qzWN9HlCyL59oJwh+dwA4NkupOW101hFx+yVE89EMX/pMeuO5lu8loes
         TYxpNbu48aACHPbgm2SYSkRMJ1hnStKmJu22hwziC0HAlfX+nT+XFSoFhJhz6jAnxNx+
         G3G9QETH12sEBj2/vOE+E2jzXxLk295uROOZJJ5SY4ylpsP+KrPUSjt4QN5MNGeuKaL6
         kWpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ria/aFMFNc7KPSi3rJa4nLj1WPJ8mVohaCaGOgvEu44=;
        b=Xpr5DKWR3nTIGIWE4CWhV8r7wJSc0lQmEV4lGcS9muD4oH8vQh2ASVeU5j5cRRzqJA
         ypWGfm8KJ+GcyEf4HD1WH3sXzLqy2VJbSxALTMjFyfPEY9vQoE+Iu0Mk4JDIuUdmj+AK
         oJFYy0xvlGOv6yQIoT9sbojd3GMzADSm+H3ueAe3VrSPu/MPOmcq9rHgeXVsqka5Vf2K
         0PXxo8XW88uc5fkp8/U7lEyIrtUNqdPrK/Ht6vsLWWxGcGrFg/vCT6JKOmncem8UEg6M
         2iEI9HFzobnql8S1igfyAEMOoJIrxkDU6/+yBqA2GLIWv/3TEbQP/m/Y8EREZeEXf6p5
         P+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ria/aFMFNc7KPSi3rJa4nLj1WPJ8mVohaCaGOgvEu44=;
        b=AZ7KTKGNpjFMe3/bcu27AjSVbauQcSsqJcAjlexEP8R1Nybfu3SuWIIsUAkiRvk/pX
         7RK2OD9LiQWGvqlnJiHFdgSdQjwol7gb8uuqbqRneMJ1sxtb61j7KmcIQTy8aiasnY8R
         QoC03APLOhCi3SOd4Ws1RtsMiEtUW+09eOT1cDny6L1uUqhowiR2RyiqC9Y0l/a5e+My
         H3+0i/Rq6DDiVXOUDtWVDux/UB0Q3A+OnaMIHNsklHmyb1PaHcBQjqH29S/n8QdPgQve
         SYfn48SS3UMflzYVYx0cyuqS0HlFuUwDV32pCwhqxwGMXEoF6Pa2YjECIV7e+Gybmx/J
         P+MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RQ6IKxZ54WNL06ElaXL6+irSK1hNSd+cDjllRFQmwNha63fZx
	yNkt0+wwAcqmdmo8hnOuHPk=
X-Google-Smtp-Source: ABdhPJysAZyvfqpIdkQ6pHlM63pgWtDMgATRvKe1oCWkBtIFUbHX7Zx2/DNYbFJujwjqaS0QLKY84A==
X-Received: by 2002:a17:902:b095:b029:d8:ffbb:6188 with SMTP id p21-20020a170902b095b02900d8ffbb6188mr2365219plr.43.1605666682113;
        Tue, 17 Nov 2020 18:31:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd01:: with SMTP id p1ls1660556pls.10.gmail; Tue, 17
 Nov 2020 18:31:21 -0800 (PST)
X-Received: by 2002:a17:90a:7c4d:: with SMTP id e13mr2039597pjl.146.1605666681484;
        Tue, 17 Nov 2020 18:31:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605666681; cv=none;
        d=google.com; s=arc-20160816;
        b=bX0w2M2lYxnv4+npDpl99TqaBBzidZ0dDtJn3oZUqgEY9ppyWDsDDG81dTJzD6FSvu
         Ko/MkndrIn9baF9yKsmK3efHW+ImGJhS+B+YQrIXiNtq9rZPVsNDG9MN8Nx8i9EyeD5v
         l7pqsiMV5GxAFnWtTXUSFHY4fga2+Z2qIxswe1T6xIZejy8sBnwC5KcSOcrqfUfA7WaZ
         8oqfN0k3y9GT6sUUx2yjh+yf6aMO9lUK63HPUsMR+7qwIhmWnkIlvcKwPBsXYVknpyUL
         g/+cdOW8AaXkuseHfioUpLI5x1xaPTCySscqPV6A+Jwby4n9PkIf2NhNg6eMw5F5JP4/
         cj1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8b4iSaMQbkOsXKVrPVTdb4e933LrWafVxDAh1z5pNFw=;
        b=I+9Fz/2z6aiGtTCL3Db5tMDXRBtn6ersNx9+W49ng06wwN/9puOouZGsIweu3orZXJ
         cvoz/yQi9/ayamsj2h9qQ+0Z8A9EU5df64UY3R1RztmcShKVe/ybbucRcd4lccx/Pjt0
         ZQME5NX1/P+19erL8FeKmWccEJrEUqeTY6Hgs/2MQ+i2jZ4XLclV/z2u7kqqywYvHTKs
         HJsXPWjAlSIbkqH8aEz0PW3wvkOxa2J9qR9cGTqGvZx8Sx9QH2kGyJGX7Ht2gQe/E44/
         f7YHC8z6c7iSAN+WKfn5gnHUfjRFouJdBINvSLDtJGXEuYZXSNY5RIpFVzy3DY8BRNsk
         vGPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FbG1ylC+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id t126si1316917pgc.0.2020.11.17.18.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 18:31:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id g20so600495qtu.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 18:31:21 -0800 (PST)
X-Received: by 2002:ac8:4252:: with SMTP id r18mr2825092qtm.26.1605666680578;
        Tue, 17 Nov 2020 18:31:20 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id g123sm9152476qkd.135.2020.11.17.18.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 18:31:19 -0800 (PST)
Date: Tue, 17 Nov 2020 19:31:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: John Hubbard <jhubbard@nvidia.com>, jarkko.sakkinen@iki.fi,
	Andrey Konovalov <andreyknvl@google.com>,
	Alexei Starovoitov <ast@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Marco Elver <elver@google.com>, Jarkko Sakkinen <jarkko@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201118023118.GA1069826@ubuntu-m3-large-x86>
References: <20201104013447.GA21728@kapsi.fi>
 <20201117030427.61981-1-jhubbard@nvidia.com>
 <CAKwvOdkEFPYmH+JFC5a0+whb_1H84gS1WU5FVpV071Bc4mhiCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkEFPYmH+JFC5a0+whb_1H84gS1WU5FVpV071Bc4mhiCQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FbG1ylC+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 17, 2020 at 10:46:29AM -0800, Nick Desaulniers wrote:
> On Mon, Nov 16, 2020 at 7:04 PM John Hubbard <jhubbard@nvidia.com> wrote:
> >
> > Hi,
> >
> > I just ran into this and it's a real pain to figure out, because even
> > with the very latest Fedora 33 on my test machine, which provides clang
> > version 11.0.0:
> 
> Hi John,
> Thanks for the report.  The patch was picked up by AKPM and is in the -mm tree:
> https://ozlabs.org/~akpm/mmots/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch

This should probably go to Linus as a regression fix in the next wave,
if that is possible.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118023118.GA1069826%40ubuntu-m3-large-x86.
