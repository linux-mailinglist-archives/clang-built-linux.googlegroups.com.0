Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBB6OLSKCQMGQEICKRPFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 506DC3886E0
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 07:45:31 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x7-20020a1709027c07b02900e6489d6231sf5122097pll.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 22:45:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621403130; cv=pass;
        d=google.com; s=arc-20160816;
        b=fHRwdzcj2XKkDA9flMNtQxHHsBt3KAMWH98UqVU2XojjteaTFGgR/NYCI6w2BhbqHI
         4Xlm9GmRm7iEX4F3f2f+693zXq8u+ZhpoLsGDnf+yE3+wb6S3mogoPYE/yShTx45J6Vh
         /UBrcReq2EN56i4wmMpM587xy6Mjy1jxP/Z7K6RHoaYm9vc0lmIQT7Td3nV2Seg25O0s
         VVA5GjbrHg8zA28kh2NTQLVTrgrYzrDycDyV5PDVaYHqUYHYTEeXyp1Q16mGz9Pj3Ewl
         xWtM8EQRwiO3LkeV6ZJjNDJTzfNsO62xXYPxwkv8gl0wt0h0epHE+emyrCHmsWojxnqm
         sS6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IzL4dqPjO6oI2YOsnr3vsOy4qKjzsRSp1fIro/j78oU=;
        b=QAEUerCiJC9pDYYabYePSCRFXrajJxcWGeWVMe6U/5OKwFTdv30Cl2u6w4zv57Ie7Y
         VOye2VeuNVWANy1vhuvnK3ukt05Xo8zDrXXl9CmApr4okfC1gN36GhZZQNI4CLeynnmp
         3CXSFx1Pviz7QqY5SP6Cn9AMYM9lV85eAVlUN7BUP8jhnTBUgAbxnGuxLjb4f6mwDuJz
         zgJyp33i8ZhJigct/idavl0L1gqkiBEvfqE1/FJ3YHY/jTFFAsX3yL02cyO8nv9ftrMW
         7ku7VuJuCT3kmwVMcPWWqN9zCuiAa811pFENbMZ97LJgE31cFl6cHJO9J2aoupU/8RsH
         nslw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ENeG+u/Q";
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IzL4dqPjO6oI2YOsnr3vsOy4qKjzsRSp1fIro/j78oU=;
        b=gWOSinoHmoU1bWRVhEiquhoh1GKjLboRV6RqFI76PYGDRwTrvzUiVWU57R/+PMCZUp
         Ck45uzMq76hsWzVTFsX2DvkLnDyIgtZjIJ9yTHHKlEKlFGHcbGZztOObE5h2dplRZZhD
         o38tPcaXWSsDJTZ/XHmaQ9SQM7Ljl7++LlLnnFuS/ZB0x0LA4ggRHS/dV+8b5VAtWCHI
         S/l3pGT0twcbvYbwK2BdSOHlhInxEtGTyWp2tnph9Z9xhPP51Dimp02Gh4wb7N/OMm73
         1fBcLl8UA9ONDfj4A3jg/3VW1GvrH/SpR9oSAEM63Ly5yooZsBbvZn4/wMo7zcROnYjt
         2qpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IzL4dqPjO6oI2YOsnr3vsOy4qKjzsRSp1fIro/j78oU=;
        b=XRgSTsDl8tZ1SjhH7kG6Z1ZVQH6wxIXmO1aLi4QFxjrCOfi9DOct7WAWmZf2vlVva+
         NZ7++NIrpCAPuuvP2WM8q9UcEALKoZ5DazlNONcglurf8yooyldIKOKl426bZWvvtHS+
         fwY6IENONpROa8KyK9JPfJbZTeiIC8q4GnhG64myy2Uq2bGrXYQxJ5+C7BttT3VvyICa
         BDj7oR7m23JUmI5gS279Q/p0qFhwoh8hhQmVBZBqIY3JmdmNEjoGq/x9FFX7PFBW1bLS
         URITHQx434z8iofn3bNdoTGYYyAm0flHvUh6rfPd/HQlfNxZJRBrBK3z43FALTxQKmlK
         6TIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IzL4dqPjO6oI2YOsnr3vsOy4qKjzsRSp1fIro/j78oU=;
        b=SdgotaHLzweZrjYoVqjs29Bxpob10pTs5BDkhqqNyUM/e79OXX8gZUzqhO9hl6LVQT
         0H1xWXPyZ4NgCtnmiJWzmwZFn6EcOGwADUzrByJ0F7Ot36VWuxJ98kJ7w5saASnKF/CG
         UtV6Uj3AJc0UZh1skf5m5afPxUMyYf0tkAjjh5aan+z4OtW7ADiI2fJjGa4GxYlZaj1z
         USSmZ0/WosvRc8SvHqSeKtlR0LfOwKNZXQp1c9BzHME5V79ZLeyT07GDtWhER4WBgFrj
         A/v6FKdAUTLlQPDZWo0wX5uW456/mtiRt0akAmP4EOk9AvO1CtOyatCY4gj8n3nYIEBO
         apVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cs07cRPThxm/zqOvrdbg2crUTUk7yw1q0vf0/bzmAL/7LOoKU
	c+8lgYiaBSh5MGV4Cw40cyE=
