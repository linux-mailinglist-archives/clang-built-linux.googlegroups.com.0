Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3HU6GAAMGQEJG6UDII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 05146310050
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:51:25 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id r190sf4037370qkf.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:51:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612479084; cv=pass;
        d=google.com; s=arc-20160816;
        b=QB/Rkc5moMitU70BDGM3+9Fijh9p2iPLv34AViZAUrLtwxAUnraZW/DDwra7MtRqZD
         cIE1XhR1WeYEoYado5ze2eaM50xzTVIgd5WZbQZ0x7G3JP+vtcwT3z5DouX0JzAxqJ5/
         IWZShqYzipo64cTx+bKJiPOKJp6a7UmBH/fpipPximJkKyPjlvipkLfmJUO5AuUrBhXC
         U0dMFO5RQQQLE9f1EKWBjiyhmY/wtXDCirxmdyGWpTnmONe3xHLKxw1QWAqSwro/0lql
         mciez47RlBdXVtle428kcXFCGFkq287wTQ4K+9jOTOmkuGRIcLzDzisWiXkH33B4Oc+a
         QGCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ItkwR+xRei3zue7dGWz5L2yxWNkjOGUg0HlwFDUFdns=;
        b=tmYV8+UE+zyd5g3gwnnR59d7XzWT7sT/FApGd6MCUx6WMbJKO09KSt1Fdh7I/oLHPA
         Ss5p5vhOJxazTqSptIgtg+B1lQwKzib564JaaUWJoNXDsuLvN5repA3rDwTfaYp7jM+a
         oIuWCj7V6f8oJFNjHoU7DnPnQCjp4MN65hQERIu0k/yjqQDhtCcXtXqBFnUNS2zqE0m5
         z+WHHHhdy5cgjAg02l614o4XmBMYD+0bzOQq6FdXILlzKBdv0Kk18XbpLvJmHDRC4I1Z
         Pqr64a/E/XLHTZ/Amm2p7hlmNUaweFLuOEx4fbiXFOhtx19qDMfN00g7ii481QyuFGU3
         wZdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bmoJuqUK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ItkwR+xRei3zue7dGWz5L2yxWNkjOGUg0HlwFDUFdns=;
        b=dKTToBPz4Y2C0/Z+7BAtOhntrUn6Dze+xUr20CoC8jD1AdCob8pkwyft7rle3c6Ztb
         9W7aKJalxUASH7mfonW3dbcFeBUfYw0lADLW45HyLLuhwwK5D4Trvis33KINJXV3+2L1
         RTNxWvqb7L6Pjkhgj/7tzCV3SHj9WXDx4sWGHdASnZ9i/1nu3njMhRXHOBoT+sZKcRZa
         EJS3pdh+Uhn5dlMKgRApVF6oPvFIq0eUlWkMJYOFmMGB1tt8PI01GqsJVX6eEjocGCF/
         IMjO1KlDZFP20/AUJfx5pYkWuRu6yxDpbud8yLsXoixvS+Emvs4VkwvrVc5N0XrVncqd
         JXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ItkwR+xRei3zue7dGWz5L2yxWNkjOGUg0HlwFDUFdns=;
        b=lbAyBaReYQ1+B0bqE7gELC8lFNHrdVPec0vXnMvkzhV2C47ca690LdnIVEf4r3/lMl
         f02m0E+7unSLBi+6OvoGJfhGmcZo4KUpqoM7retK5NZ01Rm9Rn/SwtEJ/ye7jxtfATMb
         0Gk3iXMMLyzWSEynPnqII/UsSKbH7JwdFBEHugJIhlXoW1tsCurnq8S1vtHyl9nWgIil
         WKUYMg+XP5vd5xv1PwkNyaGJfbJYfMYaMZtAPu+M76L52Zqd+krzCPtFa4eMpPCsCUfo
         Y8n72YMC7ME74om3gi2FjBguqk45bItAxAm5CZJdLMYvBBy22Z6f+Q3ituCTUjovrfgS
         g2JQ==
