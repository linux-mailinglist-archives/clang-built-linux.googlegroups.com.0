Return-Path: <clang-built-linux+bncBAABBSMOQL2AKGQE425GWRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 81348196CF5
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 13:32:27 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id b204sf12720263pfb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 04:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585481545; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKuNZ3UIt5jCm4wyYEiPl9D1U58jngn9rnM6iO9H8OvsF3hFLSIbMA/drDXxm1+nDN
         K0ic+WYirK+BY7uHFUKFeea7BUiQ2ADqaSL3N4GhjSid+v0DP8GvrbpoIBasI6ak3LYr
         y9020enMfVxCQxR/BAZLUbydiowaarBoBqU2DO9TdSY/erFBlvvtBjtgCyEVNziK57cU
         cry7Mv6/1yie+DtczRP8wId+NTiTaF+Dw5w5g0O7kW73u9g2aGVrJ9kaddsqGck6xlOu
         pCblOVwOYpTVgkoMeeit34j3M8hH8HssFJgZhgdbFDEFYKrYIljwX5LISZWRqDqydaWF
         exmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=08ZD9PhHSYGIBVcpksD612k0Koapm6U6RGyoycg4Ef0=;
        b=syTLfaLAS4lG0lAwKNxfT70RFWDo8VKgmyEIfB6xIjCnwpXV8uHxaRvGH6u5aXEo5p
         +MRhfbhDN6GhSpAGHoThstqjCXyadFZaDGEpKV4U6/UyIqUtjyKZHIFO154u5vVv4BPy
         wMj4P+10K0sopvVMP0umdMw3hxJhMDVA6UFxGv6wmH7WNH1jAHhkatMpSCiWIspyGekO
         5+X2F8I2VSyd26hBWEFlwVpzwmXUHb9SXM5sUcDEswof7GNkticCqcRo/aXdETg5P3qr
         6ay3nxaf7VxpoUpmDpxkhS0QW0ocKKtnv+lJ+a30G0YqoPhTDMkGhymIhgX4FOzYNWhR
         wvCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=aJ2dtpoF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=08ZD9PhHSYGIBVcpksD612k0Koapm6U6RGyoycg4Ef0=;
        b=BMCoaFGOJtz42qCkMlmPgXhD6hmUu1WEplIm1iBu+XPC383din5WNFDtsce3RnfjeP
         AcSsJTOyk4T+OSGJUztoI7v2AFI40bonbIc3gshMdnshBHA04bEqTIF4NDJyHvhaWsbR
         2sHQbThE+NvgVGQD84q82Sh31amHZLQhViQl+wC5sIgFEL8kT+7zo1LBxfGcPTWDxovV
         7siRgPRSsDyNUIP29jI3wROaJn/Yhdf6YQUUejcswDZeDxDvXanL8esJOWtVLVHpbup/
         iSRUgdrM78yXedlCHmoLc7gwWHdzCcyVdRMrQgVRlVSmA2yFzPtnCLuVesmr8mYTe5qb
         W4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08ZD9PhHSYGIBVcpksD612k0Koapm6U6RGyoycg4Ef0=;
        b=UOGiz/VOWSUibFaQG8HUA2GES46M3P02M/Bpgv7zmwJLmjB8QcCn424cqycnUamVZb
         4OJ4LlX0jVcmlvAOhXY3hKurZjT/z4RyQ9b0e3GN1ltNRUlRWWd7XPo0XAqi1ztb8+tz
         uyDft+hTPtbFICxW54gizzuYbZRGNPSK622s4Wh/Bivwa3n1PS1QDz7f4sKFFSsdFi5b
         5/5d8kwMcXXLfSFJWl2p1NyjgB9KE8UmQqbnlgERmhpvUVGFmedNflhxRS8hfWRSV+pu
         +hnjnNQr5AnzxLdNh9HXYatDwjbEmwGMe+WG8/+L6cC0jNrZ9KuKUeNpynNL4Rd7cpAn
         roSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2I0uU64IkBioqe/YzKSA4NG1dxyVKnpu3GmaE+BrU19qj8mfiw
	XL6gKT6rOiFXLEtV90f667o=
X-Google-Smtp-Source: ADFU+vt9whXhfLb4r/rFA5WaEA5flPu8rF9XdS9aNJyr8xooezVKdj2bGU8Pc0FPCjmSBp4PLpWdSg==
X-Received: by 2002:a17:90a:e649:: with SMTP id ep9mr9616087pjb.161.1585481545436;
        Sun, 29 Mar 2020 04:32:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cf0b:: with SMTP id j11ls9884464pgg.10.gmail; Sun, 29
 Mar 2020 04:32:25 -0700 (PDT)