X-Google-Smtp-Source: ABdhPJxHUPwFwDlhtfAk3JC6qvGZBjoxt2fTVDfTi6Dz/WIBE6mcliQZDEyxBl2F40wmKlVceYcp2w==
X-Received: by 2002:a17:90b:30d0:: with SMTP id hi16mr9684508pjb.30.1621403130048;
        Tue, 18 May 2021 22:45:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6183:: with SMTP id c3ls10403084pgv.6.gmail; Tue, 18 May
 2021 22:45:29 -0700 (PDT)
X-Received: by 2002:a63:f248:: with SMTP id d8mr6520186pgk.219.1621403129383;
        Tue, 18 May 2021 22:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621403129; cv=none;
        d=google.com; s=arc-20160816;
        b=uIHbUlbNnLu4rf5zDJUIwmMxJBZqdhTvfR/w+JT6zzgheINpwdXsezXbMW/FzmMptk
         4j2gX7wocQhN25cUEzvKSUXclwBl3Rf0nX5iCHIBjdz5T9AzH5ZfFh2G5guAGZBMdL3I
         VzvE00W9SXSgmbXgGV3i6tteI3aqAfexB06hkjrFCRHVUb0VnWK7vb6B9sOEYAOWgLcZ
         7zaDW/ka5TPshBWmNzRSW2USjK+UofGJDZhDqnHe0vvGM6CxvfnTdKp9LWv07SWdpPcj
         UrbzeWxeNhFtpbomNAx0CQx1JUzlYnl6I6Sv6gDe7D8HK6uvAVcpe2/LSDpoR2rhPH7A
         ePeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pquk/6hS/kUBJI6wBupcpd3wsozPl6QCwcSHApqiotk=;
        b=U3YvXDqru/Knr9gSC/9zUk+snpFB9tp6QkZC0HoKWmCHziDNH+ZcumC/0CiccMtnSm
         YdYk9my0CBqpy95k41Agvp1ZWdCBFQasrvREX3RUDToFb0DYGTCpOgbInbrqM+1qIuNP
         IrJXQrfm2xMUSg+/kMg6M8EQzWCiL93fEZ6xVuRwTy1fCdUrlw3oJarF5w/xa+LEkNuQ
         Btblk1+ViwFActWBad+zRLEq4PqTiyJnPyHL8qIsCLNAlI6icMg+F0w4DHSvrwhM2dLl
         xP7ge7E97hs2rOlnzfFstkDlK92iN3O/HGYWjPSkg3oE7uNYe4fIA18n0lVSFqPJhW3B
         ddZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ENeG+u/Q";
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id j17si1758079pfc.5.2021.05.18.22.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 22:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id h20-20020a17090aa894b029015db8f3969eso2211809pjq.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 22:45:29 -0700 (PDT)
X-Received: by 2002:a17:90a:1b45:: with SMTP id q63mr9851522pjq.195.1621403129164;
        Tue, 18 May 2021 22:45:29 -0700 (PDT)
Received: from hyeyoo ([121.135.181.35])
        by smtp.gmail.com with ESMTPSA id n30sm14487343pgd.8.2021.05.18.22.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 22:45:28 -0700 (PDT)
Date: Wed, 19 May 2021 14:45:20 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Nathan Chancellor <nathan@kernel.org>, akpm@linux-foundation.org,
	iamjoonsoo.kim@lge.com, rientjes@google.com, penberg@kernel.org,
	cl@linux.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	Marco Elver <elver@google.com>
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210519054520.GB26916@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
 <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161>
 <20210518003859.GC80297@hyeyoo>
 <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
 <71416382-2e4c-5e03-df9c-265fda41c2de@suse.cz>
 <20210518111814.GA114501@hyeyoo>
 <aa74a894-8b39-b1c9-cfe8-2fcf879b7624@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <aa74a894-8b39-b1c9-cfe8-2fcf879b7624@suse.cz>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ENeG+u/Q";       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 18, 2021 at 01:34:07PM +0200, Vlastimil Babka wrote:
> On 5/18/21 1:18 PM, Hyeonggon Yoo wrote:
> > On Tue, May 18, 2021 at 11:28:17AM +0200, Vlastimil Babka wrote:
> >> On 5/18/21 2:43 AM, Nathan Chancellor wrote:
> >> > On 5/17/2021 5:38 PM, Hyeonggon Yoo wrote:
> >> >> On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
> >> >>> This should work I think:
> >> >>
> >> >> compiled well with clang-10.0.1, clang-11.0.0,
> >> >> and gcc-10.2.0 with x86_64 default config.
> >> >>
> >> >> is the condition CONFIG_CLANG_VERSION > 110000,
> >> >> not including 110000 it self?
> >> 
> >> Good spot.
> > 
> > Thanks!
> > 
> >> > Ah sorry, that should definitely be >= :(
> >> > 
> >> > That is what I get for writing an email that late... in reality, it probably
> >> > won't matter due to the availability of 11.0.1 and 11.1.0 but it should
> >> > absolutely be changed.
> >> > 
> >> > I have not given Nick's patch a go yet but would something like this be
> >> > acceptable?
> >> 
> >> Yes.
> > 
> > You mean Nick's patch to added with Nathan's code?
> 
> No, I thought Nathan was asking about his own proposal. I don't think Nick's
> patch that adds 26 index solves the issue. Nathan's proposal fixed with '>=' is OK.

Ah, Okay! I sent the patch.

Thanks,
Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210519054520.GB26916%40hyeyoo.
