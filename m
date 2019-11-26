Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRV76XXAKGQELJDMVYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1214A10A34D
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 18:24:24 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id q4sf13852103ion.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 09:24:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574789062; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoFyMnQG6nI39P4xlhYiW7Jn7A9dttbYXCsK/CkV6CTYXF0PLfh3kVfxIB9b8BXg6l
         Y5lO6ModpGdRqz5eFHco+scfz4B2LyxIDKcF7Yk9pUAI7Jc9A8Im3dzjoYi1rzD/MwZc
         9oh5evZRdFFYWbah8OnG+d2hyftsoV/oCILaK+KGO0gDiD3OpjQ3DMlMRY/PAD4lkBfx
         tNuxjr/xfF5grmyJbPMf33w+gCRLNdNuNaj5BvXW9A1xzVeb9sGRucOQ1jyYI2NO/GtY
         PjZGv6Xpfae8xe6RmRc6h4Zm/y0Ct24JQbKjswM79IoDjGyjWrcgrWT5Jo5v63au3Qk8
         SToA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=13frpogqy2gNxYNdNb+MSEHq8agJHr/XR5tOwXH5YWw=;
        b=tyHNOzNn2aPl7Z1JVrPZr1Z0RH6Z3R2fViaRZSMYthDaPdtSwQeYE2qaqMij1U9Rc/
         NW9vfJvUk4ESQ8Dzlr6jFxGWvzIreNJTvSgPuT6tG1jqDb4NagkN0ddhwHSWkqVngXns
         OxajqmV73DLJFEH85gr1Hs0xmokYw6xUicLDY7hxhKIHq2ZhHSHTCyjavcRF+RcuqEVp
         H7UOmmkQR2mpLXRtkwzNXoSa8xBCGh+SHurROqPZBxcrX6rTtpYevAh9eofAmli7IjQN
         mkf/6itwYmzP/BmkWP7wlHwCRlcbgQusg2piOykoluUmwcJKieLdzT7KhBgHj4r2Ar7Y
         TxSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WqR17hHp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=13frpogqy2gNxYNdNb+MSEHq8agJHr/XR5tOwXH5YWw=;
        b=cFD5mqm6iQEzH3VbNHAzjo4vUkVz87jKyZq17tNwa8fVRa376LbZWDGRYv14dMqG1S
         y3WiHUUSOFOH4GIJAz8AgHeA2q7IvrwDBOzxwKwfpGCNgjFO7WSMVQ0Acf8X/X8aPIZ1
         n8gNEhDEozoZ1hPHE0tWam2lI9+LiI7JHmwtN3q9+QsbskHpJT1GvGaz3XxihP+odyoB
         bOWyCXSYZZKZ/+mfSEhsU4B2SpZ3pPp2AZcYnI3h0UlCUlabUxjNK4rCwjuXigoDzKsU
         gXKULYFldijvY3QnuUyCZ/mQopi9OVAxA4fy7LuXcsvHlsfNRkrugAPpgJ8+FKW7ynyw
         3MCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=13frpogqy2gNxYNdNb+MSEHq8agJHr/XR5tOwXH5YWw=;
        b=km+bJqks1uB7oM2Ckv2e9RZxzlWO6DdHH8GU78kX6n6ZcNvH/1OsyL9Ayh8EUjWlkG
         TH7Cv82sSrvZKwPM37dgcnbDxG4juSPJU09mRUdOEvIrE1wHEuhpPAsGnQ5q/u6QLnbJ
         PM3yu6gO3e5SNHYSTmG/vSamL8BaCBjDzbTW7zw0p2Tqj3c4EW31o3noZjsNzNnjFOyz
         zGazrfvw6Ly7Q0Pw+aDqoKED0sTXEpoh74WohUOIbYNeMsn1K1nC9CJEiE6bdBzNtMyl
         /lYdxQacsVxPa/zomQd5mch6nmSknceMrswQwYiJYDLLxeIs8XPEQ89h0W1dnYv5C01y
         IMrg==
X-Gm-Message-State: APjAAAW/4ZvBQZkxzDtBZWmv4tbt6T3ZlA9SSL6B5NRt9Qx7LdJqeaON
	0t1x2WcKWBX49O9NsBCtPIM=
X-Google-Smtp-Source: APXvYqziinH+Me9RKoUBI4bzF/GgZ93apebZalFvWJD3++cYsCKTVztMbpy/WktQdBcC10+EDMegxA==
X-Received: by 2002:a05:6638:6b6:: with SMTP id d22mr24073467jad.60.1574789062731;
        Tue, 26 Nov 2019 09:24:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:df41:: with SMTP id g1ls3183830ioq.13.gmail; Tue, 26 Nov
 2019 09:24:22 -0800 (PST)