X-Received: by 2002:a63:5c02:: with SMTP id q2mr8699776pgb.262.1585481545079;
        Sun, 29 Mar 2020 04:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585481545; cv=none;
        d=google.com; s=arc-20160816;
        b=voLeE1LuUqr+vJFpm+EJaFILWqX/ICaxjosyCEu4bH5BWQnqLy04hcA9xZdG9FQ7nS
         dMu5AQSFnxDAvVyvkoPIbPC/YomXZYdRMPj57PzarKA8ilhfiqMQjMEqoIOesgFtQNjr
         ykmBEphslv/qisJY3zIe3F1lKapM6CEzvOLxzmR/8p81vOhPj8mS0ANe79g6FQZEj4oi
         KVaEHmliyW1qjxtfZzKDpDbq8Y+HXo45bCZ6hzcOFx1pAxdtLYcGkoItq5svMWlKk40F
         dg+/oSBs9Unk2extLgZIfHiYAe/S6emyU1d/HNGvxhWlVVkU/uK+iFxs+6ehkCym9psC
         x1lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7dJHfr2LzJ7oqZtL5ADchvZm+cCmIsPEjQ2cJQ3Gn+s=;
        b=Pf8ubiTLKD+dJs4DWTUn0mcSPzNI+64vFRXU9iEf5HoBzb8CgY6JBp96QTCDFdjAhV
         RxRgAq61EQqVari4C/PIK/rEiidOog+wFGbHcmGzQbJLfJvGg7Hs+8tEvm4F2uIAZaXV
         cWetFov2kcls+oQvKRHXefYbGH0sKHjwZxqA8C5s715XbOXatbO1NrRR0jYEvbClA3gt
         9r8tWe/FRKn1fVCSrARNctNCGN5S1+4gOJ6raHTwGSxl4iBgo9uCXxZmpuOO8MdSVKFs
         lgAYRPVclaI1ZBC2pOF4OiPfRpcSEbxh6sMht58+F6VvvYRxkvnzp9Qg/g2hdKcsdKmV
         ShwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=aJ2dtpoF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id c207si672711pfc.3.2020.03.29.04.32.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 04:32:25 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 02TBW3LX027946
	for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 20:32:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02TBW3LX027946
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id x206so9164326vsx.5
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 04:32:04 -0700 (PDT)
X-Received: by 2002:a67:3201:: with SMTP id y1mr5074418vsy.54.1585481522839;
 Sun, 29 Mar 2020 04:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200326194155.29107-1-natechancellor@gmail.com>
In-Reply-To: <20200326194155.29107-1-natechancellor@gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 29 Mar 2020 20:31:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
Message-ID: <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Dmitry Vyukov <dvyukov@google.com>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=aJ2dtpoF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Mar 27, 2020 at 4:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, we disable -Wtautological-compare, which in turn disables a
> bunch of more specific tautological comparison warnings that are useful
> for the kernel such as -Wtautological-bitwise-compare. See clang's
> documentation below for the other warnings that are suppressed by
> -Wtautological-compare. Now that all of the major/noisy warnings have
> been fixed, enable -Wtautological-compare so that more issues can be
> caught at build time by various continuous integration setups.
>
> -Wtautological-constant-out-of-range-compare is kept disabled under a
> normal build but visible at W=1 because there are places in the kernel
> where a constant or variable size can change based on the kernel
> configuration. These are not fixed in a clean/concise way and the ones
> I have audited so far appear to be harmless. It is not a subgroup but
> rather just one warning so we do not lose out on much coverage by
> default.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/488
> Link: http://releases.llvm.org/10.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
> Link: https://bugs.llvm.org/show_bug.cgi?id=42666
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-7-natechancellor@gmail.com/
>
> * Expand commit message a bit by adding more reasoning behind change.
> * Disable -Wtautological-constant-out-of-range-compare under a normal
>   build but allow it to show up at W=1 for easy auditing.
>
> I hope this can be accepted for 5.7. There are two warnings that I see
> still across a bunch of allyesconfig/allmodconfig builds that have
> patches sent but not accepted. I will ping them today.
>
> * https://lore.kernel.org/lkml/20191023002014.22571-1-natechancellor@gmail.com/
> * https://lore.kernel.org/lkml/20200220051011.26113-1-natechancellor@gmail.com/


OK, I will queue this up and send it to Linus
in the second week of MW.

I hope all warnings will be fixed by that time.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg%40mail.gmail.com.