X-Gm-Message-State: AOAM530wVN9Gcj/4PyK77V0xVTFRhY23O7cB6RXFq0i98P4FCnC9e8Eh
	q3TihZ825QrXSPrPEwlow/g=
X-Google-Smtp-Source: ABdhPJxY/8JtolenmpqPjZLvCOgiiCrWaTQmODxsd/n6L5WqLpwctNZEt4K3Yvu/oue6JGn3mIDrvQ==
X-Received: by 2002:ad4:4448:: with SMTP id l8mr1794436qvt.51.1612479084157;
        Thu, 04 Feb 2021 14:51:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12cc:: with SMTP id e12ls3827609qkl.10.gmail; Thu,
 04 Feb 2021 14:51:23 -0800 (PST)
X-Received: by 2002:a37:4691:: with SMTP id t139mr1498161qka.274.1612479083782;
        Thu, 04 Feb 2021 14:51:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612479083; cv=none;
        d=google.com; s=arc-20160816;
        b=qqhfCDLPJH3ly/92bSp3ehH9+j2aQxQaeFnh6L+IL+PUf5gEDEjHbbzS/mLFkePt+1
         oVML6IB+6jHIUFpD511C0pcGQsiTFftMn7Zze7tIX0V2bZ6koMIQL5cGu3+LD/JT4+st
         R7CN3rUu92X0DOZ8PDI0Q7QoPekWz/6k/9C0WKfJzmVowLoRn/BSmB8tRG1tFs/K/A4a
         XrfcX3WZVi9kSgRSZkGlXPXL+hqNzmDom7l1n4/tFLQqk1P/ZiC4OqFvTsbITMKxDWqR
         aqHIOifmiWpbXDFFP8yRnNq/W7zvwp5rgzZfkt6pwanuKr6worX8TPaKMM99bO2BXUC9
         h0ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n/EHHpDkX+YahaQXqkA0jvFi9TNSks+q1OmGCJviL0A=;
        b=YllJ0bl212W5iZ//Lz0vY4/lgePf+BLuQBOfCO+e+ukPnKNTSG23/+t2cTRieNl2CS
         b8CvKTwRdPXM7Ae3vvrUb/g9nobZLEvBVcqBQ7HSzfcAjrbanb5q4MJ/iciJKP3IDmxU
         aKwy318GWZN2wdBEGEiZyImcER8zTlVm0VY1fK6frQBNapM/mYiNSYUuDRNUxA80h1ag
         guKtwswp5qd1HKi7TcVr1kY+LzG0A8tDi3rpq96BvkyC3sWm3AGMlil2BwvLR3KQbqGN
         fsWTJwrRGboynfCu4jUaB6Rn8Yg2SwPPbRX1GhrlcxHqDTjEEhAwIgpW0p2SCoQP0u2N
         nNOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bmoJuqUK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id u4si369348qtd.3.2021.02.04.14.51.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:51:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id o20so3067705pfu.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 14:51:23 -0800 (PST)
X-Received: by 2002:a65:5a83:: with SMTP id c3mr1178824pgt.381.1612479082741;
 Thu, 04 Feb 2021 14:51:22 -0800 (PST)
MIME-Version: 1.0
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
 <20210204223504.GA428461@localhost> <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
In-Reply-To: <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 14:51:10 -0800
Message-ID: <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bmoJuqUK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Thu, Feb 4, 2021 at 2:45 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 11:35 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Yes, that is fine with me! We tried to submit a request for a
> > vger.kernel.org list once but I do not think that we got any response.
> > Maybe now that the project is bigger and more relevant, they will be
> > more responsive to our request.
>
> I will give it a try then.

Now would be the time to use llvm-linux@vger or linux-llvm@vger if we
want to consider a rename.

I'm not sure precisely what the previous list was:
https://lists.linuxfoundation.org/mailman/listinfo/llvmlinux.  I guess
it was llvmlinux@lists.linuxfoundation.org, not @vger?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbFxge108d1ka14WH%3DOJ6aqHKJa8%3D%3DKuq50RHfKWkY1Q%40mail.gmail.com.