X-Received: by 2002:a6b:f914:: with SMTP id j20mr2458824iog.223.1574789062409;
        Tue, 26 Nov 2019 09:24:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574789062; cv=none;
        d=google.com; s=arc-20160816;
        b=oOU5M823yJpwynDIij2hZ14l8qSWYhTXRglfY9cG8DhHZLq+IZUg2ix1qf6I1h5sNN
         Y52vYpts1irvqUSLO7USppHbr/NVgOJlVaiw0WHrwLTjO7F3vUoptmlB/tqVI+gGScO7
         v/4pGFriwGsc0LbBhlu4HPooX57cnleIeVFu95RHeibwqtaSLxfTC2/qNczz1yg/0ERA
         hkA6WVukBbzrysWIlWLhPE1Y8Q6ODajwu5S12cFjxUnqLRYO2LL9YbMG1cZ6pGSmzzeS
         4eIGX4Y1xbByVIgMruqu61NBBceW7HrulbIKcnw5v5uZ+PzAva5+9RWeNQpyQjeMHehR
         NBjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b8USDfSi67+n5QmIEjkqw0xHLSOXAD0OKre/+CsAlyY=;
        b=jSAH1jp7KKHtz9h717TdLLeziQ0PrgGvq87N5OtbJ1+36oMVY5XEHC5TYsSRJ/Rbjf
         OhSfvwetGXyibmFcNZPAxAmSHzNjRbK92RmzEZZbLiz6TAH5tNPYkW1eZDFFfuKumev7
         tcaW0oaM8A71uo6w8zoOl/WwqA+Vbm+8zTzN8IM6D8cO54yEv0Btar2cn+NiBhZmWt2p
         2mRTkya0AG3SXgxPG2Za/vUkF5bHxDsi1EVFOLni3nwCh45Haa42Iet6nh9aAajNVLfY
         SPZeRmbcvdfGhZGHdtG9M4CT8CJLX9ghBRD05UW9W9A096xcelhqa7fRTv7nCUJGRnB8
         GwfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WqR17hHp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k25si443092iog.5.2019.11.26.09.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 09:24:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 207so9317161pge.8
        for <clang-built-linux@googlegroups.com>; Tue, 26 Nov 2019 09:24:22 -0800 (PST)
X-Received: by 2002:aa7:9151:: with SMTP id 17mr43002593pfi.3.1574789061374;
 Tue, 26 Nov 2019 09:24:21 -0800 (PST)
MIME-Version: 1.0
References: <20191126161255.323992-1-colin.king@canonical.com>
In-Reply-To: <20191126161255.323992-1-colin.king@canonical.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Nov 2019 09:24:10 -0800
Message-ID: <CAKwvOdmG8Az=DFCODtehGTcLRYjEO2B6ZcDd=eNAF40dV-gw6Q@mail.gmail.com>
Subject: Re: [PATCH] KVM: x86/mmu: fix comparison of u8 with -1
To: Colin King <colin.king@canonical.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, 
	Sean Christopherson <sean.j.christopherson@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, kvm@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-janitors@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WqR17hHp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Nov 26, 2019 at 8:21 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The comparison of the u8 value __entry->u with -1 is always
> going to be false because a __entry-u can never be negative.
> Fix this by casting it to a s8 integer.
>
> Addresses clang warning:
> arch/x86/kvm/./mmutrace.h:360:16: warning: result of comparison
> of constant -1 with expression of type 'u8' (aka 'unsigned char')
> is always false [-Wtautological-constant-out-of-range-compare]

(__entry->u is defined as a u8)

>
> Fixes: 335e192a3fa4 ("KVM: x86: add tracepoints around __direct_map and FNAME(fetch)")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  arch/x86/kvm/mmutrace.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kvm/mmutrace.h b/arch/x86/kvm/mmutrace.h
> index 7ca8831c7d1a..3466cd528a67 100644
> --- a/arch/x86/kvm/mmutrace.h
> +++ b/arch/x86/kvm/mmutrace.h
> @@ -357,7 +357,7 @@ TRACE_EVENT(
>                   __entry->r ? "r" : "-",
>                   __entry->spte & PT_WRITABLE_MASK ? "w" : "-",
>                   __entry->x ? "x" : "-",
> -                 __entry->u == -1 ? "" : (__entry->u ? "u" : "-"),
> +                 (s8)__entry->u == -1 ? "" : (__entry->u ? "u" : "-"),

Or could compare against 0xFF instead of -1.  Either way, thanks for the patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                   __entry->level, __entry->sptep
>         )
>  );


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmG8Az%3DDFCODtehGTcLRYjEO2B6ZcDd%3DeNAF40dV-gw6Q%40mail.gmail.com.
